contract main {




// =====================  Runtime code  =====================


const DOMAIN_TYPEHASH = 0x8cad95687ba82c2ce50e74f7b754645e5117c3a5bec8151c0726d5857980a866

const DELEGATION_TYPEHASH = 0xe48329057bfd03d55e49b547132e39cffd9c1820ad7b9d4c5307691425d15adf


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 circulatingSupply;
array of struct name;
array of uint256 symbol;
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
mapping of uint256 lockOf;
mapping of uint256 lastUnlockBlock;
mapping of address delegates;
mapping of struct checkpoints;
mapping of uint32 numCheckpoints;
mapping of uint256 nonces;

function name() payable {
    return name[0 len name.length].field_0
}

function totalSupply() payable {
    return circulatingSupply
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
    return delegates[address(arg1)]
}

function lockOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return lockOf[address(arg1)]
}

function lockFromBlock() payable {
    return lockFromBlock
}

function previousOwner() payable {
    return previousOwner
}

function numCheckpoints(address arg1) payable {
    require calldata.size - 4 >= 32
    return numCheckpoints[arg1]
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function nonces(address arg1) payable {
    require calldata.size - 4 >= 32
    return nonces[arg1]
}

function lastUnlockBlock(address arg1) payable {
    require calldata.size - 4 >= 32
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

function symbol() payable {
    return symbol[0 len symbol.length]
}

function authorized(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor7[arg1])
}

function lockedSupply() payable {
    return lockedSupply
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function manualMinted() payable {
    return manualMinted
}

function checkpoints(address arg1, uint32 arg2) payable {
    require calldata.size - 4 >= 64
    return checkpoints[arg1][arg2].field_0, checkpoints[arg1][arg2].field_256
}

function manualMintLimit() payable {
    return manualMintLimit
}

function _fallback() payable {
    revert
}

function capUpdate(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not stor7[address(msg.sender)]:
        require owner == msg.sender
    cap = arg1
}

function unlockedSupply() payable {
    if lockedSupply > circulatingSupply:
        revert with 0, 'SafeMath: subtraction overflow'
    return (circulatingSupply - lockedSupply)
}

function lockToUpdate(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not stor7[address(msg.sender)]:
        require owner == msg.sender
    lockToBlock = arg1
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function lockFromUpdate(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not stor7[address(msg.sender)]:
        require owner == msg.sender
    lockFromBlock = arg1
}

function addAuthorized(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor7[address(arg1)] = 1
}

function removeAuthorized(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg1 != msg.sender
    stor7[address(arg1)] = 0
}

function getCurrentVotes(address arg1) payable {
    require calldata.size - 4 >= 32
    if numCheckpoints[address(arg1)] > 0:
        return checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256
    else:
        return 0
}

function totalBalanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    if lockOf[address(arg1)] + balanceOf[address(arg1)] < lockOf[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    return (lockOf[address(arg1)] + balanceOf[address(arg1)])
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x644f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function reclaimOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if previousOwner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x654f776e61626c653a2063616c6c6572206973206e6f74207468652070726576696f7573206f776e65,
                    mem[205 len 23]
    if arg1 != previousOwner:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x654f776e61626c653a206e6577206f776e6572206d7573742062652070726576696f7573206f776e65,
                    mem[205 len 23]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x6545524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[200 len 28]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 > allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 
                    32,
                    37,
                    0x7345524332303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572,
                    mem[165 len 27],
                    mem[219 len 5]
    if not msg.sender:
        revert with 0, 32, 36, 0x6545524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[296 len 28]
    if not arg1:
        revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[294 len 30]
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if allowance[address(msg.sender)][address(arg1)] + arg2 < allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x6545524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[200 len 28]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function canUnlockAmount(address arg1) payable {
    require calldata.size - 4 >= 32
    if block.number < lockFromBlock:
        return 0
    if block.number >= lockToBlock:
        return lockOf[address(arg1)]
    if lastUnlockBlock[address(arg1)] > block.number:
        revert with 0, 'SafeMath: subtraction overflow'
    if lastUnlockBlock[address(arg1)] > lockToBlock:
        revert with 0, 'SafeMath: subtraction overflow'
    if not lockOf[address(arg1)]:
        if lockToBlock - lastUnlockBlock[address(arg1)] <= 0:
            revert with 0, 'SafeMath: division by zero'
        if lockToBlock - lastUnlockBlock[address(arg1)]:
            return (0 / lockToBlock - lastUnlockBlock[address(arg1)])
    else:
        if lockOf[address(arg1)]:
            if (block.number * lockOf[address(arg1)]) - (lastUnlockBlock[address(arg1)] * lockOf[address(arg1)]) / lockOf[address(arg1)] != block.number - lastUnlockBlock[address(arg1)]:
                revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if lockToBlock - lastUnlockBlock[address(arg1)] <= 0:
                revert with 0, 'SafeMath: division by zero'
            if lockToBlock - lastUnlockBlock[address(arg1)]:
                return ((block.number * lockOf[address(arg1)]) - (lastUnlockBlock[address(arg1)] * lockOf[address(arg1)]) / lockToBlock - lastUnlockBlock[address(arg1)])
    revert
}

function getPriorVotes(address arg1, uint256 arg2) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    if arg2 >= block.number:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x6f42414f3a3a6765745072696f72566f7465733a206e6f74207965742064657465726d696e65,
                    mem[202 len 26]
    if not numCheckpoints[address(arg1)]:
        return 0
    if checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_0 <= arg2:
        return checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256
    if checkpoints[address(arg1)][0].field_0 > arg2:
        return 0
    idx = 0
    while uint32(numCheckpoints[address(arg1)] - 1) > uint32(idx):
        _33 = mem[64]
        mem[64] = mem[64] + 64
        mem[_33] = 0
        mem[_33 + 32] = 0
        mem[0] = uint32(numCheckpoints[address(arg1)] + -(uint32(numCheckpoints[address(arg1)] + -idx - 1) / 2) - 1)
        mem[32] = sha3(address(arg1), 17)
        _36 = mem[64]
        mem[64] = mem[64] + 64
        mem[_36] = checkpoints[address(arg1)][stor18[address(arg1)] + -(uint32(stor18[address(arg1)] + -idx - 1) / 2) - 1 << 224].field_0
        mem[_36 + 32] = checkpoints[address(arg1)][stor18[address(arg1)] + -(uint32(stor18[address(arg1)] + -idx - 1) / 2) - 1 << 224].field_256
        if checkpoints[address(arg1)][stor18[address(arg1)] + -(uint32(stor18[address(arg1)] + -idx - 1) / 2) - 1 << 224].field_0 == arg2:
            return checkpoints[address(arg1)][stor18[address(arg1)] + -(uint32(stor18[address(arg1)] + -idx - 1) / 2) - 1 << 224].field_256
        if checkpoints[address(arg1)][stor18[address(arg1)] + -(uint32(stor18[address(arg1)] + -idx - 1) / 2) - 1 << 224].field_0 >= arg2:
            idx = idx
            continue 
        idx = numCheckpoints[address(arg1)] + -(uint32(numCheckpoints[address(arg1)] + -idx - 1) / 2) - 1
        continue 
    return checkpoints[address(arg1)][idx << 224].field_256
}

function mint(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'ERC20: mint to the zero address'
    if circulatingSupply + arg2 < circulatingSupply:
        revert with 0, 'SafeMath: addition overflow'
    if circulatingSupply + arg2 > cap:
        revert with 0, 'ERC20Capped: cap exceeded'
    if circulatingSupply + arg2 < circulatingSupply:
        revert with 0, 'SafeMath: addition overflow'
    circulatingSupply += arg2
    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, 0, arg1);
    if delegates[address(arg1)] != 0:
        if arg2 > 0:
            if delegates[address(arg1)]:
                if numCheckpoints[stor16[address(arg1)]] > 0:
                    if checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_256 + arg2 < checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_256:
                        revert with 0, 'SafeMath: addition overflow'
                    if block.number >= 4294967296:
                        revert with 0, 
                                    32,
                                    51,
                                    0x7342414f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                    mem[179 len 13],
                                    Mask(152, -256, mem[179 len 13]) << 256
                    if numCheckpoints[stor16[address(arg1)]] <= 0:
                        checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]]].field_0 = uint32(block.number)
                        checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]]].field_256 = checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_256 + arg2
                        numCheckpoints[stor16[address(arg1)]] = uint32(numCheckpoints[stor16[address(arg1)]] + 1)
                    else:
                        if checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                            checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_256 += arg2
                        else:
                            checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]]].field_0 = uint32(block.number)
                            checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]]].field_256 = checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_256 + arg2
                            numCheckpoints[stor16[address(arg1)]] = uint32(numCheckpoints[stor16[address(arg1)]] + 1)
                    emit DelegateVotesChanged(checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_256, checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_256 + arg2, delegates[address(arg1)]);
                else:
                    if arg2 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if block.number >= 4294967296:
                        revert with 0, 
                                    32,
                                    51,
                                    0x7342414f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                    mem[179 len 13],
                                    Mask(152, -256, mem[179 len 13]) << 256
                    if numCheckpoints[stor16[address(arg1)]] <= 0:
                        checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]]].field_0 = uint32(block.number)
                        checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]]].field_256 = arg2
                        numCheckpoints[stor16[address(arg1)]] = uint32(numCheckpoints[stor16[address(arg1)]] + 1)
                    else:
                        if checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                            checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_256 = arg2
                        else:
                            checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]]].field_0 = uint32(block.number)
                            checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]]].field_256 = arg2
                            numCheckpoints[stor16[address(arg1)]] = uint32(numCheckpoints[stor16[address(arg1)]] + 1)
                    emit DelegateVotesChanged(0, arg2, delegates[address(arg1)]);
}

function manualMint(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not stor7[address(msg.sender)]:
        require owner == msg.sender
    if manualMinted < manualMintLimit:
        if not arg1:
            revert with 0, 'ERC20: mint to the zero address'
        if circulatingSupply + arg2 < circulatingSupply:
            revert with 0, 'SafeMath: addition overflow'
        if circulatingSupply + arg2 > cap:
            revert with 0, 'ERC20Capped: cap exceeded'
        if circulatingSupply + arg2 < circulatingSupply:
            revert with 0, 'SafeMath: addition overflow'
        circulatingSupply += arg2
        if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
            revert with 0, 'SafeMath: addition overflow'
        balanceOf[address(arg1)] += arg2
        emit Transfer(arg2, 0, arg1);
        if delegates[address(arg1)] != 0:
            if arg2 > 0:
                if delegates[address(arg1)]:
                    if numCheckpoints[stor16[address(arg1)]] > 0:
                        if checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_256 + arg2 < checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_256:
                            revert with 0, 'SafeMath: addition overflow'
                        if block.number >= 4294967296:
                            revert with 0, 
                                        32,
                                        51,
                                        0x7342414f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                        mem[179 len 13],
                                        Mask(152, -256, mem[179 len 13]) << 256
                        if numCheckpoints[stor16[address(arg1)]] <= 0:
                            checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]]].field_0 = uint32(block.number)
                            checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]]].field_256 = checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_256 + arg2
                            numCheckpoints[stor16[address(arg1)]] = uint32(numCheckpoints[stor16[address(arg1)]] + 1)
                        else:
                            if checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                                checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_256 += arg2
                            else:
                                checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]]].field_0 = uint32(block.number)
                                checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]]].field_256 = checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_256 + arg2
                                numCheckpoints[stor16[address(arg1)]] = uint32(numCheckpoints[stor16[address(arg1)]] + 1)
                        emit DelegateVotesChanged(checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_256, checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_256 + arg2, delegates[address(arg1)]);
                    else:
                        if arg2 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if block.number >= 4294967296:
                            revert with 0, 
                                        32,
                                        51,
                                        0x7342414f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                        mem[179 len 13],
                                        Mask(152, -256, mem[179 len 13]) << 256
                        if numCheckpoints[stor16[address(arg1)]] <= 0:
                            checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]]].field_0 = uint32(block.number)
                            checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]]].field_256 = arg2
                            numCheckpoints[stor16[address(arg1)]] = uint32(numCheckpoints[stor16[address(arg1)]] + 1)
                        else:
                            if checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                                checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_256 = arg2
                            else:
                                checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]]].field_0 = uint32(block.number)
                                checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]]].field_256 = arg2
                                numCheckpoints[stor16[address(arg1)]] = uint32(numCheckpoints[stor16[address(arg1)]] + 1)
                        emit DelegateVotesChanged(0, arg2, delegates[address(arg1)]);
        if manualMinted + arg2 < manualMinted:
            revert with 0, 'SafeMath: addition overflow'
        manualMinted += arg2
}

function delegate(address arg1) payable {
    require calldata.size - 4 >= 32
    delegates[address(msg.sender)] = arg1
    emit DelegateChanged(msg.sender, delegates[address(msg.sender)], arg1);
    if delegates[address(msg.sender)] != arg1:
        if balanceOf[address(msg.sender)] > 0:
            if not delegates[address(msg.sender)]:
                if arg1:
                    if numCheckpoints[address(arg1)] > 0:
                        if checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)] < checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256:
                            revert with 0, 'SafeMath: addition overflow'
                        if block.number >= 4294967296:
                            revert with 0, 
                                        32,
                                        51,
                                        0x7342414f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                        mem[179 len 13],
                                        Mask(152, -256, mem[179 len 13]) << 256
                        if numCheckpoints[address(arg1)] <= 0:
                            checkpoints[address(arg1)][stor18[address(arg1)]].field_0 = uint32(block.number)
                            checkpoints[address(arg1)][stor18[address(arg1)]].field_256 = checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)]
                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        else:
                            if checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256 += balanceOf[address(msg.sender)]
                            else:
                                checkpoints[address(arg1)][stor18[address(arg1)]].field_0 = uint32(block.number)
                                checkpoints[address(arg1)][stor18[address(arg1)]].field_256 = checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)]
                                numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        emit DelegateVotesChanged(checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256, checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)], arg1);
                    else:
                        if balanceOf[address(msg.sender)] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if block.number >= 4294967296:
                            revert with 0, 
                                        32,
                                        51,
                                        0x7342414f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                        mem[179 len 13],
                                        Mask(152, -256, mem[179 len 13]) << 256
                        if numCheckpoints[address(arg1)] <= 0:
                            checkpoints[address(arg1)][stor18[address(arg1)]].field_0 = uint32(block.number)
                            checkpoints[address(arg1)][stor18[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        else:
                            if checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256 = balanceOf[address(msg.sender)]
                            else:
                                checkpoints[address(arg1)][stor18[address(arg1)]].field_0 = uint32(block.number)
                                checkpoints[address(arg1)][stor18[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], arg1);
            else:
                if numCheckpoints[stor16[address(msg.sender)]] > 0:
                    if balanceOf[address(msg.sender)] > checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if block.number >= 4294967296:
                        revert with 0, 
                                    32,
                                    51,
                                    0x7342414f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                    mem[243 len 13],
                                    Mask(152, -256, mem[243 len 13]) << 256
                    if numCheckpoints[stor16[address(msg.sender)]] <= 0:
                        checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                        checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 - balanceOf[address(msg.sender)]
                        numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                        emit DelegateVotesChanged(checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256, checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 - balanceOf[address(msg.sender)], delegates[address(msg.sender)]);
                        if arg1:
                            if numCheckpoints[address(arg1)] > 0:
                                if checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)] < checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x7342414f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                mem[403 len 13],
                                                Mask(152, -256, mem[403 len 13]) << 256
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor18[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor18[address(arg1)]].field_256 = checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)]
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256 += balanceOf[address(msg.sender)]
                                    else:
                                        checkpoints[address(arg1)][stor18[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor18[address(arg1)]].field_256 = checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                emit DelegateVotesChanged(checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256, checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)], arg1);
                            else:
                                if balanceOf[address(msg.sender)] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x7342414f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                mem[403 len 13],
                                                Mask(152, -256, mem[403 len 13]) << 256
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor18[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor18[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256 = balanceOf[address(msg.sender)]
                                    else:
                                        checkpoints[address(arg1)][stor18[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor18[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], arg1);
                    else:
                        if checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                            checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 -= balanceOf[address(msg.sender)]
                            emit DelegateVotesChanged(checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256, checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 - balanceOf[address(msg.sender)], delegates[address(msg.sender)]);
                            if arg1:
                                if numCheckpoints[address(arg1)] > 0:
                                    if checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)] < checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x7342414f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                    mem[339 len 13],
                                                    Mask(152, -256, mem[339 len 13]) << 256
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor18[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor18[address(arg1)]].field_256 = checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256 += balanceOf[address(msg.sender)]
                                        else:
                                            checkpoints[address(arg1)][stor18[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor18[address(arg1)]].field_256 = checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)]
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256, checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)], arg1);
                                else:
                                    if balanceOf[address(msg.sender)] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x7342414f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                    mem[339 len 13],
                                                    Mask(152, -256, mem[339 len 13]) << 256
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor18[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor18[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256 = balanceOf[address(msg.sender)]
                                        else:
                                            checkpoints[address(arg1)][stor18[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor18[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], arg1);
                        else:
                            checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                            checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 - balanceOf[address(msg.sender)]
                            numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                            emit DelegateVotesChanged(checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256, checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 - balanceOf[address(msg.sender)], delegates[address(msg.sender)]);
                            if arg1:
                                if numCheckpoints[address(arg1)] > 0:
                                    if checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)] < checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x7342414f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                    mem[403 len 13],
                                                    Mask(152, -256, mem[403 len 13]) << 256
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor18[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor18[address(arg1)]].field_256 = checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256 += balanceOf[address(msg.sender)]
                                        else:
                                            checkpoints[address(arg1)][stor18[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor18[address(arg1)]].field_256 = checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)]
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256, checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)], arg1);
                                else:
                                    if balanceOf[address(msg.sender)] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x7342414f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                    mem[403 len 13],
                                                    Mask(152, -256, mem[403 len 13]) << 256
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor18[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor18[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256 = balanceOf[address(msg.sender)]
                                        else:
                                            checkpoints[address(arg1)][stor18[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor18[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], arg1);
                else:
                    if balanceOf[address(msg.sender)] > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if block.number >= 4294967296:
                        revert with 0, 
                                    32,
                                    51,
                                    0x7342414f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                    mem[243 len 13],
                                    Mask(152, -256, mem[243 len 13]) << 256
                    if numCheckpoints[stor16[address(msg.sender)]] <= 0:
                        checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                        checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = -balanceOf[address(msg.sender)]
                        numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                        emit DelegateVotesChanged(0, -balanceOf[address(msg.sender)], delegates[address(msg.sender)]);
                        if arg1:
                            if numCheckpoints[address(arg1)] > 0:
                                if checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)] < checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x7342414f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                mem[403 len 13],
                                                Mask(152, -256, mem[403 len 13]) << 256
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor18[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor18[address(arg1)]].field_256 = checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)]
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256 += balanceOf[address(msg.sender)]
                                    else:
                                        checkpoints[address(arg1)][stor18[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor18[address(arg1)]].field_256 = checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                emit DelegateVotesChanged(checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256, checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)], arg1);
                            else:
                                if balanceOf[address(msg.sender)] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x7342414f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                mem[403 len 13],
                                                Mask(152, -256, mem[403 len 13]) << 256
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor18[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor18[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256 = balanceOf[address(msg.sender)]
                                    else:
                                        checkpoints[address(arg1)][stor18[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor18[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], arg1);
                    else:
                        if checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                            checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 = -balanceOf[address(msg.sender)]
                            emit DelegateVotesChanged(0, -balanceOf[address(msg.sender)], delegates[address(msg.sender)]);
                            if arg1:
                                if numCheckpoints[address(arg1)] > 0:
                                    if checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)] < checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x7342414f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                    mem[339 len 13],
                                                    Mask(152, -256, mem[339 len 13]) << 256
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor18[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor18[address(arg1)]].field_256 = checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256 += balanceOf[address(msg.sender)]
                                        else:
                                            checkpoints[address(arg1)][stor18[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor18[address(arg1)]].field_256 = checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)]
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256, checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)], arg1);
                                else:
                                    if balanceOf[address(msg.sender)] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x7342414f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                    mem[339 len 13],
                                                    Mask(152, -256, mem[339 len 13]) << 256
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor18[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor18[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256 = balanceOf[address(msg.sender)]
                                        else:
                                            checkpoints[address(arg1)][stor18[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor18[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], arg1);
                        else:
                            checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                            checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = -balanceOf[address(msg.sender)]
                            numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                            emit DelegateVotesChanged(0, -balanceOf[address(msg.sender)], delegates[address(msg.sender)]);
                            if arg1:
                                if numCheckpoints[address(arg1)] > 0:
                                    if checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)] < checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x7342414f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                    mem[403 len 13],
                                                    Mask(152, -256, mem[403 len 13]) << 256
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor18[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor18[address(arg1)]].field_256 = checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256 += balanceOf[address(msg.sender)]
                                        else:
                                            checkpoints[address(arg1)][stor18[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor18[address(arg1)]].field_256 = checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)]
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256, checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)], arg1);
                                else:
                                    if balanceOf[address(msg.sender)] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x7342414f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                    mem[403 len 13],
                                                    Mask(152, -256, mem[403 len 13]) << 256
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor18[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor18[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256 = balanceOf[address(msg.sender)]
                                        else:
                                            checkpoints[address(arg1)][stor18[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor18[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], arg1);
}

function delegateBySig(address arg1, uint256 arg2, uint256 arg3, uint8 arg4, bytes32 arg5, bytes32 arg6) payable {
    require calldata.size - 4 >= 192
    mem[128] = uint256(name.field_0)
    idx = 128
    s = 0
    while name.length + 96 > idx:
        mem[idx + 32] = name[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    signer = erecover(sha3(0, sha3(0x8cad95687ba82c2ce50e74f7b754645e5117c3a5bec8151c0726d5857980a866, sha3(mem[128 len name.length]), chainid, this.address), sha3(0xe48329057bfd03d55e49b547132e39cffd9c1820ad7b9d4c5307691425d15adf, address(arg1), arg2, arg3)), arg4 << 248, arg5, arg6) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if not address(signer):
        revert with 0, 
                    32,
                    37,
                    0x7342414f3a3a64656c656761746542795369673a20696e76616c6964207369676e61747572,
                    Mask(184, 0, arg6),
                    mem[ceil32(name.length) + 706 len 4]
    nonces[address(signer)]++
    if arg2 != nonces[address(signer)]:
        revert with 0, 
                    32,
                    33,
                    0x7342414f3a3a64656c656761746542795369673a20696e76616c6964206e6f6e63,
                    Mask(216, 0, arg6),
                    mem[ceil32(name.length) + 706 len 4]
    if block.timestamp > arg3:
        revert with 0, 
                    32,
                    37,
                    0x6542414f3a3a64656c656761746542795369673a207369676e617475726520657870697265,
                    Mask(184, 0, arg6),
                    mem[ceil32(name.length) + 706 len 4]
    delegates[address(signer)] = arg1
    emit DelegateChanged(address(signer), delegates[address(signer)], arg1);
    if delegates[address(signer)] != arg1:
        if balanceOf[address(signer)] > 0:
            if not delegates[address(signer)]:
                if arg1:
                    if numCheckpoints[address(arg1)] > 0:
                        if checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256 + balanceOf[address(signer)] < checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256:
                            revert with 0, 'SafeMath: addition overflow'
                        if block.number >= 4294967296:
                            revert with 0, 
                                        32,
                                        51,
                                        0x7342414f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                        Mask(104, 0, arg5),
                                        0
                        if numCheckpoints[address(arg1)] <= 0:
                            checkpoints[address(arg1)][stor18[address(arg1)]].field_0 = uint32(block.number)
                            checkpoints[address(arg1)][stor18[address(arg1)]].field_256 = checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256 + balanceOf[address(signer)]
                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        else:
                            if checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256 += balanceOf[address(signer)]
                            else:
                                checkpoints[address(arg1)][stor18[address(arg1)]].field_0 = uint32(block.number)
                                checkpoints[address(arg1)][stor18[address(arg1)]].field_256 = checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256 + balanceOf[address(signer)]
                                numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        emit DelegateVotesChanged(checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256, checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256 + balanceOf[address(signer)], arg1);
                    else:
                        if balanceOf[address(signer)] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if block.number >= 4294967296:
                            revert with 0, 
                                        32,
                                        51,
                                        0x7342414f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                        Mask(104, 0, arg5),
                                        0
                        if numCheckpoints[address(arg1)] <= 0:
                            checkpoints[address(arg1)][stor18[address(arg1)]].field_0 = uint32(block.number)
                            checkpoints[address(arg1)][stor18[address(arg1)]].field_256 = balanceOf[address(signer)]
                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        else:
                            if checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256 = balanceOf[address(signer)]
                            else:
                                checkpoints[address(arg1)][stor18[address(arg1)]].field_0 = uint32(block.number)
                                checkpoints[address(arg1)][stor18[address(arg1)]].field_256 = balanceOf[address(signer)]
                                numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        emit DelegateVotesChanged(0, balanceOf[address(signer)], arg1);
            else:
                if numCheckpoints[stor16[address(signer)]] > 0:
                    if balanceOf[address(signer)] > checkpoints[stor16[address(signer)]][stor18[stor16[address(signer)]] - 1 << 224].field_256:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if block.number >= 4294967296:
                        revert with 0, 
                                    32,
                                    51,
                                    0x7342414f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                    mem[ceil32(name.length) + 725 len 13],
                                    Mask(152, -256, mem[ceil32(name.length) + 725 len 13]) << 256
                    if numCheckpoints[stor16[address(signer)]] <= 0:
                        checkpoints[stor16[address(signer)]][stor18[stor16[address(signer)]]].field_0 = uint32(block.number)
                        checkpoints[stor16[address(signer)]][stor18[stor16[address(signer)]]].field_256 = checkpoints[stor16[address(signer)]][stor18[stor16[address(signer)]] - 1 << 224].field_256 - balanceOf[address(signer)]
                        numCheckpoints[stor16[address(signer)]] = uint32(numCheckpoints[stor16[address(signer)]] + 1)
                        emit DelegateVotesChanged(checkpoints[stor16[address(signer)]][stor18[stor16[address(signer)]] - 1 << 224].field_256, checkpoints[stor16[address(signer)]][stor18[stor16[address(signer)]] - 1 << 224].field_256 - balanceOf[address(signer)], delegates[address(signer)]);
                        if arg1:
                            if numCheckpoints[address(arg1)] > 0:
                                if checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256 + balanceOf[address(signer)] < checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x7342414f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                mem[ceil32(name.length) + 885 len 13],
                                                Mask(152, -256, mem[ceil32(name.length) + 885 len 13]) << 256
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor18[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor18[address(arg1)]].field_256 = checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256 + balanceOf[address(signer)]
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256 += balanceOf[address(signer)]
                                    else:
                                        checkpoints[address(arg1)][stor18[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor18[address(arg1)]].field_256 = checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256 + balanceOf[address(signer)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                emit DelegateVotesChanged(checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256, checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256 + balanceOf[address(signer)], arg1);
                            else:
                                if balanceOf[address(signer)] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x7342414f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                mem[ceil32(name.length) + 885 len 13],
                                                Mask(152, -256, mem[ceil32(name.length) + 885 len 13]) << 256
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor18[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor18[address(arg1)]].field_256 = balanceOf[address(signer)]
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256 = balanceOf[address(signer)]
                                    else:
                                        checkpoints[address(arg1)][stor18[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor18[address(arg1)]].field_256 = balanceOf[address(signer)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                emit DelegateVotesChanged(0, balanceOf[address(signer)], arg1);
                    else:
                        if checkpoints[stor16[address(signer)]][stor18[stor16[address(signer)]] - 1 << 224].field_0 == uint32(block.number):
                            checkpoints[stor16[address(signer)]][stor18[stor16[address(signer)]] - 1 << 224].field_256 -= balanceOf[address(signer)]
                            emit DelegateVotesChanged(checkpoints[stor16[address(signer)]][stor18[stor16[address(signer)]] - 1 << 224].field_256, checkpoints[stor16[address(signer)]][stor18[stor16[address(signer)]] - 1 << 224].field_256 - balanceOf[address(signer)], delegates[address(signer)]);
                            if arg1:
                                if numCheckpoints[address(arg1)] > 0:
                                    if checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256 + balanceOf[address(signer)] < checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x7342414f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                    mem[ceil32(name.length) + 821 len 13],
                                                    Mask(152, -256, mem[ceil32(name.length) + 821 len 13]) << 256
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor18[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor18[address(arg1)]].field_256 = checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256 + balanceOf[address(signer)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256 += balanceOf[address(signer)]
                                        else:
                                            checkpoints[address(arg1)][stor18[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor18[address(arg1)]].field_256 = checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256 + balanceOf[address(signer)]
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256, checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256 + balanceOf[address(signer)], arg1);
                                else:
                                    if balanceOf[address(signer)] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x7342414f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                    mem[ceil32(name.length) + 821 len 13],
                                                    Mask(152, -256, mem[ceil32(name.length) + 821 len 13]) << 256
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor18[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor18[address(arg1)]].field_256 = balanceOf[address(signer)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256 = balanceOf[address(signer)]
                                        else:
                                            checkpoints[address(arg1)][stor18[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor18[address(arg1)]].field_256 = balanceOf[address(signer)]
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, balanceOf[address(signer)], arg1);
                        else:
                            checkpoints[stor16[address(signer)]][stor18[stor16[address(signer)]]].field_0 = uint32(block.number)
                            checkpoints[stor16[address(signer)]][stor18[stor16[address(signer)]]].field_256 = checkpoints[stor16[address(signer)]][stor18[stor16[address(signer)]] - 1 << 224].field_256 - balanceOf[address(signer)]
                            numCheckpoints[stor16[address(signer)]] = uint32(numCheckpoints[stor16[address(signer)]] + 1)
                            emit DelegateVotesChanged(checkpoints[stor16[address(signer)]][stor18[stor16[address(signer)]] - 1 << 224].field_256, checkpoints[stor16[address(signer)]][stor18[stor16[address(signer)]] - 1 << 224].field_256 - balanceOf[address(signer)], delegates[address(signer)]);
                            if arg1:
                                if numCheckpoints[address(arg1)] > 0:
                                    if checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256 + balanceOf[address(signer)] < checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x7342414f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                    mem[ceil32(name.length) + 885 len 13],
                                                    Mask(152, -256, mem[ceil32(name.length) + 885 len 13]) << 256
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor18[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor18[address(arg1)]].field_256 = checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256 + balanceOf[address(signer)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256 += balanceOf[address(signer)]
                                        else:
                                            checkpoints[address(arg1)][stor18[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor18[address(arg1)]].field_256 = checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256 + balanceOf[address(signer)]
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256, checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256 + balanceOf[address(signer)], arg1);
                                else:
                                    if balanceOf[address(signer)] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x7342414f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                    mem[ceil32(name.length) + 885 len 13],
                                                    Mask(152, -256, mem[ceil32(name.length) + 885 len 13]) << 256
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor18[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor18[address(arg1)]].field_256 = balanceOf[address(signer)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256 = balanceOf[address(signer)]
                                        else:
                                            checkpoints[address(arg1)][stor18[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor18[address(arg1)]].field_256 = balanceOf[address(signer)]
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, balanceOf[address(signer)], arg1);
                else:
                    if balanceOf[address(signer)] > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if block.number >= 4294967296:
                        revert with 0, 
                                    32,
                                    51,
                                    0x7342414f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                    mem[ceil32(name.length) + 725 len 13],
                                    Mask(152, -256, mem[ceil32(name.length) + 725 len 13]) << 256
                    if numCheckpoints[stor16[address(signer)]] <= 0:
                        checkpoints[stor16[address(signer)]][stor18[stor16[address(signer)]]].field_0 = uint32(block.number)
                        checkpoints[stor16[address(signer)]][stor18[stor16[address(signer)]]].field_256 = -balanceOf[address(signer)]
                        numCheckpoints[stor16[address(signer)]] = uint32(numCheckpoints[stor16[address(signer)]] + 1)
                        emit DelegateVotesChanged(0, -balanceOf[address(signer)], delegates[address(signer)]);
                        if arg1:
                            if numCheckpoints[address(arg1)] > 0:
                                if checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256 + balanceOf[address(signer)] < checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x7342414f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                mem[ceil32(name.length) + 885 len 13],
                                                Mask(152, -256, mem[ceil32(name.length) + 885 len 13]) << 256
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor18[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor18[address(arg1)]].field_256 = checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256 + balanceOf[address(signer)]
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256 += balanceOf[address(signer)]
                                    else:
                                        checkpoints[address(arg1)][stor18[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor18[address(arg1)]].field_256 = checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256 + balanceOf[address(signer)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                emit DelegateVotesChanged(checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256, checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256 + balanceOf[address(signer)], arg1);
                            else:
                                if balanceOf[address(signer)] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x7342414f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                mem[ceil32(name.length) + 885 len 13],
                                                Mask(152, -256, mem[ceil32(name.length) + 885 len 13]) << 256
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor18[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor18[address(arg1)]].field_256 = balanceOf[address(signer)]
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256 = balanceOf[address(signer)]
                                    else:
                                        checkpoints[address(arg1)][stor18[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor18[address(arg1)]].field_256 = balanceOf[address(signer)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                emit DelegateVotesChanged(0, balanceOf[address(signer)], arg1);
                    else:
                        if checkpoints[stor16[address(signer)]][stor18[stor16[address(signer)]] - 1 << 224].field_0 == uint32(block.number):
                            checkpoints[stor16[address(signer)]][stor18[stor16[address(signer)]] - 1 << 224].field_256 = -balanceOf[address(signer)]
                            emit DelegateVotesChanged(0, -balanceOf[address(signer)], delegates[address(signer)]);
                            if arg1:
                                if numCheckpoints[address(arg1)] > 0:
                                    if checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256 + balanceOf[address(signer)] < checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x7342414f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                    mem[ceil32(name.length) + 821 len 13],
                                                    Mask(152, -256, mem[ceil32(name.length) + 821 len 13]) << 256
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor18[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor18[address(arg1)]].field_256 = checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256 + balanceOf[address(signer)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256 += balanceOf[address(signer)]
                                        else:
                                            checkpoints[address(arg1)][stor18[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor18[address(arg1)]].field_256 = checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256 + balanceOf[address(signer)]
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256, checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256 + balanceOf[address(signer)], arg1);
                                else:
                                    if balanceOf[address(signer)] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x7342414f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                    mem[ceil32(name.length) + 821 len 13],
                                                    Mask(152, -256, mem[ceil32(name.length) + 821 len 13]) << 256
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor18[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor18[address(arg1)]].field_256 = balanceOf[address(signer)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256 = balanceOf[address(signer)]
                                        else:
                                            checkpoints[address(arg1)][stor18[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor18[address(arg1)]].field_256 = balanceOf[address(signer)]
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, balanceOf[address(signer)], arg1);
                        else:
                            checkpoints[stor16[address(signer)]][stor18[stor16[address(signer)]]].field_0 = uint32(block.number)
                            checkpoints[stor16[address(signer)]][stor18[stor16[address(signer)]]].field_256 = -balanceOf[address(signer)]
                            numCheckpoints[stor16[address(signer)]] = uint32(numCheckpoints[stor16[address(signer)]] + 1)
                            emit DelegateVotesChanged(0, -balanceOf[address(signer)], delegates[address(signer)]);
                            if arg1:
                                if numCheckpoints[address(arg1)] > 0:
                                    if checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256 + balanceOf[address(signer)] < checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x7342414f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                    mem[ceil32(name.length) + 885 len 13],
                                                    Mask(152, -256, mem[ceil32(name.length) + 885 len 13]) << 256
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor18[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor18[address(arg1)]].field_256 = checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256 + balanceOf[address(signer)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256 += balanceOf[address(signer)]
                                        else:
                                            checkpoints[address(arg1)][stor18[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor18[address(arg1)]].field_256 = checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256 + balanceOf[address(signer)]
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256, checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256 + balanceOf[address(signer)], arg1);
                                else:
                                    if balanceOf[address(signer)] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x7342414f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                    mem[ceil32(name.length) + 885 len 13],
                                                    Mask(152, -256, mem[ceil32(name.length) + 885 len 13]) << 256
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor18[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor18[address(arg1)]].field_256 = balanceOf[address(signer)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256 = balanceOf[address(signer)]
                                        else:
                                            checkpoints[address(arg1)][stor18[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor18[address(arg1)]].field_256 = balanceOf[address(signer)]
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, balanceOf[address(signer)], arg1);
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                    mem[201 len 27]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[199 len 29]
    if not msg.sender:
        if circulatingSupply + arg2 < circulatingSupply:
            revert with 0, 'SafeMath: addition overflow'
        if circulatingSupply + arg2 > cap:
            revert with 0, 'ERC20Capped: cap exceeded'
    if arg2 > balanceOf[address(msg.sender)]:
        revert with 0, 
                    32,
                    38,
                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                    mem[166 len 26],
                    mem[218 len 6]
    balanceOf[address(msg.sender)] -= arg2
    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    if delegates[address(msg.sender)] != delegates[address(arg1)]:
        if arg2 > 0:
            if not delegates[address(msg.sender)]:
                if delegates[address(arg1)]:
                    if numCheckpoints[stor16[address(arg1)]] > 0:
                        if checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_256 + arg2 < checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_256:
                            revert with 0, 'SafeMath: addition overflow'
                        if block.number >= 4294967296:
                            revert with 0, 
                                        32,
                                        51,
                                        0x7342414f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                        mem[275 len 13],
                                        Mask(152, -256, mem[275 len 13]) << 256
                        if numCheckpoints[stor16[address(arg1)]] <= 0:
                            checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]]].field_0 = uint32(block.number)
                            checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]]].field_256 = checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_256 + arg2
                            numCheckpoints[stor16[address(arg1)]] = uint32(numCheckpoints[stor16[address(arg1)]] + 1)
                        else:
                            if checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                                checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_256 += arg2
                            else:
                                checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]]].field_0 = uint32(block.number)
                                checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]]].field_256 = checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_256 + arg2
                                numCheckpoints[stor16[address(arg1)]] = uint32(numCheckpoints[stor16[address(arg1)]] + 1)
                        emit DelegateVotesChanged(checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_256, checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_256 + arg2, delegates[address(arg1)]);
                    else:
                        if arg2 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if block.number >= 4294967296:
                            revert with 0, 
                                        32,
                                        51,
                                        0x7342414f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                        mem[275 len 13],
                                        Mask(152, -256, mem[275 len 13]) << 256
                        if numCheckpoints[stor16[address(arg1)]] <= 0:
                            checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]]].field_0 = uint32(block.number)
                            checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]]].field_256 = arg2
                            numCheckpoints[stor16[address(arg1)]] = uint32(numCheckpoints[stor16[address(arg1)]] + 1)
                        else:
                            if checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                                checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_256 = arg2
                            else:
                                checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]]].field_0 = uint32(block.number)
                                checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]]].field_256 = arg2
                                numCheckpoints[stor16[address(arg1)]] = uint32(numCheckpoints[stor16[address(arg1)]] + 1)
                        emit DelegateVotesChanged(0, arg2, delegates[address(arg1)]);
            else:
                if numCheckpoints[stor16[address(msg.sender)]] > 0:
                    if arg2 > checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if block.number >= 4294967296:
                        revert with 0, 
                                    32,
                                    51,
                                    0x7342414f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                    mem[339 len 13],
                                    Mask(152, -256, mem[339 len 13]) << 256
                    if numCheckpoints[stor16[address(msg.sender)]] <= 0:
                        checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                        checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 - arg2
                        numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                        emit DelegateVotesChanged(checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256, checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 - arg2, delegates[address(msg.sender)]);
                        if delegates[address(arg1)]:
                            if numCheckpoints[stor16[address(arg1)]] > 0:
                                if checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_256 + arg2 < checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x7342414f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                mem[499 len 13],
                                                Mask(152, -256, mem[499 len 13]) << 256
                                if numCheckpoints[stor16[address(arg1)]] <= 0:
                                    checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]]].field_0 = uint32(block.number)
                                    checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]]].field_256 = checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_256 + arg2
                                    numCheckpoints[stor16[address(arg1)]] = uint32(numCheckpoints[stor16[address(arg1)]] + 1)
                                else:
                                    if checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_256 += arg2
                                    else:
                                        checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]]].field_0 = uint32(block.number)
                                        checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]]].field_256 = checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_256 + arg2
                                        numCheckpoints[stor16[address(arg1)]] = uint32(numCheckpoints[stor16[address(arg1)]] + 1)
                                emit DelegateVotesChanged(checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_256, checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_256 + arg2, delegates[address(arg1)]);
                            else:
                                if arg2 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x7342414f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                mem[499 len 13],
                                                Mask(152, -256, mem[499 len 13]) << 256
                                if numCheckpoints[stor16[address(arg1)]] <= 0:
                                    checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]]].field_0 = uint32(block.number)
                                    checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]]].field_256 = arg2
                                    numCheckpoints[stor16[address(arg1)]] = uint32(numCheckpoints[stor16[address(arg1)]] + 1)
                                else:
                                    if checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_256 = arg2
                                    else:
                                        checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]]].field_0 = uint32(block.number)
                                        checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]]].field_256 = arg2
                                        numCheckpoints[stor16[address(arg1)]] = uint32(numCheckpoints[stor16[address(arg1)]] + 1)
                                emit DelegateVotesChanged(0, arg2, delegates[address(arg1)]);
                    else:
                        if checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                            checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 -= arg2
                            emit DelegateVotesChanged(checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256, checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 - arg2, delegates[address(msg.sender)]);
                            if delegates[address(arg1)]:
                                if numCheckpoints[stor16[address(arg1)]] > 0:
                                    if checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_256 + arg2 < checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x7342414f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                    mem[435 len 13],
                                                    Mask(152, -256, mem[435 len 13]) << 256
                                    if numCheckpoints[stor16[address(arg1)]] <= 0:
                                        checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]]].field_0 = uint32(block.number)
                                        checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]]].field_256 = checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_256 + arg2
                                        numCheckpoints[stor16[address(arg1)]] = uint32(numCheckpoints[stor16[address(arg1)]] + 1)
                                    else:
                                        if checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_256 += arg2
                                        else:
                                            checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]]].field_0 = uint32(block.number)
                                            checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]]].field_256 = checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_256 + arg2
                                            numCheckpoints[stor16[address(arg1)]] = uint32(numCheckpoints[stor16[address(arg1)]] + 1)
                                    emit DelegateVotesChanged(checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_256, checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_256 + arg2, delegates[address(arg1)]);
                                else:
                                    if arg2 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x7342414f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                    mem[435 len 13],
                                                    Mask(152, -256, mem[435 len 13]) << 256
                                    if numCheckpoints[stor16[address(arg1)]] <= 0:
                                        checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]]].field_0 = uint32(block.number)
                                        checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]]].field_256 = arg2
                                        numCheckpoints[stor16[address(arg1)]] = uint32(numCheckpoints[stor16[address(arg1)]] + 1)
                                    else:
                                        if checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_256 = arg2
                                        else:
                                            checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]]].field_0 = uint32(block.number)
                                            checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]]].field_256 = arg2
                                            numCheckpoints[stor16[address(arg1)]] = uint32(numCheckpoints[stor16[address(arg1)]] + 1)
                                    emit DelegateVotesChanged(0, arg2, delegates[address(arg1)]);
                        else:
                            checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                            checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 - arg2
                            numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                            emit DelegateVotesChanged(checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256, checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 - arg2, delegates[address(msg.sender)]);
                            if delegates[address(arg1)]:
                                if numCheckpoints[stor16[address(arg1)]] > 0:
                                    if checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_256 + arg2 < checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x7342414f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                    mem[499 len 13],
                                                    Mask(152, -256, mem[499 len 13]) << 256
                                    if numCheckpoints[stor16[address(arg1)]] <= 0:
                                        checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]]].field_0 = uint32(block.number)
                                        checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]]].field_256 = checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_256 + arg2
                                        numCheckpoints[stor16[address(arg1)]] = uint32(numCheckpoints[stor16[address(arg1)]] + 1)
                                    else:
                                        if checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_256 += arg2
                                        else:
                                            checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]]].field_0 = uint32(block.number)
                                            checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]]].field_256 = checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_256 + arg2
                                            numCheckpoints[stor16[address(arg1)]] = uint32(numCheckpoints[stor16[address(arg1)]] + 1)
                                    emit DelegateVotesChanged(checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_256, checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_256 + arg2, delegates[address(arg1)]);
                                else:
                                    if arg2 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x7342414f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                    mem[499 len 13],
                                                    Mask(152, -256, mem[499 len 13]) << 256
                                    if numCheckpoints[stor16[address(arg1)]] <= 0:
                                        checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]]].field_0 = uint32(block.number)
                                        checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]]].field_256 = arg2
                                        numCheckpoints[stor16[address(arg1)]] = uint32(numCheckpoints[stor16[address(arg1)]] + 1)
                                    else:
                                        if checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_256 = arg2
                                        else:
                                            checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]]].field_0 = uint32(block.number)
                                            checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]]].field_256 = arg2
                                            numCheckpoints[stor16[address(arg1)]] = uint32(numCheckpoints[stor16[address(arg1)]] + 1)
                                    emit DelegateVotesChanged(0, arg2, delegates[address(arg1)]);
                else:
                    if arg2 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if block.number >= 4294967296:
                        revert with 0, 
                                    32,
                                    51,
                                    0x7342414f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                    mem[339 len 13],
                                    Mask(152, -256, mem[339 len 13]) << 256
                    if numCheckpoints[stor16[address(msg.sender)]] <= 0:
                        checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                        checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = -arg2
                        numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                        emit DelegateVotesChanged(0, -arg2, delegates[address(msg.sender)]);
                        if delegates[address(arg1)]:
                            if numCheckpoints[stor16[address(arg1)]] > 0:
                                if checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_256 + arg2 < checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x7342414f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                mem[499 len 13],
                                                Mask(152, -256, mem[499 len 13]) << 256
                                if numCheckpoints[stor16[address(arg1)]] <= 0:
                                    checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]]].field_0 = uint32(block.number)
                                    checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]]].field_256 = checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_256 + arg2
                                    numCheckpoints[stor16[address(arg1)]] = uint32(numCheckpoints[stor16[address(arg1)]] + 1)
                                else:
                                    if checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_256 += arg2
                                    else:
                                        checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]]].field_0 = uint32(block.number)
                                        checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]]].field_256 = checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_256 + arg2
                                        numCheckpoints[stor16[address(arg1)]] = uint32(numCheckpoints[stor16[address(arg1)]] + 1)
                                emit DelegateVotesChanged(checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_256, checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_256 + arg2, delegates[address(arg1)]);
                            else:
                                if arg2 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x7342414f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                mem[499 len 13],
                                                Mask(152, -256, mem[499 len 13]) << 256
                                if numCheckpoints[stor16[address(arg1)]] <= 0:
                                    checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]]].field_0 = uint32(block.number)
                                    checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]]].field_256 = arg2
                                    numCheckpoints[stor16[address(arg1)]] = uint32(numCheckpoints[stor16[address(arg1)]] + 1)
                                else:
                                    if checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_256 = arg2
                                    else:
                                        checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]]].field_0 = uint32(block.number)
                                        checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]]].field_256 = arg2
                                        numCheckpoints[stor16[address(arg1)]] = uint32(numCheckpoints[stor16[address(arg1)]] + 1)
                                emit DelegateVotesChanged(0, arg2, delegates[address(arg1)]);
                    else:
                        if checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                            checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 = -arg2
                            emit DelegateVotesChanged(0, -arg2, delegates[address(msg.sender)]);
                            if delegates[address(arg1)]:
                                if numCheckpoints[stor16[address(arg1)]] > 0:
                                    if checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_256 + arg2 < checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x7342414f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                    mem[435 len 13],
                                                    Mask(152, -256, mem[435 len 13]) << 256
                                    if numCheckpoints[stor16[address(arg1)]] <= 0:
                                        checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]]].field_0 = uint32(block.number)
                                        checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]]].field_256 = checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_256 + arg2
                                        numCheckpoints[stor16[address(arg1)]] = uint32(numCheckpoints[stor16[address(arg1)]] + 1)
                                    else:
                                        if checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_256 += arg2
                                        else:
                                            checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]]].field_0 = uint32(block.number)
                                            checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]]].field_256 = checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_256 + arg2
                                            numCheckpoints[stor16[address(arg1)]] = uint32(numCheckpoints[stor16[address(arg1)]] + 1)
                                    emit DelegateVotesChanged(checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_256, checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_256 + arg2, delegates[address(arg1)]);
                                else:
                                    if arg2 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x7342414f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                    mem[435 len 13],
                                                    Mask(152, -256, mem[435 len 13]) << 256
                                    if numCheckpoints[stor16[address(arg1)]] <= 0:
                                        checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]]].field_0 = uint32(block.number)
                                        checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]]].field_256 = arg2
                                        numCheckpoints[stor16[address(arg1)]] = uint32(numCheckpoints[stor16[address(arg1)]] + 1)
                                    else:
                                        if checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_256 = arg2
                                        else:
                                            checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]]].field_0 = uint32(block.number)
                                            checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]]].field_256 = arg2
                                            numCheckpoints[stor16[address(arg1)]] = uint32(numCheckpoints[stor16[address(arg1)]] + 1)
                                    emit DelegateVotesChanged(0, arg2, delegates[address(arg1)]);
                        else:
                            checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                            checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = -arg2
                            numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                            emit DelegateVotesChanged(0, -arg2, delegates[address(msg.sender)]);
                            if delegates[address(arg1)]:
                                if numCheckpoints[stor16[address(arg1)]] > 0:
                                    if checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_256 + arg2 < checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x7342414f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                    mem[499 len 13],
                                                    Mask(152, -256, mem[499 len 13]) << 256
                                    if numCheckpoints[stor16[address(arg1)]] <= 0:
                                        checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]]].field_0 = uint32(block.number)
                                        checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]]].field_256 = checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_256 + arg2
                                        numCheckpoints[stor16[address(arg1)]] = uint32(numCheckpoints[stor16[address(arg1)]] + 1)
                                    else:
                                        if checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_256 += arg2
                                        else:
                                            checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]]].field_0 = uint32(block.number)
                                            checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]]].field_256 = checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_256 + arg2
                                            numCheckpoints[stor16[address(arg1)]] = uint32(numCheckpoints[stor16[address(arg1)]] + 1)
                                    emit DelegateVotesChanged(checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_256, checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_256 + arg2, delegates[address(arg1)]);
                                else:
                                    if arg2 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x7342414f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                    mem[499 len 13],
                                                    Mask(152, -256, mem[499 len 13]) << 256
                                    if numCheckpoints[stor16[address(arg1)]] <= 0:
                                        checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]]].field_0 = uint32(block.number)
                                        checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]]].field_256 = arg2
                                        numCheckpoints[stor16[address(arg1)]] = uint32(numCheckpoints[stor16[address(arg1)]] + 1)
                                    else:
                                        if checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_256 = arg2
                                        else:
                                            checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]]].field_0 = uint32(block.number)
                                            checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]]].field_256 = arg2
                                            numCheckpoints[stor16[address(arg1)]] = uint32(numCheckpoints[stor16[address(arg1)]] + 1)
                                    emit DelegateVotesChanged(0, arg2, delegates[address(arg1)]);
    return 1
}

function transferAll(address arg1) payable {
    require calldata.size - 4 >= 32
    if lockOf[address(arg1)] + lockOf[address(msg.sender)] < lockOf[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    lockOf[address(arg1)] += lockOf[address(msg.sender)]
    if lastUnlockBlock[address(arg1)] < lockFromBlock:
        lastUnlockBlock[address(arg1)] = lockFromBlock
    if lastUnlockBlock[address(arg1)] < lastUnlockBlock[address(msg.sender)]:
        lastUnlockBlock[address(arg1)] = lastUnlockBlock[address(msg.sender)]
    lockOf[address(msg.sender)] = 0
    lastUnlockBlock[address(msg.sender)] = 0
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                    mem[201 len 27]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[199 len 29]
    if not msg.sender:
        if circulatingSupply + balanceOf[address(msg.sender)] < circulatingSupply:
            revert with 0, 'SafeMath: addition overflow'
        if circulatingSupply + balanceOf[address(msg.sender)] > cap:
            revert with 0, 'ERC20Capped: cap exceeded'
    if balanceOf[address(msg.sender)] > balanceOf[address(msg.sender)]:
        revert with 0, 
                    32,
                    38,
                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                    mem[166 len 26],
                    mem[218 len 6]
    balanceOf[address(msg.sender)] = 0
    if balanceOf[address(arg1)] + balanceOf[address(msg.sender)] < balanceOf[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] += balanceOf[address(msg.sender)]
    emit Transfer(balanceOf[address(msg.sender)], msg.sender, arg1);
    if delegates[address(msg.sender)] != delegates[address(arg1)]:
        if balanceOf[address(msg.sender)] > 0:
            if not delegates[address(msg.sender)]:
                if delegates[address(arg1)]:
                    if numCheckpoints[stor16[address(arg1)]] > 0:
                        if checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_256 + balanceOf[address(msg.sender)] < checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_256:
                            revert with 0, 'SafeMath: addition overflow'
                        if block.number >= 4294967296:
                            revert with 0, 
                                        32,
                                        51,
                                        0x7342414f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                        mem[275 len 13],
                                        Mask(152, -256, mem[275 len 13]) << 256
                        if numCheckpoints[stor16[address(arg1)]] <= 0:
                            checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]]].field_0 = uint32(block.number)
                            checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]]].field_256 = checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_256 + balanceOf[address(msg.sender)]
                            numCheckpoints[stor16[address(arg1)]] = uint32(numCheckpoints[stor16[address(arg1)]] + 1)
                        else:
                            if checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                                checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_256 += balanceOf[address(msg.sender)]
                            else:
                                checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]]].field_0 = uint32(block.number)
                                checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]]].field_256 = checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_256 + balanceOf[address(msg.sender)]
                                numCheckpoints[stor16[address(arg1)]] = uint32(numCheckpoints[stor16[address(arg1)]] + 1)
                        emit DelegateVotesChanged(checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_256, checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_256 + balanceOf[address(msg.sender)], delegates[address(arg1)]);
                    else:
                        if balanceOf[address(msg.sender)] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if block.number >= 4294967296:
                            revert with 0, 
                                        32,
                                        51,
                                        0x7342414f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                        mem[275 len 13],
                                        Mask(152, -256, mem[275 len 13]) << 256
                        if numCheckpoints[stor16[address(arg1)]] <= 0:
                            checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]]].field_0 = uint32(block.number)
                            checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]]].field_256 = balanceOf[address(msg.sender)]
                            numCheckpoints[stor16[address(arg1)]] = uint32(numCheckpoints[stor16[address(arg1)]] + 1)
                        else:
                            if checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                                checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_256 = balanceOf[address(msg.sender)]
                            else:
                                checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]]].field_0 = uint32(block.number)
                                checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]]].field_256 = balanceOf[address(msg.sender)]
                                numCheckpoints[stor16[address(arg1)]] = uint32(numCheckpoints[stor16[address(arg1)]] + 1)
                        emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], delegates[address(arg1)]);
            else:
                if numCheckpoints[stor16[address(msg.sender)]] > 0:
                    if balanceOf[address(msg.sender)] > checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if block.number >= 4294967296:
                        revert with 0, 
                                    32,
                                    51,
                                    0x7342414f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                    mem[339 len 13],
                                    Mask(152, -256, mem[339 len 13]) << 256
                    if numCheckpoints[stor16[address(msg.sender)]] <= 0:
                        checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                        checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 - balanceOf[address(msg.sender)]
                        numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                        emit DelegateVotesChanged(checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256, checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 - balanceOf[address(msg.sender)], delegates[address(msg.sender)]);
                        if delegates[address(arg1)]:
                            if numCheckpoints[stor16[address(arg1)]] > 0:
                                if checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_256 + balanceOf[address(msg.sender)] < checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x7342414f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                mem[499 len 13],
                                                Mask(152, -256, mem[499 len 13]) << 256
                                if numCheckpoints[stor16[address(arg1)]] <= 0:
                                    checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]]].field_0 = uint32(block.number)
                                    checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]]].field_256 = checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_256 + balanceOf[address(msg.sender)]
                                    numCheckpoints[stor16[address(arg1)]] = uint32(numCheckpoints[stor16[address(arg1)]] + 1)
                                else:
                                    if checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_256 += balanceOf[address(msg.sender)]
                                    else:
                                        checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]]].field_0 = uint32(block.number)
                                        checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]]].field_256 = checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_256 + balanceOf[address(msg.sender)]
                                        numCheckpoints[stor16[address(arg1)]] = uint32(numCheckpoints[stor16[address(arg1)]] + 1)
                                emit DelegateVotesChanged(checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_256, checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_256 + balanceOf[address(msg.sender)], delegates[address(arg1)]);
                            else:
                                if balanceOf[address(msg.sender)] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x7342414f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                mem[499 len 13],
                                                Mask(152, -256, mem[499 len 13]) << 256
                                if numCheckpoints[stor16[address(arg1)]] <= 0:
                                    checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]]].field_0 = uint32(block.number)
                                    checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]]].field_256 = balanceOf[address(msg.sender)]
                                    numCheckpoints[stor16[address(arg1)]] = uint32(numCheckpoints[stor16[address(arg1)]] + 1)
                                else:
                                    if checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_256 = balanceOf[address(msg.sender)]
                                    else:
                                        checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]]].field_0 = uint32(block.number)
                                        checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]]].field_256 = balanceOf[address(msg.sender)]
                                        numCheckpoints[stor16[address(arg1)]] = uint32(numCheckpoints[stor16[address(arg1)]] + 1)
                                emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], delegates[address(arg1)]);
                    else:
                        if checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                            checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 -= balanceOf[address(msg.sender)]
                            emit DelegateVotesChanged(checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256, checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 - balanceOf[address(msg.sender)], delegates[address(msg.sender)]);
                            if delegates[address(arg1)]:
                                if numCheckpoints[stor16[address(arg1)]] > 0:
                                    if checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_256 + balanceOf[address(msg.sender)] < checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x7342414f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                    mem[435 len 13],
                                                    Mask(152, -256, mem[435 len 13]) << 256
                                    if numCheckpoints[stor16[address(arg1)]] <= 0:
                                        checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]]].field_0 = uint32(block.number)
                                        checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]]].field_256 = checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_256 + balanceOf[address(msg.sender)]
                                        numCheckpoints[stor16[address(arg1)]] = uint32(numCheckpoints[stor16[address(arg1)]] + 1)
                                    else:
                                        if checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_256 += balanceOf[address(msg.sender)]
                                        else:
                                            checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]]].field_0 = uint32(block.number)
                                            checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]]].field_256 = checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_256 + balanceOf[address(msg.sender)]
                                            numCheckpoints[stor16[address(arg1)]] = uint32(numCheckpoints[stor16[address(arg1)]] + 1)
                                    emit DelegateVotesChanged(checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_256, checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_256 + balanceOf[address(msg.sender)], delegates[address(arg1)]);
                                else:
                                    if balanceOf[address(msg.sender)] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x7342414f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                    mem[435 len 13],
                                                    Mask(152, -256, mem[435 len 13]) << 256
                                    if numCheckpoints[stor16[address(arg1)]] <= 0:
                                        checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]]].field_0 = uint32(block.number)
                                        checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]]].field_256 = balanceOf[address(msg.sender)]
                                        numCheckpoints[stor16[address(arg1)]] = uint32(numCheckpoints[stor16[address(arg1)]] + 1)
                                    else:
                                        if checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_256 = balanceOf[address(msg.sender)]
                                        else:
                                            checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]]].field_0 = uint32(block.number)
                                            checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]]].field_256 = balanceOf[address(msg.sender)]
                                            numCheckpoints[stor16[address(arg1)]] = uint32(numCheckpoints[stor16[address(arg1)]] + 1)
                                    emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], delegates[address(arg1)]);
                        else:
                            checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                            checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 - balanceOf[address(msg.sender)]
                            numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                            emit DelegateVotesChanged(checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256, checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 - balanceOf[address(msg.sender)], delegates[address(msg.sender)]);
                            if delegates[address(arg1)]:
                                if numCheckpoints[stor16[address(arg1)]] > 0:
                                    if checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_256 + balanceOf[address(msg.sender)] < checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x7342414f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                    mem[499 len 13],
                                                    Mask(152, -256, mem[499 len 13]) << 256
                                    if numCheckpoints[stor16[address(arg1)]] <= 0:
                                        checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]]].field_0 = uint32(block.number)
                                        checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]]].field_256 = checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_256 + balanceOf[address(msg.sender)]
                                        numCheckpoints[stor16[address(arg1)]] = uint32(numCheckpoints[stor16[address(arg1)]] + 1)
                                    else:
                                        if checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_256 += balanceOf[address(msg.sender)]
                                        else:
                                            checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]]].field_0 = uint32(block.number)
                                            checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]]].field_256 = checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_256 + balanceOf[address(msg.sender)]
                                            numCheckpoints[stor16[address(arg1)]] = uint32(numCheckpoints[stor16[address(arg1)]] + 1)
                                    emit DelegateVotesChanged(checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_256, checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_256 + balanceOf[address(msg.sender)], delegates[address(arg1)]);
                                else:
                                    if balanceOf[address(msg.sender)] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x7342414f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                    mem[499 len 13],
                                                    Mask(152, -256, mem[499 len 13]) << 256
                                    if numCheckpoints[stor16[address(arg1)]] <= 0:
                                        checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]]].field_0 = uint32(block.number)
                                        checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]]].field_256 = balanceOf[address(msg.sender)]
                                        numCheckpoints[stor16[address(arg1)]] = uint32(numCheckpoints[stor16[address(arg1)]] + 1)
                                    else:
                                        if checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_256 = balanceOf[address(msg.sender)]
                                        else:
                                            checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]]].field_0 = uint32(block.number)
                                            checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]]].field_256 = balanceOf[address(msg.sender)]
                                            numCheckpoints[stor16[address(arg1)]] = uint32(numCheckpoints[stor16[address(arg1)]] + 1)
                                    emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], delegates[address(arg1)]);
                else:
                    if balanceOf[address(msg.sender)] > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if block.number >= 4294967296:
                        revert with 0, 
                                    32,
                                    51,
                                    0x7342414f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                    mem[339 len 13],
                                    Mask(152, -256, mem[339 len 13]) << 256
                    if numCheckpoints[stor16[address(msg.sender)]] <= 0:
                        checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                        checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = -balanceOf[address(msg.sender)]
                        numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                        emit DelegateVotesChanged(0, -balanceOf[address(msg.sender)], delegates[address(msg.sender)]);
                        if delegates[address(arg1)]:
                            if numCheckpoints[stor16[address(arg1)]] > 0:
                                if checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_256 + balanceOf[address(msg.sender)] < checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x7342414f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                mem[499 len 13],
                                                Mask(152, -256, mem[499 len 13]) << 256
                                if numCheckpoints[stor16[address(arg1)]] <= 0:
                                    checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]]].field_0 = uint32(block.number)
                                    checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]]].field_256 = checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_256 + balanceOf[address(msg.sender)]
                                    numCheckpoints[stor16[address(arg1)]] = uint32(numCheckpoints[stor16[address(arg1)]] + 1)
                                else:
                                    if checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_256 += balanceOf[address(msg.sender)]
                                    else:
                                        checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]]].field_0 = uint32(block.number)
                                        checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]]].field_256 = checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_256 + balanceOf[address(msg.sender)]
                                        numCheckpoints[stor16[address(arg1)]] = uint32(numCheckpoints[stor16[address(arg1)]] + 1)
                                emit DelegateVotesChanged(checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_256, checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_256 + balanceOf[address(msg.sender)], delegates[address(arg1)]);
                            else:
                                if balanceOf[address(msg.sender)] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x7342414f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                mem[499 len 13],
                                                Mask(152, -256, mem[499 len 13]) << 256
                                if numCheckpoints[stor16[address(arg1)]] <= 0:
                                    checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]]].field_0 = uint32(block.number)
                                    checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]]].field_256 = balanceOf[address(msg.sender)]
                                    numCheckpoints[stor16[address(arg1)]] = uint32(numCheckpoints[stor16[address(arg1)]] + 1)
                                else:
                                    if checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_256 = balanceOf[address(msg.sender)]
                                    else:
                                        checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]]].field_0 = uint32(block.number)
                                        checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]]].field_256 = balanceOf[address(msg.sender)]
                                        numCheckpoints[stor16[address(arg1)]] = uint32(numCheckpoints[stor16[address(arg1)]] + 1)
                                emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], delegates[address(arg1)]);
                    else:
                        if checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                            checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 = -balanceOf[address(msg.sender)]
                            emit DelegateVotesChanged(0, -balanceOf[address(msg.sender)], delegates[address(msg.sender)]);
                            if delegates[address(arg1)]:
                                if numCheckpoints[stor16[address(arg1)]] > 0:
                                    if checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_256 + balanceOf[address(msg.sender)] < checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x7342414f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                    mem[435 len 13],
                                                    Mask(152, -256, mem[435 len 13]) << 256
                                    if numCheckpoints[stor16[address(arg1)]] <= 0:
                                        checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]]].field_0 = uint32(block.number)
                                        checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]]].field_256 = checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_256 + balanceOf[address(msg.sender)]
                                        numCheckpoints[stor16[address(arg1)]] = uint32(numCheckpoints[stor16[address(arg1)]] + 1)
                                    else:
                                        if checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_256 += balanceOf[address(msg.sender)]
                                        else:
                                            checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]]].field_0 = uint32(block.number)
                                            checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]]].field_256 = checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_256 + balanceOf[address(msg.sender)]
                                            numCheckpoints[stor16[address(arg1)]] = uint32(numCheckpoints[stor16[address(arg1)]] + 1)
                                    emit DelegateVotesChanged(checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_256, checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_256 + balanceOf[address(msg.sender)], delegates[address(arg1)]);
                                else:
                                    if balanceOf[address(msg.sender)] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x7342414f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                    mem[435 len 13],
                                                    Mask(152, -256, mem[435 len 13]) << 256
                                    if numCheckpoints[stor16[address(arg1)]] <= 0:
                                        checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]]].field_0 = uint32(block.number)
                                        checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]]].field_256 = balanceOf[address(msg.sender)]
                                        numCheckpoints[stor16[address(arg1)]] = uint32(numCheckpoints[stor16[address(arg1)]] + 1)
                                    else:
                                        if checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_256 = balanceOf[address(msg.sender)]
                                        else:
                                            checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]]].field_0 = uint32(block.number)
                                            checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]]].field_256 = balanceOf[address(msg.sender)]
                                            numCheckpoints[stor16[address(arg1)]] = uint32(numCheckpoints[stor16[address(arg1)]] + 1)
                                    emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], delegates[address(arg1)]);
                        else:
                            checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                            checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = -balanceOf[address(msg.sender)]
                            numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                            emit DelegateVotesChanged(0, -balanceOf[address(msg.sender)], delegates[address(msg.sender)]);
                            if delegates[address(arg1)]:
                                if numCheckpoints[stor16[address(arg1)]] > 0:
                                    if checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_256 + balanceOf[address(msg.sender)] < checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x7342414f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                    mem[499 len 13],
                                                    Mask(152, -256, mem[499 len 13]) << 256
                                    if numCheckpoints[stor16[address(arg1)]] <= 0:
                                        checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]]].field_0 = uint32(block.number)
                                        checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]]].field_256 = checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_256 + balanceOf[address(msg.sender)]
                                        numCheckpoints[stor16[address(arg1)]] = uint32(numCheckpoints[stor16[address(arg1)]] + 1)
                                    else:
                                        if checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_256 += balanceOf[address(msg.sender)]
                                        else:
                                            checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]]].field_0 = uint32(block.number)
                                            checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]]].field_256 = checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_256 + balanceOf[address(msg.sender)]
                                            numCheckpoints[stor16[address(arg1)]] = uint32(numCheckpoints[stor16[address(arg1)]] + 1)
                                    emit DelegateVotesChanged(checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_256, checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_256 + balanceOf[address(msg.sender)], delegates[address(arg1)]);
                                else:
                                    if balanceOf[address(msg.sender)] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x7342414f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                    mem[499 len 13],
                                                    Mask(152, -256, mem[499 len 13]) << 256
                                    if numCheckpoints[stor16[address(arg1)]] <= 0:
                                        checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]]].field_0 = uint32(block.number)
                                        checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]]].field_256 = balanceOf[address(msg.sender)]
                                        numCheckpoints[stor16[address(arg1)]] = uint32(numCheckpoints[stor16[address(arg1)]] + 1)
                                    else:
                                        if checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_256 = balanceOf[address(msg.sender)]
                                        else:
                                            checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]]].field_0 = uint32(block.number)
                                            checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]]].field_256 = balanceOf[address(msg.sender)]
                                            numCheckpoints[stor16[address(arg1)]] = uint32(numCheckpoints[stor16[address(arg1)]] + 1)
                                    emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], delegates[address(arg1)]);
}

function lock(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'ERC20: lock to the zero address'
    if arg2 > balanceOf[address(arg1)]:
        revert with 0, 'ERC20: lock amount over blance'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                    mem[201 len 27]
    if not this.address:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[199 len 29]
    if not arg1:
        if circulatingSupply + arg2 < circulatingSupply:
            revert with 0, 'SafeMath: addition overflow'
        if circulatingSupply + arg2 > cap:
            revert with 0, 'ERC20Capped: cap exceeded'
    if arg2 > balanceOf[address(arg1)]:
        revert with 0, 
                    32,
                    38,
                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                    mem[166 len 26],
                    mem[218 len 6]
    balanceOf[address(arg1)] -= arg2
    if balanceOf[address(this.address)] + arg2 < balanceOf[address(this.address)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(this.address)] += arg2
    emit Transfer(arg2, arg1, this.address);
    if delegates[address(arg1)] != delegates[address(this.address)]:
        if arg2 > 0:
            if not delegates[address(arg1)]:
                if delegates[address(this.address)]:
                    if numCheckpoints[stor16[address(this.address)]] > 0:
                        if checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]] - 1 << 224].field_256 + arg2 < checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]] - 1 << 224].field_256:
                            revert with 0, 'SafeMath: addition overflow'
                        if block.number >= 4294967296:
                            revert with 0, 
                                        32,
                                        51,
                                        0x7342414f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                        mem[275 len 13],
                                        Mask(152, -256, mem[275 len 13]) << 256
                        if numCheckpoints[stor16[address(this.address)]] <= 0:
                            checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]]].field_0 = uint32(block.number)
                            checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]]].field_256 = checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]] - 1 << 224].field_256 + arg2
                            numCheckpoints[stor16[address(this.address)]] = uint32(numCheckpoints[stor16[address(this.address)]] + 1)
                        else:
                            if checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]] - 1 << 224].field_0 == uint32(block.number):
                                checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]] - 1 << 224].field_256 += arg2
                            else:
                                checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]]].field_0 = uint32(block.number)
                                checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]]].field_256 = checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]] - 1 << 224].field_256 + arg2
                                numCheckpoints[stor16[address(this.address)]] = uint32(numCheckpoints[stor16[address(this.address)]] + 1)
                        emit DelegateVotesChanged(checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]] - 1 << 224].field_256, checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]] - 1 << 224].field_256 + arg2, delegates[address(this.address)]);
                    else:
                        if arg2 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if block.number >= 4294967296:
                            revert with 0, 
                                        32,
                                        51,
                                        0x7342414f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                        mem[275 len 13],
                                        Mask(152, -256, mem[275 len 13]) << 256
                        if numCheckpoints[stor16[address(this.address)]] <= 0:
                            checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]]].field_0 = uint32(block.number)
                            checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]]].field_256 = arg2
                            numCheckpoints[stor16[address(this.address)]] = uint32(numCheckpoints[stor16[address(this.address)]] + 1)
                        else:
                            if checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]] - 1 << 224].field_0 == uint32(block.number):
                                checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]] - 1 << 224].field_256 = arg2
                            else:
                                checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]]].field_0 = uint32(block.number)
                                checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]]].field_256 = arg2
                                numCheckpoints[stor16[address(this.address)]] = uint32(numCheckpoints[stor16[address(this.address)]] + 1)
                        emit DelegateVotesChanged(0, arg2, delegates[address(this.address)]);
            else:
                if numCheckpoints[stor16[address(arg1)]] > 0:
                    if arg2 > checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_256:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if block.number >= 4294967296:
                        revert with 0, 
                                    32,
                                    51,
                                    0x7342414f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                    mem[339 len 13],
                                    Mask(152, -256, mem[339 len 13]) << 256
                    if numCheckpoints[stor16[address(arg1)]] <= 0:
                        checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]]].field_0 = uint32(block.number)
                        checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]]].field_256 = checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_256 - arg2
                        numCheckpoints[stor16[address(arg1)]] = uint32(numCheckpoints[stor16[address(arg1)]] + 1)
                        emit DelegateVotesChanged(checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_256, checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_256 - arg2, delegates[address(arg1)]);
                        if delegates[address(this.address)]:
                            if numCheckpoints[stor16[address(this.address)]] > 0:
                                if checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]] - 1 << 224].field_256 + arg2 < checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]] - 1 << 224].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x7342414f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                mem[499 len 13],
                                                Mask(152, -256, mem[499 len 13]) << 256
                                if numCheckpoints[stor16[address(this.address)]] <= 0:
                                    checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]]].field_0 = uint32(block.number)
                                    checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]]].field_256 = checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]] - 1 << 224].field_256 + arg2
                                    numCheckpoints[stor16[address(this.address)]] = uint32(numCheckpoints[stor16[address(this.address)]] + 1)
                                else:
                                    if checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]] - 1 << 224].field_256 += arg2
                                    else:
                                        checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]]].field_0 = uint32(block.number)
                                        checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]]].field_256 = checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]] - 1 << 224].field_256 + arg2
                                        numCheckpoints[stor16[address(this.address)]] = uint32(numCheckpoints[stor16[address(this.address)]] + 1)
                                emit DelegateVotesChanged(checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]] - 1 << 224].field_256, checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]] - 1 << 224].field_256 + arg2, delegates[address(this.address)]);
                            else:
                                if arg2 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x7342414f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                mem[499 len 13],
                                                Mask(152, -256, mem[499 len 13]) << 256
                                if numCheckpoints[stor16[address(this.address)]] <= 0:
                                    checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]]].field_0 = uint32(block.number)
                                    checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]]].field_256 = arg2
                                    numCheckpoints[stor16[address(this.address)]] = uint32(numCheckpoints[stor16[address(this.address)]] + 1)
                                else:
                                    if checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]] - 1 << 224].field_256 = arg2
                                    else:
                                        checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]]].field_0 = uint32(block.number)
                                        checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]]].field_256 = arg2
                                        numCheckpoints[stor16[address(this.address)]] = uint32(numCheckpoints[stor16[address(this.address)]] + 1)
                                emit DelegateVotesChanged(0, arg2, delegates[address(this.address)]);
                    else:
                        if checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                            checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_256 -= arg2
                            emit DelegateVotesChanged(checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_256, checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_256 - arg2, delegates[address(arg1)]);
                            if delegates[address(this.address)]:
                                if numCheckpoints[stor16[address(this.address)]] > 0:
                                    if checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]] - 1 << 224].field_256 + arg2 < checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]] - 1 << 224].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x7342414f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                    mem[435 len 13],
                                                    Mask(152, -256, mem[435 len 13]) << 256
                                    if numCheckpoints[stor16[address(this.address)]] <= 0:
                                        checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]]].field_0 = uint32(block.number)
                                        checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]]].field_256 = checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]] - 1 << 224].field_256 + arg2
                                        numCheckpoints[stor16[address(this.address)]] = uint32(numCheckpoints[stor16[address(this.address)]] + 1)
                                    else:
                                        if checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]] - 1 << 224].field_256 += arg2
                                        else:
                                            checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]]].field_0 = uint32(block.number)
                                            checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]]].field_256 = checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]] - 1 << 224].field_256 + arg2
                                            numCheckpoints[stor16[address(this.address)]] = uint32(numCheckpoints[stor16[address(this.address)]] + 1)
                                    emit DelegateVotesChanged(checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]] - 1 << 224].field_256, checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]] - 1 << 224].field_256 + arg2, delegates[address(this.address)]);
                                else:
                                    if arg2 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x7342414f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                    mem[435 len 13],
                                                    Mask(152, -256, mem[435 len 13]) << 256
                                    if numCheckpoints[stor16[address(this.address)]] <= 0:
                                        checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]]].field_0 = uint32(block.number)
                                        checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]]].field_256 = arg2
                                        numCheckpoints[stor16[address(this.address)]] = uint32(numCheckpoints[stor16[address(this.address)]] + 1)
                                    else:
                                        if checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]] - 1 << 224].field_256 = arg2
                                        else:
                                            checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]]].field_0 = uint32(block.number)
                                            checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]]].field_256 = arg2
                                            numCheckpoints[stor16[address(this.address)]] = uint32(numCheckpoints[stor16[address(this.address)]] + 1)
                                    emit DelegateVotesChanged(0, arg2, delegates[address(this.address)]);
                        else:
                            checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]]].field_0 = uint32(block.number)
                            checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]]].field_256 = checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_256 - arg2
                            numCheckpoints[stor16[address(arg1)]] = uint32(numCheckpoints[stor16[address(arg1)]] + 1)
                            emit DelegateVotesChanged(checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_256, checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_256 - arg2, delegates[address(arg1)]);
                            if delegates[address(this.address)]:
                                if numCheckpoints[stor16[address(this.address)]] > 0:
                                    if checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]] - 1 << 224].field_256 + arg2 < checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]] - 1 << 224].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x7342414f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                    mem[499 len 13],
                                                    Mask(152, -256, mem[499 len 13]) << 256
                                    if numCheckpoints[stor16[address(this.address)]] <= 0:
                                        checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]]].field_0 = uint32(block.number)
                                        checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]]].field_256 = checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]] - 1 << 224].field_256 + arg2
                                        numCheckpoints[stor16[address(this.address)]] = uint32(numCheckpoints[stor16[address(this.address)]] + 1)
                                    else:
                                        if checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]] - 1 << 224].field_256 += arg2
                                        else:
                                            checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]]].field_0 = uint32(block.number)
                                            checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]]].field_256 = checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]] - 1 << 224].field_256 + arg2
                                            numCheckpoints[stor16[address(this.address)]] = uint32(numCheckpoints[stor16[address(this.address)]] + 1)
                                    emit DelegateVotesChanged(checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]] - 1 << 224].field_256, checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]] - 1 << 224].field_256 + arg2, delegates[address(this.address)]);
                                else:
                                    if arg2 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x7342414f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                    mem[499 len 13],
                                                    Mask(152, -256, mem[499 len 13]) << 256
                                    if numCheckpoints[stor16[address(this.address)]] <= 0:
                                        checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]]].field_0 = uint32(block.number)
                                        checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]]].field_256 = arg2
                                        numCheckpoints[stor16[address(this.address)]] = uint32(numCheckpoints[stor16[address(this.address)]] + 1)
                                    else:
                                        if checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]] - 1 << 224].field_256 = arg2
                                        else:
                                            checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]]].field_0 = uint32(block.number)
                                            checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]]].field_256 = arg2
                                            numCheckpoints[stor16[address(this.address)]] = uint32(numCheckpoints[stor16[address(this.address)]] + 1)
                                    emit DelegateVotesChanged(0, arg2, delegates[address(this.address)]);
                else:
                    if arg2 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if block.number >= 4294967296:
                        revert with 0, 
                                    32,
                                    51,
                                    0x7342414f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                    mem[339 len 13],
                                    Mask(152, -256, mem[339 len 13]) << 256
                    if numCheckpoints[stor16[address(arg1)]] <= 0:
                        checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]]].field_0 = uint32(block.number)
                        checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]]].field_256 = -arg2
                        numCheckpoints[stor16[address(arg1)]] = uint32(numCheckpoints[stor16[address(arg1)]] + 1)
                        emit DelegateVotesChanged(0, -arg2, delegates[address(arg1)]);
                        if delegates[address(this.address)]:
                            if numCheckpoints[stor16[address(this.address)]] > 0:
                                if checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]] - 1 << 224].field_256 + arg2 < checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]] - 1 << 224].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x7342414f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                mem[499 len 13],
                                                Mask(152, -256, mem[499 len 13]) << 256
                                if numCheckpoints[stor16[address(this.address)]] <= 0:
                                    checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]]].field_0 = uint32(block.number)
                                    checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]]].field_256 = checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]] - 1 << 224].field_256 + arg2
                                    numCheckpoints[stor16[address(this.address)]] = uint32(numCheckpoints[stor16[address(this.address)]] + 1)
                                else:
                                    if checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]] - 1 << 224].field_256 += arg2
                                    else:
                                        checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]]].field_0 = uint32(block.number)
                                        checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]]].field_256 = checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]] - 1 << 224].field_256 + arg2
                                        numCheckpoints[stor16[address(this.address)]] = uint32(numCheckpoints[stor16[address(this.address)]] + 1)
                                emit DelegateVotesChanged(checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]] - 1 << 224].field_256, checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]] - 1 << 224].field_256 + arg2, delegates[address(this.address)]);
                            else:
                                if arg2 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x7342414f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                mem[499 len 13],
                                                Mask(152, -256, mem[499 len 13]) << 256
                                if numCheckpoints[stor16[address(this.address)]] <= 0:
                                    checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]]].field_0 = uint32(block.number)
                                    checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]]].field_256 = arg2
                                    numCheckpoints[stor16[address(this.address)]] = uint32(numCheckpoints[stor16[address(this.address)]] + 1)
                                else:
                                    if checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]] - 1 << 224].field_256 = arg2
                                    else:
                                        checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]]].field_0 = uint32(block.number)
                                        checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]]].field_256 = arg2
                                        numCheckpoints[stor16[address(this.address)]] = uint32(numCheckpoints[stor16[address(this.address)]] + 1)
                                emit DelegateVotesChanged(0, arg2, delegates[address(this.address)]);
                    else:
                        if checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                            checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_256 = -arg2
                            emit DelegateVotesChanged(0, -arg2, delegates[address(arg1)]);
                            if delegates[address(this.address)]:
                                if numCheckpoints[stor16[address(this.address)]] > 0:
                                    if checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]] - 1 << 224].field_256 + arg2 < checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]] - 1 << 224].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x7342414f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                    mem[435 len 13],
                                                    Mask(152, -256, mem[435 len 13]) << 256
                                    if numCheckpoints[stor16[address(this.address)]] <= 0:
                                        checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]]].field_0 = uint32(block.number)
                                        checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]]].field_256 = checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]] - 1 << 224].field_256 + arg2
                                        numCheckpoints[stor16[address(this.address)]] = uint32(numCheckpoints[stor16[address(this.address)]] + 1)
                                    else:
                                        if checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]] - 1 << 224].field_256 += arg2
                                        else:
                                            checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]]].field_0 = uint32(block.number)
                                            checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]]].field_256 = checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]] - 1 << 224].field_256 + arg2
                                            numCheckpoints[stor16[address(this.address)]] = uint32(numCheckpoints[stor16[address(this.address)]] + 1)
                                    emit DelegateVotesChanged(checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]] - 1 << 224].field_256, checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]] - 1 << 224].field_256 + arg2, delegates[address(this.address)]);
                                else:
                                    if arg2 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x7342414f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                    mem[435 len 13],
                                                    Mask(152, -256, mem[435 len 13]) << 256
                                    if numCheckpoints[stor16[address(this.address)]] <= 0:
                                        checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]]].field_0 = uint32(block.number)
                                        checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]]].field_256 = arg2
                                        numCheckpoints[stor16[address(this.address)]] = uint32(numCheckpoints[stor16[address(this.address)]] + 1)
                                    else:
                                        if checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]] - 1 << 224].field_256 = arg2
                                        else:
                                            checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]]].field_0 = uint32(block.number)
                                            checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]]].field_256 = arg2
                                            numCheckpoints[stor16[address(this.address)]] = uint32(numCheckpoints[stor16[address(this.address)]] + 1)
                                    emit DelegateVotesChanged(0, arg2, delegates[address(this.address)]);
                        else:
                            checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]]].field_0 = uint32(block.number)
                            checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]]].field_256 = -arg2
                            numCheckpoints[stor16[address(arg1)]] = uint32(numCheckpoints[stor16[address(arg1)]] + 1)
                            emit DelegateVotesChanged(0, -arg2, delegates[address(arg1)]);
                            if delegates[address(this.address)]:
                                if numCheckpoints[stor16[address(this.address)]] > 0:
                                    if checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]] - 1 << 224].field_256 + arg2 < checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]] - 1 << 224].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x7342414f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                    mem[499 len 13],
                                                    Mask(152, -256, mem[499 len 13]) << 256
                                    if numCheckpoints[stor16[address(this.address)]] <= 0:
                                        checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]]].field_0 = uint32(block.number)
                                        checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]]].field_256 = checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]] - 1 << 224].field_256 + arg2
                                        numCheckpoints[stor16[address(this.address)]] = uint32(numCheckpoints[stor16[address(this.address)]] + 1)
                                    else:
                                        if checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]] - 1 << 224].field_256 += arg2
                                        else:
                                            checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]]].field_0 = uint32(block.number)
                                            checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]]].field_256 = checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]] - 1 << 224].field_256 + arg2
                                            numCheckpoints[stor16[address(this.address)]] = uint32(numCheckpoints[stor16[address(this.address)]] + 1)
                                    emit DelegateVotesChanged(checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]] - 1 << 224].field_256, checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]] - 1 << 224].field_256 + arg2, delegates[address(this.address)]);
                                else:
                                    if arg2 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x7342414f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                    mem[499 len 13],
                                                    Mask(152, -256, mem[499 len 13]) << 256
                                    if numCheckpoints[stor16[address(this.address)]] <= 0:
                                        checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]]].field_0 = uint32(block.number)
                                        checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]]].field_256 = arg2
                                        numCheckpoints[stor16[address(this.address)]] = uint32(numCheckpoints[stor16[address(this.address)]] + 1)
                                    else:
                                        if checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]] - 1 << 224].field_256 = arg2
                                        else:
                                            checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]]].field_0 = uint32(block.number)
                                            checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]]].field_256 = arg2
                                            numCheckpoints[stor16[address(this.address)]] = uint32(numCheckpoints[stor16[address(this.address)]] + 1)
                                    emit DelegateVotesChanged(0, arg2, delegates[address(this.address)]);
    if lockOf[address(arg1)] + arg2 < lockOf[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    lockOf[address(arg1)] += arg2
    if lockedSupply + arg2 < lockedSupply:
        revert with 0, 'SafeMath: addition overflow'
    lockedSupply += arg2
    if lastUnlockBlock[address(arg1)] < lockFromBlock:
        lastUnlockBlock[address(arg1)] = lockFromBlock
    emit Lock(arg2, arg1);
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                    mem[201 len 27]
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[199 len 29]
    if not arg1:
        if circulatingSupply + arg3 < circulatingSupply:
            revert with 0, 'SafeMath: addition overflow'
        if circulatingSupply + arg3 > cap:
            revert with 0, 'ERC20Capped: cap exceeded'
    if arg3 > balanceOf[address(arg1)]:
        revert with 0, 
                    32,
                    38,
                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                    mem[166 len 26],
                    mem[218 len 6]
    balanceOf[address(arg1)] -= arg3
    if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    if delegates[address(arg1)] == delegates[address(arg2)]:
        if arg3 > allowance[address(arg1)][address(msg.sender)]:
            revert with 0, 
                        32,
                        40,
                        0x7745524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                        mem[264 len 24],
                        mem[312 len 8]
        if not arg1:
            revert with 0, 32, 36, 0x6545524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[392 len 28]
        if not msg.sender:
            revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
    else:
        if arg3 <= 0:
            if not arg1:
                revert with 0, 32, 36, 0x6545524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[392 len 28]
            if not msg.sender:
                revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
        else:
            if not delegates[address(arg1)]:
                if not delegates[address(arg2)]:
                    if arg3 > allowance[address(arg1)][address(msg.sender)]:
                        revert with 0, 
                                    32,
                                    40,
                                    0x7745524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                    mem[264 len 24],
                                    mem[312 len 8]
                    if not arg1:
                        revert with 0, 32, 36, 0x6545524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[392 len 28]
                    if not msg.sender:
                        revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
                else:
                    if numCheckpoints[stor16[address(arg2)]] > 0:
                        if checkpoints[stor16[address(arg2)]][stor18[stor16[address(arg2)]] - 1 << 224].field_256 + arg3 < checkpoints[stor16[address(arg2)]][stor18[stor16[address(arg2)]] - 1 << 224].field_256:
                            revert with 0, 'SafeMath: addition overflow'
                        if block.number >= 4294967296:
                            revert with 0, 
                                        32,
                                        51,
                                        0x7342414f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                        mem[275 len 13],
                                        Mask(152, -256, mem[275 len 13]) << 256
                        if numCheckpoints[stor16[address(arg2)]] <= 0:
                            checkpoints[stor16[address(arg2)]][stor18[stor16[address(arg2)]]].field_0 = uint32(block.number)
                            checkpoints[stor16[address(arg2)]][stor18[stor16[address(arg2)]]].field_256 = checkpoints[stor16[address(arg2)]][stor18[stor16[address(arg2)]] - 1 << 224].field_256 + arg3
                            numCheckpoints[stor16[address(arg2)]] = uint32(numCheckpoints[stor16[address(arg2)]] + 1)
                            emit DelegateVotesChanged(checkpoints[stor16[address(arg2)]][stor18[stor16[address(arg2)]] - 1 << 224].field_256, checkpoints[stor16[address(arg2)]][stor18[stor16[address(arg2)]] - 1 << 224].field_256 + arg3, delegates[address(arg2)]);
                            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                revert with 0, 
                                            32,
                                            40,
                                            0x7745524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                            mem[424 len 24],
                                            mem[472 len 8]
                            if not arg1:
                                revert with 0, 32, 36, 0x6545524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[552 len 28]
                            if not msg.sender:
                                revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[550 len 30]
                        else:
                            if checkpoints[stor16[address(arg2)]][stor18[stor16[address(arg2)]] - 1 << 224].field_0 == uint32(block.number):
                                checkpoints[stor16[address(arg2)]][stor18[stor16[address(arg2)]] - 1 << 224].field_256 += arg3
                                emit DelegateVotesChanged(checkpoints[stor16[address(arg2)]][stor18[stor16[address(arg2)]] - 1 << 224].field_256, checkpoints[stor16[address(arg2)]][stor18[stor16[address(arg2)]] - 1 << 224].field_256 + arg3, delegates[address(arg2)]);
                                if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                    revert with 0, 
                                                32,
                                                40,
                                                0x7745524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                mem[360 len 24],
                                                mem[408 len 8]
                                if not arg1:
                                    revert with 0, 32, 36, 0x6545524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[488 len 28]
                                if not msg.sender:
                                    revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[486 len 30]
                            else:
                                checkpoints[stor16[address(arg2)]][stor18[stor16[address(arg2)]]].field_0 = uint32(block.number)
                                checkpoints[stor16[address(arg2)]][stor18[stor16[address(arg2)]]].field_256 = checkpoints[stor16[address(arg2)]][stor18[stor16[address(arg2)]] - 1 << 224].field_256 + arg3
                                numCheckpoints[stor16[address(arg2)]] = uint32(numCheckpoints[stor16[address(arg2)]] + 1)
                                emit DelegateVotesChanged(checkpoints[stor16[address(arg2)]][stor18[stor16[address(arg2)]] - 1 << 224].field_256, checkpoints[stor16[address(arg2)]][stor18[stor16[address(arg2)]] - 1 << 224].field_256 + arg3, delegates[address(arg2)]);
                                if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                    revert with 0, 
                                                32,
                                                40,
                                                0x7745524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                mem[424 len 24],
                                                mem[472 len 8]
                                if not arg1:
                                    revert with 0, 32, 36, 0x6545524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[552 len 28]
                                if not msg.sender:
                                    revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[550 len 30]
                    else:
                        if arg3 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if block.number >= 4294967296:
                            revert with 0, 
                                        32,
                                        51,
                                        0x7342414f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                        mem[275 len 13],
                                        Mask(152, -256, mem[275 len 13]) << 256
                        if numCheckpoints[stor16[address(arg2)]] <= 0:
                            checkpoints[stor16[address(arg2)]][stor18[stor16[address(arg2)]]].field_0 = uint32(block.number)
                            checkpoints[stor16[address(arg2)]][stor18[stor16[address(arg2)]]].field_256 = arg3
                            numCheckpoints[stor16[address(arg2)]] = uint32(numCheckpoints[stor16[address(arg2)]] + 1)
                            emit DelegateVotesChanged(0, arg3, delegates[address(arg2)]);
                            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                revert with 0, 
                                            32,
                                            40,
                                            0x7745524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                            mem[424 len 24],
                                            mem[472 len 8]
                            if not arg1:
                                revert with 0, 32, 36, 0x6545524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[552 len 28]
                            if not msg.sender:
                                revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[550 len 30]
                        else:
                            if checkpoints[stor16[address(arg2)]][stor18[stor16[address(arg2)]] - 1 << 224].field_0 == uint32(block.number):
                                checkpoints[stor16[address(arg2)]][stor18[stor16[address(arg2)]] - 1 << 224].field_256 = arg3
                                emit DelegateVotesChanged(0, arg3, delegates[address(arg2)]);
                                if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                    revert with 0, 
                                                32,
                                                40,
                                                0x7745524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                mem[360 len 24],
                                                mem[408 len 8]
                                if not arg1:
                                    revert with 0, 32, 36, 0x6545524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[488 len 28]
                                if not msg.sender:
                                    revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[486 len 30]
                            else:
                                checkpoints[stor16[address(arg2)]][stor18[stor16[address(arg2)]]].field_0 = uint32(block.number)
                                checkpoints[stor16[address(arg2)]][stor18[stor16[address(arg2)]]].field_256 = arg3
                                numCheckpoints[stor16[address(arg2)]] = uint32(numCheckpoints[stor16[address(arg2)]] + 1)
                                emit DelegateVotesChanged(0, arg3, delegates[address(arg2)]);
                                if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                    revert with 0, 
                                                32,
                                                40,
                                                0x7745524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                mem[424 len 24],
                                                mem[472 len 8]
                                if not arg1:
                                    revert with 0, 32, 36, 0x6545524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[552 len 28]
                                if not msg.sender:
                                    revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[550 len 30]
            else:
                if numCheckpoints[stor16[address(arg1)]] > 0:
                    if arg3 > checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_256:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if block.number >= 4294967296:
                        revert with 0, 
                                    32,
                                    51,
                                    0x7342414f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                    mem[339 len 13],
                                    Mask(152, -256, mem[339 len 13]) << 256
                    if numCheckpoints[stor16[address(arg1)]] <= 0:
                        checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]]].field_0 = uint32(block.number)
                        checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]]].field_256 = checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_256 - arg3
                        numCheckpoints[stor16[address(arg1)]] = uint32(numCheckpoints[stor16[address(arg1)]] + 1)
                        emit DelegateVotesChanged(checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_256, checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_256 - arg3, delegates[address(arg1)]);
                        if not delegates[address(arg2)]:
                            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                revert with 0, 
                                            32,
                                            40,
                                            0x7745524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                            mem[488 len 24],
                                            mem[536 len 8]
                            if not arg1:
                                revert with 0, 32, 36, 0x6545524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[616 len 28]
                            if not msg.sender:
                                revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[614 len 30]
                        else:
                            if numCheckpoints[stor16[address(arg2)]] > 0:
                                if checkpoints[stor16[address(arg2)]][stor18[stor16[address(arg2)]] - 1 << 224].field_256 + arg3 < checkpoints[stor16[address(arg2)]][stor18[stor16[address(arg2)]] - 1 << 224].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x7342414f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                mem[499 len 13],
                                                Mask(152, -256, mem[499 len 13]) << 256
                                if numCheckpoints[stor16[address(arg2)]] <= 0:
                                    checkpoints[stor16[address(arg2)]][stor18[stor16[address(arg2)]]].field_0 = uint32(block.number)
                                    checkpoints[stor16[address(arg2)]][stor18[stor16[address(arg2)]]].field_256 = checkpoints[stor16[address(arg2)]][stor18[stor16[address(arg2)]] - 1 << 224].field_256 + arg3
                                    numCheckpoints[stor16[address(arg2)]] = uint32(numCheckpoints[stor16[address(arg2)]] + 1)
                                    emit DelegateVotesChanged(checkpoints[stor16[address(arg2)]][stor18[stor16[address(arg2)]] - 1 << 224].field_256, checkpoints[stor16[address(arg2)]][stor18[stor16[address(arg2)]] - 1 << 224].field_256 + arg3, delegates[address(arg2)]);
                                    if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    40,
                                                    0x7745524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                    mem[648 len 24],
                                                    mem[696 len 8]
                                    if not arg1:
                                        revert with 0, 32, 36, 0x6545524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[776 len 28]
                                    if not msg.sender:
                                        revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[774 len 30]
                                else:
                                    if checkpoints[stor16[address(arg2)]][stor18[stor16[address(arg2)]] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[stor16[address(arg2)]][stor18[stor16[address(arg2)]] - 1 << 224].field_256 += arg3
                                        emit DelegateVotesChanged(checkpoints[stor16[address(arg2)]][stor18[stor16[address(arg2)]] - 1 << 224].field_256, checkpoints[stor16[address(arg2)]][stor18[stor16[address(arg2)]] - 1 << 224].field_256 + arg3, delegates[address(arg2)]);
                                        if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        40,
                                                        0x7745524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                        mem[584 len 24],
                                                        mem[632 len 8]
                                        if not arg1:
                                            revert with 0, 32, 36, 0x6545524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[712 len 28]
                                        if not msg.sender:
                                            revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[710 len 30]
                                    else:
                                        checkpoints[stor16[address(arg2)]][stor18[stor16[address(arg2)]]].field_0 = uint32(block.number)
                                        checkpoints[stor16[address(arg2)]][stor18[stor16[address(arg2)]]].field_256 = checkpoints[stor16[address(arg2)]][stor18[stor16[address(arg2)]] - 1 << 224].field_256 + arg3
                                        numCheckpoints[stor16[address(arg2)]] = uint32(numCheckpoints[stor16[address(arg2)]] + 1)
                                        emit DelegateVotesChanged(checkpoints[stor16[address(arg2)]][stor18[stor16[address(arg2)]] - 1 << 224].field_256, checkpoints[stor16[address(arg2)]][stor18[stor16[address(arg2)]] - 1 << 224].field_256 + arg3, delegates[address(arg2)]);
                                        if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        40,
                                                        0x7745524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                        mem[648 len 24],
                                                        mem[696 len 8]
                                        if not arg1:
                                            revert with 0, 32, 36, 0x6545524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[776 len 28]
                                        if not msg.sender:
                                            revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[774 len 30]
                            else:
                                if arg3 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x7342414f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                mem[499 len 13],
                                                Mask(152, -256, mem[499 len 13]) << 256
                                if numCheckpoints[stor16[address(arg2)]] <= 0:
                                    checkpoints[stor16[address(arg2)]][stor18[stor16[address(arg2)]]].field_0 = uint32(block.number)
                                    checkpoints[stor16[address(arg2)]][stor18[stor16[address(arg2)]]].field_256 = arg3
                                    numCheckpoints[stor16[address(arg2)]] = uint32(numCheckpoints[stor16[address(arg2)]] + 1)
                                    emit DelegateVotesChanged(0, arg3, delegates[address(arg2)]);
                                    if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    40,
                                                    0x7745524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                    mem[648 len 24],
                                                    mem[696 len 8]
                                    if not arg1:
                                        revert with 0, 32, 36, 0x6545524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[776 len 28]
                                    if not msg.sender:
                                        revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[774 len 30]
                                else:
                                    if checkpoints[stor16[address(arg2)]][stor18[stor16[address(arg2)]] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[stor16[address(arg2)]][stor18[stor16[address(arg2)]] - 1 << 224].field_256 = arg3
                                        emit DelegateVotesChanged(0, arg3, delegates[address(arg2)]);
                                        if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        40,
                                                        0x7745524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                        mem[584 len 24],
                                                        mem[632 len 8]
                                        if not arg1:
                                            revert with 0, 32, 36, 0x6545524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[712 len 28]
                                        if not msg.sender:
                                            revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[710 len 30]
                                    else:
                                        checkpoints[stor16[address(arg2)]][stor18[stor16[address(arg2)]]].field_0 = uint32(block.number)
                                        checkpoints[stor16[address(arg2)]][stor18[stor16[address(arg2)]]].field_256 = arg3
                                        numCheckpoints[stor16[address(arg2)]] = uint32(numCheckpoints[stor16[address(arg2)]] + 1)
                                        emit DelegateVotesChanged(0, arg3, delegates[address(arg2)]);
                                        if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        40,
                                                        0x7745524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                        mem[648 len 24],
                                                        mem[696 len 8]
                                        if not arg1:
                                            revert with 0, 32, 36, 0x6545524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[776 len 28]
                                        if not msg.sender:
                                            revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[774 len 30]
                    else:
                        if checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                            checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_256 -= arg3
                            emit DelegateVotesChanged(checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_256, checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_256 - arg3, delegates[address(arg1)]);
                            if not delegates[address(arg2)]:
                                if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                    revert with 0, 
                                                32,
                                                40,
                                                0x7745524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                mem[424 len 24],
                                                mem[472 len 8]
                                if not arg1:
                                    revert with 0, 32, 36, 0x6545524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[552 len 28]
                                if not msg.sender:
                                    revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[550 len 30]
                            else:
                                if numCheckpoints[stor16[address(arg2)]] > 0:
                                    if checkpoints[stor16[address(arg2)]][stor18[stor16[address(arg2)]] - 1 << 224].field_256 + arg3 < checkpoints[stor16[address(arg2)]][stor18[stor16[address(arg2)]] - 1 << 224].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x7342414f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                    mem[435 len 13],
                                                    Mask(152, -256, mem[435 len 13]) << 256
                                    if numCheckpoints[stor16[address(arg2)]] <= 0:
                                        checkpoints[stor16[address(arg2)]][stor18[stor16[address(arg2)]]].field_0 = uint32(block.number)
                                        checkpoints[stor16[address(arg2)]][stor18[stor16[address(arg2)]]].field_256 = checkpoints[stor16[address(arg2)]][stor18[stor16[address(arg2)]] - 1 << 224].field_256 + arg3
                                        numCheckpoints[stor16[address(arg2)]] = uint32(numCheckpoints[stor16[address(arg2)]] + 1)
                                        emit DelegateVotesChanged(checkpoints[stor16[address(arg2)]][stor18[stor16[address(arg2)]] - 1 << 224].field_256, checkpoints[stor16[address(arg2)]][stor18[stor16[address(arg2)]] - 1 << 224].field_256 + arg3, delegates[address(arg2)]);
                                        if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        40,
                                                        0x7745524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                        mem[584 len 24],
                                                        mem[632 len 8]
                                        if not arg1:
                                            revert with 0, 32, 36, 0x6545524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[712 len 28]
                                        if not msg.sender:
                                            revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[710 len 30]
                                    else:
                                        if checkpoints[stor16[address(arg2)]][stor18[stor16[address(arg2)]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor16[address(arg2)]][stor18[stor16[address(arg2)]] - 1 << 224].field_256 += arg3
                                            emit DelegateVotesChanged(checkpoints[stor16[address(arg2)]][stor18[stor16[address(arg2)]] - 1 << 224].field_256, checkpoints[stor16[address(arg2)]][stor18[stor16[address(arg2)]] - 1 << 224].field_256 + arg3, delegates[address(arg2)]);
                                            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                revert with 0, 
                                                            32,
                                                            40,
                                                            0x7745524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                            mem[520 len 24],
                                                            mem[568 len 8]
                                            if not arg1:
                                                revert with 0, 32, 36, 0x6545524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[648 len 28]
                                            if not msg.sender:
                                                revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[646 len 30]
                                        else:
                                            checkpoints[stor16[address(arg2)]][stor18[stor16[address(arg2)]]].field_0 = uint32(block.number)
                                            checkpoints[stor16[address(arg2)]][stor18[stor16[address(arg2)]]].field_256 = checkpoints[stor16[address(arg2)]][stor18[stor16[address(arg2)]] - 1 << 224].field_256 + arg3
                                            numCheckpoints[stor16[address(arg2)]] = uint32(numCheckpoints[stor16[address(arg2)]] + 1)
                                            emit DelegateVotesChanged(checkpoints[stor16[address(arg2)]][stor18[stor16[address(arg2)]] - 1 << 224].field_256, checkpoints[stor16[address(arg2)]][stor18[stor16[address(arg2)]] - 1 << 224].field_256 + arg3, delegates[address(arg2)]);
                                            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                revert with 0, 
                                                            32,
                                                            40,
                                                            0x7745524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                            mem[584 len 24],
                                                            mem[632 len 8]
                                            if not arg1:
                                                revert with 0, 32, 36, 0x6545524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[712 len 28]
                                            if not msg.sender:
                                                revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[710 len 30]
                                else:
                                    if arg3 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x7342414f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                    mem[435 len 13],
                                                    Mask(152, -256, mem[435 len 13]) << 256
                                    if numCheckpoints[stor16[address(arg2)]] <= 0:
                                        checkpoints[stor16[address(arg2)]][stor18[stor16[address(arg2)]]].field_0 = uint32(block.number)
                                        checkpoints[stor16[address(arg2)]][stor18[stor16[address(arg2)]]].field_256 = arg3
                                        numCheckpoints[stor16[address(arg2)]] = uint32(numCheckpoints[stor16[address(arg2)]] + 1)
                                        emit DelegateVotesChanged(0, arg3, delegates[address(arg2)]);
                                        if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        40,
                                                        0x7745524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                        mem[584 len 24],
                                                        mem[632 len 8]
                                        if not arg1:
                                            revert with 0, 32, 36, 0x6545524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[712 len 28]
                                        if not msg.sender:
                                            revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[710 len 30]
                                    else:
                                        if checkpoints[stor16[address(arg2)]][stor18[stor16[address(arg2)]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor16[address(arg2)]][stor18[stor16[address(arg2)]] - 1 << 224].field_256 = arg3
                                            emit DelegateVotesChanged(0, arg3, delegates[address(arg2)]);
                                            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                revert with 0, 
                                                            32,
                                                            40,
                                                            0x7745524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                            mem[520 len 24],
                                                            mem[568 len 8]
                                            if not arg1:
                                                revert with 0, 32, 36, 0x6545524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[648 len 28]
                                            if not msg.sender:
                                                revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[646 len 30]
                                        else:
                                            checkpoints[stor16[address(arg2)]][stor18[stor16[address(arg2)]]].field_0 = uint32(block.number)
                                            checkpoints[stor16[address(arg2)]][stor18[stor16[address(arg2)]]].field_256 = arg3
                                            numCheckpoints[stor16[address(arg2)]] = uint32(numCheckpoints[stor16[address(arg2)]] + 1)
                                            emit DelegateVotesChanged(0, arg3, delegates[address(arg2)]);
                                            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                revert with 0, 
                                                            32,
                                                            40,
                                                            0x7745524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                            mem[584 len 24],
                                                            mem[632 len 8]
                                            if not arg1:
                                                revert with 0, 32, 36, 0x6545524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[712 len 28]
                                            if not msg.sender:
                                                revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[710 len 30]
                        else:
                            checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]]].field_0 = uint32(block.number)
                            checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]]].field_256 = checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_256 - arg3
                            numCheckpoints[stor16[address(arg1)]] = uint32(numCheckpoints[stor16[address(arg1)]] + 1)
                            emit DelegateVotesChanged(checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_256, checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_256 - arg3, delegates[address(arg1)]);
                            if not delegates[address(arg2)]:
                                if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                    revert with 0, 
                                                32,
                                                40,
                                                0x7745524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                mem[488 len 24],
                                                mem[536 len 8]
                                if not arg1:
                                    revert with 0, 32, 36, 0x6545524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[616 len 28]
                                if not msg.sender:
                                    revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[614 len 30]
                            else:
                                if numCheckpoints[stor16[address(arg2)]] > 0:
                                    if checkpoints[stor16[address(arg2)]][stor18[stor16[address(arg2)]] - 1 << 224].field_256 + arg3 < checkpoints[stor16[address(arg2)]][stor18[stor16[address(arg2)]] - 1 << 224].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x7342414f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                    mem[499 len 13],
                                                    Mask(152, -256, mem[499 len 13]) << 256
                                    if numCheckpoints[stor16[address(arg2)]] <= 0:
                                        checkpoints[stor16[address(arg2)]][stor18[stor16[address(arg2)]]].field_0 = uint32(block.number)
                                        checkpoints[stor16[address(arg2)]][stor18[stor16[address(arg2)]]].field_256 = checkpoints[stor16[address(arg2)]][stor18[stor16[address(arg2)]] - 1 << 224].field_256 + arg3
                                        numCheckpoints[stor16[address(arg2)]] = uint32(numCheckpoints[stor16[address(arg2)]] + 1)
                                        emit DelegateVotesChanged(checkpoints[stor16[address(arg2)]][stor18[stor16[address(arg2)]] - 1 << 224].field_256, checkpoints[stor16[address(arg2)]][stor18[stor16[address(arg2)]] - 1 << 224].field_256 + arg3, delegates[address(arg2)]);
                                        if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        40,
                                                        0x7745524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                        mem[648 len 24],
                                                        mem[696 len 8]
                                        if not arg1:
                                            revert with 0, 32, 36, 0x6545524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[776 len 28]
                                        if not msg.sender:
                                            revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[774 len 30]
                                    else:
                                        if checkpoints[stor16[address(arg2)]][stor18[stor16[address(arg2)]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor16[address(arg2)]][stor18[stor16[address(arg2)]] - 1 << 224].field_256 += arg3
                                            emit DelegateVotesChanged(checkpoints[stor16[address(arg2)]][stor18[stor16[address(arg2)]] - 1 << 224].field_256, checkpoints[stor16[address(arg2)]][stor18[stor16[address(arg2)]] - 1 << 224].field_256 + arg3, delegates[address(arg2)]);
                                            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                revert with 0, 
                                                            32,
                                                            40,
                                                            0x7745524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                            mem[584 len 24],
                                                            mem[632 len 8]
                                            if not arg1:
                                                revert with 0, 32, 36, 0x6545524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[712 len 28]
                                            if not msg.sender:
                                                revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[710 len 30]
                                        else:
                                            checkpoints[stor16[address(arg2)]][stor18[stor16[address(arg2)]]].field_0 = uint32(block.number)
                                            checkpoints[stor16[address(arg2)]][stor18[stor16[address(arg2)]]].field_256 = checkpoints[stor16[address(arg2)]][stor18[stor16[address(arg2)]] - 1 << 224].field_256 + arg3
                                            numCheckpoints[stor16[address(arg2)]] = uint32(numCheckpoints[stor16[address(arg2)]] + 1)
                                            emit DelegateVotesChanged(checkpoints[stor16[address(arg2)]][stor18[stor16[address(arg2)]] - 1 << 224].field_256, checkpoints[stor16[address(arg2)]][stor18[stor16[address(arg2)]] - 1 << 224].field_256 + arg3, delegates[address(arg2)]);
                                            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                revert with 0, 
                                                            32,
                                                            40,
                                                            0x7745524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                            mem[648 len 24],
                                                            mem[696 len 8]
                                            if not arg1:
                                                revert with 0, 32, 36, 0x6545524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[776 len 28]
                                            if not msg.sender:
                                                revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[774 len 30]
                                else:
                                    if arg3 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x7342414f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                    mem[499 len 13],
                                                    Mask(152, -256, mem[499 len 13]) << 256
                                    if numCheckpoints[stor16[address(arg2)]] <= 0:
                                        checkpoints[stor16[address(arg2)]][stor18[stor16[address(arg2)]]].field_0 = uint32(block.number)
                                        checkpoints[stor16[address(arg2)]][stor18[stor16[address(arg2)]]].field_256 = arg3
                                        numCheckpoints[stor16[address(arg2)]] = uint32(numCheckpoints[stor16[address(arg2)]] + 1)
                                        emit DelegateVotesChanged(0, arg3, delegates[address(arg2)]);
                                        if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        40,
                                                        0x7745524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                        mem[648 len 24],
                                                        mem[696 len 8]
                                        if not arg1:
                                            revert with 0, 32, 36, 0x6545524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[776 len 28]
                                        if not msg.sender:
                                            revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[774 len 30]
                                    else:
                                        if checkpoints[stor16[address(arg2)]][stor18[stor16[address(arg2)]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor16[address(arg2)]][stor18[stor16[address(arg2)]] - 1 << 224].field_256 = arg3
                                            emit DelegateVotesChanged(0, arg3, delegates[address(arg2)]);
                                            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                revert with 0, 
                                                            32,
                                                            40,
                                                            0x7745524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                            mem[584 len 24],
                                                            mem[632 len 8]
                                            if not arg1:
                                                revert with 0, 32, 36, 0x6545524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[712 len 28]
                                            if not msg.sender:
                                                revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[710 len 30]
                                        else:
                                            checkpoints[stor16[address(arg2)]][stor18[stor16[address(arg2)]]].field_0 = uint32(block.number)
                                            checkpoints[stor16[address(arg2)]][stor18[stor16[address(arg2)]]].field_256 = arg3
                                            numCheckpoints[stor16[address(arg2)]] = uint32(numCheckpoints[stor16[address(arg2)]] + 1)
                                            emit DelegateVotesChanged(0, arg3, delegates[address(arg2)]);
                                            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                revert with 0, 
                                                            32,
                                                            40,
                                                            0x7745524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                            mem[648 len 24],
                                                            mem[696 len 8]
                                            if not arg1:
                                                revert with 0, 32, 36, 0x6545524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[776 len 28]
                                            if not msg.sender:
                                                revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[774 len 30]
                else:
                    if arg3 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if block.number >= 4294967296:
                        revert with 0, 
                                    32,
                                    51,
                                    0x7342414f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                    mem[339 len 13],
                                    Mask(152, -256, mem[339 len 13]) << 256
                    if numCheckpoints[stor16[address(arg1)]] <= 0:
                        checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]]].field_0 = uint32(block.number)
                        checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]]].field_256 = -arg3
                        numCheckpoints[stor16[address(arg1)]] = uint32(numCheckpoints[stor16[address(arg1)]] + 1)
                        emit DelegateVotesChanged(0, -arg3, delegates[address(arg1)]);
                        if not delegates[address(arg2)]:
                            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                revert with 0, 
                                            32,
                                            40,
                                            0x7745524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                            mem[488 len 24],
                                            mem[536 len 8]
                            if not arg1:
                                revert with 0, 32, 36, 0x6545524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[616 len 28]
                            if not msg.sender:
                                revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[614 len 30]
                        else:
                            if numCheckpoints[stor16[address(arg2)]] > 0:
                                if checkpoints[stor16[address(arg2)]][stor18[stor16[address(arg2)]] - 1 << 224].field_256 + arg3 < checkpoints[stor16[address(arg2)]][stor18[stor16[address(arg2)]] - 1 << 224].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x7342414f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                mem[499 len 13],
                                                Mask(152, -256, mem[499 len 13]) << 256
                                if numCheckpoints[stor16[address(arg2)]] <= 0:
                                    checkpoints[stor16[address(arg2)]][stor18[stor16[address(arg2)]]].field_0 = uint32(block.number)
                                    checkpoints[stor16[address(arg2)]][stor18[stor16[address(arg2)]]].field_256 = checkpoints[stor16[address(arg2)]][stor18[stor16[address(arg2)]] - 1 << 224].field_256 + arg3
                                    numCheckpoints[stor16[address(arg2)]] = uint32(numCheckpoints[stor16[address(arg2)]] + 1)
                                    emit DelegateVotesChanged(checkpoints[stor16[address(arg2)]][stor18[stor16[address(arg2)]] - 1 << 224].field_256, checkpoints[stor16[address(arg2)]][stor18[stor16[address(arg2)]] - 1 << 224].field_256 + arg3, delegates[address(arg2)]);
                                    if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    40,
                                                    0x7745524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                    mem[648 len 24],
                                                    mem[696 len 8]
                                    if not arg1:
                                        revert with 0, 32, 36, 0x6545524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[776 len 28]
                                    if not msg.sender:
                                        revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[774 len 30]
                                else:
                                    if checkpoints[stor16[address(arg2)]][stor18[stor16[address(arg2)]] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[stor16[address(arg2)]][stor18[stor16[address(arg2)]] - 1 << 224].field_256 += arg3
                                        emit DelegateVotesChanged(checkpoints[stor16[address(arg2)]][stor18[stor16[address(arg2)]] - 1 << 224].field_256, checkpoints[stor16[address(arg2)]][stor18[stor16[address(arg2)]] - 1 << 224].field_256 + arg3, delegates[address(arg2)]);
                                        if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        40,
                                                        0x7745524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                        mem[584 len 24],
                                                        mem[632 len 8]
                                        if not arg1:
                                            revert with 0, 32, 36, 0x6545524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[712 len 28]
                                        if not msg.sender:
                                            revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[710 len 30]
                                    else:
                                        checkpoints[stor16[address(arg2)]][stor18[stor16[address(arg2)]]].field_0 = uint32(block.number)
                                        checkpoints[stor16[address(arg2)]][stor18[stor16[address(arg2)]]].field_256 = checkpoints[stor16[address(arg2)]][stor18[stor16[address(arg2)]] - 1 << 224].field_256 + arg3
                                        numCheckpoints[stor16[address(arg2)]] = uint32(numCheckpoints[stor16[address(arg2)]] + 1)
                                        emit DelegateVotesChanged(checkpoints[stor16[address(arg2)]][stor18[stor16[address(arg2)]] - 1 << 224].field_256, checkpoints[stor16[address(arg2)]][stor18[stor16[address(arg2)]] - 1 << 224].field_256 + arg3, delegates[address(arg2)]);
                                        if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        40,
                                                        0x7745524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                        mem[648 len 24],
                                                        mem[696 len 8]
                                        if not arg1:
                                            revert with 0, 32, 36, 0x6545524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[776 len 28]
                                        if not msg.sender:
                                            revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[774 len 30]
                            else:
                                if arg3 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x7342414f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                mem[499 len 13],
                                                Mask(152, -256, mem[499 len 13]) << 256
                                if numCheckpoints[stor16[address(arg2)]] <= 0:
                                    checkpoints[stor16[address(arg2)]][stor18[stor16[address(arg2)]]].field_0 = uint32(block.number)
                                    checkpoints[stor16[address(arg2)]][stor18[stor16[address(arg2)]]].field_256 = arg3
                                    numCheckpoints[stor16[address(arg2)]] = uint32(numCheckpoints[stor16[address(arg2)]] + 1)
                                    emit DelegateVotesChanged(0, arg3, delegates[address(arg2)]);
                                    if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    40,
                                                    0x7745524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                    mem[648 len 24],
                                                    mem[696 len 8]
                                    if not arg1:
                                        revert with 0, 32, 36, 0x6545524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[776 len 28]
                                    if not msg.sender:
                                        revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[774 len 30]
                                else:
                                    if checkpoints[stor16[address(arg2)]][stor18[stor16[address(arg2)]] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[stor16[address(arg2)]][stor18[stor16[address(arg2)]] - 1 << 224].field_256 = arg3
                                        emit DelegateVotesChanged(0, arg3, delegates[address(arg2)]);
                                        if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        40,
                                                        0x7745524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                        mem[584 len 24],
                                                        mem[632 len 8]
                                        if not arg1:
                                            revert with 0, 32, 36, 0x6545524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[712 len 28]
                                        if not msg.sender:
                                            revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[710 len 30]
                                    else:
                                        checkpoints[stor16[address(arg2)]][stor18[stor16[address(arg2)]]].field_0 = uint32(block.number)
                                        checkpoints[stor16[address(arg2)]][stor18[stor16[address(arg2)]]].field_256 = arg3
                                        numCheckpoints[stor16[address(arg2)]] = uint32(numCheckpoints[stor16[address(arg2)]] + 1)
                                        emit DelegateVotesChanged(0, arg3, delegates[address(arg2)]);
                                        if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        40,
                                                        0x7745524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                        mem[648 len 24],
                                                        mem[696 len 8]
                                        if not arg1:
                                            revert with 0, 32, 36, 0x6545524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[776 len 28]
                                        if not msg.sender:
                                            revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[774 len 30]
                    else:
                        if checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                            checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_256 = -arg3
                            emit DelegateVotesChanged(0, -arg3, delegates[address(arg1)]);
                            if not delegates[address(arg2)]:
                                if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                    revert with 0, 
                                                32,
                                                40,
                                                0x7745524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                mem[424 len 24],
                                                mem[472 len 8]
                                if not arg1:
                                    revert with 0, 32, 36, 0x6545524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[552 len 28]
                                if not msg.sender:
                                    revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[550 len 30]
                            else:
                                if numCheckpoints[stor16[address(arg2)]] > 0:
                                    if checkpoints[stor16[address(arg2)]][stor18[stor16[address(arg2)]] - 1 << 224].field_256 + arg3 < checkpoints[stor16[address(arg2)]][stor18[stor16[address(arg2)]] - 1 << 224].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x7342414f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                    mem[435 len 13],
                                                    Mask(152, -256, mem[435 len 13]) << 256
                                    if numCheckpoints[stor16[address(arg2)]] <= 0:
                                        checkpoints[stor16[address(arg2)]][stor18[stor16[address(arg2)]]].field_0 = uint32(block.number)
                                        checkpoints[stor16[address(arg2)]][stor18[stor16[address(arg2)]]].field_256 = checkpoints[stor16[address(arg2)]][stor18[stor16[address(arg2)]] - 1 << 224].field_256 + arg3
                                        numCheckpoints[stor16[address(arg2)]] = uint32(numCheckpoints[stor16[address(arg2)]] + 1)
                                        emit DelegateVotesChanged(checkpoints[stor16[address(arg2)]][stor18[stor16[address(arg2)]] - 1 << 224].field_256, checkpoints[stor16[address(arg2)]][stor18[stor16[address(arg2)]] - 1 << 224].field_256 + arg3, delegates[address(arg2)]);
                                        if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        40,
                                                        0x7745524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                        mem[584 len 24],
                                                        mem[632 len 8]
                                        if not arg1:
                                            revert with 0, 32, 36, 0x6545524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[712 len 28]
                                        if not msg.sender:
                                            revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[710 len 30]
                                    else:
                                        if checkpoints[stor16[address(arg2)]][stor18[stor16[address(arg2)]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor16[address(arg2)]][stor18[stor16[address(arg2)]] - 1 << 224].field_256 += arg3
                                            emit DelegateVotesChanged(checkpoints[stor16[address(arg2)]][stor18[stor16[address(arg2)]] - 1 << 224].field_256, checkpoints[stor16[address(arg2)]][stor18[stor16[address(arg2)]] - 1 << 224].field_256 + arg3, delegates[address(arg2)]);
                                            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                revert with 0, 
                                                            32,
                                                            40,
                                                            0x7745524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                            mem[520 len 24],
                                                            mem[568 len 8]
                                            if not arg1:
                                                revert with 0, 32, 36, 0x6545524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[648 len 28]
                                            if not msg.sender:
                                                revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[646 len 30]
                                        else:
                                            checkpoints[stor16[address(arg2)]][stor18[stor16[address(arg2)]]].field_0 = uint32(block.number)
                                            checkpoints[stor16[address(arg2)]][stor18[stor16[address(arg2)]]].field_256 = checkpoints[stor16[address(arg2)]][stor18[stor16[address(arg2)]] - 1 << 224].field_256 + arg3
                                            numCheckpoints[stor16[address(arg2)]] = uint32(numCheckpoints[stor16[address(arg2)]] + 1)
                                            emit DelegateVotesChanged(checkpoints[stor16[address(arg2)]][stor18[stor16[address(arg2)]] - 1 << 224].field_256, checkpoints[stor16[address(arg2)]][stor18[stor16[address(arg2)]] - 1 << 224].field_256 + arg3, delegates[address(arg2)]);
                                            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                revert with 0, 
                                                            32,
                                                            40,
                                                            0x7745524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                            mem[584 len 24],
                                                            mem[632 len 8]
                                            if not arg1:
                                                revert with 0, 32, 36, 0x6545524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[712 len 28]
                                            if not msg.sender:
                                                revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[710 len 30]
                                else:
                                    if arg3 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x7342414f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                    mem[435 len 13],
                                                    Mask(152, -256, mem[435 len 13]) << 256
                                    if numCheckpoints[stor16[address(arg2)]] <= 0:
                                        checkpoints[stor16[address(arg2)]][stor18[stor16[address(arg2)]]].field_0 = uint32(block.number)
                                        checkpoints[stor16[address(arg2)]][stor18[stor16[address(arg2)]]].field_256 = arg3
                                        numCheckpoints[stor16[address(arg2)]] = uint32(numCheckpoints[stor16[address(arg2)]] + 1)
                                        emit DelegateVotesChanged(0, arg3, delegates[address(arg2)]);
                                        if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        40,
                                                        0x7745524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                        mem[584 len 24],
                                                        mem[632 len 8]
                                        if not arg1:
                                            revert with 0, 32, 36, 0x6545524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[712 len 28]
                                        if not msg.sender:
                                            revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[710 len 30]
                                    else:
                                        if checkpoints[stor16[address(arg2)]][stor18[stor16[address(arg2)]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor16[address(arg2)]][stor18[stor16[address(arg2)]] - 1 << 224].field_256 = arg3
                                            emit DelegateVotesChanged(0, arg3, delegates[address(arg2)]);
                                            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                revert with 0, 
                                                            32,
                                                            40,
                                                            0x7745524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                            mem[520 len 24],
                                                            mem[568 len 8]
                                            if not arg1:
                                                revert with 0, 32, 36, 0x6545524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[648 len 28]
                                            if not msg.sender:
                                                revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[646 len 30]
                                        else:
                                            checkpoints[stor16[address(arg2)]][stor18[stor16[address(arg2)]]].field_0 = uint32(block.number)
                                            checkpoints[stor16[address(arg2)]][stor18[stor16[address(arg2)]]].field_256 = arg3
                                            numCheckpoints[stor16[address(arg2)]] = uint32(numCheckpoints[stor16[address(arg2)]] + 1)
                                            emit DelegateVotesChanged(0, arg3, delegates[address(arg2)]);
                                            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                revert with 0, 
                                                            32,
                                                            40,
                                                            0x7745524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                            mem[584 len 24],
                                                            mem[632 len 8]
                                            if not arg1:
                                                revert with 0, 32, 36, 0x6545524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[712 len 28]
                                            if not msg.sender:
                                                revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[710 len 30]
                        else:
                            checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]]].field_0 = uint32(block.number)
                            checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]]].field_256 = -arg3
                            numCheckpoints[stor16[address(arg1)]] = uint32(numCheckpoints[stor16[address(arg1)]] + 1)
                            emit DelegateVotesChanged(0, -arg3, delegates[address(arg1)]);
                            if not delegates[address(arg2)]:
                                if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                    revert with 0, 
                                                32,
                                                40,
                                                0x7745524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                mem[488 len 24],
                                                mem[536 len 8]
                                if not arg1:
                                    revert with 0, 32, 36, 0x6545524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[616 len 28]
                                if not msg.sender:
                                    revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[614 len 30]
                            else:
                                if numCheckpoints[stor16[address(arg2)]] > 0:
                                    if checkpoints[stor16[address(arg2)]][stor18[stor16[address(arg2)]] - 1 << 224].field_256 + arg3 < checkpoints[stor16[address(arg2)]][stor18[stor16[address(arg2)]] - 1 << 224].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x7342414f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                    mem[499 len 13],
                                                    Mask(152, -256, mem[499 len 13]) << 256
                                    if numCheckpoints[stor16[address(arg2)]] <= 0:
                                        checkpoints[stor16[address(arg2)]][stor18[stor16[address(arg2)]]].field_0 = uint32(block.number)
                                        checkpoints[stor16[address(arg2)]][stor18[stor16[address(arg2)]]].field_256 = checkpoints[stor16[address(arg2)]][stor18[stor16[address(arg2)]] - 1 << 224].field_256 + arg3
                                        numCheckpoints[stor16[address(arg2)]] = uint32(numCheckpoints[stor16[address(arg2)]] + 1)
                                        emit DelegateVotesChanged(checkpoints[stor16[address(arg2)]][stor18[stor16[address(arg2)]] - 1 << 224].field_256, checkpoints[stor16[address(arg2)]][stor18[stor16[address(arg2)]] - 1 << 224].field_256 + arg3, delegates[address(arg2)]);
                                        if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        40,
                                                        0x7745524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                        mem[648 len 24],
                                                        mem[696 len 8]
                                        if not arg1:
                                            revert with 0, 32, 36, 0x6545524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[776 len 28]
                                        if not msg.sender:
                                            revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[774 len 30]
                                    else:
                                        if checkpoints[stor16[address(arg2)]][stor18[stor16[address(arg2)]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor16[address(arg2)]][stor18[stor16[address(arg2)]] - 1 << 224].field_256 += arg3
                                            emit DelegateVotesChanged(checkpoints[stor16[address(arg2)]][stor18[stor16[address(arg2)]] - 1 << 224].field_256, checkpoints[stor16[address(arg2)]][stor18[stor16[address(arg2)]] - 1 << 224].field_256 + arg3, delegates[address(arg2)]);
                                            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                revert with 0, 
                                                            32,
                                                            40,
                                                            0x7745524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                            mem[584 len 24],
                                                            mem[632 len 8]
                                            if not arg1:
                                                revert with 0, 32, 36, 0x6545524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[712 len 28]
                                            if not msg.sender:
                                                revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[710 len 30]
                                        else:
                                            checkpoints[stor16[address(arg2)]][stor18[stor16[address(arg2)]]].field_0 = uint32(block.number)
                                            checkpoints[stor16[address(arg2)]][stor18[stor16[address(arg2)]]].field_256 = checkpoints[stor16[address(arg2)]][stor18[stor16[address(arg2)]] - 1 << 224].field_256 + arg3
                                            numCheckpoints[stor16[address(arg2)]] = uint32(numCheckpoints[stor16[address(arg2)]] + 1)
                                            emit DelegateVotesChanged(checkpoints[stor16[address(arg2)]][stor18[stor16[address(arg2)]] - 1 << 224].field_256, checkpoints[stor16[address(arg2)]][stor18[stor16[address(arg2)]] - 1 << 224].field_256 + arg3, delegates[address(arg2)]);
                                            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                revert with 0, 
                                                            32,
                                                            40,
                                                            0x7745524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                            mem[648 len 24],
                                                            mem[696 len 8]
                                            if not arg1:
                                                revert with 0, 32, 36, 0x6545524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[776 len 28]
                                            if not msg.sender:
                                                revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[774 len 30]
                                else:
                                    if arg3 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x7342414f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                    mem[499 len 13],
                                                    Mask(152, -256, mem[499 len 13]) << 256
                                    if numCheckpoints[stor16[address(arg2)]] <= 0:
                                        checkpoints[stor16[address(arg2)]][stor18[stor16[address(arg2)]]].field_0 = uint32(block.number)
                                        checkpoints[stor16[address(arg2)]][stor18[stor16[address(arg2)]]].field_256 = arg3
                                        numCheckpoints[stor16[address(arg2)]] = uint32(numCheckpoints[stor16[address(arg2)]] + 1)
                                        emit DelegateVotesChanged(0, arg3, delegates[address(arg2)]);
                                        if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        40,
                                                        0x7745524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                        mem[648 len 24],
                                                        mem[696 len 8]
                                        if not arg1:
                                            revert with 0, 32, 36, 0x6545524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[776 len 28]
                                        if not msg.sender:
                                            revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[774 len 30]
                                    else:
                                        if checkpoints[stor16[address(arg2)]][stor18[stor16[address(arg2)]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor16[address(arg2)]][stor18[stor16[address(arg2)]] - 1 << 224].field_256 = arg3
                                            emit DelegateVotesChanged(0, arg3, delegates[address(arg2)]);
                                            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                revert with 0, 
                                                            32,
                                                            40,
                                                            0x7745524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                            mem[584 len 24],
                                                            mem[632 len 8]
                                            if not arg1:
                                                revert with 0, 32, 36, 0x6545524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[712 len 28]
                                            if not msg.sender:
                                                revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[710 len 30]
                                        else:
                                            checkpoints[stor16[address(arg2)]][stor18[stor16[address(arg2)]]].field_0 = uint32(block.number)
                                            checkpoints[stor16[address(arg2)]][stor18[stor16[address(arg2)]]].field_256 = arg3
                                            numCheckpoints[stor16[address(arg2)]] = uint32(numCheckpoints[stor16[address(arg2)]] + 1)
                                            emit DelegateVotesChanged(0, arg3, delegates[address(arg2)]);
                                            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                revert with 0, 
                                                            32,
                                                            40,
                                                            0x7745524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                            mem[648 len 24],
                                                            mem[696 len 8]
                                            if not arg1:
                                                revert with 0, 32, 36, 0x6545524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[776 len 28]
                                            if not msg.sender:
                                                revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[774 len 30]
    ('bool', 'msg.sender')
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    return 1
}

function unlock() payable {
    if lockOf[address(msg.sender)] <= 0:
        revert with 0, 'ERC20: cannot unlock'
    if block.number < lockFromBlock:
        if not this.address:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        37,
                        0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                        mem[201 len 27]
        if not msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        35,
                        0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                        mem[199 len 29]
        if 0 <= balanceOf[address(this.address)]:
            if not this.address:
                if circulatingSupply < circulatingSupply:
                    revert with 0, 'SafeMath: addition overflow'
                if circulatingSupply > cap:
                    revert with 0, 'ERC20Capped: cap exceeded'
            if 0 > balanceOf[address(this.address)]:
                revert with 0, 
                            32,
                            38,
                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                            mem[166 len 26],
                            mem[218 len 6]
            if balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                revert with 0, 'SafeMath: addition overflow'
            emit Transfer(0, this.address, msg.sender);
            if 0 > lockOf[address(msg.sender)]:
                revert with 0, 'SafeMath: subtraction overflow'
            lastUnlockBlock[address(msg.sender)] = block.number
            if 0 > lockedSupply:
                revert with 0, 'SafeMath: subtraction overflow'
        else:
            if not this.address:
                if circulatingSupply + balanceOf[address(this.address)] < circulatingSupply:
                    revert with 0, 'SafeMath: addition overflow'
                if circulatingSupply + balanceOf[address(this.address)] > cap:
                    revert with 0, 'ERC20Capped: cap exceeded'
            if balanceOf[address(this.address)] > balanceOf[address(this.address)]:
                revert with 0, 
                            32,
                            38,
                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                            mem[166 len 26],
                            mem[218 len 6]
            balanceOf[address(this.address)] = 0
            if balanceOf[address(msg.sender)] + balanceOf[address(this.address)] < balanceOf[address(msg.sender)]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(msg.sender)] += balanceOf[address(this.address)]
            emit Transfer(balanceOf[address(this.address)], this.address, msg.sender);
            if delegates[address(this.address)] == delegates[address(msg.sender)]:
                if balanceOf[address(this.address)] > lockOf[address(msg.sender)]:
                    revert with 0, 'SafeMath: subtraction overflow'
            else:
                if balanceOf[address(this.address)] > 0:
                    if not delegates[address(this.address)]:
                        if delegates[address(msg.sender)]:
                            if numCheckpoints[stor16[address(msg.sender)]] > 0:
                                if checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 + balanceOf[address(this.address)] < checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x7342414f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                mem[275 len 13],
                                                Mask(152, -256, mem[275 len 13]) << 256
                                if numCheckpoints[stor16[address(msg.sender)]] <= 0:
                                    checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                    checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 + balanceOf[address(this.address)]
                                    numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                else:
                                    if checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 += balanceOf[address(this.address)]
                                    else:
                                        checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                        checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 + balanceOf[address(this.address)]
                                        numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                emit DelegateVotesChanged(checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256, checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 + balanceOf[address(this.address)], delegates[address(msg.sender)]);
                            else:
                                if balanceOf[address(this.address)] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x7342414f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                mem[275 len 13],
                                                Mask(152, -256, mem[275 len 13]) << 256
                                if numCheckpoints[stor16[address(msg.sender)]] <= 0:
                                    checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                    checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = balanceOf[address(this.address)]
                                    numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                else:
                                    if checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 = balanceOf[address(this.address)]
                                    else:
                                        checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                        checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = balanceOf[address(this.address)]
                                        numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                emit DelegateVotesChanged(0, balanceOf[address(this.address)], delegates[address(msg.sender)]);
                    else:
                        if numCheckpoints[stor16[address(this.address)]] > 0:
                            if balanceOf[address(this.address)] > checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]] - 1 << 224].field_256:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if block.number >= 4294967296:
                                revert with 0, 
                                            32,
                                            51,
                                            0x7342414f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                            mem[339 len 13],
                                            Mask(152, -256, mem[339 len 13]) << 256
                            if numCheckpoints[stor16[address(this.address)]] <= 0:
                                checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]]].field_0 = uint32(block.number)
                                checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]]].field_256 = checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]] - 1 << 224].field_256 - balanceOf[address(this.address)]
                                numCheckpoints[stor16[address(this.address)]] = uint32(numCheckpoints[stor16[address(this.address)]] + 1)
                                emit DelegateVotesChanged(checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]] - 1 << 224].field_256, checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]] - 1 << 224].field_256 - balanceOf[address(this.address)], delegates[address(this.address)]);
                                if delegates[address(msg.sender)]:
                                    if numCheckpoints[stor16[address(msg.sender)]] > 0:
                                        if checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 + balanceOf[address(this.address)] < checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        51,
                                                        0x7342414f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                        mem[499 len 13],
                                                        Mask(152, -256, mem[499 len 13]) << 256
                                        if numCheckpoints[stor16[address(msg.sender)]] <= 0:
                                            checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                            checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 + balanceOf[address(this.address)]
                                            numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                        else:
                                            if checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                                                checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 += balanceOf[address(this.address)]
                                            else:
                                                checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                                checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 + balanceOf[address(this.address)]
                                                numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                        emit DelegateVotesChanged(checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256, checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 + balanceOf[address(this.address)], delegates[address(msg.sender)]);
                                    else:
                                        if balanceOf[address(this.address)] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        51,
                                                        0x7342414f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                        mem[499 len 13],
                                                        Mask(152, -256, mem[499 len 13]) << 256
                                        if numCheckpoints[stor16[address(msg.sender)]] <= 0:
                                            checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                            checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = balanceOf[address(this.address)]
                                            numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                        else:
                                            if checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                                                checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 = balanceOf[address(this.address)]
                                            else:
                                                checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                                checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = balanceOf[address(this.address)]
                                                numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                        emit DelegateVotesChanged(0, balanceOf[address(this.address)], delegates[address(msg.sender)]);
                            else:
                                if checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]] - 1 << 224].field_0 == uint32(block.number):
                                    checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]] - 1 << 224].field_256 -= balanceOf[address(this.address)]
                                    emit DelegateVotesChanged(checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]] - 1 << 224].field_256, checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]] - 1 << 224].field_256 - balanceOf[address(this.address)], delegates[address(this.address)]);
                                    if delegates[address(msg.sender)]:
                                        if numCheckpoints[stor16[address(msg.sender)]] > 0:
                                            if checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 + balanceOf[address(this.address)] < checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            51,
                                                            0x7342414f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                            mem[435 len 13],
                                                            Mask(152, -256, mem[435 len 13]) << 256
                                            if numCheckpoints[stor16[address(msg.sender)]] <= 0:
                                                checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                                checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 + balanceOf[address(this.address)]
                                                numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                            else:
                                                if checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                                                    checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 += balanceOf[address(this.address)]
                                                else:
                                                    checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                                    checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 + balanceOf[address(this.address)]
                                                    numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                            emit DelegateVotesChanged(checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256, checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 + balanceOf[address(this.address)], delegates[address(msg.sender)]);
                                        else:
                                            if balanceOf[address(this.address)] < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            51,
                                                            0x7342414f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                            mem[435 len 13],
                                                            Mask(152, -256, mem[435 len 13]) << 256
                                            if numCheckpoints[stor16[address(msg.sender)]] <= 0:
                                                checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                                checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = balanceOf[address(this.address)]
                                                numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                            else:
                                                if checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                                                    checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 = balanceOf[address(this.address)]
                                                else:
                                                    checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                                    checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = balanceOf[address(this.address)]
                                                    numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                            emit DelegateVotesChanged(0, balanceOf[address(this.address)], delegates[address(msg.sender)]);
                                else:
                                    checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]]].field_0 = uint32(block.number)
                                    checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]]].field_256 = checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]] - 1 << 224].field_256 - balanceOf[address(this.address)]
                                    numCheckpoints[stor16[address(this.address)]] = uint32(numCheckpoints[stor16[address(this.address)]] + 1)
                                    emit DelegateVotesChanged(checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]] - 1 << 224].field_256, checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]] - 1 << 224].field_256 - balanceOf[address(this.address)], delegates[address(this.address)]);
                                    if delegates[address(msg.sender)]:
                                        if numCheckpoints[stor16[address(msg.sender)]] > 0:
                                            if checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 + balanceOf[address(this.address)] < checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            51,
                                                            0x7342414f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                            mem[499 len 13],
                                                            Mask(152, -256, mem[499 len 13]) << 256
                                            if numCheckpoints[stor16[address(msg.sender)]] <= 0:
                                                checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                                checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 + balanceOf[address(this.address)]
                                                numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                            else:
                                                if checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                                                    checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 += balanceOf[address(this.address)]
                                                else:
                                                    checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                                    checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 + balanceOf[address(this.address)]
                                                    numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                            emit DelegateVotesChanged(checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256, checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 + balanceOf[address(this.address)], delegates[address(msg.sender)]);
                                        else:
                                            if balanceOf[address(this.address)] < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            51,
                                                            0x7342414f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                            mem[499 len 13],
                                                            Mask(152, -256, mem[499 len 13]) << 256
                                            if numCheckpoints[stor16[address(msg.sender)]] <= 0:
                                                checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                                checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = balanceOf[address(this.address)]
                                                numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                            else:
                                                if checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                                                    checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 = balanceOf[address(this.address)]
                                                else:
                                                    checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                                    checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = balanceOf[address(this.address)]
                                                    numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                            emit DelegateVotesChanged(0, balanceOf[address(this.address)], delegates[address(msg.sender)]);
                        else:
                            if balanceOf[address(this.address)] > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if block.number >= 4294967296:
                                revert with 0, 
                                            32,
                                            51,
                                            0x7342414f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                            mem[339 len 13],
                                            Mask(152, -256, mem[339 len 13]) << 256
                            if numCheckpoints[stor16[address(this.address)]] <= 0:
                                checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]]].field_0 = uint32(block.number)
                                checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]]].field_256 = -balanceOf[address(this.address)]
                                numCheckpoints[stor16[address(this.address)]] = uint32(numCheckpoints[stor16[address(this.address)]] + 1)
                                emit DelegateVotesChanged(0, -balanceOf[address(this.address)], delegates[address(this.address)]);
                                if delegates[address(msg.sender)]:
                                    if numCheckpoints[stor16[address(msg.sender)]] > 0:
                                        if checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 + balanceOf[address(this.address)] < checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        51,
                                                        0x7342414f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                        mem[499 len 13],
                                                        Mask(152, -256, mem[499 len 13]) << 256
                                        if numCheckpoints[stor16[address(msg.sender)]] <= 0:
                                            checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                            checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 + balanceOf[address(this.address)]
                                            numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                        else:
                                            if checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                                                checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 += balanceOf[address(this.address)]
                                            else:
                                                checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                                checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 + balanceOf[address(this.address)]
                                                numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                        emit DelegateVotesChanged(checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256, checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 + balanceOf[address(this.address)], delegates[address(msg.sender)]);
                                    else:
                                        if balanceOf[address(this.address)] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        51,
                                                        0x7342414f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                        mem[499 len 13],
                                                        Mask(152, -256, mem[499 len 13]) << 256
                                        if numCheckpoints[stor16[address(msg.sender)]] <= 0:
                                            checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                            checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = balanceOf[address(this.address)]
                                            numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                        else:
                                            if checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                                                checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 = balanceOf[address(this.address)]
                                            else:
                                                checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                                checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = balanceOf[address(this.address)]
                                                numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                        emit DelegateVotesChanged(0, balanceOf[address(this.address)], delegates[address(msg.sender)]);
                            else:
                                if checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]] - 1 << 224].field_0 == uint32(block.number):
                                    checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]] - 1 << 224].field_256 = -balanceOf[address(this.address)]
                                    emit DelegateVotesChanged(0, -balanceOf[address(this.address)], delegates[address(this.address)]);
                                    if delegates[address(msg.sender)]:
                                        if numCheckpoints[stor16[address(msg.sender)]] > 0:
                                            if checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 + balanceOf[address(this.address)] < checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            51,
                                                            0x7342414f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                            mem[435 len 13],
                                                            Mask(152, -256, mem[435 len 13]) << 256
                                            if numCheckpoints[stor16[address(msg.sender)]] <= 0:
                                                checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                                checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 + balanceOf[address(this.address)]
                                                numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                            else:
                                                if checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                                                    checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 += balanceOf[address(this.address)]
                                                else:
                                                    checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                                    checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 + balanceOf[address(this.address)]
                                                    numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                            emit DelegateVotesChanged(checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256, checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 + balanceOf[address(this.address)], delegates[address(msg.sender)]);
                                        else:
                                            if balanceOf[address(this.address)] < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            51,
                                                            0x7342414f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                            mem[435 len 13],
                                                            Mask(152, -256, mem[435 len 13]) << 256
                                            if numCheckpoints[stor16[address(msg.sender)]] <= 0:
                                                checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                                checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = balanceOf[address(this.address)]
                                                numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                            else:
                                                if checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                                                    checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 = balanceOf[address(this.address)]
                                                else:
                                                    checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                                    checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = balanceOf[address(this.address)]
                                                    numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                            emit DelegateVotesChanged(0, balanceOf[address(this.address)], delegates[address(msg.sender)]);
                                else:
                                    checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]]].field_0 = uint32(block.number)
                                    checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]]].field_256 = -balanceOf[address(this.address)]
                                    numCheckpoints[stor16[address(this.address)]] = uint32(numCheckpoints[stor16[address(this.address)]] + 1)
                                    emit DelegateVotesChanged(0, -balanceOf[address(this.address)], delegates[address(this.address)]);
                                    if delegates[address(msg.sender)]:
                                        if numCheckpoints[stor16[address(msg.sender)]] > 0:
                                            if checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 + balanceOf[address(this.address)] < checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            51,
                                                            0x7342414f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                            mem[499 len 13],
                                                            Mask(152, -256, mem[499 len 13]) << 256
                                            if numCheckpoints[stor16[address(msg.sender)]] <= 0:
                                                checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                                checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 + balanceOf[address(this.address)]
                                                numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                            else:
                                                if checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                                                    checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 += balanceOf[address(this.address)]
                                                else:
                                                    checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                                    checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 + balanceOf[address(this.address)]
                                                    numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                            emit DelegateVotesChanged(checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256, checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 + balanceOf[address(this.address)], delegates[address(msg.sender)]);
                                        else:
                                            if balanceOf[address(this.address)] < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            51,
                                                            0x7342414f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                            mem[499 len 13],
                                                            Mask(152, -256, mem[499 len 13]) << 256
                                            if numCheckpoints[stor16[address(msg.sender)]] <= 0:
                                                checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                                checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = balanceOf[address(this.address)]
                                                numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                            else:
                                                if checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                                                    checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 = balanceOf[address(this.address)]
                                                else:
                                                    checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                                    checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = balanceOf[address(this.address)]
                                                    numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                            emit DelegateVotesChanged(0, balanceOf[address(this.address)], delegates[address(msg.sender)]);
                    if balanceOf[address(this.address)] > lockOf[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow'
            lockOf[address(msg.sender)] -= balanceOf[address(this.address)]
            lastUnlockBlock[address(msg.sender)] = block.number
            if balanceOf[address(this.address)] > lockedSupply:
                revert with 0, 'SafeMath: subtraction overflow'
            lockedSupply -= balanceOf[address(this.address)]
    else:
        if block.number >= lockToBlock:
            if not this.address:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            37,
                            0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                            mem[201 len 27]
            if not msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            35,
                            0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                            mem[199 len 29]
            if lockOf[address(msg.sender)] <= balanceOf[address(this.address)]:
                if not this.address:
                    if circulatingSupply + lockOf[address(msg.sender)] < circulatingSupply:
                        revert with 0, 'SafeMath: addition overflow'
                    if circulatingSupply + lockOf[address(msg.sender)] > cap:
                        revert with 0, 'ERC20Capped: cap exceeded'
                if lockOf[address(msg.sender)] > balanceOf[address(this.address)]:
                    revert with 0, 
                                32,
                                38,
                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                mem[166 len 26],
                                mem[218 len 6]
                balanceOf[address(this.address)] -= lockOf[address(msg.sender)]
                if balanceOf[address(msg.sender)] + lockOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(msg.sender)] += lockOf[address(msg.sender)]
                emit Transfer(lockOf[address(msg.sender)], this.address, msg.sender);
                if delegates[address(this.address)] == delegates[address(msg.sender)]:
                    if lockOf[address(msg.sender)] > lockOf[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow'
                else:
                    if lockOf[address(msg.sender)] > 0:
                        if not delegates[address(this.address)]:
                            if delegates[address(msg.sender)]:
                                if numCheckpoints[stor16[address(msg.sender)]] > 0:
                                    if checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 + lockOf[address(msg.sender)] < checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x7342414f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                    mem[275 len 13],
                                                    Mask(152, -256, mem[275 len 13]) << 256
                                    if numCheckpoints[stor16[address(msg.sender)]] <= 0:
                                        checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                        checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 + lockOf[address(msg.sender)]
                                        numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                    else:
                                        if checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 += lockOf[address(msg.sender)]
                                        else:
                                            checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                            checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 + lockOf[address(msg.sender)]
                                            numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                    emit DelegateVotesChanged(checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256, checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 + lockOf[address(msg.sender)], delegates[address(msg.sender)]);
                                else:
                                    if lockOf[address(msg.sender)] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x7342414f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                    mem[275 len 13],
                                                    Mask(152, -256, mem[275 len 13]) << 256
                                    if numCheckpoints[stor16[address(msg.sender)]] <= 0:
                                        checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                        checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = lockOf[address(msg.sender)]
                                        numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                    else:
                                        if checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 = lockOf[address(msg.sender)]
                                        else:
                                            checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                            checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = lockOf[address(msg.sender)]
                                            numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                    emit DelegateVotesChanged(0, lockOf[address(msg.sender)], delegates[address(msg.sender)]);
                        else:
                            if numCheckpoints[stor16[address(this.address)]] > 0:
                                if lockOf[address(msg.sender)] > checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]] - 1 << 224].field_256:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x7342414f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                mem[339 len 13],
                                                Mask(152, -256, mem[339 len 13]) << 256
                                if numCheckpoints[stor16[address(this.address)]] <= 0:
                                    checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]]].field_0 = uint32(block.number)
                                    checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]]].field_256 = checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]] - 1 << 224].field_256 - lockOf[address(msg.sender)]
                                    numCheckpoints[stor16[address(this.address)]] = uint32(numCheckpoints[stor16[address(this.address)]] + 1)
                                    emit DelegateVotesChanged(checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]] - 1 << 224].field_256, checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]] - 1 << 224].field_256 - lockOf[address(msg.sender)], delegates[address(this.address)]);
                                    if delegates[address(msg.sender)]:
                                        if numCheckpoints[stor16[address(msg.sender)]] > 0:
                                            if checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 + lockOf[address(msg.sender)] < checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            51,
                                                            0x7342414f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                            mem[499 len 13],
                                                            Mask(152, -256, mem[499 len 13]) << 256
                                            if numCheckpoints[stor16[address(msg.sender)]] <= 0:
                                                checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                                checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 + lockOf[address(msg.sender)]
                                                numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                            else:
                                                if checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                                                    checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 += lockOf[address(msg.sender)]
                                                else:
                                                    checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                                    checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 + lockOf[address(msg.sender)]
                                                    numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                            emit DelegateVotesChanged(checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256, checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 + lockOf[address(msg.sender)], delegates[address(msg.sender)]);
                                        else:
                                            if lockOf[address(msg.sender)] < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            51,
                                                            0x7342414f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                            mem[499 len 13],
                                                            Mask(152, -256, mem[499 len 13]) << 256
                                            if numCheckpoints[stor16[address(msg.sender)]] <= 0:
                                                checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                                checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = lockOf[address(msg.sender)]
                                                numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                            else:
                                                if checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                                                    checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 = lockOf[address(msg.sender)]
                                                else:
                                                    checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                                    checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = lockOf[address(msg.sender)]
                                                    numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                            emit DelegateVotesChanged(0, lockOf[address(msg.sender)], delegates[address(msg.sender)]);
                                else:
                                    if checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]] - 1 << 224].field_256 -= lockOf[address(msg.sender)]
                                        emit DelegateVotesChanged(checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]] - 1 << 224].field_256, checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]] - 1 << 224].field_256 - lockOf[address(msg.sender)], delegates[address(this.address)]);
                                        if delegates[address(msg.sender)]:
                                            if numCheckpoints[stor16[address(msg.sender)]] > 0:
                                                if checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 + lockOf[address(msg.sender)] < checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if block.number >= 4294967296:
                                                    revert with 0, 
                                                                32,
                                                                51,
                                                                0x7342414f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                                mem[435 len 13],
                                                                Mask(152, -256, mem[435 len 13]) << 256
                                                if numCheckpoints[stor16[address(msg.sender)]] <= 0:
                                                    checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                                    checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 + lockOf[address(msg.sender)]
                                                    numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                                else:
                                                    if checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                                                        checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 += lockOf[address(msg.sender)]
                                                    else:
                                                        checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                                        checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 + lockOf[address(msg.sender)]
                                                        numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                                emit DelegateVotesChanged(checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256, checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 + lockOf[address(msg.sender)], delegates[address(msg.sender)]);
                                            else:
                                                if lockOf[address(msg.sender)] < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if block.number >= 4294967296:
                                                    revert with 0, 
                                                                32,
                                                                51,
                                                                0x7342414f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                                mem[435 len 13],
                                                                Mask(152, -256, mem[435 len 13]) << 256
                                                if numCheckpoints[stor16[address(msg.sender)]] <= 0:
                                                    checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                                    checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = lockOf[address(msg.sender)]
                                                    numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                                else:
                                                    if checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                                                        checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 = lockOf[address(msg.sender)]
                                                    else:
                                                        checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                                        checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = lockOf[address(msg.sender)]
                                                        numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                                emit DelegateVotesChanged(0, lockOf[address(msg.sender)], delegates[address(msg.sender)]);
                                    else:
                                        checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]]].field_0 = uint32(block.number)
                                        checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]]].field_256 = checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]] - 1 << 224].field_256 - lockOf[address(msg.sender)]
                                        numCheckpoints[stor16[address(this.address)]] = uint32(numCheckpoints[stor16[address(this.address)]] + 1)
                                        emit DelegateVotesChanged(checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]] - 1 << 224].field_256, checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]] - 1 << 224].field_256 - lockOf[address(msg.sender)], delegates[address(this.address)]);
                                        if delegates[address(msg.sender)]:
                                            if numCheckpoints[stor16[address(msg.sender)]] > 0:
                                                if checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 + lockOf[address(msg.sender)] < checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if block.number >= 4294967296:
                                                    revert with 0, 
                                                                32,
                                                                51,
                                                                0x7342414f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                                mem[499 len 13],
                                                                Mask(152, -256, mem[499 len 13]) << 256
                                                if numCheckpoints[stor16[address(msg.sender)]] <= 0:
                                                    checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                                    checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 + lockOf[address(msg.sender)]
                                                    numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                                else:
                                                    if checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                                                        checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 += lockOf[address(msg.sender)]
                                                    else:
                                                        checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                                        checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 + lockOf[address(msg.sender)]
                                                        numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                                emit DelegateVotesChanged(checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256, checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 + lockOf[address(msg.sender)], delegates[address(msg.sender)]);
                                            else:
                                                if lockOf[address(msg.sender)] < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if block.number >= 4294967296:
                                                    revert with 0, 
                                                                32,
                                                                51,
                                                                0x7342414f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                                mem[499 len 13],
                                                                Mask(152, -256, mem[499 len 13]) << 256
                                                if numCheckpoints[stor16[address(msg.sender)]] <= 0:
                                                    checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                                    checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = lockOf[address(msg.sender)]
                                                    numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                                else:
                                                    if checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                                                        checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 = lockOf[address(msg.sender)]
                                                    else:
                                                        checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                                        checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = lockOf[address(msg.sender)]
                                                        numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                                emit DelegateVotesChanged(0, lockOf[address(msg.sender)], delegates[address(msg.sender)]);
                            else:
                                if lockOf[address(msg.sender)] > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x7342414f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                mem[339 len 13],
                                                Mask(152, -256, mem[339 len 13]) << 256
                                if numCheckpoints[stor16[address(this.address)]] <= 0:
                                    checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]]].field_0 = uint32(block.number)
                                    checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]]].field_256 = -lockOf[address(msg.sender)]
                                    numCheckpoints[stor16[address(this.address)]] = uint32(numCheckpoints[stor16[address(this.address)]] + 1)
                                    emit DelegateVotesChanged(0, -lockOf[address(msg.sender)], delegates[address(this.address)]);
                                    if delegates[address(msg.sender)]:
                                        if numCheckpoints[stor16[address(msg.sender)]] > 0:
                                            if checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 + lockOf[address(msg.sender)] < checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            51,
                                                            0x7342414f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                            mem[499 len 13],
                                                            Mask(152, -256, mem[499 len 13]) << 256
                                            if numCheckpoints[stor16[address(msg.sender)]] <= 0:
                                                checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                                checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 + lockOf[address(msg.sender)]
                                                numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                            else:
                                                if checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                                                    checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 += lockOf[address(msg.sender)]
                                                else:
                                                    checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                                    checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 + lockOf[address(msg.sender)]
                                                    numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                            emit DelegateVotesChanged(checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256, checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 + lockOf[address(msg.sender)], delegates[address(msg.sender)]);
                                        else:
                                            if lockOf[address(msg.sender)] < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            51,
                                                            0x7342414f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                            mem[499 len 13],
                                                            Mask(152, -256, mem[499 len 13]) << 256
                                            if numCheckpoints[stor16[address(msg.sender)]] <= 0:
                                                checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                                checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = lockOf[address(msg.sender)]
                                                numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                            else:
                                                if checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                                                    checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 = lockOf[address(msg.sender)]
                                                else:
                                                    checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                                    checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = lockOf[address(msg.sender)]
                                                    numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                            emit DelegateVotesChanged(0, lockOf[address(msg.sender)], delegates[address(msg.sender)]);
                                else:
                                    if checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]] - 1 << 224].field_256 = -lockOf[address(msg.sender)]
                                        emit DelegateVotesChanged(0, -lockOf[address(msg.sender)], delegates[address(this.address)]);
                                        if delegates[address(msg.sender)]:
                                            if numCheckpoints[stor16[address(msg.sender)]] > 0:
                                                if checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 + lockOf[address(msg.sender)] < checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if block.number >= 4294967296:
                                                    revert with 0, 
                                                                32,
                                                                51,
                                                                0x7342414f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                                mem[435 len 13],
                                                                Mask(152, -256, mem[435 len 13]) << 256
                                                if numCheckpoints[stor16[address(msg.sender)]] <= 0:
                                                    checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                                    checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 + lockOf[address(msg.sender)]
                                                    numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                                else:
                                                    if checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                                                        checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 += lockOf[address(msg.sender)]
                                                    else:
                                                        checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                                        checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 + lockOf[address(msg.sender)]
                                                        numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                                emit DelegateVotesChanged(checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256, checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 + lockOf[address(msg.sender)], delegates[address(msg.sender)]);
                                            else:
                                                if lockOf[address(msg.sender)] < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if block.number >= 4294967296:
                                                    revert with 0, 
                                                                32,
                                                                51,
                                                                0x7342414f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                                mem[435 len 13],
                                                                Mask(152, -256, mem[435 len 13]) << 256
                                                if numCheckpoints[stor16[address(msg.sender)]] <= 0:
                                                    checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                                    checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = lockOf[address(msg.sender)]
                                                    numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                                else:
                                                    if checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                                                        checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 = lockOf[address(msg.sender)]
                                                    else:
                                                        checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                                        checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = lockOf[address(msg.sender)]
                                                        numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                                emit DelegateVotesChanged(0, lockOf[address(msg.sender)], delegates[address(msg.sender)]);
                                    else:
                                        checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]]].field_0 = uint32(block.number)
                                        checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]]].field_256 = -lockOf[address(msg.sender)]
                                        numCheckpoints[stor16[address(this.address)]] = uint32(numCheckpoints[stor16[address(this.address)]] + 1)
                                        emit DelegateVotesChanged(0, -lockOf[address(msg.sender)], delegates[address(this.address)]);
                                        if delegates[address(msg.sender)]:
                                            if numCheckpoints[stor16[address(msg.sender)]] > 0:
                                                if checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 + lockOf[address(msg.sender)] < checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if block.number >= 4294967296:
                                                    revert with 0, 
                                                                32,
                                                                51,
                                                                0x7342414f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                                mem[499 len 13],
                                                                Mask(152, -256, mem[499 len 13]) << 256
                                                if numCheckpoints[stor16[address(msg.sender)]] <= 0:
                                                    checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                                    checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 + lockOf[address(msg.sender)]
                                                    numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                                else:
                                                    if checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                                                        checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 += lockOf[address(msg.sender)]
                                                    else:
                                                        checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                                        checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 + lockOf[address(msg.sender)]
                                                        numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                                emit DelegateVotesChanged(checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256, checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 + lockOf[address(msg.sender)], delegates[address(msg.sender)]);
                                            else:
                                                if lockOf[address(msg.sender)] < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if block.number >= 4294967296:
                                                    revert with 0, 
                                                                32,
                                                                51,
                                                                0x7342414f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                                mem[499 len 13],
                                                                Mask(152, -256, mem[499 len 13]) << 256
                                                if numCheckpoints[stor16[address(msg.sender)]] <= 0:
                                                    checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                                    checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = lockOf[address(msg.sender)]
                                                    numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                                else:
                                                    if checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                                                        checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 = lockOf[address(msg.sender)]
                                                    else:
                                                        checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                                        checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = lockOf[address(msg.sender)]
                                                        numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                                emit DelegateVotesChanged(0, lockOf[address(msg.sender)], delegates[address(msg.sender)]);
                        if lockOf[address(msg.sender)] > lockOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: subtraction overflow'
                lockOf[address(msg.sender)] = 0
                lastUnlockBlock[address(msg.sender)] = block.number
                if lockOf[address(msg.sender)] > lockedSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                lockedSupply -= lockOf[address(msg.sender)]
            else:
                if not this.address:
                    if circulatingSupply + balanceOf[address(this.address)] < circulatingSupply:
                        revert with 0, 'SafeMath: addition overflow'
                    if circulatingSupply + balanceOf[address(this.address)] > cap:
                        revert with 0, 'ERC20Capped: cap exceeded'
                if balanceOf[address(this.address)] > balanceOf[address(this.address)]:
                    revert with 0, 
                                32,
                                38,
                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                mem[166 len 26],
                                mem[218 len 6]
                balanceOf[address(this.address)] = 0
                if balanceOf[address(msg.sender)] + balanceOf[address(this.address)] < balanceOf[address(msg.sender)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(msg.sender)] += balanceOf[address(this.address)]
                emit Transfer(balanceOf[address(this.address)], this.address, msg.sender);
                if delegates[address(this.address)] == delegates[address(msg.sender)]:
                    if balanceOf[address(this.address)] > lockOf[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow'
                else:
                    if balanceOf[address(this.address)] > 0:
                        if not delegates[address(this.address)]:
                            if delegates[address(msg.sender)]:
                                if numCheckpoints[stor16[address(msg.sender)]] > 0:
                                    if checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 + balanceOf[address(this.address)] < checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x7342414f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                    mem[275 len 13],
                                                    Mask(152, -256, mem[275 len 13]) << 256
                                    if numCheckpoints[stor16[address(msg.sender)]] <= 0:
                                        checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                        checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 + balanceOf[address(this.address)]
                                        numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                    else:
                                        if checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 += balanceOf[address(this.address)]
                                        else:
                                            checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                            checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 + balanceOf[address(this.address)]
                                            numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                    emit DelegateVotesChanged(checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256, checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 + balanceOf[address(this.address)], delegates[address(msg.sender)]);
                                else:
                                    if balanceOf[address(this.address)] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x7342414f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                    mem[275 len 13],
                                                    Mask(152, -256, mem[275 len 13]) << 256
                                    if numCheckpoints[stor16[address(msg.sender)]] <= 0:
                                        checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                        checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = balanceOf[address(this.address)]
                                        numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                    else:
                                        if checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 = balanceOf[address(this.address)]
                                        else:
                                            checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                            checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = balanceOf[address(this.address)]
                                            numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                    emit DelegateVotesChanged(0, balanceOf[address(this.address)], delegates[address(msg.sender)]);
                        else:
                            if numCheckpoints[stor16[address(this.address)]] > 0:
                                if balanceOf[address(this.address)] > checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]] - 1 << 224].field_256:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x7342414f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                mem[339 len 13],
                                                Mask(152, -256, mem[339 len 13]) << 256
                                if numCheckpoints[stor16[address(this.address)]] <= 0:
                                    checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]]].field_0 = uint32(block.number)
                                    checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]]].field_256 = checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]] - 1 << 224].field_256 - balanceOf[address(this.address)]
                                    numCheckpoints[stor16[address(this.address)]] = uint32(numCheckpoints[stor16[address(this.address)]] + 1)
                                    emit DelegateVotesChanged(checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]] - 1 << 224].field_256, checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]] - 1 << 224].field_256 - balanceOf[address(this.address)], delegates[address(this.address)]);
                                    if delegates[address(msg.sender)]:
                                        if numCheckpoints[stor16[address(msg.sender)]] > 0:
                                            if checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 + balanceOf[address(this.address)] < checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            51,
                                                            0x7342414f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                            mem[499 len 13],
                                                            Mask(152, -256, mem[499 len 13]) << 256
                                            if numCheckpoints[stor16[address(msg.sender)]] <= 0:
                                                checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                                checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 + balanceOf[address(this.address)]
                                                numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                            else:
                                                if checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                                                    checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 += balanceOf[address(this.address)]
                                                else:
                                                    checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                                    checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 + balanceOf[address(this.address)]
                                                    numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                            emit DelegateVotesChanged(checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256, checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 + balanceOf[address(this.address)], delegates[address(msg.sender)]);
                                        else:
                                            if balanceOf[address(this.address)] < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            51,
                                                            0x7342414f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                            mem[499 len 13],
                                                            Mask(152, -256, mem[499 len 13]) << 256
                                            if numCheckpoints[stor16[address(msg.sender)]] <= 0:
                                                checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                                checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = balanceOf[address(this.address)]
                                                numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                            else:
                                                if checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                                                    checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 = balanceOf[address(this.address)]
                                                else:
                                                    checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                                    checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = balanceOf[address(this.address)]
                                                    numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                            emit DelegateVotesChanged(0, balanceOf[address(this.address)], delegates[address(msg.sender)]);
                                else:
                                    if checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]] - 1 << 224].field_256 -= balanceOf[address(this.address)]
                                        emit DelegateVotesChanged(checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]] - 1 << 224].field_256, checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]] - 1 << 224].field_256 - balanceOf[address(this.address)], delegates[address(this.address)]);
                                        if delegates[address(msg.sender)]:
                                            if numCheckpoints[stor16[address(msg.sender)]] > 0:
                                                if checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 + balanceOf[address(this.address)] < checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if block.number >= 4294967296:
                                                    revert with 0, 
                                                                32,
                                                                51,
                                                                0x7342414f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                                mem[435 len 13],
                                                                Mask(152, -256, mem[435 len 13]) << 256
                                                if numCheckpoints[stor16[address(msg.sender)]] <= 0:
                                                    checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                                    checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 + balanceOf[address(this.address)]
                                                    numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                                else:
                                                    if checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                                                        checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 += balanceOf[address(this.address)]
                                                    else:
                                                        checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                                        checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 + balanceOf[address(this.address)]
                                                        numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                                emit DelegateVotesChanged(checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256, checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 + balanceOf[address(this.address)], delegates[address(msg.sender)]);
                                            else:
                                                if balanceOf[address(this.address)] < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if block.number >= 4294967296:
                                                    revert with 0, 
                                                                32,
                                                                51,
                                                                0x7342414f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                                mem[435 len 13],
                                                                Mask(152, -256, mem[435 len 13]) << 256
                                                if numCheckpoints[stor16[address(msg.sender)]] <= 0:
                                                    checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                                    checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = balanceOf[address(this.address)]
                                                    numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                                else:
                                                    if checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                                                        checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 = balanceOf[address(this.address)]
                                                    else:
                                                        checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                                        checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = balanceOf[address(this.address)]
                                                        numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                                emit DelegateVotesChanged(0, balanceOf[address(this.address)], delegates[address(msg.sender)]);
                                    else:
                                        checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]]].field_0 = uint32(block.number)
                                        checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]]].field_256 = checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]] - 1 << 224].field_256 - balanceOf[address(this.address)]
                                        numCheckpoints[stor16[address(this.address)]] = uint32(numCheckpoints[stor16[address(this.address)]] + 1)
                                        emit DelegateVotesChanged(checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]] - 1 << 224].field_256, checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]] - 1 << 224].field_256 - balanceOf[address(this.address)], delegates[address(this.address)]);
                                        if delegates[address(msg.sender)]:
                                            if numCheckpoints[stor16[address(msg.sender)]] > 0:
                                                if checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 + balanceOf[address(this.address)] < checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if block.number >= 4294967296:
                                                    revert with 0, 
                                                                32,
                                                                51,
                                                                0x7342414f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                                mem[499 len 13],
                                                                Mask(152, -256, mem[499 len 13]) << 256
                                                if numCheckpoints[stor16[address(msg.sender)]] <= 0:
                                                    checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                                    checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 + balanceOf[address(this.address)]
                                                    numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                                else:
                                                    if checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                                                        checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 += balanceOf[address(this.address)]
                                                    else:
                                                        checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                                        checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 + balanceOf[address(this.address)]
                                                        numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                                emit DelegateVotesChanged(checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256, checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 + balanceOf[address(this.address)], delegates[address(msg.sender)]);
                                            else:
                                                if balanceOf[address(this.address)] < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if block.number >= 4294967296:
                                                    revert with 0, 
                                                                32,
                                                                51,
                                                                0x7342414f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                                mem[499 len 13],
                                                                Mask(152, -256, mem[499 len 13]) << 256
                                                if numCheckpoints[stor16[address(msg.sender)]] <= 0:
                                                    checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                                    checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = balanceOf[address(this.address)]
                                                    numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                                else:
                                                    if checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                                                        checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 = balanceOf[address(this.address)]
                                                    else:
                                                        checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                                        checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = balanceOf[address(this.address)]
                                                        numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                                emit DelegateVotesChanged(0, balanceOf[address(this.address)], delegates[address(msg.sender)]);
                            else:
                                if balanceOf[address(this.address)] > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x7342414f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                mem[339 len 13],
                                                Mask(152, -256, mem[339 len 13]) << 256
                                if numCheckpoints[stor16[address(this.address)]] <= 0:
                                    checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]]].field_0 = uint32(block.number)
                                    checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]]].field_256 = -balanceOf[address(this.address)]
                                    numCheckpoints[stor16[address(this.address)]] = uint32(numCheckpoints[stor16[address(this.address)]] + 1)
                                    emit DelegateVotesChanged(0, -balanceOf[address(this.address)], delegates[address(this.address)]);
                                    if delegates[address(msg.sender)]:
                                        if numCheckpoints[stor16[address(msg.sender)]] > 0:
                                            if checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 + balanceOf[address(this.address)] < checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            51,
                                                            0x7342414f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                            mem[499 len 13],
                                                            Mask(152, -256, mem[499 len 13]) << 256
                                            if numCheckpoints[stor16[address(msg.sender)]] <= 0:
                                                checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                                checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 + balanceOf[address(this.address)]
                                                numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                            else:
                                                if checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                                                    checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 += balanceOf[address(this.address)]
                                                else:
                                                    checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                                    checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 + balanceOf[address(this.address)]
                                                    numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                            emit DelegateVotesChanged(checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256, checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 + balanceOf[address(this.address)], delegates[address(msg.sender)]);
                                        else:
                                            if balanceOf[address(this.address)] < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            51,
                                                            0x7342414f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                            mem[499 len 13],
                                                            Mask(152, -256, mem[499 len 13]) << 256
                                            if numCheckpoints[stor16[address(msg.sender)]] <= 0:
                                                checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                                checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = balanceOf[address(this.address)]
                                                numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                            else:
                                                if checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                                                    checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 = balanceOf[address(this.address)]
                                                else:
                                                    checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                                    checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = balanceOf[address(this.address)]
                                                    numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                            emit DelegateVotesChanged(0, balanceOf[address(this.address)], delegates[address(msg.sender)]);
                                else:
                                    if checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]] - 1 << 224].field_256 = -balanceOf[address(this.address)]
                                        emit DelegateVotesChanged(0, -balanceOf[address(this.address)], delegates[address(this.address)]);
                                        if delegates[address(msg.sender)]:
                                            if numCheckpoints[stor16[address(msg.sender)]] > 0:
                                                if checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 + balanceOf[address(this.address)] < checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if block.number >= 4294967296:
                                                    revert with 0, 
                                                                32,
                                                                51,
                                                                0x7342414f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                                mem[435 len 13],
                                                                Mask(152, -256, mem[435 len 13]) << 256
                                                if numCheckpoints[stor16[address(msg.sender)]] <= 0:
                                                    checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                                    checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 + balanceOf[address(this.address)]
                                                    numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                                else:
                                                    if checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                                                        checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 += balanceOf[address(this.address)]
                                                    else:
                                                        checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                                        checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 + balanceOf[address(this.address)]
                                                        numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                                emit DelegateVotesChanged(checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256, checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 + balanceOf[address(this.address)], delegates[address(msg.sender)]);
                                            else:
                                                if balanceOf[address(this.address)] < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if block.number >= 4294967296:
                                                    revert with 0, 
                                                                32,
                                                                51,
                                                                0x7342414f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                                mem[435 len 13],
                                                                Mask(152, -256, mem[435 len 13]) << 256
                                                if numCheckpoints[stor16[address(msg.sender)]] <= 0:
                                                    checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                                    checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = balanceOf[address(this.address)]
                                                    numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                                else:
                                                    if checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                                                        checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 = balanceOf[address(this.address)]
                                                    else:
                                                        checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                                        checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = balanceOf[address(this.address)]
                                                        numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                                emit DelegateVotesChanged(0, balanceOf[address(this.address)], delegates[address(msg.sender)]);
                                    else:
                                        checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]]].field_0 = uint32(block.number)
                                        checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]]].field_256 = -balanceOf[address(this.address)]
                                        numCheckpoints[stor16[address(this.address)]] = uint32(numCheckpoints[stor16[address(this.address)]] + 1)
                                        emit DelegateVotesChanged(0, -balanceOf[address(this.address)], delegates[address(this.address)]);
                                        if delegates[address(msg.sender)]:
                                            if numCheckpoints[stor16[address(msg.sender)]] > 0:
                                                if checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 + balanceOf[address(this.address)] < checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if block.number >= 4294967296:
                                                    revert with 0, 
                                                                32,
                                                                51,
                                                                0x7342414f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                                mem[499 len 13],
                                                                Mask(152, -256, mem[499 len 13]) << 256
                                                if numCheckpoints[stor16[address(msg.sender)]] <= 0:
                                                    checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                                    checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 + balanceOf[address(this.address)]
                                                    numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                                else:
                                                    if checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                                                        checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 += balanceOf[address(this.address)]
                                                    else:
                                                        checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                                        checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 + balanceOf[address(this.address)]
                                                        numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                                emit DelegateVotesChanged(checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256, checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 + balanceOf[address(this.address)], delegates[address(msg.sender)]);
                                            else:
                                                if balanceOf[address(this.address)] < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if block.number >= 4294967296:
                                                    revert with 0, 
                                                                32,
                                                                51,
                                                                0x7342414f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                                mem[499 len 13],
                                                                Mask(152, -256, mem[499 len 13]) << 256
                                                if numCheckpoints[stor16[address(msg.sender)]] <= 0:
                                                    checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                                    checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = balanceOf[address(this.address)]
                                                    numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                                else:
                                                    if checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                                                        checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 = balanceOf[address(this.address)]
                                                    else:
                                                        checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                                        checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = balanceOf[address(this.address)]
                                                        numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                                emit DelegateVotesChanged(0, balanceOf[address(this.address)], delegates[address(msg.sender)]);
                        if balanceOf[address(this.address)] > lockOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: subtraction overflow'
                lockOf[address(msg.sender)] -= balanceOf[address(this.address)]
                lastUnlockBlock[address(msg.sender)] = block.number
                if balanceOf[address(this.address)] > lockedSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                lockedSupply -= balanceOf[address(this.address)]
        else:
            if lastUnlockBlock[address(msg.sender)] > block.number:
                revert with 0, 'SafeMath: subtraction overflow'
            if lastUnlockBlock[address(msg.sender)] > lockToBlock:
                revert with 0, 'SafeMath: subtraction overflow'
            if not lockOf[address(msg.sender)]:
                if lockToBlock - lastUnlockBlock[address(msg.sender)] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require lockToBlock - lastUnlockBlock[address(msg.sender)]
                if not this.address:
                    revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[393 len 27]
                if not msg.sender:
                    revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[391 len 29]
                if 0 / lockToBlock - lastUnlockBlock[address(msg.sender)] <= balanceOf[address(this.address)]:
                    if not this.address:
                        if circulatingSupply + (0 / lockToBlock - lastUnlockBlock[address(msg.sender)]) < circulatingSupply:
                            revert with 0, 'SafeMath: addition overflow'
                        if circulatingSupply + (0 / lockToBlock - lastUnlockBlock[address(msg.sender)]) > cap:
                            revert with 0, 'ERC20Capped: cap exceeded'
                    if 0 / lockToBlock - lastUnlockBlock[address(msg.sender)] > balanceOf[address(this.address)]:
                        revert with 0, 
                                    32,
                                    38,
                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                    mem[358 len 26],
                                    mem[410 len 6]
                    balanceOf[address(this.address)] -= 0 / lockToBlock - lastUnlockBlock[address(msg.sender)]
                    if balanceOf[address(msg.sender)] + (0 / lockToBlock - lastUnlockBlock[address(msg.sender)]) < balanceOf[address(msg.sender)]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(msg.sender)] += 0 / lockToBlock - lastUnlockBlock[address(msg.sender)]
                    emit Transfer((0 / lockToBlock - lastUnlockBlock[address(msg.sender)]), this.address, msg.sender);
                    if delegates[address(this.address)] == delegates[address(msg.sender)]:
                        if 0 / lockToBlock - lastUnlockBlock[address(msg.sender)] > lockOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: subtraction overflow'
                    else:
                        if 0 / lockToBlock - lastUnlockBlock[address(msg.sender)] > 0:
                            if not delegates[address(this.address)]:
                                if delegates[address(msg.sender)]:
                                    if numCheckpoints[stor16[address(msg.sender)]] > 0:
                                        if checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 + (0 / lockToBlock - lastUnlockBlock[address(msg.sender)]) < checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        51,
                                                        0x7342414f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                        mem[467 len 13],
                                                        Mask(152, -256, mem[467 len 13]) << 256
                                        if numCheckpoints[stor16[address(msg.sender)]] <= 0:
                                            checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                            checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 + (0 / lockToBlock - lastUnlockBlock[address(msg.sender)])
                                            numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                        else:
                                            if checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                                                checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 += 0 / lockToBlock - lastUnlockBlock[address(msg.sender)]
                                            else:
                                                checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                                checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 + (0 / lockToBlock - lastUnlockBlock[address(msg.sender)])
                                                numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                        emit DelegateVotesChanged(checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256, checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 + (0 / lockToBlock - lastUnlockBlock[address(msg.sender)]), delegates[address(msg.sender)]);
                                    else:
                                        if 0 / lockToBlock - lastUnlockBlock[address(msg.sender)] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        51,
                                                        0x7342414f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                        mem[467 len 13],
                                                        Mask(152, -256, mem[467 len 13]) << 256
                                        if numCheckpoints[stor16[address(msg.sender)]] <= 0:
                                            checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                            checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = 0 / lockToBlock - lastUnlockBlock[address(msg.sender)]
                                            numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                        else:
                                            if checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                                                checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 = 0 / lockToBlock - lastUnlockBlock[address(msg.sender)]
                                            else:
                                                checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                                checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = 0 / lockToBlock - lastUnlockBlock[address(msg.sender)]
                                                numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                        emit DelegateVotesChanged(0, 0 / lockToBlock - lastUnlockBlock[address(msg.sender)], delegates[address(msg.sender)]);
                            else:
                                if numCheckpoints[stor16[address(this.address)]] > 0:
                                    if 0 / lockToBlock - lastUnlockBlock[address(msg.sender)] > checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]] - 1 << 224].field_256:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x7342414f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                    mem[531 len 13],
                                                    Mask(152, -256, mem[531 len 13]) << 256
                                    if numCheckpoints[stor16[address(this.address)]] <= 0:
                                        checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]]].field_0 = uint32(block.number)
                                        checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]]].field_256 = checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]] - 1 << 224].field_256 - (0 / lockToBlock - lastUnlockBlock[address(msg.sender)])
                                        numCheckpoints[stor16[address(this.address)]] = uint32(numCheckpoints[stor16[address(this.address)]] + 1)
                                        emit DelegateVotesChanged(checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]] - 1 << 224].field_256, checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]] - 1 << 224].field_256 - (0 / lockToBlock - lastUnlockBlock[address(msg.sender)]), delegates[address(this.address)]);
                                        if delegates[address(msg.sender)]:
                                            if numCheckpoints[stor16[address(msg.sender)]] > 0:
                                                if checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 + (0 / lockToBlock - lastUnlockBlock[address(msg.sender)]) < checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if block.number >= 4294967296:
                                                    revert with 0, 
                                                                32,
                                                                51,
                                                                0x7342414f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                                mem[691 len 13],
                                                                Mask(152, -256, mem[691 len 13]) << 256
                                                if numCheckpoints[stor16[address(msg.sender)]] <= 0:
                                                    checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                                    checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 + (0 / lockToBlock - lastUnlockBlock[address(msg.sender)])
                                                    numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                                else:
                                                    if checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                                                        checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 += 0 / lockToBlock - lastUnlockBlock[address(msg.sender)]
                                                    else:
                                                        checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                                        checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 + (0 / lockToBlock - lastUnlockBlock[address(msg.sender)])
                                                        numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                                emit DelegateVotesChanged(checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256, checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 + (0 / lockToBlock - lastUnlockBlock[address(msg.sender)]), delegates[address(msg.sender)]);
                                            else:
                                                if 0 / lockToBlock - lastUnlockBlock[address(msg.sender)] < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if block.number >= 4294967296:
                                                    revert with 0, 
                                                                32,
                                                                51,
                                                                0x7342414f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                                mem[691 len 13],
                                                                Mask(152, -256, mem[691 len 13]) << 256
                                                if numCheckpoints[stor16[address(msg.sender)]] <= 0:
                                                    checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                                    checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = 0 / lockToBlock - lastUnlockBlock[address(msg.sender)]
                                                    numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                                else:
                                                    if checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                                                        checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 = 0 / lockToBlock - lastUnlockBlock[address(msg.sender)]
                                                    else:
                                                        checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                                        checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = 0 / lockToBlock - lastUnlockBlock[address(msg.sender)]
                                                        numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                                emit DelegateVotesChanged(0, 0 / lockToBlock - lastUnlockBlock[address(msg.sender)], delegates[address(msg.sender)]);
                                    else:
                                        if checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]] - 1 << 224].field_256 -= 0 / lockToBlock - lastUnlockBlock[address(msg.sender)]
                                            emit DelegateVotesChanged(checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]] - 1 << 224].field_256, checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]] - 1 << 224].field_256 - (0 / lockToBlock - lastUnlockBlock[address(msg.sender)]), delegates[address(this.address)]);
                                            if delegates[address(msg.sender)]:
                                                if numCheckpoints[stor16[address(msg.sender)]] > 0:
                                                    if checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 + (0 / lockToBlock - lastUnlockBlock[address(msg.sender)]) < checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if block.number >= 4294967296:
                                                        revert with 0, 
                                                                    32,
                                                                    51,
                                                                    0x7342414f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                                    mem[627 len 13],
                                                                    Mask(152, -256, mem[627 len 13]) << 256
                                                    if numCheckpoints[stor16[address(msg.sender)]] <= 0:
                                                        checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                                        checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 + (0 / lockToBlock - lastUnlockBlock[address(msg.sender)])
                                                        numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                                    else:
                                                        if checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                                                            checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 += 0 / lockToBlock - lastUnlockBlock[address(msg.sender)]
                                                        else:
                                                            checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                                            checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 + (0 / lockToBlock - lastUnlockBlock[address(msg.sender)])
                                                            numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                                    emit DelegateVotesChanged(checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256, checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 + (0 / lockToBlock - lastUnlockBlock[address(msg.sender)]), delegates[address(msg.sender)]);
                                                else:
                                                    if 0 / lockToBlock - lastUnlockBlock[address(msg.sender)] < 0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if block.number >= 4294967296:
                                                        revert with 0, 
                                                                    32,
                                                                    51,
                                                                    0x7342414f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                                    mem[627 len 13],
                                                                    Mask(152, -256, mem[627 len 13]) << 256
                                                    if numCheckpoints[stor16[address(msg.sender)]] <= 0:
                                                        checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                                        checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = 0 / lockToBlock - lastUnlockBlock[address(msg.sender)]
                                                        numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                                    else:
                                                        if checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                                                            checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 = 0 / lockToBlock - lastUnlockBlock[address(msg.sender)]
                                                        else:
                                                            checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                                            checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = 0 / lockToBlock - lastUnlockBlock[address(msg.sender)]
                                                            numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                                    emit DelegateVotesChanged(0, 0 / lockToBlock - lastUnlockBlock[address(msg.sender)], delegates[address(msg.sender)]);
                                        else:
                                            checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]]].field_0 = uint32(block.number)
                                            checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]]].field_256 = checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]] - 1 << 224].field_256 - (0 / lockToBlock - lastUnlockBlock[address(msg.sender)])
                                            numCheckpoints[stor16[address(this.address)]] = uint32(numCheckpoints[stor16[address(this.address)]] + 1)
                                            emit DelegateVotesChanged(checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]] - 1 << 224].field_256, checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]] - 1 << 224].field_256 - (0 / lockToBlock - lastUnlockBlock[address(msg.sender)]), delegates[address(this.address)]);
                                            if delegates[address(msg.sender)]:
                                                if numCheckpoints[stor16[address(msg.sender)]] > 0:
                                                    if checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 + (0 / lockToBlock - lastUnlockBlock[address(msg.sender)]) < checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if block.number >= 4294967296:
                                                        revert with 0, 
                                                                    32,
                                                                    51,
                                                                    0x7342414f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                                    mem[691 len 13],
                                                                    Mask(152, -256, mem[691 len 13]) << 256
                                                    if numCheckpoints[stor16[address(msg.sender)]] <= 0:
                                                        checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                                        checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 + (0 / lockToBlock - lastUnlockBlock[address(msg.sender)])
                                                        numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                                    else:
                                                        if checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                                                            checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 += 0 / lockToBlock - lastUnlockBlock[address(msg.sender)]
                                                        else:
                                                            checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                                            checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 + (0 / lockToBlock - lastUnlockBlock[address(msg.sender)])
                                                            numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                                    emit DelegateVotesChanged(checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256, checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 + (0 / lockToBlock - lastUnlockBlock[address(msg.sender)]), delegates[address(msg.sender)]);
                                                else:
                                                    if 0 / lockToBlock - lastUnlockBlock[address(msg.sender)] < 0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if block.number >= 4294967296:
                                                        revert with 0, 
                                                                    32,
                                                                    51,
                                                                    0x7342414f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                                    mem[691 len 13],
                                                                    Mask(152, -256, mem[691 len 13]) << 256
                                                    if numCheckpoints[stor16[address(msg.sender)]] <= 0:
                                                        checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                                        checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = 0 / lockToBlock - lastUnlockBlock[address(msg.sender)]
                                                        numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                                    else:
                                                        if checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                                                            checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 = 0 / lockToBlock - lastUnlockBlock[address(msg.sender)]
                                                        else:
                                                            checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                                            checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = 0 / lockToBlock - lastUnlockBlock[address(msg.sender)]
                                                            numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                                    emit DelegateVotesChanged(0, 0 / lockToBlock - lastUnlockBlock[address(msg.sender)], delegates[address(msg.sender)]);
                                else:
                                    if 0 / lockToBlock - lastUnlockBlock[address(msg.sender)] > 0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x7342414f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                    mem[531 len 13],
                                                    Mask(152, -256, mem[531 len 13]) << 256
                                    if numCheckpoints[stor16[address(this.address)]] <= 0:
                                        checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]]].field_0 = uint32(block.number)
                                        checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]]].field_256 = -0 / lockToBlock - lastUnlockBlock[address(msg.sender)]
                                        numCheckpoints[stor16[address(this.address)]] = uint32(numCheckpoints[stor16[address(this.address)]] + 1)
                                        emit DelegateVotesChanged(0, -0 / lockToBlock - lastUnlockBlock[address(msg.sender)], delegates[address(this.address)]);
                                        if delegates[address(msg.sender)]:
                                            if numCheckpoints[stor16[address(msg.sender)]] > 0:
                                                if checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 + (0 / lockToBlock - lastUnlockBlock[address(msg.sender)]) < checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if block.number >= 4294967296:
                                                    revert with 0, 
                                                                32,
                                                                51,
                                                                0x7342414f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                                mem[691 len 13],
                                                                Mask(152, -256, mem[691 len 13]) << 256
                                                if numCheckpoints[stor16[address(msg.sender)]] <= 0:
                                                    checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                                    checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 + (0 / lockToBlock - lastUnlockBlock[address(msg.sender)])
                                                    numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                                else:
                                                    if checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                                                        checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 += 0 / lockToBlock - lastUnlockBlock[address(msg.sender)]
                                                    else:
                                                        checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                                        checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 + (0 / lockToBlock - lastUnlockBlock[address(msg.sender)])
                                                        numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                                emit DelegateVotesChanged(checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256, checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 + (0 / lockToBlock - lastUnlockBlock[address(msg.sender)]), delegates[address(msg.sender)]);
                                            else:
                                                if 0 / lockToBlock - lastUnlockBlock[address(msg.sender)] < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if block.number >= 4294967296:
                                                    revert with 0, 
                                                                32,
                                                                51,
                                                                0x7342414f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                                mem[691 len 13],
                                                                Mask(152, -256, mem[691 len 13]) << 256
                                                if numCheckpoints[stor16[address(msg.sender)]] <= 0:
                                                    checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                                    checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = 0 / lockToBlock - lastUnlockBlock[address(msg.sender)]
                                                    numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                                else:
                                                    if checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                                                        checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 = 0 / lockToBlock - lastUnlockBlock[address(msg.sender)]
                                                    else:
                                                        checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                                        checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = 0 / lockToBlock - lastUnlockBlock[address(msg.sender)]
                                                        numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                                emit DelegateVotesChanged(0, 0 / lockToBlock - lastUnlockBlock[address(msg.sender)], delegates[address(msg.sender)]);
                                    else:
                                        if checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]] - 1 << 224].field_256 = -0 / lockToBlock - lastUnlockBlock[address(msg.sender)]
                                            emit DelegateVotesChanged(0, -0 / lockToBlock - lastUnlockBlock[address(msg.sender)], delegates[address(this.address)]);
                                            if delegates[address(msg.sender)]:
                                                if numCheckpoints[stor16[address(msg.sender)]] > 0:
                                                    if checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 + (0 / lockToBlock - lastUnlockBlock[address(msg.sender)]) < checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if block.number >= 4294967296:
                                                        revert with 0, 
                                                                    32,
                                                                    51,
                                                                    0x7342414f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                                    mem[627 len 13],
                                                                    Mask(152, -256, mem[627 len 13]) << 256
                                                    if numCheckpoints[stor16[address(msg.sender)]] <= 0:
                                                        checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                                        checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 + (0 / lockToBlock - lastUnlockBlock[address(msg.sender)])
                                                        numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                                    else:
                                                        if checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                                                            checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 += 0 / lockToBlock - lastUnlockBlock[address(msg.sender)]
                                                        else:
                                                            checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                                            checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 + (0 / lockToBlock - lastUnlockBlock[address(msg.sender)])
                                                            numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                                    emit DelegateVotesChanged(checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256, checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 + (0 / lockToBlock - lastUnlockBlock[address(msg.sender)]), delegates[address(msg.sender)]);
                                                else:
                                                    if 0 / lockToBlock - lastUnlockBlock[address(msg.sender)] < 0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if block.number >= 4294967296:
                                                        revert with 0, 
                                                                    32,
                                                                    51,
                                                                    0x7342414f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                                    mem[627 len 13],
                                                                    Mask(152, -256, mem[627 len 13]) << 256
                                                    if numCheckpoints[stor16[address(msg.sender)]] <= 0:
                                                        checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                                        checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = 0 / lockToBlock - lastUnlockBlock[address(msg.sender)]
                                                        numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                                    else:
                                                        if checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                                                            checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 = 0 / lockToBlock - lastUnlockBlock[address(msg.sender)]
                                                        else:
                                                            checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                                            checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = 0 / lockToBlock - lastUnlockBlock[address(msg.sender)]
                                                            numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                                    emit DelegateVotesChanged(0, 0 / lockToBlock - lastUnlockBlock[address(msg.sender)], delegates[address(msg.sender)]);
                                        else:
                                            checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]]].field_0 = uint32(block.number)
                                            checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]]].field_256 = -0 / lockToBlock - lastUnlockBlock[address(msg.sender)]
                                            numCheckpoints[stor16[address(this.address)]] = uint32(numCheckpoints[stor16[address(this.address)]] + 1)
                                            emit DelegateVotesChanged(0, -0 / lockToBlock - lastUnlockBlock[address(msg.sender)], delegates[address(this.address)]);
                                            if delegates[address(msg.sender)]:
                                                if numCheckpoints[stor16[address(msg.sender)]] > 0:
                                                    if checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 + (0 / lockToBlock - lastUnlockBlock[address(msg.sender)]) < checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if block.number >= 4294967296:
                                                        revert with 0, 
                                                                    32,
                                                                    51,
                                                                    0x7342414f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                                    mem[691 len 13],
                                                                    Mask(152, -256, mem[691 len 13]) << 256
                                                    if numCheckpoints[stor16[address(msg.sender)]] <= 0:
                                                        checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                                        checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 + (0 / lockToBlock - lastUnlockBlock[address(msg.sender)])
                                                        numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                                    else:
                                                        if checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                                                            checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 += 0 / lockToBlock - lastUnlockBlock[address(msg.sender)]
                                                        else:
                                                            checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                                            checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 + (0 / lockToBlock - lastUnlockBlock[address(msg.sender)])
                                                            numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                                    emit DelegateVotesChanged(checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256, checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 + (0 / lockToBlock - lastUnlockBlock[address(msg.sender)]), delegates[address(msg.sender)]);
                                                else:
                                                    if 0 / lockToBlock - lastUnlockBlock[address(msg.sender)] < 0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if block.number >= 4294967296:
                                                        revert with 0, 
                                                                    32,
                                                                    51,
                                                                    0x7342414f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                                    mem[691 len 13],
                                                                    Mask(152, -256, mem[691 len 13]) << 256
                                                    if numCheckpoints[stor16[address(msg.sender)]] <= 0:
                                                        checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                                        checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = 0 / lockToBlock - lastUnlockBlock[address(msg.sender)]
                                                        numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                                    else:
                                                        if checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                                                            checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 = 0 / lockToBlock - lastUnlockBlock[address(msg.sender)]
                                                        else:
                                                            checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                                            checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = 0 / lockToBlock - lastUnlockBlock[address(msg.sender)]
                                                            numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                                    emit DelegateVotesChanged(0, 0 / lockToBlock - lastUnlockBlock[address(msg.sender)], delegates[address(msg.sender)]);
                            if 0 / lockToBlock - lastUnlockBlock[address(msg.sender)] > lockOf[address(msg.sender)]:
                                revert with 0, 'SafeMath: subtraction overflow'
                    lockOf[address(msg.sender)] -= 0 / lockToBlock - lastUnlockBlock[address(msg.sender)]
                    lastUnlockBlock[address(msg.sender)] = block.number
                    if 0 / lockToBlock - lastUnlockBlock[address(msg.sender)] > lockedSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    lockedSupply -= 0 / lockToBlock - lastUnlockBlock[address(msg.sender)]
                else:
                    if not this.address:
                        if circulatingSupply + balanceOf[address(this.address)] < circulatingSupply:
                            revert with 0, 'SafeMath: addition overflow'
                        if circulatingSupply + balanceOf[address(this.address)] > cap:
                            revert with 0, 'ERC20Capped: cap exceeded'
                    if balanceOf[address(this.address)] > balanceOf[address(this.address)]:
                        revert with 0, 
                                    32,
                                    38,
                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                    mem[358 len 26],
                                    mem[410 len 6]
                    balanceOf[address(this.address)] = 0
                    if balanceOf[address(msg.sender)] + balanceOf[address(this.address)] < balanceOf[address(msg.sender)]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(msg.sender)] += balanceOf[address(this.address)]
                    emit Transfer(balanceOf[address(this.address)], this.address, msg.sender);
                    if delegates[address(this.address)] == delegates[address(msg.sender)]:
                        if balanceOf[address(this.address)] > lockOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: subtraction overflow'
                    else:
                        if balanceOf[address(this.address)] > 0:
                            if not delegates[address(this.address)]:
                                if delegates[address(msg.sender)]:
                                    if numCheckpoints[stor16[address(msg.sender)]] > 0:
                                        if checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 + balanceOf[address(this.address)] < checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        51,
                                                        0x7342414f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                        mem[467 len 13],
                                                        Mask(152, -256, mem[467 len 13]) << 256
                                        if numCheckpoints[stor16[address(msg.sender)]] <= 0:
                                            checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                            checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 + balanceOf[address(this.address)]
                                            numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                        else:
                                            if checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                                                checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 += balanceOf[address(this.address)]
                                            else:
                                                checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                                checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 + balanceOf[address(this.address)]
                                                numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                        emit DelegateVotesChanged(checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256, checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 + balanceOf[address(this.address)], delegates[address(msg.sender)]);
                                    else:
                                        if balanceOf[address(this.address)] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        51,
                                                        0x7342414f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                        mem[467 len 13],
                                                        Mask(152, -256, mem[467 len 13]) << 256
                                        if numCheckpoints[stor16[address(msg.sender)]] <= 0:
                                            checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                            checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = balanceOf[address(this.address)]
                                            numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                        else:
                                            if checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                                                checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 = balanceOf[address(this.address)]
                                            else:
                                                checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                                checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = balanceOf[address(this.address)]
                                                numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                        emit DelegateVotesChanged(0, balanceOf[address(this.address)], delegates[address(msg.sender)]);
                            else:
                                if numCheckpoints[stor16[address(this.address)]] > 0:
                                    if balanceOf[address(this.address)] > checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]] - 1 << 224].field_256:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x7342414f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                    mem[531 len 13],
                                                    Mask(152, -256, mem[531 len 13]) << 256
                                    if numCheckpoints[stor16[address(this.address)]] <= 0:
                                        checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]]].field_0 = uint32(block.number)
                                        checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]]].field_256 = checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]] - 1 << 224].field_256 - balanceOf[address(this.address)]
                                        numCheckpoints[stor16[address(this.address)]] = uint32(numCheckpoints[stor16[address(this.address)]] + 1)
                                        emit DelegateVotesChanged(checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]] - 1 << 224].field_256, checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]] - 1 << 224].field_256 - balanceOf[address(this.address)], delegates[address(this.address)]);
                                        if delegates[address(msg.sender)]:
                                            if numCheckpoints[stor16[address(msg.sender)]] > 0:
                                                if checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 + balanceOf[address(this.address)] < checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if block.number >= 4294967296:
                                                    revert with 0, 
                                                                32,
                                                                51,
                                                                0x7342414f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                                mem[691 len 13],
                                                                Mask(152, -256, mem[691 len 13]) << 256
                                                if numCheckpoints[stor16[address(msg.sender)]] <= 0:
                                                    checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                                    checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 + balanceOf[address(this.address)]
                                                    numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                                else:
                                                    if checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                                                        checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 += balanceOf[address(this.address)]
                                                    else:
                                                        checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                                        checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 + balanceOf[address(this.address)]
                                                        numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                                emit DelegateVotesChanged(checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256, checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 + balanceOf[address(this.address)], delegates[address(msg.sender)]);
                                            else:
                                                if balanceOf[address(this.address)] < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if block.number >= 4294967296:
                                                    revert with 0, 
                                                                32,
                                                                51,
                                                                0x7342414f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                                mem[691 len 13],
                                                                Mask(152, -256, mem[691 len 13]) << 256
                                                if numCheckpoints[stor16[address(msg.sender)]] <= 0:
                                                    checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                                    checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = balanceOf[address(this.address)]
                                                    numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                                else:
                                                    if checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                                                        checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 = balanceOf[address(this.address)]
                                                    else:
                                                        checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                                        checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = balanceOf[address(this.address)]
                                                        numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                                emit DelegateVotesChanged(0, balanceOf[address(this.address)], delegates[address(msg.sender)]);
                                    else:
                                        if checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]] - 1 << 224].field_256 -= balanceOf[address(this.address)]
                                            emit DelegateVotesChanged(checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]] - 1 << 224].field_256, checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]] - 1 << 224].field_256 - balanceOf[address(this.address)], delegates[address(this.address)]);
                                            if delegates[address(msg.sender)]:
                                                if numCheckpoints[stor16[address(msg.sender)]] > 0:
                                                    if checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 + balanceOf[address(this.address)] < checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if block.number >= 4294967296:
                                                        revert with 0, 
                                                                    32,
                                                                    51,
                                                                    0x7342414f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                                    mem[627 len 13],
                                                                    Mask(152, -256, mem[627 len 13]) << 256
                                                    if numCheckpoints[stor16[address(msg.sender)]] <= 0:
                                                        checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                                        checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 + balanceOf[address(this.address)]
                                                        numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                                    else:
                                                        if checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                                                            checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 += balanceOf[address(this.address)]
                                                        else:
                                                            checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                                            checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 + balanceOf[address(this.address)]
                                                            numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                                    emit DelegateVotesChanged(checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256, checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 + balanceOf[address(this.address)], delegates[address(msg.sender)]);
                                                else:
                                                    if balanceOf[address(this.address)] < 0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if block.number >= 4294967296:
                                                        revert with 0, 
                                                                    32,
                                                                    51,
                                                                    0x7342414f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                                    mem[627 len 13],
                                                                    Mask(152, -256, mem[627 len 13]) << 256
                                                    if numCheckpoints[stor16[address(msg.sender)]] <= 0:
                                                        checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                                        checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = balanceOf[address(this.address)]
                                                        numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                                    else:
                                                        if checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                                                            checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 = balanceOf[address(this.address)]
                                                        else:
                                                            checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                                            checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = balanceOf[address(this.address)]
                                                            numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                                    emit DelegateVotesChanged(0, balanceOf[address(this.address)], delegates[address(msg.sender)]);
                                        else:
                                            checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]]].field_0 = uint32(block.number)
                                            checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]]].field_256 = checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]] - 1 << 224].field_256 - balanceOf[address(this.address)]
                                            numCheckpoints[stor16[address(this.address)]] = uint32(numCheckpoints[stor16[address(this.address)]] + 1)
                                            emit DelegateVotesChanged(checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]] - 1 << 224].field_256, checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]] - 1 << 224].field_256 - balanceOf[address(this.address)], delegates[address(this.address)]);
                                            if delegates[address(msg.sender)]:
                                                if numCheckpoints[stor16[address(msg.sender)]] > 0:
                                                    if checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 + balanceOf[address(this.address)] < checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if block.number >= 4294967296:
                                                        revert with 0, 
                                                                    32,
                                                                    51,
                                                                    0x7342414f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                                    mem[691 len 13],
                                                                    Mask(152, -256, mem[691 len 13]) << 256
                                                    if numCheckpoints[stor16[address(msg.sender)]] <= 0:
                                                        checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                                        checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 + balanceOf[address(this.address)]
                                                        numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                                    else:
                                                        if checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                                                            checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 += balanceOf[address(this.address)]
                                                        else:
                                                            checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                                            checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 + balanceOf[address(this.address)]
                                                            numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                                    emit DelegateVotesChanged(checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256, checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 + balanceOf[address(this.address)], delegates[address(msg.sender)]);
                                                else:
                                                    if balanceOf[address(this.address)] < 0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if block.number >= 4294967296:
                                                        revert with 0, 
                                                                    32,
                                                                    51,
                                                                    0x7342414f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                                    mem[691 len 13],
                                                                    Mask(152, -256, mem[691 len 13]) << 256
                                                    if numCheckpoints[stor16[address(msg.sender)]] <= 0:
                                                        checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                                        checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = balanceOf[address(this.address)]
                                                        numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                                    else:
                                                        if checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                                                            checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 = balanceOf[address(this.address)]
                                                        else:
                                                            checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                                            checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = balanceOf[address(this.address)]
                                                            numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                                    emit DelegateVotesChanged(0, balanceOf[address(this.address)], delegates[address(msg.sender)]);
                                else:
                                    if balanceOf[address(this.address)] > 0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x7342414f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                    mem[531 len 13],
                                                    Mask(152, -256, mem[531 len 13]) << 256
                                    if numCheckpoints[stor16[address(this.address)]] <= 0:
                                        checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]]].field_0 = uint32(block.number)
                                        checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]]].field_256 = -balanceOf[address(this.address)]
                                        numCheckpoints[stor16[address(this.address)]] = uint32(numCheckpoints[stor16[address(this.address)]] + 1)
                                        emit DelegateVotesChanged(0, -balanceOf[address(this.address)], delegates[address(this.address)]);
                                        if delegates[address(msg.sender)]:
                                            if numCheckpoints[stor16[address(msg.sender)]] > 0:
                                                if checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 + balanceOf[address(this.address)] < checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if block.number >= 4294967296:
                                                    revert with 0, 
                                                                32,
                                                                51,
                                                                0x7342414f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                                mem[691 len 13],
                                                                Mask(152, -256, mem[691 len 13]) << 256
                                                if numCheckpoints[stor16[address(msg.sender)]] <= 0:
                                                    checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                                    checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 + balanceOf[address(this.address)]
                                                    numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                                else:
                                                    if checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                                                        checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 += balanceOf[address(this.address)]
                                                    else:
                                                        checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                                        checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 + balanceOf[address(this.address)]
                                                        numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                                emit DelegateVotesChanged(checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256, checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 + balanceOf[address(this.address)], delegates[address(msg.sender)]);
                                            else:
                                                if balanceOf[address(this.address)] < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if block.number >= 4294967296:
                                                    revert with 0, 
                                                                32,
                                                                51,
                                                                0x7342414f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                                mem[691 len 13],
                                                                Mask(152, -256, mem[691 len 13]) << 256
                                                if numCheckpoints[stor16[address(msg.sender)]] <= 0:
                                                    checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                                    checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = balanceOf[address(this.address)]
                                                    numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                                else:
                                                    if checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                                                        checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 = balanceOf[address(this.address)]
                                                    else:
                                                        checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                                        checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = balanceOf[address(this.address)]
                                                        numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                                emit DelegateVotesChanged(0, balanceOf[address(this.address)], delegates[address(msg.sender)]);
                                    else:
                                        if checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]] - 1 << 224].field_256 = -balanceOf[address(this.address)]
                                            emit DelegateVotesChanged(0, -balanceOf[address(this.address)], delegates[address(this.address)]);
                                            if delegates[address(msg.sender)]:
                                                if numCheckpoints[stor16[address(msg.sender)]] > 0:
                                                    if checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 + balanceOf[address(this.address)] < checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if block.number >= 4294967296:
                                                        revert with 0, 
                                                                    32,
                                                                    51,
                                                                    0x7342414f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                                    mem[627 len 13],
                                                                    Mask(152, -256, mem[627 len 13]) << 256
                                                    if numCheckpoints[stor16[address(msg.sender)]] <= 0:
                                                        checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                                        checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 + balanceOf[address(this.address)]
                                                        numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                                    else:
                                                        if checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                                                            checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 += balanceOf[address(this.address)]
                                                        else:
                                                            checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                                            checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 + balanceOf[address(this.address)]
                                                            numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                                    emit DelegateVotesChanged(checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256, checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 + balanceOf[address(this.address)], delegates[address(msg.sender)]);
                                                else:
                                                    if balanceOf[address(this.address)] < 0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if block.number >= 4294967296:
                                                        revert with 0, 
                                                                    32,
                                                                    51,
                                                                    0x7342414f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                                    mem[627 len 13],
                                                                    Mask(152, -256, mem[627 len 13]) << 256
                                                    if numCheckpoints[stor16[address(msg.sender)]] <= 0:
                                                        checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                                        checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = balanceOf[address(this.address)]
                                                        numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                                    else:
                                                        if checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                                                            checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 = balanceOf[address(this.address)]
                                                        else:
                                                            checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                                            checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = balanceOf[address(this.address)]
                                                            numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                                    emit DelegateVotesChanged(0, balanceOf[address(this.address)], delegates[address(msg.sender)]);
                                        else:
                                            checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]]].field_0 = uint32(block.number)
                                            checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]]].field_256 = -balanceOf[address(this.address)]
                                            numCheckpoints[stor16[address(this.address)]] = uint32(numCheckpoints[stor16[address(this.address)]] + 1)
                                            emit DelegateVotesChanged(0, -balanceOf[address(this.address)], delegates[address(this.address)]);
                                            if delegates[address(msg.sender)]:
                                                if numCheckpoints[stor16[address(msg.sender)]] > 0:
                                                    if checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 + balanceOf[address(this.address)] < checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if block.number >= 4294967296:
                                                        revert with 0, 
                                                                    32,
                                                                    51,
                                                                    0x7342414f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                                    mem[691 len 13],
                                                                    Mask(152, -256, mem[691 len 13]) << 256
                                                    if numCheckpoints[stor16[address(msg.sender)]] <= 0:
                                                        checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                                        checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 + balanceOf[address(this.address)]
                                                        numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                                    else:
                                                        if checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                                                            checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 += balanceOf[address(this.address)]
                                                        else:
                                                            checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                                            checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 + balanceOf[address(this.address)]
                                                            numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                                    emit DelegateVotesChanged(checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256, checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 + balanceOf[address(this.address)], delegates[address(msg.sender)]);
                                                else:
                                                    if balanceOf[address(this.address)] < 0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if block.number >= 4294967296:
                                                        revert with 0, 
                                                                    32,
                                                                    51,
                                                                    0x7342414f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                                    mem[691 len 13],
                                                                    Mask(152, -256, mem[691 len 13]) << 256
                                                    if numCheckpoints[stor16[address(msg.sender)]] <= 0:
                                                        checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                                        checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = balanceOf[address(this.address)]
                                                        numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                                    else:
                                                        if checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                                                            checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 = balanceOf[address(this.address)]
                                                        else:
                                                            checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                                            checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = balanceOf[address(this.address)]
                                                            numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                                    emit DelegateVotesChanged(0, balanceOf[address(this.address)], delegates[address(msg.sender)]);
                            if balanceOf[address(this.address)] > lockOf[address(msg.sender)]:
                                revert with 0, 'SafeMath: subtraction overflow'
                    lockOf[address(msg.sender)] -= balanceOf[address(this.address)]
                    lastUnlockBlock[address(msg.sender)] = block.number
                    if balanceOf[address(this.address)] > lockedSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    lockedSupply -= balanceOf[address(this.address)]
            else:
                require lockOf[address(msg.sender)]
                if (block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / lockOf[address(msg.sender)] != block.number - lastUnlockBlock[address(msg.sender)]:
                    revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                if lockToBlock - lastUnlockBlock[address(msg.sender)] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require lockToBlock - lastUnlockBlock[address(msg.sender)]
                if not this.address:
                    revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[393 len 27]
                if not msg.sender:
                    revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[391 len 29]
                if (block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / lockToBlock - lastUnlockBlock[address(msg.sender)] <= balanceOf[address(this.address)]:
                    if not this.address:
                        if circulatingSupply + ((block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / lockToBlock - lastUnlockBlock[address(msg.sender)]) < circulatingSupply:
                            revert with 0, 'SafeMath: addition overflow'
                        if circulatingSupply + ((block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / lockToBlock - lastUnlockBlock[address(msg.sender)]) > cap:
                            revert with 0, 'ERC20Capped: cap exceeded'
                    if (block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / lockToBlock - lastUnlockBlock[address(msg.sender)] > balanceOf[address(this.address)]:
                        revert with 0, 
                                    32,
                                    38,
                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                    mem[358 len 26],
                                    mem[410 len 6]
                    balanceOf[address(this.address)] -= (block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / lockToBlock - lastUnlockBlock[address(msg.sender)]
                    if balanceOf[address(msg.sender)] + ((block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / lockToBlock - lastUnlockBlock[address(msg.sender)]) < balanceOf[address(msg.sender)]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(msg.sender)] += (block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / lockToBlock - lastUnlockBlock[address(msg.sender)]
                    emit Transfer(((block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / lockToBlock - lastUnlockBlock[address(msg.sender)]), this.address, msg.sender);
                    if delegates[address(this.address)] == delegates[address(msg.sender)]:
                        if (block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / lockToBlock - lastUnlockBlock[address(msg.sender)] > lockOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: subtraction overflow'
                    else:
                        if (block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / lockToBlock - lastUnlockBlock[address(msg.sender)] > 0:
                            if not delegates[address(this.address)]:
                                if delegates[address(msg.sender)]:
                                    if numCheckpoints[stor16[address(msg.sender)]] > 0:
                                        if checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 + ((block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / lockToBlock - lastUnlockBlock[address(msg.sender)]) < checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        51,
                                                        0x7342414f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                        mem[467 len 13],
                                                        Mask(152, -256, mem[467 len 13]) << 256
                                        if numCheckpoints[stor16[address(msg.sender)]] <= 0:
                                            checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                            checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 + ((block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / lockToBlock - lastUnlockBlock[address(msg.sender)])
                                            numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                        else:
                                            if checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                                                checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 += (block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / lockToBlock - lastUnlockBlock[address(msg.sender)]
                                            else:
                                                checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                                checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 + ((block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / lockToBlock - lastUnlockBlock[address(msg.sender)])
                                                numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                        emit DelegateVotesChanged(checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256, checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 + ((block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / lockToBlock - lastUnlockBlock[address(msg.sender)]), delegates[address(msg.sender)]);
                                    else:
                                        if (block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / lockToBlock - lastUnlockBlock[address(msg.sender)] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        51,
                                                        0x7342414f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                        mem[467 len 13],
                                                        Mask(152, -256, mem[467 len 13]) << 256
                                        if numCheckpoints[stor16[address(msg.sender)]] <= 0:
                                            checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                            checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = (block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / lockToBlock - lastUnlockBlock[address(msg.sender)]
                                            numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                        else:
                                            if checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                                                checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 = (block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / lockToBlock - lastUnlockBlock[address(msg.sender)]
                                            else:
                                                checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                                checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = (block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / lockToBlock - lastUnlockBlock[address(msg.sender)]
                                                numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                        emit DelegateVotesChanged(0, (block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / lockToBlock - lastUnlockBlock[address(msg.sender)], delegates[address(msg.sender)]);
                            else:
                                if numCheckpoints[stor16[address(this.address)]] > 0:
                                    if (block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / lockToBlock - lastUnlockBlock[address(msg.sender)] > checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]] - 1 << 224].field_256:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x7342414f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                    mem[531 len 13],
                                                    Mask(152, -256, mem[531 len 13]) << 256
                                    if numCheckpoints[stor16[address(this.address)]] <= 0:
                                        checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]]].field_0 = uint32(block.number)
                                        checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]]].field_256 = checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]] - 1 << 224].field_256 - ((block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / lockToBlock - lastUnlockBlock[address(msg.sender)])
                                        numCheckpoints[stor16[address(this.address)]] = uint32(numCheckpoints[stor16[address(this.address)]] + 1)
                                        emit DelegateVotesChanged(checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]] - 1 << 224].field_256, checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]] - 1 << 224].field_256 - ((block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / lockToBlock - lastUnlockBlock[address(msg.sender)]), delegates[address(this.address)]);
                                        if delegates[address(msg.sender)]:
                                            if numCheckpoints[stor16[address(msg.sender)]] > 0:
                                                if checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 + ((block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / lockToBlock - lastUnlockBlock[address(msg.sender)]) < checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if block.number >= 4294967296:
                                                    revert with 0, 
                                                                32,
                                                                51,
                                                                0x7342414f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                                mem[691 len 13],
                                                                Mask(152, -256, mem[691 len 13]) << 256
                                                if numCheckpoints[stor16[address(msg.sender)]] <= 0:
                                                    checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                                    checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 + ((block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / lockToBlock - lastUnlockBlock[address(msg.sender)])
                                                    numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                                else:
                                                    if checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                                                        checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 += (block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / lockToBlock - lastUnlockBlock[address(msg.sender)]
                                                    else:
                                                        checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                                        checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 + ((block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / lockToBlock - lastUnlockBlock[address(msg.sender)])
                                                        numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                                emit DelegateVotesChanged(checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256, checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 + ((block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / lockToBlock - lastUnlockBlock[address(msg.sender)]), delegates[address(msg.sender)]);
                                            else:
                                                if (block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / lockToBlock - lastUnlockBlock[address(msg.sender)] < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if block.number >= 4294967296:
                                                    revert with 0, 
                                                                32,
                                                                51,
                                                                0x7342414f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                                mem[691 len 13],
                                                                Mask(152, -256, mem[691 len 13]) << 256
                                                if numCheckpoints[stor16[address(msg.sender)]] <= 0:
                                                    checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                                    checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = (block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / lockToBlock - lastUnlockBlock[address(msg.sender)]
                                                    numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                                else:
                                                    if checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                                                        checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 = (block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / lockToBlock - lastUnlockBlock[address(msg.sender)]
                                                    else:
                                                        checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                                        checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = (block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / lockToBlock - lastUnlockBlock[address(msg.sender)]
                                                        numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                                emit DelegateVotesChanged(0, (block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / lockToBlock - lastUnlockBlock[address(msg.sender)], delegates[address(msg.sender)]);
                                    else:
                                        if checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]] - 1 << 224].field_256 -= (block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / lockToBlock - lastUnlockBlock[address(msg.sender)]
                                            emit DelegateVotesChanged(checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]] - 1 << 224].field_256, checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]] - 1 << 224].field_256 - ((block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / lockToBlock - lastUnlockBlock[address(msg.sender)]), delegates[address(this.address)]);
                                            if delegates[address(msg.sender)]:
                                                if numCheckpoints[stor16[address(msg.sender)]] > 0:
                                                    if checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 + ((block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / lockToBlock - lastUnlockBlock[address(msg.sender)]) < checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if block.number >= 4294967296:
                                                        revert with 0, 
                                                                    32,
                                                                    51,
                                                                    0x7342414f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                                    mem[627 len 13],
                                                                    Mask(152, -256, mem[627 len 13]) << 256
                                                    if numCheckpoints[stor16[address(msg.sender)]] <= 0:
                                                        checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                                        checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 + ((block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / lockToBlock - lastUnlockBlock[address(msg.sender)])
                                                        numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                                    else:
                                                        if checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                                                            checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 += (block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / lockToBlock - lastUnlockBlock[address(msg.sender)]
                                                        else:
                                                            checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                                            checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 + ((block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / lockToBlock - lastUnlockBlock[address(msg.sender)])
                                                            numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                                    emit DelegateVotesChanged(checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256, checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 + ((block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / lockToBlock - lastUnlockBlock[address(msg.sender)]), delegates[address(msg.sender)]);
                                                else:
                                                    if (block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / lockToBlock - lastUnlockBlock[address(msg.sender)] < 0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if block.number >= 4294967296:
                                                        revert with 0, 
                                                                    32,
                                                                    51,
                                                                    0x7342414f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                                    mem[627 len 13],
                                                                    Mask(152, -256, mem[627 len 13]) << 256
                                                    if numCheckpoints[stor16[address(msg.sender)]] <= 0:
                                                        checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                                        checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = (block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / lockToBlock - lastUnlockBlock[address(msg.sender)]
                                                        numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                                    else:
                                                        if checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                                                            checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 = (block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / lockToBlock - lastUnlockBlock[address(msg.sender)]
                                                        else:
                                                            checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                                            checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = (block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / lockToBlock - lastUnlockBlock[address(msg.sender)]
                                                            numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                                    emit DelegateVotesChanged(0, (block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / lockToBlock - lastUnlockBlock[address(msg.sender)], delegates[address(msg.sender)]);
                                        else:
                                            checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]]].field_0 = uint32(block.number)
                                            checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]]].field_256 = checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]] - 1 << 224].field_256 - ((block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / lockToBlock - lastUnlockBlock[address(msg.sender)])
                                            numCheckpoints[stor16[address(this.address)]] = uint32(numCheckpoints[stor16[address(this.address)]] + 1)
                                            emit DelegateVotesChanged(checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]] - 1 << 224].field_256, checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]] - 1 << 224].field_256 - ((block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / lockToBlock - lastUnlockBlock[address(msg.sender)]), delegates[address(this.address)]);
                                            if delegates[address(msg.sender)]:
                                                if numCheckpoints[stor16[address(msg.sender)]] > 0:
                                                    if checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 + ((block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / lockToBlock - lastUnlockBlock[address(msg.sender)]) < checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if block.number >= 4294967296:
                                                        revert with 0, 
                                                                    32,
                                                                    51,
                                                                    0x7342414f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                                    mem[691 len 13],
                                                                    Mask(152, -256, mem[691 len 13]) << 256
                                                    if numCheckpoints[stor16[address(msg.sender)]] <= 0:
                                                        checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                                        checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 + ((block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / lockToBlock - lastUnlockBlock[address(msg.sender)])
                                                        numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                                    else:
                                                        if checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                                                            checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 += (block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / lockToBlock - lastUnlockBlock[address(msg.sender)]
                                                        else:
                                                            checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                                            checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 + ((block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / lockToBlock - lastUnlockBlock[address(msg.sender)])
                                                            numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                                    emit DelegateVotesChanged(checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256, checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 + ((block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / lockToBlock - lastUnlockBlock[address(msg.sender)]), delegates[address(msg.sender)]);
                                                else:
                                                    if (block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / lockToBlock - lastUnlockBlock[address(msg.sender)] < 0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if block.number >= 4294967296:
                                                        revert with 0, 
                                                                    32,
                                                                    51,
                                                                    0x7342414f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                                    mem[691 len 13],
                                                                    Mask(152, -256, mem[691 len 13]) << 256
                                                    if numCheckpoints[stor16[address(msg.sender)]] <= 0:
                                                        checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                                        checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = (block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / lockToBlock - lastUnlockBlock[address(msg.sender)]
                                                        numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                                    else:
                                                        if checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                                                            checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 = (block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / lockToBlock - lastUnlockBlock[address(msg.sender)]
                                                        else:
                                                            checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                                            checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = (block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / lockToBlock - lastUnlockBlock[address(msg.sender)]
                                                            numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                                    emit DelegateVotesChanged(0, (block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / lockToBlock - lastUnlockBlock[address(msg.sender)], delegates[address(msg.sender)]);
                                else:
                                    if (block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / lockToBlock - lastUnlockBlock[address(msg.sender)] > 0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x7342414f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                    mem[531 len 13],
                                                    Mask(152, -256, mem[531 len 13]) << 256
                                    if numCheckpoints[stor16[address(this.address)]] <= 0:
                                        checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]]].field_0 = uint32(block.number)
                                        checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]]].field_256 = -(block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / lockToBlock - lastUnlockBlock[address(msg.sender)]
                                        numCheckpoints[stor16[address(this.address)]] = uint32(numCheckpoints[stor16[address(this.address)]] + 1)
                                        emit DelegateVotesChanged(0, -(block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / lockToBlock - lastUnlockBlock[address(msg.sender)], delegates[address(this.address)]);
                                        if delegates[address(msg.sender)]:
                                            if numCheckpoints[stor16[address(msg.sender)]] > 0:
                                                if checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 + ((block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / lockToBlock - lastUnlockBlock[address(msg.sender)]) < checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if block.number >= 4294967296:
                                                    revert with 0, 
                                                                32,
                                                                51,
                                                                0x7342414f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                                mem[691 len 13],
                                                                Mask(152, -256, mem[691 len 13]) << 256
                                                if numCheckpoints[stor16[address(msg.sender)]] <= 0:
                                                    checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                                    checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 + ((block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / lockToBlock - lastUnlockBlock[address(msg.sender)])
                                                    numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                                else:
                                                    if checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                                                        checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 += (block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / lockToBlock - lastUnlockBlock[address(msg.sender)]
                                                    else:
                                                        checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                                        checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 + ((block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / lockToBlock - lastUnlockBlock[address(msg.sender)])
                                                        numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                                emit DelegateVotesChanged(checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256, checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 + ((block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / lockToBlock - lastUnlockBlock[address(msg.sender)]), delegates[address(msg.sender)]);
                                            else:
                                                if (block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / lockToBlock - lastUnlockBlock[address(msg.sender)] < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if block.number >= 4294967296:
                                                    revert with 0, 
                                                                32,
                                                                51,
                                                                0x7342414f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                                mem[691 len 13],
                                                                Mask(152, -256, mem[691 len 13]) << 256
                                                if numCheckpoints[stor16[address(msg.sender)]] <= 0:
                                                    checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                                    checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = (block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / lockToBlock - lastUnlockBlock[address(msg.sender)]
                                                    numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                                else:
                                                    if checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                                                        checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 = (block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / lockToBlock - lastUnlockBlock[address(msg.sender)]
                                                    else:
                                                        checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                                        checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = (block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / lockToBlock - lastUnlockBlock[address(msg.sender)]
                                                        numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                                emit DelegateVotesChanged(0, (block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / lockToBlock - lastUnlockBlock[address(msg.sender)], delegates[address(msg.sender)]);
                                    else:
                                        if checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]] - 1 << 224].field_256 = -(block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / lockToBlock - lastUnlockBlock[address(msg.sender)]
                                            emit DelegateVotesChanged(0, -(block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / lockToBlock - lastUnlockBlock[address(msg.sender)], delegates[address(this.address)]);
                                            if delegates[address(msg.sender)]:
                                                if numCheckpoints[stor16[address(msg.sender)]] > 0:
                                                    if checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 + ((block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / lockToBlock - lastUnlockBlock[address(msg.sender)]) < checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if block.number >= 4294967296:
                                                        revert with 0, 
                                                                    32,
                                                                    51,
                                                                    0x7342414f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                                    mem[627 len 13],
                                                                    Mask(152, -256, mem[627 len 13]) << 256
                                                    if numCheckpoints[stor16[address(msg.sender)]] <= 0:
                                                        checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                                        checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 + ((block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / lockToBlock - lastUnlockBlock[address(msg.sender)])
                                                        numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                                    else:
                                                        if checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                                                            checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 += (block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / lockToBlock - lastUnlockBlock[address(msg.sender)]
                                                        else:
                                                            checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                                            checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 + ((block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / lockToBlock - lastUnlockBlock[address(msg.sender)])
                                                            numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                                    emit DelegateVotesChanged(checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256, checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 + ((block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / lockToBlock - lastUnlockBlock[address(msg.sender)]), delegates[address(msg.sender)]);
                                                else:
                                                    if (block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / lockToBlock - lastUnlockBlock[address(msg.sender)] < 0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if block.number >= 4294967296:
                                                        revert with 0, 
                                                                    32,
                                                                    51,
                                                                    0x7342414f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                                    mem[627 len 13],
                                                                    Mask(152, -256, mem[627 len 13]) << 256
                                                    if numCheckpoints[stor16[address(msg.sender)]] <= 0:
                                                        checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                                        checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = (block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / lockToBlock - lastUnlockBlock[address(msg.sender)]
                                                        numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                                    else:
                                                        if checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                                                            checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 = (block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / lockToBlock - lastUnlockBlock[address(msg.sender)]
                                                        else:
                                                            checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                                            checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = (block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / lockToBlock - lastUnlockBlock[address(msg.sender)]
                                                            numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                                    emit DelegateVotesChanged(0, (block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / lockToBlock - lastUnlockBlock[address(msg.sender)], delegates[address(msg.sender)]);
                                        else:
                                            checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]]].field_0 = uint32(block.number)
                                            checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]]].field_256 = -(block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / lockToBlock - lastUnlockBlock[address(msg.sender)]
                                            numCheckpoints[stor16[address(this.address)]] = uint32(numCheckpoints[stor16[address(this.address)]] + 1)
                                            emit DelegateVotesChanged(0, -(block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / lockToBlock - lastUnlockBlock[address(msg.sender)], delegates[address(this.address)]);
                                            if delegates[address(msg.sender)]:
                                                if numCheckpoints[stor16[address(msg.sender)]] > 0:
                                                    if checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 + ((block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / lockToBlock - lastUnlockBlock[address(msg.sender)]) < checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if block.number >= 4294967296:
                                                        revert with 0, 
                                                                    32,
                                                                    51,
                                                                    0x7342414f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                                    mem[691 len 13],
                                                                    Mask(152, -256, mem[691 len 13]) << 256
                                                    if numCheckpoints[stor16[address(msg.sender)]] <= 0:
                                                        checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                                        checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 + ((block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / lockToBlock - lastUnlockBlock[address(msg.sender)])
                                                        numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                                    else:
                                                        if checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                                                            checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 += (block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / lockToBlock - lastUnlockBlock[address(msg.sender)]
                                                        else:
                                                            checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                                            checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 + ((block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / lockToBlock - lastUnlockBlock[address(msg.sender)])
                                                            numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                                    emit DelegateVotesChanged(checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256, checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 + ((block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / lockToBlock - lastUnlockBlock[address(msg.sender)]), delegates[address(msg.sender)]);
                                                else:
                                                    if (block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / lockToBlock - lastUnlockBlock[address(msg.sender)] < 0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if block.number >= 4294967296:
                                                        revert with 0, 
                                                                    32,
                                                                    51,
                                                                    0x7342414f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                                    mem[691 len 13],
                                                                    Mask(152, -256, mem[691 len 13]) << 256
                                                    if numCheckpoints[stor16[address(msg.sender)]] <= 0:
                                                        checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                                        checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = (block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / lockToBlock - lastUnlockBlock[address(msg.sender)]
                                                        numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                                    else:
                                                        if checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                                                            checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 = (block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / lockToBlock - lastUnlockBlock[address(msg.sender)]
                                                        else:
                                                            checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                                            checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = (block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / lockToBlock - lastUnlockBlock[address(msg.sender)]
                                                            numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                                    emit DelegateVotesChanged(0, (block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / lockToBlock - lastUnlockBlock[address(msg.sender)], delegates[address(msg.sender)]);
                            if (block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / lockToBlock - lastUnlockBlock[address(msg.sender)] > lockOf[address(msg.sender)]:
                                revert with 0, 'SafeMath: subtraction overflow'
                    lockOf[address(msg.sender)] -= (block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / lockToBlock - lastUnlockBlock[address(msg.sender)]
                    lastUnlockBlock[address(msg.sender)] = block.number
                    if (block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / lockToBlock - lastUnlockBlock[address(msg.sender)] > lockedSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    lockedSupply -= (block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / lockToBlock - lastUnlockBlock[address(msg.sender)]
                else:
                    if not this.address:
                        if circulatingSupply + balanceOf[address(this.address)] < circulatingSupply:
                            revert with 0, 'SafeMath: addition overflow'
                        if circulatingSupply + balanceOf[address(this.address)] > cap:
                            revert with 0, 'ERC20Capped: cap exceeded'
                    if balanceOf[address(this.address)] > balanceOf[address(this.address)]:
                        revert with 0, 
                                    32,
                                    38,
                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                    mem[358 len 26],
                                    mem[410 len 6]
                    balanceOf[address(this.address)] = 0
                    if balanceOf[address(msg.sender)] + balanceOf[address(this.address)] < balanceOf[address(msg.sender)]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(msg.sender)] += balanceOf[address(this.address)]
                    emit Transfer(balanceOf[address(this.address)], this.address, msg.sender);
                    if delegates[address(this.address)] == delegates[address(msg.sender)]:
                        if balanceOf[address(this.address)] > lockOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: subtraction overflow'
                    else:
                        if balanceOf[address(this.address)] > 0:
                            if not delegates[address(this.address)]:
                                if delegates[address(msg.sender)]:
                                    if numCheckpoints[stor16[address(msg.sender)]] > 0:
                                        if checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 + balanceOf[address(this.address)] < checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        51,
                                                        0x7342414f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                        mem[467 len 13],
                                                        Mask(152, -256, mem[467 len 13]) << 256
                                        if numCheckpoints[stor16[address(msg.sender)]] <= 0:
                                            checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                            checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 + balanceOf[address(this.address)]
                                            numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                        else:
                                            if checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                                                checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 += balanceOf[address(this.address)]
                                            else:
                                                checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                                checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 + balanceOf[address(this.address)]
                                                numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                        emit DelegateVotesChanged(checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256, checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 + balanceOf[address(this.address)], delegates[address(msg.sender)]);
                                    else:
                                        if balanceOf[address(this.address)] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        51,
                                                        0x7342414f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                        mem[467 len 13],
                                                        Mask(152, -256, mem[467 len 13]) << 256
                                        if numCheckpoints[stor16[address(msg.sender)]] <= 0:
                                            checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                            checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = balanceOf[address(this.address)]
                                            numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                        else:
                                            if checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                                                checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 = balanceOf[address(this.address)]
                                            else:
                                                checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                                checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = balanceOf[address(this.address)]
                                                numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                        emit DelegateVotesChanged(0, balanceOf[address(this.address)], delegates[address(msg.sender)]);
                            else:
                                if numCheckpoints[stor16[address(this.address)]] > 0:
                                    if balanceOf[address(this.address)] > checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]] - 1 << 224].field_256:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x7342414f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                    mem[531 len 13],
                                                    Mask(152, -256, mem[531 len 13]) << 256
                                    if numCheckpoints[stor16[address(this.address)]] <= 0:
                                        checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]]].field_0 = uint32(block.number)
                                        checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]]].field_256 = checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]] - 1 << 224].field_256 - balanceOf[address(this.address)]
                                        numCheckpoints[stor16[address(this.address)]] = uint32(numCheckpoints[stor16[address(this.address)]] + 1)
                                        emit DelegateVotesChanged(checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]] - 1 << 224].field_256, checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]] - 1 << 224].field_256 - balanceOf[address(this.address)], delegates[address(this.address)]);
                                        if delegates[address(msg.sender)]:
                                            if numCheckpoints[stor16[address(msg.sender)]] > 0:
                                                if checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 + balanceOf[address(this.address)] < checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if block.number >= 4294967296:
                                                    revert with 0, 
                                                                32,
                                                                51,
                                                                0x7342414f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                                mem[691 len 13],
                                                                Mask(152, -256, mem[691 len 13]) << 256
                                                if numCheckpoints[stor16[address(msg.sender)]] <= 0:
                                                    checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                                    checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 + balanceOf[address(this.address)]
                                                    numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                                else:
                                                    if checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                                                        checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 += balanceOf[address(this.address)]
                                                    else:
                                                        checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                                        checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 + balanceOf[address(this.address)]
                                                        numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                                emit DelegateVotesChanged(checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256, checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 + balanceOf[address(this.address)], delegates[address(msg.sender)]);
                                            else:
                                                if balanceOf[address(this.address)] < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if block.number >= 4294967296:
                                                    revert with 0, 
                                                                32,
                                                                51,
                                                                0x7342414f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                                mem[691 len 13],
                                                                Mask(152, -256, mem[691 len 13]) << 256
                                                if numCheckpoints[stor16[address(msg.sender)]] <= 0:
                                                    checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                                    checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = balanceOf[address(this.address)]
                                                    numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                                else:
                                                    if checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                                                        checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 = balanceOf[address(this.address)]
                                                    else:
                                                        checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                                        checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = balanceOf[address(this.address)]
                                                        numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                                emit DelegateVotesChanged(0, balanceOf[address(this.address)], delegates[address(msg.sender)]);
                                    else:
                                        if checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]] - 1 << 224].field_256 -= balanceOf[address(this.address)]
                                            emit DelegateVotesChanged(checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]] - 1 << 224].field_256, checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]] - 1 << 224].field_256 - balanceOf[address(this.address)], delegates[address(this.address)]);
                                            if delegates[address(msg.sender)]:
                                                if numCheckpoints[stor16[address(msg.sender)]] > 0:
                                                    if checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 + balanceOf[address(this.address)] < checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if block.number >= 4294967296:
                                                        revert with 0, 
                                                                    32,
                                                                    51,
                                                                    0x7342414f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                                    mem[627 len 13],
                                                                    Mask(152, -256, mem[627 len 13]) << 256
                                                    if numCheckpoints[stor16[address(msg.sender)]] <= 0:
                                                        checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                                        checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 + balanceOf[address(this.address)]
                                                        numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                                    else:
                                                        if checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                                                            checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 += balanceOf[address(this.address)]
                                                        else:
                                                            checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                                            checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 + balanceOf[address(this.address)]
                                                            numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                                    emit DelegateVotesChanged(checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256, checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 + balanceOf[address(this.address)], delegates[address(msg.sender)]);
                                                else:
                                                    if balanceOf[address(this.address)] < 0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if block.number >= 4294967296:
                                                        revert with 0, 
                                                                    32,
                                                                    51,
                                                                    0x7342414f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                                    mem[627 len 13],
                                                                    Mask(152, -256, mem[627 len 13]) << 256
                                                    if numCheckpoints[stor16[address(msg.sender)]] <= 0:
                                                        checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                                        checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = balanceOf[address(this.address)]
                                                        numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                                    else:
                                                        if checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                                                            checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 = balanceOf[address(this.address)]
                                                        else:
                                                            checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                                            checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = balanceOf[address(this.address)]
                                                            numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                                    emit DelegateVotesChanged(0, balanceOf[address(this.address)], delegates[address(msg.sender)]);
                                        else:
                                            checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]]].field_0 = uint32(block.number)
                                            checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]]].field_256 = checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]] - 1 << 224].field_256 - balanceOf[address(this.address)]
                                            numCheckpoints[stor16[address(this.address)]] = uint32(numCheckpoints[stor16[address(this.address)]] + 1)
                                            emit DelegateVotesChanged(checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]] - 1 << 224].field_256, checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]] - 1 << 224].field_256 - balanceOf[address(this.address)], delegates[address(this.address)]);
                                            if delegates[address(msg.sender)]:
                                                if numCheckpoints[stor16[address(msg.sender)]] > 0:
                                                    if checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 + balanceOf[address(this.address)] < checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if block.number >= 4294967296:
                                                        revert with 0, 
                                                                    32,
                                                                    51,
                                                                    0x7342414f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                                    mem[691 len 13],
                                                                    Mask(152, -256, mem[691 len 13]) << 256
                                                    if numCheckpoints[stor16[address(msg.sender)]] <= 0:
                                                        checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                                        checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 + balanceOf[address(this.address)]
                                                        numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                                    else:
                                                        if checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                                                            checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 += balanceOf[address(this.address)]
                                                        else:
                                                            checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                                            checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 + balanceOf[address(this.address)]
                                                            numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                                    emit DelegateVotesChanged(checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256, checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 + balanceOf[address(this.address)], delegates[address(msg.sender)]);
                                                else:
                                                    if balanceOf[address(this.address)] < 0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if block.number >= 4294967296:
                                                        revert with 0, 
                                                                    32,
                                                                    51,
                                                                    0x7342414f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                                    mem[691 len 13],
                                                                    Mask(152, -256, mem[691 len 13]) << 256
                                                    if numCheckpoints[stor16[address(msg.sender)]] <= 0:
                                                        checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                                        checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = balanceOf[address(this.address)]
                                                        numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                                    else:
                                                        if checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                                                            checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 = balanceOf[address(this.address)]
                                                        else:
                                                            checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                                            checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = balanceOf[address(this.address)]
                                                            numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                                    emit DelegateVotesChanged(0, balanceOf[address(this.address)], delegates[address(msg.sender)]);
                                else:
                                    if balanceOf[address(this.address)] > 0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    51,
                                                    0x7342414f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                    mem[531 len 13],
                                                    Mask(152, -256, mem[531 len 13]) << 256
                                    if numCheckpoints[stor16[address(this.address)]] <= 0:
                                        checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]]].field_0 = uint32(block.number)
                                        checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]]].field_256 = -balanceOf[address(this.address)]
                                        numCheckpoints[stor16[address(this.address)]] = uint32(numCheckpoints[stor16[address(this.address)]] + 1)
                                        emit DelegateVotesChanged(0, -balanceOf[address(this.address)], delegates[address(this.address)]);
                                        if delegates[address(msg.sender)]:
                                            if numCheckpoints[stor16[address(msg.sender)]] > 0:
                                                if checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 + balanceOf[address(this.address)] < checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if block.number >= 4294967296:
                                                    revert with 0, 
                                                                32,
                                                                51,
                                                                0x7342414f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                                mem[691 len 13],
                                                                Mask(152, -256, mem[691 len 13]) << 256
                                                if numCheckpoints[stor16[address(msg.sender)]] <= 0:
                                                    checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                                    checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 + balanceOf[address(this.address)]
                                                    numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                                else:
                                                    if checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                                                        checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 += balanceOf[address(this.address)]
                                                    else:
                                                        checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                                        checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 + balanceOf[address(this.address)]
                                                        numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                                emit DelegateVotesChanged(checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256, checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 + balanceOf[address(this.address)], delegates[address(msg.sender)]);
                                            else:
                                                if balanceOf[address(this.address)] < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if block.number >= 4294967296:
                                                    revert with 0, 
                                                                32,
                                                                51,
                                                                0x7342414f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                                mem[691 len 13],
                                                                Mask(152, -256, mem[691 len 13]) << 256
                                                if numCheckpoints[stor16[address(msg.sender)]] <= 0:
                                                    checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                                    checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = balanceOf[address(this.address)]
                                                    numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                                else:
                                                    if checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                                                        checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 = balanceOf[address(this.address)]
                                                    else:
                                                        checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                                        checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = balanceOf[address(this.address)]
                                                        numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                                emit DelegateVotesChanged(0, balanceOf[address(this.address)], delegates[address(msg.sender)]);
                                    else:
                                        if checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]] - 1 << 224].field_256 = -balanceOf[address(this.address)]
                                            emit DelegateVotesChanged(0, -balanceOf[address(this.address)], delegates[address(this.address)]);
                                            if delegates[address(msg.sender)]:
                                                if numCheckpoints[stor16[address(msg.sender)]] > 0:
                                                    if checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 + balanceOf[address(this.address)] < checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if block.number >= 4294967296:
                                                        revert with 0, 
                                                                    32,
                                                                    51,
                                                                    0x7342414f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                                    mem[627 len 13],
                                                                    Mask(152, -256, mem[627 len 13]) << 256
                                                    if numCheckpoints[stor16[address(msg.sender)]] <= 0:
                                                        checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                                        checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 + balanceOf[address(this.address)]
                                                        numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                                    else:
                                                        if checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                                                            checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 += balanceOf[address(this.address)]
                                                        else:
                                                            checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                                            checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 + balanceOf[address(this.address)]
                                                            numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                                    emit DelegateVotesChanged(checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256, checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 + balanceOf[address(this.address)], delegates[address(msg.sender)]);
                                                else:
                                                    if balanceOf[address(this.address)] < 0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if block.number >= 4294967296:
                                                        revert with 0, 
                                                                    32,
                                                                    51,
                                                                    0x7342414f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                                    mem[627 len 13],
                                                                    Mask(152, -256, mem[627 len 13]) << 256
                                                    if numCheckpoints[stor16[address(msg.sender)]] <= 0:
                                                        checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                                        checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = balanceOf[address(this.address)]
                                                        numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                                    else:
                                                        if checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                                                            checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 = balanceOf[address(this.address)]
                                                        else:
                                                            checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                                            checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = balanceOf[address(this.address)]
                                                            numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                                    emit DelegateVotesChanged(0, balanceOf[address(this.address)], delegates[address(msg.sender)]);
                                        else:
                                            checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]]].field_0 = uint32(block.number)
                                            checkpoints[stor16[address(this.address)]][stor18[stor16[address(this.address)]]].field_256 = -balanceOf[address(this.address)]
                                            numCheckpoints[stor16[address(this.address)]] = uint32(numCheckpoints[stor16[address(this.address)]] + 1)
                                            emit DelegateVotesChanged(0, -balanceOf[address(this.address)], delegates[address(this.address)]);
                                            if delegates[address(msg.sender)]:
                                                if numCheckpoints[stor16[address(msg.sender)]] > 0:
                                                    if checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 + balanceOf[address(this.address)] < checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if block.number >= 4294967296:
                                                        revert with 0, 
                                                                    32,
                                                                    51,
                                                                    0x7342414f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                                    mem[691 len 13],
                                                                    Mask(152, -256, mem[691 len 13]) << 256
                                                    if numCheckpoints[stor16[address(msg.sender)]] <= 0:
                                                        checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                                        checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 + balanceOf[address(this.address)]
                                                        numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                                    else:
                                                        if checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                                                            checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 += balanceOf[address(this.address)]
                                                        else:
                                                            checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                                            checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 + balanceOf[address(this.address)]
                                                            numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                                    emit DelegateVotesChanged(checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256, checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 + balanceOf[address(this.address)], delegates[address(msg.sender)]);
                                                else:
                                                    if balanceOf[address(this.address)] < 0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if block.number >= 4294967296:
                                                        revert with 0, 
                                                                    32,
                                                                    51,
                                                                    0x7342414f3a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                                    mem[691 len 13],
                                                                    Mask(152, -256, mem[691 len 13]) << 256
                                                    if numCheckpoints[stor16[address(msg.sender)]] <= 0:
                                                        checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                                        checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = balanceOf[address(this.address)]
                                                        numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                                    else:
                                                        if checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                                                            checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 = balanceOf[address(this.address)]
                                                        else:
                                                            checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                                                            checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = balanceOf[address(this.address)]
                                                            numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                                                    emit DelegateVotesChanged(0, balanceOf[address(this.address)], delegates[address(msg.sender)]);
                            if balanceOf[address(this.address)] > lockOf[address(msg.sender)]:
                                revert with 0, 'SafeMath: subtraction overflow'
                    lockOf[address(msg.sender)] -= balanceOf[address(this.address)]
                    lastUnlockBlock[address(msg.sender)] = block.number
                    if balanceOf[address(this.address)] > lockedSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    lockedSupply -= balanceOf[address(this.address)]
}



}
