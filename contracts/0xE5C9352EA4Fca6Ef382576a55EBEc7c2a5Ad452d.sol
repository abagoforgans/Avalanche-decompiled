contract main {




// =====================  Runtime code  =====================


const decimals = 18

const MAXIMUM_TRANSFER_TAX_RATE = 1000

const DOMAIN_TYPEHASH = 0x8cad95687ba82c2ce50e74f7b754645e5117c3a5bec8151c0726d5857980a866

const MAX_SUPPLY = 2000000 * 10^18

const DELEGATION_TYPEHASH = 0xe48329057bfd03d55e49b547132e39cffd9c1820ad7b9d4c5307691425d15adf

const BURN_ADDRESS = 57005


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of struct stor3;
array of struct stor4;
mapping of uint8 stor5;
uint16 transferTaxRate;
uint16 burnRate; offset 16
uint16 maxTransferAmountRate;
mapping of uint8 stor9;
mapping of uint8 stor10;
mapping of uint8 stor11;
uint8 isPaused; offset 160
uint128 stor12; offset 160
address operatorAddress;
mapping of address delegates;
mapping of struct checkpoints;
mapping of uint32 numCheckpoints;
mapping of uint256 nonces;

function isExcludedFromTransactionFee(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor10[address(arg1)])
}

function totalSupply() {
    return totalSupply
}

function isExcludedFromAntiWhale(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor9[address(arg1)])
}

function maxTransferAmountRate() {
    return maxTransferAmountRate
}

function operator() {
    return operatorAddress
}

function delegates(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return delegates[address(arg1)]
}

function numCheckpoints(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return numCheckpoints[arg1]
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function nonces(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return nonces[arg1]
}

function isMinter(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Roles: account is the zero address'
    return bool(stor5[address(arg1)])
}

function sub_aa6cb48c(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor11[address(arg1)])
}

function isPaused() {
    return bool(isPaused)
}

function transferTaxRate() {
    return transferTaxRate
}

function burnRate() {
    return burnRate
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function checkpoints(address arg1, uint32 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return checkpoints[arg1][arg2].field_0, checkpoints[arg1][arg2].field_256
}

function maxTransferAmount() {
    if totalSupply and maxTransferAmountRate > -1 / totalSupply:
        revert with 0, 17
    return (totalSupply * maxTransferAmountRate / 10000)
}

function setPaused(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'operator: caller is not the operator'
    stor12 = Mask(96, 0, arg1)
}

function sub_54cc1979(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'operator: caller is not the operator'
    stor11[address(arg1)] = uint8(bool(arg2))
}

function setExcludedFromAntiWhale(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'operator: caller is not the operator'
    stor9[address(arg1)] = uint8(arg2)
}

function setExcludedFromTransactionFee(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'operator: caller is not the operator'
    stor10[address(arg1)] = uint8(arg2)
}

function renounceMinter() {
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Roles: account is the zero address'
    if not stor5[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Roles: account does not have role'
    stor5[address(msg.sender)] = 0
    emit MinterRemoved(msg.sender);
}

function approve(address arg1, uint256 arg2) {
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

function transferOperator(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'operator: caller is not the operator'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Vampire::transferOperator: new operator is the zero address'
    emit OperatorTransferred(operatorAddress, arg1);
    operatorAddress = arg1
}

function updateBurnRate(uint16 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'operator: caller is not the operator'
    if arg1 > 1000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Vampire::updateBurnRate: Burn rate must not exceed the maximum rate.'
    emit BurnRateUpdated(transferTaxRate, arg1, msg.sender);
    burnRate = arg1
}

function updateTransferTaxRate(uint16 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'operator: caller is not the operator'
    if arg1 > 1000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Vampire::updateTransferTaxRate: Transfer tax rate must not exceed the maximum rate.'
    emit TransferTaxRateUpdated(transferTaxRate, arg1, msg.sender);
    transferTaxRate = arg1
}

function updateMaxTransferAmountRate(uint16 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'operator: caller is not the operator'
    if arg1 > 10000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Vampire::updateMaxTransferAmountRate: Max transfer amount rate must not exceed the maximum rate.'
    emit MaxTransferAmountRateUpdated(maxTransferAmountRate, arg1, msg.sender);
    maxTransferAmountRate = arg1
}

function increaseAllowance(address arg1, uint256 arg2) {
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

function addMinter(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Roles: account is the zero address'
    if not stor5[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'MinterRole: caller does not have the Minter role'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Roles: account is the zero address'
    if stor5[address(arg1)]:
        revert with 0, 'Roles: account already has role'
    stor5[address(arg1)] = 1
    emit MinterAdded(arg1);
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if allowance[msg.sender][address(arg1)] < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: decreased allowance below zero'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] - arg2
    emit Approval((allowance[msg.sender][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function name() {
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

function symbol() {
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

function mint(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Roles: account is the zero address'
    if not stor5[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'MinterRole: caller does not have the Minter role'
    if totalSupply > !arg2:
        revert with 0, 17
    if totalSupply + arg2 <= 2000000 * 10^18:
        if not arg1:
            revert with 0, 'ERC20: mint to the zero address'
        if totalSupply > !arg2:
            revert with 0, 17
        totalSupply += arg2
        if balanceOf[address(arg1)] > !arg2:
            revert with 0, 17
        balanceOf[address(arg1)] += arg2
        emit Transfer(arg2, 0, arg1);
        if delegates[address(arg1)] != 0:
            if arg2 > 0:
                if delegates[address(arg1)]:
                    if not numCheckpoints[stor13[address(arg1)]]:
                        if 0 > !arg2:
                            revert with 0, 17
                        if block.number >= 4294967296:
                            revert with 0, 
                                        32,
                                        55,
                                        0xfe56616d706972653a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[183 len 9] >> 184,
                                        0
                        if numCheckpoints[stor13[address(arg1)]] <= 0:
                            checkpoints[stor13[address(arg1)]][stor15[stor13[address(arg1)]]].field_0 = uint32(block.number)
                            checkpoints[stor13[address(arg1)]][stor15[stor13[address(arg1)]]].field_256 = arg2
                            if 1 > -numCheckpoints[stor13[address(arg1)]] + test266151307():
                                revert with 0, 17
                            numCheckpoints[stor13[address(arg1)]] = uint32(numCheckpoints[stor13[address(arg1)]] + 1)
                        else:
                            if numCheckpoints[stor13[address(arg1)]] < 1:
                                revert with 0, 17
                            if checkpoints[stor13[address(arg1)]][stor15[stor13[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                                if numCheckpoints[stor13[address(arg1)]] < 1:
                                    revert with 0, 17
                                checkpoints[stor13[address(arg1)]][stor15[stor13[address(arg1)]] - 1 << 224].field_256 = arg2
                            else:
                                checkpoints[stor13[address(arg1)]][stor15[stor13[address(arg1)]]].field_0 = uint32(block.number)
                                checkpoints[stor13[address(arg1)]][stor15[stor13[address(arg1)]]].field_256 = arg2
                                if 1 > -numCheckpoints[stor13[address(arg1)]] + test266151307():
                                    revert with 0, 17
                                numCheckpoints[stor13[address(arg1)]] = uint32(numCheckpoints[stor13[address(arg1)]] + 1)
                        emit DelegateVotesChanged(0, arg2, delegates[address(arg1)]);
                    else:
                        if numCheckpoints[stor13[address(arg1)]] < 1:
                            revert with 0, 17
                        if checkpoints[stor13[address(arg1)]][stor15[stor13[address(arg1)]] - 1 << 224].field_256 > !arg2:
                            revert with 0, 17
                        if block.number >= 4294967296:
                            revert with 0, 
                                        32,
                                        55,
                                        0xfe56616d706972653a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[183 len 9] >> 184,
                                        0
                        if numCheckpoints[stor13[address(arg1)]] <= 0:
                            checkpoints[stor13[address(arg1)]][stor15[stor13[address(arg1)]]].field_0 = uint32(block.number)
                            checkpoints[stor13[address(arg1)]][stor15[stor13[address(arg1)]]].field_256 = checkpoints[stor13[address(arg1)]][stor15[stor13[address(arg1)]] - 1 << 224].field_256 + arg2
                            if 1 > -numCheckpoints[stor13[address(arg1)]] + test266151307():
                                revert with 0, 17
                            numCheckpoints[stor13[address(arg1)]] = uint32(numCheckpoints[stor13[address(arg1)]] + 1)
                        else:
                            if numCheckpoints[stor13[address(arg1)]] < 1:
                                revert with 0, 17
                            if checkpoints[stor13[address(arg1)]][stor15[stor13[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                                if numCheckpoints[stor13[address(arg1)]] < 1:
                                    revert with 0, 17
                                checkpoints[stor13[address(arg1)]][stor15[stor13[address(arg1)]] - 1 << 224].field_256 += arg2
                            else:
                                checkpoints[stor13[address(arg1)]][stor15[stor13[address(arg1)]]].field_0 = uint32(block.number)
                                checkpoints[stor13[address(arg1)]][stor15[stor13[address(arg1)]]].field_256 = checkpoints[stor13[address(arg1)]][stor15[stor13[address(arg1)]] - 1 << 224].field_256 + arg2
                                if 1 > -numCheckpoints[stor13[address(arg1)]] + test266151307():
                                    revert with 0, 17
                                numCheckpoints[stor13[address(arg1)]] = uint32(numCheckpoints[stor13[address(arg1)]] + 1)
                        emit DelegateVotesChanged(checkpoints[stor13[address(arg1)]][stor15[stor13[address(arg1)]] - 1 << 224].field_256, checkpoints[stor13[address(arg1)]][stor15[stor13[address(arg1)]] - 1 << 224].field_256 + arg2, delegates[address(arg1)]);
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if totalSupply and maxTransferAmountRate > -1 / totalSupply:
        revert with 0, 17
    if totalSupply * maxTransferAmountRate / 10000 > 0:
        if not stor9[address(msg.sender)]:
            if not stor9[address(arg1)]:
                if totalSupply and maxTransferAmountRate > -1 / totalSupply:
                    revert with 0, 17
                if arg2 > totalSupply * maxTransferAmountRate / 10000:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                'Vampire::antiWhale: Transfer amount exceeds the maxTransferAmount'
    if not stor11[address(msg.sender)]:
        if isPaused:
            revert with 0, 'Vampire: token transfer paused'
    if 57005 == arg1:
        if not msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
        if balanceOf[address(msg.sender)] < arg2:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
        balanceOf[address(msg.sender)] -= arg2
        if balanceOf[arg1] > !arg2:
            revert with 0, 17
        balanceOf[arg1] += arg2
        emit Transfer(arg2, msg.sender, arg1);
    else:
        if not transferTaxRate:
            if not msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
            if balanceOf[address(msg.sender)] < arg2:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
            balanceOf[address(msg.sender)] -= arg2
            if balanceOf[arg1] > !arg2:
                revert with 0, 17
            balanceOf[arg1] += arg2
            emit Transfer(arg2, msg.sender, arg1);
        else:
            if 1 == bool(stor10[address(msg.sender)]):
                if not msg.sender:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                if not arg1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                if balanceOf[address(msg.sender)] < arg2:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                balanceOf[address(msg.sender)] -= arg2
                if balanceOf[arg1] > !arg2:
                    revert with 0, 17
                balanceOf[arg1] += arg2
                emit Transfer(arg2, msg.sender, arg1);
            else:
                if arg2 and transferTaxRate > -1 / arg2:
                    revert with 0, 17
                if arg2 and burnRate > -1 / arg2:
                    revert with 0, 17
                if arg2 * transferTaxRate / 10000 > !(arg2 * burnRate / 10000):
                    revert with 0, 17
                if arg2 < (arg2 * transferTaxRate / 10000) + (arg2 * burnRate / 10000):
                    revert with 0, 17
                if arg2 - (arg2 * transferTaxRate / 10000) - (arg2 * burnRate / 10000) > !(arg2 * transferTaxRate / 10000):
                    revert with 0, 17
                if arg2 != arg2 - (arg2 * burnRate / 10000):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Vampire::transfer: Tax value invalid'
                if not msg.sender:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                if balanceOf[address(msg.sender)] < arg2 * burnRate / 10000:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                balanceOf[address(msg.sender)] -= arg2 * burnRate / 10000
                if balanceOf[57005] > !(arg2 * burnRate / 10000):
                    revert with 0, 17
                balanceOf[57005] += arg2 * burnRate / 10000
                emit Transfer((arg2 * burnRate / 10000), msg.sender, 57005);
                if not msg.sender:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                if not this.address:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                if balanceOf[address(msg.sender)] < arg2 * transferTaxRate / 10000:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                balanceOf[address(msg.sender)] -= arg2 * transferTaxRate / 10000
                if balanceOf[this.address] > !(arg2 * transferTaxRate / 10000):
                    revert with 0, 17
                balanceOf[this.address] += arg2 * transferTaxRate / 10000
                emit Transfer((arg2 * transferTaxRate / 10000), msg.sender, this.address);
                if not msg.sender:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                if not arg1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                if balanceOf[address(msg.sender)] < arg2 - (arg2 * transferTaxRate / 10000) - (arg2 * burnRate / 10000):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * transferTaxRate / 10000) + (arg2 * burnRate / 10000)
                if balanceOf[arg1] > !(arg2 - (arg2 * transferTaxRate / 10000) - (arg2 * burnRate / 10000)):
                    revert with 0, 17
                balanceOf[arg1] = balanceOf[arg1] + arg2 - (arg2 * transferTaxRate / 10000) - (arg2 * burnRate / 10000)
                emit Transfer((arg2 - (arg2 * transferTaxRate / 10000) - (arg2 * burnRate / 10000)), msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if totalSupply and maxTransferAmountRate > -1 / totalSupply:
        revert with 0, 17
    if totalSupply * maxTransferAmountRate / 10000 > 0:
        if not stor9[address(arg1)]:
            if not stor9[address(arg2)]:
                if totalSupply and maxTransferAmountRate > -1 / totalSupply:
                    revert with 0, 17
                if arg3 > totalSupply * maxTransferAmountRate / 10000:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                'Vampire::antiWhale: Transfer amount exceeds the maxTransferAmount'
    if not stor11[address(arg1)]:
        if isPaused:
            revert with 0, 'Vampire: token transfer paused'
    if 57005 == arg2:
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
        if not arg2:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
        if balanceOf[address(arg1)] < arg3:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
        balanceOf[address(arg1)] -= arg3
        if balanceOf[arg2] > !arg3:
            revert with 0, 17
        balanceOf[arg2] += arg3
        emit Transfer(arg3, arg1, arg2);
    else:
        if not transferTaxRate:
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
            if not arg2:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
            if balanceOf[address(arg1)] < arg3:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
            balanceOf[address(arg1)] -= arg3
            if balanceOf[arg2] > !arg3:
                revert with 0, 17
            balanceOf[arg2] += arg3
            emit Transfer(arg3, arg1, arg2);
        else:
            if 1 == bool(stor10[address(arg1)]):
                if not arg1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                if not arg2:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                if balanceOf[address(arg1)] < arg3:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                balanceOf[address(arg1)] -= arg3
                if balanceOf[arg2] > !arg3:
                    revert with 0, 17
                balanceOf[arg2] += arg3
                emit Transfer(arg3, arg1, arg2);
            else:
                if arg3 and transferTaxRate > -1 / arg3:
                    revert with 0, 17
                if arg3 and burnRate > -1 / arg3:
                    revert with 0, 17
                if arg3 * transferTaxRate / 10000 > !(arg3 * burnRate / 10000):
                    revert with 0, 17
                if arg3 < (arg3 * transferTaxRate / 10000) + (arg3 * burnRate / 10000):
                    revert with 0, 17
                if arg3 - (arg3 * transferTaxRate / 10000) - (arg3 * burnRate / 10000) > !(arg3 * transferTaxRate / 10000):
                    revert with 0, 17
                if arg3 != arg3 - (arg3 * burnRate / 10000):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Vampire::transfer: Tax value invalid'
                if not arg1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                if balanceOf[address(arg1)] < arg3 * burnRate / 10000:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                balanceOf[address(arg1)] -= arg3 * burnRate / 10000
                if balanceOf[57005] > !(arg3 * burnRate / 10000):
                    revert with 0, 17
                balanceOf[57005] += arg3 * burnRate / 10000
                emit Transfer((arg3 * burnRate / 10000), arg1, 57005);
                if not arg1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                if not this.address:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                if balanceOf[address(arg1)] < arg3 * transferTaxRate / 10000:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                balanceOf[address(arg1)] -= arg3 * transferTaxRate / 10000
                if balanceOf[this.address] > !(arg3 * transferTaxRate / 10000):
                    revert with 0, 17
                balanceOf[this.address] += arg3 * transferTaxRate / 10000
                emit Transfer((arg3 * transferTaxRate / 10000), arg1, this.address);
                if not arg1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                if not arg2:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                if balanceOf[address(arg1)] < arg3 - (arg3 * transferTaxRate / 10000) - (arg3 * burnRate / 10000):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * transferTaxRate / 10000) + (arg3 * burnRate / 10000)
                if balanceOf[arg2] > !(arg3 - (arg3 * transferTaxRate / 10000) - (arg3 * burnRate / 10000)):
                    revert with 0, 17
                balanceOf[arg2] = balanceOf[arg2] + arg3 - (arg3 * transferTaxRate / 10000) - (arg3 * burnRate / 10000)
                emit Transfer((arg3 - (arg3 * transferTaxRate / 10000) - (arg3 * burnRate / 10000)), arg1, arg2);
    if allowance[address(arg1)][msg.sender] < arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds allowance'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(arg1)][address(msg.sender)] = allowance[address(arg1)][msg.sender] - arg3
    emit Approval((allowance[address(arg1)][msg.sender] - arg3), arg1, msg.sender);
    return 1
}

function _fallback() payable {
    if calldata.size < 4:
        require not calldata.size
    if unknown_0x6a141e2c(?????) <= uint32(call.func_hash) >> 224:
        if unknown_0xaa271e1a(?????) <= uint32(call.func_hash) >> 224:
            if unknown_0xc7f59a67(?????) > uint32(call.func_hash) >> 224:
                if unknown_0xaa271e1a(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require arg1 == address(arg1)
                    if not address(arg1):
                        revert with 0, 'Roles: account is the zero address'
                    return bool(stor5[address(arg1)])
                if unknown_0xaa6cb48c(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require arg1 == address(arg1)
                    return bool(stor11[address(arg1)])
                if unknown_0xb187bd26(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return bool(isPaused)
                if unknown_0xb65d08b0(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return transferTaxRate
                require unknown_0xbed99850(?????) == uint32(call.func_hash) >> 224
                require not msg.value
                return burnRate
            if unknown_0xc7f59a67(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 64
                require arg1 == address(arg1)
                require arg2 == bool(arg2)
                if operatorAddress != msg.sender:
                    revert with 0, 'operator: caller is not the operator'
                stor9[address(arg1)] = uint8(bool(arg2))
            else:
                if unknown_0xdd62ed3e(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 64
                    require arg1 == address(arg1)
                    require arg2 == address(arg2)
                    return allowance[address(arg1)][address(arg2)]
                if unknown_0xe7a324dc(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return 0xe48329057bfd03d55e49b547132e39cffd9c1820ad7b9d4c5307691425d15adf
                if unknown_0xf1127ed8(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 64
                    require arg1 == address(arg1)
                    require arg2 == uint32(arg2)
                    return checkpoints[arg1][arg2].field_0, checkpoints[arg1][arg2].field_256
                if uint32(call.func_hash) >> 224 != unknown_0xf607f2b4(?????):
                    require unknown_0xfccc2813(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    return 57005
                require not msg.value
                require calldata.size - 4 >= 32
                require arg1 == uint16(arg1)
                if operatorAddress != msg.sender:
                    revert with 0, 'operator: caller is not the operator'
                if uint16(arg1) > 1000:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                'Vampire::updateBurnRate: Burn rate must not exceed the maximum rate.'
                emit BurnRateUpdated(transferTaxRate, uint16(arg1), msg.sender);
                burnRate = uint16(arg1)
        if unknown_0x983b2d56(?????) > uint32(call.func_hash) >> 224:
            if unknown_0x6a141e2c(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 32
                require arg1 == uint16(arg1)
                if operatorAddress != msg.sender:
                    revert with 0, 'operator: caller is not the operator'
                if uint16(arg1) > 10000:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                'Vampire::updateMaxTransferAmountRate: Max transfer amount rate must not exceed the maximum rate.'
                emit MaxTransferAmountRateUpdated(maxTransferAmountRate, uint16(arg1), msg.sender);
                maxTransferAmountRate = uint16(arg1)
            if unknown_0x6fcfff45(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 32
                require arg1 == address(arg1)
                return numCheckpoints[arg1]
            if unknown_0x70a08231(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 32
                require arg1 == address(arg1)
                return balanceOf[address(arg1)]
            if unknown_0x7ecebe00(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 32
                require arg1 == address(arg1)
                return nonces[arg1]
            require unknown_0x95d89b41(?????) == uint32(call.func_hash) >> 224
            require not msg.value
            if bool(stor4.length):
                if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
                    revert with 0, 34
                if bool(stor4.length):
                    if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, stor4.length):
                        if 31 < uint255(stor4.length) * 0.5:
                            mem[160] = uint256(stor4.field_0)
                            idx = 160
                            s = 0
                            while (uint255(stor4.length) * 0.5) + 128 > idx:
                                mem[idx + 32] = stor4[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            return Array(len=2 * Mask(256, -1, stor4.length), data=mem[160 len ceil32(uint255(stor4.length) * 0.5)])
                        mem[160] = 256 * stor4.length.field_8
                else:
                    if bool(stor4.length) == stor4.length.field_1 < 32:
                        revert with 0, 34
                    if stor4.length.field_1:
                        if 31 < stor4.length.field_1:
                            mem[160] = uint256(stor4.field_0)
                            idx = 160
                            s = 0
                            while stor4.length.field_1 + 128 > idx:
                                mem[idx + 32] = stor4[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            return Array(len=2 * Mask(256, -1, stor4.length), data=mem[160 len ceil32(uint255(stor4.length) * 0.5)])
                        mem[160] = 256 * stor4.length.field_8
                mem[ceil32(uint255(stor4.length) * 0.5) + 224 len ceil32(uint255(stor4.length) * 0.5)] = mem[160 len ceil32(uint255(stor4.length) * 0.5)]
                if ceil32(uint255(stor4.length) * 0.5) > uint255(stor4.length) * 0.5:
                    mem[ceil32(uint255(stor4.length) * 0.5) + (uint255(stor4.length) * 0.5) + 224] = 0
                return Array(len=2 * Mask(256, -1, stor4.length), data=mem[160 len ceil32(uint255(stor4.length) * 0.5)], mem[(2 * ceil32(uint255(stor4.length) * 0.5)) + 224 len 2 * ceil32(uint255(stor4.length) * 0.5)]), 
            if bool(stor4.length) == stor4.length.field_1 < 32:
                revert with 0, 34
            if bool(stor4.length):
                if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
                    revert with 0, 34
                if Mask(256, -1, stor4.length):
                    if 31 < uint255(stor4.length) * 0.5:
                        mem[160] = uint256(stor4.field_0)
                        idx = 160
                        s = 0
                        while (uint255(stor4.length) * 0.5) + 128 > idx:
                            mem[idx + 32] = stor4[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        return Array(len=stor4.length % 128, data=mem[160 len ceil32(stor4.length.field_1)])
                    mem[160] = 256 * stor4.length.field_8
            else:
                if bool(stor4.length) == stor4.length.field_1 < 32:
                    revert with 0, 34
                if stor4.length.field_1:
                    if 31 < stor4.length.field_1:
                        mem[160] = uint256(stor4.field_0)
                        idx = 160
                        s = 0
                        while stor4.length.field_1 + 128 > idx:
                            mem[idx + 32] = stor4[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        return Array(len=stor4.length % 128, data=mem[160 len ceil32(stor4.length.field_1)])
                    mem[160] = 256 * stor4.length.field_8
            mem[ceil32(stor4.length.field_1) + 224 len ceil32(stor4.length.field_1)] = mem[160 len ceil32(stor4.length.field_1)]
            if ceil32(stor4.length.field_1) > stor4.length.field_1:
                mem[ceil32(stor4.length.field_1) + stor4.length.field_1 + 224] = 0
            return Array(len=stor4.length % 128, data=mem[160 len ceil32(stor4.length.field_1)], mem[(2 * ceil32(stor4.length.field_1)) + 224 len 2 * ceil32(stor4.length.field_1)]), 
        if unknown_0x983b2d56(?????) == uint32(call.func_hash) >> 224:
            require not msg.value
            require calldata.size - 4 >= 32
            require arg1 == address(arg1)
            if not msg.sender:
                revert with 0, 'Roles: account is the zero address'
            if not stor5[address(msg.sender)]:
                revert with 0, 'MinterRole: caller does not have the Minter role'
            if not address(arg1):
                revert with 0, 'Roles: account is the zero address'
            if stor5[address(arg1)]:
                revert with 0, 'Roles: account already has role'
            stor5[address(arg1)] = 1
            emit MinterAdded(address(arg1));
        if unknown_0x98650275(?????) == uint32(call.func_hash) >> 224:
            require not msg.value
            if not msg.sender:
                revert with 0, 'Roles: account is the zero address'
            if not stor5[address(msg.sender)]:
                revert with 0, 'Roles: account does not have role'
            stor5[address(msg.sender)] = 0
            emit MinterRemoved(msg.sender);
        if unknown_0xa457c2d7(?????) == uint32(call.func_hash) >> 224:
            require not msg.value
            require calldata.size - 4 >= 64
            require arg1 == address(arg1)
            if allowance[msg.sender][address(arg1)] < arg2:
                revert with 0, 'ERC20: decreased allowance below zero'
            if not msg.sender:
                revert with 0, 'ERC20: approve from the zero address'
            if not address(arg1):
                revert with 0, 'ERC20: approve to the zero address'
            allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] - arg2
            emit Approval((allowance[msg.sender][address(arg1)] - arg2), msg.sender, address(arg1));
        else:
            if uint32(call.func_hash) >> 224 != unknown_0xa9059cbb(?????):
                require unknown_0xa9e75723(?????) == uint32(call.func_hash) >> 224
                require not msg.value
                if totalSupply and maxTransferAmountRate > -1 / totalSupply:
                    revert with 0, 17
                return (totalSupply * maxTransferAmountRate / 10000)
            require not msg.value
            require calldata.size - 4 >= 64
            require arg1 == address(arg1)
            if totalSupply and maxTransferAmountRate > -1 / totalSupply:
                revert with 0, 17
            if totalSupply * maxTransferAmountRate / 10000 > 0:
                if not stor9[address(msg.sender)]:
                    if not stor9[address(arg1)]:
                        if totalSupply and maxTransferAmountRate > -1 / totalSupply:
                            revert with 0, 17
                        if arg2 > totalSupply * maxTransferAmountRate / 10000:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        'Vampire::antiWhale: Transfer amount exceeds the maxTransferAmount'
            if not stor11[address(msg.sender)]:
                if isPaused:
                    revert with 0, 'Vampire: token transfer paused'
            if 57005 == address(arg1):
                if not msg.sender:
                    revert with 0, 'ERC20: transfer from the zero address'
                if not address(arg1):
                    revert with 0, 'ERC20: transfer to the zero address'
                if balanceOf[address(msg.sender)] < arg2:
                    revert with 0, 'ERC20: transfer amount exceeds balance'
                balanceOf[address(msg.sender)] -= arg2
                if balanceOf[address(arg1)] > !arg2:
                    revert with 0, 17
                balanceOf[address(arg1)] += arg2
                emit Transfer(arg2, msg.sender, address(arg1));
            else:
                if not transferTaxRate:
                    if not msg.sender:
                        revert with 0, 'ERC20: transfer from the zero address'
                    if not address(arg1):
                        revert with 0, 'ERC20: transfer to the zero address'
                    if balanceOf[address(msg.sender)] < arg2:
                        revert with 0, 'ERC20: transfer amount exceeds balance'
                    balanceOf[address(msg.sender)] -= arg2
                    if balanceOf[address(arg1)] > !arg2:
                        revert with 0, 17
                    balanceOf[address(arg1)] += arg2
                    emit Transfer(arg2, msg.sender, address(arg1));
                else:
                    if 1 == bool(stor10[address(msg.sender)]):
                        if not msg.sender:
                            revert with 0, 'ERC20: transfer from the zero address'
                        if not address(arg1):
                            revert with 0, 'ERC20: transfer to the zero address'
                        if balanceOf[address(msg.sender)] < arg2:
                            revert with 0, 'ERC20: transfer amount exceeds balance'
                        balanceOf[address(msg.sender)] -= arg2
                        if balanceOf[address(arg1)] > !arg2:
                            revert with 0, 17
                        balanceOf[address(arg1)] += arg2
                        emit Transfer(arg2, msg.sender, address(arg1));
                    else:
                        if arg2 and transferTaxRate > -1 / arg2:
                            revert with 0, 17
                        if arg2 and burnRate > -1 / arg2:
                            revert with 0, 17
                        if arg2 * transferTaxRate / 10000 > !(arg2 * burnRate / 10000):
                            revert with 0, 17
                        if arg2 < (arg2 * transferTaxRate / 10000) + (arg2 * burnRate / 10000):
                            revert with 0, 17
                        if arg2 - (arg2 * transferTaxRate / 10000) - (arg2 * burnRate / 10000) > !(arg2 * transferTaxRate / 10000):
                            revert with 0, 17
                        if arg2 != arg2 - (arg2 * burnRate / 10000):
                            revert with 0, 'Vampire::transfer: Tax value invalid'
                        if not msg.sender:
                            revert with 0, 'ERC20: transfer from the zero address'
                        if balanceOf[address(msg.sender)] < arg2 * burnRate / 10000:
                            revert with 0, 'ERC20: transfer amount exceeds balance'
                        balanceOf[address(msg.sender)] -= arg2 * burnRate / 10000
                        if balanceOf[57005] > !(arg2 * burnRate / 10000):
                            revert with 0, 17
                        balanceOf[57005] += arg2 * burnRate / 10000
                        emit Transfer((arg2 * burnRate / 10000), msg.sender, 57005);
                        if not msg.sender:
                            revert with 0, 'ERC20: transfer from the zero address'
                        if not this.address:
                            revert with 0, 'ERC20: transfer to the zero address'
                        if balanceOf[address(msg.sender)] < arg2 * transferTaxRate / 10000:
                            revert with 0, 'ERC20: transfer amount exceeds balance'
                        balanceOf[address(msg.sender)] -= arg2 * transferTaxRate / 10000
                        if balanceOf[this.address] > !(arg2 * transferTaxRate / 10000):
                            revert with 0, 17
                        balanceOf[this.address] += arg2 * transferTaxRate / 10000
                        emit Transfer((arg2 * transferTaxRate / 10000), msg.sender, this.address);
                        if not msg.sender:
                            revert with 0, 'ERC20: transfer from the zero address'
                        if not address(arg1):
                            revert with 0, 'ERC20: transfer to the zero address'
                        if balanceOf[address(msg.sender)] < arg2 - (arg2 * transferTaxRate / 10000) - (arg2 * burnRate / 10000):
                            revert with 0, 'ERC20: transfer amount exceeds balance'
                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * transferTaxRate / 10000) + (arg2 * burnRate / 10000)
                        if balanceOf[address(arg1)] > !(arg2 - (arg2 * transferTaxRate / 10000) - (arg2 * burnRate / 10000)):
                            revert with 0, 17
                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * transferTaxRate / 10000) - (arg2 * burnRate / 10000)
                        emit Transfer((arg2 - (arg2 * transferTaxRate / 10000) - (arg2 * burnRate / 10000)), msg.sender, address(arg1));
    else:
        if unknown_0x313ce567(?????) <= uint32(call.func_hash) >> 224:
            if unknown_0x40c10f19(?????) > uint32(call.func_hash) >> 224:
                if unknown_0x313ce567(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return 18
                if unknown_0x32cb6b0c(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return 2000000 * 10^18
                if unknown_0x376c2391(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require arg1 == uint16(arg1)
                    if operatorAddress != msg.sender:
                        revert with 0, 'operator: caller is not the operator'
                    if uint16(arg1) > 1000:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    'Vampire::updateTransferTaxRate: Transfer tax rate must not exceed the maximum rate.'
                    emit TransferTaxRateUpdated(transferTaxRate, uint16(arg1), msg.sender);
                    transferTaxRate = uint16(arg1)
                if uint32(call.func_hash) >> 224 != unknown_0x39509351(?????):
                    require unknown_0x3ff8bf2e(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    return maxTransferAmountRate
                require not msg.value
                require calldata.size - 4 >= 64
                require arg1 == address(arg1)
                if allowance[msg.sender][address(arg1)] > !arg2:
                    revert with 0, 17
                if not msg.sender:
                    revert with 0, 'ERC20: approve from the zero address'
                if not address(arg1):
                    revert with 0, 'ERC20: approve to the zero address'
                allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] + arg2
                emit Approval((allowance[msg.sender][address(arg1)] + arg2), msg.sender, address(arg1));
                return 1
            if uint32(call.func_hash) >> 224 != unknown_0x40c10f19(?????):
                if unknown_0x54cc1979(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 64
                    require arg1 == address(arg1)
                    require arg2 == bool(arg2)
                    if operatorAddress != msg.sender:
                        revert with 0, 'operator: caller is not the operator'
                    stor11[address(arg1)] = uint8(bool(arg2))
                else:
                    if unknown_0x570ca735(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return operatorAddress
                    if unknown_0x587cde1e(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require arg1 == address(arg1)
                        return delegates[address(arg1)]
                    require unknown_0x670ed327(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    require calldata.size - 4 >= 64
                    require arg1 == address(arg1)
                    require arg2 == bool(arg2)
                    if operatorAddress != msg.sender:
                        revert with 0, 'operator: caller is not the operator'
                    stor10[address(arg1)] = uint8(bool(arg2))
            else:
                require not msg.value
                require calldata.size - 4 >= 64
                require arg1 == address(arg1)
                if not msg.sender:
                    revert with 0, 'Roles: account is the zero address'
                if not stor5[address(msg.sender)]:
                    revert with 0, 'MinterRole: caller does not have the Minter role'
                if totalSupply > !arg2:
                    revert with 0, 17
                if totalSupply + arg2 <= 2000000 * 10^18:
                    if not address(arg1):
                        revert with 0, 'ERC20: mint to the zero address'
                    if totalSupply > !arg2:
                        revert with 0, 17
                    totalSupply += arg2
                    if balanceOf[address(arg1)] > !arg2:
                        revert with 0, 17
                    balanceOf[address(arg1)] += arg2
                    emit Transfer(arg2, 0, address(arg1));
                    if delegates[address(arg1)] != 0:
                        if arg2 > 0:
                            if delegates[address(arg1)]:
                                if not numCheckpoints[stor13[address(arg1)]]:
                                    if 0 > !arg2:
                                        revert with 0, 17
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    55,
                                                    0xfe56616d706972653a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[215 len 9] >> 184,
                                                    0
                                    if numCheckpoints[stor13[address(arg1)]] <= 0:
                                        checkpoints[stor13[address(arg1)]][stor15[stor13[address(arg1)]]].field_0 = uint32(block.number)
                                        checkpoints[stor13[address(arg1)]][stor15[stor13[address(arg1)]]].field_256 = arg2
                                        if 1 > -numCheckpoints[stor13[address(arg1)]] + test266151307():
                                            revert with 0, 17
                                        numCheckpoints[stor13[address(arg1)]] = uint32(numCheckpoints[stor13[address(arg1)]] + 1)
                                    else:
                                        if numCheckpoints[stor13[address(arg1)]] < 1:
                                            revert with 0, 17
                                        if checkpoints[stor13[address(arg1)]][stor15[stor13[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                                            if numCheckpoints[stor13[address(arg1)]] < 1:
                                                revert with 0, 17
                                            checkpoints[stor13[address(arg1)]][stor15[stor13[address(arg1)]] - 1 << 224].field_256 = arg2
                                        else:
                                            checkpoints[stor13[address(arg1)]][stor15[stor13[address(arg1)]]].field_0 = uint32(block.number)
                                            checkpoints[stor13[address(arg1)]][stor15[stor13[address(arg1)]]].field_256 = arg2
                                            if 1 > -numCheckpoints[stor13[address(arg1)]] + test266151307():
                                                revert with 0, 17
                                            numCheckpoints[stor13[address(arg1)]] = uint32(numCheckpoints[stor13[address(arg1)]] + 1)
                                    emit DelegateVotesChanged(0, arg2, delegates[address(arg1)]);
                                else:
                                    if numCheckpoints[stor13[address(arg1)]] < 1:
                                        revert with 0, 17
                                    if checkpoints[stor13[address(arg1)]][stor15[stor13[address(arg1)]] - 1 << 224].field_256 > !arg2:
                                        revert with 0, 17
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    55,
                                                    0xfe56616d706972653a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[215 len 9] >> 184,
                                                    0
                                    if numCheckpoints[stor13[address(arg1)]] <= 0:
                                        checkpoints[stor13[address(arg1)]][stor15[stor13[address(arg1)]]].field_0 = uint32(block.number)
                                        checkpoints[stor13[address(arg1)]][stor15[stor13[address(arg1)]]].field_256 = checkpoints[stor13[address(arg1)]][stor15[stor13[address(arg1)]] - 1 << 224].field_256 + arg2
                                        if 1 > -numCheckpoints[stor13[address(arg1)]] + test266151307():
                                            revert with 0, 17
                                        numCheckpoints[stor13[address(arg1)]] = uint32(numCheckpoints[stor13[address(arg1)]] + 1)
                                    else:
                                        if numCheckpoints[stor13[address(arg1)]] < 1:
                                            revert with 0, 17
                                        if checkpoints[stor13[address(arg1)]][stor15[stor13[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                                            if numCheckpoints[stor13[address(arg1)]] < 1:
                                                revert with 0, 17
                                            checkpoints[stor13[address(arg1)]][stor15[stor13[address(arg1)]] - 1 << 224].field_256 += arg2
                                        else:
                                            checkpoints[stor13[address(arg1)]][stor15[stor13[address(arg1)]]].field_0 = uint32(block.number)
                                            checkpoints[stor13[address(arg1)]][stor15[stor13[address(arg1)]]].field_256 = checkpoints[stor13[address(arg1)]][stor15[stor13[address(arg1)]] - 1 << 224].field_256 + arg2
                                            if 1 > -numCheckpoints[stor13[address(arg1)]] + test266151307():
                                                revert with 0, 17
                                            numCheckpoints[stor13[address(arg1)]] = uint32(numCheckpoints[stor13[address(arg1)]] + 1)
                                    emit DelegateVotesChanged(checkpoints[stor13[address(arg1)]][stor15[stor13[address(arg1)]] - 1 << 224].field_256, checkpoints[stor13[address(arg1)]][stor15[stor13[address(arg1)]] - 1 << 224].field_256 + arg2, delegates[address(arg1)]);
        if unknown_0x1ad9339a(?????) > uint32(call.func_hash) >> 224:
            if uint32(call.func_hash) >> 224 != name():
                if approve(address arg1, uint256 arg2) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 64
                    require arg1 == address(arg1)
                    if not msg.sender:
                        revert with 0, 'ERC20: approve from the zero address'
                    if not address(arg1):
                        revert with 0, 'ERC20: approve to the zero address'
                    allowance[address(msg.sender)][address(arg1)] = arg2
                    emit Approval(arg2, msg.sender, address(arg1));
                    return 1
                if unknown_0x14bc4186(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require arg1 == address(arg1)
                    return bool(stor10[address(arg1)])
                if uint32(call.func_hash) >> 224 != unknown_0x16c38b3c(?????):
                    require unknown_0x18160ddd(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    return totalSupply
                require not msg.value
                require calldata.size - 4 >= 32
                require arg1 == bool(arg1)
                if operatorAddress != msg.sender:
                    revert with 0, 'operator: caller is not the operator'
                stor12 = Mask(96, 0, bool(arg1))
            require not msg.value
            if bool(stor3.length):
                if bool(stor3.length) == uint255(stor3.length) * 0.5 < 32:
                    revert with 0, 34
                if bool(stor3.length):
                    if bool(stor3.length) == uint255(stor3.length) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, stor3.length):
                        if 31 < uint255(stor3.length) * 0.5:
                            mem[160] = uint256(stor3.field_0)
                            idx = 160
                            s = 0
                            while (uint255(stor3.length) * 0.5) + 128 > idx:
                                mem[idx + 32] = stor3[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            return Array(len=2 * Mask(256, -1, stor3.length), data=mem[160 len ceil32(uint255(stor3.length) * 0.5)])
                        mem[160] = 256 * stor3.length.field_8
                else:
                    if bool(stor3.length) == stor3.length.field_1 < 32:
                        revert with 0, 34
                    if stor3.length.field_1:
                        if 31 < stor3.length.field_1:
                            mem[160] = uint256(stor3.field_0)
                            idx = 160
                            s = 0
                            while stor3.length.field_1 + 128 > idx:
                                mem[idx + 32] = stor3[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            return Array(len=2 * Mask(256, -1, stor3.length), data=mem[160 len ceil32(uint255(stor3.length) * 0.5)])
                        mem[160] = 256 * stor3.length.field_8
                mem[ceil32(uint255(stor3.length) * 0.5) + 224 len ceil32(uint255(stor3.length) * 0.5)] = mem[160 len ceil32(uint255(stor3.length) * 0.5)]
                if ceil32(uint255(stor3.length) * 0.5) > uint255(stor3.length) * 0.5:
                    mem[ceil32(uint255(stor3.length) * 0.5) + (uint255(stor3.length) * 0.5) + 224] = 0
                return Array(len=2 * Mask(256, -1, stor3.length), data=mem[160 len ceil32(uint255(stor3.length) * 0.5)], mem[(2 * ceil32(uint255(stor3.length) * 0.5)) + 224 len 2 * ceil32(uint255(stor3.length) * 0.5)]), 
            if bool(stor3.length) == stor3.length.field_1 < 32:
                revert with 0, 34
            if bool(stor3.length):
                if bool(stor3.length) == uint255(stor3.length) * 0.5 < 32:
                    revert with 0, 34
                if Mask(256, -1, stor3.length):
                    if 31 < uint255(stor3.length) * 0.5:
                        mem[160] = uint256(stor3.field_0)
                        idx = 160
                        s = 0
                        while (uint255(stor3.length) * 0.5) + 128 > idx:
                            mem[idx + 32] = stor3[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        return Array(len=stor3.length % 128, data=mem[160 len ceil32(stor3.length.field_1)])
                    mem[160] = 256 * stor3.length.field_8
            else:
                if bool(stor3.length) == stor3.length.field_1 < 32:
                    revert with 0, 34
                if stor3.length.field_1:
                    if 31 < stor3.length.field_1:
                        mem[160] = uint256(stor3.field_0)
                        idx = 160
                        s = 0
                        while stor3.length.field_1 + 128 > idx:
                            mem[idx + 32] = stor3[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        return Array(len=stor3.length % 128, data=mem[160 len ceil32(stor3.length.field_1)])
                    mem[160] = 256 * stor3.length.field_8
            mem[ceil32(stor3.length.field_1) + 224 len ceil32(stor3.length.field_1)] = mem[160 len ceil32(stor3.length.field_1)]
            if ceil32(stor3.length.field_1) > stor3.length.field_1:
                mem[ceil32(stor3.length.field_1) + stor3.length.field_1 + 224] = 0
            return Array(len=stor3.length % 128, data=mem[160 len ceil32(stor3.length.field_1)], mem[(2 * ceil32(stor3.length.field_1)) + 224 len 2 * ceil32(stor3.length.field_1)]), 
        if unknown_0x1ad9339a(?????) == uint32(call.func_hash) >> 224:
            require not msg.value
            return 1000
        if unknown_0x20606b70(?????) == uint32(call.func_hash) >> 224:
            require not msg.value
            return 0x8cad95687ba82c2ce50e74f7b754645e5117c3a5bec8151c0726d5857980a866
        if uint32(call.func_hash) >> 224 != unknown_0x23b872dd(?????):
            if unknown_0x269f534c(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 32
                require arg1 == address(arg1)
                return bool(stor9[address(arg1)])
            require unknown_0x29605e77(?????) == uint32(call.func_hash) >> 224
            require not msg.value
            require calldata.size - 4 >= 32
            require arg1 == address(arg1)
            if operatorAddress != msg.sender:
                revert with 0, 'operator: caller is not the operator'
            if not address(arg1):
                revert with 0, 'Vampire::transferOperator: new operator is the zero address'
            emit OperatorTransferred(operatorAddress, address(arg1));
            operatorAddress = address(arg1)
        require not msg.value
        require calldata.size - 4 >= 96
        require arg1 == address(arg1)
        require arg2 == address(arg2)
        if totalSupply and maxTransferAmountRate > -1 / totalSupply:
            revert with 0, 17
        if totalSupply * maxTransferAmountRate / 10000 > 0:
            if not stor9[address(arg1)]:
                if not stor9[address(arg2)]:
                    if totalSupply and maxTransferAmountRate > -1 / totalSupply:
                        revert with 0, 17
                    if arg3 > totalSupply * maxTransferAmountRate / 10000:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    'Vampire::antiWhale: Transfer amount exceeds the maxTransferAmount'
        if not stor11[address(arg1)]:
            if isPaused:
                revert with 0, 'Vampire: token transfer paused'
        if 57005 == address(arg2):
            if not address(arg1):
                revert with 0, 'ERC20: transfer from the zero address'
            if not address(arg2):
                revert with 0, 'ERC20: transfer to the zero address'
            if balanceOf[address(arg1)] < arg3:
                revert with 0, 'ERC20: transfer amount exceeds balance'
            balanceOf[address(arg1)] -= arg3
            if balanceOf[address(arg2)] > !arg3:
                revert with 0, 17
            balanceOf[address(arg2)] += arg3
            emit Transfer(arg3, address(arg1), address(arg2));
        else:
            if not transferTaxRate:
                if not address(arg1):
                    revert with 0, 'ERC20: transfer from the zero address'
                if not address(arg2):
                    revert with 0, 'ERC20: transfer to the zero address'
                if balanceOf[address(arg1)] < arg3:
                    revert with 0, 'ERC20: transfer amount exceeds balance'
                balanceOf[address(arg1)] -= arg3
                if balanceOf[address(arg2)] > !arg3:
                    revert with 0, 17
                balanceOf[address(arg2)] += arg3
                emit Transfer(arg3, address(arg1), address(arg2));
            else:
                if 1 == bool(stor10[address(arg1)]):
                    if not address(arg1):
                        revert with 0, 'ERC20: transfer from the zero address'
                    if not address(arg2):
                        revert with 0, 'ERC20: transfer to the zero address'
                    if balanceOf[address(arg1)] < arg3:
                        revert with 0, 'ERC20: transfer amount exceeds balance'
                    balanceOf[address(arg1)] -= arg3
                    if balanceOf[address(arg2)] > !arg3:
                        revert with 0, 17
                    balanceOf[address(arg2)] += arg3
                    emit Transfer(arg3, address(arg1), address(arg2));
                else:
                    if arg3 and transferTaxRate > -1 / arg3:
                        revert with 0, 17
                    if arg3 and burnRate > -1 / arg3:
                        revert with 0, 17
                    if arg3 * transferTaxRate / 10000 > !(arg3 * burnRate / 10000):
                        revert with 0, 17
                    if arg3 < (arg3 * transferTaxRate / 10000) + (arg3 * burnRate / 10000):
                        revert with 0, 17
                    if arg3 - (arg3 * transferTaxRate / 10000) - (arg3 * burnRate / 10000) > !(arg3 * transferTaxRate / 10000):
                        revert with 0, 17
                    if arg3 != arg3 - (arg3 * burnRate / 10000):
                        revert with 0, 'Vampire::transfer: Tax value invalid'
                    if not address(arg1):
                        revert with 0, 'ERC20: transfer from the zero address'
                    if balanceOf[address(arg1)] < arg3 * burnRate / 10000:
                        revert with 0, 'ERC20: transfer amount exceeds balance'
                    balanceOf[address(arg1)] -= arg3 * burnRate / 10000
                    if balanceOf[57005] > !(arg3 * burnRate / 10000):
                        revert with 0, 17
                    balanceOf[57005] += arg3 * burnRate / 10000
                    emit Transfer((arg3 * burnRate / 10000), address(arg1), 57005);
                    if not address(arg1):
                        revert with 0, 'ERC20: transfer from the zero address'
                    if not this.address:
                        revert with 0, 'ERC20: transfer to the zero address'
                    if balanceOf[address(arg1)] < arg3 * transferTaxRate / 10000:
                        revert with 0, 'ERC20: transfer amount exceeds balance'
                    balanceOf[address(arg1)] -= arg3 * transferTaxRate / 10000
                    if balanceOf[this.address] > !(arg3 * transferTaxRate / 10000):
                        revert with 0, 17
                    balanceOf[this.address] += arg3 * transferTaxRate / 10000
                    emit Transfer((arg3 * transferTaxRate / 10000), address(arg1), this.address);
                    if not address(arg1):
                        revert with 0, 'ERC20: transfer from the zero address'
                    if not address(arg2):
                        revert with 0, 'ERC20: transfer to the zero address'
                    if balanceOf[address(arg1)] < arg3 - (arg3 * transferTaxRate / 10000) - (arg3 * burnRate / 10000):
                        revert with 0, 'ERC20: transfer amount exceeds balance'
                    balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * transferTaxRate / 10000) + (arg3 * burnRate / 10000)
                    if balanceOf[address(arg2)] > !(arg3 - (arg3 * transferTaxRate / 10000) - (arg3 * burnRate / 10000)):
                        revert with 0, 17
                    balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * transferTaxRate / 10000) - (arg3 * burnRate / 10000)
                    emit Transfer((arg3 - (arg3 * transferTaxRate / 10000) - (arg3 * burnRate / 10000)), address(arg1), address(arg2));
        if allowance[address(arg1)][msg.sender] < arg3:
            revert with 0, 'ERC20: transfer amount exceeds allowance'
        if not address(arg1):
            revert with 0, 'ERC20: approve from the zero address'
        if not msg.sender:
            revert with 0, 'ERC20: approve to the zero address'
        allowance[address(arg1)][address(msg.sender)] = allowance[address(arg1)][msg.sender] - arg3
        emit Approval((allowance[address(arg1)][msg.sender] - arg3), address(arg1), msg.sender);
    return 1
}



}
