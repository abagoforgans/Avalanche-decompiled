contract main {




// =====================  Runtime code  =====================


#
#  - sub_05c4744b(?)
#  - claim()
#  - emergencyWithdraw(address arg1, uint256 arg2)
#  - create(uint256 arg1, uint256 arg2)
#  - compound()
#
const getBalance = ext_call.return_data[0]

const MULTIPLIER = 10 * 10^18

const TOKEN = 0xd9ff12172803c072a36785defea1aa981a6a0c18


array of uint256 sub_2365d7bc;
array of uint256 tierAmounts;
address stor2;
mapping of struct users;
mapping of uint256 sub_adf1b67e;
mapping of uint256 sub_1d1c7b4e;
array of address sub_211aea02;
uint256 total_deposited;
uint256 sub_6af904c6;
uint256 sub_05d6bbf4;
uint256 sub_ab4e2785;
uint256 sub_5c75dcbc;
uint256 sub_f65f4eaf;
uint256 sub_c7ce9560;
uint256 sub_740c8af7;
uint256 dripRate;
uint256 lastDripTime;
uint256 startTime;
uint8 enabled;

function sub_05d6bbf4(?) {
    return sub_05d6bbf4
}

function sub_1d1c7b4e(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_1d1c7b4e[arg1]
}

function sub_211aea02(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < sub_211aea02.length
    return sub_211aea02[arg1]
}

function sub_2365d7bc(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < sub_2365d7bc.length
    return sub_2365d7bc[arg1]
}

function enabled() {
    return bool(enabled)
}

function tierAmounts(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < tierAmounts.length
    return tierAmounts[arg1]
}

function sub_5c75dcbc(?) {
    return sub_5c75dcbc
}

function sub_6af904c6(?) {
    return sub_6af904c6
}

function sub_740c8af7(?) {
    return sub_740c8af7
}

function startTime() {
    return startTime
}

function users(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return users[arg1].field_0, users[arg1].field_256, users[arg1].field_512
}

function sub_ab4e2785(?) {
    return sub_ab4e2785
}

function sub_adf1b67e(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    return sub_adf1b67e[arg1][arg2]
}

function sub_bcb11639(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    return sub_adf1b67e[address(arg1)][arg2]
}

function sub_c7ce9560(?) {
    return sub_c7ce9560
}

function dripRate() {
    return dripRate
}

function total_deposited() {
    return total_deposited
}

function total_users() {
    return sub_211aea02.length
}

function sub_f65f4eaf(?) {
    return sub_f65f4eaf
}

function lastDripTime() {
    return lastDripTime
}

function _fallback() payable {
    revert
}

function sub_1ed5c6c2(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor2 != msg.sender:
        revert with 0, 'Caller is not the dev!'
    lastDripTime = arg1
}

function sub_648acb09(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor2 != msg.sender:
        revert with 0, 'Caller is not the dev!'
    sub_740c8af7 = arg1
}

function setDripRate(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor2 != msg.sender:
        revert with 0, 'Caller is not the dev!'
    dripRate = arg1
}

function setEnabled(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor2 != msg.sender:
        revert with 0, 'Caller is not the dev!'
    enabled = uint8(arg1)
}

function setStartTime(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor2 != msg.sender:
        revert with 0, 'Caller is not the dev!'
    startTime = arg1
}

function setTreasuryFeePercent(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor2 != msg.sender:
        revert with 0, 'Caller is not the dev!'
    sub_5c75dcbc = arg1
}

function changeDev(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor2 != msg.sender:
        revert with 0, 'Caller is not the dev!'
    if not arg1:
        revert with 0, 'Zero address'
    stor2 = arg1
}

function sub_e300e98b(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not users[address(arg1)].field_0:
        return 0
    require users[address(arg1)].field_0
    if users[address(arg1)].field_0 * sub_740c8af7 / users[address(arg1)].field_0 != sub_740c8af7:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
    return (users[address(arg1)].field_0 * sub_740c8af7 / 100)
}

function sub_44886d70(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not users[address(arg1)].field_0:
        return users[address(arg1)].field_256 >= 0
    require users[address(arg1)].field_0
    if users[address(arg1)].field_0 * sub_740c8af7 / users[address(arg1)].field_0 != sub_740c8af7:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
    return users[address(arg1)].field_256 >= users[address(arg1)].field_0 * sub_740c8af7 / 100
}

function totalAllocPoints() {
    idx = 0
    while idx < sub_2365d7bc.length:
        mem[32] = 5
        mem[0] = 0
        if sub_2365d7bc[idx]:
            require sub_2365d7bc[idx]
            if sub_2365d7bc[idx] * sub_1d1c7b4e[idx] / sub_2365d7bc[idx] != sub_1d1c7b4e[idx]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if sub_2365d7bc[idx] * sub_1d1c7b4e[idx] < 0:
                revert with 0, 'SafeMath: addition overflow'
        idx = idx + 1
        continue 
    return 0
}

function sub_63584ecd(?) {
    require sub_2365d7bc.length <= test266151307()
    if sub_2365d7bc.length:
        mem[128 len 32 * sub_2365d7bc.length] = call.data[calldata.size len 32 * sub_2365d7bc.length]
    idx = 0
    while idx < sub_2365d7bc.length:
        mem[0] = idx
        mem[32] = 5
        require idx < sub_2365d7bc.length
        if mem[(32 * idx) + 128] + sub_1d1c7b4e[idx] < mem[(32 * idx) + 128]:
            revert with 0, 'SafeMath: addition overflow'
        require idx < sub_2365d7bc.length
        mem[(32 * idx) + 128] = mem[(32 * idx) + 128] + sub_1d1c7b4e[idx]
        idx = idx + 1
        continue 
    return Array(len=sub_2365d7bc.length, data=mem[128 len 32 * sub_2365d7bc.length])
}

function allocPoints(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    idx = 0
    while idx < sub_2365d7bc.length:
        mem[32] = sha3(address(arg1), 4)
        mem[0] = 0
        if sub_2365d7bc[idx]:
            require sub_2365d7bc[idx]
            if sub_2365d7bc[idx] * sub_adf1b67e[address(arg1)][idx] / sub_2365d7bc[idx] != sub_adf1b67e[address(arg1)][idx]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if sub_2365d7bc[idx] * sub_adf1b67e[address(arg1)][idx] < 0:
                revert with 0, 'SafeMath: addition overflow'
        idx = idx + 1
        continue 
    return 0
}

function sub_5b0d2d8c(?) {
    require ext_code.size(0xd9ff12172803c072a36785defea1aa981a6a0c18)
    staticcall 0xd9ff12172803c072a36785defea1aa981a6a0c18.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if sub_05d6bbf4 > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if sub_ab4e2785 > ext_call.return_data[0] - sub_05d6bbf4:
        revert with 0, 'SafeMath: subtraction overflow', 0
    return (ext_call.return_data[0] - sub_05d6bbf4 - sub_ab4e2785)
}

function getDayDripEstimate(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    idx = 0
    while idx < sub_2365d7bc.length:
        mem[32] = sha3(address(arg1), 4)
        mem[0] = 0
        if sub_2365d7bc[idx]:
            require sub_2365d7bc[idx]
            if sub_2365d7bc[idx] * sub_adf1b67e[address(arg1)][idx] / sub_2365d7bc[idx] != sub_adf1b67e[address(arg1)][idx]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if sub_2365d7bc[idx] * sub_adf1b67e[address(arg1)][idx] < 0:
                revert with 0, 'SafeMath: addition overflow'
        idx = idx + 1
        continue 
    return 0
}

function sub_486af96a(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require sub_2365d7bc.length <= test266151307()
    if sub_2365d7bc.length:
        mem[128 len 32 * sub_2365d7bc.length] = call.data[calldata.size len 32 * sub_2365d7bc.length]
    idx = 0
    while idx < sub_2365d7bc.length:
        mem[0] = idx
        mem[32] = sha3(address(arg1), 4)
        require idx < sub_2365d7bc.length
        if mem[(32 * idx) + 128] + sub_adf1b67e[address(arg1)][idx] < mem[(32 * idx) + 128]:
            revert with 0, 'SafeMath: addition overflow'
        require idx < sub_2365d7bc.length
        mem[(32 * idx) + 128] = mem[(32 * idx) + 128] + sub_adf1b67e[address(arg1)][idx]
        idx = idx + 1
        continue 
    return Array(len=sub_2365d7bc.length, data=mem[128 len 32 * sub_2365d7bc.length])
}

function sub_2702dfe7(?) {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require calldata.size - 36 >= 96
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    if stor2 != msg.sender:
        revert with 0, 'Caller is not the dev!'
    if users[address(arg1)].field_0 > total_deposited:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if arg2 < 0:
        revert with 0, 'SafeMath: addition overflow'
    total_deposited = total_deposited - users[address(arg1)].field_0 + arg2
    if users[address(arg1)].field_256 > sub_6af904c6:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if arg3 < 0:
        revert with 0, 'SafeMath: addition overflow'
    sub_6af904c6 = sub_6af904c6 - users[address(arg1)].field_256 + arg3
    users[address(arg1)].field_0 = arg2
    users[address(arg1)].field_256 = arg3
}

function sub_5083f17b(?) {
    require calldata.size - 4 >= 64
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require (32 * ('cd', 36).length) + 128 <= test266151307() and (32 * ('cd', 36).length) + 128 >= 96
    mem[64] = (32 * ('cd', 36).length) + 128
    mem[96] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = 128
    while idx < ('cd', 36).length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if stor2 != msg.sender:
        revert with 0, 'Caller is not the dev!'
    idx = 0
    while idx < ('cd', 36).length:
        require idx < mem[96]
        _46 = mem[(32 * idx) + 128]
        mem[0] = idx
        mem[32] = 5
        _50 = mem[64]
        mem[64] = mem[64] + 64
        mem[_50] = 30
        mem[_50 + 32] = 'SafeMath: subtraction overflow'
        if sub_adf1b67e[address(cd[4])][idx] <= sub_1d1c7b4e[idx]:
            if _46 < 0:
                revert with 0, 'SafeMath: addition overflow'
            sub_1d1c7b4e[idx] = sub_1d1c7b4e[idx] - sub_adf1b67e[address(cd[4])][idx] + _46
            require idx < mem[96]
            mem[0] = idx
            mem[32] = sha3(address(cd[4]), 4)
            sub_adf1b67e[address(cd[4])][idx] = mem[(32 * idx) + 128]
            idx = idx + 1
            continue 
        _51 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 30
        idx = 0
        while idx < 30:
            mem[_51 + idx + 68] = mem[_50 + idx + 32]
            idx = idx + 32
            continue 
        mem[_51 + 98] = 0
        revert with memory
          from mem[64]
           len _51 + -mem[64] + 100
}

function getRewardDrip() {
    if lastDripTime >= block.timestamp:
        return 0
    require ext_code.size(0xd9ff12172803c072a36785defea1aa981a6a0c18)
    staticcall 0xd9ff12172803c072a36785defea1aa981a6a0c18.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if sub_05d6bbf4 > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if sub_ab4e2785 > ext_call.return_data[0] - sub_05d6bbf4:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if lastDripTime > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if not block.timestamp - lastDripTime:
        if dripRate <= 0:
            revert with 0, 'SafeMath: division by zero', 0
        require dripRate
        if 0 / dripRate <= ext_call.return_data[0] - sub_05d6bbf4 - sub_ab4e2785:
            return (0 / dripRate)
    else:
        require block.timestamp - lastDripTime
        if (ext_call.return_data[0] * block.timestamp) - (sub_05d6bbf4 * block.timestamp) - (sub_ab4e2785 * block.timestamp) - (ext_call.return_data[0] * lastDripTime) + (sub_05d6bbf4 * lastDripTime) + (sub_ab4e2785 * lastDripTime) / block.timestamp - lastDripTime != ext_call.return_data[0] - sub_05d6bbf4 - sub_ab4e2785:
            revert with 0, 'SafeMath: multiplication overflow'
        if dripRate <= 0:
            revert with 0, 'SafeMath: division by zero', 0
        require dripRate
        if (ext_call.return_data[0] * block.timestamp) - (sub_05d6bbf4 * block.timestamp) - (sub_ab4e2785 * block.timestamp) - (ext_call.return_data[0] * lastDripTime) + (sub_05d6bbf4 * lastDripTime) + (sub_ab4e2785 * lastDripTime) / dripRate <= ext_call.return_data[0] - sub_05d6bbf4 - sub_ab4e2785:
            return ((ext_call.return_data[0] * block.timestamp) - (sub_05d6bbf4 * block.timestamp) - (sub_ab4e2785 * block.timestamp) - (ext_call.return_data[0] * lastDripTime) + (sub_05d6bbf4 * lastDripTime) + (sub_ab4e2785 * lastDripTime) / dripRate)
    return (ext_call.return_data[0] - sub_05d6bbf4 - sub_ab4e2785)
}

function getDistributionRewards(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not users[address(arg1)].field_0:
        if users[address(arg1)].field_256 < 0:
            if users[address(arg1)].field_512 > sub_c7ce9560:
                revert with 0, 'SafeMath: subtraction overflow', 0
            idx = 0
            while idx < sub_2365d7bc.length:
                mem[32] = sha3(address(arg1), 4)
                mem[0] = 0
                if sub_2365d7bc[idx]:
                    require sub_2365d7bc[idx]
                    if sub_2365d7bc[idx] * sub_adf1b67e[address(arg1)][idx] / sub_2365d7bc[idx] != sub_adf1b67e[address(arg1)][idx]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if sub_2365d7bc[idx] * sub_adf1b67e[address(arg1)][idx] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                idx = idx + 1
                continue 
            if 0 > sub_05d6bbf4:
                return sub_05d6bbf4
    else:
        require users[address(arg1)].field_0
        if users[address(arg1)].field_0 * sub_740c8af7 / users[address(arg1)].field_0 != sub_740c8af7:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if users[address(arg1)].field_256 < users[address(arg1)].field_0 * sub_740c8af7 / 100:
            if users[address(arg1)].field_512 > sub_c7ce9560:
                revert with 0, 'SafeMath: subtraction overflow', 0
            idx = 0
            while idx < sub_2365d7bc.length:
                mem[32] = sha3(address(arg1), 4)
                mem[0] = 0
                if sub_2365d7bc[idx]:
                    require sub_2365d7bc[idx]
                    if sub_2365d7bc[idx] * sub_adf1b67e[address(arg1)][idx] / sub_2365d7bc[idx] != sub_adf1b67e[address(arg1)][idx]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if sub_2365d7bc[idx] * sub_adf1b67e[address(arg1)][idx] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                idx = idx + 1
                continue 
            if 0 > sub_05d6bbf4:
                return sub_05d6bbf4
    return 0
}

function sub_2ae27071(?) {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require (32 * ('cd', 4).length) + 128 <= test266151307() and (32 * ('cd', 4).length) + 128 >= 96
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160 <= test266151307() and (32 * ('cd', 36).length) + 160 >= 128
    mem[(32 * ('cd', 4).length) + 128] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = (32 * ('cd', 4).length) + 160
    while idx < ('cd', 36).length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if stor2 != msg.sender:
        revert with 0, 'Caller is not the dev!'
    if ('cd', 4).length != ('cd', 36).length:
        revert with 0, 'Length mismatch'
    sub_2365d7bc.length = ('cd', 4).length
    if not ('cd', 4).length:
        idx = 0
        while sub_2365d7bc.length > idx:
            sub_2365d7bc[idx] = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * ('cd', 4).length) + 128 > idx:
            sub_2365d7bc[s] = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * ('cd', 4).length) + 31) >> 5
        while sub_2365d7bc.length > idx:
            sub_2365d7bc[idx] = 0
            idx = idx + 1
            continue 
    tierAmounts.length = ('cd', 36).length
    if not ('cd', 36).length:
        idx = 0
        while tierAmounts.length > idx:
            tierAmounts[idx] = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = (32 * ('cd', 4).length) + 160
        while (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160 > idx:
            tierAmounts[s] = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * ('cd', 36).length) + 31) >> 5
        while tierAmounts.length > idx:
            tierAmounts[idx] = 0
            idx = idx + 1
            continue 
}

function getTotalRewards(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not users[address(arg1)].field_0:
        return 0
    idx = 0
    while idx < sub_2365d7bc.length:
        mem[32] = 5
        mem[0] = 0
        if sub_2365d7bc[idx]:
            require sub_2365d7bc[idx]
            if sub_2365d7bc[idx] * sub_1d1c7b4e[idx] / sub_2365d7bc[idx] != sub_1d1c7b4e[idx]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if sub_2365d7bc[idx] * sub_1d1c7b4e[idx] < 0:
                revert with 0, 'SafeMath: addition overflow'
        idx = idx + 1
        continue 
    idx = 0
    while idx < sub_2365d7bc.length:
        mem[32] = sha3(address(arg1), 4)
        mem[0] = 0
        if sub_2365d7bc[idx]:
            require sub_2365d7bc[idx]
            if sub_2365d7bc[idx] * sub_adf1b67e[address(arg1)][idx] / sub_2365d7bc[idx] != sub_adf1b67e[address(arg1)][idx]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if sub_2365d7bc[idx] * sub_adf1b67e[address(arg1)][idx] < 0:
                revert with 0, 'SafeMath: addition overflow'
        idx = idx + 1
        continue 
    if lastDripTime < block.timestamp:
        require ext_code.size(0xd9ff12172803c072a36785defea1aa981a6a0c18)
        staticcall 0xd9ff12172803c072a36785defea1aa981a6a0c18.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if sub_05d6bbf4 > ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if sub_ab4e2785 > ext_call.return_data[0] - sub_05d6bbf4:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if lastDripTime > block.timestamp:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if not block.timestamp - lastDripTime:
            if dripRate > 0:
                require dripRate
                if 0 / dripRate <= ext_call.return_data[0] - sub_05d6bbf4 - sub_ab4e2785:
                    if 0 / dripRate:
                        require 0 / dripRate
                        if 0 / 0 / dripRate:
                            revert with 0, 'SafeMath: multiplication overflow'
                else:
                    if ext_call.return_data[0] - sub_05d6bbf4 - sub_ab4e2785:
                        require ext_call.return_data[0] - sub_05d6bbf4 - sub_ab4e2785
                        if 0 / ext_call.return_data[0] - sub_05d6bbf4 - sub_ab4e2785:
                            revert with 0, 'SafeMath: multiplication overflow'
        else:
            require block.timestamp - lastDripTime
            if (ext_call.return_data[0] * block.timestamp) - (sub_05d6bbf4 * block.timestamp) - (sub_ab4e2785 * block.timestamp) - (ext_call.return_data[0] * lastDripTime) + (sub_05d6bbf4 * lastDripTime) + (sub_ab4e2785 * lastDripTime) / block.timestamp - lastDripTime != ext_call.return_data[0] - sub_05d6bbf4 - sub_ab4e2785:
                revert with 0, 'SafeMath: multiplication overflow'
            if dripRate > 0:
                require dripRate
                if (ext_call.return_data[0] * block.timestamp) - (sub_05d6bbf4 * block.timestamp) - (sub_ab4e2785 * block.timestamp) - (ext_call.return_data[0] * lastDripTime) + (sub_05d6bbf4 * lastDripTime) + (sub_ab4e2785 * lastDripTime) / dripRate <= ext_call.return_data[0] - sub_05d6bbf4 - sub_ab4e2785:
                    if (ext_call.return_data[0] * block.timestamp) - (sub_05d6bbf4 * block.timestamp) - (sub_ab4e2785 * block.timestamp) - (ext_call.return_data[0] * lastDripTime) + (sub_05d6bbf4 * lastDripTime) + (sub_ab4e2785 * lastDripTime) / dripRate:
                        require (ext_call.return_data[0] * block.timestamp) - (sub_05d6bbf4 * block.timestamp) - (sub_ab4e2785 * block.timestamp) - (ext_call.return_data[0] * lastDripTime) + (sub_05d6bbf4 * lastDripTime) + (sub_ab4e2785 * lastDripTime) / dripRate
                        if 0 / (ext_call.return_data[0] * block.timestamp) - (sub_05d6bbf4 * block.timestamp) - (sub_ab4e2785 * block.timestamp) - (ext_call.return_data[0] * lastDripTime) + (sub_05d6bbf4 * lastDripTime) + (sub_ab4e2785 * lastDripTime) / dripRate:
                            revert with 0, 'SafeMath: multiplication overflow'
                else:
                    if ext_call.return_data[0] - sub_05d6bbf4 - sub_ab4e2785:
                        require ext_call.return_data[0] - sub_05d6bbf4 - sub_ab4e2785
                        if 0 / ext_call.return_data[0] - sub_05d6bbf4 - sub_ab4e2785:
                            revert with 0, 'SafeMath: multiplication overflow'
    revert with 0, 'SafeMath: division by zero', 0
}

function dripRewards() {
    if lastDripTime >= block.timestamp:
    require ext_code.size(0xd9ff12172803c072a36785defea1aa981a6a0c18)
    staticcall 0xd9ff12172803c072a36785defea1aa981a6a0c18.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if sub_05d6bbf4 > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if sub_ab4e2785 > ext_call.return_data[0] - sub_05d6bbf4:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if lastDripTime > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if not block.timestamp - lastDripTime:
        if dripRate > 0:
            require dripRate
            if 0 / dripRate <= ext_call.return_data[0] - sub_05d6bbf4 - sub_ab4e2785:
                if 0 / dripRate <= 0:
                idx = 0
                while idx < sub_2365d7bc.length:
                    mem[32] = 5
                    mem[0] = 0
                    if sub_2365d7bc[idx]:
                        require sub_2365d7bc[idx]
                        if sub_2365d7bc[idx] * sub_1d1c7b4e[idx] / sub_2365d7bc[idx] != sub_1d1c7b4e[idx]:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if sub_2365d7bc[idx] * sub_1d1c7b4e[idx] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    continue 
                if 0 / dripRate:
                    require 0 / dripRate
                    if 10 * 10^18 * 0 / dripRate / 0 / dripRate != 10 * 10^18:
                        revert with 0, 'SafeMath: multiplication overflow'
            else:
                if ext_call.return_data[0] - sub_05d6bbf4 - sub_ab4e2785 <= 0:
                idx = 0
                while idx < sub_2365d7bc.length:
                    mem[32] = 5
                    mem[0] = 0
                    if sub_2365d7bc[idx]:
                        require sub_2365d7bc[idx]
                        if sub_2365d7bc[idx] * sub_1d1c7b4e[idx] / sub_2365d7bc[idx] != sub_1d1c7b4e[idx]:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if sub_2365d7bc[idx] * sub_1d1c7b4e[idx] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    continue 
                if ext_call.return_data[0] - sub_05d6bbf4 - sub_ab4e2785:
                    require ext_call.return_data[0] - sub_05d6bbf4 - sub_ab4e2785
                    if (10 * 10^18 * ext_call.return_data[0]) - (10 * 10^18 * sub_05d6bbf4) - (10 * 10^18 * sub_ab4e2785) / ext_call.return_data[0] - sub_05d6bbf4 - sub_ab4e2785 != 10 * 10^18:
                        revert with 0, 'SafeMath: multiplication overflow'
    else:
        require block.timestamp - lastDripTime
        if (ext_call.return_data[0] * block.timestamp) - (sub_05d6bbf4 * block.timestamp) - (sub_ab4e2785 * block.timestamp) - (ext_call.return_data[0] * lastDripTime) + (sub_05d6bbf4 * lastDripTime) + (sub_ab4e2785 * lastDripTime) / block.timestamp - lastDripTime != ext_call.return_data[0] - sub_05d6bbf4 - sub_ab4e2785:
            revert with 0, 'SafeMath: multiplication overflow'
        if dripRate > 0:
            require dripRate
            if (ext_call.return_data[0] * block.timestamp) - (sub_05d6bbf4 * block.timestamp) - (sub_ab4e2785 * block.timestamp) - (ext_call.return_data[0] * lastDripTime) + (sub_05d6bbf4 * lastDripTime) + (sub_ab4e2785 * lastDripTime) / dripRate <= ext_call.return_data[0] - sub_05d6bbf4 - sub_ab4e2785:
                if (ext_call.return_data[0] * block.timestamp) - (sub_05d6bbf4 * block.timestamp) - (sub_ab4e2785 * block.timestamp) - (ext_call.return_data[0] * lastDripTime) + (sub_05d6bbf4 * lastDripTime) + (sub_ab4e2785 * lastDripTime) / dripRate <= 0:
                idx = 0
                while idx < sub_2365d7bc.length:
                    mem[32] = 5
                    mem[0] = 0
                    if sub_2365d7bc[idx]:
                        require sub_2365d7bc[idx]
                        if sub_2365d7bc[idx] * sub_1d1c7b4e[idx] / sub_2365d7bc[idx] != sub_1d1c7b4e[idx]:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if sub_2365d7bc[idx] * sub_1d1c7b4e[idx] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    continue 
                if (ext_call.return_data[0] * block.timestamp) - (sub_05d6bbf4 * block.timestamp) - (sub_ab4e2785 * block.timestamp) - (ext_call.return_data[0] * lastDripTime) + (sub_05d6bbf4 * lastDripTime) + (sub_ab4e2785 * lastDripTime) / dripRate:
                    require (ext_call.return_data[0] * block.timestamp) - (sub_05d6bbf4 * block.timestamp) - (sub_ab4e2785 * block.timestamp) - (ext_call.return_data[0] * lastDripTime) + (sub_05d6bbf4 * lastDripTime) + (sub_ab4e2785 * lastDripTime) / dripRate
                    if 10 * 10^18 * (ext_call.return_data[0] * block.timestamp) - (sub_05d6bbf4 * block.timestamp) - (sub_ab4e2785 * block.timestamp) - (ext_call.return_data[0] * lastDripTime) + (sub_05d6bbf4 * lastDripTime) + (sub_ab4e2785 * lastDripTime) / dripRate / (ext_call.return_data[0] * block.timestamp) - (sub_05d6bbf4 * block.timestamp) - (sub_ab4e2785 * block.timestamp) - (ext_call.return_data[0] * lastDripTime) + (sub_05d6bbf4 * lastDripTime) + (sub_ab4e2785 * lastDripTime) / dripRate != 10 * 10^18:
                        revert with 0, 'SafeMath: multiplication overflow'
            else:
                if ext_call.return_data[0] - sub_05d6bbf4 - sub_ab4e2785 <= 0:
                idx = 0
                while idx < sub_2365d7bc.length:
                    mem[32] = 5
                    mem[0] = 0
                    if sub_2365d7bc[idx]:
                        require sub_2365d7bc[idx]
                        if sub_2365d7bc[idx] * sub_1d1c7b4e[idx] / sub_2365d7bc[idx] != sub_1d1c7b4e[idx]:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if sub_2365d7bc[idx] * sub_1d1c7b4e[idx] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    continue 
                if ext_call.return_data[0] - sub_05d6bbf4 - sub_ab4e2785:
                    require ext_call.return_data[0] - sub_05d6bbf4 - sub_ab4e2785
                    if (10 * 10^18 * ext_call.return_data[0]) - (10 * 10^18 * sub_05d6bbf4) - (10 * 10^18 * sub_ab4e2785) / ext_call.return_data[0] - sub_05d6bbf4 - sub_ab4e2785 != 10 * 10^18:
                        revert with 0, 'SafeMath: multiplication overflow'
    revert with 0, 'SafeMath: division by zero', 0
}



}
