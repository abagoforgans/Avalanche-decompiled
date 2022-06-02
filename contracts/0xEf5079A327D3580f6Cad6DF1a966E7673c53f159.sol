contract main {




// =====================  Runtime code  =====================


#
#  - sub_62791645(?)
#  - sub_b8221e98(?)
#
address owner;
mapping of uint256 checkpoints;
mapping of address deposits;
mapping of struct lotteries;
array of struct sub_b8a66f6d;
array of address stor5;
address sub_e5873ec2Address;
address sub_7ac27d19Address;
uint256 sub_01790e01;
uint256 sub_3ea88897;
uint8 stakingPaused;
uint256 stakedTokens;

function sub_01790e01(?) {
    return sub_01790e01
}

function lotteries(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(lotteries[arg1].field_0), lotteries[arg1].field_0, lotteries[arg1].field_0, lotteries[arg1].field_176
}

function sub_3ea88897(?) {
    return sub_3ea88897
}

function sub_7ac27d19(?) {
    return sub_7ac27d19Address
}

function owner() {
    return owner
}

function deposits(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return deposits[arg1]
}

function checkpoints(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return checkpoints[arg1]
}

function sub_b8a66f6d(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < sub_b8a66f6d.length
    return sub_b8a66f6d[arg1].field_0, sub_b8a66f6d[arg1].field_0, sub_b8a66f6d[arg1].field_256, sub_b8a66f6d[arg1].field_512
}

function stakingPaused() {
    return bool(stakingPaused)
}

function stakedTokens() {
    return stakedTokens
}

function sub_e5873ec2(?) {
    return sub_e5873ec2Address
}

function sub_b5cc4539(?) payable {
  stop
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_d318f510(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_01790e01 = arg1
}

function stakingPause() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stakingPaused:
        revert with 0, 'Staking is already paused'
    stakingPaused = 1
}

function stakingStart() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if bool(stakingPaused) != 1:
        revert with 0, 'Staking has already started'
    stakingPaused = 0
}

function random(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if block.number < 1:
        revert with 'NH{q', 17
    if not arg1:
        revert with 'NH{q', 18
    return (block.hash(block.number - 1) % arg1)
}

function isLeapYear(uint16 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1 % 4:
        if uint16(arg1 % 100):
            return 1
        if not uint16(arg1 % 400):
            return 1
        else:
            return 0
    else:
        return 0
}

function leapYearsBefore(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 < 1:
        revert with 'NH{q', 17
    if arg1 - 1 / 4 < arg1 - 1 / 100:
        revert with 'NH{q', 17
    if (arg1 - 1 / 4) - (arg1 - 1 / 100) > -(arg1 - 1 / 400) - 1:
        revert with 'NH{q', 17
    return ((arg1 - 1 / 4) - (arg1 - 1 / 100) + (arg1 - 1 / 400))
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function initialize(address arg1, address arg2, uint256 arg3, uint256 arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_e5873ec2Address = arg1
    sub_7ac27d19Address = arg2
    sub_01790e01 = arg3
    sub_3ea88897 = arg4
    stakingPaused = 1
}

function withdraw(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if deposits[arg1] != msg.sender:
        revert with 0, 'You did not stake this token'
    require ext_code.size(sub_7ac27d19Address)
    call sub_7ac27d19Address.0x23b872dd with:
         gas gas_remaining wei
        args address(this.address), msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    deposits[arg1] = 0
    checkpoints[arg1] = 0
    if not stakedTokens:
        revert with 'NH{q', 17
    stakedTokens--
}

function getDaysInMonth(uint8 arg1, uint16 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg1 == 1:
        return 31
    if arg1 == 3:
        return 31
    if arg1 == 5:
        return 31
    if arg1 == 7:
        return 31
    if arg1 == 8:
        return 31
    if arg1 == 10:
        return 31
    if arg1 == 12:
        return 31
    if arg1 == 4:
        return 30
    if arg1 == 6:
        return 30
    if arg1 == 9:
        return 30
    if arg1 == 11:
        return 30
    if not arg2 % 4:
        if uint16(arg2 % 100):
            return 29
        if not uint16(arg2 % 400):
            return 29
    return 28
}

function deposit(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stakingPaused:
        revert with 0, 'Staking is currently paused'
    staticcall sub_7ac27d19Address.0x6352211e with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'You are not the owner of this token'
    require ext_code.size(sub_7ac27d19Address)
    call sub_7ac27d19Address.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    deposits[arg1] = msg.sender
    checkpoints[arg1] = block.timestamp
    if stakedTokens == -1:
        revert with 'NH{q', 17
    stakedTokens++
}

function tokensStaked(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    idx = 0
    s = 0
    while idx < sub_01790e01:
        mem[0] = idx
        mem[32] = 2
        if deposits[idx] != arg1:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s
            continue 
        if s == -1:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s + 1
        continue 
    if s > test266151307():
        revert with 'NH{q', 65
    if s:
        mem[128 len 32 * s] = call.data[calldata.size len 32 * s]
    idx = 0
    t = 0
    while idx < sub_01790e01:
        mem[0] = idx
        mem[32] = 2
        if deposits[idx] != arg1:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            t = t
            continue 
        if t >= s:
            revert with 'NH{q', 50
        mem[(32 * t) + 128] = idx
        if t == -1:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        t = t + 1
        continue 
    return Array(len=s, data=mem[128 len 32 * s])
}

function sub_06947d76(?) {
    require calldata.size - 4 >= 64
    require arg1 == uint8(arg1)
    require arg2 == uint16(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if uint16(arg2) and 100 > -1 / uint16(arg2):
        revert with 'NH{q', 17
    if 100 * uint16(arg2) > -uint8(arg1) - 1:
        revert with 'NH{q', 17
    if lotteries[(100 * uint16(arg2)) + uint8(arg1)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'This lottery has already been drawn'
    stor5.length = 0
    idx = 0
    while stor5.length > idx:
        uint256(stor5[idx]) = 0
        idx = idx + 1
        continue 
    idx = 0
    while idx < sub_b8a66f6d.length:
        mem[0] = 4
        if sub_b8a66f6d[idx].field_0 != uint8(arg1):
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        if idx >= sub_b8a66f6d.length:
            revert with 'NH{q', 50
        mem[0] = 4
        if sub_b8a66f6d[idx].field_512 != uint16(arg2):
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        if idx >= sub_b8a66f6d.length:
            revert with 'NH{q', 50
        mem[0] = 4
        if var71003 >= sub_b8a66f6d[idx].field_256:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        if idx >= sub_b8a66f6d.length:
            revert with 'NH{q', 50
        stor5.length++
        address(stor5[stor5.length]) = sub_b8a66f6d[idx].field_8
        s = var73001
        while s != -1:
            if idx >= sub_b8a66f6d.length:
                revert with 'NH{q', 50
            if s + 1 >= sub_b8a66f6d[idx].field_256:
                if idx == -1:
                    revert with 'NH{q', 17
                stor5.length++
                mem[0] = 5
                address(stor5[stor5.length]) = sub_b8a66f6d[idx].field_776
                idx = idx + 1
                continue 
            if idx >= sub_b8a66f6d.length:
                revert with 'NH{q', 50
            stor5.length++
            mem[0] = 5
            address(stor5[stor5.length]) = sub_b8a66f6d[idx].field_8
            s = s + 1
            continue 
        revert with 'NH{q', 17
    if stor5.length < 1:
        revert with 'NH{q', 17
    if block.number < 1:
        revert with 'NH{q', 17
    if not stor5.length - 1:
        revert with 'NH{q', 18
    lotteries[(100 * uint16(arg2)) + uint8(arg1)].field_0 = 1
    if block.hash(block.number - 1) % stor5.length - 1 >= stor5.length:
        revert with 'NH{q', 50
    lotteries[(100 * uint16(arg2)) + uint8(arg1)].field_8 = address(stor5[block.hash(block.number - 1) % stor5.length - 1])
    stor5.length = 0
    idx = 0
    while stor5.length > idx:
        uint256(stor5[idx]) = 0
        idx = idx + 1
        continue 
    call lotteries[(100 * uint16(arg2)) + uint8(arg1)].field_8 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return lotteries[(100 * uint16(arg2)) + uint8(arg1)].field_8
}

function getYear(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if 1970 > -(arg1 / 8760 * 24 * 3600) - 1:
        revert with 'NH{q', 17
    if uint16((arg1 / 8760 * 24 * 3600) + 1970) < 1:
        revert with 'NH{q', 17
    if uint16((arg1 / 8760 * 24 * 3600) + 1970) - 1 / 4 < uint16((arg1 / 8760 * 24 * 3600) + 1970) - 1 / 100:
        revert with 'NH{q', 17
    if (uint16((arg1 / 8760 * 24 * 3600) + 1970) - 1 / 4) - (uint16((arg1 / 8760 * 24 * 3600) + 1970) - 1 / 100) > -(uint16((arg1 / 8760 * 24 * 3600) + 1970) - 1 / 400) - 1:
        revert with 'NH{q', 17
    if (uint16((arg1 / 8760 * 24 * 3600) + 1970) - 1 / 4) - (uint16((arg1 / 8760 * 24 * 3600) + 1970) - 1 / 100) + (uint16((arg1 / 8760 * 24 * 3600) + 1970) - 1 / 400) < 477:
        revert with 'NH{q', 17
    if (uint16((arg1 / 8760 * 24 * 3600) + 1970) - 1 / 4) + -(uint16((arg1 / 8760 * 24 * 3600) + 1970) - 1 / 100) + (uint16((arg1 / 8760 * 24 * 3600) + 1970) - 1 / 400) - 477 > 0x87d206500cf71c7a443cd6c7ebe38ec0b59488f085555dd275ba5624c7:
        revert with 'NH{q', 17
    if 0 > (-31622400 * uint16((arg1 / 8760 * 24 * 3600) + 1970) - 1 / 4) + (8784 * 24 * 3600 * uint16((arg1 / 8760 * 24 * 3600) + 1970) - 1 / 100) + (-31622400 * uint16((arg1 / 8760 * 24 * 3600) + 1970) - 1 / 400) + 15083884799:
        revert with 'NH{q', 17
    if uint16((arg1 / 8760 * 24 * 3600) + 1970) < 1970:
        revert with 'NH{q', 17
    if uint16(uint16((arg1 / 8760 * 24 * 3600) + 1970) - 1970) < (uint16((arg1 / 8760 * 24 * 3600) + 1970) - 1 / 4) + -(uint16((arg1 / 8760 * 24 * 3600) + 1970) - 1 / 100) + (uint16((arg1 / 8760 * 24 * 3600) + 1970) - 1 / 400) - 477:
        revert with 'NH{q', 17
    if uint16(uint16((arg1 / 8760 * 24 * 3600) + 1970) - 1970) + -(uint16((arg1 / 8760 * 24 * 3600) + 1970) - 1 / 4) + (uint16((arg1 / 8760 * 24 * 3600) + 1970) - 1 / 100) + -(uint16((arg1 / 8760 * 24 * 3600) + 1970) - 1 / 400) + 477 > 0x883148f5cb1270b85273b667ae1cfdf5d70ac5a1ecccd54fe15c297df3:
        revert with 'NH{q', 17
    if (8784 * 24 * 3600 * uint16((arg1 / 8760 * 24 * 3600) + 1970) - 1 / 4) + (-31622400 * uint16((arg1 / 8760 * 24 * 3600) + 1970) - 1 / 100) + (8784 * 24 * 3600 * uint16((arg1 / 8760 * 24 * 3600) + 1970) - 1 / 400) - (4189968 * 24 * 3600) > (-31536000 * uint16(uint16((arg1 / 8760 * 24 * 3600) + 1970) - 1970)) + (8760 * 24 * 3600 * uint16((arg1 / 8760 * 24 * 3600) + 1970) - 1 / 4) + (-31536000 * uint16((arg1 / 8760 * 24 * 3600) + 1970) - 1 / 100) + (8760 * 24 * 3600 * uint16((arg1 / 8760 * 24 * 3600) + 1970) - 1 / 400) - 15042672001:
        revert with 'NH{q', 17
    s = (arg1 / 8760 * 24 * 3600) + 1970
    idx = (24 * 3600 * uint16((arg1 / 8760 * 24 * 3600) + 1970) - 1 / 4) + (-86400 * uint16((arg1 / 8760 * 24 * 3600) + 1970) - 1 / 100) + (24 * 3600 * uint16((arg1 / 8760 * 24 * 3600) + 1970) - 1 / 400) + (8760 * 24 * 3600 * uint16(uint16((arg1 / 8760 * 24 * 3600) + 1970) - 1970)) - (11448 * 24 * 3600)
    while idx > arg1:
        if uint16(s) < 1:
            revert with 'NH{q', 17
        if not uint16(s) - 1 % 4:
            if uint16(uint16(uint16(s) - 1) % 100):
                if idx < 8784 * 24 * 3600:
                    revert with 'NH{q', 17
                if uint16(s) < 1:
                    revert with 'NH{q', 17
                s = uint16(s) - 1
                idx = idx - (8784 * 24 * 3600)
                continue 
            if not uint16(uint16(uint16(s) - 1) % 400):
                if idx < 8784 * 24 * 3600:
                    revert with 'NH{q', 17
                if uint16(s) < 1:
                    revert with 'NH{q', 17
                s = uint16(s) - 1
                idx = idx - (8784 * 24 * 3600)
                continue 
        if idx < 8760 * 24 * 3600:
            revert with 'NH{q', 17
        if uint16(s) < 1:
            revert with 'NH{q', 17
        s = uint16(s) - 1
        idx = idx - (8760 * 24 * 3600)
        continue 
    return uint16(s)
}

function sub_403b98b2(?) {
    require calldata.size - 4 >= 64
    require arg1 == uint16(arg1)
    require arg2 == uint8(arg2)
    idx = 0
    s = 0
    while idx < sub_b8a66f6d.length:
        mem[0] = 4
        if sub_b8a66f6d[idx].field_0 != uint8(arg2):
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s
            continue 
        if idx >= sub_b8a66f6d.length:
            revert with 'NH{q', 50
        mem[0] = 4
        if sub_b8a66f6d[idx].field_512 != uint16(arg1):
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s
            continue 
        if s == -1:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s + 1
        continue 
    if s > test266151307():
        revert with 'NH{q', 65
    mem[96] = s
    mem[64] = (32 * s) + 128
    if not s:
        idx = 0
        s = 0
        while idx < sub_b8a66f6d.length:
            mem[0] = 4
            if sub_b8a66f6d[idx].field_0 != uint8(arg2):
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s
                continue 
            if idx >= sub_b8a66f6d.length:
                revert with 'NH{q', 50
            mem[0] = 4
            if sub_b8a66f6d[idx].field_512 != uint16(arg1):
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s
                continue 
            if idx >= sub_b8a66f6d.length:
                revert with 'NH{q', 50
            mem[0] = 4
            _53 = mem[64]
            mem[64] = mem[64] + 128
            mem[_53] = sub_b8a66f6d[idx].field_0
            mem[_53 + 32] = sub_b8a66f6d[idx].field_8
            mem[_53 + 64] = sub_b8a66f6d[idx].field_256
            mem[_53 + 96] = sub_b8a66f6d[idx].field_512
            if s >= mem[96]:
                revert with 'NH{q', 50
            mem[(32 * s) + 128] = _53
            if s == -1:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + 1
            continue 
        _48 = mem[64]
        mem[mem[64]] = 32
        _51 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _51:
            _75 = mem[s]
            mem[t] = mem[mem[s] + 31 len 1]
            mem[t + 32] = mem[_75 + 44 len 20]
            mem[t + 64] = mem[_75 + 64]
            mem[t + 96] = mem[_75 + 126 len 2]
            idx = idx + 1
            s = s + 32
            t = t + 128
            continue 
        return memory
          from mem[64]
           len _48 + (128 * _51) + -mem[64] + 64
    mem[64] = (32 * s) + 256
    mem[(32 * s) + 128] = 0
    mem[(32 * s) + 160] = 0
    mem[(32 * s) + 192] = 0
    mem[(32 * s) + 224] = 0
    mem[var29001] = (32 * s) + 128
    t = var29001
    idx = var29002
    while idx - 1:
        mem[64] = mem[64] + 128
        mem[(32 * s) + 128] = 0
        mem[(32 * s) + 160] = 0
        mem[(32 * s) + 192] = 0
        mem[(32 * s) + 224] = 0
        mem[t + 32] = (32 * s) + 128
        t = t + 32
        idx = idx - 1
        continue 
    idx = 0
    s = 0
    while idx < sub_b8a66f6d.length:
        mem[0] = 4
        if sub_b8a66f6d[idx].field_0 != uint8(arg2):
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s
            continue 
        if idx >= sub_b8a66f6d.length:
            revert with 'NH{q', 50
        mem[0] = 4
        if sub_b8a66f6d[idx].field_512 != uint16(arg1):
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s
            continue 
        if idx >= sub_b8a66f6d.length:
            revert with 'NH{q', 50
        mem[0] = 4
        _99 = mem[64]
        mem[64] = mem[64] + 128
        mem[_99] = sub_b8a66f6d[idx].field_0
        mem[_99 + 32] = sub_b8a66f6d[idx].field_8
        mem[_99 + 64] = sub_b8a66f6d[idx].field_256
        mem[_99 + 96] = sub_b8a66f6d[idx].field_512
        if s >= mem[96]:
            revert with 'NH{q', 50
        mem[(32 * s) + 128] = _99
        if s == -1:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s + 1
        continue 
    _94 = mem[64]
    mem[mem[64]] = 32
    _97 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _97:
        _107 = mem[s]
        mem[t] = mem[mem[s] + 31 len 1]
        mem[t + 32] = mem[_107 + 44 len 20]
        mem[t + 64] = mem[_107 + 64]
        mem[t + 96] = mem[_107 + 126 len 2]
        idx = idx + 1
        s = s + 32
        t = t + 128
        continue 
    return memory
      from mem[64]
       len _94 + (128 * _97) + -mem[64] + 64
}



}
