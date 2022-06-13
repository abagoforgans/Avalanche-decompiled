contract main {




// =====================  Runtime code  =====================


const decimals = 18

const sub_ec277a66(?) = 0xfe02b0c433c31e2b44fbbb341ca2a1a7c86f98b5158b42b073f63efe02d35ea8

const INITIAL_RATE = 1000

const DEFAULT_ADMIN_ROLE = 0

const ACCURACY = 1000


mapping of struct roleAdmin;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of struct stor4;
array of struct stor5;
uint256 lockupPeriod;
uint256 lockedAmount;
uint256 lockedPremium;
uint256 sub_920a253e;
mapping of uint256 lastProvideTimestamp;
mapping of uint8 stor11;
array of struct sub_b9cfe348;

function totalSupply() {
    return totalSupply
}

function getRoleAdmin(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_256
}

function _revertTransfersInLockUpPeriod(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor11[arg1])
}

function lockedAmount() {
    return lockedAmount
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function lockedPremium() {
    return lockedPremium
}

function lastProvideTimestamp(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return lastProvideTimestamp[arg1]
}

function hasRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return bool(roleAdmin[arg1][address(arg2)].field_0)
}

function sub_920a253e(?) {
    return sub_920a253e
}

function sub_b9cfe348(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 < sub_b9cfe348[arg1].field_0
    return sub_b9cfe348[arg1][arg2].field_0, sub_b9cfe348[arg1][arg2].field_256, bool(sub_b9cfe348[arg1][arg2].field_512)
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function lockupPeriod() {
    return lockupPeriod
}

function _fallback() payable {
    revert
}

function totalBalance() {
    if eth.balance(this.address) < lockedPremium:
        revert with 0, 17
    return (eth.balance(this.address) - lockedPremium)
}

function revertTransfersInLockUpPeriod(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    stor11[msg.sender] = uint8(arg1)
    emit UpdateRevertTransfersInLockUpPeriod(arg1, msg.sender);
}

function availableBalance() {
    if eth.balance(this.address) < lockedPremium:
        revert with 0, 17
    if eth.balance(this.address) - lockedPremium < lockedAmount:
        revert with 0, 17
    return (eth.balance(this.address) - lockedPremium - lockedAmount)
}

function supportsInterface(bytes4 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if 0x7965db0b00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
}

function renounceRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if arg2 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: can only renounce roles for self'
    if roleAdmin[arg1][address(arg2)].field_0:
        roleAdmin[arg1][address(arg2)].field_0 = 0
        emit RoleRevoked(arg1, arg2, msg.sender);
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

function shareOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if totalSupply <= 0:
        return 0
    if eth.balance(this.address) < lockedPremium:
        revert with 0, 17
    if eth.balance(this.address) - lockedPremium and balanceOf[address(arg1)] > -1 / eth.balance(this.address) - lockedPremium:
        revert with 0, 17
    if not totalSupply:
        revert with 0, 18
    return ((eth.balance(this.address) * balanceOf[address(arg1)]) - (lockedPremium * balanceOf[address(arg1)]) / totalSupply)
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

function unlock(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not roleAdmin[0xfe02b0c433c31e2b44fbbb341ca2a1a7c86f98b5158b42b073f63efe02d35ea8][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'msg.sender is not allowed to excute the option contract'
    if arg1 >= sub_b9cfe348[msg.sender].field_0:
        revert with 0, 50
    if not sub_b9cfe348[msg.sender][arg1].field_512:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'LockedLiquidity with such id has already unlocked'
    sub_b9cfe348[msg.sender][arg1].field_512 = 0
    if lockedPremium < sub_b9cfe348[msg.sender][arg1].field_256:
        revert with 0, 17
    lockedPremium -= sub_b9cfe348[msg.sender][arg1].field_256
    if lockedAmount < sub_b9cfe348[msg.sender][arg1].field_0:
        revert with 0, 17
    lockedAmount -= sub_b9cfe348[msg.sender][arg1].field_0
    emit Profit(sub_b9cfe348[msg.sender][arg1].field_256, arg1);
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if lastProvideTimestamp[address(msg.sender)] > !lockupPeriod:
        revert with 0, 17
    if lastProvideTimestamp[address(msg.sender)] + lockupPeriod > block.timestamp:
        if lastProvideTimestamp[msg.sender] > lastProvideTimestamp[address(arg1)]:
            if stor11[address(arg1)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'the recipient does not accept blocked funds'
            lastProvideTimestamp[arg1] = lastProvideTimestamp[address(msg.sender)]
    if balanceOf[address(msg.sender)] < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
    balanceOf[address(msg.sender)] -= arg2
    if balanceOf[arg1] > !arg2:
        revert with 0, 17
    balanceOf[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function revokeRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if roleAdmin[roleAdmin[arg1].field_256][address(msg.sender)].field_0:
        if roleAdmin[arg1][address(arg2)].field_0:
            roleAdmin[arg1][address(arg2)].field_0 = 0
            emit RoleRevoked(arg1, arg2, msg.sender);
    mem[128 len 42] = call.data[calldata.size len 42]
    idx = 41
    s = address(msg.sender)
    while idx > 1:
        if s % 16 >= 16:
            revert with 0, 50
        if idx >= 42:
            revert with 0, 50
        mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if msg.sender + 10240:
        revert with 0, 'Strings: hex length insufficient'
    mem[224 len 66] = call.data[calldata.size len 66]
    idx = 65
    s = roleAdmin[arg1].field_256
    while idx > 1:
        if s % 16 >= 16:
            revert with 0, 50
        if idx >= 66:
            revert with 0, 50
        mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if roleAdmin[arg1].field_256 + 16384:
        revert with 0, 'Strings: hex length insufficient'
    revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
}

function grantRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if roleAdmin[roleAdmin[arg1].field_256][address(msg.sender)].field_0:
        if not roleAdmin[arg1][address(arg2)].field_0:
            roleAdmin[arg1][address(arg2)].field_0 = 1
            emit RoleGranted(arg1, arg2, msg.sender);
    mem[128 len 42] = call.data[calldata.size len 42]
    idx = 41
    s = address(msg.sender)
    while idx > 1:
        if s % 16 >= 16:
            revert with 0, 50
        if idx >= 42:
            revert with 0, 50
        mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if msg.sender + 10240:
        revert with 0, 'Strings: hex length insufficient'
    mem[224 len 66] = call.data[calldata.size len 66]
    idx = 65
    s = roleAdmin[arg1].field_256
    while idx > 1:
        if s % 16 >= 16:
            revert with 0, 50
        if idx >= 66:
            revert with 0, 50
        mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if roleAdmin[arg1].field_256 + 16384:
        revert with 0, 'Strings: hex length insufficient'
    revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
}

function lock(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not roleAdmin[0xfe02b0c433c31e2b44fbbb341ca2a1a7c86f98b5158b42b073f63efe02d35ea8][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'msg.sender is not allowed to excute the option contract'
    if arg1 != sub_b9cfe348[msg.sender].field_0:
        revert with 0, 'Wrong id'
    if eth.balance(this.address) < lockedPremium:
        revert with 0, 17
    if eth.balance(this.address) - lockedPremium < msg.value:
        revert with 0, 'Insufficient balance'
    if eth.balance(this.address) < lockedPremium:
        revert with 0, 17
    if eth.balance(this.address) - lockedPremium < msg.value:
        revert with 0, 17
    if eth.balance(this.address) - lockedPremium - msg.value > 0x1fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 0, 17
    if lockedAmount > !arg2:
        revert with 0, 17
    if lockedAmount + arg2 > 8 * eth.balance(this.address) - lockedPremium - msg.value / 10:
        revert with 0, 'Pool Error: Amount is too large.'
    sub_b9cfe348[msg.sender].field_0++
    sub_b9cfe348[msg.sender][sub_b9cfe348[msg.sender].field_0].field_0 = arg2
    sub_b9cfe348[msg.sender][sub_b9cfe348[msg.sender].field_0].field_256 = msg.value
    sub_b9cfe348[msg.sender][sub_b9cfe348[msg.sender].field_0].field_512 = 1
    if lockedPremium > !msg.value:
        revert with 0, 17
    lockedPremium += msg.value
    if lockedAmount > !arg2:
        revert with 0, 17
    lockedAmount += arg2
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if lastProvideTimestamp[address(arg1)] > !lockupPeriod:
        revert with 0, 17
    if lastProvideTimestamp[address(arg1)] + lockupPeriod > block.timestamp:
        if lastProvideTimestamp[arg1] > lastProvideTimestamp[address(arg2)]:
            if stor11[address(arg2)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'the recipient does not accept blocked funds'
            lastProvideTimestamp[arg2] = lastProvideTimestamp[address(arg1)]
    if balanceOf[address(arg1)] < arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
    balanceOf[address(arg1)] -= arg3
    if balanceOf[arg2] > !arg3:
        revert with 0, 17
    balanceOf[arg2] += arg3
    emit Transfer(arg3, arg1, arg2);
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

function send(uint256 arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg2 == arg2
    if not roleAdmin[0xfe02b0c433c31e2b44fbbb341ca2a1a7c86f98b5158b42b073f63efe02d35ea8][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'msg.sender is not allowed to excute the option contract'
    if arg1 >= sub_b9cfe348[msg.sender].field_0:
        revert with 0, 50
    if not sub_b9cfe348[msg.sender][arg1].field_512:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'LockedLiquidity with such id has already unlocked'
    require arg2
    sub_b9cfe348[msg.sender][arg1].field_512 = 0
    if lockedPremium < sub_b9cfe348[msg.sender][arg1].field_256:
        revert with 0, 17
    lockedPremium -= sub_b9cfe348[msg.sender][arg1].field_256
    if lockedAmount < sub_b9cfe348[msg.sender][arg1].field_0:
        revert with 0, 17
    lockedAmount -= sub_b9cfe348[msg.sender][arg1].field_0
    if arg3 > sub_b9cfe348[msg.sender][arg1].field_0:
        call arg2 with:
           value sub_b9cfe348[msg.sender][arg1].field_0 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if sub_b9cfe348[msg.sender][arg1].field_0 > sub_b9cfe348[msg.sender][arg1].field_256:
            if sub_b9cfe348[msg.sender][arg1].field_0 < sub_b9cfe348[msg.sender][arg1].field_256:
                revert with 0, 17
            emit Loss((sub_b9cfe348[msg.sender][arg1].field_0 - sub_b9cfe348[msg.sender][arg1].field_256), arg1);
        else:
            if sub_b9cfe348[msg.sender][arg1].field_256 < sub_b9cfe348[msg.sender][arg1].field_0:
                revert with 0, 17
            emit Profit((sub_b9cfe348[msg.sender][arg1].field_256 - sub_b9cfe348[msg.sender][arg1].field_0), arg1);
    else:
        call arg2 with:
           value arg3 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if arg3 > sub_b9cfe348[msg.sender][arg1].field_256:
            if arg3 < sub_b9cfe348[msg.sender][arg1].field_256:
                revert with 0, 17
            emit Loss((arg3 - sub_b9cfe348[msg.sender][arg1].field_256), arg1);
        else:
            if sub_b9cfe348[msg.sender][arg1].field_256 < arg3:
                revert with 0, 17
            emit Profit((sub_b9cfe348[msg.sender][arg1].field_256 - arg3), arg1);
}

function name() {
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
            mem[(uint255(stor4.length) * 0.5) + ceil32(uint255(stor4.length) * 0.5) + 192] = 0
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
        mem[stor4.length.field_1 + ceil32(stor4.length.field_1) + 192] = 0
    return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1)], mem[(2 * ceil32(stor4.length.field_1)) + 192 len 2 * ceil32(stor4.length.field_1)]), 
}

function symbol() {
    if bool(stor5.length):
        if bool(stor5.length) == uint255(stor5.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor5.length):
            if bool(stor5.length) == uint255(stor5.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor5.length):
                if 31 < uint255(stor5.length) * 0.5:
                    mem[128] = uint256(stor5.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor5.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor5[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor5.length), data=mem[128 len ceil32(uint255(stor5.length) * 0.5)])
                mem[128] = 256 * stor5.length.field_8
        else:
            if bool(stor5.length) == stor5.length.field_1 < 32:
                revert with 0, 34
            if stor5.length.field_1:
                if 31 < stor5.length.field_1:
                    mem[128] = uint256(stor5.field_0)
                    idx = 128
                    s = 0
                    while stor5.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor5[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor5.length), data=mem[128 len ceil32(uint255(stor5.length) * 0.5)])
                mem[128] = 256 * stor5.length.field_8
        mem[ceil32(uint255(stor5.length) * 0.5) + 192 len ceil32(uint255(stor5.length) * 0.5)] = mem[128 len ceil32(uint255(stor5.length) * 0.5)]
        if ceil32(uint255(stor5.length) * 0.5) > uint255(stor5.length) * 0.5:
            mem[(uint255(stor5.length) * 0.5) + ceil32(uint255(stor5.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor5.length), data=mem[128 len ceil32(uint255(stor5.length) * 0.5)], mem[(2 * ceil32(uint255(stor5.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor5.length) * 0.5)]), 
    if bool(stor5.length) == stor5.length.field_1 < 32:
        revert with 0, 34
    if bool(stor5.length):
        if bool(stor5.length) == uint255(stor5.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor5.length):
            if 31 < uint255(stor5.length) * 0.5:
                mem[128] = uint256(stor5.field_0)
                idx = 128
                s = 0
                while (uint255(stor5.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor5[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor5.length % 128, data=mem[128 len ceil32(stor5.length.field_1)])
            mem[128] = 256 * stor5.length.field_8
    else:
        if bool(stor5.length) == stor5.length.field_1 < 32:
            revert with 0, 34
        if stor5.length.field_1:
            if 31 < stor5.length.field_1:
                mem[128] = uint256(stor5.field_0)
                idx = 128
                s = 0
                while stor5.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor5[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor5.length % 128, data=mem[128 len ceil32(stor5.length.field_1)])
            mem[128] = 256 * stor5.length.field_8
    mem[ceil32(stor5.length.field_1) + 192 len ceil32(stor5.length.field_1)] = mem[128 len ceil32(stor5.length.field_1)]
    if ceil32(stor5.length.field_1) > stor5.length.field_1:
        mem[stor5.length.field_1 + ceil32(stor5.length.field_1) + 192] = 0
    return Array(len=stor5.length % 128, data=mem[128 len ceil32(stor5.length.field_1)], mem[(2 * ceil32(stor5.length.field_1)) + 192 len 2 * ceil32(stor5.length.field_1)]), 
}

function withdraw(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if lastProvideTimestamp[msg.sender] > !lockupPeriod:
        revert with 0, 17
    if lastProvideTimestamp[msg.sender] + lockupPeriod > block.timestamp:
        revert with 0, 'Pool: Withdrawal is locked up'
    if eth.balance(this.address) < lockedPremium:
        revert with 0, 17
    if eth.balance(this.address) - lockedPremium < lockedAmount:
        revert with 0, 17
    if arg1 > eth.balance(this.address) - lockedPremium - lockedAmount:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Pool Error: Not enough funds on the pool contract. Please lower the amount.'
    if arg1 and totalSupply > -1 / arg1:
        revert with 0, 17
    if eth.balance(this.address) < lockedPremium:
        revert with 0, 17
    require eth.balance(this.address) - lockedPremium > 0
    if not eth.balance(this.address) - lockedPremium:
        revert with 0, 18
    if not arg1 * totalSupply % eth.balance(this.address) - lockedPremium:
        if arg1 * totalSupply / eth.balance(this.address) - lockedPremium > arg2:
            revert with 0, 'Pool: Burn limit is too small'
        if arg1 * totalSupply / eth.balance(this.address) - lockedPremium > balanceOf[msg.sender]:
            revert with 0, 'Pool: Amount is too large'
        if arg1 * totalSupply / eth.balance(this.address) - lockedPremium <= 0:
            revert with 0, 'Pool: Amount is too small'
        if not msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn from the zero address'
        if lastProvideTimestamp[address(msg.sender)] > !lockupPeriod:
            revert with 0, 17
        if lastProvideTimestamp[address(msg.sender)] + lockupPeriod > block.timestamp:
            if lastProvideTimestamp[msg.sender] > lastProvideTimestamp[0]:
                if stor11[0]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'the recipient does not accept blocked funds'
                lastProvideTimestamp[0] = lastProvideTimestamp[address(msg.sender)]
        if balanceOf[address(msg.sender)] < arg1 * totalSupply / eth.balance(this.address) - lockedPremium:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn amount exceeds balance'
        balanceOf[address(msg.sender)] -= arg1 * totalSupply / eth.balance(this.address) - lockedPremium
        if totalSupply < arg1 * totalSupply / eth.balance(this.address) - lockedPremium:
            revert with 0, 17
        totalSupply -= arg1 * totalSupply / eth.balance(this.address) - lockedPremium
        emit Transfer((arg1 * totalSupply / eth.balance(this.address) - lockedPremium), msg.sender, 0);
        emit Withdraw(arg1, arg1 * totalSupply / eth.balance(this.address) - lockedPremium, msg.sender);
        call msg.sender with:
           value arg1 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        return (arg1 * totalSupply / eth.balance(this.address) - lockedPremium)
    if 1 > !(arg1 * totalSupply / eth.balance(this.address) - lockedPremium):
        revert with 0, 17
    if (arg1 * totalSupply / eth.balance(this.address) - lockedPremium) + 1 > arg2:
        revert with 0, 'Pool: Burn limit is too small'
    if (arg1 * totalSupply / eth.balance(this.address) - lockedPremium) + 1 > balanceOf[msg.sender]:
        revert with 0, 'Pool: Amount is too large'
    if (arg1 * totalSupply / eth.balance(this.address) - lockedPremium) + 1 <= 0:
        revert with 0, 'Pool: Amount is too small'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn from the zero address'
    if lastProvideTimestamp[address(msg.sender)] > !lockupPeriod:
        revert with 0, 17
    if lastProvideTimestamp[address(msg.sender)] + lockupPeriod > block.timestamp:
        if lastProvideTimestamp[msg.sender] > lastProvideTimestamp[0]:
            if stor11[0]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'the recipient does not accept blocked funds'
            lastProvideTimestamp[0] = lastProvideTimestamp[address(msg.sender)]
    if balanceOf[address(msg.sender)] < (arg1 * totalSupply / eth.balance(this.address) - lockedPremium) + 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn amount exceeds balance'
    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + -(arg1 * totalSupply / eth.balance(this.address) - lockedPremium) - 1
    if totalSupply < (arg1 * totalSupply / eth.balance(this.address) - lockedPremium) + 1:
        revert with 0, 17
    totalSupply = totalSupply + -(arg1 * totalSupply / eth.balance(this.address) - lockedPremium) - 1
    emit Transfer(((arg1 * totalSupply / eth.balance(this.address) - lockedPremium) + 1), msg.sender, 0);
    emit Withdraw(arg1, (arg1 * totalSupply / eth.balance(this.address) - lockedPremium) + 1, msg.sender);
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return ((arg1 * totalSupply / eth.balance(this.address) - lockedPremium) + 1)
}

function provide(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    lastProvideTimestamp[msg.sender] = block.timestamp
    if eth.balance(this.address) < lockedPremium:
        revert with 0, 17
    if not arg2:
        if totalSupply <= 0:
            if msg.value and 1000 > -1 / msg.value:
                revert with 0, 17
            if 1000 * msg.value < arg1:
                revert with 0, 'Pool: Mint limit is too large'
            if 1000 * msg.value <= 0:
                revert with 0, 'Pool: Amount is too small'
            if not msg.sender:
                revert with 0, 'ERC20: mint to the zero address'
            if lastProvideTimestamp[0] > !lockupPeriod:
                revert with 0, 17
            if lastProvideTimestamp[0] + lockupPeriod > block.timestamp:
                if lastProvideTimestamp[0] > lastProvideTimestamp[address(msg.sender)]:
                    if stor11[address(msg.sender)]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'the recipient does not accept blocked funds'
                    lastProvideTimestamp[msg.sender] = lastProvideTimestamp[0]
            if totalSupply > !(1000 * msg.value):
                revert with 0, 17
            totalSupply += 1000 * msg.value
            if balanceOf[address(msg.sender)] > !(1000 * msg.value):
                revert with 0, 17
            balanceOf[address(msg.sender)] += 1000 * msg.value
            emit Transfer((1000 * msg.value), 0, msg.sender);
            emit Provide(msg.value, 1000 * msg.value, msg.sender);
            return (1000 * msg.value)
        if eth.balance(this.address) - lockedPremium <= 0:
            if msg.value and 1000 > -1 / msg.value:
                revert with 0, 17
            if 1000 * msg.value < arg1:
                revert with 0, 'Pool: Mint limit is too large'
            if 1000 * msg.value <= 0:
                revert with 0, 'Pool: Amount is too small'
            if not msg.sender:
                revert with 0, 'ERC20: mint to the zero address'
            if lastProvideTimestamp[0] > !lockupPeriod:
                revert with 0, 17
            if lastProvideTimestamp[0] + lockupPeriod > block.timestamp:
                if lastProvideTimestamp[0] > lastProvideTimestamp[address(msg.sender)]:
                    if stor11[address(msg.sender)]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'the recipient does not accept blocked funds'
                    lastProvideTimestamp[msg.sender] = lastProvideTimestamp[0]
            if totalSupply > !(1000 * msg.value):
                revert with 0, 17
            totalSupply += 1000 * msg.value
            if balanceOf[address(msg.sender)] > !(1000 * msg.value):
                revert with 0, 17
            balanceOf[address(msg.sender)] += 1000 * msg.value
            emit Transfer((1000 * msg.value), 0, msg.sender);
            emit Provide(msg.value, 1000 * msg.value, msg.sender);
            return (1000 * msg.value)
        if eth.balance(this.address) - lockedPremium < msg.value:
            revert with 0, 17
        if msg.value and totalSupply > -1 / msg.value:
            revert with 0, 17
        if not eth.balance(this.address) - lockedPremium - msg.value:
            revert with 0, 18
        if msg.value * totalSupply / eth.balance(this.address) - lockedPremium - msg.value < arg1:
            revert with 0, 'Pool: Mint limit is too large'
        if msg.value * totalSupply / eth.balance(this.address) - lockedPremium - msg.value <= 0:
            revert with 0, 'Pool: Amount is too small'
        if not msg.sender:
            revert with 0, 'ERC20: mint to the zero address'
        if lastProvideTimestamp[0] > !lockupPeriod:
            revert with 0, 17
        if lastProvideTimestamp[0] + lockupPeriod > block.timestamp:
            if lastProvideTimestamp[0] > lastProvideTimestamp[address(msg.sender)]:
                if stor11[address(msg.sender)]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'the recipient does not accept blocked funds'
                lastProvideTimestamp[msg.sender] = lastProvideTimestamp[0]
        if totalSupply > !(msg.value * totalSupply / eth.balance(this.address) - lockedPremium - msg.value):
            revert with 0, 17
        totalSupply += msg.value * totalSupply / eth.balance(this.address) - lockedPremium - msg.value
        if balanceOf[address(msg.sender)] > !(msg.value * totalSupply / eth.balance(this.address) - lockedPremium - msg.value):
            revert with 0, 17
        balanceOf[address(msg.sender)] += msg.value * totalSupply / eth.balance(this.address) - lockedPremium - msg.value
        emit Transfer((msg.value * totalSupply / eth.balance(this.address) - lockedPremium - msg.value), 0, msg.sender);
        emit Provide(msg.value, msg.value * totalSupply / eth.balance(this.address) - lockedPremium - msg.value, msg.sender);
        return (msg.value * totalSupply / eth.balance(this.address) - lockedPremium - msg.value)
    if msg.sender == arg2:
        if totalSupply <= 0:
            if msg.value and 1000 > -1 / msg.value:
                revert with 0, 17
            if 1000 * msg.value < arg1:
                revert with 0, 'Pool: Mint limit is too large'
            if 1000 * msg.value <= 0:
                revert with 0, 'Pool: Amount is too small'
            if not msg.sender:
                revert with 0, 'ERC20: mint to the zero address'
            if lastProvideTimestamp[0] > !lockupPeriod:
                revert with 0, 17
            if lastProvideTimestamp[0] + lockupPeriod > block.timestamp:
                if lastProvideTimestamp[0] > lastProvideTimestamp[address(msg.sender)]:
                    if stor11[address(msg.sender)]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'the recipient does not accept blocked funds'
                    lastProvideTimestamp[msg.sender] = lastProvideTimestamp[0]
            if totalSupply > !(1000 * msg.value):
                revert with 0, 17
            totalSupply += 1000 * msg.value
            if balanceOf[address(msg.sender)] > !(1000 * msg.value):
                revert with 0, 17
            balanceOf[address(msg.sender)] += 1000 * msg.value
            emit Transfer((1000 * msg.value), 0, msg.sender);
            emit Provide(msg.value, 1000 * msg.value, msg.sender);
            return (1000 * msg.value)
        if eth.balance(this.address) - lockedPremium <= 0:
            if msg.value and 1000 > -1 / msg.value:
                revert with 0, 17
            if 1000 * msg.value < arg1:
                revert with 0, 'Pool: Mint limit is too large'
            if 1000 * msg.value <= 0:
                revert with 0, 'Pool: Amount is too small'
            if not msg.sender:
                revert with 0, 'ERC20: mint to the zero address'
            if lastProvideTimestamp[0] > !lockupPeriod:
                revert with 0, 17
            if lastProvideTimestamp[0] + lockupPeriod > block.timestamp:
                if lastProvideTimestamp[0] > lastProvideTimestamp[address(msg.sender)]:
                    if stor11[address(msg.sender)]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'the recipient does not accept blocked funds'
                    lastProvideTimestamp[msg.sender] = lastProvideTimestamp[0]
            if totalSupply > !(1000 * msg.value):
                revert with 0, 17
            totalSupply += 1000 * msg.value
            if balanceOf[address(msg.sender)] > !(1000 * msg.value):
                revert with 0, 17
            balanceOf[address(msg.sender)] += 1000 * msg.value
            emit Transfer((1000 * msg.value), 0, msg.sender);
            emit Provide(msg.value, 1000 * msg.value, msg.sender);
            return (1000 * msg.value)
        if eth.balance(this.address) - lockedPremium < msg.value:
            revert with 0, 17
        if msg.value and totalSupply > -1 / msg.value:
            revert with 0, 17
        if not eth.balance(this.address) - lockedPremium - msg.value:
            revert with 0, 18
        if msg.value * totalSupply / eth.balance(this.address) - lockedPremium - msg.value < arg1:
            revert with 0, 'Pool: Mint limit is too large'
        if msg.value * totalSupply / eth.balance(this.address) - lockedPremium - msg.value <= 0:
            revert with 0, 'Pool: Amount is too small'
        if not msg.sender:
            revert with 0, 'ERC20: mint to the zero address'
        if lastProvideTimestamp[0] > !lockupPeriod:
            revert with 0, 17
        if lastProvideTimestamp[0] + lockupPeriod > block.timestamp:
            if lastProvideTimestamp[0] > lastProvideTimestamp[address(msg.sender)]:
                if stor11[address(msg.sender)]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'the recipient does not accept blocked funds'
                lastProvideTimestamp[msg.sender] = lastProvideTimestamp[0]
        if totalSupply > !(msg.value * totalSupply / eth.balance(this.address) - lockedPremium - msg.value):
            revert with 0, 17
        totalSupply += msg.value * totalSupply / eth.balance(this.address) - lockedPremium - msg.value
        if balanceOf[address(msg.sender)] > !(msg.value * totalSupply / eth.balance(this.address) - lockedPremium - msg.value):
            revert with 0, 17
        balanceOf[address(msg.sender)] += msg.value * totalSupply / eth.balance(this.address) - lockedPremium - msg.value
        emit Transfer((msg.value * totalSupply / eth.balance(this.address) - lockedPremium - msg.value), 0, msg.sender);
        emit Provide(msg.value, msg.value * totalSupply / eth.balance(this.address) - lockedPremium - msg.value, msg.sender);
        return (msg.value * totalSupply / eth.balance(this.address) - lockedPremium - msg.value)
    if this.address == arg2:
        if totalSupply <= 0:
            if msg.value and 1000 > -1 / msg.value:
                revert with 0, 17
            if 1000 * msg.value < arg1:
                revert with 0, 'Pool: Mint limit is too large'
            if 1000 * msg.value <= 0:
                revert with 0, 'Pool: Amount is too small'
            if not msg.sender:
                revert with 0, 'ERC20: mint to the zero address'
            if lastProvideTimestamp[0] > !lockupPeriod:
                revert with 0, 17
            if lastProvideTimestamp[0] + lockupPeriod > block.timestamp:
                if lastProvideTimestamp[0] > lastProvideTimestamp[address(msg.sender)]:
                    if stor11[address(msg.sender)]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'the recipient does not accept blocked funds'
                    lastProvideTimestamp[msg.sender] = lastProvideTimestamp[0]
            if totalSupply > !(1000 * msg.value):
                revert with 0, 17
            totalSupply += 1000 * msg.value
            if balanceOf[address(msg.sender)] > !(1000 * msg.value):
                revert with 0, 17
            balanceOf[address(msg.sender)] += 1000 * msg.value
            emit Transfer((1000 * msg.value), 0, msg.sender);
            emit Provide(msg.value, 1000 * msg.value, msg.sender);
            return (1000 * msg.value)
        if eth.balance(this.address) - lockedPremium <= 0:
            if msg.value and 1000 > -1 / msg.value:
                revert with 0, 17
            if 1000 * msg.value < arg1:
                revert with 0, 'Pool: Mint limit is too large'
            if 1000 * msg.value <= 0:
                revert with 0, 'Pool: Amount is too small'
            if not msg.sender:
                revert with 0, 'ERC20: mint to the zero address'
            if lastProvideTimestamp[0] > !lockupPeriod:
                revert with 0, 17
            if lastProvideTimestamp[0] + lockupPeriod > block.timestamp:
                if lastProvideTimestamp[0] > lastProvideTimestamp[address(msg.sender)]:
                    if stor11[address(msg.sender)]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'the recipient does not accept blocked funds'
                    lastProvideTimestamp[msg.sender] = lastProvideTimestamp[0]
            if totalSupply > !(1000 * msg.value):
                revert with 0, 17
            totalSupply += 1000 * msg.value
            if balanceOf[address(msg.sender)] > !(1000 * msg.value):
                revert with 0, 17
            balanceOf[address(msg.sender)] += 1000 * msg.value
            emit Transfer((1000 * msg.value), 0, msg.sender);
            emit Provide(msg.value, 1000 * msg.value, msg.sender);
            return (1000 * msg.value)
        if eth.balance(this.address) - lockedPremium < msg.value:
            revert with 0, 17
        if msg.value and totalSupply > -1 / msg.value:
            revert with 0, 17
        if not eth.balance(this.address) - lockedPremium - msg.value:
            revert with 0, 18
        if msg.value * totalSupply / eth.balance(this.address) - lockedPremium - msg.value < arg1:
            revert with 0, 'Pool: Mint limit is too large'
        if msg.value * totalSupply / eth.balance(this.address) - lockedPremium - msg.value <= 0:
            revert with 0, 'Pool: Amount is too small'
        if not msg.sender:
            revert with 0, 'ERC20: mint to the zero address'
        if lastProvideTimestamp[0] > !lockupPeriod:
            revert with 0, 17
        if lastProvideTimestamp[0] + lockupPeriod > block.timestamp:
            if lastProvideTimestamp[0] > lastProvideTimestamp[address(msg.sender)]:
                if stor11[address(msg.sender)]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'the recipient does not accept blocked funds'
                lastProvideTimestamp[msg.sender] = lastProvideTimestamp[0]
        if totalSupply > !(msg.value * totalSupply / eth.balance(this.address) - lockedPremium - msg.value):
            revert with 0, 17
        totalSupply += msg.value * totalSupply / eth.balance(this.address) - lockedPremium - msg.value
        if balanceOf[address(msg.sender)] > !(msg.value * totalSupply / eth.balance(this.address) - lockedPremium - msg.value):
            revert with 0, 17
        balanceOf[address(msg.sender)] += msg.value * totalSupply / eth.balance(this.address) - lockedPremium - msg.value
        emit Transfer((msg.value * totalSupply / eth.balance(this.address) - lockedPremium - msg.value), 0, msg.sender);
        emit Provide(msg.value, msg.value * totalSupply / eth.balance(this.address) - lockedPremium - msg.value, msg.sender);
        return (msg.value * totalSupply / eth.balance(this.address) - lockedPremium - msg.value)
    if msg.value and sub_920a253e > -1 / msg.value:
        revert with 0, 17
    if msg.value < msg.value * sub_920a253e / 1000 / 100:
        revert with 0, 17
    if msg.value * sub_920a253e / 1000 / 100:
        call arg2 with:
           value msg.value * sub_920a253e / 1000 / 100 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    if totalSupply <= 0:
        if msg.value - (msg.value * sub_920a253e / 1000 / 100) and 1000 > -1 / msg.value - (msg.value * sub_920a253e / 1000 / 100):
            revert with 0, 17
        if (1000 * msg.value) - (1000 * msg.value * sub_920a253e / 1000 / 100) < arg1:
            revert with 0, 'Pool: Mint limit is too large'
        if (1000 * msg.value) - (1000 * msg.value * sub_920a253e / 1000 / 100) <= 0:
            revert with 0, 'Pool: Amount is too small'
        if not msg.sender:
            revert with 0, 'ERC20: mint to the zero address'
        if lastProvideTimestamp[0] > !lockupPeriod:
            revert with 0, 17
        if lastProvideTimestamp[0] + lockupPeriod > block.timestamp:
            if lastProvideTimestamp[0] > lastProvideTimestamp[address(msg.sender)]:
                if stor11[address(msg.sender)]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'the recipient does not accept blocked funds'
                lastProvideTimestamp[msg.sender] = lastProvideTimestamp[0]
        if totalSupply > !((1000 * msg.value) - (1000 * msg.value * sub_920a253e / 1000 / 100)):
            revert with 0, 17
        totalSupply = totalSupply + (1000 * msg.value) - (1000 * msg.value * sub_920a253e / 1000 / 100)
        if balanceOf[address(msg.sender)] > !((1000 * msg.value) - (1000 * msg.value * sub_920a253e / 1000 / 100)):
            revert with 0, 17
        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (1000 * msg.value) - (1000 * msg.value * sub_920a253e / 1000 / 100)
        emit Transfer(((1000 * msg.value) - (1000 * msg.value * sub_920a253e / 1000 / 100)), 0, msg.sender);
        emit Provide(msg.value - (msg.value * sub_920a253e / 1000 / 100), (1000 * msg.value) - (1000 * msg.value * sub_920a253e / 1000 / 100), msg.sender);
        return ((1000 * msg.value) - (1000 * msg.value * sub_920a253e / 1000 / 100))
    if eth.balance(this.address) - lockedPremium <= 0:
        if msg.value - (msg.value * sub_920a253e / 1000 / 100) and 1000 > -1 / msg.value - (msg.value * sub_920a253e / 1000 / 100):
            revert with 0, 17
        if (1000 * msg.value) - (1000 * msg.value * sub_920a253e / 1000 / 100) < arg1:
            revert with 0, 'Pool: Mint limit is too large'
        if (1000 * msg.value) - (1000 * msg.value * sub_920a253e / 1000 / 100) <= 0:
            revert with 0, 'Pool: Amount is too small'
        if not msg.sender:
            revert with 0, 'ERC20: mint to the zero address'
        if lastProvideTimestamp[0] > !lockupPeriod:
            revert with 0, 17
        if lastProvideTimestamp[0] + lockupPeriod > block.timestamp:
            if lastProvideTimestamp[0] > lastProvideTimestamp[address(msg.sender)]:
                if stor11[address(msg.sender)]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'the recipient does not accept blocked funds'
                lastProvideTimestamp[msg.sender] = lastProvideTimestamp[0]
        if totalSupply > !((1000 * msg.value) - (1000 * msg.value * sub_920a253e / 1000 / 100)):
            revert with 0, 17
        totalSupply = totalSupply + (1000 * msg.value) - (1000 * msg.value * sub_920a253e / 1000 / 100)
        if balanceOf[address(msg.sender)] > !((1000 * msg.value) - (1000 * msg.value * sub_920a253e / 1000 / 100)):
            revert with 0, 17
        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (1000 * msg.value) - (1000 * msg.value * sub_920a253e / 1000 / 100)
        emit Transfer(((1000 * msg.value) - (1000 * msg.value * sub_920a253e / 1000 / 100)), 0, msg.sender);
        emit Provide(msg.value - (msg.value * sub_920a253e / 1000 / 100), (1000 * msg.value) - (1000 * msg.value * sub_920a253e / 1000 / 100), msg.sender);
        return ((1000 * msg.value) - (1000 * msg.value * sub_920a253e / 1000 / 100))
    if eth.balance(this.address) - lockedPremium < msg.value - (msg.value * sub_920a253e / 1000 / 100):
        revert with 0, 17
    if msg.value - (msg.value * sub_920a253e / 1000 / 100) and totalSupply > -1 / msg.value - (msg.value * sub_920a253e / 1000 / 100):
        revert with 0, 17
    if not eth.balance(this.address) - lockedPremium - msg.value + (msg.value * sub_920a253e / 1000 / 100):
        revert with 0, 18
    if (msg.value * totalSupply) - (msg.value * sub_920a253e / 1000 / 100 * totalSupply) / eth.balance(this.address) - lockedPremium - msg.value + (msg.value * sub_920a253e / 1000 / 100) < arg1:
        revert with 0, 'Pool: Mint limit is too large'
    if (msg.value * totalSupply) - (msg.value * sub_920a253e / 1000 / 100 * totalSupply) / eth.balance(this.address) - lockedPremium - msg.value + (msg.value * sub_920a253e / 1000 / 100) <= 0:
        revert with 0, 'Pool: Amount is too small'
    if not msg.sender:
        revert with 0, 'ERC20: mint to the zero address'
    if lastProvideTimestamp[0] > !lockupPeriod:
        revert with 0, 17
    if lastProvideTimestamp[0] + lockupPeriod > block.timestamp:
        if lastProvideTimestamp[0] > lastProvideTimestamp[address(msg.sender)]:
            if stor11[address(msg.sender)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'the recipient does not accept blocked funds'
            lastProvideTimestamp[msg.sender] = lastProvideTimestamp[0]
    if totalSupply > !((msg.value * totalSupply) - (msg.value * sub_920a253e / 1000 / 100 * totalSupply) / eth.balance(this.address) - lockedPremium - msg.value + (msg.value * sub_920a253e / 1000 / 100)):
        revert with 0, 17
    totalSupply += (msg.value * totalSupply) - (msg.value * sub_920a253e / 1000 / 100 * totalSupply) / eth.balance(this.address) - lockedPremium - msg.value + (msg.value * sub_920a253e / 1000 / 100)
    if balanceOf[address(msg.sender)] > !((msg.value * totalSupply) - (msg.value * sub_920a253e / 1000 / 100 * totalSupply) / eth.balance(this.address) - lockedPremium - msg.value + (msg.value * sub_920a253e / 1000 / 100)):
        revert with 0, 17
    balanceOf[address(msg.sender)] += (msg.value * totalSupply) - (msg.value * sub_920a253e / 1000 / 100 * totalSupply) / eth.balance(this.address) - lockedPremium - msg.value + (msg.value * sub_920a253e / 1000 / 100)
    emit Transfer(((msg.value * totalSupply) - (msg.value * sub_920a253e / 1000 / 100 * totalSupply) / eth.balance(this.address) - lockedPremium - msg.value + (msg.value * sub_920a253e / 1000 / 100)), 0, msg.sender);
    emit Provide(msg.value - (msg.value * sub_920a253e / 1000 / 100), (msg.value * totalSupply) - (msg.value * sub_920a253e / 1000 / 100 * totalSupply) / eth.balance(this.address) - lockedPremium - msg.value + (msg.value * sub_920a253e / 1000 / 100), msg.sender);
    return ((msg.value * totalSupply) - (msg.value * sub_920a253e / 1000 / 100 * totalSupply) / eth.balance(this.address) - lockedPremium - msg.value + (msg.value * sub_920a253e / 1000 / 100))
}



}
