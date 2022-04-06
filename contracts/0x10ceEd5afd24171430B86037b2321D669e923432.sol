contract main {




// =====================  Runtime code  =====================


const maxSupply = 55555 * 10^18

const DOMAIN_TYPEHASH = 0x8cad95687ba82c2ce50e74f7b754645e5117c3a5bec8151c0726d5857980a866

const DELEGATION_TYPEHASH = 0xe48329057bfd03d55e49b547132e39cffd9c1820ad7b9d4c5307691425d15adf


address owner;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
uint256 stor4;
uint16 limitMaxTransferAmountRate; offset 160
uint16 maxTransferAmountRate; offset 176
uint16 mediumTransferLimitH; offset 192
uint16 mediumTransferLimitL; offset 208
uint16 minTransferAmountRate; offset 224
uint16 limitMinTransferAmountRate; offset 240
address devAddress;
mapping of uint8 stor6;
array of struct name;
array of uint256 symbol;
uint8 decimals;
address stor9;
address feeAddress; offset 8
mapping of address delegates;
mapping of struct checkpoints;
mapping of uint32 numCheckpoints;
mapping of uint256 nonces;
array of struct lastPosInverted;
uint256 chatFee;
uint256 stor16;

function name() payable {
    return name[0 len name.length].field_0
}

function limitMinTransferAmountRate() payable {
    return limitMinTransferAmountRate
}

function totalSupply() payable {
    return totalSupply
}

function isExcludedFromAntiWhale(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor6[address(arg1)])
}

function decimals() payable {
    return decimals
}

function devAddress() payable {
    return devAddress
}

function maxTransferAmountRate() payable {
    return maxTransferAmountRate
}

function feeAddress() payable {
    return feeAddress
}

function getLastPosInverted(uint256 arg1) payable {
    return stor[('name', 'lastPosInverted', 14) + lastPosInverted.length + -arg1 - 1][0 len stor[('name', 'lastPosInverted', 14) + lastPosInverted.length + -arg1 - 1].length].field_0
}

function delegates(address arg1) payable {
    require calldata.size - 4 >= 32
    return delegates[address(arg1)]
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

function owner() payable {
    return owner
}

function getLastPos(uint256 arg1) payable {
    return lastPosInverted[arg1][0 len lastPosInverted[arg1].length].field_0
}

function mediumTransferLimitL() payable {
    return mediumTransferLimitL
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function getChatFee() payable {
    return chatFee
}

function minTransferAmountRate() payable {
    return minTransferAmountRate
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function checkpoints(address arg1, uint32 arg2) payable {
    require calldata.size - 4 >= 64
    return uint32(checkpoints[arg1][arg2].field_0), checkpoints[arg1][arg2].field_256
}

function limitMaxTransferAmountRate() payable {
    return limitMaxTransferAmountRate
}

function mediumTransferLimitH() payable {
    return mediumTransferLimitH
}

function getLatestMessage() payable {
    return stor[('name', 'lastPosInverted', 14) + lastPosInverted.length - 1][0 len stor[('name', 'lastPosInverted', 14) + lastPosInverted.length - 1].length].field_0
}

function _fallback() payable {
    revert
}

function getArrayLength() payable {
    return (lastPosInverted.length - 1)
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'tOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function getCurrentVotes(address arg1) payable {
    require calldata.size - 4 >= 32
    if numCheckpoints[address(arg1)]:
        return checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256
    else:
        return 0
}

function setFeeAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    if devAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    56,
                    0x656465762066756e6374696f6e3a20796f7520646f206e6f742068617665207065726d697373696f6e20746f206578656375746520746869,
                    mem[220 len 8]
    feeAddress = arg1
}

function setChatFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require chatFee <= stor16
    if devAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    56,
                    0x656465762066756e6374696f6e3a20796f7520646f206e6f742068617665207065726d697373696f6e20746f206578656375746520746869,
                    mem[220 len 8]
    chatFee = arg1
}

function minTransferAmount() payable {
    if not totalSupply:
        return 0
    if minTransferAmountRate * totalSupply / totalSupply != minTransferAmountRate:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    return (minTransferAmountRate * totalSupply / 10000)
}

function maxTransferAmount() payable {
    if not totalSupply:
        return 0
    if maxTransferAmountRate * totalSupply / totalSupply != maxTransferAmountRate:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    return (maxTransferAmountRate * totalSupply / 10000)
}

function setExcludedFromAntiWhale(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    if devAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    56,
                    0x656465762066756e6374696f6e3a20796f7520646f206e6f742068617665207065726d697373696f6e20746f206578656375746520746869,
                    mem[220 len 8]
    stor6[address(arg1)] = uint8(arg2)
}

function setDev(address arg1) payable {
    require calldata.size - 4 >= 32
    if devAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    56,
                    0x656465762066756e6374696f6e3a20796f7520646f206e6f742068617665207065726d697373696f6e20746f206578656375746520746869,
                    mem[220 len 8]
    if not arg1:
        revert with 0, '0 address.'
    devAddress = arg1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'tOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x644f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function devSendChat(string arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    if devAddress != msg.sender:
        revert with 0, 
                    32,
                    56,
                    0x656465762066756e6374696f6e3a20796f7520646f206e6f742068617665207065726d697373696f6e20746f206578656375746520746869,
                    mem[ceil32(arg1.length) + 252 len 8]
    lastPosInverted.length++
    lastPosInverted[lastPosInverted.length][].field_0 = Array(len=arg1.length, data=arg1[all])
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
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

function devDeleteAt(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if devAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    56,
                    0x656465762066756e6374696f6e3a20796f7520646f206e6f742068617665207065726d697373696f6e20746f206578656375746520746869,
                    mem[220 len 8]
    require arg1 < lastPosInverted.length
    bool(lastPosInverted[arg1].field_0) = 0
    uint255(lastPosInverted[arg1].field_1) = 11
    Mask(88, 0, lastPosInverted[arg1].field_168) = 75106368526294054340927548
    idx = 0
    while lastPosInverted[arg1].length + 31 / 32 > idx:
        lastPosInverted[arg1 + idx].field_0 = 0
        idx = idx + 1
        continue 
}

function decreaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 > allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 
                    32,
                    37,
                    0x2e45524332303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572,
                    mem[165 len 27],
                    mem[219 len 5]
    if not msg.sender:
        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[296 len 28]
    if not arg1:
        revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[294 len 30]
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 + allowance[address(msg.sender)][address(arg1)] < allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[200 len 28]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((arg2 + allowance[address(msg.sender)][address(arg1)]), msg.sender, arg1);
    return 1
}

function mint(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'tOwnable: caller is not the owne'
    if arg1 + stor4 < stor4:
        revert with 0, 'SafeMath: addition overflow'
    if arg1 + stor4 > 55555 * 10^18:
        revert with 0, 'Max supply reached'
    if not msg.sender:
        revert with 0, 'ERC20: mint to the zero address'
    if arg1 + stor4 < stor4:
        revert with 0, 'SafeMath: addition overflow'
    if arg1 + stor4 > 55555 * 10^18:
        revert with 0, 'Max supply reached'
    if arg1 + totalSupply < totalSupply:
        revert with 0, 'SafeMath: addition overflow'
    totalSupply += arg1
    if arg1 + stor4 < stor4:
        revert with 0, 'SafeMath: addition overflow'
    stor4 += arg1
    if arg1 + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(msg.sender)] += arg1
    emit Transfer(arg1, 0, msg.sender);
    return 1
}

function updateMinTransferAmountRate(uint16 arg1) payable {
    require calldata.size - 4 >= 32
    if devAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    56,
                    0x656465762066756e6374696f6e3a20796f7520646f206e6f742068617665207065726d697373696f6e20746f206578656375746520746869,
                    mem[220 len 8]
    if arg1 > mediumTransferLimitL:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    87,
                    0x725370686572653a3a7570646174654d696e5472616e73666572416d6f756e74526174653a204d6178207472616e7366657220616d6f756e742072617465206d757374206265206c6f776572207468616e206d65646975,
                    mem[251 len 9]
    if arg1 < limitMinTransferAmountRate:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    96,
                    0x645370686572653a3a7570646174654d696e5472616e73666572416d6f756e74526174653a204d6178207472616e7366657220616d6f756e742072617465206d757374206e6f742065786365656420746865206d6178696d756d206c696d6974
    minTransferAmountRate = arg1
    emit 0x24d1b323: arg1 << 240, arg1, msg.sender
}

function updateMaxTransferAmountRate(uint16 arg1) payable {
    require calldata.size - 4 >= 32
    if devAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    56,
                    0x656465762066756e6374696f6e3a20796f7520646f206e6f742068617665207065726d697373696f6e20746f206578656375746520746869,
                    mem[220 len 8]
    if arg1 < mediumTransferLimitH:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    89,
                    0x655370686572653a3a7570646174654d61785472616e73666572416d6f756e74526174653a204d6178207472616e7366657220616d6f756e742072617465206d75737420626520686967686572207468616e206d656469756d,
                    mem[253 len 7]
    if arg1 > limitMaxTransferAmountRate:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    96,
                    0x735370686572653a3a7570646174654d61785472616e73666572416d6f756e74526174653a204d6178207472616e7366657220616d6f756e742072617465206d757374206e6f742065786365656420746865206d6178696d756d206c696d6974
    maxTransferAmountRate = arg1
    emit MaxTransferAmountRateUpdated(arg1 << 240, arg1, msg.sender);
}

function devDeleteAll() payable {
    if devAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    56,
                    0x656465762066756e6374696f6e3a20796f7520646f206e6f742068617665207065726d697373696f6e20746f206578656375746520746869,
                    mem[220 len 8]
    mem[96] = 1
    mem[64] = 160
    mem[128] = 96
    lastPosInverted.length = 1
    mem[0] = 14
    s = 0
    idx = 128
    while 160 > idx:
        _13 = mem[idx]
        _14 = mem[mem[idx]]
        mem[0] = s + sha3(mem[0])
        stor[s + sha3(mem[0])] = (2 * _14) + 1
        u = sha3(s + sha3(mem[0]))
        t = _13 + 32
        while _13 + _14 + 32 > t:
            stor[u] = mem[t]
            u = u + 1
            t = t + 32
            continue 
        t = sha3(s + sha3(mem[0])) + (Mask(251, 0, _14 + 31) >> 5)
        while sha3(s + sha3(mem[0])) + (stor[s + sha3(mem[0])].length + 31 / 32) > t:
            stor[t] = 0
            t = t + 1
            continue 
        s = s + 1
        idx = idx + 32
        continue 
    idx = s
    while sha3(14) + lastPosInverted.length > idx:
        stor[idx] = 0
        if 31 < stor[idx].length:
            mem[0] = idx
            s = sha3(idx)
            while sha3(idx) + (stor[idx].length + 31 / 32) > s:
                stor[s] = 0
                s = s + 1
                continue 
        idx = idx + 1
        continue 
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x2e45524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                    mem[201 len 27]
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[199 len 29]
    if arg3 > balanceOf[address(arg1)]:
        revert with 0, 
                    32,
                    38,
                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                    mem[166 len 26],
                    mem[218 len 6]
    balanceOf[address(arg1)] -= arg3
    if arg3 + balanceOf[arg2] < balanceOf[arg2]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    emit Transfer(arg3, arg1, arg2);
    if arg3 > allowance[address(arg1)][address(msg.sender)]:
        revert with 0, 
                    32,
                    40,
                    0x7745524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                    mem[264 len 24],
                    mem[312 len 8]
    if not arg1:
        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[392 len 28]
    if not msg.sender:
        revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    return 1
}

function getPriorVotes(address arg1, uint256 arg2) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    if arg2 >= block.number:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x2e5370686572653a3a6765745072696f72566f7465733a206e6f74207965742064657465726d696e65,
                    mem[205 len 23]
    if not numCheckpoints[address(arg1)]:
        return 0
    if arg2 >= uint32(checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_0):
        return checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256
    if arg2 < uint32(checkpoints[address(arg1)][0].field_0):
        return 0
    idx = 0
    while uint32(numCheckpoints[address(arg1)] - 1) > uint32(idx):
        _32 = mem[64]
        mem[64] = mem[64] + 64
        mem[_32] = 0
        mem[_32 + 32] = 0
        mem[0] = uint32(numCheckpoints[address(arg1)] + -(uint32(numCheckpoints[address(arg1)] + -idx - 1) / 2) - 1)
        mem[32] = sha3(address(arg1), 11)
        _35 = mem[64]
        mem[64] = mem[64] + 64
        mem[_35] = uint32(checkpoints[address(arg1)][stor12[address(arg1)] + -(uint32(stor12[address(arg1)] + -idx - 1) / 2) - 1 << 224].field_0)
        mem[_35 + 32] = checkpoints[address(arg1)][stor12[address(arg1)] + -(uint32(stor12[address(arg1)] + -idx - 1) / 2) - 1 << 224].field_256
        if arg2 == uint32(checkpoints[address(arg1)][stor12[address(arg1)] + -(uint32(stor12[address(arg1)] + -idx - 1) / 2) - 1 << 224].field_0):
            return checkpoints[address(arg1)][stor12[address(arg1)] + -(uint32(stor12[address(arg1)] + -idx - 1) / 2) - 1 << 224].field_256
        if arg2 <= uint32(checkpoints[address(arg1)][stor12[address(arg1)] + -(uint32(stor12[address(arg1)] + -idx - 1) / 2) - 1 << 224].field_0):
            idx = idx
            continue 
        idx = numCheckpoints[address(arg1)] + -(uint32(numCheckpoints[address(arg1)] + -idx - 1) / 2) - 1
        continue 
    return checkpoints[address(arg1)][idx << 224].field_256
}

function mint(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'tOwnable: caller is not the owne'
    if not arg1:
        revert with 0, 'ERC20: mint to the zero address'
    if arg2 + stor4 < stor4:
        revert with 0, 'SafeMath: addition overflow'
    if arg2 + stor4 > 55555 * 10^18:
        revert with 0, 'Max supply reached'
    if arg2 + totalSupply < totalSupply:
        revert with 0, 'SafeMath: addition overflow'
    totalSupply += arg2
    if arg2 + stor4 < stor4:
        revert with 0, 'SafeMath: addition overflow'
    stor4 += arg2
    if arg2 + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, 0, arg1);
    if delegates[address(arg1)] != 0:
        if arg2 > 0:
            if delegates[address(arg1)]:
                if numCheckpoints[stor10[address(arg1)]]:
                    if arg2 + checkpoints[stor10[address(arg1)]][stor12[stor10[address(arg1)]] - 1 << 224].field_256 < checkpoints[stor10[address(arg1)]][stor12[stor10[address(arg1)]] - 1 << 224].field_256:
                        revert with 0, 'SafeMath: addition overflow'
                    if block.number >= 4294967296:
                        revert with 0, 
                                    32,
                                    54,
                                    0x655370686572653a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                    Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[182 len 10])
                    if numCheckpoints[stor10[address(arg1)]] <= 0:
                        uint32(checkpoints[stor10[address(arg1)]][stor12[stor10[address(arg1)]]].field_0) = uint32(block.number)
                        checkpoints[stor10[address(arg1)]][stor12[stor10[address(arg1)]]].field_256 = arg2 + checkpoints[stor10[address(arg1)]][stor12[stor10[address(arg1)]] - 1 << 224].field_256
                        numCheckpoints[stor10[address(arg1)]] = uint32(numCheckpoints[stor10[address(arg1)]] + 1)
                    else:
                        if uint32(checkpoints[stor10[address(arg1)]][stor12[stor10[address(arg1)]] - 1 << 224].field_0) == uint32(block.number):
                            checkpoints[stor10[address(arg1)]][stor12[stor10[address(arg1)]] - 1 << 224].field_256 += arg2
                        else:
                            uint32(checkpoints[stor10[address(arg1)]][stor12[stor10[address(arg1)]]].field_0) = uint32(block.number)
                            checkpoints[stor10[address(arg1)]][stor12[stor10[address(arg1)]]].field_256 = arg2 + checkpoints[stor10[address(arg1)]][stor12[stor10[address(arg1)]] - 1 << 224].field_256
                            numCheckpoints[stor10[address(arg1)]] = uint32(numCheckpoints[stor10[address(arg1)]] + 1)
                    emit DelegateVotesChanged(checkpoints[stor10[address(arg1)]][stor12[stor10[address(arg1)]] - 1 << 224].field_256, arg2 + checkpoints[stor10[address(arg1)]][stor12[stor10[address(arg1)]] - 1 << 224].field_256, delegates[address(arg1)]);
                else:
                    if arg2 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if block.number >= 4294967296:
                        revert with 0, 
                                    32,
                                    54,
                                    0x655370686572653a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                    Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[182 len 10])
                    if numCheckpoints[stor10[address(arg1)]] <= 0:
                        uint32(checkpoints[stor10[address(arg1)]][stor12[stor10[address(arg1)]]].field_0) = uint32(block.number)
                        checkpoints[stor10[address(arg1)]][stor12[stor10[address(arg1)]]].field_256 = arg2
                        numCheckpoints[stor10[address(arg1)]] = uint32(numCheckpoints[stor10[address(arg1)]] + 1)
                    else:
                        if uint32(checkpoints[stor10[address(arg1)]][stor12[stor10[address(arg1)]] - 1 << 224].field_0) == uint32(block.number):
                            checkpoints[stor10[address(arg1)]][stor12[stor10[address(arg1)]] - 1 << 224].field_256 = arg2
                        else:
                            uint32(checkpoints[stor10[address(arg1)]][stor12[stor10[address(arg1)]]].field_0) = uint32(block.number)
                            checkpoints[stor10[address(arg1)]][stor12[stor10[address(arg1)]]].field_256 = arg2
                            numCheckpoints[stor10[address(arg1)]] = uint32(numCheckpoints[stor10[address(arg1)]] + 1)
                    emit DelegateVotesChanged(0, arg2, delegates[address(arg1)]);
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if stor6[address(msg.sender)]:
        if not msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        37,
                        0x2e45524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                        mem[201 len 27]
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        35,
                        0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                        mem[199 len 29]
        if arg2 > balanceOf[address(msg.sender)]:
            revert with 0, 
                        32,
                        38,
                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                        mem[166 len 26],
                        mem[218 len 6]
    else:
        if stor6[address(arg1)]:
            if not msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            37,
                            0x2e45524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                            mem[201 len 27]
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            35,
                            0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                            mem[199 len 29]
            if arg2 > balanceOf[address(msg.sender)]:
                revert with 0, 
                            32,
                            38,
                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                            mem[166 len 26],
                            mem[218 len 6]
        else:
            if not totalSupply:
                if arg2 > 0:
                    revert with 0, 
                                32,
                                64,
                                0x655370686572653a3a616e74695768616c653a205472616e7366657220616d6f756e74206578636565647320746865206d61785472616e73666572416d6f756e
            else:
                if maxTransferAmountRate * totalSupply / totalSupply != maxTransferAmountRate:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if arg2 > maxTransferAmountRate * totalSupply / 10000:
                    revert with 0, 
                                32,
                                64,
                                0x655370686572653a3a616e74695768616c653a205472616e7366657220616d6f756e74206578636565647320746865206d61785472616e73666572416d6f756e
            if not totalSupply:
                if arg2 < 0:
                    revert with 0, 
                                32,
                                62,
                                0x2e5370686572653a3a616e74695768616c653a205472616e7366657220616d6f756e74206c657373207468616e206d696e5472616e73666572416d6f756e,
                                mem[354 len 2]
            else:
                if minTransferAmountRate * totalSupply / totalSupply != minTransferAmountRate:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                if arg2 < minTransferAmountRate * totalSupply / 10000:
                    revert with 0, 
                                32,
                                62,
                                0x2e5370686572653a3a616e74695768616c653a205472616e7366657220616d6f756e74206c657373207468616e206d696e5472616e73666572416d6f756e,
                                mem[354 len 2]
            if not msg.sender:
                revert with 0, 32, 37, 0x2e45524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[329 len 27]
            if not arg1:
                revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[327 len 29]
            if arg2 > balanceOf[address(msg.sender)]:
                revert with 0, 
                            32,
                            38,
                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                            mem[294 len 26],
                            mem[346 len 6]
    ('le', ('param', 'arg2'), ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balanceOf', 1))))
    balanceOf[address(msg.sender)] -= arg2
    if arg2 + balanceOf[arg1] < balanceOf[arg1]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function sendChatWithFee(string arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    if stor6[address(msg.sender)]:
        if not msg.sender:
            revert with 0, 
                        32,
                        37,
                        0x2e45524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                        mem[ceil32(arg1.length) + 233 len 27]
        if not feeAddress:
            revert with 0, 
                        32,
                        35,
                        0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                        mem[ceil32(arg1.length) + 231 len 29]
        if chatFee > balanceOf[address(msg.sender)]:
            revert with 0, 
                        32,
                        38,
                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                        mem[ceil32(arg1.length) + 198 len 26],
                        mem[ceil32(arg1.length) + 250 len 6]
    else:
        if stor6[address(stor9.field_0)]:
            if not msg.sender:
                revert with 0, 
                            32,
                            37,
                            0x2e45524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                            mem[ceil32(arg1.length) + 233 len 27]
            if not feeAddress:
                revert with 0, 
                            32,
                            35,
                            0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                            mem[ceil32(arg1.length) + 231 len 29]
            if chatFee > balanceOf[address(msg.sender)]:
                revert with 0, 
                            32,
                            38,
                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                            mem[ceil32(arg1.length) + 198 len 26],
                            mem[ceil32(arg1.length) + 250 len 6]
        else:
            if not totalSupply:
                if chatFee > 0:
                    revert with 0, 
                                32,
                                64,
                                0x655370686572653a3a616e74695768616c653a205472616e7366657220616d6f756e74206578636565647320746865206d61785472616e73666572416d6f756e
            else:
                if maxTransferAmountRate * totalSupply / totalSupply != maxTransferAmountRate:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[ceil32(arg1.length) + 229 len 31]
                if chatFee > maxTransferAmountRate * totalSupply / 10000:
                    revert with 0, 
                                32,
                                64,
                                0x655370686572653a3a616e74695768616c653a205472616e7366657220616d6f756e74206578636565647320746865206d61785472616e73666572416d6f756e
            if not totalSupply:
                if chatFee < 0:
                    revert with 0, 
                                32,
                                62,
                                0x2e5370686572653a3a616e74695768616c653a205472616e7366657220616d6f756e74206c657373207468616e206d696e5472616e73666572416d6f756e,
                                mem[ceil32(arg1.length) + 386 len 2]
            else:
                if minTransferAmountRate * totalSupply / totalSupply != minTransferAmountRate:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[ceil32(arg1.length) + 293 len 31]
                if chatFee < minTransferAmountRate * totalSupply / 10000:
                    revert with 0, 
                                32,
                                62,
                                0x2e5370686572653a3a616e74695768616c653a205472616e7366657220616d6f756e74206c657373207468616e206d696e5472616e73666572416d6f756e,
                                mem[ceil32(arg1.length) + 386 len 2]
            if not msg.sender:
                revert with 0, 
                            32,
                            37,
                            0x2e45524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                            mem[ceil32(arg1.length) + 361 len 27]
            if not feeAddress:
                revert with 0, 
                            32,
                            35,
                            0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                            mem[ceil32(arg1.length) + 359 len 29]
            if chatFee > balanceOf[address(msg.sender)]:
                revert with 0, 
                            32,
                            38,
                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                            mem[ceil32(arg1.length) + 326 len 26],
                            mem[ceil32(arg1.length) + 378 len 6]
    ('le', ('stor', ('name', 'chatFee', 15)), ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balanceOf', 1))))
    balanceOf[address(msg.sender)] -= chatFee
    if chatFee + balanceOf[address(stor9.field_8)] < balanceOf[address(stor9.field_8)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(stor9.field_0)] = chatFee + balanceOf[address(stor9.field_8)]
    emit Transfer(chatFee, msg.sender, feeAddress);
    lastPosInverted.length++
    lastPosInverted[lastPosInverted.length][].field_0 = Array(len=arg1.length, data=arg1[all])
}

function delegate(address arg1) payable {
    require calldata.size - 4 >= 32
    delegates[address(msg.sender)] = arg1
    emit DelegateChanged(msg.sender, delegates[address(msg.sender)], arg1);
    if delegates[address(msg.sender)] != arg1:
        if balanceOf[address(msg.sender)] > 0:
            if not delegates[address(msg.sender)]:
                if arg1:
                    if numCheckpoints[address(arg1)]:
                        if balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256 < checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256:
                            revert with 0, 'SafeMath: addition overflow'
                        if block.number >= 4294967296:
                            revert with 0, 
                                        32,
                                        54,
                                        0x655370686572653a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                        Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[182 len 10])
                        if numCheckpoints[address(arg1)] <= 0:
                            uint32(checkpoints[address(arg1)][stor12[address(arg1)]].field_0) = uint32(block.number)
                            checkpoints[address(arg1)][stor12[address(arg1)]].field_256 = balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256
                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        else:
                            if uint32(checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_0) == uint32(block.number):
                                checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256 += balanceOf[address(msg.sender)]
                            else:
                                uint32(checkpoints[address(arg1)][stor12[address(arg1)]].field_0) = uint32(block.number)
                                checkpoints[address(arg1)][stor12[address(arg1)]].field_256 = balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256
                                numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        emit DelegateVotesChanged(checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256, arg1);
                    else:
                        if balanceOf[address(msg.sender)] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if block.number >= 4294967296:
                            revert with 0, 
                                        32,
                                        54,
                                        0x655370686572653a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                        Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[182 len 10])
                        if numCheckpoints[address(arg1)] <= 0:
                            uint32(checkpoints[address(arg1)][stor12[address(arg1)]].field_0) = uint32(block.number)
                            checkpoints[address(arg1)][stor12[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        else:
                            if uint32(checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_0) == uint32(block.number):
                                checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256 = balanceOf[address(msg.sender)]
                            else:
                                uint32(checkpoints[address(arg1)][stor12[address(arg1)]].field_0) = uint32(block.number)
                                checkpoints[address(arg1)][stor12[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], arg1);
            else:
                if numCheckpoints[stor10[address(msg.sender)]]:
                    if balanceOf[address(msg.sender)] > checkpoints[stor10[address(msg.sender)]][stor12[stor10[address(msg.sender)]] - 1 << 224].field_256:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if block.number >= 4294967296:
                        revert with 0, 
                                    32,
                                    54,
                                    0x655370686572653a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                    Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[246 len 10])
                    if numCheckpoints[stor10[address(msg.sender)]] <= 0:
                        uint32(checkpoints[stor10[address(msg.sender)]][stor12[stor10[address(msg.sender)]]].field_0) = uint32(block.number)
                        checkpoints[stor10[address(msg.sender)]][stor12[stor10[address(msg.sender)]]].field_256 = checkpoints[stor10[address(msg.sender)]][stor12[stor10[address(msg.sender)]] - 1 << 224].field_256 - balanceOf[address(msg.sender)]
                        numCheckpoints[stor10[address(msg.sender)]] = uint32(numCheckpoints[stor10[address(msg.sender)]] + 1)
                        emit DelegateVotesChanged(checkpoints[stor10[address(msg.sender)]][stor12[stor10[address(msg.sender)]] - 1 << 224].field_256, checkpoints[stor10[address(msg.sender)]][stor12[stor10[address(msg.sender)]] - 1 << 224].field_256 - balanceOf[address(msg.sender)], delegates[address(msg.sender)]);
                        if arg1:
                            if numCheckpoints[address(arg1)]:
                                if balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256 < checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                54,
                                                0x655370686572653a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                                Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[406 len 10])
                                if numCheckpoints[address(arg1)] <= 0:
                                    uint32(checkpoints[address(arg1)][stor12[address(arg1)]].field_0) = uint32(block.number)
                                    checkpoints[address(arg1)][stor12[address(arg1)]].field_256 = balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if uint32(checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_0) == uint32(block.number):
                                        checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256 += balanceOf[address(msg.sender)]
                                    else:
                                        uint32(checkpoints[address(arg1)][stor12[address(arg1)]].field_0) = uint32(block.number)
                                        checkpoints[address(arg1)][stor12[address(arg1)]].field_256 = balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                emit DelegateVotesChanged(checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256, arg1);
                            else:
                                if balanceOf[address(msg.sender)] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                54,
                                                0x655370686572653a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                                Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[406 len 10])
                                if numCheckpoints[address(arg1)] <= 0:
                                    uint32(checkpoints[address(arg1)][stor12[address(arg1)]].field_0) = uint32(block.number)
                                    checkpoints[address(arg1)][stor12[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if uint32(checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_0) == uint32(block.number):
                                        checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256 = balanceOf[address(msg.sender)]
                                    else:
                                        uint32(checkpoints[address(arg1)][stor12[address(arg1)]].field_0) = uint32(block.number)
                                        checkpoints[address(arg1)][stor12[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], arg1);
                    else:
                        if uint32(checkpoints[stor10[address(msg.sender)]][stor12[stor10[address(msg.sender)]] - 1 << 224].field_0) == uint32(block.number):
                            checkpoints[stor10[address(msg.sender)]][stor12[stor10[address(msg.sender)]] - 1 << 224].field_256 -= balanceOf[address(msg.sender)]
                            emit DelegateVotesChanged(checkpoints[stor10[address(msg.sender)]][stor12[stor10[address(msg.sender)]] - 1 << 224].field_256, checkpoints[stor10[address(msg.sender)]][stor12[stor10[address(msg.sender)]] - 1 << 224].field_256 - balanceOf[address(msg.sender)], delegates[address(msg.sender)]);
                            if arg1:
                                if numCheckpoints[address(arg1)]:
                                    if balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256 < checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    54,
                                                    0x655370686572653a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                                    Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[342 len 10])
                                    if numCheckpoints[address(arg1)] <= 0:
                                        uint32(checkpoints[address(arg1)][stor12[address(arg1)]].field_0) = uint32(block.number)
                                        checkpoints[address(arg1)][stor12[address(arg1)]].field_256 = balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if uint32(checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_0) == uint32(block.number):
                                            checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256 += balanceOf[address(msg.sender)]
                                        else:
                                            uint32(checkpoints[address(arg1)][stor12[address(arg1)]].field_0) = uint32(block.number)
                                            checkpoints[address(arg1)][stor12[address(arg1)]].field_256 = balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256, arg1);
                                else:
                                    if balanceOf[address(msg.sender)] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    54,
                                                    0x655370686572653a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                                    Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[342 len 10])
                                    if numCheckpoints[address(arg1)] <= 0:
                                        uint32(checkpoints[address(arg1)][stor12[address(arg1)]].field_0) = uint32(block.number)
                                        checkpoints[address(arg1)][stor12[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if uint32(checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_0) == uint32(block.number):
                                            checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256 = balanceOf[address(msg.sender)]
                                        else:
                                            uint32(checkpoints[address(arg1)][stor12[address(arg1)]].field_0) = uint32(block.number)
                                            checkpoints[address(arg1)][stor12[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], arg1);
                        else:
                            uint32(checkpoints[stor10[address(msg.sender)]][stor12[stor10[address(msg.sender)]]].field_0) = uint32(block.number)
                            checkpoints[stor10[address(msg.sender)]][stor12[stor10[address(msg.sender)]]].field_256 = checkpoints[stor10[address(msg.sender)]][stor12[stor10[address(msg.sender)]] - 1 << 224].field_256 - balanceOf[address(msg.sender)]
                            numCheckpoints[stor10[address(msg.sender)]] = uint32(numCheckpoints[stor10[address(msg.sender)]] + 1)
                            emit DelegateVotesChanged(checkpoints[stor10[address(msg.sender)]][stor12[stor10[address(msg.sender)]] - 1 << 224].field_256, checkpoints[stor10[address(msg.sender)]][stor12[stor10[address(msg.sender)]] - 1 << 224].field_256 - balanceOf[address(msg.sender)], delegates[address(msg.sender)]);
                            if arg1:
                                if numCheckpoints[address(arg1)]:
                                    if balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256 < checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    54,
                                                    0x655370686572653a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                                    Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[406 len 10])
                                    if numCheckpoints[address(arg1)] <= 0:
                                        uint32(checkpoints[address(arg1)][stor12[address(arg1)]].field_0) = uint32(block.number)
                                        checkpoints[address(arg1)][stor12[address(arg1)]].field_256 = balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if uint32(checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_0) == uint32(block.number):
                                            checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256 += balanceOf[address(msg.sender)]
                                        else:
                                            uint32(checkpoints[address(arg1)][stor12[address(arg1)]].field_0) = uint32(block.number)
                                            checkpoints[address(arg1)][stor12[address(arg1)]].field_256 = balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256, arg1);
                                else:
                                    if balanceOf[address(msg.sender)] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    54,
                                                    0x655370686572653a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                                    Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[406 len 10])
                                    if numCheckpoints[address(arg1)] <= 0:
                                        uint32(checkpoints[address(arg1)][stor12[address(arg1)]].field_0) = uint32(block.number)
                                        checkpoints[address(arg1)][stor12[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if uint32(checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_0) == uint32(block.number):
                                            checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256 = balanceOf[address(msg.sender)]
                                        else:
                                            uint32(checkpoints[address(arg1)][stor12[address(arg1)]].field_0) = uint32(block.number)
                                            checkpoints[address(arg1)][stor12[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], arg1);
                else:
                    if balanceOf[address(msg.sender)] > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if block.number >= 4294967296:
                        revert with 0, 
                                    32,
                                    54,
                                    0x655370686572653a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                    Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[246 len 10])
                    if numCheckpoints[stor10[address(msg.sender)]] <= 0:
                        uint32(checkpoints[stor10[address(msg.sender)]][stor12[stor10[address(msg.sender)]]].field_0) = uint32(block.number)
                        checkpoints[stor10[address(msg.sender)]][stor12[stor10[address(msg.sender)]]].field_256 = -balanceOf[address(msg.sender)]
                        numCheckpoints[stor10[address(msg.sender)]] = uint32(numCheckpoints[stor10[address(msg.sender)]] + 1)
                        emit DelegateVotesChanged(0, -balanceOf[address(msg.sender)], delegates[address(msg.sender)]);
                        if arg1:
                            if numCheckpoints[address(arg1)]:
                                if balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256 < checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                54,
                                                0x655370686572653a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                                Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[406 len 10])
                                if numCheckpoints[address(arg1)] <= 0:
                                    uint32(checkpoints[address(arg1)][stor12[address(arg1)]].field_0) = uint32(block.number)
                                    checkpoints[address(arg1)][stor12[address(arg1)]].field_256 = balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if uint32(checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_0) == uint32(block.number):
                                        checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256 += balanceOf[address(msg.sender)]
                                    else:
                                        uint32(checkpoints[address(arg1)][stor12[address(arg1)]].field_0) = uint32(block.number)
                                        checkpoints[address(arg1)][stor12[address(arg1)]].field_256 = balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                emit DelegateVotesChanged(checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256, arg1);
                            else:
                                if balanceOf[address(msg.sender)] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                54,
                                                0x655370686572653a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                                Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[406 len 10])
                                if numCheckpoints[address(arg1)] <= 0:
                                    uint32(checkpoints[address(arg1)][stor12[address(arg1)]].field_0) = uint32(block.number)
                                    checkpoints[address(arg1)][stor12[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if uint32(checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_0) == uint32(block.number):
                                        checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256 = balanceOf[address(msg.sender)]
                                    else:
                                        uint32(checkpoints[address(arg1)][stor12[address(arg1)]].field_0) = uint32(block.number)
                                        checkpoints[address(arg1)][stor12[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], arg1);
                    else:
                        if uint32(checkpoints[stor10[address(msg.sender)]][stor12[stor10[address(msg.sender)]] - 1 << 224].field_0) == uint32(block.number):
                            checkpoints[stor10[address(msg.sender)]][stor12[stor10[address(msg.sender)]] - 1 << 224].field_256 = -balanceOf[address(msg.sender)]
                            emit DelegateVotesChanged(0, -balanceOf[address(msg.sender)], delegates[address(msg.sender)]);
                            if arg1:
                                if numCheckpoints[address(arg1)]:
                                    if balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256 < checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    54,
                                                    0x655370686572653a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                                    Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[342 len 10])
                                    if numCheckpoints[address(arg1)] <= 0:
                                        uint32(checkpoints[address(arg1)][stor12[address(arg1)]].field_0) = uint32(block.number)
                                        checkpoints[address(arg1)][stor12[address(arg1)]].field_256 = balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if uint32(checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_0) == uint32(block.number):
                                            checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256 += balanceOf[address(msg.sender)]
                                        else:
                                            uint32(checkpoints[address(arg1)][stor12[address(arg1)]].field_0) = uint32(block.number)
                                            checkpoints[address(arg1)][stor12[address(arg1)]].field_256 = balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256, arg1);
                                else:
                                    if balanceOf[address(msg.sender)] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    54,
                                                    0x655370686572653a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                                    Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[342 len 10])
                                    if numCheckpoints[address(arg1)] <= 0:
                                        uint32(checkpoints[address(arg1)][stor12[address(arg1)]].field_0) = uint32(block.number)
                                        checkpoints[address(arg1)][stor12[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if uint32(checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_0) == uint32(block.number):
                                            checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256 = balanceOf[address(msg.sender)]
                                        else:
                                            uint32(checkpoints[address(arg1)][stor12[address(arg1)]].field_0) = uint32(block.number)
                                            checkpoints[address(arg1)][stor12[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], arg1);
                        else:
                            uint32(checkpoints[stor10[address(msg.sender)]][stor12[stor10[address(msg.sender)]]].field_0) = uint32(block.number)
                            checkpoints[stor10[address(msg.sender)]][stor12[stor10[address(msg.sender)]]].field_256 = -balanceOf[address(msg.sender)]
                            numCheckpoints[stor10[address(msg.sender)]] = uint32(numCheckpoints[stor10[address(msg.sender)]] + 1)
                            emit DelegateVotesChanged(0, -balanceOf[address(msg.sender)], delegates[address(msg.sender)]);
                            if arg1:
                                if numCheckpoints[address(arg1)]:
                                    if balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256 < checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    54,
                                                    0x655370686572653a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                                    Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[406 len 10])
                                    if numCheckpoints[address(arg1)] <= 0:
                                        uint32(checkpoints[address(arg1)][stor12[address(arg1)]].field_0) = uint32(block.number)
                                        checkpoints[address(arg1)][stor12[address(arg1)]].field_256 = balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if uint32(checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_0) == uint32(block.number):
                                            checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256 += balanceOf[address(msg.sender)]
                                        else:
                                            uint32(checkpoints[address(arg1)][stor12[address(arg1)]].field_0) = uint32(block.number)
                                            checkpoints[address(arg1)][stor12[address(arg1)]].field_256 = balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256, arg1);
                                else:
                                    if balanceOf[address(msg.sender)] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    54,
                                                    0x655370686572653a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                                    Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[406 len 10])
                                    if numCheckpoints[address(arg1)] <= 0:
                                        uint32(checkpoints[address(arg1)][stor12[address(arg1)]].field_0) = uint32(block.number)
                                        checkpoints[address(arg1)][stor12[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if uint32(checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_0) == uint32(block.number):
                                            checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256 = balanceOf[address(msg.sender)]
                                        else:
                                            uint32(checkpoints[address(arg1)][stor12[address(arg1)]].field_0) = uint32(block.number)
                                            checkpoints[address(arg1)][stor12[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
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
                    40,
                    0x735370686572653a3a64656c656761746542795369673a20696e76616c6964207369676e61747572,
                    address(arg6),
                    mem[ceil32(name.length) + 706 len 4]
    nonces[address(signer)]++
    if arg2 != nonces[address(signer)]:
        revert with 0, 
                    32,
                    36,
                    0x745370686572653a3a64656c656761746542795369673a20696e76616c6964206e6f6e63,
                    Mask(192, 0, arg6),
                    mem[ceil32(name.length) + 706 len 4]
    if block.timestamp > arg3:
        revert with 0, 
                    32,
                    40,
                    0x735370686572653a3a64656c656761746542795369673a207369676e617475726520657870697265,
                    address(arg6),
                    mem[ceil32(name.length) + 706 len 4]
    delegates[address(signer)] = arg1
    emit DelegateChanged(address(signer), delegates[address(signer)], arg1);
    if delegates[address(signer)] != arg1:
        if balanceOf[address(signer)] > 0:
            if not delegates[address(signer)]:
                if arg1:
                    if numCheckpoints[address(arg1)]:
                        if balanceOf[address(signer)] + checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256 < checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256:
                            revert with 0, 'SafeMath: addition overflow'
                        if block.number >= 4294967296:
                            revert with 0, 
                                        32,
                                        54,
                                        0x655370686572653a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                        Mask(176, 0, 0x206e756d626572206578636565647320333220626974, Mask(80, 0, arg5))
                        if numCheckpoints[address(arg1)] <= 0:
                            uint32(checkpoints[address(arg1)][stor12[address(arg1)]].field_0) = uint32(block.number)
                            checkpoints[address(arg1)][stor12[address(arg1)]].field_256 = balanceOf[address(signer)] + checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256
                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        else:
                            if uint32(checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_0) == uint32(block.number):
                                checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256 += balanceOf[address(signer)]
                            else:
                                uint32(checkpoints[address(arg1)][stor12[address(arg1)]].field_0) = uint32(block.number)
                                checkpoints[address(arg1)][stor12[address(arg1)]].field_256 = balanceOf[address(signer)] + checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256
                                numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        emit DelegateVotesChanged(checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256, balanceOf[address(signer)] + checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256, arg1);
                    else:
                        if balanceOf[address(signer)] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if block.number >= 4294967296:
                            revert with 0, 
                                        32,
                                        54,
                                        0x655370686572653a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                        Mask(176, 0, 0x206e756d626572206578636565647320333220626974, Mask(80, 0, arg5))
                        if numCheckpoints[address(arg1)] <= 0:
                            uint32(checkpoints[address(arg1)][stor12[address(arg1)]].field_0) = uint32(block.number)
                            checkpoints[address(arg1)][stor12[address(arg1)]].field_256 = balanceOf[address(signer)]
                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        else:
                            if uint32(checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_0) == uint32(block.number):
                                checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256 = balanceOf[address(signer)]
                            else:
                                uint32(checkpoints[address(arg1)][stor12[address(arg1)]].field_0) = uint32(block.number)
                                checkpoints[address(arg1)][stor12[address(arg1)]].field_256 = balanceOf[address(signer)]
                                numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        emit DelegateVotesChanged(0, balanceOf[address(signer)], arg1);
            else:
                if numCheckpoints[stor10[address(signer)]]:
                    if balanceOf[address(signer)] > checkpoints[stor10[address(signer)]][stor12[stor10[address(signer)]] - 1 << 224].field_256:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if block.number >= 4294967296:
                        revert with 0, 
                                    32,
                                    54,
                                    0x655370686572653a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                    Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[ceil32(name.length) + 728 len 10])
                    if numCheckpoints[stor10[address(signer)]] <= 0:
                        uint32(checkpoints[stor10[address(signer)]][stor12[stor10[address(signer)]]].field_0) = uint32(block.number)
                        checkpoints[stor10[address(signer)]][stor12[stor10[address(signer)]]].field_256 = checkpoints[stor10[address(signer)]][stor12[stor10[address(signer)]] - 1 << 224].field_256 - balanceOf[address(signer)]
                        numCheckpoints[stor10[address(signer)]] = uint32(numCheckpoints[stor10[address(signer)]] + 1)
                        emit DelegateVotesChanged(checkpoints[stor10[address(signer)]][stor12[stor10[address(signer)]] - 1 << 224].field_256, checkpoints[stor10[address(signer)]][stor12[stor10[address(signer)]] - 1 << 224].field_256 - balanceOf[address(signer)], delegates[address(signer)]);
                        if arg1:
                            if numCheckpoints[address(arg1)]:
                                if balanceOf[address(signer)] + checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256 < checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                54,
                                                0x655370686572653a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                                Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[ceil32(name.length) + 888 len 10])
                                if numCheckpoints[address(arg1)] <= 0:
                                    uint32(checkpoints[address(arg1)][stor12[address(arg1)]].field_0) = uint32(block.number)
                                    checkpoints[address(arg1)][stor12[address(arg1)]].field_256 = balanceOf[address(signer)] + checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if uint32(checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_0) == uint32(block.number):
                                        checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256 += balanceOf[address(signer)]
                                    else:
                                        uint32(checkpoints[address(arg1)][stor12[address(arg1)]].field_0) = uint32(block.number)
                                        checkpoints[address(arg1)][stor12[address(arg1)]].field_256 = balanceOf[address(signer)] + checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                emit DelegateVotesChanged(checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256, balanceOf[address(signer)] + checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256, arg1);
                            else:
                                if balanceOf[address(signer)] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                54,
                                                0x655370686572653a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                                Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[ceil32(name.length) + 888 len 10])
                                if numCheckpoints[address(arg1)] <= 0:
                                    uint32(checkpoints[address(arg1)][stor12[address(arg1)]].field_0) = uint32(block.number)
                                    checkpoints[address(arg1)][stor12[address(arg1)]].field_256 = balanceOf[address(signer)]
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if uint32(checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_0) == uint32(block.number):
                                        checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256 = balanceOf[address(signer)]
                                    else:
                                        uint32(checkpoints[address(arg1)][stor12[address(arg1)]].field_0) = uint32(block.number)
                                        checkpoints[address(arg1)][stor12[address(arg1)]].field_256 = balanceOf[address(signer)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                emit DelegateVotesChanged(0, balanceOf[address(signer)], arg1);
                    else:
                        if uint32(checkpoints[stor10[address(signer)]][stor12[stor10[address(signer)]] - 1 << 224].field_0) == uint32(block.number):
                            checkpoints[stor10[address(signer)]][stor12[stor10[address(signer)]] - 1 << 224].field_256 -= balanceOf[address(signer)]
                            emit DelegateVotesChanged(checkpoints[stor10[address(signer)]][stor12[stor10[address(signer)]] - 1 << 224].field_256, checkpoints[stor10[address(signer)]][stor12[stor10[address(signer)]] - 1 << 224].field_256 - balanceOf[address(signer)], delegates[address(signer)]);
                            if arg1:
                                if numCheckpoints[address(arg1)]:
                                    if balanceOf[address(signer)] + checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256 < checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    54,
                                                    0x655370686572653a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                                    Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[ceil32(name.length) + 824 len 10])
                                    if numCheckpoints[address(arg1)] <= 0:
                                        uint32(checkpoints[address(arg1)][stor12[address(arg1)]].field_0) = uint32(block.number)
                                        checkpoints[address(arg1)][stor12[address(arg1)]].field_256 = balanceOf[address(signer)] + checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if uint32(checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_0) == uint32(block.number):
                                            checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256 += balanceOf[address(signer)]
                                        else:
                                            uint32(checkpoints[address(arg1)][stor12[address(arg1)]].field_0) = uint32(block.number)
                                            checkpoints[address(arg1)][stor12[address(arg1)]].field_256 = balanceOf[address(signer)] + checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256, balanceOf[address(signer)] + checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256, arg1);
                                else:
                                    if balanceOf[address(signer)] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    54,
                                                    0x655370686572653a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                                    Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[ceil32(name.length) + 824 len 10])
                                    if numCheckpoints[address(arg1)] <= 0:
                                        uint32(checkpoints[address(arg1)][stor12[address(arg1)]].field_0) = uint32(block.number)
                                        checkpoints[address(arg1)][stor12[address(arg1)]].field_256 = balanceOf[address(signer)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if uint32(checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_0) == uint32(block.number):
                                            checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256 = balanceOf[address(signer)]
                                        else:
                                            uint32(checkpoints[address(arg1)][stor12[address(arg1)]].field_0) = uint32(block.number)
                                            checkpoints[address(arg1)][stor12[address(arg1)]].field_256 = balanceOf[address(signer)]
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, balanceOf[address(signer)], arg1);
                        else:
                            uint32(checkpoints[stor10[address(signer)]][stor12[stor10[address(signer)]]].field_0) = uint32(block.number)
                            checkpoints[stor10[address(signer)]][stor12[stor10[address(signer)]]].field_256 = checkpoints[stor10[address(signer)]][stor12[stor10[address(signer)]] - 1 << 224].field_256 - balanceOf[address(signer)]
                            numCheckpoints[stor10[address(signer)]] = uint32(numCheckpoints[stor10[address(signer)]] + 1)
                            emit DelegateVotesChanged(checkpoints[stor10[address(signer)]][stor12[stor10[address(signer)]] - 1 << 224].field_256, checkpoints[stor10[address(signer)]][stor12[stor10[address(signer)]] - 1 << 224].field_256 - balanceOf[address(signer)], delegates[address(signer)]);
                            if arg1:
                                if numCheckpoints[address(arg1)]:
                                    if balanceOf[address(signer)] + checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256 < checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    54,
                                                    0x655370686572653a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                                    Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[ceil32(name.length) + 888 len 10])
                                    if numCheckpoints[address(arg1)] <= 0:
                                        uint32(checkpoints[address(arg1)][stor12[address(arg1)]].field_0) = uint32(block.number)
                                        checkpoints[address(arg1)][stor12[address(arg1)]].field_256 = balanceOf[address(signer)] + checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if uint32(checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_0) == uint32(block.number):
                                            checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256 += balanceOf[address(signer)]
                                        else:
                                            uint32(checkpoints[address(arg1)][stor12[address(arg1)]].field_0) = uint32(block.number)
                                            checkpoints[address(arg1)][stor12[address(arg1)]].field_256 = balanceOf[address(signer)] + checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256, balanceOf[address(signer)] + checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256, arg1);
                                else:
                                    if balanceOf[address(signer)] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    54,
                                                    0x655370686572653a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                                    Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[ceil32(name.length) + 888 len 10])
                                    if numCheckpoints[address(arg1)] <= 0:
                                        uint32(checkpoints[address(arg1)][stor12[address(arg1)]].field_0) = uint32(block.number)
                                        checkpoints[address(arg1)][stor12[address(arg1)]].field_256 = balanceOf[address(signer)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if uint32(checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_0) == uint32(block.number):
                                            checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256 = balanceOf[address(signer)]
                                        else:
                                            uint32(checkpoints[address(arg1)][stor12[address(arg1)]].field_0) = uint32(block.number)
                                            checkpoints[address(arg1)][stor12[address(arg1)]].field_256 = balanceOf[address(signer)]
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, balanceOf[address(signer)], arg1);
                else:
                    if balanceOf[address(signer)] > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if block.number >= 4294967296:
                        revert with 0, 
                                    32,
                                    54,
                                    0x655370686572653a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                    Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[ceil32(name.length) + 728 len 10])
                    if numCheckpoints[stor10[address(signer)]] <= 0:
                        uint32(checkpoints[stor10[address(signer)]][stor12[stor10[address(signer)]]].field_0) = uint32(block.number)
                        checkpoints[stor10[address(signer)]][stor12[stor10[address(signer)]]].field_256 = -balanceOf[address(signer)]
                        numCheckpoints[stor10[address(signer)]] = uint32(numCheckpoints[stor10[address(signer)]] + 1)
                        emit DelegateVotesChanged(0, -balanceOf[address(signer)], delegates[address(signer)]);
                        if arg1:
                            if numCheckpoints[address(arg1)]:
                                if balanceOf[address(signer)] + checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256 < checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                54,
                                                0x655370686572653a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                                Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[ceil32(name.length) + 888 len 10])
                                if numCheckpoints[address(arg1)] <= 0:
                                    uint32(checkpoints[address(arg1)][stor12[address(arg1)]].field_0) = uint32(block.number)
                                    checkpoints[address(arg1)][stor12[address(arg1)]].field_256 = balanceOf[address(signer)] + checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if uint32(checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_0) == uint32(block.number):
                                        checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256 += balanceOf[address(signer)]
                                    else:
                                        uint32(checkpoints[address(arg1)][stor12[address(arg1)]].field_0) = uint32(block.number)
                                        checkpoints[address(arg1)][stor12[address(arg1)]].field_256 = balanceOf[address(signer)] + checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                emit DelegateVotesChanged(checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256, balanceOf[address(signer)] + checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256, arg1);
                            else:
                                if balanceOf[address(signer)] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                54,
                                                0x655370686572653a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                                Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[ceil32(name.length) + 888 len 10])
                                if numCheckpoints[address(arg1)] <= 0:
                                    uint32(checkpoints[address(arg1)][stor12[address(arg1)]].field_0) = uint32(block.number)
                                    checkpoints[address(arg1)][stor12[address(arg1)]].field_256 = balanceOf[address(signer)]
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if uint32(checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_0) == uint32(block.number):
                                        checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256 = balanceOf[address(signer)]
                                    else:
                                        uint32(checkpoints[address(arg1)][stor12[address(arg1)]].field_0) = uint32(block.number)
                                        checkpoints[address(arg1)][stor12[address(arg1)]].field_256 = balanceOf[address(signer)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                emit DelegateVotesChanged(0, balanceOf[address(signer)], arg1);
                    else:
                        if uint32(checkpoints[stor10[address(signer)]][stor12[stor10[address(signer)]] - 1 << 224].field_0) == uint32(block.number):
                            checkpoints[stor10[address(signer)]][stor12[stor10[address(signer)]] - 1 << 224].field_256 = -balanceOf[address(signer)]
                            emit DelegateVotesChanged(0, -balanceOf[address(signer)], delegates[address(signer)]);
                            if arg1:
                                if numCheckpoints[address(arg1)]:
                                    if balanceOf[address(signer)] + checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256 < checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    54,
                                                    0x655370686572653a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                                    Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[ceil32(name.length) + 824 len 10])
                                    if numCheckpoints[address(arg1)] <= 0:
                                        uint32(checkpoints[address(arg1)][stor12[address(arg1)]].field_0) = uint32(block.number)
                                        checkpoints[address(arg1)][stor12[address(arg1)]].field_256 = balanceOf[address(signer)] + checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if uint32(checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_0) == uint32(block.number):
                                            checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256 += balanceOf[address(signer)]
                                        else:
                                            uint32(checkpoints[address(arg1)][stor12[address(arg1)]].field_0) = uint32(block.number)
                                            checkpoints[address(arg1)][stor12[address(arg1)]].field_256 = balanceOf[address(signer)] + checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256, balanceOf[address(signer)] + checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256, arg1);
                                else:
                                    if balanceOf[address(signer)] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    54,
                                                    0x655370686572653a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                                    Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[ceil32(name.length) + 824 len 10])
                                    if numCheckpoints[address(arg1)] <= 0:
                                        uint32(checkpoints[address(arg1)][stor12[address(arg1)]].field_0) = uint32(block.number)
                                        checkpoints[address(arg1)][stor12[address(arg1)]].field_256 = balanceOf[address(signer)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if uint32(checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_0) == uint32(block.number):
                                            checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256 = balanceOf[address(signer)]
                                        else:
                                            uint32(checkpoints[address(arg1)][stor12[address(arg1)]].field_0) = uint32(block.number)
                                            checkpoints[address(arg1)][stor12[address(arg1)]].field_256 = balanceOf[address(signer)]
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, balanceOf[address(signer)], arg1);
                        else:
                            uint32(checkpoints[stor10[address(signer)]][stor12[stor10[address(signer)]]].field_0) = uint32(block.number)
                            checkpoints[stor10[address(signer)]][stor12[stor10[address(signer)]]].field_256 = -balanceOf[address(signer)]
                            numCheckpoints[stor10[address(signer)]] = uint32(numCheckpoints[stor10[address(signer)]] + 1)
                            emit DelegateVotesChanged(0, -balanceOf[address(signer)], delegates[address(signer)]);
                            if arg1:
                                if numCheckpoints[address(arg1)]:
                                    if balanceOf[address(signer)] + checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256 < checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    54,
                                                    0x655370686572653a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                                    Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[ceil32(name.length) + 888 len 10])
                                    if numCheckpoints[address(arg1)] <= 0:
                                        uint32(checkpoints[address(arg1)][stor12[address(arg1)]].field_0) = uint32(block.number)
                                        checkpoints[address(arg1)][stor12[address(arg1)]].field_256 = balanceOf[address(signer)] + checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if uint32(checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_0) == uint32(block.number):
                                            checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256 += balanceOf[address(signer)]
                                        else:
                                            uint32(checkpoints[address(arg1)][stor12[address(arg1)]].field_0) = uint32(block.number)
                                            checkpoints[address(arg1)][stor12[address(arg1)]].field_256 = balanceOf[address(signer)] + checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256, balanceOf[address(signer)] + checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256, arg1);
                                else:
                                    if balanceOf[address(signer)] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    54,
                                                    0x655370686572653a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                                    Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[ceil32(name.length) + 888 len 10])
                                    if numCheckpoints[address(arg1)] <= 0:
                                        uint32(checkpoints[address(arg1)][stor12[address(arg1)]].field_0) = uint32(block.number)
                                        checkpoints[address(arg1)][stor12[address(arg1)]].field_256 = balanceOf[address(signer)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if uint32(checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_0) == uint32(block.number):
                                            checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256 = balanceOf[address(signer)]
                                        else:
                                            uint32(checkpoints[address(arg1)][stor12[address(arg1)]].field_0) = uint32(block.number)
                                            checkpoints[address(arg1)][stor12[address(arg1)]].field_256 = balanceOf[address(signer)]
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, balanceOf[address(signer)], arg1);
}



}
