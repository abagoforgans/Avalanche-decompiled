contract main {




// =====================  Runtime code  =====================


const sub_388655fb(?) = eth.balance(this.address)


uint256 INVEST_MIN_AMOUNT;
array of struct sub_32f2dffe;
array of struct sub_1c4dd6e9;
uint256 sub_2449e00a;
uint256 sub_6359dabf;
uint256 divider;
uint8 stor6;
uint256 stor6; offset 8
uint256 stor6;
uint256 stor7;
uint256 totalInvested;
uint256 sub_cae89951;
uint256 sub_7c2df3f1;
uint256 sub_4aee0913;
uint256 sub_cb22b086;
uint256 sub_31c7ecf6;
uint256 stor14;
uint256 stor15;
array of struct sub_6b8504d0;
uint256 startDate;
address ceoWalletAddress;

function startDate() {
    return startDate
}

function getMinDeposit() {
    return INVEST_MIN_AMOUNT
}

function sub_1c4dd6e9(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < sub_1c4dd6e9.length
    return sub_1c4dd6e9[arg1].field_0
}

function sub_2449e00a(?) {
    return sub_2449e00a
}

function sub_31c7ecf6(?) {
    return sub_31c7ecf6
}

function sub_32f2dffe(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < sub_32f2dffe.length
    return sub_32f2dffe[arg1].field_0
}

function ceoWallet() {
    return ceoWalletAddress
}

function sub_4aee0913(?) {
    return sub_4aee0913
}

function totalInvested() {
    return totalInvested
}

function sub_6359dabf(?) {
    return sub_6359dabf
}

function getDivider() {
    return divider
}

function sub_6b8504d0(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < sub_6b8504d0.length
    return sub_6b8504d0[arg1].field_0, 
           sub_6b8504d0[arg1].field_256,
           bool(sub_6b8504d0[arg1].field_512),
           sub_6b8504d0[arg1].field_768
}

function sub_7c2df3f1(?) {
    return sub_7c2df3f1
}

function sub_af5ebfd0(?) {
    return sub_6b8504d0.length
}

function sub_cae89951(?) {
    return sub_cae89951
}

function sub_cb22b086(?) {
    return sub_cb22b086
}

function INVEST_MIN_AMOUNT() {
    return INVEST_MIN_AMOUNT
}

function _fallback() payable {
    revert
}

function getSiteInfo() {
    return totalInvested, sub_cae89951, sub_7c2df3f1, sub_4aee0913, sub_cb22b086, sub_31c7ecf6, stor14, stor15
}

function sub_6bfe8ced(?) {
    if sub_6b8504d0.length >= uint256(stor6.field_0):
        return sub_6b8504d0.length
    return uint256(stor6.field_0)
}

function setDivider(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if ceoWalletAddress != msg.sender:
        revert with 0, 'only owner'
    divider = arg1
}

function sub_1204e228(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if ceoWalletAddress != msg.sender:
        revert with 0, 'only owner'
    uint256(stor6.field_0) = arg1
}

function setMinDeposit(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if ceoWalletAddress != msg.sender:
        revert with 0, 'only owner'
    INVEST_MIN_AMOUNT = arg1
}

function getPoolBalance() {
    if sub_4aee0913 >= sub_cae89951:
        return 0
    if sub_4aee0913 > sub_cae89951:
        revert with 0, 'SafeMath: subtraction overflow'
    return (sub_cae89951 - sub_4aee0913)
}

function sub_9638a3cc(?) {
    if sub_7c2df3f1 >= totalInvested:
        return 0
    if sub_7c2df3f1 > totalInvested:
        revert with 0, 'SafeMath: subtraction overflow'
    return (totalInvested - sub_7c2df3f1)
}

function sub_80fa7973(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if ceoWalletAddress != msg.sender:
        revert with 0, 'only owner'
    if arg1 <= 100:
        revert with 0, 'Max 100 only'
    sub_2449e00a = arg1
}

function sub_a8275ada(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if ceoWalletAddress != msg.sender:
        revert with 0, 'only owner'
    if arg1 <= 100:
        revert with 0, 'Max 100 only'
    sub_6359dabf = arg1
}

function sub_b5996038(?) {
    require calldata.size - 4 >= 32
    require arg1 == uint8(arg1)
    if ceoWalletAddress != msg.sender:
        revert with 0, 'only owner'
    if sub_6b8504d0.length >= uint8(arg1):
        uint256(stor6.field_0) = sub_6b8504d0.length
    else:
        uint8(stor6.field_0) = uint8(arg1)
        Mask(248, 0, stor6.field_8) = 0
}

function getTokenDecimals(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(arg1)
    staticcall arg1.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function getUserTotalDeposits(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    idx = 0
    s = 0
    while idx < sub_6b8504d0.length:
        mem[0] = 16
        if sub_6b8504d0[idx].field_0 != arg1:
            idx = idx + 1
            s = s
            continue 
        require idx < sub_6b8504d0.length
        mem[0] = 16
        if s + sub_6b8504d0[idx].field_256 < s:
            revert with 0, 'SafeMath: addition overflow'
        idx = idx + 1
        s = s + sub_6b8504d0[idx].field_256
        continue 
    return s
}

function sub_1705e383(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if ceoWalletAddress != msg.sender:
        revert with 0, 'only owner'
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if stor15 + arg1 < stor15:
        revert with 0, 'SafeMath: addition overflow'
    stor15 += arg1
    if sub_4aee0913 + arg1 < sub_4aee0913:
        revert with 0, 'SafeMath: addition overflow'
    sub_4aee0913 += arg1
}

function sub_787aa514(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if ceoWalletAddress != msg.sender:
        revert with 0, 'only owner'
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if stor14 + arg1 < stor14:
        revert with 0, 'SafeMath: addition overflow'
    stor14 += arg1
    if sub_7c2df3f1 + arg1 < sub_7c2df3f1:
        revert with 0, 'SafeMath: addition overflow'
    sub_7c2df3f1 += arg1
}

function sub_28749814(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == arg3
    if ceoWalletAddress != msg.sender:
        revert with 0, 'only owner'
    require ext_code.size(address(arg1))
    call address(arg1).0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_4b4ba518(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if ceoWalletAddress != msg.sender:
        revert with 0, 'only owner'
    call msg.sender with:
       value 10^18 * arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if stor15 + (10^18 * arg1) < stor15:
        revert with 0, 'SafeMath: addition overflow'
    stor15 += 10^18 * arg1
    if sub_4aee0913 + (10^18 * arg1) < sub_4aee0913:
        revert with 0, 'SafeMath: addition overflow'
    sub_4aee0913 += 10^18 * arg1
}

function sub_c1384d26(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if ceoWalletAddress != msg.sender:
        revert with 0, 'only owner'
    call msg.sender with:
       value 10^18 * arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if stor14 + (10^18 * arg1) < stor14:
        revert with 0, 'SafeMath: addition overflow'
    stor14 += 10^18 * arg1
    if sub_7c2df3f1 + (10^18 * arg1) < sub_7c2df3f1:
        revert with 0, 'SafeMath: addition overflow'
    sub_7c2df3f1 += 10^18 * arg1
}

function sub_c57480d8(?) {
    if sub_1c4dd6e9.length:
        mem[128] = uint256(sub_1c4dd6e9.field_0)
        idx = 128
        s = 0
        while (32 * sub_1c4dd6e9.length) + 96 > idx:
            mem[idx + 32] = sub_1c4dd6e9[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        return Array(len=sub_1c4dd6e9.length, data=mem[128 len 32 * sub_1c4dd6e9.length])
    mem[(32 * sub_1c4dd6e9.length) + 128] = 32
    mem[(32 * sub_1c4dd6e9.length) + 160] = sub_1c4dd6e9.length
    mem[(32 * sub_1c4dd6e9.length) + 192 len 32 * sub_1c4dd6e9.length] = mem[128 len 32 * sub_1c4dd6e9.length]
    return memory
      from (32 * sub_1c4dd6e9.length) + 128
       len (96 * sub_1c4dd6e9.length) + 64
}

function sub_fb6963eb(?) {
    if sub_32f2dffe.length:
        mem[128] = uint256(sub_32f2dffe.field_0)
        idx = 128
        s = 0
        while (32 * sub_32f2dffe.length) + 96 > idx:
            mem[idx + 32] = sub_32f2dffe[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        return Array(len=sub_32f2dffe.length, data=mem[128 len 32 * sub_32f2dffe.length])
    mem[(32 * sub_32f2dffe.length) + 128] = 32
    mem[(32 * sub_32f2dffe.length) + 160] = sub_32f2dffe.length
    mem[(32 * sub_32f2dffe.length) + 192 len 32 * sub_32f2dffe.length] = mem[128 len 32 * sub_32f2dffe.length]
    return memory
      from (32 * sub_32f2dffe.length) + 128
       len (96 * sub_32f2dffe.length) + 64
}

function getUserPosition(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    idx = 0
    s = 0
    while idx < sub_6b8504d0.length:
        mem[0] = 16
        if sub_6b8504d0[idx].field_0 != arg1:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = s + 1
        continue 
    if s:
        mem[128 len 32 * s] = code.data[15862 len 32 * s]
    idx = 0
    t = 0
    while idx < sub_6b8504d0.length:
        mem[0] = 16
        if sub_6b8504d0[idx].field_0 != arg1:
            idx = idx + 1
            t = t
            continue 
        require t < s
        mem[(32 * t) + 128] = idx
        idx = idx + 1
        t = t + 1
        continue 
    return Array(len=s, data=mem[128 len 32 * s])
}

function sub_9a274fff(?) {
    if sub_4aee0913 >= sub_cae89951:
        if sub_7c2df3f1 >= totalInvested:
            return 0
        if sub_7c2df3f1 > totalInvested:
            revert with 0, 'SafeMath: subtraction overflow'
        return (totalInvested - sub_7c2df3f1)
    if sub_4aee0913 > sub_cae89951:
        revert with 0, 'SafeMath: subtraction overflow'
    if sub_7c2df3f1 >= totalInvested:
        if sub_cae89951 - sub_4aee0913 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return (sub_cae89951 - sub_4aee0913)
    if sub_7c2df3f1 > totalInvested:
        revert with 0, 'SafeMath: subtraction overflow'
    if sub_cae89951 - sub_4aee0913 < 0:
        revert with 0, 'SafeMath: addition overflow'
    return (totalInvested - sub_7c2df3f1 + sub_cae89951 - sub_4aee0913)
}

function sub_8aed8f97(?) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if block.timestamp <= startDate:
        revert with 0, 'contract does not launch yet'
    require arg1 >= INVEST_MIN_AMOUNT
    require divider
    if arg2 % divider:
        return 4
    if sub_7c2df3f1 >= totalInvested:
        if arg1 > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        if -arg1 <= arg1:
            return 3
    else:
        if sub_7c2df3f1 > totalInvested:
            revert with 0, 'SafeMath: subtraction overflow'
        if arg1 > totalInvested - sub_7c2df3f1:
            revert with 0, 'SafeMath: subtraction overflow'
        if totalInvested - sub_7c2df3f1 - arg1 <= arg1:
            return 3
    if stor7 == block.number:
        return 2
    return 1
}

function sub_1a6a2148(?) {
    if ceoWalletAddress != msg.sender:
        revert with 0, 'only owner'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if stor14 + totalInvested < stor14:
        revert with 0, 'SafeMath: addition overflow'
    if sub_7c2df3f1 > stor14 + totalInvested:
        revert with 0, 'SafeMath: subtraction overflow'
    stor14 = stor14 + totalInvested - sub_7c2df3f1
    if stor15 + sub_cae89951 < stor15:
        revert with 0, 'SafeMath: addition overflow'
    if sub_4aee0913 > stor15 + sub_cae89951:
        revert with 0, 'SafeMath: subtraction overflow'
    stor15 = stor15 + sub_cae89951 - sub_4aee0913
    sub_7c2df3f1 = totalInvested
    sub_4aee0913 = sub_cae89951
}

function withdrawTokens(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if ceoWalletAddress != msg.sender:
        revert with 0, 'only owner'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_90bf53da(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == arg3
    if ceoWalletAddress != msg.sender:
        revert with 0, 'only owner'
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(address(arg1))
    call address(arg1).0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), arg3 * 10^ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_71eae77f(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if ceoWalletAddress != msg.sender:
        revert with 0, 'only owner'
    sub_1c4dd6e9.length = ('cd', 4).length
    if not ('cd', 4).length:
        idx = 0
        while sub_1c4dd6e9.length > idx:
            sub_1c4dd6e9[idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = cd[4] + 36
        while cd[4] + (32 * ('cd', 4).length) + 36 > idx:
            sub_1c4dd6e9[s].field_0 = cd[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * ('cd', 4).length) + 31) >> 5
        while sub_1c4dd6e9.length > idx:
            sub_1c4dd6e9[idx].field_0 = 0
            idx = idx + 1
            continue 
}

function sub_9da910f1(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if ceoWalletAddress != msg.sender:
        revert with 0, 'only owner'
    sub_32f2dffe.length = ('cd', 4).length
    if not ('cd', 4).length:
        idx = 0
        while sub_32f2dffe.length > idx:
            sub_32f2dffe[idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = cd[4] + 36
        while cd[4] + (32 * ('cd', 4).length) + 36 > idx:
            sub_32f2dffe[s].field_0 = cd[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * ('cd', 4).length) + 31) >> 5
        while sub_32f2dffe.length > idx:
            sub_32f2dffe[idx].field_0 = 0
            idx = idx + 1
            continue 
}

function getUserInfo(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    idx = 0
    s = 0
    while idx < sub_6b8504d0.length:
        mem[0] = 16
        if sub_6b8504d0[idx].field_0 != arg1:
            idx = idx + 1
            s = s
            continue 
        require idx < sub_6b8504d0.length
        mem[0] = 16
        if s + sub_6b8504d0[idx].field_256 < s:
            revert with 0, 'SafeMath: addition overflow'
        idx = idx + 1
        s = s + sub_6b8504d0[idx].field_256
        continue 
    idx = 0
    t = 0
    while idx < sub_6b8504d0.length:
        mem[0] = 16
        if sub_6b8504d0[idx].field_0 != arg1:
            idx = idx + 1
            t = t
            continue 
        idx = idx + 1
        t = t + 1
        continue 
    if t:
        mem[128 len 32 * t] = code.data[15862 len 32 * t]
    idx = 0
    u = 0
    while idx < sub_6b8504d0.length:
        mem[0] = 16
        if sub_6b8504d0[idx].field_0 != arg1:
            idx = idx + 1
            u = u
            continue 
        require u < t
        mem[(32 * u) + 128] = idx
        idx = idx + 1
        u = u + 1
        continue 
    return s, Array(len=t, data=mem[128 len 32 * t])
}

function sub_ec4f1ef3(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if eth.balance(this.address) <= arg1:
        return 0
    if sub_cae89951 <= sub_4aee0913:
        return 0
    if sub_4aee0913 >= sub_cae89951:
        idx = 0
        while idx < sub_1c4dd6e9.length:
            mem[0] = 2
            if not arg1:
                idx = idx + 1
                continue 
            require arg1
            if arg1 * sub_1c4dd6e9[idx].field_0 / arg1 != sub_1c4dd6e9[idx].field_0:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if 0 <= arg1 * sub_1c4dd6e9[idx].field_0 / 10:
                idx = idx + 1
                continue 
            require idx < sub_1c4dd6e9.length
            return sub_1c4dd6e9[idx].field_0
        if not arg1:
            return 0
        require arg1
        if 50 * arg1 / arg1 != 50:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if 0 <= 50 * arg1 / 10:
            return 0
    else:
        if sub_4aee0913 > sub_cae89951:
            revert with 0, 'SafeMath: subtraction overflow'
        idx = 0
        while idx < sub_1c4dd6e9.length:
            mem[0] = 2
            if not arg1:
                if sub_cae89951 - sub_4aee0913 <= 0:
                    idx = idx + 1
                    continue 
                if idx < sub_1c4dd6e9.length:
                    return sub_1c4dd6e9[idx].field_0
            else:
                if arg1:
                    if arg1 * sub_1c4dd6e9[idx].field_0 / arg1 != sub_1c4dd6e9[idx].field_0:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                    if sub_cae89951 - sub_4aee0913 <= arg1 * sub_1c4dd6e9[idx].field_0 / 10:
                        idx = idx + 1
                        continue 
                    if idx < sub_1c4dd6e9.length:
                        return sub_1c4dd6e9[idx].field_0
            revert
        if not arg1:
            if sub_cae89951 - sub_4aee0913 <= 0:
                return 0
        else:
            require arg1
            if 50 * arg1 / arg1 != 50:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if sub_cae89951 - sub_4aee0913 <= 50 * arg1 / 10:
                return 0
    return 50
}

function sub_b3a5a1cf(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if eth.balance(this.address) <= arg1:
        return 0
    if totalInvested <= sub_7c2df3f1:
        return 0
    if sub_7c2df3f1 >= totalInvested:
        idx = 0
        while idx < sub_32f2dffe.length:
            mem[0] = 1
            if not arg1:
                idx = idx + 1
                continue 
            require arg1
            if arg1 * sub_32f2dffe[idx].field_0 / arg1 != sub_32f2dffe[idx].field_0:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if 0 <= arg1 * sub_32f2dffe[idx].field_0 / 10:
                idx = idx + 1
                continue 
            require idx < sub_32f2dffe.length
            return sub_32f2dffe[idx].field_0
        if not arg1:
            return 0
        require arg1
        if 50 * arg1 / arg1 != 50:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if 0 <= 50 * arg1 / 10:
            return 0
    else:
        if sub_7c2df3f1 > totalInvested:
            revert with 0, 'SafeMath: subtraction overflow'
        idx = 0
        while idx < sub_32f2dffe.length:
            mem[0] = 1
            if not arg1:
                if totalInvested - sub_7c2df3f1 <= 0:
                    idx = idx + 1
                    continue 
                if idx < sub_32f2dffe.length:
                    return sub_32f2dffe[idx].field_0
            else:
                if arg1:
                    if arg1 * sub_32f2dffe[idx].field_0 / arg1 != sub_32f2dffe[idx].field_0:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                    if totalInvested - sub_7c2df3f1 <= arg1 * sub_32f2dffe[idx].field_0 / 10:
                        idx = idx + 1
                        continue 
                    if idx < sub_32f2dffe.length:
                        return sub_32f2dffe[idx].field_0
            revert
        if not arg1:
            if totalInvested - sub_7c2df3f1 <= 0:
                return 0
        else:
            require arg1
            if 50 * arg1 / arg1 != 50:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if totalInvested - sub_7c2df3f1 <= 50 * arg1 / 10:
                return 0
    return 50
}

function sub_5d6edec4(?) payable {
    if block.timestamp <= startDate:
        revert with 0, 'contract does not launch yet'
    require msg.value >= INVEST_MIN_AMOUNT
    if ext_code.size(msg.sender) > 0:
        call ceoWalletAddress with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        if sub_cae89951 + msg.value < sub_cae89951:
            revert with 0, 'SafeMath: addition overflow'
        sub_cae89951 += msg.value
        sub_6b8504d0.length++
        sub_6b8504d0[sub_6b8504d0.length].field_0 = msg.sender
        sub_6b8504d0[sub_6b8504d0.length].field_256 = msg.value
        sub_6b8504d0[sub_6b8504d0.length].field_512 = 0
        sub_6b8504d0[sub_6b8504d0.length].field_768 = block.timestamp
        if sub_6b8504d0.length <= uint256(stor6.field_0):
            emit 0x8f579f41: msg.value, block.timestamp, msg.sender
        else:
            require 0 < sub_6b8504d0.length
            idx = 0
            while idx < sub_6b8504d0.length - 1:
                require idx + 1 < sub_6b8504d0.length
                require idx < sub_6b8504d0.length
                mem[0] = 16
                sub_6b8504d0[idx].field_0 = sub_6b8504d0[idx + 1].field_0
                sub_6b8504d0[idx].field_256 = sub_6b8504d0[idx + 1].field_256
                sub_6b8504d0[idx].field_512 = uint8(bool(sub_6b8504d0[idx + 1].field_512))
                sub_6b8504d0[idx].field_768 = sub_6b8504d0[idx + 1].field_768
                idx = idx + 1
                continue 
            require sub_6b8504d0.length
            sub_6b8504d0[sub_6b8504d0.length - 1].field_0 = 0
            sub_6b8504d0[sub_6b8504d0.length - 1].field_256 = 0
            sub_6b8504d0[sub_6b8504d0.length - 1].field_512 = 0
            sub_6b8504d0[sub_6b8504d0.length - 1].field_768 = 0
            sub_6b8504d0.length--
            if sub_4aee0913 > sub_cae89951:
                revert with 0, 'SafeMath: subtraction overflow'
            if eth.balance(this.address) <= uint256(sub_6b8504d0.field_256):
                if uint256(sub_6b8504d0.field_256):
                    require uint256(sub_6b8504d0.field_256)
                    if 0 / uint256(sub_6b8504d0.field_256):
                        revert with 0, 'SafeMath: multiplication overflow'
                if sub_cae89951 - sub_4aee0913 > 0:
                    if uint256(sub_6b8504d0.field_256):
                        require uint256(sub_6b8504d0.field_256)
                        if 0 / uint256(sub_6b8504d0.field_256):
                            revert with 0, 'SafeMath: multiplication overflow'
                    call address(sub_6b8504d0.field_0) with:
                         gas 2300 wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit 0xbfb48e91: 0, block.timestamp, address(sub_6b8504d0.field_0)
                    if sub_4aee0913 < sub_4aee0913:
                        revert with 0, 'SafeMath: addition overflow'
                    call ceoWalletAddress with:
                         gas 2300 wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if sub_31c7ecf6 < sub_31c7ecf6:
                        revert with 0, 'SafeMath: addition overflow'
                else:
                    if not sub_cae89951 - sub_4aee0913:
                        if 0 > sub_cae89951 - sub_4aee0913:
                            revert with 0, 'SafeMath: subtraction overflow'
                        call address(sub_6b8504d0.field_0) with:
                           value sub_cae89951 - sub_4aee0913 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit 0xbfb48e91: sub_cae89951 - sub_4aee0913, block.timestamp, address(sub_6b8504d0.field_0)
                        if sub_cae89951 < sub_4aee0913:
                            revert with 0, 'SafeMath: addition overflow'
                        if sub_cae89951 < sub_cae89951:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_4aee0913 = sub_cae89951
                        call ceoWalletAddress with:
                             gas 2300 wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if sub_31c7ecf6 < sub_31c7ecf6:
                            revert with 0, 'SafeMath: addition overflow'
                    else:
                        require sub_cae89951 - sub_4aee0913
                        if (sub_cae89951 * sub_6359dabf) - (sub_4aee0913 * sub_6359dabf) / sub_cae89951 - sub_4aee0913 != sub_6359dabf:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if (sub_cae89951 * sub_6359dabf) - (sub_4aee0913 * sub_6359dabf) / 100 > sub_cae89951 - sub_4aee0913:
                            revert with 0, 'SafeMath: subtraction overflow'
                        call address(sub_6b8504d0.field_0) with:
                           value sub_cae89951 - sub_4aee0913 - ((sub_cae89951 * sub_6359dabf) - (sub_4aee0913 * sub_6359dabf) / 100) wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit 0xbfb48e91: sub_cae89951 - sub_4aee0913 - ((sub_cae89951 * sub_6359dabf) - (sub_4aee0913 * sub_6359dabf) / 100), block.timestamp, address(sub_6b8504d0.field_0)
                        if sub_cae89951 - ((sub_cae89951 * sub_6359dabf) - (sub_4aee0913 * sub_6359dabf) / 100) < sub_4aee0913:
                            revert with 0, 'SafeMath: addition overflow'
                        if sub_cae89951 < sub_cae89951 - ((sub_cae89951 * sub_6359dabf) - (sub_4aee0913 * sub_6359dabf) / 100):
                            revert with 0, 'SafeMath: addition overflow'
                        sub_4aee0913 = sub_cae89951
                        call ceoWalletAddress with:
                           value (sub_cae89951 * sub_6359dabf) - (sub_4aee0913 * sub_6359dabf) / 100 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if sub_31c7ecf6 + ((sub_cae89951 * sub_6359dabf) - (sub_4aee0913 * sub_6359dabf) / 100) < sub_31c7ecf6:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_31c7ecf6 += (sub_cae89951 * sub_6359dabf) - (sub_4aee0913 * sub_6359dabf) / 100
            else:
                if sub_cae89951 <= sub_4aee0913:
                    if uint256(sub_6b8504d0.field_256):
                        require uint256(sub_6b8504d0.field_256)
                        if 0 / uint256(sub_6b8504d0.field_256):
                            revert with 0, 'SafeMath: multiplication overflow'
                    if sub_cae89951 - sub_4aee0913 > 0:
                        if uint256(sub_6b8504d0.field_256):
                            require uint256(sub_6b8504d0.field_256)
                            if 0 / uint256(sub_6b8504d0.field_256):
                                revert with 0, 'SafeMath: multiplication overflow'
                        call address(sub_6b8504d0.field_0) with:
                             gas 2300 wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit 0xbfb48e91: 0, block.timestamp, address(sub_6b8504d0.field_0)
                        if sub_4aee0913 < sub_4aee0913:
                            revert with 0, 'SafeMath: addition overflow'
                        call ceoWalletAddress with:
                             gas 2300 wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if sub_31c7ecf6 < sub_31c7ecf6:
                            revert with 0, 'SafeMath: addition overflow'
                    else:
                        if not sub_cae89951 - sub_4aee0913:
                            if 0 > sub_cae89951 - sub_4aee0913:
                                revert with 0, 'SafeMath: subtraction overflow'
                            call address(sub_6b8504d0.field_0) with:
                               value sub_cae89951 - sub_4aee0913 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit 0xbfb48e91: sub_cae89951 - sub_4aee0913, block.timestamp, address(sub_6b8504d0.field_0)
                            if sub_cae89951 < sub_4aee0913:
                                revert with 0, 'SafeMath: addition overflow'
                            if sub_cae89951 < sub_cae89951:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_4aee0913 = sub_cae89951
                            call ceoWalletAddress with:
                                 gas 2300 wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if sub_31c7ecf6 < sub_31c7ecf6:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            require sub_cae89951 - sub_4aee0913
                            if (sub_cae89951 * sub_6359dabf) - (sub_4aee0913 * sub_6359dabf) / sub_cae89951 - sub_4aee0913 != sub_6359dabf:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if (sub_cae89951 * sub_6359dabf) - (sub_4aee0913 * sub_6359dabf) / 100 > sub_cae89951 - sub_4aee0913:
                                revert with 0, 'SafeMath: subtraction overflow'
                            call address(sub_6b8504d0.field_0) with:
                               value sub_cae89951 - sub_4aee0913 - ((sub_cae89951 * sub_6359dabf) - (sub_4aee0913 * sub_6359dabf) / 100) wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit 0xbfb48e91: sub_cae89951 - sub_4aee0913 - ((sub_cae89951 * sub_6359dabf) - (sub_4aee0913 * sub_6359dabf) / 100), block.timestamp, address(sub_6b8504d0.field_0)
                            if sub_cae89951 - ((sub_cae89951 * sub_6359dabf) - (sub_4aee0913 * sub_6359dabf) / 100) < sub_4aee0913:
                                revert with 0, 'SafeMath: addition overflow'
                            if sub_cae89951 < sub_cae89951 - ((sub_cae89951 * sub_6359dabf) - (sub_4aee0913 * sub_6359dabf) / 100):
                                revert with 0, 'SafeMath: addition overflow'
                            sub_4aee0913 = sub_cae89951
                            call ceoWalletAddress with:
                               value (sub_cae89951 * sub_6359dabf) - (sub_4aee0913 * sub_6359dabf) / 100 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if sub_31c7ecf6 + ((sub_cae89951 * sub_6359dabf) - (sub_4aee0913 * sub_6359dabf) / 100) < sub_31c7ecf6:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_31c7ecf6 += (sub_cae89951 * sub_6359dabf) - (sub_4aee0913 * sub_6359dabf) / 100
                else:
                    if sub_4aee0913 >= sub_cae89951:
                        idx = 0
                        while idx < sub_1c4dd6e9.length:
                            mem[0] = 2
                            if not uint256(sub_6b8504d0.field_256):
                                idx = idx + 1
                                continue 
                            require uint256(sub_6b8504d0.field_256)
                            if uint256(sub_6b8504d0.field_256) * sub_1c4dd6e9[idx].field_0 / uint256(sub_6b8504d0.field_256) != sub_1c4dd6e9[idx].field_0:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if 0 <= uint256(sub_6b8504d0.field_256) * sub_1c4dd6e9[idx].field_0 / 10:
                                idx = idx + 1
                                continue 
                            require idx < sub_1c4dd6e9.length
                            if not uint256(sub_6b8504d0.field_256):
                                if sub_cae89951 - sub_4aee0913 <= 0:
                                    if not sub_cae89951 - sub_4aee0913:
                                        if 0 > sub_cae89951 - sub_4aee0913:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        call address(sub_6b8504d0.field_0) with:
                                           value sub_cae89951 - sub_4aee0913 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        emit 0xbfb48e91: sub_cae89951 - sub_4aee0913, block.timestamp, address(sub_6b8504d0.field_0)
                                        if sub_cae89951 < sub_4aee0913:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if sub_cae89951 < sub_cae89951:
                                            revert with 0, 'SafeMath: addition overflow'
                                        sub_4aee0913 = sub_cae89951
                                        call ceoWalletAddress with:
                                             gas 2300 wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if sub_31c7ecf6 < sub_31c7ecf6:
                                            revert with 0, 'SafeMath: addition overflow'
                                    else:
                                        require sub_cae89951 - sub_4aee0913
                                        if (sub_cae89951 * sub_6359dabf) - (sub_4aee0913 * sub_6359dabf) / sub_cae89951 - sub_4aee0913 != sub_6359dabf:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if (sub_cae89951 * sub_6359dabf) - (sub_4aee0913 * sub_6359dabf) / 100 > sub_cae89951 - sub_4aee0913:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        call address(sub_6b8504d0.field_0) with:
                                           value sub_cae89951 - sub_4aee0913 - ((sub_cae89951 * sub_6359dabf) - (sub_4aee0913 * sub_6359dabf) / 100) wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        emit 0xbfb48e91: sub_cae89951 - sub_4aee0913 - ((sub_cae89951 * sub_6359dabf) - (sub_4aee0913 * sub_6359dabf) / 100), block.timestamp, address(sub_6b8504d0.field_0)
                                        if sub_cae89951 - ((sub_cae89951 * sub_6359dabf) - (sub_4aee0913 * sub_6359dabf) / 100) < sub_4aee0913:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if sub_cae89951 < sub_cae89951 - ((sub_cae89951 * sub_6359dabf) - (sub_4aee0913 * sub_6359dabf) / 100):
                                            revert with 0, 'SafeMath: addition overflow'
                                        sub_4aee0913 = sub_cae89951
                                        call ceoWalletAddress with:
                                           value (sub_cae89951 * sub_6359dabf) - (sub_4aee0913 * sub_6359dabf) / 100 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if sub_31c7ecf6 + ((sub_cae89951 * sub_6359dabf) - (sub_4aee0913 * sub_6359dabf) / 100) < sub_31c7ecf6:
                                            revert with 0, 'SafeMath: addition overflow'
                                        sub_31c7ecf6 += (sub_cae89951 * sub_6359dabf) - (sub_4aee0913 * sub_6359dabf) / 100
                                else:
                                    if not uint256(sub_6b8504d0.field_256):
                                        call address(sub_6b8504d0.field_0) with:
                                             gas 2300 wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        emit 0xbfb48e91: 0, block.timestamp, address(sub_6b8504d0.field_0)
                                        if sub_4aee0913 < sub_4aee0913:
                                            revert with 0, 'SafeMath: addition overflow'
                                        call ceoWalletAddress with:
                                             gas 2300 wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if sub_31c7ecf6 < sub_31c7ecf6:
                                            revert with 0, 'SafeMath: addition overflow'
                                    else:
                                        require uint256(sub_6b8504d0.field_256)
                                        if uint256(sub_6b8504d0.field_256) * sub_1c4dd6e9[idx].field_0 / uint256(sub_6b8504d0.field_256) != sub_1c4dd6e9[idx].field_0:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if not uint256(sub_6b8504d0.field_256) * sub_1c4dd6e9[idx].field_0 / 100:
                                            if 0 > uint256(sub_6b8504d0.field_256) * sub_1c4dd6e9[idx].field_0 / 100:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            call address(sub_6b8504d0.field_0) with:
                                               value uint256(sub_6b8504d0.field_256) * sub_1c4dd6e9[idx].field_0 / 100 wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            emit 0xbfb48e91: uint256(sub_6b8504d0.field_256) * sub_1c4dd6e9[idx].field_0 / 100, block.timestamp, address(sub_6b8504d0.field_0)
                                            if sub_4aee0913 + (uint256(sub_6b8504d0.field_256) * sub_1c4dd6e9[idx].field_0 / 100) < sub_4aee0913:
                                                revert with 0, 'SafeMath: addition overflow'
                                            sub_4aee0913 += uint256(sub_6b8504d0.field_256) * sub_1c4dd6e9[idx].field_0 / 100
                                            call ceoWalletAddress with:
                                                 gas 2300 wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if sub_31c7ecf6 < sub_31c7ecf6:
                                                revert with 0, 'SafeMath: addition overflow'
                                        else:
                                            require uint256(sub_6b8504d0.field_256) * sub_1c4dd6e9[idx].field_0 / 100
                                            if uint256(sub_6b8504d0.field_256) * sub_1c4dd6e9[idx].field_0 / 100 * sub_6359dabf / uint256(sub_6b8504d0.field_256) * sub_1c4dd6e9[idx].field_0 / 100 != sub_6359dabf:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if uint256(sub_6b8504d0.field_256) * sub_1c4dd6e9[idx].field_0 / 100 * sub_6359dabf / 100 > uint256(sub_6b8504d0.field_256) * sub_1c4dd6e9[idx].field_0 / 100:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            call address(sub_6b8504d0.field_0) with:
                                               value (uint256(sub_6b8504d0.field_256) * sub_1c4dd6e9[idx].field_0 / 100) - (uint256(sub_6b8504d0.field_256) * sub_1c4dd6e9[idx].field_0 / 100 * sub_6359dabf / 100) wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            emit 0xbfb48e91: (uint256(sub_6b8504d0.field_256) * sub_1c4dd6e9[idx].field_0 / 100) - (uint256(sub_6b8504d0.field_256) * sub_1c4dd6e9[idx].field_0 / 100 * sub_6359dabf / 100), block.timestamp, address(sub_6b8504d0.field_0)
                                            if sub_4aee0913 + (uint256(sub_6b8504d0.field_256) * sub_1c4dd6e9[idx].field_0 / 100) - (uint256(sub_6b8504d0.field_256) * sub_1c4dd6e9[idx].field_0 / 100 * sub_6359dabf / 100) < sub_4aee0913:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if 0 < -uint256(sub_6b8504d0.field_256) * sub_1c4dd6e9[idx].field_0 / 100 * sub_6359dabf / 100:
                                                revert with 0, 'SafeMath: addition overflow'
                                            sub_4aee0913 += uint256(sub_6b8504d0.field_256) * sub_1c4dd6e9[idx].field_0 / 100
                                            call ceoWalletAddress with:
                                               value uint256(sub_6b8504d0.field_256) * sub_1c4dd6e9[idx].field_0 / 100 * sub_6359dabf / 100 wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if sub_31c7ecf6 + (uint256(sub_6b8504d0.field_256) * sub_1c4dd6e9[idx].field_0 / 100 * sub_6359dabf / 100) < sub_31c7ecf6:
                                                revert with 0, 'SafeMath: addition overflow'
                                            sub_31c7ecf6 += uint256(sub_6b8504d0.field_256) * sub_1c4dd6e9[idx].field_0 / 100 * sub_6359dabf / 100
                            else:
                                require uint256(sub_6b8504d0.field_256)
                                if uint256(sub_6b8504d0.field_256) * sub_1c4dd6e9[idx].field_0 / uint256(sub_6b8504d0.field_256) != sub_1c4dd6e9[idx].field_0:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if sub_cae89951 - sub_4aee0913 <= uint256(sub_6b8504d0.field_256) * sub_1c4dd6e9[idx].field_0 / 100:
                                    if not sub_cae89951 - sub_4aee0913:
                                        if 0 > sub_cae89951 - sub_4aee0913:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        call address(sub_6b8504d0.field_0) with:
                                           value sub_cae89951 - sub_4aee0913 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        emit 0xbfb48e91: sub_cae89951 - sub_4aee0913, block.timestamp, address(sub_6b8504d0.field_0)
                                        if sub_cae89951 < sub_4aee0913:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if sub_cae89951 < sub_cae89951:
                                            revert with 0, 'SafeMath: addition overflow'
                                        sub_4aee0913 = sub_cae89951
                                        call ceoWalletAddress with:
                                             gas 2300 wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if sub_31c7ecf6 < sub_31c7ecf6:
                                            revert with 0, 'SafeMath: addition overflow'
                                    else:
                                        require sub_cae89951 - sub_4aee0913
                                        if (sub_cae89951 * sub_6359dabf) - (sub_4aee0913 * sub_6359dabf) / sub_cae89951 - sub_4aee0913 != sub_6359dabf:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if (sub_cae89951 * sub_6359dabf) - (sub_4aee0913 * sub_6359dabf) / 100 > sub_cae89951 - sub_4aee0913:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        call address(sub_6b8504d0.field_0) with:
                                           value sub_cae89951 - sub_4aee0913 - ((sub_cae89951 * sub_6359dabf) - (sub_4aee0913 * sub_6359dabf) / 100) wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        emit 0xbfb48e91: sub_cae89951 - sub_4aee0913 - ((sub_cae89951 * sub_6359dabf) - (sub_4aee0913 * sub_6359dabf) / 100), block.timestamp, address(sub_6b8504d0.field_0)
                                        if sub_cae89951 - ((sub_cae89951 * sub_6359dabf) - (sub_4aee0913 * sub_6359dabf) / 100) < sub_4aee0913:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if sub_cae89951 < sub_cae89951 - ((sub_cae89951 * sub_6359dabf) - (sub_4aee0913 * sub_6359dabf) / 100):
                                            revert with 0, 'SafeMath: addition overflow'
                                        sub_4aee0913 = sub_cae89951
                                        call ceoWalletAddress with:
                                           value (sub_cae89951 * sub_6359dabf) - (sub_4aee0913 * sub_6359dabf) / 100 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if sub_31c7ecf6 + ((sub_cae89951 * sub_6359dabf) - (sub_4aee0913 * sub_6359dabf) / 100) < sub_31c7ecf6:
                                            revert with 0, 'SafeMath: addition overflow'
                                        sub_31c7ecf6 += (sub_cae89951 * sub_6359dabf) - (sub_4aee0913 * sub_6359dabf) / 100
                                else:
                                    if not uint256(sub_6b8504d0.field_256):
                                        call address(sub_6b8504d0.field_0) with:
                                             gas 2300 wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        emit 0xbfb48e91: 0, block.timestamp, address(sub_6b8504d0.field_0)
                                        if sub_4aee0913 < sub_4aee0913:
                                            revert with 0, 'SafeMath: addition overflow'
                                        call ceoWalletAddress with:
                                             gas 2300 wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if sub_31c7ecf6 < sub_31c7ecf6:
                                            revert with 0, 'SafeMath: addition overflow'
                                    else:
                                        require uint256(sub_6b8504d0.field_256)
                                        if uint256(sub_6b8504d0.field_256) * sub_1c4dd6e9[idx].field_0 / uint256(sub_6b8504d0.field_256) != sub_1c4dd6e9[idx].field_0:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if not uint256(sub_6b8504d0.field_256) * sub_1c4dd6e9[idx].field_0 / 100:
                                            if 0 > uint256(sub_6b8504d0.field_256) * sub_1c4dd6e9[idx].field_0 / 100:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            call address(sub_6b8504d0.field_0) with:
                                               value uint256(sub_6b8504d0.field_256) * sub_1c4dd6e9[idx].field_0 / 100 wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            emit 0xbfb48e91: uint256(sub_6b8504d0.field_256) * sub_1c4dd6e9[idx].field_0 / 100, block.timestamp, address(sub_6b8504d0.field_0)
                                            if sub_4aee0913 + (uint256(sub_6b8504d0.field_256) * sub_1c4dd6e9[idx].field_0 / 100) < sub_4aee0913:
                                                revert with 0, 'SafeMath: addition overflow'
                                            sub_4aee0913 += uint256(sub_6b8504d0.field_256) * sub_1c4dd6e9[idx].field_0 / 100
                                            call ceoWalletAddress with:
                                                 gas 2300 wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if sub_31c7ecf6 < sub_31c7ecf6:
                                                revert with 0, 'SafeMath: addition overflow'
                                        else:
                                            require uint256(sub_6b8504d0.field_256) * sub_1c4dd6e9[idx].field_0 / 100
                                            if uint256(sub_6b8504d0.field_256) * sub_1c4dd6e9[idx].field_0 / 100 * sub_6359dabf / uint256(sub_6b8504d0.field_256) * sub_1c4dd6e9[idx].field_0 / 100 != sub_6359dabf:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if uint256(sub_6b8504d0.field_256) * sub_1c4dd6e9[idx].field_0 / 100 * sub_6359dabf / 100 > uint256(sub_6b8504d0.field_256) * sub_1c4dd6e9[idx].field_0 / 100:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            call address(sub_6b8504d0.field_0) with:
                                               value (uint256(sub_6b8504d0.field_256) * sub_1c4dd6e9[idx].field_0 / 100) - (uint256(sub_6b8504d0.field_256) * sub_1c4dd6e9[idx].field_0 / 100 * sub_6359dabf / 100) wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            emit 0xbfb48e91: (uint256(sub_6b8504d0.field_256) * sub_1c4dd6e9[idx].field_0 / 100) - (uint256(sub_6b8504d0.field_256) * sub_1c4dd6e9[idx].field_0 / 100 * sub_6359dabf / 100), block.timestamp, address(sub_6b8504d0.field_0)
                                            if sub_4aee0913 + (uint256(sub_6b8504d0.field_256) * sub_1c4dd6e9[idx].field_0 / 100) - (uint256(sub_6b8504d0.field_256) * sub_1c4dd6e9[idx].field_0 / 100 * sub_6359dabf / 100) < sub_4aee0913:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if 0 < -uint256(sub_6b8504d0.field_256) * sub_1c4dd6e9[idx].field_0 / 100 * sub_6359dabf / 100:
                                                revert with 0, 'SafeMath: addition overflow'
                                            sub_4aee0913 += uint256(sub_6b8504d0.field_256) * sub_1c4dd6e9[idx].field_0 / 100
                                            call ceoWalletAddress with:
                                               value uint256(sub_6b8504d0.field_256) * sub_1c4dd6e9[idx].field_0 / 100 * sub_6359dabf / 100 wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if sub_31c7ecf6 + (uint256(sub_6b8504d0.field_256) * sub_1c4dd6e9[idx].field_0 / 100 * sub_6359dabf / 100) < sub_31c7ecf6:
                                                revert with 0, 'SafeMath: addition overflow'
                                            sub_31c7ecf6 += uint256(sub_6b8504d0.field_256) * sub_1c4dd6e9[idx].field_0 / 100 * sub_6359dabf / 100
                        if not uint256(sub_6b8504d0.field_256):
                            if uint256(sub_6b8504d0.field_256):
                                require uint256(sub_6b8504d0.field_256)
                                if 0 / uint256(sub_6b8504d0.field_256):
                                    revert with 0, 'SafeMath: multiplication overflow'
                            if sub_cae89951 - sub_4aee0913 > 0:
                                if uint256(sub_6b8504d0.field_256):
                                    require uint256(sub_6b8504d0.field_256)
                                    if 0 / uint256(sub_6b8504d0.field_256):
                                        revert with 0, 'SafeMath: multiplication overflow'
                                call address(sub_6b8504d0.field_0) with:
                                     gas 2300 wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                emit 0xbfb48e91: 0, block.timestamp, address(sub_6b8504d0.field_0)
                                if sub_4aee0913 < sub_4aee0913:
                                    revert with 0, 'SafeMath: addition overflow'
                                call ceoWalletAddress with:
                                     gas 2300 wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if sub_31c7ecf6 < sub_31c7ecf6:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                if not sub_cae89951 - sub_4aee0913:
                                    if 0 > sub_cae89951 - sub_4aee0913:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    call address(sub_6b8504d0.field_0) with:
                                       value sub_cae89951 - sub_4aee0913 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    emit 0xbfb48e91: sub_cae89951 - sub_4aee0913, block.timestamp, address(sub_6b8504d0.field_0)
                                    if sub_cae89951 < sub_4aee0913:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if sub_cae89951 < sub_cae89951:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_4aee0913 = sub_cae89951
                                    call ceoWalletAddress with:
                                         gas 2300 wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if sub_31c7ecf6 < sub_31c7ecf6:
                                        revert with 0, 'SafeMath: addition overflow'
                                else:
                                    require sub_cae89951 - sub_4aee0913
                                    if (sub_cae89951 * sub_6359dabf) - (sub_4aee0913 * sub_6359dabf) / sub_cae89951 - sub_4aee0913 != sub_6359dabf:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if (sub_cae89951 * sub_6359dabf) - (sub_4aee0913 * sub_6359dabf) / 100 > sub_cae89951 - sub_4aee0913:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    call address(sub_6b8504d0.field_0) with:
                                       value sub_cae89951 - sub_4aee0913 - ((sub_cae89951 * sub_6359dabf) - (sub_4aee0913 * sub_6359dabf) / 100) wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    emit 0xbfb48e91: sub_cae89951 - sub_4aee0913 - ((sub_cae89951 * sub_6359dabf) - (sub_4aee0913 * sub_6359dabf) / 100), block.timestamp, address(sub_6b8504d0.field_0)
                                    if sub_cae89951 - ((sub_cae89951 * sub_6359dabf) - (sub_4aee0913 * sub_6359dabf) / 100) < sub_4aee0913:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if sub_cae89951 < sub_cae89951 - ((sub_cae89951 * sub_6359dabf) - (sub_4aee0913 * sub_6359dabf) / 100):
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_4aee0913 = sub_cae89951
                                    call ceoWalletAddress with:
                                       value (sub_cae89951 * sub_6359dabf) - (sub_4aee0913 * sub_6359dabf) / 100 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if sub_31c7ecf6 + ((sub_cae89951 * sub_6359dabf) - (sub_4aee0913 * sub_6359dabf) / 100) < sub_31c7ecf6:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_31c7ecf6 += (sub_cae89951 * sub_6359dabf) - (sub_4aee0913 * sub_6359dabf) / 100
                        else:
                            require uint256(sub_6b8504d0.field_256)
                            if 50 * uint256(sub_6b8504d0.field_256) / uint256(sub_6b8504d0.field_256) != 50:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if 0 <= 50 * uint256(sub_6b8504d0.field_256) / 10:
                                if uint256(sub_6b8504d0.field_256):
                                    require uint256(sub_6b8504d0.field_256)
                                    if 0 / uint256(sub_6b8504d0.field_256):
                                        revert with 0, 'SafeMath: multiplication overflow'
                                if sub_cae89951 - sub_4aee0913 > 0:
                                    if uint256(sub_6b8504d0.field_256):
                                        require uint256(sub_6b8504d0.field_256)
                                        if 0 / uint256(sub_6b8504d0.field_256):
                                            revert with 0, 'SafeMath: multiplication overflow'
                                    call address(sub_6b8504d0.field_0) with:
                                         gas 2300 wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    emit 0xbfb48e91: 0, block.timestamp, address(sub_6b8504d0.field_0)
                                    if sub_4aee0913 < sub_4aee0913:
                                        revert with 0, 'SafeMath: addition overflow'
                                    call ceoWalletAddress with:
                                         gas 2300 wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if sub_31c7ecf6 < sub_31c7ecf6:
                                        revert with 0, 'SafeMath: addition overflow'
                                else:
                                    if not sub_cae89951 - sub_4aee0913:
                                        if 0 > sub_cae89951 - sub_4aee0913:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        call address(sub_6b8504d0.field_0) with:
                                           value sub_cae89951 - sub_4aee0913 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        emit 0xbfb48e91: sub_cae89951 - sub_4aee0913, block.timestamp, address(sub_6b8504d0.field_0)
                                        if sub_cae89951 < sub_4aee0913:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if sub_cae89951 < sub_cae89951:
                                            revert with 0, 'SafeMath: addition overflow'
                                        sub_4aee0913 = sub_cae89951
                                        call ceoWalletAddress with:
                                             gas 2300 wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if sub_31c7ecf6 < sub_31c7ecf6:
                                            revert with 0, 'SafeMath: addition overflow'
                                    else:
                                        require sub_cae89951 - sub_4aee0913
                                        if (sub_cae89951 * sub_6359dabf) - (sub_4aee0913 * sub_6359dabf) / sub_cae89951 - sub_4aee0913 != sub_6359dabf:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if (sub_cae89951 * sub_6359dabf) - (sub_4aee0913 * sub_6359dabf) / 100 > sub_cae89951 - sub_4aee0913:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        call address(sub_6b8504d0.field_0) with:
                                           value sub_cae89951 - sub_4aee0913 - ((sub_cae89951 * sub_6359dabf) - (sub_4aee0913 * sub_6359dabf) / 100) wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        emit 0xbfb48e91: sub_cae89951 - sub_4aee0913 - ((sub_cae89951 * sub_6359dabf) - (sub_4aee0913 * sub_6359dabf) / 100), block.timestamp, address(sub_6b8504d0.field_0)
                                        if sub_cae89951 - ((sub_cae89951 * sub_6359dabf) - (sub_4aee0913 * sub_6359dabf) / 100) < sub_4aee0913:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if sub_cae89951 < sub_cae89951 - ((sub_cae89951 * sub_6359dabf) - (sub_4aee0913 * sub_6359dabf) / 100):
                                            revert with 0, 'SafeMath: addition overflow'
                                        sub_4aee0913 = sub_cae89951
                                        call ceoWalletAddress with:
                                           value (sub_cae89951 * sub_6359dabf) - (sub_4aee0913 * sub_6359dabf) / 100 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if sub_31c7ecf6 + ((sub_cae89951 * sub_6359dabf) - (sub_4aee0913 * sub_6359dabf) / 100) < sub_31c7ecf6:
                                            revert with 0, 'SafeMath: addition overflow'
                                        sub_31c7ecf6 += (sub_cae89951 * sub_6359dabf) - (sub_4aee0913 * sub_6359dabf) / 100
                            else:
                                if not uint256(sub_6b8504d0.field_256):
                                    if sub_cae89951 - sub_4aee0913 <= 0:
                                        if not sub_cae89951 - sub_4aee0913:
                                            if 0 > sub_cae89951 - sub_4aee0913:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            call address(sub_6b8504d0.field_0) with:
                                               value sub_cae89951 - sub_4aee0913 wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            emit 0xbfb48e91: sub_cae89951 - sub_4aee0913, block.timestamp, address(sub_6b8504d0.field_0)
                                            if sub_cae89951 < sub_4aee0913:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if sub_cae89951 < sub_cae89951:
                                                revert with 0, 'SafeMath: addition overflow'
                                            sub_4aee0913 = sub_cae89951
                                            call ceoWalletAddress with:
                                                 gas 2300 wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if sub_31c7ecf6 < sub_31c7ecf6:
                                                revert with 0, 'SafeMath: addition overflow'
                                        else:
                                            require sub_cae89951 - sub_4aee0913
                                            if (sub_cae89951 * sub_6359dabf) - (sub_4aee0913 * sub_6359dabf) / sub_cae89951 - sub_4aee0913 != sub_6359dabf:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if (sub_cae89951 * sub_6359dabf) - (sub_4aee0913 * sub_6359dabf) / 100 > sub_cae89951 - sub_4aee0913:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            call address(sub_6b8504d0.field_0) with:
                                               value sub_cae89951 - sub_4aee0913 - ((sub_cae89951 * sub_6359dabf) - (sub_4aee0913 * sub_6359dabf) / 100) wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            emit 0xbfb48e91: sub_cae89951 - sub_4aee0913 - ((sub_cae89951 * sub_6359dabf) - (sub_4aee0913 * sub_6359dabf) / 100), block.timestamp, address(sub_6b8504d0.field_0)
                                            if sub_cae89951 - ((sub_cae89951 * sub_6359dabf) - (sub_4aee0913 * sub_6359dabf) / 100) < sub_4aee0913:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if sub_cae89951 < sub_cae89951 - ((sub_cae89951 * sub_6359dabf) - (sub_4aee0913 * sub_6359dabf) / 100):
                                                revert with 0, 'SafeMath: addition overflow'
                                            sub_4aee0913 = sub_cae89951
                                            call ceoWalletAddress with:
                                               value (sub_cae89951 * sub_6359dabf) - (sub_4aee0913 * sub_6359dabf) / 100 wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if sub_31c7ecf6 + ((sub_cae89951 * sub_6359dabf) - (sub_4aee0913 * sub_6359dabf) / 100) < sub_31c7ecf6:
                                                revert with 0, 'SafeMath: addition overflow'
                                            sub_31c7ecf6 += (sub_cae89951 * sub_6359dabf) - (sub_4aee0913 * sub_6359dabf) / 100
                                    else:
                                        if not uint256(sub_6b8504d0.field_256):
                                            call address(sub_6b8504d0.field_0) with:
                                                 gas 2300 wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            emit 0xbfb48e91: 0, block.timestamp, address(sub_6b8504d0.field_0)
                                            if sub_4aee0913 < sub_4aee0913:
                                                revert with 0, 'SafeMath: addition overflow'
                                            call ceoWalletAddress with:
                                                 gas 2300 wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if sub_31c7ecf6 < sub_31c7ecf6:
                                                revert with 0, 'SafeMath: addition overflow'
                                        else:
                                            require uint256(sub_6b8504d0.field_256)
                                            if 50 * uint256(sub_6b8504d0.field_256) / uint256(sub_6b8504d0.field_256) != 50:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if not 50 * uint256(sub_6b8504d0.field_256) / 100:
                                                if 0 > 50 * uint256(sub_6b8504d0.field_256) / 100:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                call address(sub_6b8504d0.field_0) with:
                                                   value 50 * uint256(sub_6b8504d0.field_256) / 100 wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                emit 0xbfb48e91: 50 * uint256(sub_6b8504d0.field_256) / 100, block.timestamp, address(sub_6b8504d0.field_0)
                                                if sub_4aee0913 + (50 * uint256(sub_6b8504d0.field_256) / 100) < sub_4aee0913:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                sub_4aee0913 += 50 * uint256(sub_6b8504d0.field_256) / 100
                                                call ceoWalletAddress with:
                                                     gas 2300 wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if sub_31c7ecf6 < sub_31c7ecf6:
                                                    revert with 0, 'SafeMath: addition overflow'
                                            else:
                                                require 50 * uint256(sub_6b8504d0.field_256) / 100
                                                if 50 * uint256(sub_6b8504d0.field_256) / 100 * sub_6359dabf / 50 * uint256(sub_6b8504d0.field_256) / 100 != sub_6359dabf:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                if 50 * uint256(sub_6b8504d0.field_256) / 100 * sub_6359dabf / 100 > 50 * uint256(sub_6b8504d0.field_256) / 100:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                call address(sub_6b8504d0.field_0) with:
                                                   value (50 * uint256(sub_6b8504d0.field_256) / 100) - (50 * uint256(sub_6b8504d0.field_256) / 100 * sub_6359dabf / 100) wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                emit 0xbfb48e91: (50 * uint256(sub_6b8504d0.field_256) / 100) - (50 * uint256(sub_6b8504d0.field_256) / 100 * sub_6359dabf / 100), block.timestamp, address(sub_6b8504d0.field_0)
                                                if sub_4aee0913 + (50 * uint256(sub_6b8504d0.field_256) / 100) - (50 * uint256(sub_6b8504d0.field_256) / 100 * sub_6359dabf / 100) < sub_4aee0913:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if 0 < -50 * uint256(sub_6b8504d0.field_256) / 100 * sub_6359dabf / 100:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                sub_4aee0913 += 50 * uint256(sub_6b8504d0.field_256) / 100
                                                call ceoWalletAddress with:
                                                   value 50 * uint256(sub_6b8504d0.field_256) / 100 * sub_6359dabf / 100 wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if sub_31c7ecf6 + (50 * uint256(sub_6b8504d0.field_256) / 100 * sub_6359dabf / 100) < sub_31c7ecf6:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                sub_31c7ecf6 += 50 * uint256(sub_6b8504d0.field_256) / 100 * sub_6359dabf / 100
                                else:
                                    require uint256(sub_6b8504d0.field_256)
                                    if 50 * uint256(sub_6b8504d0.field_256) / uint256(sub_6b8504d0.field_256) != 50:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if sub_cae89951 - sub_4aee0913 <= 50 * uint256(sub_6b8504d0.field_256) / 100:
                                        if not sub_cae89951 - sub_4aee0913:
                                            if 0 > sub_cae89951 - sub_4aee0913:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            call address(sub_6b8504d0.field_0) with:
                                               value sub_cae89951 - sub_4aee0913 wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            emit 0xbfb48e91: sub_cae89951 - sub_4aee0913, block.timestamp, address(sub_6b8504d0.field_0)
                                            if sub_cae89951 < sub_4aee0913:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if sub_cae89951 < sub_cae89951:
                                                revert with 0, 'SafeMath: addition overflow'
                                            sub_4aee0913 = sub_cae89951
                                            call ceoWalletAddress with:
                                                 gas 2300 wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if sub_31c7ecf6 < sub_31c7ecf6:
                                                revert with 0, 'SafeMath: addition overflow'
                                        else:
                                            require sub_cae89951 - sub_4aee0913
                                            if (sub_cae89951 * sub_6359dabf) - (sub_4aee0913 * sub_6359dabf) / sub_cae89951 - sub_4aee0913 != sub_6359dabf:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if (sub_cae89951 * sub_6359dabf) - (sub_4aee0913 * sub_6359dabf) / 100 > sub_cae89951 - sub_4aee0913:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            call address(sub_6b8504d0.field_0) with:
                                               value sub_cae89951 - sub_4aee0913 - ((sub_cae89951 * sub_6359dabf) - (sub_4aee0913 * sub_6359dabf) / 100) wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            emit 0xbfb48e91: sub_cae89951 - sub_4aee0913 - ((sub_cae89951 * sub_6359dabf) - (sub_4aee0913 * sub_6359dabf) / 100), block.timestamp, address(sub_6b8504d0.field_0)
                                            if sub_cae89951 - ((sub_cae89951 * sub_6359dabf) - (sub_4aee0913 * sub_6359dabf) / 100) < sub_4aee0913:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if sub_cae89951 < sub_cae89951 - ((sub_cae89951 * sub_6359dabf) - (sub_4aee0913 * sub_6359dabf) / 100):
                                                revert with 0, 'SafeMath: addition overflow'
                                            sub_4aee0913 = sub_cae89951
                                            call ceoWalletAddress with:
                                               value (sub_cae89951 * sub_6359dabf) - (sub_4aee0913 * sub_6359dabf) / 100 wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if sub_31c7ecf6 + ((sub_cae89951 * sub_6359dabf) - (sub_4aee0913 * sub_6359dabf) / 100) < sub_31c7ecf6:
                                                revert with 0, 'SafeMath: addition overflow'
                                            sub_31c7ecf6 += (sub_cae89951 * sub_6359dabf) - (sub_4aee0913 * sub_6359dabf) / 100
                                    else:
                                        if not uint256(sub_6b8504d0.field_256):
                                            call address(sub_6b8504d0.field_0) with:
                                                 gas 2300 wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            emit 0xbfb48e91: 0, block.timestamp, address(sub_6b8504d0.field_0)
                                            if sub_4aee0913 < sub_4aee0913:
                                                revert with 0, 'SafeMath: addition overflow'
                                            call ceoWalletAddress with:
                                                 gas 2300 wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if sub_31c7ecf6 < sub_31c7ecf6:
                                                revert with 0, 'SafeMath: addition overflow'
                                        else:
                                            require uint256(sub_6b8504d0.field_256)
                                            if 50 * uint256(sub_6b8504d0.field_256) / uint256(sub_6b8504d0.field_256) != 50:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if not 50 * uint256(sub_6b8504d0.field_256) / 100:
                                                if 0 > 50 * uint256(sub_6b8504d0.field_256) / 100:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                call address(sub_6b8504d0.field_0) with:
                                                   value 50 * uint256(sub_6b8504d0.field_256) / 100 wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                emit 0xbfb48e91: 50 * uint256(sub_6b8504d0.field_256) / 100, block.timestamp, address(sub_6b8504d0.field_0)
                                                if sub_4aee0913 + (50 * uint256(sub_6b8504d0.field_256) / 100) < sub_4aee0913:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                sub_4aee0913 += 50 * uint256(sub_6b8504d0.field_256) / 100
                                                call ceoWalletAddress with:
                                                     gas 2300 wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if sub_31c7ecf6 < sub_31c7ecf6:
                                                    revert with 0, 'SafeMath: addition overflow'
                                            else:
                                                require 50 * uint256(sub_6b8504d0.field_256) / 100
                                                if 50 * uint256(sub_6b8504d0.field_256) / 100 * sub_6359dabf / 50 * uint256(sub_6b8504d0.field_256) / 100 != sub_6359dabf:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                if 50 * uint256(sub_6b8504d0.field_256) / 100 * sub_6359dabf / 100 > 50 * uint256(sub_6b8504d0.field_256) / 100:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                call address(sub_6b8504d0.field_0) with:
                                                   value (50 * uint256(sub_6b8504d0.field_256) / 100) - (50 * uint256(sub_6b8504d0.field_256) / 100 * sub_6359dabf / 100) wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                emit 0xbfb48e91: (50 * uint256(sub_6b8504d0.field_256) / 100) - (50 * uint256(sub_6b8504d0.field_256) / 100 * sub_6359dabf / 100), block.timestamp, address(sub_6b8504d0.field_0)
                                                if sub_4aee0913 + (50 * uint256(sub_6b8504d0.field_256) / 100) - (50 * uint256(sub_6b8504d0.field_256) / 100 * sub_6359dabf / 100) < sub_4aee0913:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if 0 < -50 * uint256(sub_6b8504d0.field_256) / 100 * sub_6359dabf / 100:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                sub_4aee0913 += 50 * uint256(sub_6b8504d0.field_256) / 100
                                                call ceoWalletAddress with:
                                                   value 50 * uint256(sub_6b8504d0.field_256) / 100 * sub_6359dabf / 100 wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if sub_31c7ecf6 + (50 * uint256(sub_6b8504d0.field_256) / 100 * sub_6359dabf / 100) < sub_31c7ecf6:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                sub_31c7ecf6 += 50 * uint256(sub_6b8504d0.field_256) / 100 * sub_6359dabf / 100
                    else:
                        if sub_4aee0913 > sub_cae89951:
                            revert with 0, 'SafeMath: subtraction overflow'
                        idx = 0
                        while idx < sub_1c4dd6e9.length:
                            mem[0] = 2
                            if not uint256(sub_6b8504d0.field_256):
                                if sub_cae89951 - sub_4aee0913 <= 0:
                                    idx = idx + 1
                                    continue 
                            else:
                                require uint256(sub_6b8504d0.field_256)
                                if uint256(sub_6b8504d0.field_256) * sub_1c4dd6e9[idx].field_0 / uint256(sub_6b8504d0.field_256) != sub_1c4dd6e9[idx].field_0:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if sub_cae89951 - sub_4aee0913 <= uint256(sub_6b8504d0.field_256) * sub_1c4dd6e9[idx].field_0 / 10:
                                    idx = idx + 1
                                    continue 
                            require idx < sub_1c4dd6e9.length
                            if not uint256(sub_6b8504d0.field_256):
                                if sub_cae89951 - sub_4aee0913 <= 0:
                                    if not sub_cae89951 - sub_4aee0913:
                                        if 0 > sub_cae89951 - sub_4aee0913:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        call address(sub_6b8504d0.field_0) with:
                                           value sub_cae89951 - sub_4aee0913 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        emit 0xbfb48e91: sub_cae89951 - sub_4aee0913, block.timestamp, address(sub_6b8504d0.field_0)
                                        if sub_cae89951 < sub_4aee0913:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if sub_cae89951 < sub_cae89951:
                                            revert with 0, 'SafeMath: addition overflow'
                                        sub_4aee0913 = sub_cae89951
                                        call ceoWalletAddress with:
                                             gas 2300 wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if sub_31c7ecf6 < sub_31c7ecf6:
                                            revert with 0, 'SafeMath: addition overflow'
                                    else:
                                        require sub_cae89951 - sub_4aee0913
                                        if (sub_cae89951 * sub_6359dabf) - (sub_4aee0913 * sub_6359dabf) / sub_cae89951 - sub_4aee0913 != sub_6359dabf:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if (sub_cae89951 * sub_6359dabf) - (sub_4aee0913 * sub_6359dabf) / 100 > sub_cae89951 - sub_4aee0913:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        call address(sub_6b8504d0.field_0) with:
                                           value sub_cae89951 - sub_4aee0913 - ((sub_cae89951 * sub_6359dabf) - (sub_4aee0913 * sub_6359dabf) / 100) wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        emit 0xbfb48e91: sub_cae89951 - sub_4aee0913 - ((sub_cae89951 * sub_6359dabf) - (sub_4aee0913 * sub_6359dabf) / 100), block.timestamp, address(sub_6b8504d0.field_0)
                                        if sub_cae89951 - ((sub_cae89951 * sub_6359dabf) - (sub_4aee0913 * sub_6359dabf) / 100) < sub_4aee0913:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if sub_cae89951 < sub_cae89951 - ((sub_cae89951 * sub_6359dabf) - (sub_4aee0913 * sub_6359dabf) / 100):
                                            revert with 0, 'SafeMath: addition overflow'
                                        sub_4aee0913 = sub_cae89951
                                        call ceoWalletAddress with:
                                           value (sub_cae89951 * sub_6359dabf) - (sub_4aee0913 * sub_6359dabf) / 100 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if sub_31c7ecf6 + ((sub_cae89951 * sub_6359dabf) - (sub_4aee0913 * sub_6359dabf) / 100) < sub_31c7ecf6:
                                            revert with 0, 'SafeMath: addition overflow'
                                        sub_31c7ecf6 += (sub_cae89951 * sub_6359dabf) - (sub_4aee0913 * sub_6359dabf) / 100
                                else:
                                    if not uint256(sub_6b8504d0.field_256):
                                        call address(sub_6b8504d0.field_0) with:
                                             gas 2300 wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        emit 0xbfb48e91: 0, block.timestamp, address(sub_6b8504d0.field_0)
                                        if sub_4aee0913 < sub_4aee0913:
                                            revert with 0, 'SafeMath: addition overflow'
                                        call ceoWalletAddress with:
                                             gas 2300 wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if sub_31c7ecf6 < sub_31c7ecf6:
                                            revert with 0, 'SafeMath: addition overflow'
                                    else:
                                        require uint256(sub_6b8504d0.field_256)
                                        if uint256(sub_6b8504d0.field_256) * sub_1c4dd6e9[idx].field_0 / uint256(sub_6b8504d0.field_256) != sub_1c4dd6e9[idx].field_0:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if not uint256(sub_6b8504d0.field_256) * sub_1c4dd6e9[idx].field_0 / 100:
                                            if 0 > uint256(sub_6b8504d0.field_256) * sub_1c4dd6e9[idx].field_0 / 100:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            call address(sub_6b8504d0.field_0) with:
                                               value uint256(sub_6b8504d0.field_256) * sub_1c4dd6e9[idx].field_0 / 100 wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            emit 0xbfb48e91: uint256(sub_6b8504d0.field_256) * sub_1c4dd6e9[idx].field_0 / 100, block.timestamp, address(sub_6b8504d0.field_0)
                                            if sub_4aee0913 + (uint256(sub_6b8504d0.field_256) * sub_1c4dd6e9[idx].field_0 / 100) < sub_4aee0913:
                                                revert with 0, 'SafeMath: addition overflow'
                                            sub_4aee0913 += uint256(sub_6b8504d0.field_256) * sub_1c4dd6e9[idx].field_0 / 100
                                            call ceoWalletAddress with:
                                                 gas 2300 wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if sub_31c7ecf6 < sub_31c7ecf6:
                                                revert with 0, 'SafeMath: addition overflow'
                                        else:
                                            require uint256(sub_6b8504d0.field_256) * sub_1c4dd6e9[idx].field_0 / 100
                                            if uint256(sub_6b8504d0.field_256) * sub_1c4dd6e9[idx].field_0 / 100 * sub_6359dabf / uint256(sub_6b8504d0.field_256) * sub_1c4dd6e9[idx].field_0 / 100 != sub_6359dabf:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if uint256(sub_6b8504d0.field_256) * sub_1c4dd6e9[idx].field_0 / 100 * sub_6359dabf / 100 > uint256(sub_6b8504d0.field_256) * sub_1c4dd6e9[idx].field_0 / 100:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            call address(sub_6b8504d0.field_0) with:
                                               value (uint256(sub_6b8504d0.field_256) * sub_1c4dd6e9[idx].field_0 / 100) - (uint256(sub_6b8504d0.field_256) * sub_1c4dd6e9[idx].field_0 / 100 * sub_6359dabf / 100) wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            emit 0xbfb48e91: (uint256(sub_6b8504d0.field_256) * sub_1c4dd6e9[idx].field_0 / 100) - (uint256(sub_6b8504d0.field_256) * sub_1c4dd6e9[idx].field_0 / 100 * sub_6359dabf / 100), block.timestamp, address(sub_6b8504d0.field_0)
                                            if sub_4aee0913 + (uint256(sub_6b8504d0.field_256) * sub_1c4dd6e9[idx].field_0 / 100) - (uint256(sub_6b8504d0.field_256) * sub_1c4dd6e9[idx].field_0 / 100 * sub_6359dabf / 100) < sub_4aee0913:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if 0 < -uint256(sub_6b8504d0.field_256) * sub_1c4dd6e9[idx].field_0 / 100 * sub_6359dabf / 100:
                                                revert with 0, 'SafeMath: addition overflow'
                                            sub_4aee0913 += uint256(sub_6b8504d0.field_256) * sub_1c4dd6e9[idx].field_0 / 100
                                            call ceoWalletAddress with:
                                               value uint256(sub_6b8504d0.field_256) * sub_1c4dd6e9[idx].field_0 / 100 * sub_6359dabf / 100 wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if sub_31c7ecf6 + (uint256(sub_6b8504d0.field_256) * sub_1c4dd6e9[idx].field_0 / 100 * sub_6359dabf / 100) < sub_31c7ecf6:
                                                revert with 0, 'SafeMath: addition overflow'
                                            sub_31c7ecf6 += uint256(sub_6b8504d0.field_256) * sub_1c4dd6e9[idx].field_0 / 100 * sub_6359dabf / 100
                            else:
                                require uint256(sub_6b8504d0.field_256)
                                if uint256(sub_6b8504d0.field_256) * sub_1c4dd6e9[idx].field_0 / uint256(sub_6b8504d0.field_256) != sub_1c4dd6e9[idx].field_0:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if sub_cae89951 - sub_4aee0913 <= uint256(sub_6b8504d0.field_256) * sub_1c4dd6e9[idx].field_0 / 100:
                                    if not sub_cae89951 - sub_4aee0913:
                                        if 0 > sub_cae89951 - sub_4aee0913:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        call address(sub_6b8504d0.field_0) with:
                                           value sub_cae89951 - sub_4aee0913 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        emit 0xbfb48e91: sub_cae89951 - sub_4aee0913, block.timestamp, address(sub_6b8504d0.field_0)
                                        if sub_cae89951 < sub_4aee0913:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if sub_cae89951 < sub_cae89951:
                                            revert with 0, 'SafeMath: addition overflow'
                                        sub_4aee0913 = sub_cae89951
                                        call ceoWalletAddress with:
                                             gas 2300 wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if sub_31c7ecf6 < sub_31c7ecf6:
                                            revert with 0, 'SafeMath: addition overflow'
                                    else:
                                        require sub_cae89951 - sub_4aee0913
                                        if (sub_cae89951 * sub_6359dabf) - (sub_4aee0913 * sub_6359dabf) / sub_cae89951 - sub_4aee0913 != sub_6359dabf:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if (sub_cae89951 * sub_6359dabf) - (sub_4aee0913 * sub_6359dabf) / 100 > sub_cae89951 - sub_4aee0913:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        call address(sub_6b8504d0.field_0) with:
                                           value sub_cae89951 - sub_4aee0913 - ((sub_cae89951 * sub_6359dabf) - (sub_4aee0913 * sub_6359dabf) / 100) wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        emit 0xbfb48e91: sub_cae89951 - sub_4aee0913 - ((sub_cae89951 * sub_6359dabf) - (sub_4aee0913 * sub_6359dabf) / 100), block.timestamp, address(sub_6b8504d0.field_0)
                                        if sub_cae89951 - ((sub_cae89951 * sub_6359dabf) - (sub_4aee0913 * sub_6359dabf) / 100) < sub_4aee0913:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if sub_cae89951 < sub_cae89951 - ((sub_cae89951 * sub_6359dabf) - (sub_4aee0913 * sub_6359dabf) / 100):
                                            revert with 0, 'SafeMath: addition overflow'
                                        sub_4aee0913 = sub_cae89951
                                        call ceoWalletAddress with:
                                           value (sub_cae89951 * sub_6359dabf) - (sub_4aee0913 * sub_6359dabf) / 100 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if sub_31c7ecf6 + ((sub_cae89951 * sub_6359dabf) - (sub_4aee0913 * sub_6359dabf) / 100) < sub_31c7ecf6:
                                            revert with 0, 'SafeMath: addition overflow'
                                        sub_31c7ecf6 += (sub_cae89951 * sub_6359dabf) - (sub_4aee0913 * sub_6359dabf) / 100
                                else:
                                    if not uint256(sub_6b8504d0.field_256):
                                        call address(sub_6b8504d0.field_0) with:
                                             gas 2300 wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        emit 0xbfb48e91: 0, block.timestamp, address(sub_6b8504d0.field_0)
                                        if sub_4aee0913 < sub_4aee0913:
                                            revert with 0, 'SafeMath: addition overflow'
                                        call ceoWalletAddress with:
                                             gas 2300 wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if sub_31c7ecf6 < sub_31c7ecf6:
                                            revert with 0, 'SafeMath: addition overflow'
                                    else:
                                        require uint256(sub_6b8504d0.field_256)
                                        if uint256(sub_6b8504d0.field_256) * sub_1c4dd6e9[idx].field_0 / uint256(sub_6b8504d0.field_256) != sub_1c4dd6e9[idx].field_0:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if not uint256(sub_6b8504d0.field_256) * sub_1c4dd6e9[idx].field_0 / 100:
                                            if 0 > uint256(sub_6b8504d0.field_256) * sub_1c4dd6e9[idx].field_0 / 100:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            call address(sub_6b8504d0.field_0) with:
                                               value uint256(sub_6b8504d0.field_256) * sub_1c4dd6e9[idx].field_0 / 100 wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            emit 0xbfb48e91: uint256(sub_6b8504d0.field_256) * sub_1c4dd6e9[idx].field_0 / 100, block.timestamp, address(sub_6b8504d0.field_0)
                                            if sub_4aee0913 + (uint256(sub_6b8504d0.field_256) * sub_1c4dd6e9[idx].field_0 / 100) < sub_4aee0913:
                                                revert with 0, 'SafeMath: addition overflow'
                                            sub_4aee0913 += uint256(sub_6b8504d0.field_256) * sub_1c4dd6e9[idx].field_0 / 100
                                            call ceoWalletAddress with:
                                                 gas 2300 wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if sub_31c7ecf6 < sub_31c7ecf6:
                                                revert with 0, 'SafeMath: addition overflow'
                                        else:
                                            require uint256(sub_6b8504d0.field_256) * sub_1c4dd6e9[idx].field_0 / 100
                                            if uint256(sub_6b8504d0.field_256) * sub_1c4dd6e9[idx].field_0 / 100 * sub_6359dabf / uint256(sub_6b8504d0.field_256) * sub_1c4dd6e9[idx].field_0 / 100 != sub_6359dabf:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if uint256(sub_6b8504d0.field_256) * sub_1c4dd6e9[idx].field_0 / 100 * sub_6359dabf / 100 > uint256(sub_6b8504d0.field_256) * sub_1c4dd6e9[idx].field_0 / 100:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            call address(sub_6b8504d0.field_0) with:
                                               value (uint256(sub_6b8504d0.field_256) * sub_1c4dd6e9[idx].field_0 / 100) - (uint256(sub_6b8504d0.field_256) * sub_1c4dd6e9[idx].field_0 / 100 * sub_6359dabf / 100) wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            emit 0xbfb48e91: (uint256(sub_6b8504d0.field_256) * sub_1c4dd6e9[idx].field_0 / 100) - (uint256(sub_6b8504d0.field_256) * sub_1c4dd6e9[idx].field_0 / 100 * sub_6359dabf / 100), block.timestamp, address(sub_6b8504d0.field_0)
                                            if sub_4aee0913 + (uint256(sub_6b8504d0.field_256) * sub_1c4dd6e9[idx].field_0 / 100) - (uint256(sub_6b8504d0.field_256) * sub_1c4dd6e9[idx].field_0 / 100 * sub_6359dabf / 100) < sub_4aee0913:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if 0 < -uint256(sub_6b8504d0.field_256) * sub_1c4dd6e9[idx].field_0 / 100 * sub_6359dabf / 100:
                                                revert with 0, 'SafeMath: addition overflow'
                                            sub_4aee0913 += uint256(sub_6b8504d0.field_256) * sub_1c4dd6e9[idx].field_0 / 100
                                            call ceoWalletAddress with:
                                               value uint256(sub_6b8504d0.field_256) * sub_1c4dd6e9[idx].field_0 / 100 * sub_6359dabf / 100 wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if sub_31c7ecf6 + (uint256(sub_6b8504d0.field_256) * sub_1c4dd6e9[idx].field_0 / 100 * sub_6359dabf / 100) < sub_31c7ecf6:
                                                revert with 0, 'SafeMath: addition overflow'
                                            sub_31c7ecf6 += uint256(sub_6b8504d0.field_256) * sub_1c4dd6e9[idx].field_0 / 100 * sub_6359dabf / 100
                        if not uint256(sub_6b8504d0.field_256):
                            if sub_cae89951 - sub_4aee0913 <= 0:
                                if uint256(sub_6b8504d0.field_256):
                                    require uint256(sub_6b8504d0.field_256)
                                    if 0 / uint256(sub_6b8504d0.field_256):
                                        revert with 0, 'SafeMath: multiplication overflow'
                                if sub_cae89951 - sub_4aee0913 > 0:
                                    if uint256(sub_6b8504d0.field_256):
                                        require uint256(sub_6b8504d0.field_256)
                                        if 0 / uint256(sub_6b8504d0.field_256):
                                            revert with 0, 'SafeMath: multiplication overflow'
                                    call address(sub_6b8504d0.field_0) with:
                                         gas 2300 wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    emit 0xbfb48e91: 0, block.timestamp, address(sub_6b8504d0.field_0)
                                    if sub_4aee0913 < sub_4aee0913:
                                        revert with 0, 'SafeMath: addition overflow'
                                    call ceoWalletAddress with:
                                         gas 2300 wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if sub_31c7ecf6 < sub_31c7ecf6:
                                        revert with 0, 'SafeMath: addition overflow'
                                else:
                                    if not sub_cae89951 - sub_4aee0913:
                                        if 0 > sub_cae89951 - sub_4aee0913:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        call address(sub_6b8504d0.field_0) with:
                                           value sub_cae89951 - sub_4aee0913 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        emit 0xbfb48e91: sub_cae89951 - sub_4aee0913, block.timestamp, address(sub_6b8504d0.field_0)
                                        if sub_cae89951 < sub_4aee0913:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if sub_cae89951 < sub_cae89951:
                                            revert with 0, 'SafeMath: addition overflow'
                                        sub_4aee0913 = sub_cae89951
                                        call ceoWalletAddress with:
                                             gas 2300 wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if sub_31c7ecf6 < sub_31c7ecf6:
                                            revert with 0, 'SafeMath: addition overflow'
                                    else:
                                        require sub_cae89951 - sub_4aee0913
                                        if (sub_cae89951 * sub_6359dabf) - (sub_4aee0913 * sub_6359dabf) / sub_cae89951 - sub_4aee0913 != sub_6359dabf:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if (sub_cae89951 * sub_6359dabf) - (sub_4aee0913 * sub_6359dabf) / 100 > sub_cae89951 - sub_4aee0913:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        call address(sub_6b8504d0.field_0) with:
                                           value sub_cae89951 - sub_4aee0913 - ((sub_cae89951 * sub_6359dabf) - (sub_4aee0913 * sub_6359dabf) / 100) wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        emit 0xbfb48e91: sub_cae89951 - sub_4aee0913 - ((sub_cae89951 * sub_6359dabf) - (sub_4aee0913 * sub_6359dabf) / 100), block.timestamp, address(sub_6b8504d0.field_0)
                                        if sub_cae89951 - ((sub_cae89951 * sub_6359dabf) - (sub_4aee0913 * sub_6359dabf) / 100) < sub_4aee0913:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if sub_cae89951 < sub_cae89951 - ((sub_cae89951 * sub_6359dabf) - (sub_4aee0913 * sub_6359dabf) / 100):
                                            revert with 0, 'SafeMath: addition overflow'
                                        sub_4aee0913 = sub_cae89951
                                        call ceoWalletAddress with:
                                           value (sub_cae89951 * sub_6359dabf) - (sub_4aee0913 * sub_6359dabf) / 100 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if sub_31c7ecf6 + ((sub_cae89951 * sub_6359dabf) - (sub_4aee0913 * sub_6359dabf) / 100) < sub_31c7ecf6:
                                            revert with 0, 'SafeMath: addition overflow'
                                        sub_31c7ecf6 += (sub_cae89951 * sub_6359dabf) - (sub_4aee0913 * sub_6359dabf) / 100
                            else:
                                if not uint256(sub_6b8504d0.field_256):
                                    if sub_cae89951 - sub_4aee0913 <= 0:
                                        if not sub_cae89951 - sub_4aee0913:
                                            if 0 > sub_cae89951 - sub_4aee0913:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            call address(sub_6b8504d0.field_0) with:
                                               value sub_cae89951 - sub_4aee0913 wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            emit 0xbfb48e91: sub_cae89951 - sub_4aee0913, block.timestamp, address(sub_6b8504d0.field_0)
                                            if sub_cae89951 < sub_4aee0913:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if sub_cae89951 < sub_cae89951:
                                                revert with 0, 'SafeMath: addition overflow'
                                            sub_4aee0913 = sub_cae89951
                                            call ceoWalletAddress with:
                                                 gas 2300 wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if sub_31c7ecf6 < sub_31c7ecf6:
                                                revert with 0, 'SafeMath: addition overflow'
                                        else:
                                            require sub_cae89951 - sub_4aee0913
                                            if (sub_cae89951 * sub_6359dabf) - (sub_4aee0913 * sub_6359dabf) / sub_cae89951 - sub_4aee0913 != sub_6359dabf:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if (sub_cae89951 * sub_6359dabf) - (sub_4aee0913 * sub_6359dabf) / 100 > sub_cae89951 - sub_4aee0913:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            call address(sub_6b8504d0.field_0) with:
                                               value sub_cae89951 - sub_4aee0913 - ((sub_cae89951 * sub_6359dabf) - (sub_4aee0913 * sub_6359dabf) / 100) wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            emit 0xbfb48e91: sub_cae89951 - sub_4aee0913 - ((sub_cae89951 * sub_6359dabf) - (sub_4aee0913 * sub_6359dabf) / 100), block.timestamp, address(sub_6b8504d0.field_0)
                                            if sub_cae89951 - ((sub_cae89951 * sub_6359dabf) - (sub_4aee0913 * sub_6359dabf) / 100) < sub_4aee0913:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if sub_cae89951 < sub_cae89951 - ((sub_cae89951 * sub_6359dabf) - (sub_4aee0913 * sub_6359dabf) / 100):
                                                revert with 0, 'SafeMath: addition overflow'
                                            sub_4aee0913 = sub_cae89951
                                            call ceoWalletAddress with:
                                               value (sub_cae89951 * sub_6359dabf) - (sub_4aee0913 * sub_6359dabf) / 100 wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if sub_31c7ecf6 + ((sub_cae89951 * sub_6359dabf) - (sub_4aee0913 * sub_6359dabf) / 100) < sub_31c7ecf6:
                                                revert with 0, 'SafeMath: addition overflow'
                                            sub_31c7ecf6 += (sub_cae89951 * sub_6359dabf) - (sub_4aee0913 * sub_6359dabf) / 100
                                    else:
                                        if not uint256(sub_6b8504d0.field_256):
                                            call address(sub_6b8504d0.field_0) with:
                                                 gas 2300 wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            emit 0xbfb48e91: 0, block.timestamp, address(sub_6b8504d0.field_0)
                                            if sub_4aee0913 < sub_4aee0913:
                                                revert with 0, 'SafeMath: addition overflow'
                                            call ceoWalletAddress with:
                                                 gas 2300 wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if sub_31c7ecf6 < sub_31c7ecf6:
                                                revert with 0, 'SafeMath: addition overflow'
                                        else:
                                            require uint256(sub_6b8504d0.field_256)
                                            if 50 * uint256(sub_6b8504d0.field_256) / uint256(sub_6b8504d0.field_256) != 50:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if not 50 * uint256(sub_6b8504d0.field_256) / 100:
                                                if 0 > 50 * uint256(sub_6b8504d0.field_256) / 100:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                call address(sub_6b8504d0.field_0) with:
                                                   value 50 * uint256(sub_6b8504d0.field_256) / 100 wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                emit 0xbfb48e91: 50 * uint256(sub_6b8504d0.field_256) / 100, block.timestamp, address(sub_6b8504d0.field_0)
                                                if sub_4aee0913 + (50 * uint256(sub_6b8504d0.field_256) / 100) < sub_4aee0913:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                sub_4aee0913 += 50 * uint256(sub_6b8504d0.field_256) / 100
                                                call ceoWalletAddress with:
                                                     gas 2300 wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if sub_31c7ecf6 < sub_31c7ecf6:
                                                    revert with 0, 'SafeMath: addition overflow'
                                            else:
                                                require 50 * uint256(sub_6b8504d0.field_256) / 100
                                                if 50 * uint256(sub_6b8504d0.field_256) / 100 * sub_6359dabf / 50 * uint256(sub_6b8504d0.field_256) / 100 != sub_6359dabf:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                if 50 * uint256(sub_6b8504d0.field_256) / 100 * sub_6359dabf / 100 > 50 * uint256(sub_6b8504d0.field_256) / 100:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                call address(sub_6b8504d0.field_0) with:
                                                   value (50 * uint256(sub_6b8504d0.field_256) / 100) - (50 * uint256(sub_6b8504d0.field_256) / 100 * sub_6359dabf / 100) wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                emit 0xbfb48e91: (50 * uint256(sub_6b8504d0.field_256) / 100) - (50 * uint256(sub_6b8504d0.field_256) / 100 * sub_6359dabf / 100), block.timestamp, address(sub_6b8504d0.field_0)
                                                if sub_4aee0913 + (50 * uint256(sub_6b8504d0.field_256) / 100) - (50 * uint256(sub_6b8504d0.field_256) / 100 * sub_6359dabf / 100) < sub_4aee0913:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if 0 < -50 * uint256(sub_6b8504d0.field_256) / 100 * sub_6359dabf / 100:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                sub_4aee0913 += 50 * uint256(sub_6b8504d0.field_256) / 100
                                                call ceoWalletAddress with:
                                                   value 50 * uint256(sub_6b8504d0.field_256) / 100 * sub_6359dabf / 100 wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if sub_31c7ecf6 + (50 * uint256(sub_6b8504d0.field_256) / 100 * sub_6359dabf / 100) < sub_31c7ecf6:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                sub_31c7ecf6 += 50 * uint256(sub_6b8504d0.field_256) / 100 * sub_6359dabf / 100
                                else:
                                    require uint256(sub_6b8504d0.field_256)
                                    if 50 * uint256(sub_6b8504d0.field_256) / uint256(sub_6b8504d0.field_256) != 50:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if sub_cae89951 - sub_4aee0913 <= 50 * uint256(sub_6b8504d0.field_256) / 100:
                                        if not sub_cae89951 - sub_4aee0913:
                                            if 0 > sub_cae89951 - sub_4aee0913:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            call address(sub_6b8504d0.field_0) with:
                                               value sub_cae89951 - sub_4aee0913 wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            emit 0xbfb48e91: sub_cae89951 - sub_4aee0913, block.timestamp, address(sub_6b8504d0.field_0)
                                            if sub_cae89951 < sub_4aee0913:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if sub_cae89951 < sub_cae89951:
                                                revert with 0, 'SafeMath: addition overflow'
                                            sub_4aee0913 = sub_cae89951
                                            call ceoWalletAddress with:
                                                 gas 2300 wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if sub_31c7ecf6 < sub_31c7ecf6:
                                                revert with 0, 'SafeMath: addition overflow'
                                        else:
                                            require sub_cae89951 - sub_4aee0913
                                            if (sub_cae89951 * sub_6359dabf) - (sub_4aee0913 * sub_6359dabf) / sub_cae89951 - sub_4aee0913 != sub_6359dabf:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if (sub_cae89951 * sub_6359dabf) - (sub_4aee0913 * sub_6359dabf) / 100 > sub_cae89951 - sub_4aee0913:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            call address(sub_6b8504d0.field_0) with:
                                               value sub_cae89951 - sub_4aee0913 - ((sub_cae89951 * sub_6359dabf) - (sub_4aee0913 * sub_6359dabf) / 100) wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            emit 0xbfb48e91: sub_cae89951 - sub_4aee0913 - ((sub_cae89951 * sub_6359dabf) - (sub_4aee0913 * sub_6359dabf) / 100), block.timestamp, address(sub_6b8504d0.field_0)
                                            if sub_cae89951 - ((sub_cae89951 * sub_6359dabf) - (sub_4aee0913 * sub_6359dabf) / 100) < sub_4aee0913:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if sub_cae89951 < sub_cae89951 - ((sub_cae89951 * sub_6359dabf) - (sub_4aee0913 * sub_6359dabf) / 100):
                                                revert with 0, 'SafeMath: addition overflow'
                                            sub_4aee0913 = sub_cae89951
                                            call ceoWalletAddress with:
                                               value (sub_cae89951 * sub_6359dabf) - (sub_4aee0913 * sub_6359dabf) / 100 wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if sub_31c7ecf6 + ((sub_cae89951 * sub_6359dabf) - (sub_4aee0913 * sub_6359dabf) / 100) < sub_31c7ecf6:
                                                revert with 0, 'SafeMath: addition overflow'
                                            sub_31c7ecf6 += (sub_cae89951 * sub_6359dabf) - (sub_4aee0913 * sub_6359dabf) / 100
                                    else:
                                        if not uint256(sub_6b8504d0.field_256):
                                            call address(sub_6b8504d0.field_0) with:
                                                 gas 2300 wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            emit 0xbfb48e91: 0, block.timestamp, address(sub_6b8504d0.field_0)
                                            if sub_4aee0913 < sub_4aee0913:
                                                revert with 0, 'SafeMath: addition overflow'
                                            call ceoWalletAddress with:
                                                 gas 2300 wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if sub_31c7ecf6 < sub_31c7ecf6:
                                                revert with 0, 'SafeMath: addition overflow'
                                        else:
                                            require uint256(sub_6b8504d0.field_256)
                                            if 50 * uint256(sub_6b8504d0.field_256) / uint256(sub_6b8504d0.field_256) != 50:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if not 50 * uint256(sub_6b8504d0.field_256) / 100:
                                                if 0 > 50 * uint256(sub_6b8504d0.field_256) / 100:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                call address(sub_6b8504d0.field_0) with:
                                                   value 50 * uint256(sub_6b8504d0.field_256) / 100 wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                emit 0xbfb48e91: 50 * uint256(sub_6b8504d0.field_256) / 100, block.timestamp, address(sub_6b8504d0.field_0)
                                                if sub_4aee0913 + (50 * uint256(sub_6b8504d0.field_256) / 100) < sub_4aee0913:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                sub_4aee0913 += 50 * uint256(sub_6b8504d0.field_256) / 100
                                                call ceoWalletAddress with:
                                                     gas 2300 wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if sub_31c7ecf6 < sub_31c7ecf6:
                                                    revert with 0, 'SafeMath: addition overflow'
                                            else:
                                                require 50 * uint256(sub_6b8504d0.field_256) / 100
                                                if 50 * uint256(sub_6b8504d0.field_256) / 100 * sub_6359dabf / 50 * uint256(sub_6b8504d0.field_256) / 100 != sub_6359dabf:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                if 50 * uint256(sub_6b8504d0.field_256) / 100 * sub_6359dabf / 100 > 50 * uint256(sub_6b8504d0.field_256) / 100:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                call address(sub_6b8504d0.field_0) with:
                                                   value (50 * uint256(sub_6b8504d0.field_256) / 100) - (50 * uint256(sub_6b8504d0.field_256) / 100 * sub_6359dabf / 100) wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                emit 0xbfb48e91: (50 * uint256(sub_6b8504d0.field_256) / 100) - (50 * uint256(sub_6b8504d0.field_256) / 100 * sub_6359dabf / 100), block.timestamp, address(sub_6b8504d0.field_0)
                                                if sub_4aee0913 + (50 * uint256(sub_6b8504d0.field_256) / 100) - (50 * uint256(sub_6b8504d0.field_256) / 100 * sub_6359dabf / 100) < sub_4aee0913:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if 0 < -50 * uint256(sub_6b8504d0.field_256) / 100 * sub_6359dabf / 100:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                sub_4aee0913 += 50 * uint256(sub_6b8504d0.field_256) / 100
                                                call ceoWalletAddress with:
                                                   value 50 * uint256(sub_6b8504d0.field_256) / 100 * sub_6359dabf / 100 wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if sub_31c7ecf6 + (50 * uint256(sub_6b8504d0.field_256) / 100 * sub_6359dabf / 100) < sub_31c7ecf6:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                sub_31c7ecf6 += 50 * uint256(sub_6b8504d0.field_256) / 100 * sub_6359dabf / 100
                        else:
                            require uint256(sub_6b8504d0.field_256)
                            if 50 * uint256(sub_6b8504d0.field_256) / uint256(sub_6b8504d0.field_256) != 50:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if sub_cae89951 - sub_4aee0913 <= 50 * uint256(sub_6b8504d0.field_256) / 10:
                                if uint256(sub_6b8504d0.field_256):
                                    require uint256(sub_6b8504d0.field_256)
                                    if 0 / uint256(sub_6b8504d0.field_256):
                                        revert with 0, 'SafeMath: multiplication overflow'
                                if sub_cae89951 - sub_4aee0913 > 0:
                                    if uint256(sub_6b8504d0.field_256):
                                        require uint256(sub_6b8504d0.field_256)
                                        if 0 / uint256(sub_6b8504d0.field_256):
                                            revert with 0, 'SafeMath: multiplication overflow'
                                    call address(sub_6b8504d0.field_0) with:
                                         gas 2300 wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    emit 0xbfb48e91: 0, block.timestamp, address(sub_6b8504d0.field_0)
                                    if sub_4aee0913 < sub_4aee0913:
                                        revert with 0, 'SafeMath: addition overflow'
                                    call ceoWalletAddress with:
                                         gas 2300 wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if sub_31c7ecf6 < sub_31c7ecf6:
                                        revert with 0, 'SafeMath: addition overflow'
                                else:
                                    if not sub_cae89951 - sub_4aee0913:
                                        if 0 > sub_cae89951 - sub_4aee0913:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        call address(sub_6b8504d0.field_0) with:
                                           value sub_cae89951 - sub_4aee0913 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        emit 0xbfb48e91: sub_cae89951 - sub_4aee0913, block.timestamp, address(sub_6b8504d0.field_0)
                                        if sub_cae89951 < sub_4aee0913:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if sub_cae89951 < sub_cae89951:
                                            revert with 0, 'SafeMath: addition overflow'
                                        sub_4aee0913 = sub_cae89951
                                        call ceoWalletAddress with:
                                             gas 2300 wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if sub_31c7ecf6 < sub_31c7ecf6:
                                            revert with 0, 'SafeMath: addition overflow'
                                    else:
                                        require sub_cae89951 - sub_4aee0913
                                        if (sub_cae89951 * sub_6359dabf) - (sub_4aee0913 * sub_6359dabf) / sub_cae89951 - sub_4aee0913 != sub_6359dabf:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if (sub_cae89951 * sub_6359dabf) - (sub_4aee0913 * sub_6359dabf) / 100 > sub_cae89951 - sub_4aee0913:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        call address(sub_6b8504d0.field_0) with:
                                           value sub_cae89951 - sub_4aee0913 - ((sub_cae89951 * sub_6359dabf) - (sub_4aee0913 * sub_6359dabf) / 100) wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        emit 0xbfb48e91: sub_cae89951 - sub_4aee0913 - ((sub_cae89951 * sub_6359dabf) - (sub_4aee0913 * sub_6359dabf) / 100), block.timestamp, address(sub_6b8504d0.field_0)
                                        if sub_cae89951 - ((sub_cae89951 * sub_6359dabf) - (sub_4aee0913 * sub_6359dabf) / 100) < sub_4aee0913:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if sub_cae89951 < sub_cae89951 - ((sub_cae89951 * sub_6359dabf) - (sub_4aee0913 * sub_6359dabf) / 100):
                                            revert with 0, 'SafeMath: addition overflow'
                                        sub_4aee0913 = sub_cae89951
                                        call ceoWalletAddress with:
                                           value (sub_cae89951 * sub_6359dabf) - (sub_4aee0913 * sub_6359dabf) / 100 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if sub_31c7ecf6 + ((sub_cae89951 * sub_6359dabf) - (sub_4aee0913 * sub_6359dabf) / 100) < sub_31c7ecf6:
                                            revert with 0, 'SafeMath: addition overflow'
                                        sub_31c7ecf6 += (sub_cae89951 * sub_6359dabf) - (sub_4aee0913 * sub_6359dabf) / 100
                            else:
                                if not uint256(sub_6b8504d0.field_256):
                                    if sub_cae89951 - sub_4aee0913 <= 0:
                                        if not sub_cae89951 - sub_4aee0913:
                                            if 0 > sub_cae89951 - sub_4aee0913:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            call address(sub_6b8504d0.field_0) with:
                                               value sub_cae89951 - sub_4aee0913 wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            emit 0xbfb48e91: sub_cae89951 - sub_4aee0913, block.timestamp, address(sub_6b8504d0.field_0)
                                            if sub_cae89951 < sub_4aee0913:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if sub_cae89951 < sub_cae89951:
                                                revert with 0, 'SafeMath: addition overflow'
                                            sub_4aee0913 = sub_cae89951
                                            call ceoWalletAddress with:
                                                 gas 2300 wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if sub_31c7ecf6 < sub_31c7ecf6:
                                                revert with 0, 'SafeMath: addition overflow'
                                        else:
                                            require sub_cae89951 - sub_4aee0913
                                            if (sub_cae89951 * sub_6359dabf) - (sub_4aee0913 * sub_6359dabf) / sub_cae89951 - sub_4aee0913 != sub_6359dabf:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if (sub_cae89951 * sub_6359dabf) - (sub_4aee0913 * sub_6359dabf) / 100 > sub_cae89951 - sub_4aee0913:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            call address(sub_6b8504d0.field_0) with:
                                               value sub_cae89951 - sub_4aee0913 - ((sub_cae89951 * sub_6359dabf) - (sub_4aee0913 * sub_6359dabf) / 100) wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            emit 0xbfb48e91: sub_cae89951 - sub_4aee0913 - ((sub_cae89951 * sub_6359dabf) - (sub_4aee0913 * sub_6359dabf) / 100), block.timestamp, address(sub_6b8504d0.field_0)
                                            if sub_cae89951 - ((sub_cae89951 * sub_6359dabf) - (sub_4aee0913 * sub_6359dabf) / 100) < sub_4aee0913:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if sub_cae89951 < sub_cae89951 - ((sub_cae89951 * sub_6359dabf) - (sub_4aee0913 * sub_6359dabf) / 100):
                                                revert with 0, 'SafeMath: addition overflow'
                                            sub_4aee0913 = sub_cae89951
                                            call ceoWalletAddress with:
                                               value (sub_cae89951 * sub_6359dabf) - (sub_4aee0913 * sub_6359dabf) / 100 wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if sub_31c7ecf6 + ((sub_cae89951 * sub_6359dabf) - (sub_4aee0913 * sub_6359dabf) / 100) < sub_31c7ecf6:
                                                revert with 0, 'SafeMath: addition overflow'
                                            sub_31c7ecf6 += (sub_cae89951 * sub_6359dabf) - (sub_4aee0913 * sub_6359dabf) / 100
                                    else:
                                        if not uint256(sub_6b8504d0.field_256):
                                            call address(sub_6b8504d0.field_0) with:
                                                 gas 2300 wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            emit 0xbfb48e91: 0, block.timestamp, address(sub_6b8504d0.field_0)
                                            if sub_4aee0913 < sub_4aee0913:
                                                revert with 0, 'SafeMath: addition overflow'
                                            call ceoWalletAddress with:
                                                 gas 2300 wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if sub_31c7ecf6 < sub_31c7ecf6:
                                                revert with 0, 'SafeMath: addition overflow'
                                        else:
                                            require uint256(sub_6b8504d0.field_256)
                                            if 50 * uint256(sub_6b8504d0.field_256) / uint256(sub_6b8504d0.field_256) != 50:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if not 50 * uint256(sub_6b8504d0.field_256) / 100:
                                                if 0 > 50 * uint256(sub_6b8504d0.field_256) / 100:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                call address(sub_6b8504d0.field_0) with:
                                                   value 50 * uint256(sub_6b8504d0.field_256) / 100 wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                emit 0xbfb48e91: 50 * uint256(sub_6b8504d0.field_256) / 100, block.timestamp, address(sub_6b8504d0.field_0)
                                                if sub_4aee0913 + (50 * uint256(sub_6b8504d0.field_256) / 100) < sub_4aee0913:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                sub_4aee0913 += 50 * uint256(sub_6b8504d0.field_256) / 100
                                                call ceoWalletAddress with:
                                                     gas 2300 wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if sub_31c7ecf6 < sub_31c7ecf6:
                                                    revert with 0, 'SafeMath: addition overflow'
                                            else:
                                                require 50 * uint256(sub_6b8504d0.field_256) / 100
                                                if 50 * uint256(sub_6b8504d0.field_256) / 100 * sub_6359dabf / 50 * uint256(sub_6b8504d0.field_256) / 100 != sub_6359dabf:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                if 50 * uint256(sub_6b8504d0.field_256) / 100 * sub_6359dabf / 100 > 50 * uint256(sub_6b8504d0.field_256) / 100:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                call address(sub_6b8504d0.field_0) with:
                                                   value (50 * uint256(sub_6b8504d0.field_256) / 100) - (50 * uint256(sub_6b8504d0.field_256) / 100 * sub_6359dabf / 100) wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                emit 0xbfb48e91: (50 * uint256(sub_6b8504d0.field_256) / 100) - (50 * uint256(sub_6b8504d0.field_256) / 100 * sub_6359dabf / 100), block.timestamp, address(sub_6b8504d0.field_0)
                                                if sub_4aee0913 + (50 * uint256(sub_6b8504d0.field_256) / 100) - (50 * uint256(sub_6b8504d0.field_256) / 100 * sub_6359dabf / 100) < sub_4aee0913:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if 0 < -50 * uint256(sub_6b8504d0.field_256) / 100 * sub_6359dabf / 100:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                sub_4aee0913 += 50 * uint256(sub_6b8504d0.field_256) / 100
                                                call ceoWalletAddress with:
                                                   value 50 * uint256(sub_6b8504d0.field_256) / 100 * sub_6359dabf / 100 wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if sub_31c7ecf6 + (50 * uint256(sub_6b8504d0.field_256) / 100 * sub_6359dabf / 100) < sub_31c7ecf6:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                sub_31c7ecf6 += 50 * uint256(sub_6b8504d0.field_256) / 100 * sub_6359dabf / 100
                                else:
                                    require uint256(sub_6b8504d0.field_256)
                                    if 50 * uint256(sub_6b8504d0.field_256) / uint256(sub_6b8504d0.field_256) != 50:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if sub_cae89951 - sub_4aee0913 <= 50 * uint256(sub_6b8504d0.field_256) / 100:
                                        if not sub_cae89951 - sub_4aee0913:
                                            if 0 > sub_cae89951 - sub_4aee0913:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            call address(sub_6b8504d0.field_0) with:
                                               value sub_cae89951 - sub_4aee0913 wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            emit 0xbfb48e91: sub_cae89951 - sub_4aee0913, block.timestamp, address(sub_6b8504d0.field_0)
                                            if sub_cae89951 < sub_4aee0913:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if sub_cae89951 < sub_cae89951:
                                                revert with 0, 'SafeMath: addition overflow'
                                            sub_4aee0913 = sub_cae89951
                                            call ceoWalletAddress with:
                                                 gas 2300 wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if sub_31c7ecf6 < sub_31c7ecf6:
                                                revert with 0, 'SafeMath: addition overflow'
                                        else:
                                            require sub_cae89951 - sub_4aee0913
                                            if (sub_cae89951 * sub_6359dabf) - (sub_4aee0913 * sub_6359dabf) / sub_cae89951 - sub_4aee0913 != sub_6359dabf:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if (sub_cae89951 * sub_6359dabf) - (sub_4aee0913 * sub_6359dabf) / 100 > sub_cae89951 - sub_4aee0913:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            call address(sub_6b8504d0.field_0) with:
                                               value sub_cae89951 - sub_4aee0913 - ((sub_cae89951 * sub_6359dabf) - (sub_4aee0913 * sub_6359dabf) / 100) wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            emit 0xbfb48e91: sub_cae89951 - sub_4aee0913 - ((sub_cae89951 * sub_6359dabf) - (sub_4aee0913 * sub_6359dabf) / 100), block.timestamp, address(sub_6b8504d0.field_0)
                                            if sub_cae89951 - ((sub_cae89951 * sub_6359dabf) - (sub_4aee0913 * sub_6359dabf) / 100) < sub_4aee0913:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if sub_cae89951 < sub_cae89951 - ((sub_cae89951 * sub_6359dabf) - (sub_4aee0913 * sub_6359dabf) / 100):
                                                revert with 0, 'SafeMath: addition overflow'
                                            sub_4aee0913 = sub_cae89951
                                            call ceoWalletAddress with:
                                               value (sub_cae89951 * sub_6359dabf) - (sub_4aee0913 * sub_6359dabf) / 100 wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if sub_31c7ecf6 + ((sub_cae89951 * sub_6359dabf) - (sub_4aee0913 * sub_6359dabf) / 100) < sub_31c7ecf6:
                                                revert with 0, 'SafeMath: addition overflow'
                                            sub_31c7ecf6 += (sub_cae89951 * sub_6359dabf) - (sub_4aee0913 * sub_6359dabf) / 100
                                    else:
                                        if not uint256(sub_6b8504d0.field_256):
                                            call address(sub_6b8504d0.field_0) with:
                                                 gas 2300 wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            emit 0xbfb48e91: 0, block.timestamp, address(sub_6b8504d0.field_0)
                                            if sub_4aee0913 < sub_4aee0913:
                                                revert with 0, 'SafeMath: addition overflow'
                                            call ceoWalletAddress with:
                                                 gas 2300 wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if sub_31c7ecf6 < sub_31c7ecf6:
                                                revert with 0, 'SafeMath: addition overflow'
                                        else:
                                            require uint256(sub_6b8504d0.field_256)
                                            if 50 * uint256(sub_6b8504d0.field_256) / uint256(sub_6b8504d0.field_256) != 50:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if not 50 * uint256(sub_6b8504d0.field_256) / 100:
                                                if 0 > 50 * uint256(sub_6b8504d0.field_256) / 100:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                call address(sub_6b8504d0.field_0) with:
                                                   value 50 * uint256(sub_6b8504d0.field_256) / 100 wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                emit 0xbfb48e91: 50 * uint256(sub_6b8504d0.field_256) / 100, block.timestamp, address(sub_6b8504d0.field_0)
                                                if sub_4aee0913 + (50 * uint256(sub_6b8504d0.field_256) / 100) < sub_4aee0913:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                sub_4aee0913 += 50 * uint256(sub_6b8504d0.field_256) / 100
                                                call ceoWalletAddress with:
                                                     gas 2300 wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if sub_31c7ecf6 < sub_31c7ecf6:
                                                    revert with 0, 'SafeMath: addition overflow'
                                            else:
                                                require 50 * uint256(sub_6b8504d0.field_256) / 100
                                                if 50 * uint256(sub_6b8504d0.field_256) / 100 * sub_6359dabf / 50 * uint256(sub_6b8504d0.field_256) / 100 != sub_6359dabf:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                if 50 * uint256(sub_6b8504d0.field_256) / 100 * sub_6359dabf / 100 > 50 * uint256(sub_6b8504d0.field_256) / 100:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                call address(sub_6b8504d0.field_0) with:
                                                   value (50 * uint256(sub_6b8504d0.field_256) / 100) - (50 * uint256(sub_6b8504d0.field_256) / 100 * sub_6359dabf / 100) wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                emit 0xbfb48e91: (50 * uint256(sub_6b8504d0.field_256) / 100) - (50 * uint256(sub_6b8504d0.field_256) / 100 * sub_6359dabf / 100), block.timestamp, address(sub_6b8504d0.field_0)
                                                if sub_4aee0913 + (50 * uint256(sub_6b8504d0.field_256) / 100) - (50 * uint256(sub_6b8504d0.field_256) / 100 * sub_6359dabf / 100) < sub_4aee0913:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if 0 < -50 * uint256(sub_6b8504d0.field_256) / 100 * sub_6359dabf / 100:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                sub_4aee0913 += 50 * uint256(sub_6b8504d0.field_256) / 100
                                                call ceoWalletAddress with:
                                                   value 50 * uint256(sub_6b8504d0.field_256) / 100 * sub_6359dabf / 100 wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if sub_31c7ecf6 + (50 * uint256(sub_6b8504d0.field_256) / 100 * sub_6359dabf / 100) < sub_31c7ecf6:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                sub_31c7ecf6 += 50 * uint256(sub_6b8504d0.field_256) / 100 * sub_6359dabf / 100
}

function sub_d093f628(?) payable {
    if block.timestamp <= startDate:
        revert with 0, 'contract does not launch yet'
    if msg.value < INVEST_MIN_AMOUNT:
        revert with 0, 'error min'
    if ext_code.size(msg.sender) > 0:
        call ceoWalletAddress with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        if not msg.value:
            call ceoWalletAddress with:
                 gas 2300 wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if sub_cb22b086 < sub_cb22b086:
                revert with 0, 'SafeMath: addition overflow'
            require divider
            if block.number % divider:
                if totalInvested + msg.value < totalInvested:
                    revert with 0, 'SafeMath: addition overflow'
                if 0 > totalInvested + msg.value:
                    revert with 0, 'SafeMath: subtraction overflow'
                totalInvested += msg.value
                emit 0xd546dc9b: msg.value, block.timestamp, msg.sender
            else:
                if sub_7c2df3f1 >= totalInvested:
                    if not msg.value:
                        if totalInvested + msg.value < totalInvested:
                            revert with 0, 'SafeMath: addition overflow'
                        if 0 > totalInvested + msg.value:
                            revert with 0, 'SafeMath: subtraction overflow'
                        totalInvested += msg.value
                        emit 0xd546dc9b: msg.value, block.timestamp, msg.sender
                    else:
                        require msg.value
                        if 2 * msg.value / msg.value != 2:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                        if 0 <= 2 * msg.value:
                            if totalInvested + msg.value < totalInvested:
                                revert with 0, 'SafeMath: addition overflow'
                            if 0 > totalInvested + msg.value:
                                revert with 0, 'SafeMath: subtraction overflow'
                            totalInvested += msg.value
                            emit 0xd546dc9b: msg.value, block.timestamp, msg.sender
                        else:
                            if stor7 == block.number:
                                if totalInvested + msg.value < totalInvested:
                                    revert with 0, 'SafeMath: addition overflow'
                                if 0 > totalInvested + msg.value:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                totalInvested += msg.value
                                emit 0xd546dc9b: msg.value, block.timestamp, msg.sender
                            else:
                                if eth.balance(this.address) <= msg.value:
                                    if totalInvested + msg.value < totalInvested:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if 0 > totalInvested + msg.value:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    totalInvested += msg.value
                                    emit 0xd546dc9b: msg.value, block.timestamp, msg.sender
                                else:
                                    if totalInvested <= sub_7c2df3f1:
                                        if totalInvested + msg.value < totalInvested:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if 0 > totalInvested + msg.value:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        totalInvested += msg.value
                                        emit 0xd546dc9b: msg.value, block.timestamp, msg.sender
                                    else:
                                        if sub_7c2df3f1 >= totalInvested:
                                            idx = 0
                                            while idx < sub_32f2dffe.length:
                                                mem[0] = 1
                                                if not msg.value:
                                                    idx = idx + 1
                                                    continue 
                                                require msg.value
                                                if msg.value * sub_32f2dffe[idx].field_0 / msg.value != sub_32f2dffe[idx].field_0:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                                if 0 <= msg.value * sub_32f2dffe[idx].field_0 / 10:
                                                    idx = idx + 1
                                                    continue 
                                                require idx < sub_32f2dffe.length
                                                if sub_32f2dffe[idx].field_0 <= 0:
                                                    if totalInvested + msg.value < totalInvested:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if 0 > totalInvested + msg.value:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    totalInvested += msg.value
                                                    emit 0xd546dc9b: msg.value, block.timestamp, msg.sender
                                                else:
                                                    if not msg.value:
                                                        call msg.sender with:
                                                             gas 2300 wei
                                                    else:
                                                        require msg.value
                                                        if msg.value * sub_32f2dffe[idx].field_0 / msg.value != sub_32f2dffe[idx].field_0:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                                        call msg.sender with:
                                                           value msg.value * sub_32f2dffe[idx].field_0 / 100 wei
                                                             gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    if not msg.value:
                                                        emit Win(0, block.timestamp, msg.sender);
                                                    else:
                                                        require msg.value
                                                        if msg.value * sub_32f2dffe[idx].field_0 / msg.value != sub_32f2dffe[idx].field_0:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                                        emit Win(msg.value * sub_32f2dffe[idx].field_0 / 100, block.timestamp, msg.sender);
                                                    if totalInvested + msg.value < totalInvested:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if 0 > totalInvested + msg.value:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    totalInvested += msg.value
                                                    stor7 = block.number
                                                    if not msg.value:
                                                        if sub_7c2df3f1 < sub_7c2df3f1:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                    else:
                                                        require msg.value
                                                        if msg.value * sub_32f2dffe[idx].field_0 / msg.value != sub_32f2dffe[idx].field_0:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                                        if sub_7c2df3f1 + (msg.value * sub_32f2dffe[idx].field_0 / 100) < sub_7c2df3f1:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        sub_7c2df3f1 += msg.value * sub_32f2dffe[idx].field_0 / 100
                                            if not msg.value:
                                                if totalInvested + msg.value < totalInvested:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if 0 > totalInvested + msg.value:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                totalInvested += msg.value
                                                emit 0xd546dc9b: msg.value, block.timestamp, msg.sender
                                            else:
                                                require msg.value
                                                if 50 * msg.value / msg.value != 50:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                                if 0 <= 50 * msg.value / 10:
                                                    if totalInvested + msg.value < totalInvested:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if 0 > totalInvested + msg.value:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    totalInvested += msg.value
                                                    emit 0xd546dc9b: msg.value, block.timestamp, msg.sender
                                                else:
                                                    if not msg.value:
                                                        call msg.sender with:
                                                             gas 2300 wei
                                                    else:
                                                        require msg.value
                                                        if 50 * msg.value / msg.value != 50:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                                        call msg.sender with:
                                                           value 50 * msg.value / 100 wei
                                                             gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    if not msg.value:
                                                        emit Win(0, block.timestamp, msg.sender);
                                                    else:
                                                        require msg.value
                                                        if 50 * msg.value / msg.value != 50:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                                        emit Win(50 * msg.value / 100, block.timestamp, msg.sender);
                                                    if totalInvested + msg.value < totalInvested:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if 0 > totalInvested + msg.value:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    totalInvested += msg.value
                                                    stor7 = block.number
                                                    if not msg.value:
                                                        if sub_7c2df3f1 < sub_7c2df3f1:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                    else:
                                                        require msg.value
                                                        if 50 * msg.value / msg.value != 50:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                                        if sub_7c2df3f1 + (50 * msg.value / 100) < sub_7c2df3f1:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        sub_7c2df3f1 += 50 * msg.value / 100
                                        else:
                                            if sub_7c2df3f1 > totalInvested:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            idx = 0
                                            while idx < sub_32f2dffe.length:
                                                mem[0] = 1
                                                if not msg.value:
                                                    if totalInvested - sub_7c2df3f1 <= 0:
                                                        idx = idx + 1
                                                        continue 
                                                else:
                                                    require msg.value
                                                    if msg.value * sub_32f2dffe[idx].field_0 / msg.value != sub_32f2dffe[idx].field_0:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                                    if totalInvested - sub_7c2df3f1 <= msg.value * sub_32f2dffe[idx].field_0 / 10:
                                                        idx = idx + 1
                                                        continue 
                                                require idx < sub_32f2dffe.length
                                                if sub_32f2dffe[idx].field_0 <= 0:
                                                    if totalInvested + msg.value < totalInvested:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if 0 > totalInvested + msg.value:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    totalInvested += msg.value
                                                    emit 0xd546dc9b: msg.value, block.timestamp, msg.sender
                                                else:
                                                    if not msg.value:
                                                        call msg.sender with:
                                                             gas 2300 wei
                                                    else:
                                                        require msg.value
                                                        if msg.value * sub_32f2dffe[idx].field_0 / msg.value != sub_32f2dffe[idx].field_0:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                                        call msg.sender with:
                                                           value msg.value * sub_32f2dffe[idx].field_0 / 100 wei
                                                             gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    if not msg.value:
                                                        emit Win(0, block.timestamp, msg.sender);
                                                    else:
                                                        require msg.value
                                                        if msg.value * sub_32f2dffe[idx].field_0 / msg.value != sub_32f2dffe[idx].field_0:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                                        emit Win(msg.value * sub_32f2dffe[idx].field_0 / 100, block.timestamp, msg.sender);
                                                    if totalInvested + msg.value < totalInvested:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if 0 > totalInvested + msg.value:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    totalInvested += msg.value
                                                    stor7 = block.number
                                                    if not msg.value:
                                                        if sub_7c2df3f1 < sub_7c2df3f1:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                    else:
                                                        require msg.value
                                                        if msg.value * sub_32f2dffe[idx].field_0 / msg.value != sub_32f2dffe[idx].field_0:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                                        if sub_7c2df3f1 + (msg.value * sub_32f2dffe[idx].field_0 / 100) < sub_7c2df3f1:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        sub_7c2df3f1 += msg.value * sub_32f2dffe[idx].field_0 / 100
                                            if not msg.value:
                                                if totalInvested - sub_7c2df3f1 <= 0:
                                                    if totalInvested + msg.value < totalInvested:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if 0 > totalInvested + msg.value:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    totalInvested += msg.value
                                                    emit 0xd546dc9b: msg.value, block.timestamp, msg.sender
                                                else:
                                                    if not msg.value:
                                                        call msg.sender with:
                                                             gas 2300 wei
                                                    else:
                                                        require msg.value
                                                        if 50 * msg.value / msg.value != 50:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                                        call msg.sender with:
                                                           value 50 * msg.value / 100 wei
                                                             gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    if not msg.value:
                                                        emit Win(0, block.timestamp, msg.sender);
                                                    else:
                                                        require msg.value
                                                        if 50 * msg.value / msg.value != 50:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                                        emit Win(50 * msg.value / 100, block.timestamp, msg.sender);
                                                    if totalInvested + msg.value < totalInvested:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if 0 > totalInvested + msg.value:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    totalInvested += msg.value
                                                    stor7 = block.number
                                                    if not msg.value:
                                                        if sub_7c2df3f1 < sub_7c2df3f1:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                    else:
                                                        require msg.value
                                                        if 50 * msg.value / msg.value != 50:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                                        if sub_7c2df3f1 + (50 * msg.value / 100) < sub_7c2df3f1:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        sub_7c2df3f1 += 50 * msg.value / 100
                                            else:
                                                require msg.value
                                                if 50 * msg.value / msg.value != 50:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                                if totalInvested - sub_7c2df3f1 <= 50 * msg.value / 10:
                                                    if totalInvested + msg.value < totalInvested:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if 0 > totalInvested + msg.value:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    totalInvested += msg.value
                                                    emit 0xd546dc9b: msg.value, block.timestamp, msg.sender
                                                else:
                                                    if not msg.value:
                                                        call msg.sender with:
                                                             gas 2300 wei
                                                    else:
                                                        require msg.value
                                                        if 50 * msg.value / msg.value != 50:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                                        call msg.sender with:
                                                           value 50 * msg.value / 100 wei
                                                             gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    if not msg.value:
                                                        emit Win(0, block.timestamp, msg.sender);
                                                    else:
                                                        require msg.value
                                                        if 50 * msg.value / msg.value != 50:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                                        emit Win(50 * msg.value / 100, block.timestamp, msg.sender);
                                                    if totalInvested + msg.value < totalInvested:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if 0 > totalInvested + msg.value:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    totalInvested += msg.value
                                                    stor7 = block.number
                                                    if not msg.value:
                                                        if sub_7c2df3f1 < sub_7c2df3f1:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                    else:
                                                        require msg.value
                                                        if 50 * msg.value / msg.value != 50:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                                        if sub_7c2df3f1 + (50 * msg.value / 100) < sub_7c2df3f1:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        sub_7c2df3f1 += 50 * msg.value / 100
                else:
                    if sub_7c2df3f1 > totalInvested:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not msg.value:
                        if totalInvested - sub_7c2df3f1 <= 0:
                            if totalInvested + msg.value < totalInvested:
                                revert with 0, 'SafeMath: addition overflow'
                            if 0 > totalInvested + msg.value:
                                revert with 0, 'SafeMath: subtraction overflow'
                            totalInvested += msg.value
                            emit 0xd546dc9b: msg.value, block.timestamp, msg.sender
                        else:
                            if stor7 == block.number:
                                if totalInvested + msg.value < totalInvested:
                                    revert with 0, 'SafeMath: addition overflow'
                                if 0 > totalInvested + msg.value:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                totalInvested += msg.value
                                emit 0xd546dc9b: msg.value, block.timestamp, msg.sender
                            else:
                                if eth.balance(this.address) <= msg.value:
                                    if totalInvested + msg.value < totalInvested:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if 0 > totalInvested + msg.value:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    totalInvested += msg.value
                                    emit 0xd546dc9b: msg.value, block.timestamp, msg.sender
                                else:
                                    if totalInvested <= sub_7c2df3f1:
                                        if totalInvested + msg.value < totalInvested:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if 0 > totalInvested + msg.value:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        totalInvested += msg.value
                                        emit 0xd546dc9b: msg.value, block.timestamp, msg.sender
                                    else:
                                        if sub_7c2df3f1 >= totalInvested:
                                            idx = 0
                                            while idx < sub_32f2dffe.length:
                                                mem[0] = 1
                                                if not msg.value:
                                                    idx = idx + 1
                                                    continue 
                                                require msg.value
                                                if msg.value * sub_32f2dffe[idx].field_0 / msg.value != sub_32f2dffe[idx].field_0:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                                if 0 <= msg.value * sub_32f2dffe[idx].field_0 / 10:
                                                    idx = idx + 1
                                                    continue 
                                                require idx < sub_32f2dffe.length
                                                if sub_32f2dffe[idx].field_0 <= 0:
                                                    if totalInvested + msg.value < totalInvested:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if 0 > totalInvested + msg.value:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    totalInvested += msg.value
                                                    emit 0xd546dc9b: msg.value, block.timestamp, msg.sender
                                                else:
                                                    if not msg.value:
                                                        call msg.sender with:
                                                             gas 2300 wei
                                                    else:
                                                        require msg.value
                                                        if msg.value * sub_32f2dffe[idx].field_0 / msg.value != sub_32f2dffe[idx].field_0:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                                        call msg.sender with:
                                                           value msg.value * sub_32f2dffe[idx].field_0 / 100 wei
                                                             gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    if not msg.value:
                                                        emit Win(0, block.timestamp, msg.sender);
                                                    else:
                                                        require msg.value
                                                        if msg.value * sub_32f2dffe[idx].field_0 / msg.value != sub_32f2dffe[idx].field_0:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                                        emit Win(msg.value * sub_32f2dffe[idx].field_0 / 100, block.timestamp, msg.sender);
                                                    if totalInvested + msg.value < totalInvested:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if 0 > totalInvested + msg.value:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    totalInvested += msg.value
                                                    stor7 = block.number
                                                    if not msg.value:
                                                        if sub_7c2df3f1 < sub_7c2df3f1:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                    else:
                                                        require msg.value
                                                        if msg.value * sub_32f2dffe[idx].field_0 / msg.value != sub_32f2dffe[idx].field_0:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                                        if sub_7c2df3f1 + (msg.value * sub_32f2dffe[idx].field_0 / 100) < sub_7c2df3f1:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        sub_7c2df3f1 += msg.value * sub_32f2dffe[idx].field_0 / 100
                                            if not msg.value:
                                                if totalInvested + msg.value < totalInvested:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if 0 > totalInvested + msg.value:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                totalInvested += msg.value
                                                emit 0xd546dc9b: msg.value, block.timestamp, msg.sender
                                            else:
                                                require msg.value
                                                if 50 * msg.value / msg.value != 50:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                                if 0 <= 50 * msg.value / 10:
                                                    if totalInvested + msg.value < totalInvested:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if 0 > totalInvested + msg.value:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    totalInvested += msg.value
                                                    emit 0xd546dc9b: msg.value, block.timestamp, msg.sender
                                                else:
                                                    if not msg.value:
                                                        call msg.sender with:
                                                             gas 2300 wei
                                                    else:
                                                        require msg.value
                                                        if 50 * msg.value / msg.value != 50:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                                        call msg.sender with:
                                                           value 50 * msg.value / 100 wei
                                                             gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    if not msg.value:
                                                        emit Win(0, block.timestamp, msg.sender);
                                                    else:
                                                        require msg.value
                                                        if 50 * msg.value / msg.value != 50:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                                        emit Win(50 * msg.value / 100, block.timestamp, msg.sender);
                                                    if totalInvested + msg.value < totalInvested:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if 0 > totalInvested + msg.value:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    totalInvested += msg.value
                                                    stor7 = block.number
                                                    if not msg.value:
                                                        if sub_7c2df3f1 < sub_7c2df3f1:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                    else:
                                                        require msg.value
                                                        if 50 * msg.value / msg.value != 50:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                                        if sub_7c2df3f1 + (50 * msg.value / 100) < sub_7c2df3f1:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        sub_7c2df3f1 += 50 * msg.value / 100
                                        else:
                                            if sub_7c2df3f1 > totalInvested:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            idx = 0
                                            while idx < sub_32f2dffe.length:
                                                mem[0] = 1
                                                if not msg.value:
                                                    if totalInvested - sub_7c2df3f1 <= 0:
                                                        idx = idx + 1
                                                        continue 
                                                else:
                                                    require msg.value
                                                    if msg.value * sub_32f2dffe[idx].field_0 / msg.value != sub_32f2dffe[idx].field_0:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                                    if totalInvested - sub_7c2df3f1 <= msg.value * sub_32f2dffe[idx].field_0 / 10:
                                                        idx = idx + 1
                                                        continue 
                                                require idx < sub_32f2dffe.length
                                                if sub_32f2dffe[idx].field_0 <= 0:
                                                    if totalInvested + msg.value < totalInvested:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if 0 > totalInvested + msg.value:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    totalInvested += msg.value
                                                    emit 0xd546dc9b: msg.value, block.timestamp, msg.sender
                                                else:
                                                    if not msg.value:
                                                        call msg.sender with:
                                                             gas 2300 wei
                                                    else:
                                                        require msg.value
                                                        if msg.value * sub_32f2dffe[idx].field_0 / msg.value != sub_32f2dffe[idx].field_0:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                                        call msg.sender with:
                                                           value msg.value * sub_32f2dffe[idx].field_0 / 100 wei
                                                             gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    if not msg.value:
                                                        emit Win(0, block.timestamp, msg.sender);
                                                    else:
                                                        require msg.value
                                                        if msg.value * sub_32f2dffe[idx].field_0 / msg.value != sub_32f2dffe[idx].field_0:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                                        emit Win(msg.value * sub_32f2dffe[idx].field_0 / 100, block.timestamp, msg.sender);
                                                    if totalInvested + msg.value < totalInvested:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if 0 > totalInvested + msg.value:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    totalInvested += msg.value
                                                    stor7 = block.number
                                                    if not msg.value:
                                                        if sub_7c2df3f1 < sub_7c2df3f1:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                    else:
                                                        require msg.value
                                                        if msg.value * sub_32f2dffe[idx].field_0 / msg.value != sub_32f2dffe[idx].field_0:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                                        if sub_7c2df3f1 + (msg.value * sub_32f2dffe[idx].field_0 / 100) < sub_7c2df3f1:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        sub_7c2df3f1 += msg.value * sub_32f2dffe[idx].field_0 / 100
                                            if not msg.value:
                                                if totalInvested - sub_7c2df3f1 <= 0:
                                                    if totalInvested + msg.value < totalInvested:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if 0 > totalInvested + msg.value:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    totalInvested += msg.value
                                                    emit 0xd546dc9b: msg.value, block.timestamp, msg.sender
                                                else:
                                                    if not msg.value:
                                                        call msg.sender with:
                                                             gas 2300 wei
                                                    else:
                                                        require msg.value
                                                        if 50 * msg.value / msg.value != 50:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                                        call msg.sender with:
                                                           value 50 * msg.value / 100 wei
                                                             gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    if not msg.value:
                                                        emit Win(0, block.timestamp, msg.sender);
                                                    else:
                                                        require msg.value
                                                        if 50 * msg.value / msg.value != 50:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                                        emit Win(50 * msg.value / 100, block.timestamp, msg.sender);
                                                    if totalInvested + msg.value < totalInvested:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if 0 > totalInvested + msg.value:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    totalInvested += msg.value
                                                    stor7 = block.number
                                                    if not msg.value:
                                                        if sub_7c2df3f1 < sub_7c2df3f1:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                    else:
                                                        require msg.value
                                                        if 50 * msg.value / msg.value != 50:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                                        if sub_7c2df3f1 + (50 * msg.value / 100) < sub_7c2df3f1:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        sub_7c2df3f1 += 50 * msg.value / 100
                                            else:
                                                require msg.value
                                                if 50 * msg.value / msg.value != 50:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                                if totalInvested - sub_7c2df3f1 <= 50 * msg.value / 10:
                                                    if totalInvested + msg.value < totalInvested:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if 0 > totalInvested + msg.value:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    totalInvested += msg.value
                                                    emit 0xd546dc9b: msg.value, block.timestamp, msg.sender
                                                else:
                                                    if not msg.value:
                                                        call msg.sender with:
                                                             gas 2300 wei
                                                    else:
                                                        require msg.value
                                                        if 50 * msg.value / msg.value != 50:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                                        call msg.sender with:
                                                           value 50 * msg.value / 100 wei
                                                             gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    if not msg.value:
                                                        emit Win(0, block.timestamp, msg.sender);
                                                    else:
                                                        require msg.value
                                                        if 50 * msg.value / msg.value != 50:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                                        emit Win(50 * msg.value / 100, block.timestamp, msg.sender);
                                                    if totalInvested + msg.value < totalInvested:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if 0 > totalInvested + msg.value:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    totalInvested += msg.value
                                                    stor7 = block.number
                                                    if not msg.value:
                                                        if sub_7c2df3f1 < sub_7c2df3f1:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                    else:
                                                        require msg.value
                                                        if 50 * msg.value / msg.value != 50:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                                        if sub_7c2df3f1 + (50 * msg.value / 100) < sub_7c2df3f1:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        sub_7c2df3f1 += 50 * msg.value / 100
                    else:
                        require msg.value
                        if 2 * msg.value / msg.value != 2:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                        if totalInvested - sub_7c2df3f1 <= 2 * msg.value:
                            if totalInvested + msg.value < totalInvested:
                                revert with 0, 'SafeMath: addition overflow'
                            if 0 > totalInvested + msg.value:
                                revert with 0, 'SafeMath: subtraction overflow'
                            totalInvested += msg.value
                            emit 0xd546dc9b: msg.value, block.timestamp, msg.sender
                        else:
                            if stor7 == block.number:
                                if totalInvested + msg.value < totalInvested:
                                    revert with 0, 'SafeMath: addition overflow'
                                if 0 > totalInvested + msg.value:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                totalInvested += msg.value
                                emit 0xd546dc9b: msg.value, block.timestamp, msg.sender
                            else:
                                if eth.balance(this.address) <= msg.value:
                                    if totalInvested + msg.value < totalInvested:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if 0 > totalInvested + msg.value:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    totalInvested += msg.value
                                    emit 0xd546dc9b: msg.value, block.timestamp, msg.sender
                                else:
                                    if totalInvested <= sub_7c2df3f1:
                                        if totalInvested + msg.value < totalInvested:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if 0 > totalInvested + msg.value:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        totalInvested += msg.value
                                        emit 0xd546dc9b: msg.value, block.timestamp, msg.sender
                                    else:
                                        if sub_7c2df3f1 >= totalInvested:
                                            idx = 0
                                            while idx < sub_32f2dffe.length:
                                                mem[0] = 1
                                                if not msg.value:
                                                    idx = idx + 1
                                                    continue 
                                                require msg.value
                                                if msg.value * sub_32f2dffe[idx].field_0 / msg.value != sub_32f2dffe[idx].field_0:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                                if 0 <= msg.value * sub_32f2dffe[idx].field_0 / 10:
                                                    idx = idx + 1
                                                    continue 
                                                require idx < sub_32f2dffe.length
                                                if sub_32f2dffe[idx].field_0 <= 0:
                                                    if totalInvested + msg.value < totalInvested:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if 0 > totalInvested + msg.value:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    totalInvested += msg.value
                                                    emit 0xd546dc9b: msg.value, block.timestamp, msg.sender
                                                else:
                                                    if not msg.value:
                                                        call msg.sender with:
                                                             gas 2300 wei
                                                    else:
                                                        require msg.value
                                                        if msg.value * sub_32f2dffe[idx].field_0 / msg.value != sub_32f2dffe[idx].field_0:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                                        call msg.sender with:
                                                           value msg.value * sub_32f2dffe[idx].field_0 / 100 wei
                                                             gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    if not msg.value:
                                                        emit Win(0, block.timestamp, msg.sender);
                                                    else:
                                                        require msg.value
                                                        if msg.value * sub_32f2dffe[idx].field_0 / msg.value != sub_32f2dffe[idx].field_0:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                                        emit Win(msg.value * sub_32f2dffe[idx].field_0 / 100, block.timestamp, msg.sender);
                                                    if totalInvested + msg.value < totalInvested:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if 0 > totalInvested + msg.value:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    totalInvested += msg.value
                                                    stor7 = block.number
                                                    if not msg.value:
                                                        if sub_7c2df3f1 < sub_7c2df3f1:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                    else:
                                                        require msg.value
                                                        if msg.value * sub_32f2dffe[idx].field_0 / msg.value != sub_32f2dffe[idx].field_0:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                                        if sub_7c2df3f1 + (msg.value * sub_32f2dffe[idx].field_0 / 100) < sub_7c2df3f1:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        sub_7c2df3f1 += msg.value * sub_32f2dffe[idx].field_0 / 100
                                            if not msg.value:
                                                if totalInvested + msg.value < totalInvested:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if 0 > totalInvested + msg.value:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                totalInvested += msg.value
                                                emit 0xd546dc9b: msg.value, block.timestamp, msg.sender
                                            else:
                                                require msg.value
                                                if 50 * msg.value / msg.value != 50:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                                if 0 <= 50 * msg.value / 10:
                                                    if totalInvested + msg.value < totalInvested:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if 0 > totalInvested + msg.value:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    totalInvested += msg.value
                                                    emit 0xd546dc9b: msg.value, block.timestamp, msg.sender
                                                else:
                                                    if not msg.value:
                                                        call msg.sender with:
                                                             gas 2300 wei
                                                    else:
                                                        require msg.value
                                                        if 50 * msg.value / msg.value != 50:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                                        call msg.sender with:
                                                           value 50 * msg.value / 100 wei
                                                             gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    if not msg.value:
                                                        emit Win(0, block.timestamp, msg.sender);
                                                    else:
                                                        require msg.value
                                                        if 50 * msg.value / msg.value != 50:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                                        emit Win(50 * msg.value / 100, block.timestamp, msg.sender);
                                                    if totalInvested + msg.value < totalInvested:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if 0 > totalInvested + msg.value:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    totalInvested += msg.value
                                                    stor7 = block.number
                                                    if not msg.value:
                                                        if sub_7c2df3f1 < sub_7c2df3f1:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                    else:
                                                        require msg.value
                                                        if 50 * msg.value / msg.value != 50:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                                        if sub_7c2df3f1 + (50 * msg.value / 100) < sub_7c2df3f1:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        sub_7c2df3f1 += 50 * msg.value / 100
                                        else:
                                            if sub_7c2df3f1 > totalInvested:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            idx = 0
                                            while idx < sub_32f2dffe.length:
                                                mem[0] = 1
                                                if not msg.value:
                                                    if totalInvested - sub_7c2df3f1 <= 0:
                                                        idx = idx + 1
                                                        continue 
                                                else:
                                                    require msg.value
                                                    if msg.value * sub_32f2dffe[idx].field_0 / msg.value != sub_32f2dffe[idx].field_0:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                                    if totalInvested - sub_7c2df3f1 <= msg.value * sub_32f2dffe[idx].field_0 / 10:
                                                        idx = idx + 1
                                                        continue 
                                                require idx < sub_32f2dffe.length
                                                if sub_32f2dffe[idx].field_0 <= 0:
                                                    if totalInvested + msg.value < totalInvested:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if 0 > totalInvested + msg.value:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    totalInvested += msg.value
                                                    emit 0xd546dc9b: msg.value, block.timestamp, msg.sender
                                                else:
                                                    if not msg.value:
                                                        call msg.sender with:
                                                             gas 2300 wei
                                                    else:
                                                        require msg.value
                                                        if msg.value * sub_32f2dffe[idx].field_0 / msg.value != sub_32f2dffe[idx].field_0:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                                        call msg.sender with:
                                                           value msg.value * sub_32f2dffe[idx].field_0 / 100 wei
                                                             gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    if not msg.value:
                                                        emit Win(0, block.timestamp, msg.sender);
                                                    else:
                                                        require msg.value
                                                        if msg.value * sub_32f2dffe[idx].field_0 / msg.value != sub_32f2dffe[idx].field_0:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                                        emit Win(msg.value * sub_32f2dffe[idx].field_0 / 100, block.timestamp, msg.sender);
                                                    if totalInvested + msg.value < totalInvested:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if 0 > totalInvested + msg.value:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    totalInvested += msg.value
                                                    stor7 = block.number
                                                    if not msg.value:
                                                        if sub_7c2df3f1 < sub_7c2df3f1:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                    else:
                                                        require msg.value
                                                        if msg.value * sub_32f2dffe[idx].field_0 / msg.value != sub_32f2dffe[idx].field_0:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                                        if sub_7c2df3f1 + (msg.value * sub_32f2dffe[idx].field_0 / 100) < sub_7c2df3f1:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        sub_7c2df3f1 += msg.value * sub_32f2dffe[idx].field_0 / 100
                                            if not msg.value:
                                                if totalInvested - sub_7c2df3f1 <= 0:
                                                    if totalInvested + msg.value < totalInvested:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if 0 > totalInvested + msg.value:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    totalInvested += msg.value
                                                    emit 0xd546dc9b: msg.value, block.timestamp, msg.sender
                                                else:
                                                    if not msg.value:
                                                        call msg.sender with:
                                                             gas 2300 wei
                                                    else:
                                                        require msg.value
                                                        if 50 * msg.value / msg.value != 50:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                                        call msg.sender with:
                                                           value 50 * msg.value / 100 wei
                                                             gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    if not msg.value:
                                                        emit Win(0, block.timestamp, msg.sender);
                                                    else:
                                                        require msg.value
                                                        if 50 * msg.value / msg.value != 50:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                                        emit Win(50 * msg.value / 100, block.timestamp, msg.sender);
                                                    if totalInvested + msg.value < totalInvested:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if 0 > totalInvested + msg.value:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    totalInvested += msg.value
                                                    stor7 = block.number
                                                    if not msg.value:
                                                        if sub_7c2df3f1 < sub_7c2df3f1:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                    else:
                                                        require msg.value
                                                        if 50 * msg.value / msg.value != 50:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                                        if sub_7c2df3f1 + (50 * msg.value / 100) < sub_7c2df3f1:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        sub_7c2df3f1 += 50 * msg.value / 100
                                            else:
                                                require msg.value
                                                if 50 * msg.value / msg.value != 50:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                                if totalInvested - sub_7c2df3f1 <= 50 * msg.value / 10:
                                                    if totalInvested + msg.value < totalInvested:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if 0 > totalInvested + msg.value:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    totalInvested += msg.value
                                                    emit 0xd546dc9b: msg.value, block.timestamp, msg.sender
                                                else:
                                                    if not msg.value:
                                                        call msg.sender with:
                                                             gas 2300 wei
                                                    else:
                                                        require msg.value
                                                        if 50 * msg.value / msg.value != 50:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                                        call msg.sender with:
                                                           value 50 * msg.value / 100 wei
                                                             gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    if not msg.value:
                                                        emit Win(0, block.timestamp, msg.sender);
                                                    else:
                                                        require msg.value
                                                        if 50 * msg.value / msg.value != 50:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                                        emit Win(50 * msg.value / 100, block.timestamp, msg.sender);
                                                    if totalInvested + msg.value < totalInvested:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if 0 > totalInvested + msg.value:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    totalInvested += msg.value
                                                    stor7 = block.number
                                                    if not msg.value:
                                                        if sub_7c2df3f1 < sub_7c2df3f1:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                    else:
                                                        require msg.value
                                                        if 50 * msg.value / msg.value != 50:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                                        if sub_7c2df3f1 + (50 * msg.value / 100) < sub_7c2df3f1:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        sub_7c2df3f1 += 50 * msg.value / 100
        else:
            require msg.value
            if msg.value * sub_2449e00a / msg.value != sub_2449e00a:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            call ceoWalletAddress with:
               value msg.value * sub_2449e00a / 100 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if sub_cb22b086 + (msg.value * sub_2449e00a / 100) < sub_cb22b086:
                revert with 0, 'SafeMath: addition overflow'
            sub_cb22b086 += msg.value * sub_2449e00a / 100
            require divider
            if block.number % divider:
                if totalInvested + msg.value < totalInvested:
                    revert with 0, 'SafeMath: addition overflow'
                if msg.value * sub_2449e00a / 100 > totalInvested + msg.value:
                    revert with 0, 'SafeMath: subtraction overflow'
                totalInvested = totalInvested + msg.value - (msg.value * sub_2449e00a / 100)
                emit 0xd546dc9b: msg.value, block.timestamp, msg.sender
            else:
                if sub_7c2df3f1 >= totalInvested:
                    if not msg.value:
                        if totalInvested + msg.value < totalInvested:
                            revert with 0, 'SafeMath: addition overflow'
                        if msg.value * sub_2449e00a / 100 > totalInvested + msg.value:
                            revert with 0, 'SafeMath: subtraction overflow'
                        totalInvested = totalInvested + msg.value - (msg.value * sub_2449e00a / 100)
                        emit 0xd546dc9b: msg.value, block.timestamp, msg.sender
                    else:
                        require msg.value
                        if 2 * msg.value / msg.value != 2:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                        if 0 <= 2 * msg.value:
                            if totalInvested + msg.value < totalInvested:
                                revert with 0, 'SafeMath: addition overflow'
                            if msg.value * sub_2449e00a / 100 > totalInvested + msg.value:
                                revert with 0, 'SafeMath: subtraction overflow'
                            totalInvested = totalInvested + msg.value - (msg.value * sub_2449e00a / 100)
                            emit 0xd546dc9b: msg.value, block.timestamp, msg.sender
                        else:
                            if stor7 == block.number:
                                if totalInvested + msg.value < totalInvested:
                                    revert with 0, 'SafeMath: addition overflow'
                                if msg.value * sub_2449e00a / 100 > totalInvested + msg.value:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                totalInvested = totalInvested + msg.value - (msg.value * sub_2449e00a / 100)
                                emit 0xd546dc9b: msg.value, block.timestamp, msg.sender
                            else:
                                if eth.balance(this.address) <= msg.value:
                                    if totalInvested + msg.value < totalInvested:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if msg.value * sub_2449e00a / 100 > totalInvested + msg.value:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    totalInvested = totalInvested + msg.value - (msg.value * sub_2449e00a / 100)
                                    emit 0xd546dc9b: msg.value, block.timestamp, msg.sender
                                else:
                                    if totalInvested <= sub_7c2df3f1:
                                        if totalInvested + msg.value < totalInvested:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if msg.value * sub_2449e00a / 100 > totalInvested + msg.value:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        totalInvested = totalInvested + msg.value - (msg.value * sub_2449e00a / 100)
                                        emit 0xd546dc9b: msg.value, block.timestamp, msg.sender
                                    else:
                                        if sub_7c2df3f1 >= totalInvested:
                                            idx = 0
                                            while idx < sub_32f2dffe.length:
                                                mem[0] = 1
                                                if not msg.value:
                                                    idx = idx + 1
                                                    continue 
                                                require msg.value
                                                if msg.value * sub_32f2dffe[idx].field_0 / msg.value != sub_32f2dffe[idx].field_0:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                                if 0 <= msg.value * sub_32f2dffe[idx].field_0 / 10:
                                                    idx = idx + 1
                                                    continue 
                                                require idx < sub_32f2dffe.length
                                                if sub_32f2dffe[idx].field_0 <= 0:
                                                    if totalInvested + msg.value < totalInvested:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if msg.value * sub_2449e00a / 100 > totalInvested + msg.value:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    totalInvested = totalInvested + msg.value - (msg.value * sub_2449e00a / 100)
                                                    emit 0xd546dc9b: msg.value, block.timestamp, msg.sender
                                                else:
                                                    if not msg.value:
                                                        call msg.sender with:
                                                             gas 2300 wei
                                                    else:
                                                        require msg.value
                                                        if msg.value * sub_32f2dffe[idx].field_0 / msg.value != sub_32f2dffe[idx].field_0:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                                        call msg.sender with:
                                                           value msg.value * sub_32f2dffe[idx].field_0 / 100 wei
                                                             gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    if not msg.value:
                                                        emit Win(0, block.timestamp, msg.sender);
                                                    else:
                                                        require msg.value
                                                        if msg.value * sub_32f2dffe[idx].field_0 / msg.value != sub_32f2dffe[idx].field_0:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                                        emit Win(msg.value * sub_32f2dffe[idx].field_0 / 100, block.timestamp, msg.sender);
                                                    if totalInvested + msg.value < totalInvested:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if msg.value * sub_2449e00a / 100 > totalInvested + msg.value:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    totalInvested = totalInvested + msg.value - (msg.value * sub_2449e00a / 100)
                                                    stor7 = block.number
                                                    if not msg.value:
                                                        if sub_7c2df3f1 < sub_7c2df3f1:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                    else:
                                                        require msg.value
                                                        if msg.value * sub_32f2dffe[idx].field_0 / msg.value != sub_32f2dffe[idx].field_0:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                                        if sub_7c2df3f1 + (msg.value * sub_32f2dffe[idx].field_0 / 100) < sub_7c2df3f1:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        sub_7c2df3f1 += msg.value * sub_32f2dffe[idx].field_0 / 100
                                            if not msg.value:
                                                if totalInvested + msg.value < totalInvested:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if msg.value * sub_2449e00a / 100 > totalInvested + msg.value:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                totalInvested = totalInvested + msg.value - (msg.value * sub_2449e00a / 100)
                                                emit 0xd546dc9b: msg.value, block.timestamp, msg.sender
                                            else:
                                                require msg.value
                                                if 50 * msg.value / msg.value != 50:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                                if 0 <= 50 * msg.value / 10:
                                                    if totalInvested + msg.value < totalInvested:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if msg.value * sub_2449e00a / 100 > totalInvested + msg.value:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    totalInvested = totalInvested + msg.value - (msg.value * sub_2449e00a / 100)
                                                    emit 0xd546dc9b: msg.value, block.timestamp, msg.sender
                                                else:
                                                    if not msg.value:
                                                        call msg.sender with:
                                                             gas 2300 wei
                                                    else:
                                                        require msg.value
                                                        if 50 * msg.value / msg.value != 50:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                                        call msg.sender with:
                                                           value 50 * msg.value / 100 wei
                                                             gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    if not msg.value:
                                                        emit Win(0, block.timestamp, msg.sender);
                                                    else:
                                                        require msg.value
                                                        if 50 * msg.value / msg.value != 50:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                                        emit Win(50 * msg.value / 100, block.timestamp, msg.sender);
                                                    if totalInvested + msg.value < totalInvested:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if msg.value * sub_2449e00a / 100 > totalInvested + msg.value:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    totalInvested = totalInvested + msg.value - (msg.value * sub_2449e00a / 100)
                                                    stor7 = block.number
                                                    if not msg.value:
                                                        if sub_7c2df3f1 < sub_7c2df3f1:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                    else:
                                                        require msg.value
                                                        if 50 * msg.value / msg.value != 50:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                                        if sub_7c2df3f1 + (50 * msg.value / 100) < sub_7c2df3f1:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        sub_7c2df3f1 += 50 * msg.value / 100
                                        else:
                                            if sub_7c2df3f1 > totalInvested:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            idx = 0
                                            while idx < sub_32f2dffe.length:
                                                mem[0] = 1
                                                if not msg.value:
                                                    if totalInvested - sub_7c2df3f1 <= 0:
                                                        idx = idx + 1
                                                        continue 
                                                else:
                                                    require msg.value
                                                    if msg.value * sub_32f2dffe[idx].field_0 / msg.value != sub_32f2dffe[idx].field_0:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                                    if totalInvested - sub_7c2df3f1 <= msg.value * sub_32f2dffe[idx].field_0 / 10:
                                                        idx = idx + 1
                                                        continue 
                                                require idx < sub_32f2dffe.length
                                                if sub_32f2dffe[idx].field_0 <= 0:
                                                    if totalInvested + msg.value < totalInvested:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if msg.value * sub_2449e00a / 100 > totalInvested + msg.value:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    totalInvested = totalInvested + msg.value - (msg.value * sub_2449e00a / 100)
                                                    emit 0xd546dc9b: msg.value, block.timestamp, msg.sender
                                                else:
                                                    if not msg.value:
                                                        call msg.sender with:
                                                             gas 2300 wei
                                                    else:
                                                        require msg.value
                                                        if msg.value * sub_32f2dffe[idx].field_0 / msg.value != sub_32f2dffe[idx].field_0:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                                        call msg.sender with:
                                                           value msg.value * sub_32f2dffe[idx].field_0 / 100 wei
                                                             gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    if not msg.value:
                                                        emit Win(0, block.timestamp, msg.sender);
                                                    else:
                                                        require msg.value
                                                        if msg.value * sub_32f2dffe[idx].field_0 / msg.value != sub_32f2dffe[idx].field_0:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                                        emit Win(msg.value * sub_32f2dffe[idx].field_0 / 100, block.timestamp, msg.sender);
                                                    if totalInvested + msg.value < totalInvested:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if msg.value * sub_2449e00a / 100 > totalInvested + msg.value:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    totalInvested = totalInvested + msg.value - (msg.value * sub_2449e00a / 100)
                                                    stor7 = block.number
                                                    if not msg.value:
                                                        if sub_7c2df3f1 < sub_7c2df3f1:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                    else:
                                                        require msg.value
                                                        if msg.value * sub_32f2dffe[idx].field_0 / msg.value != sub_32f2dffe[idx].field_0:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                                        if sub_7c2df3f1 + (msg.value * sub_32f2dffe[idx].field_0 / 100) < sub_7c2df3f1:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        sub_7c2df3f1 += msg.value * sub_32f2dffe[idx].field_0 / 100
                                            if not msg.value:
                                                if totalInvested - sub_7c2df3f1 <= 0:
                                                    if totalInvested + msg.value < totalInvested:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if msg.value * sub_2449e00a / 100 > totalInvested + msg.value:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    totalInvested = totalInvested + msg.value - (msg.value * sub_2449e00a / 100)
                                                    emit 0xd546dc9b: msg.value, block.timestamp, msg.sender
                                                else:
                                                    if not msg.value:
                                                        call msg.sender with:
                                                             gas 2300 wei
                                                    else:
                                                        require msg.value
                                                        if 50 * msg.value / msg.value != 50:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                                        call msg.sender with:
                                                           value 50 * msg.value / 100 wei
                                                             gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    if not msg.value:
                                                        emit Win(0, block.timestamp, msg.sender);
                                                    else:
                                                        require msg.value
                                                        if 50 * msg.value / msg.value != 50:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                                        emit Win(50 * msg.value / 100, block.timestamp, msg.sender);
                                                    if totalInvested + msg.value < totalInvested:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if msg.value * sub_2449e00a / 100 > totalInvested + msg.value:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    totalInvested = totalInvested + msg.value - (msg.value * sub_2449e00a / 100)
                                                    stor7 = block.number
                                                    if not msg.value:
                                                        if sub_7c2df3f1 < sub_7c2df3f1:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                    else:
                                                        require msg.value
                                                        if 50 * msg.value / msg.value != 50:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                                        if sub_7c2df3f1 + (50 * msg.value / 100) < sub_7c2df3f1:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        sub_7c2df3f1 += 50 * msg.value / 100
                                            else:
                                                require msg.value
                                                if 50 * msg.value / msg.value != 50:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                                if totalInvested - sub_7c2df3f1 <= 50 * msg.value / 10:
                                                    if totalInvested + msg.value < totalInvested:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if msg.value * sub_2449e00a / 100 > totalInvested + msg.value:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    totalInvested = totalInvested + msg.value - (msg.value * sub_2449e00a / 100)
                                                    emit 0xd546dc9b: msg.value, block.timestamp, msg.sender
                                                else:
                                                    if not msg.value:
                                                        call msg.sender with:
                                                             gas 2300 wei
                                                    else:
                                                        require msg.value
                                                        if 50 * msg.value / msg.value != 50:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                                        call msg.sender with:
                                                           value 50 * msg.value / 100 wei
                                                             gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    if not msg.value:
                                                        emit Win(0, block.timestamp, msg.sender);
                                                    else:
                                                        require msg.value
                                                        if 50 * msg.value / msg.value != 50:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                                        emit Win(50 * msg.value / 100, block.timestamp, msg.sender);
                                                    if totalInvested + msg.value < totalInvested:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if msg.value * sub_2449e00a / 100 > totalInvested + msg.value:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    totalInvested = totalInvested + msg.value - (msg.value * sub_2449e00a / 100)
                                                    stor7 = block.number
                                                    if not msg.value:
                                                        if sub_7c2df3f1 < sub_7c2df3f1:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                    else:
                                                        require msg.value
                                                        if 50 * msg.value / msg.value != 50:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                                        if sub_7c2df3f1 + (50 * msg.value / 100) < sub_7c2df3f1:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        sub_7c2df3f1 += 50 * msg.value / 100
                else:
                    if sub_7c2df3f1 > totalInvested:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not msg.value:
                        if totalInvested - sub_7c2df3f1 <= 0:
                            if totalInvested + msg.value < totalInvested:
                                revert with 0, 'SafeMath: addition overflow'
                            if msg.value * sub_2449e00a / 100 > totalInvested + msg.value:
                                revert with 0, 'SafeMath: subtraction overflow'
                            totalInvested = totalInvested + msg.value - (msg.value * sub_2449e00a / 100)
                            emit 0xd546dc9b: msg.value, block.timestamp, msg.sender
                        else:
                            if stor7 == block.number:
                                if totalInvested + msg.value < totalInvested:
                                    revert with 0, 'SafeMath: addition overflow'
                                if msg.value * sub_2449e00a / 100 > totalInvested + msg.value:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                totalInvested = totalInvested + msg.value - (msg.value * sub_2449e00a / 100)
                                emit 0xd546dc9b: msg.value, block.timestamp, msg.sender
                            else:
                                if eth.balance(this.address) <= msg.value:
                                    if totalInvested + msg.value < totalInvested:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if msg.value * sub_2449e00a / 100 > totalInvested + msg.value:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    totalInvested = totalInvested + msg.value - (msg.value * sub_2449e00a / 100)
                                    emit 0xd546dc9b: msg.value, block.timestamp, msg.sender
                                else:
                                    if totalInvested <= sub_7c2df3f1:
                                        if totalInvested + msg.value < totalInvested:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if msg.value * sub_2449e00a / 100 > totalInvested + msg.value:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        totalInvested = totalInvested + msg.value - (msg.value * sub_2449e00a / 100)
                                        emit 0xd546dc9b: msg.value, block.timestamp, msg.sender
                                    else:
                                        if sub_7c2df3f1 >= totalInvested:
                                            idx = 0
                                            while idx < sub_32f2dffe.length:
                                                mem[0] = 1
                                                if not msg.value:
                                                    idx = idx + 1
                                                    continue 
                                                require msg.value
                                                if msg.value * sub_32f2dffe[idx].field_0 / msg.value != sub_32f2dffe[idx].field_0:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                                if 0 <= msg.value * sub_32f2dffe[idx].field_0 / 10:
                                                    idx = idx + 1
                                                    continue 
                                                require idx < sub_32f2dffe.length
                                                if sub_32f2dffe[idx].field_0 <= 0:
                                                    if totalInvested + msg.value < totalInvested:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if msg.value * sub_2449e00a / 100 > totalInvested + msg.value:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    totalInvested = totalInvested + msg.value - (msg.value * sub_2449e00a / 100)
                                                    emit 0xd546dc9b: msg.value, block.timestamp, msg.sender
                                                else:
                                                    if not msg.value:
                                                        call msg.sender with:
                                                             gas 2300 wei
                                                    else:
                                                        require msg.value
                                                        if msg.value * sub_32f2dffe[idx].field_0 / msg.value != sub_32f2dffe[idx].field_0:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                                        call msg.sender with:
                                                           value msg.value * sub_32f2dffe[idx].field_0 / 100 wei
                                                             gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    if not msg.value:
                                                        emit Win(0, block.timestamp, msg.sender);
                                                    else:
                                                        require msg.value
                                                        if msg.value * sub_32f2dffe[idx].field_0 / msg.value != sub_32f2dffe[idx].field_0:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                                        emit Win(msg.value * sub_32f2dffe[idx].field_0 / 100, block.timestamp, msg.sender);
                                                    if totalInvested + msg.value < totalInvested:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if msg.value * sub_2449e00a / 100 > totalInvested + msg.value:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    totalInvested = totalInvested + msg.value - (msg.value * sub_2449e00a / 100)
                                                    stor7 = block.number
                                                    if not msg.value:
                                                        if sub_7c2df3f1 < sub_7c2df3f1:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                    else:
                                                        require msg.value
                                                        if msg.value * sub_32f2dffe[idx].field_0 / msg.value != sub_32f2dffe[idx].field_0:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                                        if sub_7c2df3f1 + (msg.value * sub_32f2dffe[idx].field_0 / 100) < sub_7c2df3f1:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        sub_7c2df3f1 += msg.value * sub_32f2dffe[idx].field_0 / 100
                                            if not msg.value:
                                                if totalInvested + msg.value < totalInvested:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if msg.value * sub_2449e00a / 100 > totalInvested + msg.value:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                totalInvested = totalInvested + msg.value - (msg.value * sub_2449e00a / 100)
                                                emit 0xd546dc9b: msg.value, block.timestamp, msg.sender
                                            else:
                                                require msg.value
                                                if 50 * msg.value / msg.value != 50:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                                if 0 <= 50 * msg.value / 10:
                                                    if totalInvested + msg.value < totalInvested:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if msg.value * sub_2449e00a / 100 > totalInvested + msg.value:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    totalInvested = totalInvested + msg.value - (msg.value * sub_2449e00a / 100)
                                                    emit 0xd546dc9b: msg.value, block.timestamp, msg.sender
                                                else:
                                                    if not msg.value:
                                                        call msg.sender with:
                                                             gas 2300 wei
                                                    else:
                                                        require msg.value
                                                        if 50 * msg.value / msg.value != 50:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                                        call msg.sender with:
                                                           value 50 * msg.value / 100 wei
                                                             gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    if not msg.value:
                                                        emit Win(0, block.timestamp, msg.sender);
                                                    else:
                                                        require msg.value
                                                        if 50 * msg.value / msg.value != 50:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                                        emit Win(50 * msg.value / 100, block.timestamp, msg.sender);
                                                    if totalInvested + msg.value < totalInvested:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if msg.value * sub_2449e00a / 100 > totalInvested + msg.value:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    totalInvested = totalInvested + msg.value - (msg.value * sub_2449e00a / 100)
                                                    stor7 = block.number
                                                    if not msg.value:
                                                        if sub_7c2df3f1 < sub_7c2df3f1:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                    else:
                                                        require msg.value
                                                        if 50 * msg.value / msg.value != 50:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                                        if sub_7c2df3f1 + (50 * msg.value / 100) < sub_7c2df3f1:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        sub_7c2df3f1 += 50 * msg.value / 100
                                        else:
                                            if sub_7c2df3f1 > totalInvested:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            idx = 0
                                            while idx < sub_32f2dffe.length:
                                                mem[0] = 1
                                                if not msg.value:
                                                    if totalInvested - sub_7c2df3f1 <= 0:
                                                        idx = idx + 1
                                                        continue 
                                                else:
                                                    require msg.value
                                                    if msg.value * sub_32f2dffe[idx].field_0 / msg.value != sub_32f2dffe[idx].field_0:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                                    if totalInvested - sub_7c2df3f1 <= msg.value * sub_32f2dffe[idx].field_0 / 10:
                                                        idx = idx + 1
                                                        continue 
                                                require idx < sub_32f2dffe.length
                                                if sub_32f2dffe[idx].field_0 <= 0:
                                                    if totalInvested + msg.value < totalInvested:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if msg.value * sub_2449e00a / 100 > totalInvested + msg.value:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    totalInvested = totalInvested + msg.value - (msg.value * sub_2449e00a / 100)
                                                    emit 0xd546dc9b: msg.value, block.timestamp, msg.sender
                                                else:
                                                    if not msg.value:
                                                        call msg.sender with:
                                                             gas 2300 wei
                                                    else:
                                                        require msg.value
                                                        if msg.value * sub_32f2dffe[idx].field_0 / msg.value != sub_32f2dffe[idx].field_0:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                                        call msg.sender with:
                                                           value msg.value * sub_32f2dffe[idx].field_0 / 100 wei
                                                             gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    if not msg.value:
                                                        emit Win(0, block.timestamp, msg.sender);
                                                    else:
                                                        require msg.value
                                                        if msg.value * sub_32f2dffe[idx].field_0 / msg.value != sub_32f2dffe[idx].field_0:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                                        emit Win(msg.value * sub_32f2dffe[idx].field_0 / 100, block.timestamp, msg.sender);
                                                    if totalInvested + msg.value < totalInvested:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if msg.value * sub_2449e00a / 100 > totalInvested + msg.value:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    totalInvested = totalInvested + msg.value - (msg.value * sub_2449e00a / 100)
                                                    stor7 = block.number
                                                    if not msg.value:
                                                        if sub_7c2df3f1 < sub_7c2df3f1:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                    else:
                                                        require msg.value
                                                        if msg.value * sub_32f2dffe[idx].field_0 / msg.value != sub_32f2dffe[idx].field_0:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                                        if sub_7c2df3f1 + (msg.value * sub_32f2dffe[idx].field_0 / 100) < sub_7c2df3f1:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        sub_7c2df3f1 += msg.value * sub_32f2dffe[idx].field_0 / 100
                                            if not msg.value:
                                                if totalInvested - sub_7c2df3f1 <= 0:
                                                    if totalInvested + msg.value < totalInvested:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if msg.value * sub_2449e00a / 100 > totalInvested + msg.value:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    totalInvested = totalInvested + msg.value - (msg.value * sub_2449e00a / 100)
                                                    emit 0xd546dc9b: msg.value, block.timestamp, msg.sender
                                                else:
                                                    if not msg.value:
                                                        call msg.sender with:
                                                             gas 2300 wei
                                                    else:
                                                        require msg.value
                                                        if 50 * msg.value / msg.value != 50:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                                        call msg.sender with:
                                                           value 50 * msg.value / 100 wei
                                                             gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    if not msg.value:
                                                        emit Win(0, block.timestamp, msg.sender);
                                                    else:
                                                        require msg.value
                                                        if 50 * msg.value / msg.value != 50:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                                        emit Win(50 * msg.value / 100, block.timestamp, msg.sender);
                                                    if totalInvested + msg.value < totalInvested:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if msg.value * sub_2449e00a / 100 > totalInvested + msg.value:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    totalInvested = totalInvested + msg.value - (msg.value * sub_2449e00a / 100)
                                                    stor7 = block.number
                                                    if not msg.value:
                                                        if sub_7c2df3f1 < sub_7c2df3f1:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                    else:
                                                        require msg.value
                                                        if 50 * msg.value / msg.value != 50:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                                        if sub_7c2df3f1 + (50 * msg.value / 100) < sub_7c2df3f1:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        sub_7c2df3f1 += 50 * msg.value / 100
                                            else:
                                                require msg.value
                                                if 50 * msg.value / msg.value != 50:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                                if totalInvested - sub_7c2df3f1 <= 50 * msg.value / 10:
                                                    if totalInvested + msg.value < totalInvested:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if msg.value * sub_2449e00a / 100 > totalInvested + msg.value:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    totalInvested = totalInvested + msg.value - (msg.value * sub_2449e00a / 100)
                                                    emit 0xd546dc9b: msg.value, block.timestamp, msg.sender
                                                else:
                                                    if not msg.value:
                                                        call msg.sender with:
                                                             gas 2300 wei
                                                    else:
                                                        require msg.value
                                                        if 50 * msg.value / msg.value != 50:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                                        call msg.sender with:
                                                           value 50 * msg.value / 100 wei
                                                             gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    if not msg.value:
                                                        emit Win(0, block.timestamp, msg.sender);
                                                    else:
                                                        require msg.value
                                                        if 50 * msg.value / msg.value != 50:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                                        emit Win(50 * msg.value / 100, block.timestamp, msg.sender);
                                                    if totalInvested + msg.value < totalInvested:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if msg.value * sub_2449e00a / 100 > totalInvested + msg.value:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    totalInvested = totalInvested + msg.value - (msg.value * sub_2449e00a / 100)
                                                    stor7 = block.number
                                                    if not msg.value:
                                                        if sub_7c2df3f1 < sub_7c2df3f1:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                    else:
                                                        require msg.value
                                                        if 50 * msg.value / msg.value != 50:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                                        if sub_7c2df3f1 + (50 * msg.value / 100) < sub_7c2df3f1:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        sub_7c2df3f1 += 50 * msg.value / 100
                    else:
                        require msg.value
                        if 2 * msg.value / msg.value != 2:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                        if totalInvested - sub_7c2df3f1 <= 2 * msg.value:
                            if totalInvested + msg.value < totalInvested:
                                revert with 0, 'SafeMath: addition overflow'
                            if msg.value * sub_2449e00a / 100 > totalInvested + msg.value:
                                revert with 0, 'SafeMath: subtraction overflow'
                            totalInvested = totalInvested + msg.value - (msg.value * sub_2449e00a / 100)
                            emit 0xd546dc9b: msg.value, block.timestamp, msg.sender
                        else:
                            if stor7 == block.number:
                                if totalInvested + msg.value < totalInvested:
                                    revert with 0, 'SafeMath: addition overflow'
                                if msg.value * sub_2449e00a / 100 > totalInvested + msg.value:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                totalInvested = totalInvested + msg.value - (msg.value * sub_2449e00a / 100)
                                emit 0xd546dc9b: msg.value, block.timestamp, msg.sender
                            else:
                                if eth.balance(this.address) <= msg.value:
                                    if totalInvested + msg.value < totalInvested:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if msg.value * sub_2449e00a / 100 > totalInvested + msg.value:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    totalInvested = totalInvested + msg.value - (msg.value * sub_2449e00a / 100)
                                    emit 0xd546dc9b: msg.value, block.timestamp, msg.sender
                                else:
                                    if totalInvested <= sub_7c2df3f1:
                                        if totalInvested + msg.value < totalInvested:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if msg.value * sub_2449e00a / 100 > totalInvested + msg.value:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        totalInvested = totalInvested + msg.value - (msg.value * sub_2449e00a / 100)
                                        emit 0xd546dc9b: msg.value, block.timestamp, msg.sender
                                    else:
                                        if sub_7c2df3f1 >= totalInvested:
                                            idx = 0
                                            while idx < sub_32f2dffe.length:
                                                mem[0] = 1
                                                if not msg.value:
                                                    idx = idx + 1
                                                    continue 
                                                require msg.value
                                                if msg.value * sub_32f2dffe[idx].field_0 / msg.value != sub_32f2dffe[idx].field_0:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                                if 0 <= msg.value * sub_32f2dffe[idx].field_0 / 10:
                                                    idx = idx + 1
                                                    continue 
                                                require idx < sub_32f2dffe.length
                                                if sub_32f2dffe[idx].field_0 <= 0:
                                                    if totalInvested + msg.value < totalInvested:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if msg.value * sub_2449e00a / 100 > totalInvested + msg.value:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    totalInvested = totalInvested + msg.value - (msg.value * sub_2449e00a / 100)
                                                    emit 0xd546dc9b: msg.value, block.timestamp, msg.sender
                                                else:
                                                    if not msg.value:
                                                        call msg.sender with:
                                                             gas 2300 wei
                                                    else:
                                                        require msg.value
                                                        if msg.value * sub_32f2dffe[idx].field_0 / msg.value != sub_32f2dffe[idx].field_0:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                                        call msg.sender with:
                                                           value msg.value * sub_32f2dffe[idx].field_0 / 100 wei
                                                             gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    if not msg.value:
                                                        emit Win(0, block.timestamp, msg.sender);
                                                    else:
                                                        require msg.value
                                                        if msg.value * sub_32f2dffe[idx].field_0 / msg.value != sub_32f2dffe[idx].field_0:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                                        emit Win(msg.value * sub_32f2dffe[idx].field_0 / 100, block.timestamp, msg.sender);
                                                    if totalInvested + msg.value < totalInvested:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if msg.value * sub_2449e00a / 100 > totalInvested + msg.value:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    totalInvested = totalInvested + msg.value - (msg.value * sub_2449e00a / 100)
                                                    stor7 = block.number
                                                    if not msg.value:
                                                        if sub_7c2df3f1 < sub_7c2df3f1:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                    else:
                                                        require msg.value
                                                        if msg.value * sub_32f2dffe[idx].field_0 / msg.value != sub_32f2dffe[idx].field_0:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                                        if sub_7c2df3f1 + (msg.value * sub_32f2dffe[idx].field_0 / 100) < sub_7c2df3f1:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        sub_7c2df3f1 += msg.value * sub_32f2dffe[idx].field_0 / 100
                                            if not msg.value:
                                                if totalInvested + msg.value < totalInvested:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if msg.value * sub_2449e00a / 100 > totalInvested + msg.value:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                totalInvested = totalInvested + msg.value - (msg.value * sub_2449e00a / 100)
                                                emit 0xd546dc9b: msg.value, block.timestamp, msg.sender
                                            else:
                                                require msg.value
                                                if 50 * msg.value / msg.value != 50:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                                if 0 <= 50 * msg.value / 10:
                                                    if totalInvested + msg.value < totalInvested:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if msg.value * sub_2449e00a / 100 > totalInvested + msg.value:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    totalInvested = totalInvested + msg.value - (msg.value * sub_2449e00a / 100)
                                                    emit 0xd546dc9b: msg.value, block.timestamp, msg.sender
                                                else:
                                                    if not msg.value:
                                                        call msg.sender with:
                                                             gas 2300 wei
                                                    else:
                                                        require msg.value
                                                        if 50 * msg.value / msg.value != 50:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                                        call msg.sender with:
                                                           value 50 * msg.value / 100 wei
                                                             gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    if not msg.value:
                                                        emit Win(0, block.timestamp, msg.sender);
                                                    else:
                                                        require msg.value
                                                        if 50 * msg.value / msg.value != 50:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                                        emit Win(50 * msg.value / 100, block.timestamp, msg.sender);
                                                    if totalInvested + msg.value < totalInvested:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if msg.value * sub_2449e00a / 100 > totalInvested + msg.value:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    totalInvested = totalInvested + msg.value - (msg.value * sub_2449e00a / 100)
                                                    stor7 = block.number
                                                    if not msg.value:
                                                        if sub_7c2df3f1 < sub_7c2df3f1:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                    else:
                                                        require msg.value
                                                        if 50 * msg.value / msg.value != 50:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                                        if sub_7c2df3f1 + (50 * msg.value / 100) < sub_7c2df3f1:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        sub_7c2df3f1 += 50 * msg.value / 100
                                        else:
                                            if sub_7c2df3f1 > totalInvested:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            idx = 0
                                            while idx < sub_32f2dffe.length:
                                                mem[0] = 1
                                                if not msg.value:
                                                    if totalInvested - sub_7c2df3f1 <= 0:
                                                        idx = idx + 1
                                                        continue 
                                                else:
                                                    require msg.value
                                                    if msg.value * sub_32f2dffe[idx].field_0 / msg.value != sub_32f2dffe[idx].field_0:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                                    if totalInvested - sub_7c2df3f1 <= msg.value * sub_32f2dffe[idx].field_0 / 10:
                                                        idx = idx + 1
                                                        continue 
                                                require idx < sub_32f2dffe.length
                                                if sub_32f2dffe[idx].field_0 <= 0:
                                                    if totalInvested + msg.value < totalInvested:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if msg.value * sub_2449e00a / 100 > totalInvested + msg.value:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    totalInvested = totalInvested + msg.value - (msg.value * sub_2449e00a / 100)
                                                    emit 0xd546dc9b: msg.value, block.timestamp, msg.sender
                                                else:
                                                    if not msg.value:
                                                        call msg.sender with:
                                                             gas 2300 wei
                                                    else:
                                                        require msg.value
                                                        if msg.value * sub_32f2dffe[idx].field_0 / msg.value != sub_32f2dffe[idx].field_0:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                                        call msg.sender with:
                                                           value msg.value * sub_32f2dffe[idx].field_0 / 100 wei
                                                             gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    if not msg.value:
                                                        emit Win(0, block.timestamp, msg.sender);
                                                    else:
                                                        require msg.value
                                                        if msg.value * sub_32f2dffe[idx].field_0 / msg.value != sub_32f2dffe[idx].field_0:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                                        emit Win(msg.value * sub_32f2dffe[idx].field_0 / 100, block.timestamp, msg.sender);
                                                    if totalInvested + msg.value < totalInvested:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if msg.value * sub_2449e00a / 100 > totalInvested + msg.value:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    totalInvested = totalInvested + msg.value - (msg.value * sub_2449e00a / 100)
                                                    stor7 = block.number
                                                    if not msg.value:
                                                        if sub_7c2df3f1 < sub_7c2df3f1:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                    else:
                                                        require msg.value
                                                        if msg.value * sub_32f2dffe[idx].field_0 / msg.value != sub_32f2dffe[idx].field_0:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                                        if sub_7c2df3f1 + (msg.value * sub_32f2dffe[idx].field_0 / 100) < sub_7c2df3f1:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        sub_7c2df3f1 += msg.value * sub_32f2dffe[idx].field_0 / 100
                                            if not msg.value:
                                                if totalInvested - sub_7c2df3f1 <= 0:
                                                    if totalInvested + msg.value < totalInvested:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if msg.value * sub_2449e00a / 100 > totalInvested + msg.value:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    totalInvested = totalInvested + msg.value - (msg.value * sub_2449e00a / 100)
                                                    emit 0xd546dc9b: msg.value, block.timestamp, msg.sender
                                                else:
                                                    if not msg.value:
                                                        call msg.sender with:
                                                             gas 2300 wei
                                                    else:
                                                        require msg.value
                                                        if 50 * msg.value / msg.value != 50:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                                        call msg.sender with:
                                                           value 50 * msg.value / 100 wei
                                                             gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    if not msg.value:
                                                        emit Win(0, block.timestamp, msg.sender);
                                                    else:
                                                        require msg.value
                                                        if 50 * msg.value / msg.value != 50:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                                        emit Win(50 * msg.value / 100, block.timestamp, msg.sender);
                                                    if totalInvested + msg.value < totalInvested:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if msg.value * sub_2449e00a / 100 > totalInvested + msg.value:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    totalInvested = totalInvested + msg.value - (msg.value * sub_2449e00a / 100)
                                                    stor7 = block.number
                                                    if not msg.value:
                                                        if sub_7c2df3f1 < sub_7c2df3f1:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                    else:
                                                        require msg.value
                                                        if 50 * msg.value / msg.value != 50:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                                        if sub_7c2df3f1 + (50 * msg.value / 100) < sub_7c2df3f1:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        sub_7c2df3f1 += 50 * msg.value / 100
                                            else:
                                                require msg.value
                                                if 50 * msg.value / msg.value != 50:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                                if totalInvested - sub_7c2df3f1 <= 50 * msg.value / 10:
                                                    if totalInvested + msg.value < totalInvested:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if msg.value * sub_2449e00a / 100 > totalInvested + msg.value:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    totalInvested = totalInvested + msg.value - (msg.value * sub_2449e00a / 100)
                                                    emit 0xd546dc9b: msg.value, block.timestamp, msg.sender
                                                else:
                                                    if not msg.value:
                                                        call msg.sender with:
                                                             gas 2300 wei
                                                    else:
                                                        require msg.value
                                                        if 50 * msg.value / msg.value != 50:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                                        call msg.sender with:
                                                           value 50 * msg.value / 100 wei
                                                             gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    if not msg.value:
                                                        emit Win(0, block.timestamp, msg.sender);
                                                    else:
                                                        require msg.value
                                                        if 50 * msg.value / msg.value != 50:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                                        emit Win(50 * msg.value / 100, block.timestamp, msg.sender);
                                                    if totalInvested + msg.value < totalInvested:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if msg.value * sub_2449e00a / 100 > totalInvested + msg.value:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    totalInvested = totalInvested + msg.value - (msg.value * sub_2449e00a / 100)
                                                    stor7 = block.number
                                                    if not msg.value:
                                                        if sub_7c2df3f1 < sub_7c2df3f1:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                    else:
                                                        require msg.value
                                                        if 50 * msg.value / msg.value != 50:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                                        if sub_7c2df3f1 + (50 * msg.value / 100) < sub_7c2df3f1:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        sub_7c2df3f1 += 50 * msg.value / 100
}



}
