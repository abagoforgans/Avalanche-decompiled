contract main {




// =====================  Runtime code  =====================


#
#  - delegateBySig(address arg1, uint256 arg2, uint256 arg3, uint8 arg4, bytes32 arg5, bytes32 arg6)
#
const sub_86fac490(?) = 100

const MAXIMUM_TRANSFER_TAX_RATE = 100

const DOMAIN_TYPEHASH = 0x8cad95687ba82c2ce50e74f7b754645e5117c3a5bec8151c0726d5857980a866

const DELEGATION_TYPEHASH = 0xe48329057bfd03d55e49b547132e39cffd9c1820ad7b9d4c5307691425d15adf

const BURN_ADDRESS = 57005


address owner;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint16 stor6;
uint16 transferTaxRate; offset 8
uint16 maxTransferAmountRate; offset 24
mapping of uint8 stor7;
mapping of uint8 stor8;
address operatorAddress;
mapping of address delegates;
mapping of struct checkpoints;
mapping of uint32 numCheckpoints;
mapping of uint256 nonces;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function isExcludedFromAntiWhale(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor7[address(arg1)])
}

function decimals() {
    return decimals
}

function maxTransferAmountRate() {
    return maxTransferAmountRate
}

function operator() {
    return operatorAddress
}

function delegates(address arg1) {
    require calldata.size - 4 >= 32
    return delegates[address(arg1)]
}

function numCheckpoints(address arg1) {
    require calldata.size - 4 >= 32
    return numCheckpoints[arg1]
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function isExcludedFromTransferTax(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor8[address(arg1)])
}

function nonces(address arg1) {
    require calldata.size - 4 >= 32
    return nonces[arg1]
}

function getOwner() {
    return owner
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function transferTaxRate() {
    return transferTaxRate
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function checkpoints(address arg1, uint32 arg2) {
    require calldata.size - 4 >= 64
    return checkpoints[arg1][arg2].field_0, checkpoints[arg1][arg2].field_256
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function getCurrentVotes(address arg1) {
    require calldata.size - 4 >= 32
    if numCheckpoints[address(arg1)]:
        return checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256
    else:
        return 0
}

function setExcludedFromAntiWhale(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x746f70657261746f723a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[200 len 28]
    stor7[address(arg1)] = uint8(arg2)
}

function setExcludedFromTransferTax(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x746f70657261746f723a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[200 len 28]
    stor8[address(arg1)] = uint8(arg2)
}

function maxTransferAmount() {
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

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x2e4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function mint(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not msg.sender:
        revert with 0, 'BEP20: mint to the zero address'
    if arg1 + totalSupply < totalSupply:
        revert with 0, 'SafeMath: addition overflow'
    totalSupply += arg1
    if arg1 + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(msg.sender)] += arg1
    emit Transfer(arg1, 0, msg.sender);
    return 1
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[200 len 28]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x2e42455032303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transferOperator(address arg1) {
    require calldata.size - 4 >= 32
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x746f70657261746f723a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[200 len 28]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    58,
                    0x645445535443473a3a7472616e736665724f70657261746f723a206e6577206f70657261746f7220697320746865207a65726f20616464726573,
                    mem[222 len 6]
    emit OperatorTransferred(operatorAddress, arg1);
    operatorAddress = arg1
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if arg2 > allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 
                    32,
                    37,
                    0x7342455032303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572,
                    mem[165 len 27],
                    mem[219 len 5]
    if not msg.sender:
        revert with 0, 32, 36, 0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[296 len 28]
    if not arg1:
        revert with 0, 32, 34, 0x2e42455032303a20617070726f766520746f20746865207a65726f20616464726573, mem[294 len 30]
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function updateTransferTaxRate(uint16 arg1) {
    require calldata.size - 4 >= 32
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x746f70657261746f723a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[200 len 28]
    if arg1 > 100:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    82,
                    0x725445535443473a3a7570646174655472616e73666572546178526174653a205472616e73666572207461782072617465206d757374206e6f742065786365656420746865206d6178696d756d2072617465,
                    mem[246 len 14]
    emit TransferTaxRateUpdated(stor6, arg1, msg.sender);
    transferTaxRate = arg1
}

function increaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if arg2 + allowance[address(msg.sender)][address(arg1)] < allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[200 len 28]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x2e42455032303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((arg2 + allowance[address(msg.sender)][address(arg1)]), msg.sender, arg1);
    return 1
}

function updateMaxTransferAmountRate(uint16 arg1) {
    require calldata.size - 4 >= 32
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x746f70657261746f723a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[200 len 28]
    if arg1 > 10000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    95,
                    0x645445535443473a3a7570646174654d61785472616e73666572416d6f756e74526174653a204d6178207472616e7366657220616d6f756e742072617465206d757374206e6f742065786365656420746865206d6178696d756d2072617465,
                    mem[259 len 1]
    if arg1 < 100:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    91,
                    0x735445535443473a3a7570646174654d61785472616e73666572416d6f756e74526174653a204d6178207472616e7366657220616d6f756e742072617465206d7573742065786365656420746865206d696e696d756d2072617465,
                    mem[255 len 5]
    emit MaxTransferAmountRateUpdated(stor6, arg1, msg.sender);
    maxTransferAmountRate = arg1
}

function getPriorVotes(address arg1, uint256 arg2) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 64
    if arg2 >= block.number:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x655445535443473a3a6765745072696f72566f7465733a206e6f74207965742064657465726d696e65,
                    mem[205 len 23]
    if not numCheckpoints[address(arg1)]:
        return 0
    if arg2 >= checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_0:
        return checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256
    if arg2 < checkpoints[address(arg1)][0].field_0:
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
        mem[_35] = checkpoints[address(arg1)][stor12[address(arg1)] + -(uint32(stor12[address(arg1)] + -idx - 1) / 2) - 1 << 224].field_0
        mem[_35 + 32] = checkpoints[address(arg1)][stor12[address(arg1)] + -(uint32(stor12[address(arg1)] + -idx - 1) / 2) - 1 << 224].field_256
        if arg2 == checkpoints[address(arg1)][stor12[address(arg1)] + -(uint32(stor12[address(arg1)] + -idx - 1) / 2) - 1 << 224].field_0:
            return checkpoints[address(arg1)][stor12[address(arg1)] + -(uint32(stor12[address(arg1)] + -idx - 1) / 2) - 1 << 224].field_256
        if arg2 <= checkpoints[address(arg1)][stor12[address(arg1)] + -(uint32(stor12[address(arg1)] + -idx - 1) / 2) - 1 << 224].field_0:
            idx = idx
            continue 
        idx = numCheckpoints[address(arg1)] + -(uint32(numCheckpoints[address(arg1)] + -idx - 1) / 2) - 1
        continue 
    return checkpoints[address(arg1)][idx << 224].field_256
}

function mint(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not arg1:
        revert with 0, 'BEP20: mint to the zero address'
    if arg2 + totalSupply < totalSupply:
        revert with 0, 'SafeMath: addition overflow'
    totalSupply += arg2
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
                                    0x735445535443473a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                    Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[182 len 10])
                    if numCheckpoints[stor10[address(arg1)]] <= 0:
                        checkpoints[stor10[address(arg1)]][stor12[stor10[address(arg1)]]].field_0 = uint32(block.number)
                        checkpoints[stor10[address(arg1)]][stor12[stor10[address(arg1)]]].field_256 = arg2 + checkpoints[stor10[address(arg1)]][stor12[stor10[address(arg1)]] - 1 << 224].field_256
                        numCheckpoints[stor10[address(arg1)]] = uint32(numCheckpoints[stor10[address(arg1)]] + 1)
                    else:
                        if checkpoints[stor10[address(arg1)]][stor12[stor10[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                            checkpoints[stor10[address(arg1)]][stor12[stor10[address(arg1)]] - 1 << 224].field_256 += arg2
                        else:
                            checkpoints[stor10[address(arg1)]][stor12[stor10[address(arg1)]]].field_0 = uint32(block.number)
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
                                    0x735445535443473a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                    Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[182 len 10])
                    if numCheckpoints[stor10[address(arg1)]] <= 0:
                        checkpoints[stor10[address(arg1)]][stor12[stor10[address(arg1)]]].field_0 = uint32(block.number)
                        checkpoints[stor10[address(arg1)]][stor12[stor10[address(arg1)]]].field_256 = arg2
                        numCheckpoints[stor10[address(arg1)]] = uint32(numCheckpoints[stor10[address(arg1)]] + 1)
                    else:
                        if checkpoints[stor10[address(arg1)]][stor12[stor10[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                            checkpoints[stor10[address(arg1)]][stor12[stor10[address(arg1)]] - 1 << 224].field_256 = arg2
                        else:
                            checkpoints[stor10[address(arg1)]][stor12[stor10[address(arg1)]]].field_0 = uint32(block.number)
                            checkpoints[stor10[address(arg1)]][stor12[stor10[address(arg1)]]].field_256 = arg2
                            numCheckpoints[stor10[address(arg1)]] = uint32(numCheckpoints[stor10[address(arg1)]] + 1)
                    emit DelegateVotesChanged(0, arg2, delegates[address(arg1)]);
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if 1 == bool(stor7[address(msg.sender)]):
        if totalSupply:
            if maxTransferAmountRate * totalSupply / totalSupply != maxTransferAmountRate:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if maxTransferAmountRate * totalSupply / 10000 > 0:
                if bool(stor7[address(msg.sender)]) != 1:
                    if not stor7[address(msg.sender)]:
                        if not stor7[address(arg1)]:
                            if not totalSupply:
                                if arg2 > 0:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                64,
                                                0x2e5445535443473a3a616e74695768616c653a205472616e7366657220616d6f756e74206578636565647320746865206d61785472616e73666572416d6f756e
                            else:
                                if maxTransferAmountRate * totalSupply / totalSupply != maxTransferAmountRate:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if arg2 > maxTransferAmountRate * totalSupply / 10000:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                64,
                                                0x2e5445535443473a3a616e74695768616c653a205472616e7366657220616d6f756e74206578636565647320746865206d61785472616e73666572416d6f756e
    else:
        if totalSupply:
            if maxTransferAmountRate * totalSupply / totalSupply != maxTransferAmountRate:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if maxTransferAmountRate * totalSupply / 10000 > 0:
                if bool(stor7[address(arg1)]) != 1:
                    if not stor7[address(msg.sender)]:
                        if not stor7[address(arg1)]:
                            if not totalSupply:
                                if arg2 > 0:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                64,
                                                0x2e5445535443473a3a616e74695768616c653a205472616e7366657220616d6f756e74206578636565647320746865206d61785472616e73666572416d6f756e
                            else:
                                if maxTransferAmountRate * totalSupply / totalSupply != maxTransferAmountRate:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if arg2 > maxTransferAmountRate * totalSupply / 10000:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                64,
                                                0x2e5445535443473a3a616e74695768616c653a205472616e7366657220616d6f756e74206578636565647320746865206d61785472616e73666572416d6f756e
    if not transferTaxRate:
        if not msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        37,
                        0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                        mem[201 len 27]
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        35,
                        0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573,
                        mem[199 len 29]
        if arg2 > balanceOf[address(msg.sender)]:
            revert with 0, 
                        32,
                        38,
                        0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                        mem[166 len 26],
                        mem[218 len 6]
        balanceOf[address(msg.sender)] -= arg2
        if arg2 + balanceOf[arg1] < balanceOf[arg1]:
            revert with 0, 'SafeMath: addition overflow'
        balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
        emit Transfer(arg2, msg.sender, arg1);
    else:
        if 1 == bool(stor8[address(msg.sender)]):
            if not msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            37,
                            0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                            mem[201 len 27]
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            35,
                            0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573,
                            mem[199 len 29]
            if arg2 > balanceOf[address(msg.sender)]:
                revert with 0, 
                            32,
                            38,
                            0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                            mem[166 len 26],
                            mem[218 len 6]
            balanceOf[address(msg.sender)] -= arg2
            if arg2 + balanceOf[arg1] < balanceOf[arg1]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
            emit Transfer(arg2, msg.sender, arg1);
        else:
            if 1 == bool(stor8[address(arg1)]):
                if not msg.sender:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                37,
                                0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                mem[201 len 27]
                if not arg1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                35,
                                0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573,
                                mem[199 len 29]
                if arg2 > balanceOf[address(msg.sender)]:
                    revert with 0, 
                                32,
                                38,
                                0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                mem[166 len 26],
                                mem[218 len 6]
                balanceOf[address(msg.sender)] -= arg2
                if arg2 + balanceOf[arg1] < balanceOf[arg1]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
                emit Transfer(arg2, msg.sender, arg1);
            else:
                if not arg2:
                    if 0 > arg2:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if arg2 != arg2:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    35,
                                    0x6f5445535443473a3a7472616e736665723a205461782076616c756520696e76616c69,
                                    mem[199 len 29]
                    if not msg.sender:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    37,
                                    0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                    mem[201 len 27]
                    if 0 > balanceOf[address(msg.sender)]:
                        revert with 0, 
                                    32,
                                    38,
                                    0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                    mem[166 len 26],
                                    mem[218 len 6]
                    if balanceOf[57005] < balanceOf[57005]:
                        revert with 0, 'SafeMath: addition overflow'
                    emit Transfer(0, msg.sender, 57005);
                    if not msg.sender:
                        revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[297 len 27]
                    if not arg1:
                        revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[295 len 29]
                    if arg2 > balanceOf[address(msg.sender)]:
                        revert with 0, 
                                    32,
                                    38,
                                    0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                    mem[262 len 26],
                                    mem[314 len 6]
                    balanceOf[address(msg.sender)] -= arg2
                    if arg2 + balanceOf[arg1] < balanceOf[arg1]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
                    emit Transfer(arg2, msg.sender, arg1);
                else:
                    if transferTaxRate * arg2 / arg2 != transferTaxRate:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if transferTaxRate * arg2 / 10000 > arg2:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if arg2 != arg2:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    35,
                                    0x6f5445535443473a3a7472616e736665723a205461782076616c756520696e76616c69,
                                    mem[199 len 29]
                    if not msg.sender:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    37,
                                    0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                    mem[201 len 27]
                    if transferTaxRate * arg2 / 10000 > balanceOf[address(msg.sender)]:
                        revert with 0, 
                                    32,
                                    38,
                                    0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                    mem[166 len 26],
                                    mem[218 len 6]
                    balanceOf[address(msg.sender)] -= transferTaxRate * arg2 / 10000
                    if (transferTaxRate * arg2 / 10000) + balanceOf[57005] < balanceOf[57005]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[57005] += transferTaxRate * arg2 / 10000
                    emit Transfer((transferTaxRate * arg2 / 10000), msg.sender, 57005);
                    if not msg.sender:
                        revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[297 len 27]
                    if not arg1:
                        revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[295 len 29]
                    if arg2 - (transferTaxRate * arg2 / 10000) > balanceOf[address(msg.sender)]:
                        revert with 0, 
                                    32,
                                    38,
                                    0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                    mem[262 len 26],
                                    mem[314 len 6]
                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (transferTaxRate * arg2 / 10000)
                    if arg2 - (transferTaxRate * arg2 / 10000) + balanceOf[arg1] < balanceOf[arg1]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg1)] = arg2 - (transferTaxRate * arg2 / 10000) + balanceOf[arg1]
                    emit Transfer((arg2 - (transferTaxRate * arg2 / 10000)), msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if 1 == bool(stor7[address(arg1)]):
        if totalSupply:
            if maxTransferAmountRate * totalSupply / totalSupply != maxTransferAmountRate:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if maxTransferAmountRate * totalSupply / 10000 > 0:
                if bool(stor7[address(arg1)]) != 1:
                    if not stor7[address(arg1)]:
                        if not stor7[address(arg2)]:
                            if not totalSupply:
                                if arg3 > 0:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                64,
                                                0x2e5445535443473a3a616e74695768616c653a205472616e7366657220616d6f756e74206578636565647320746865206d61785472616e73666572416d6f756e
                            else:
                                if maxTransferAmountRate * totalSupply / totalSupply != maxTransferAmountRate:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if arg3 > maxTransferAmountRate * totalSupply / 10000:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                64,
                                                0x2e5445535443473a3a616e74695768616c653a205472616e7366657220616d6f756e74206578636565647320746865206d61785472616e73666572416d6f756e
    else:
        if totalSupply:
            if maxTransferAmountRate * totalSupply / totalSupply != maxTransferAmountRate:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if maxTransferAmountRate * totalSupply / 10000 > 0:
                if bool(stor7[address(arg2)]) != 1:
                    if not stor7[address(arg1)]:
                        if not stor7[address(arg2)]:
                            if not totalSupply:
                                if arg3 > 0:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                64,
                                                0x2e5445535443473a3a616e74695768616c653a205472616e7366657220616d6f756e74206578636565647320746865206d61785472616e73666572416d6f756e
                            else:
                                if maxTransferAmountRate * totalSupply / totalSupply != maxTransferAmountRate:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if arg3 > maxTransferAmountRate * totalSupply / 10000:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                64,
                                                0x2e5445535443473a3a616e74695768616c653a205472616e7366657220616d6f756e74206578636565647320746865206d61785472616e73666572416d6f756e
    if not transferTaxRate:
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        37,
                        0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                        mem[201 len 27]
        if not arg2:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        35,
                        0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573,
                        mem[199 len 29]
        if arg3 > balanceOf[address(arg1)]:
            revert with 0, 
                        32,
                        38,
                        0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
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
                        0x6442455032303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                        mem[264 len 24],
                        mem[312 len 8]
        if not arg1:
            revert with 0, 32, 36, 0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[392 len 28]
        if not msg.sender:
            revert with 0, 32, 34, 0x2e42455032303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
    else:
        if 1 == bool(stor8[address(arg1)]):
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            37,
                            0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                            mem[201 len 27]
            if not arg2:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            35,
                            0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573,
                            mem[199 len 29]
            if arg3 > balanceOf[address(arg1)]:
                revert with 0, 
                            32,
                            38,
                            0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
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
                            0x6442455032303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                            mem[264 len 24],
                            mem[312 len 8]
            if not arg1:
                revert with 0, 32, 36, 0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[392 len 28]
            if not msg.sender:
                revert with 0, 32, 34, 0x2e42455032303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
        else:
            if 1 == bool(stor8[address(arg2)]):
                if not arg1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                37,
                                0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                mem[201 len 27]
                if not arg2:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                35,
                                0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573,
                                mem[199 len 29]
                if arg3 > balanceOf[address(arg1)]:
                    revert with 0, 
                                32,
                                38,
                                0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
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
                                0x6442455032303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                mem[264 len 24],
                                mem[312 len 8]
                if not arg1:
                    revert with 0, 32, 36, 0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[392 len 28]
                if not msg.sender:
                    revert with 0, 32, 34, 0x2e42455032303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
            else:
                if not arg3:
                    if 0 > arg3:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if arg3 != arg3:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    35,
                                    0x6f5445535443473a3a7472616e736665723a205461782076616c756520696e76616c69,
                                    mem[199 len 29]
                    if not arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    37,
                                    0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                    mem[201 len 27]
                    if 0 > balanceOf[address(arg1)]:
                        revert with 0, 
                                    32,
                                    38,
                                    0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                    mem[166 len 26],
                                    mem[218 len 6]
                    if balanceOf[57005] < balanceOf[57005]:
                        revert with 0, 'SafeMath: addition overflow'
                    emit Transfer(0, arg1, 57005);
                    if not arg1:
                        revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[297 len 27]
                    if not arg2:
                        revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[295 len 29]
                    if arg3 > balanceOf[address(arg1)]:
                        revert with 0, 
                                    32,
                                    38,
                                    0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                    mem[262 len 26],
                                    mem[314 len 6]
                    balanceOf[address(arg1)] -= arg3
                    if arg3 + balanceOf[arg2] < balanceOf[arg2]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
                    emit Transfer(arg3, arg1, arg2);
                else:
                    if transferTaxRate * arg3 / arg3 != transferTaxRate:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if transferTaxRate * arg3 / 10000 > arg3:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if arg3 != arg3:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    35,
                                    0x6f5445535443473a3a7472616e736665723a205461782076616c756520696e76616c69,
                                    mem[199 len 29]
                    if not arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    37,
                                    0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                    mem[201 len 27]
                    if transferTaxRate * arg3 / 10000 > balanceOf[address(arg1)]:
                        revert with 0, 
                                    32,
                                    38,
                                    0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                    mem[166 len 26],
                                    mem[218 len 6]
                    balanceOf[address(arg1)] -= transferTaxRate * arg3 / 10000
                    if (transferTaxRate * arg3 / 10000) + balanceOf[57005] < balanceOf[57005]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[57005] += transferTaxRate * arg3 / 10000
                    emit Transfer((transferTaxRate * arg3 / 10000), arg1, 57005);
                    if not arg1:
                        revert with 0, 32, 37, 0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[297 len 27]
                    if not arg2:
                        revert with 0, 32, 35, 0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573, mem[295 len 29]
                    if arg3 - (transferTaxRate * arg3 / 10000) > balanceOf[address(arg1)]:
                        revert with 0, 
                                    32,
                                    38,
                                    0x7242455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                    mem[262 len 26],
                                    mem[314 len 6]
                    balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (transferTaxRate * arg3 / 10000)
                    if arg3 - (transferTaxRate * arg3 / 10000) + balanceOf[arg2] < balanceOf[arg2]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg2)] = arg3 - (transferTaxRate * arg3 / 10000) + balanceOf[arg2]
                    emit Transfer((arg3 - (transferTaxRate * arg3 / 10000)), arg1, arg2);
                if arg3 > allowance[address(arg1)][address(msg.sender)]:
                    revert with 0, 
                                32,
                                40,
                                0x6442455032303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                mem[360 len 24],
                                mem[408 len 8]
                if not arg1:
                    revert with 0, 32, 36, 0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[488 len 28]
                if not msg.sender:
                    revert with 0, 32, 34, 0x2e42455032303a20617070726f766520746f20746865207a65726f20616464726573, mem[486 len 30]
    ('bool', 'msg.sender')
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    return 1
}

function delegate(address arg1) {
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
                                        0x735445535443473a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                        Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[182 len 10])
                        if numCheckpoints[address(arg1)] <= 0:
                            checkpoints[address(arg1)][stor12[address(arg1)]].field_0 = uint32(block.number)
                            checkpoints[address(arg1)][stor12[address(arg1)]].field_256 = balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256
                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        else:
                            if checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256 += balanceOf[address(msg.sender)]
                            else:
                                checkpoints[address(arg1)][stor12[address(arg1)]].field_0 = uint32(block.number)
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
                                        0x735445535443473a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                        Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[182 len 10])
                        if numCheckpoints[address(arg1)] <= 0:
                            checkpoints[address(arg1)][stor12[address(arg1)]].field_0 = uint32(block.number)
                            checkpoints[address(arg1)][stor12[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        else:
                            if checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256 = balanceOf[address(msg.sender)]
                            else:
                                checkpoints[address(arg1)][stor12[address(arg1)]].field_0 = uint32(block.number)
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
                                    0x735445535443473a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                    Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[182 len 10])
                    if numCheckpoints[stor10[address(msg.sender)]] <= 0:
                        checkpoints[stor10[address(msg.sender)]][stor12[stor10[address(msg.sender)]]].field_0 = uint32(block.number)
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
                                                0x735445535443473a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                                Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[342 len 10])
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor12[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor12[address(arg1)]].field_256 = balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256 += balanceOf[address(msg.sender)]
                                    else:
                                        checkpoints[address(arg1)][stor12[address(arg1)]].field_0 = uint32(block.number)
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
                                                0x735445535443473a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                                Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[342 len 10])
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor12[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor12[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256 = balanceOf[address(msg.sender)]
                                    else:
                                        checkpoints[address(arg1)][stor12[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor12[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], arg1);
                    else:
                        if checkpoints[stor10[address(msg.sender)]][stor12[stor10[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
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
                                                    0x735445535443473a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                                    Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[278 len 10])
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor12[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor12[address(arg1)]].field_256 = balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256 += balanceOf[address(msg.sender)]
                                        else:
                                            checkpoints[address(arg1)][stor12[address(arg1)]].field_0 = uint32(block.number)
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
                                                    0x735445535443473a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                                    Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[278 len 10])
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor12[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor12[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256 = balanceOf[address(msg.sender)]
                                        else:
                                            checkpoints[address(arg1)][stor12[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor12[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], arg1);
                        else:
                            checkpoints[stor10[address(msg.sender)]][stor12[stor10[address(msg.sender)]]].field_0 = uint32(block.number)
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
                                                    0x735445535443473a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                                    Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[342 len 10])
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor12[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor12[address(arg1)]].field_256 = balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256 += balanceOf[address(msg.sender)]
                                        else:
                                            checkpoints[address(arg1)][stor12[address(arg1)]].field_0 = uint32(block.number)
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
                                                    0x735445535443473a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                                    Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[342 len 10])
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor12[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor12[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256 = balanceOf[address(msg.sender)]
                                        else:
                                            checkpoints[address(arg1)][stor12[address(arg1)]].field_0 = uint32(block.number)
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
                                    0x735445535443473a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                    Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[182 len 10])
                    if numCheckpoints[stor10[address(msg.sender)]] <= 0:
                        checkpoints[stor10[address(msg.sender)]][stor12[stor10[address(msg.sender)]]].field_0 = uint32(block.number)
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
                                                0x735445535443473a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                                Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[342 len 10])
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor12[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor12[address(arg1)]].field_256 = balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256 += balanceOf[address(msg.sender)]
                                    else:
                                        checkpoints[address(arg1)][stor12[address(arg1)]].field_0 = uint32(block.number)
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
                                                0x735445535443473a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                                Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[342 len 10])
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor12[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor12[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256 = balanceOf[address(msg.sender)]
                                    else:
                                        checkpoints[address(arg1)][stor12[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor12[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], arg1);
                    else:
                        if checkpoints[stor10[address(msg.sender)]][stor12[stor10[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
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
                                                    0x735445535443473a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                                    Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[278 len 10])
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor12[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor12[address(arg1)]].field_256 = balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256 += balanceOf[address(msg.sender)]
                                        else:
                                            checkpoints[address(arg1)][stor12[address(arg1)]].field_0 = uint32(block.number)
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
                                                    0x735445535443473a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                                    Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[278 len 10])
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor12[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor12[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256 = balanceOf[address(msg.sender)]
                                        else:
                                            checkpoints[address(arg1)][stor12[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor12[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], arg1);
                        else:
                            checkpoints[stor10[address(msg.sender)]][stor12[stor10[address(msg.sender)]]].field_0 = uint32(block.number)
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
                                                    0x735445535443473a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                                    Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[342 len 10])
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor12[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor12[address(arg1)]].field_256 = balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256 += balanceOf[address(msg.sender)]
                                        else:
                                            checkpoints[address(arg1)][stor12[address(arg1)]].field_0 = uint32(block.number)
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
                                                    0x735445535443473a3a5f7772697465436865636b706f696e743a20626c6f636b,
                                                    Mask(176, 0, 0x206e756d626572206578636565647320333220626974, mem[342 len 10])
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor12[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor12[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor12[address(arg1)] - 1 << 224].field_256 = balanceOf[address(msg.sender)]
                                        else:
                                            checkpoints[address(arg1)][stor12[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor12[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], arg1);
}



}
