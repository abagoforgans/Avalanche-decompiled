contract main {




// =====================  Runtime code  =====================


#
#  - sub_377c18b5(?)
#  - initialize()
#  - _fallback()
#
const sub_1c12bd8c(?) = 10000

const decimals = 18

const sub_467df7ff(?) = 0

const sub_a50a2f85(?) = 2000

const sub_be22d27d(?) = 0x4a53b48dc7a71ed933cf457a6af5683b110b0b0308310599323fb7a1e2ea88da

const DEFAULT_ADMIN_ROLE = 0


mapping of uint256 balanceOf;
mapping of uint256 allowance;
array of struct stor54;
array of struct stor55;
mapping of struct roleAdmin;
uint256 totalSupply;
mapping of uint256 _balances;
mapping of uint256 _allowances;
mapping of uint8 stor204;
mapping of struct sub_a6c76129;
mapping of uint8 stor206;
mapping of uint256 sub_ca71bc57;
uint8 _openTransfer;
uint256 _burnRate;
uint256 _rewardRate;
uint256 _totalRewardToken;
address sub_41639748Address;
address _rewardPoolAddress;
uint256 deployedTime;
mapping of uint8 stor95495340734811314973173513919796872759433152058390322121875015162510851333189;

function _allowances(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return _allowances[arg1][arg2]
}

function totalSupply() {
    return totalSupply
}

function getRoleAdmin(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_256
}

function sub_2f658a91(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    return bool(stor204[arg1][arg2])
}

function sub_41639748(?) {
    return sub_41639748Address
}

function deployedTime() {
    return deployedTime
}

function isExcludedFromFee(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor206[address(arg1)])
}

function _totalRewardToken() {
    return _totalRewardToken
}

function _rewardRate() {
    return _rewardRate
}

function _balances(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return _balances[arg1]
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function _burnRate() {
    return _burnRate
}

function hasRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return bool(roleAdmin[arg1][address(arg2)].field_0)
}

function sub_a6c76129(?) {
    require calldata.size - 4 >= 32
    return sub_a6c76129[arg1].field_0, sub_a6c76129[arg1].field_256
}

function _openTransfer() {
    return bool(_openTransfer)
}

function sub_ca71bc57(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_ca71bc57[arg1]
}

function _rewardPool() {
    return _rewardPoolAddress
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function includeInFee(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not storD320[msg.sender]:
        revert with 0, 'Not Game Admin'
    stor206[address(arg1)] = 0
}

function excludeFromFee(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not storD320[msg.sender]:
        revert with 0, 'Not Game Admin'
    stor206[address(arg1)] = 1
}

function enableOpenTransfer(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not storD320[msg.sender]:
        revert with 0, 'Not Game Admin'
    _openTransfer = uint8(arg1)
}

function supportsInterface(bytes4 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if 0x7965db0b00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
}

function setRate(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not storD320[msg.sender]:
        revert with 0, 'Not Game Admin'
    if 2000 < arg1:
        revert with 0, 'invalid burn rate'
    if 2000 < arg2:
        revert with 0, 'invalid reward rate'
    _burnRate = arg1
    _rewardRate = arg2
    emit 0xbfc121ae: arg1, arg2
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

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
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
    revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], ' is missing role ', mem[288 len 66], 0, 0 >> 928, 0
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
    revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], ' is missing role ', mem[288 len 66], 0, 0 >> 928, 0
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if _allowances[address(arg1)][msg.sender] < arg3:
        revert with 0, 17
    _allowances[address(arg1)][msg.sender] -= arg3
    if not _openTransfer:
        if arg1 != this.address:
            revert with 0, 'Transfer closed!!!'
    if stor206[address(arg1)]:
        _burnRate = 0
        _rewardRate = 0
    else:
        if stor206[address(arg2)]:
            _burnRate = 0
            _rewardRate = 0
    if arg3 and _burnRate > -1 / arg3:
        revert with 0, 17
    if not arg3 * _burnRate / 10000:
        if arg3 and _rewardRate > -1 / arg3:
            revert with 0, 17
        if not arg3 * _rewardRate / 10000:
            if _balances[address(arg1)] < arg3:
                revert with 0, 17
            _balances[address(arg1)] -= arg3
            if _balances[arg2] > !arg3:
                revert with 0, 17
            _balances[address(arg2)] = _balances[arg2] + arg3
            emit Transfer(arg3, arg1, arg2);
        else:
            if _balances[stor213] > !(arg3 * _rewardRate / 10000):
                revert with 0, 17
            _balances[stor213] += arg3 * _rewardRate / 10000
            if arg3 < arg3 * _rewardRate / 10000:
                revert with 0, 17
            if _totalRewardToken > !(arg3 * _rewardRate / 10000):
                revert with 0, 17
            _totalRewardToken += arg3 * _rewardRate / 10000
            emit Transfer((arg3 * _rewardRate / 10000), arg1, _rewardPoolAddress);
            if _balances[address(arg1)] < arg3:
                revert with 0, 17
            _balances[address(arg1)] -= arg3
            if _balances[arg2] > !(arg3 - (arg3 * _rewardRate / 10000)):
                revert with 0, 17
            _balances[address(arg2)] = _balances[arg2] + arg3 - (arg3 * _rewardRate / 10000)
            emit Transfer((arg3 - (arg3 * _rewardRate / 10000)), arg1, arg2);
    else:
        if totalSupply < arg3 * _burnRate / 10000:
            revert with 0, 17
        totalSupply -= arg3 * _burnRate / 10000
        if arg3 < arg3 * _burnRate / 10000:
            revert with 0, 17
        emit Transfer((arg3 * _burnRate / 10000), arg1, 0);
        if arg3 and _rewardRate > -1 / arg3:
            revert with 0, 17
        if not arg3 * _rewardRate / 10000:
            if _balances[address(arg1)] < arg3:
                revert with 0, 17
            _balances[address(arg1)] -= arg3
            if _balances[arg2] > !(arg3 - (arg3 * _burnRate / 10000)):
                revert with 0, 17
            _balances[address(arg2)] = _balances[arg2] + arg3 - (arg3 * _burnRate / 10000)
            emit Transfer((arg3 - (arg3 * _burnRate / 10000)), arg1, arg2);
        else:
            if _balances[stor213] > !(arg3 * _rewardRate / 10000):
                revert with 0, 17
            _balances[stor213] += arg3 * _rewardRate / 10000
            if arg3 - (arg3 * _burnRate / 10000) < arg3 * _rewardRate / 10000:
                revert with 0, 17
            if _totalRewardToken > !(arg3 * _rewardRate / 10000):
                revert with 0, 17
            _totalRewardToken += arg3 * _rewardRate / 10000
            emit Transfer((arg3 * _rewardRate / 10000), arg1, _rewardPoolAddress);
            if _balances[address(arg1)] < arg3:
                revert with 0, 17
            _balances[address(arg1)] -= arg3
            if _balances[arg2] > !(arg3 - (arg3 * _burnRate / 10000) - (arg3 * _rewardRate / 10000)):
                revert with 0, 17
            _balances[address(arg2)] = _balances[arg2] + arg3 - (arg3 * _burnRate / 10000) - (arg3 * _rewardRate / 10000)
            emit Transfer((arg3 - (arg3 * _burnRate / 10000) - (arg3 * _rewardRate / 10000)), arg1, arg2);
    if 2000 < _burnRate:
        revert with 0, 'invalid burn rate'
    if 2000 < _rewardRate:
        revert with 0, 'invalid reward rate'
    return 1
}

function name() {
    if bool(stor54.length):
        if bool(stor54.length) == uint255(stor54.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor54.length):
            if bool(stor54.length) == uint255(stor54.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor54.length):
                if 31 < uint255(stor54.length) * 0.5:
                    mem[128] = uint256(stor54.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor54.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor54[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor54.length), data=mem[128 len ceil32(uint255(stor54.length) * 0.5)])
                mem[128] = 256 * stor54.length.field_8
        else:
            if bool(stor54.length) == stor54.length.field_1 < 32:
                revert with 0, 34
            if stor54.length.field_1:
                if 31 < stor54.length.field_1:
                    mem[128] = uint256(stor54.field_0)
                    idx = 128
                    s = 0
                    while stor54.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor54[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor54.length), data=mem[128 len ceil32(uint255(stor54.length) * 0.5)])
                mem[128] = 256 * stor54.length.field_8
        mem[ceil32(uint255(stor54.length) * 0.5) + 192 len ceil32(uint255(stor54.length) * 0.5)] = mem[128 len ceil32(uint255(stor54.length) * 0.5)]
        if ceil32(uint255(stor54.length) * 0.5) > uint255(stor54.length) * 0.5:
            mem[(uint255(stor54.length) * 0.5) + ceil32(uint255(stor54.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor54.length), data=mem[128 len ceil32(uint255(stor54.length) * 0.5)], mem[(2 * ceil32(uint255(stor54.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor54.length) * 0.5)]), 
    if bool(stor54.length) == stor54.length.field_1 < 32:
        revert with 0, 34
    if bool(stor54.length):
        if bool(stor54.length) == uint255(stor54.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor54.length):
            if 31 < uint255(stor54.length) * 0.5:
                mem[128] = uint256(stor54.field_0)
                idx = 128
                s = 0
                while (uint255(stor54.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor54[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor54.length % 128, data=mem[128 len ceil32(stor54.length.field_1)])
            mem[128] = 256 * stor54.length.field_8
    else:
        if bool(stor54.length) == stor54.length.field_1 < 32:
            revert with 0, 34
        if stor54.length.field_1:
            if 31 < stor54.length.field_1:
                mem[128] = uint256(stor54.field_0)
                idx = 128
                s = 0
                while stor54.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor54[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor54.length % 128, data=mem[128 len ceil32(stor54.length.field_1)])
            mem[128] = 256 * stor54.length.field_8
    mem[ceil32(stor54.length.field_1) + 192 len ceil32(stor54.length.field_1)] = mem[128 len ceil32(stor54.length.field_1)]
    if ceil32(stor54.length.field_1) > stor54.length.field_1:
        mem[stor54.length.field_1 + ceil32(stor54.length.field_1) + 192] = 0
    return Array(len=stor54.length % 128, data=mem[128 len ceil32(stor54.length.field_1)], mem[(2 * ceil32(stor54.length.field_1)) + 192 len 2 * ceil32(stor54.length.field_1)]), 
}

function symbol() {
    if bool(stor55.length):
        if bool(stor55.length) == uint255(stor55.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor55.length):
            if bool(stor55.length) == uint255(stor55.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor55.length):
                if 31 < uint255(stor55.length) * 0.5:
                    mem[128] = uint256(stor55.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor55.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor55[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor55.length), data=mem[128 len ceil32(uint255(stor55.length) * 0.5)])
                mem[128] = 256 * stor55.length.field_8
        else:
            if bool(stor55.length) == stor55.length.field_1 < 32:
                revert with 0, 34
            if stor55.length.field_1:
                if 31 < stor55.length.field_1:
                    mem[128] = uint256(stor55.field_0)
                    idx = 128
                    s = 0
                    while stor55.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor55[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor55.length), data=mem[128 len ceil32(uint255(stor55.length) * 0.5)])
                mem[128] = 256 * stor55.length.field_8
        mem[ceil32(uint255(stor55.length) * 0.5) + 192 len ceil32(uint255(stor55.length) * 0.5)] = mem[128 len ceil32(uint255(stor55.length) * 0.5)]
        if ceil32(uint255(stor55.length) * 0.5) > uint255(stor55.length) * 0.5:
            mem[(uint255(stor55.length) * 0.5) + ceil32(uint255(stor55.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor55.length), data=mem[128 len ceil32(uint255(stor55.length) * 0.5)], mem[(2 * ceil32(uint255(stor55.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor55.length) * 0.5)]), 
    if bool(stor55.length) == stor55.length.field_1 < 32:
        revert with 0, 34
    if bool(stor55.length):
        if bool(stor55.length) == uint255(stor55.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor55.length):
            if 31 < uint255(stor55.length) * 0.5:
                mem[128] = uint256(stor55.field_0)
                idx = 128
                s = 0
                while (uint255(stor55.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor55[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor55.length % 128, data=mem[128 len ceil32(stor55.length.field_1)])
            mem[128] = 256 * stor55.length.field_8
    else:
        if bool(stor55.length) == stor55.length.field_1 < 32:
            revert with 0, 34
        if stor55.length.field_1:
            if 31 < stor55.length.field_1:
                mem[128] = uint256(stor55.field_0)
                idx = 128
                s = 0
                while stor55.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor55[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor55.length % 128, data=mem[128 len ceil32(stor55.length.field_1)])
            mem[128] = 256 * stor55.length.field_8
    mem[ceil32(stor55.length.field_1) + 192 len ceil32(stor55.length.field_1)] = mem[128 len ceil32(stor55.length.field_1)]
    if ceil32(stor55.length.field_1) > stor55.length.field_1:
        mem[stor55.length.field_1 + ceil32(stor55.length.field_1) + 192] = 0
    return Array(len=stor55.length % 128, data=mem[128 len ceil32(stor55.length.field_1)], mem[(2 * ceil32(stor55.length.field_1)) + 192 len 2 * ceil32(stor55.length.field_1)]), 
}

function sub_969cf96f(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 64
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    mem[0] = msg.sender
    mem[32] = 0xd320728c27d0eff419de2a665ee4578df52a3594e6aa038abc5b2d0cf79e5c45
    if not storD320[msg.sender]:
        revert with 0, 'Not Game Admin'
    sub_41639748Address = address(cd[4])
    deployedTime = block.timestamp
    idx = 0
    s = 0
    while ('cd', 36).length > uint8(idx):
        if uint8(idx) >= ('cd', 36).length:
            revert with 0, 50
        mem[mem[64] + 4] = cd[((32 * uint8(idx)) + cd[36] + 36)]
        require ext_code.size(address(cd[4]))
        staticcall address(cd[4]).getCardPrice(uint256 arg1) with:
                gas gas_remaining wei
               args cd[((32 * uint8(idx)) + cd[36] + 36)]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _146 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _147 = mem[_146]
        if uint8(idx) >= ('cd', 36).length:
            revert with 0, 50
        mem[0] = cd[((32 * uint8(idx)) + cd[36] + 36)]
        mem[32] = 205
        sub_a6c76129[cd[((32 * uint8(idx)) + cd[36] + 36)]].field_256 = _147
        if _147 != 2500 * 10^6:
            if 1750 * 10^6 == _147:
                if 720 * 24 * 3600 > !deployedTime:
                    revert with 0, 17
                if uint8(idx) >= ('cd', 36).length:
                    revert with 0, 50
                mem[0] = cd[((32 * uint8(idx)) + cd[36] + 36)]
                mem[32] = 205
                sub_a6c76129[cd[((32 * uint8(idx)) + cd[36] + 36)]].field_0 = deployedTime + (720 * 24 * 3600)
                mem[mem[64] + 4] = cd[((32 * uint8(idx)) + cd[36] + 36)]
                require ext_code.size(address(cd[4]))
                staticcall address(cd[4]).getTokenOwner(uint256 arg1) with:
                        gas gas_remaining wei
                       args cd[((32 * uint8(idx)) + cd[36] + 36)]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _163 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_163] == mem[_163 + 12 len 20]
                _rewardPoolAddress = mem[_163 + 12 len 20]
        else:
            if 720 * 24 * 3600 > !deployedTime:
                revert with 0, 17
            if uint8(idx) >= ('cd', 36).length:
                revert with 0, 50
            mem[0] = cd[((32 * uint8(idx)) + cd[36] + 36)]
            mem[32] = 205
            sub_a6c76129[cd[((32 * uint8(idx)) + cd[36] + 36)]].field_0 = deployedTime + (720 * 24 * 3600)
            if 1750 * 10^6 == _147:
                if 720 * 24 * 3600 > !deployedTime:
                    revert with 0, 17
                if uint8(idx) >= ('cd', 36).length:
                    revert with 0, 50
                mem[0] = cd[((32 * uint8(idx)) + cd[36] + 36)]
                mem[32] = 205
                sub_a6c76129[cd[((32 * uint8(idx)) + cd[36] + 36)]].field_0 = deployedTime + (720 * 24 * 3600)
                mem[mem[64] + 4] = cd[((32 * uint8(idx)) + cd[36] + 36)]
                require ext_code.size(address(cd[4]))
                staticcall address(cd[4]).getTokenOwner(uint256 arg1) with:
                        gas gas_remaining wei
                       args cd[((32 * uint8(idx)) + cd[36] + 36)]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _189 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_189] == mem[_189 + 12 len 20]
                _rewardPoolAddress = mem[_189 + 12 len 20]
        if 1500 * 10^6 == _147:
            if uint8(idx) >= ('cd', 36).length:
                revert with 0, 50
            mem[0] = cd[((32 * uint8(idx)) + cd[36] + 36)]
            mem[32] = 205
            sub_a6c76129[cd[((32 * uint8(idx)) + cd[36] + 36)]].field_0 = deployedTime
        if 1900 * 10^6 == _147:
            if 8760 * 24 * 3600 > !deployedTime:
                revert with 0, 17
            if uint8(idx) >= ('cd', 36).length:
                revert with 0, 50
            mem[0] = cd[((32 * uint8(idx)) + cd[36] + 36)]
            mem[32] = 205
            sub_a6c76129[cd[((32 * uint8(idx)) + cd[36] + 36)]].field_0 = deployedTime + (8760 * 24 * 3600)
        if 10^9 == _147:
            if 4320 * 24 * 3600 > !deployedTime:
                revert with 0, 17
            if uint8(idx) >= ('cd', 36).length:
                revert with 0, 50
            mem[0] = cd[((32 * uint8(idx)) + cd[36] + 36)]
            mem[32] = 205
            sub_a6c76129[cd[((32 * uint8(idx)) + cd[36] + 36)]].field_0 = deployedTime + (4320 * 24 * 3600)
        if 300 * 10^6 == _147:
            if uint8(idx) >= ('cd', 36).length:
                revert with 0, 50
            mem[0] = cd[((32 * uint8(idx)) + cd[36] + 36)]
            mem[32] = 205
            sub_a6c76129[cd[((32 * uint8(idx)) + cd[36] + 36)]].field_0 = deployedTime
        if 1050 * 10^6 == _147:
            if uint8(idx) >= ('cd', 36).length:
                revert with 0, 50
            mem[0] = cd[((32 * uint8(idx)) + cd[36] + 36)]
            mem[32] = 205
            sub_a6c76129[cd[((32 * uint8(idx)) + cd[36] + 36)]].field_0 = deployedTime
        if uint8(idx) == 255:
            revert with 0, 17
        idx = uint8(idx) + 1
        s = _147
        continue 
}



}
