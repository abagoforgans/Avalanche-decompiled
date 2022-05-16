contract main {




// =====================  Runtime code  =====================


#
#  - sub_a9d7baac(?)
#  - sub_e3c00b20(?)
#
address owner;
uint256 sub_18db46f7;
uint256 sub_34403763;
mapping of uint256 sub_a3bacbcd;
mapping of uint256 sub_69ad693a;
mapping of uint256 sub_9d25b329;
mapping of uint256 sub_c53917aa;
mapping of uint256 sub_b93cdb85;
mapping of uint256 sub_9c2afd2d;
uint256 sub_b6c32593;
array of address sub_0242e7de;
array of address sub_5f96d549;
array of uint256 sub_b851fccd;
array of uint256 sub_ee73c662;
array of address sub_e1a19965;
array of address sub_a5a63744;
array of uint256 sub_8df82bd6;
array of uint256 sub_8e39db74;
uint8 lastwinner;
array of uint256 sub_0db58691;
uint256 temp;
address stor22;
address stor23;

function sub_0242e7de(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < sub_0242e7de.length
    return sub_0242e7de[arg1]
}

function sub_0db58691(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < sub_0db58691.length
    return sub_0db58691[arg1].field_0
}

function sub_18db46f7(?) {
    return sub_18db46f7
}

function sub_34403763(?) {
    return sub_34403763
}

function sub_5f96d549(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < sub_5f96d549.length
    return sub_5f96d549[arg1]
}

function temp() {
    return temp
}

function sub_69ad693a(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_69ad693a[arg1]
}

function owner() {
    return owner
}

function sub_8df82bd6(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < sub_8df82bd6.length
    return sub_8df82bd6[arg1]
}

function sub_8e39db74(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < sub_8e39db74.length
    return sub_8e39db74[arg1]
}

function sub_9c2afd2d(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_9c2afd2d[arg1]
}

function sub_9d25b329(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_9d25b329[arg1]
}

function sub_a3bacbcd(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_a3bacbcd[arg1]
}

function sub_a5a63744(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < sub_a5a63744.length
    return sub_a5a63744[arg1]
}

function sub_b6c32593(?) {
    return sub_b6c32593
}

function sub_b851fccd(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < sub_b851fccd.length
    return sub_b851fccd[arg1]
}

function sub_b93cdb85(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_b93cdb85[arg1]
}

function sub_c53917aa(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_c53917aa[arg1]
}

function sub_e1a19965(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < sub_e1a19965.length
    return sub_e1a19965[arg1]
}

function sub_ee73c662(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < sub_ee73c662.length
    return sub_ee73c662[arg1]
}

function lastwinner() {
    return bool(lastwinner)
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_2a0f3012(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_34403763 = arg1
}

function sub_e4e09cb7(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_18db46f7 = arg1
}

function withdraw() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function getReward(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(stor23)
    call stor23.0xc00007b0 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_78f9facf(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if sub_9c2afd2d[arg1] > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow'
    if block.timestamp < sub_9c2afd2d[arg1]:
        revert with 'NH{q', 17
    return (block.timestamp - sub_9c2afd2d[arg1])
}

function sub_ecd6235d(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if sub_9c2afd2d[arg1] > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow'
    if block.timestamp < sub_9c2afd2d[arg1]:
        revert with 'NH{q', 17
    if block.timestamp - sub_9c2afd2d[arg1] >= 24 * 3600:
        return 1
    else:
        return 0
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(stor23)
    staticcall stor23.0x70a08231 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function getTotalClaimable(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(stor23)
    staticcall stor23.0x267e8ab6 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function sub_92241d57(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    if sub_9c2afd2d[arg2] > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow'
    if block.timestamp < sub_9c2afd2d[arg2]:
        revert with 'NH{q', 17
    if block.timestamp - sub_9c2afd2d[arg2] >= 24 * 3600:
        idx = 0
        s = 1
        while idx < sub_b6c32593:
            if idx >= sub_0242e7de.length:
                revert with 'NH{q', 50
            mem[0] = 11
            if sub_0242e7de[idx] != address(arg1):
                if idx >= sub_5f96d549.length:
                    revert with 'NH{q', 50
                mem[0] = 12
                if sub_5f96d549[idx] != address(arg1):
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = s
                    continue 
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = 0
            continue 
        return bool(s)
    idx = 0
    while idx < sub_b6c32593:
        if idx >= sub_0242e7de.length:
            revert with 'NH{q', 50
        mem[0] = 11
        if sub_0242e7de[idx] != address(arg1):
            if idx >= sub_5f96d549.length:
                revert with 'NH{q', 50
            mem[0] = 12
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    return 0
}

function sub_d5a2c5db(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(stor22)
    staticcall stor22.ownerOf(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'AvaxFoxes: You can only join with your own Avax Fox'
    if sub_9c2afd2d[arg1] > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow'
    if block.timestamp < sub_9c2afd2d[arg1]:
        revert with 'NH{q', 17
    if block.timestamp - sub_9c2afd2d[arg1] < 24 * 3600:
        revert with 0, 'Avax Foxes: You cant join hunt'
    sub_9c2afd2d[arg1] = block.timestamp
    if not temp:
        revert with 'NH{q', 18
    if sha3(1, block.timestamp, temp) % temp > 89:
        require ext_code.size(stor23)
        call stor23.0x40c10f19 with:
             gas gas_remaining wei
            args msg.sender, 5 * 10^18
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        if sha3(1, block.timestamp, temp) % temp > 9:
            require ext_code.size(stor23)
            call stor23.0x40c10f19 with:
                 gas gas_remaining wei
                args msg.sender, 10^18
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
}

function getLevel(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if sub_a3bacbcd[arg1] >= 0 and sub_69ad693a[arg1] > -sub_a3bacbcd[arg1] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 'NH{q', 17
    if sub_a3bacbcd[arg1] < 0 and sub_69ad693a[arg1] < -sub_a3bacbcd[arg1] - 0x8000000000000000000000000000000000000000000000000000000000000000:
        revert with 'NH{q', 17
    if sub_a3bacbcd[arg1] + sub_69ad693a[arg1] >= 0 and sub_9d25b329[arg1] > -sub_a3bacbcd[arg1] + -sub_69ad693a[arg1] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 'NH{q', 17
    if sub_a3bacbcd[arg1] + sub_69ad693a[arg1] < 0 and sub_9d25b329[arg1] < -sub_a3bacbcd[arg1] + -sub_69ad693a[arg1] - 0x8000000000000000000000000000000000000000000000000000000000000000:
        revert with 'NH{q', 17
    if sub_a3bacbcd[arg1] + sub_69ad693a[arg1] + sub_9d25b329[arg1] >= 0 and sub_c53917aa[arg1] > -sub_a3bacbcd[arg1] + -sub_69ad693a[arg1] + -sub_9d25b329[arg1] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 'NH{q', 17
    if sub_a3bacbcd[arg1] + sub_69ad693a[arg1] + sub_9d25b329[arg1] < 0 and sub_c53917aa[arg1] < -sub_a3bacbcd[arg1] + -sub_69ad693a[arg1] + -sub_9d25b329[arg1] - 0x8000000000000000000000000000000000000000000000000000000000000000:
        revert with 'NH{q', 17
    if sub_a3bacbcd[arg1] + sub_69ad693a[arg1] + sub_9d25b329[arg1] + sub_c53917aa[arg1] >= 0 and sub_b93cdb85[arg1] > -sub_a3bacbcd[arg1] + -sub_69ad693a[arg1] + -sub_9d25b329[arg1] + -sub_c53917aa[arg1] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 'NH{q', 17
    if sub_a3bacbcd[arg1] + sub_69ad693a[arg1] + sub_9d25b329[arg1] + sub_c53917aa[arg1] < 0 and sub_b93cdb85[arg1] < -sub_a3bacbcd[arg1] + -sub_69ad693a[arg1] + -sub_9d25b329[arg1] + -sub_c53917aa[arg1] - 0x8000000000000000000000000000000000000000000000000000000000000000:
        revert with 'NH{q', 17
    return (sub_a3bacbcd[arg1] + sub_69ad693a[arg1] + sub_9d25b329[arg1] + sub_c53917aa[arg1] + sub_b93cdb85[arg1])
}

function sub_8a607339(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    mem[96] = 0x438b630000000000000000000000000000000000000000000000000000000000
    mem[100] = address(arg1)
    require ext_code.size(stor22)
    staticcall stor22.walletOfOwner(address arg1) with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _4 = mem[96 len 4], address(arg1) << 64
    require mem[96 len 4], address(arg1) << 64 <= test266151307()
    require mem[96 len 4], address(arg1) << 64 + 127 < return_data.size + 96
    _5 = mem[mem[96 len 4], address(arg1) << 64 + 96]
    if mem[mem[96 len 4], address(arg1) << 64 + 96] > test266151307():
        revert with 'NH{q', 65
    if ceil32(return_data.size) + floor32(mem[mem[96 len 4], address(arg1) << 64 + 96]) + 97 > test266151307() or floor32(mem[mem[96 len 4], address(arg1) << 64 + 96]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = ceil32(return_data.size) + floor32(mem[mem[96 len 4], address(arg1) << 64 + 96]) + 97
    mem[ceil32(return_data.size) + 96] = _5
    require _4 + (32 * _5) + 32 <= return_data.size
    idx = 0
    s = _4 + 128
    t = ceil32(return_data.size) + 128
    while idx < _5:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    idx = 0
    while idx < _5:
        if idx >= mem[ceil32(return_data.size) + 96]:
            revert with 'NH{q', 50
        else:
            mem[0] = mem[(32 * idx) + ceil32(return_data.size) + 128]
            mem[32] = 9
            if sub_9c2afd2d[mem[(32 * idx) + ceil32(return_data.size) + 128]] > block.timestamp:
                revert with 0, 'SafeMath: subtraction overflow'
            else:
                if block.timestamp < sub_9c2afd2d[mem[(32 * idx) + ceil32(return_data.size) + 128]]:
                    revert with 'NH{q', 17
                else:
                    if block.timestamp - sub_9c2afd2d[mem[(32 * idx) + ceil32(return_data.size) + 128]] >= 24 * 3600:
                        if idx >= mem[ceil32(return_data.size) + 96]:
                            revert with 'NH{q', 50
                        else:
                            mem[0] = mem[(32 * idx) + ceil32(return_data.size) + 128]
                            mem[32] = 9
                            sub_9c2afd2d[mem[(32 * idx) + ceil32(return_data.size) + 128]] = block.timestamp
                            mem[mem[64] + 32] = 0
                            mem[mem[64] + 64] = block.timestamp
                            mem[mem[64] + 96] = temp
                            _51 = mem[64]
                            mem[mem[64]] = 96
                            mem[64] = mem[64] + 128
                            if not temp:
                                revert with 'NH{q', 18
                            else:
                                if sha3(mem[_51 + 32 len mem[_51]]) % temp <= 89:
                                    if sha3(mem[_51 + 32 len mem[_51]]) % temp <= 9:
                                        if idx == -1:
                                            revert with 'NH{q', 17
                                        else:
                                            idx = idx + 1
                                            continue 
                                    else:
                                        if idx == -1:
                                            revert with 'NH{q', 17
                                        else:
                                            idx = idx + 1
                                            continue 
                                else:
                                    if idx == -1:
                                        revert with 'NH{q', 17
                                    else:
                                        idx = idx + 1
                                        continue 
                    else:
                        if idx == -1:
                            revert with 'NH{q', 17
                        else:
                            idx = idx + 1
                            continue 
    require ext_code.size(stor23)
    call stor23.0x40c10f19 with:
         gas gas_remaining wei
        args address(arg1), 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_ad2c22e1(?) {
    require calldata.size - 4 >= 192
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    require arg6 == arg6
    require ext_code.size(stor22)
    staticcall stor22.ownerOf(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'AvaxFoxes: You can only increase stats of your own Avax Fox'
    if not arg2:
        if not arg3:
            if not arg4:
                if not arg5:
                    if not arg6:
                        revert with 0, 'AvaxFoxes: All stats are given 0'
    idx = 0
    s = 0
    while idx < arg2:
        mem[0] = arg1
        mem[32] = 4
        if sub_a3bacbcd[arg1] >= 0 and idx > -sub_a3bacbcd[arg1] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 'NH{q', 17
        if sub_a3bacbcd[arg1] < 0 and idx < -sub_a3bacbcd[arg1] - 0x8000000000000000000000000000000000000000000000000000000000000000:
            revert with 'NH{q', 17
        if sub_a3bacbcd[arg1] + idx >= 0 and 1 > -sub_a3bacbcd[arg1] + -idx + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 'NH{q', 17
        if sub_a3bacbcd[arg1] + idx < 0 and 1 < -sub_a3bacbcd[arg1] + -idx - 0x8000000000000000000000000000000000000000000000000000000000000000:
            revert with 'NH{q', 17
        if s >= 0 and sub_a3bacbcd[arg1] + idx + 1 > -s + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 'NH{q', 17
        if s < 0 and sub_a3bacbcd[arg1] + idx + 1 < -s - 0x8000000000000000000000000000000000000000000000000000000000000000:
            revert with 'NH{q', 17
        if idx == 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s + sub_a3bacbcd[arg1] + idx + 1
        continue 
    idx = 0
    s = None + 2
    while idx < arg3:
        mem[0] = arg1
        mem[32] = 5
        if sub_69ad693a[arg1] >= 0 and idx > -sub_69ad693a[arg1] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 'NH{q', 17
        if sub_69ad693a[arg1] < 0 and idx < -sub_69ad693a[arg1] - 0x8000000000000000000000000000000000000000000000000000000000000000:
            revert with 'NH{q', 17
        if sub_69ad693a[arg1] + idx >= 0 and 1 > -sub_69ad693a[arg1] + -idx + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 'NH{q', 17
        if sub_69ad693a[arg1] + idx < 0 and 1 < -sub_69ad693a[arg1] + -idx - 0x8000000000000000000000000000000000000000000000000000000000000000:
            revert with 'NH{q', 17
        if s >= 0 and sub_69ad693a[arg1] + idx + 1 > -s + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 'NH{q', 17
        if s < 0 and sub_69ad693a[arg1] + idx + 1 < -s - 0x8000000000000000000000000000000000000000000000000000000000000000:
            revert with 'NH{q', 17
        if idx == 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s + sub_69ad693a[arg1] + idx + 1
        continue 
    idx = 0
    s = (2 * None) + 4
    while idx < arg4:
        mem[0] = arg1
        mem[32] = 6
        if sub_9d25b329[arg1] >= 0 and idx > -sub_9d25b329[arg1] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 'NH{q', 17
        if sub_9d25b329[arg1] < 0 and idx < -sub_9d25b329[arg1] - 0x8000000000000000000000000000000000000000000000000000000000000000:
            revert with 'NH{q', 17
        if sub_9d25b329[arg1] + idx >= 0 and 1 > -sub_9d25b329[arg1] + -idx + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 'NH{q', 17
        if sub_9d25b329[arg1] + idx < 0 and 1 < -sub_9d25b329[arg1] + -idx - 0x8000000000000000000000000000000000000000000000000000000000000000:
            revert with 'NH{q', 17
        if s >= 0 and sub_9d25b329[arg1] + idx + 1 > -s + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 'NH{q', 17
        if s < 0 and sub_9d25b329[arg1] + idx + 1 < -s - 0x8000000000000000000000000000000000000000000000000000000000000000:
            revert with 'NH{q', 17
        if idx == 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s + sub_9d25b329[arg1] + idx + 1
        continue 
    idx = 0
    s = (3 * None) + 6
    while idx < arg5:
        mem[0] = arg1
        mem[32] = 7
        if sub_c53917aa[arg1] >= 0 and idx > -sub_c53917aa[arg1] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 'NH{q', 17
        if sub_c53917aa[arg1] < 0 and idx < -sub_c53917aa[arg1] - 0x8000000000000000000000000000000000000000000000000000000000000000:
            revert with 'NH{q', 17
        if sub_c53917aa[arg1] + idx >= 0 and 1 > -sub_c53917aa[arg1] + -idx + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 'NH{q', 17
        if sub_c53917aa[arg1] + idx < 0 and 1 < -sub_c53917aa[arg1] + -idx - 0x8000000000000000000000000000000000000000000000000000000000000000:
            revert with 'NH{q', 17
        if s >= 0 and sub_c53917aa[arg1] + idx + 1 > -s + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 'NH{q', 17
        if s < 0 and sub_c53917aa[arg1] + idx + 1 < -s - 0x8000000000000000000000000000000000000000000000000000000000000000:
            revert with 'NH{q', 17
        if idx == 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s + sub_c53917aa[arg1] + idx + 1
        continue 
    idx = 0
    s = (4 * None) + 8
    while idx < arg6:
        mem[0] = arg1
        mem[32] = 8
        if sub_b93cdb85[arg1] >= 0 and idx > -sub_b93cdb85[arg1] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 'NH{q', 17
        if sub_b93cdb85[arg1] < 0 and idx < -sub_b93cdb85[arg1] - 0x8000000000000000000000000000000000000000000000000000000000000000:
            revert with 'NH{q', 17
        if sub_b93cdb85[arg1] + idx >= 0 and 1 > -sub_b93cdb85[arg1] + -idx + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 'NH{q', 17
        if sub_b93cdb85[arg1] + idx < 0 and 1 < -sub_b93cdb85[arg1] + -idx - 0x8000000000000000000000000000000000000000000000000000000000000000:
            revert with 'NH{q', 17
        if s >= 0 and sub_b93cdb85[arg1] + idx + 1 > -s + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 'NH{q', 17
        if s < 0 and sub_b93cdb85[arg1] + idx + 1 < -s - 0x8000000000000000000000000000000000000000000000000000000000000000:
            revert with 'NH{q', 17
        if idx == 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s + sub_b93cdb85[arg1] + idx + 1
        continue 
    if (5 * None) + 10 and 10^18 > -1 / (5 * None) + 10:
        revert with 'NH{q', 17
    require ext_code.size(this.address)
    staticcall this.address.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < (5 * 10^18 * None) + 10 * 10^18:
        revert with 0, 'AvaxFoxes: you dont have enough tokens'
    if (5 * None) + 10 and 10^18 > -1 / (5 * None) + 10:
        revert with 'NH{q', 17
    require ext_code.size(stor23)
    call stor23.0x9dc29fac with:
         gas gas_remaining wei
        args msg.sender, (5 * 10^18 * None) + 10 * 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if sub_a3bacbcd[arg1] >= 0 and arg2 > -sub_a3bacbcd[arg1] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 'NH{q', 17
    if sub_a3bacbcd[arg1] < 0 and arg2 < -sub_a3bacbcd[arg1] - 0x8000000000000000000000000000000000000000000000000000000000000000:
        revert with 'NH{q', 17
    sub_a3bacbcd[arg1] += arg2
    if sub_69ad693a[arg1] >= 0 and arg3 > -sub_69ad693a[arg1] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 'NH{q', 17
    if sub_69ad693a[arg1] < 0 and arg3 < -sub_69ad693a[arg1] - 0x8000000000000000000000000000000000000000000000000000000000000000:
        revert with 'NH{q', 17
    sub_69ad693a[arg1] += arg3
    if sub_9d25b329[arg1] >= 0 and arg4 > -sub_9d25b329[arg1] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 'NH{q', 17
    if sub_9d25b329[arg1] < 0 and arg4 < -sub_9d25b329[arg1] - 0x8000000000000000000000000000000000000000000000000000000000000000:
        revert with 'NH{q', 17
    sub_9d25b329[arg1] += arg4
    if sub_c53917aa[arg1] >= 0 and arg5 > -sub_c53917aa[arg1] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 'NH{q', 17
    if sub_c53917aa[arg1] < 0 and arg5 < -sub_c53917aa[arg1] - 0x8000000000000000000000000000000000000000000000000000000000000000:
        revert with 'NH{q', 17
    sub_c53917aa[arg1] += arg5
    if sub_b93cdb85[arg1] >= 0 and arg6 > -sub_b93cdb85[arg1] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 'NH{q', 17
    if sub_b93cdb85[arg1] < 0 and arg6 < -sub_b93cdb85[arg1] - 0x8000000000000000000000000000000000000000000000000000000000000000:
        revert with 'NH{q', 17
    sub_b93cdb85[arg1] += arg6
    if 0 >= sub_0db58691.length:
        revert with 'NH{q', 50
    if sub_a3bacbcd[uint256(stor20.field_0)] >= 0 and sub_69ad693a[uint256(stor20.field_0)] > -sub_a3bacbcd[uint256(stor20.field_0)] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 'NH{q', 17
    if sub_a3bacbcd[uint256(stor20.field_0)] < 0 and sub_69ad693a[uint256(stor20.field_0)] < -sub_a3bacbcd[uint256(stor20.field_0)] - 0x8000000000000000000000000000000000000000000000000000000000000000:
        revert with 'NH{q', 17
    if sub_a3bacbcd[uint256(stor20.field_0)] + sub_69ad693a[uint256(stor20.field_0)] >= 0 and sub_9d25b329[uint256(stor20.field_0)] > -sub_a3bacbcd[uint256(stor20.field_0)] + -sub_69ad693a[uint256(stor20.field_0)] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 'NH{q', 17
    if sub_a3bacbcd[uint256(stor20.field_0)] + sub_69ad693a[uint256(stor20.field_0)] < 0 and sub_9d25b329[uint256(stor20.field_0)] < -sub_a3bacbcd[uint256(stor20.field_0)] + -sub_69ad693a[uint256(stor20.field_0)] - 0x8000000000000000000000000000000000000000000000000000000000000000:
        revert with 'NH{q', 17
    if sub_a3bacbcd[uint256(stor20.field_0)] + sub_69ad693a[uint256(stor20.field_0)] + sub_9d25b329[uint256(stor20.field_0)] >= 0 and sub_c53917aa[uint256(stor20.field_0)] > -sub_a3bacbcd[uint256(stor20.field_0)] + -sub_69ad693a[uint256(stor20.field_0)] + -sub_9d25b329[uint256(stor20.field_0)] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 'NH{q', 17
    if sub_a3bacbcd[uint256(stor20.field_0)] + sub_69ad693a[uint256(stor20.field_0)] + sub_9d25b329[uint256(stor20.field_0)] < 0 and sub_c53917aa[uint256(stor20.field_0)] < -sub_a3bacbcd[uint256(stor20.field_0)] + -sub_69ad693a[uint256(stor20.field_0)] + -sub_9d25b329[uint256(stor20.field_0)] - 0x8000000000000000000000000000000000000000000000000000000000000000:
        revert with 'NH{q', 17
    if sub_a3bacbcd[uint256(stor20.field_0)] + sub_69ad693a[uint256(stor20.field_0)] + sub_9d25b329[uint256(stor20.field_0)] + sub_c53917aa[uint256(stor20.field_0)] >= 0 and sub_b93cdb85[uint256(stor20.field_0)] > -sub_a3bacbcd[uint256(stor20.field_0)] + -sub_69ad693a[uint256(stor20.field_0)] + -sub_9d25b329[uint256(stor20.field_0)] + -sub_c53917aa[uint256(stor20.field_0)] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 'NH{q', 17
    if sub_a3bacbcd[uint256(stor20.field_0)] + sub_69ad693a[uint256(stor20.field_0)] + sub_9d25b329[uint256(stor20.field_0)] + sub_c53917aa[uint256(stor20.field_0)] < 0 and sub_b93cdb85[uint256(stor20.field_0)] < -sub_a3bacbcd[uint256(stor20.field_0)] + -sub_69ad693a[uint256(stor20.field_0)] + -sub_9d25b329[uint256(stor20.field_0)] + -sub_c53917aa[uint256(stor20.field_0)] - 0x8000000000000000000000000000000000000000000000000000000000000000:
        revert with 'NH{q', 17
    if sub_a3bacbcd[arg1] >= 0 and sub_69ad693a[arg1] > -sub_a3bacbcd[arg1] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 'NH{q', 17
    if sub_a3bacbcd[arg1] < 0 and sub_69ad693a[arg1] < -sub_a3bacbcd[arg1] - 0x8000000000000000000000000000000000000000000000000000000000000000:
        revert with 'NH{q', 17
    if sub_a3bacbcd[arg1] + sub_69ad693a[arg1] >= 0 and sub_9d25b329[arg1] > -sub_a3bacbcd[arg1] + -sub_69ad693a[arg1] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 'NH{q', 17
    if sub_a3bacbcd[arg1] + sub_69ad693a[arg1] < 0 and sub_9d25b329[arg1] < -sub_a3bacbcd[arg1] + -sub_69ad693a[arg1] - 0x8000000000000000000000000000000000000000000000000000000000000000:
        revert with 'NH{q', 17
    if sub_a3bacbcd[arg1] + sub_69ad693a[arg1] + sub_9d25b329[arg1] >= 0 and sub_c53917aa[arg1] > -sub_a3bacbcd[arg1] + -sub_69ad693a[arg1] + -sub_9d25b329[arg1] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 'NH{q', 17
    if sub_a3bacbcd[arg1] + sub_69ad693a[arg1] + sub_9d25b329[arg1] < 0 and sub_c53917aa[arg1] < -sub_a3bacbcd[arg1] + -sub_69ad693a[arg1] + -sub_9d25b329[arg1] - 0x8000000000000000000000000000000000000000000000000000000000000000:
        revert with 'NH{q', 17
    if sub_a3bacbcd[arg1] + sub_69ad693a[arg1] + sub_9d25b329[arg1] + sub_c53917aa[arg1] >= 0 and sub_b93cdb85[arg1] > -sub_a3bacbcd[arg1] + -sub_69ad693a[arg1] + -sub_9d25b329[arg1] + -sub_c53917aa[arg1] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 'NH{q', 17
    if sub_a3bacbcd[arg1] + sub_69ad693a[arg1] + sub_9d25b329[arg1] + sub_c53917aa[arg1] < 0 and sub_b93cdb85[arg1] < -sub_a3bacbcd[arg1] + -sub_69ad693a[arg1] + -sub_9d25b329[arg1] + -sub_c53917aa[arg1] - 0x8000000000000000000000000000000000000000000000000000000000000000:
        revert with 'NH{q', 17
    if 1 >= sub_0db58691.length:
        revert with 'NH{q', 50
    if sub_a3bacbcd[arg1] + sub_69ad693a[arg1] + sub_9d25b329[arg1] + sub_c53917aa[arg1] + sub_b93cdb85[arg1] > sub_a3bacbcd[uint256(stor20.field_0)] + sub_69ad693a[uint256(stor20.field_0)] + sub_9d25b329[uint256(stor20.field_0)] + sub_c53917aa[uint256(stor20.field_0)] + sub_b93cdb85[uint256(stor20.field_0)]:
        if 2 >= sub_0db58691.length:
            revert with 'NH{q', 50
        uint256(sub_0db58691.field_512) = uint256(sub_0db58691.field_256)
        if 0 >= sub_0db58691.length:
            revert with 'NH{q', 50
        if 1 >= sub_0db58691.length:
            revert with 'NH{q', 50
        uint256(sub_0db58691.field_256) = uint256(sub_0db58691.field_0)
        if 0 >= sub_0db58691.length:
            revert with 'NH{q', 50
        uint256(sub_0db58691.field_0) = arg1
    else:
        if sub_a3bacbcd[uint256(stor20.field_256)] >= 0 and sub_69ad693a[uint256(stor20.field_256)] > -sub_a3bacbcd[uint256(stor20.field_256)] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 'NH{q', 17
        if sub_a3bacbcd[uint256(stor20.field_256)] < 0 and sub_69ad693a[uint256(stor20.field_256)] < -sub_a3bacbcd[uint256(stor20.field_256)] - 0x8000000000000000000000000000000000000000000000000000000000000000:
            revert with 'NH{q', 17
        if sub_a3bacbcd[uint256(stor20.field_256)] + sub_69ad693a[uint256(stor20.field_256)] >= 0 and sub_9d25b329[uint256(stor20.field_256)] > -sub_a3bacbcd[uint256(stor20.field_256)] + -sub_69ad693a[uint256(stor20.field_256)] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 'NH{q', 17
        if sub_a3bacbcd[uint256(stor20.field_256)] + sub_69ad693a[uint256(stor20.field_256)] < 0 and sub_9d25b329[uint256(stor20.field_256)] < -sub_a3bacbcd[uint256(stor20.field_256)] + -sub_69ad693a[uint256(stor20.field_256)] - 0x8000000000000000000000000000000000000000000000000000000000000000:
            revert with 'NH{q', 17
        if sub_a3bacbcd[uint256(stor20.field_256)] + sub_69ad693a[uint256(stor20.field_256)] + sub_9d25b329[uint256(stor20.field_256)] >= 0 and sub_c53917aa[uint256(stor20.field_256)] > -sub_a3bacbcd[uint256(stor20.field_256)] + -sub_69ad693a[uint256(stor20.field_256)] + -sub_9d25b329[uint256(stor20.field_256)] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 'NH{q', 17
        if sub_a3bacbcd[uint256(stor20.field_256)] + sub_69ad693a[uint256(stor20.field_256)] + sub_9d25b329[uint256(stor20.field_256)] < 0 and sub_c53917aa[uint256(stor20.field_256)] < -sub_a3bacbcd[uint256(stor20.field_256)] + -sub_69ad693a[uint256(stor20.field_256)] + -sub_9d25b329[uint256(stor20.field_256)] - 0x8000000000000000000000000000000000000000000000000000000000000000:
            revert with 'NH{q', 17
        if sub_a3bacbcd[uint256(stor20.field_256)] + sub_69ad693a[uint256(stor20.field_256)] + sub_9d25b329[uint256(stor20.field_256)] + sub_c53917aa[uint256(stor20.field_256)] >= 0 and sub_b93cdb85[uint256(stor20.field_256)] > -sub_a3bacbcd[uint256(stor20.field_256)] + -sub_69ad693a[uint256(stor20.field_256)] + -sub_9d25b329[uint256(stor20.field_256)] + -sub_c53917aa[uint256(stor20.field_256)] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 'NH{q', 17
        if sub_a3bacbcd[uint256(stor20.field_256)] + sub_69ad693a[uint256(stor20.field_256)] + sub_9d25b329[uint256(stor20.field_256)] + sub_c53917aa[uint256(stor20.field_256)] < 0 and sub_b93cdb85[uint256(stor20.field_256)] < -sub_a3bacbcd[uint256(stor20.field_256)] + -sub_69ad693a[uint256(stor20.field_256)] + -sub_9d25b329[uint256(stor20.field_256)] + -sub_c53917aa[uint256(stor20.field_256)] - 0x8000000000000000000000000000000000000000000000000000000000000000:
            revert with 'NH{q', 17
        if sub_a3bacbcd[arg1] >= 0 and sub_69ad693a[arg1] > -sub_a3bacbcd[arg1] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 'NH{q', 17
        if sub_a3bacbcd[arg1] < 0 and sub_69ad693a[arg1] < -sub_a3bacbcd[arg1] - 0x8000000000000000000000000000000000000000000000000000000000000000:
            revert with 'NH{q', 17
        if sub_a3bacbcd[arg1] + sub_69ad693a[arg1] >= 0 and sub_9d25b329[arg1] > -sub_a3bacbcd[arg1] + -sub_69ad693a[arg1] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 'NH{q', 17
        if sub_a3bacbcd[arg1] + sub_69ad693a[arg1] < 0 and sub_9d25b329[arg1] < -sub_a3bacbcd[arg1] + -sub_69ad693a[arg1] - 0x8000000000000000000000000000000000000000000000000000000000000000:
            revert with 'NH{q', 17
        if sub_a3bacbcd[arg1] + sub_69ad693a[arg1] + sub_9d25b329[arg1] >= 0 and sub_c53917aa[arg1] > -sub_a3bacbcd[arg1] + -sub_69ad693a[arg1] + -sub_9d25b329[arg1] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 'NH{q', 17
        if sub_a3bacbcd[arg1] + sub_69ad693a[arg1] + sub_9d25b329[arg1] < 0 and sub_c53917aa[arg1] < -sub_a3bacbcd[arg1] + -sub_69ad693a[arg1] + -sub_9d25b329[arg1] - 0x8000000000000000000000000000000000000000000000000000000000000000:
            revert with 'NH{q', 17
        if sub_a3bacbcd[arg1] + sub_69ad693a[arg1] + sub_9d25b329[arg1] + sub_c53917aa[arg1] >= 0 and sub_b93cdb85[arg1] > -sub_a3bacbcd[arg1] + -sub_69ad693a[arg1] + -sub_9d25b329[arg1] + -sub_c53917aa[arg1] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 'NH{q', 17
        if sub_a3bacbcd[arg1] + sub_69ad693a[arg1] + sub_9d25b329[arg1] + sub_c53917aa[arg1] < 0 and sub_b93cdb85[arg1] < -sub_a3bacbcd[arg1] + -sub_69ad693a[arg1] + -sub_9d25b329[arg1] + -sub_c53917aa[arg1] - 0x8000000000000000000000000000000000000000000000000000000000000000:
            revert with 'NH{q', 17
        if sub_a3bacbcd[arg1] + sub_69ad693a[arg1] + sub_9d25b329[arg1] + sub_c53917aa[arg1] + sub_b93cdb85[arg1] > sub_a3bacbcd[uint256(stor20.field_256)] + sub_69ad693a[uint256(stor20.field_256)] + sub_9d25b329[uint256(stor20.field_256)] + sub_c53917aa[uint256(stor20.field_256)] + sub_b93cdb85[uint256(stor20.field_256)]:
            if 1 >= sub_0db58691.length:
                revert with 'NH{q', 50
            if 2 >= sub_0db58691.length:
                revert with 'NH{q', 50
            uint256(sub_0db58691.field_512) = uint256(sub_0db58691.field_256)
            if 1 >= sub_0db58691.length:
                revert with 'NH{q', 50
            uint256(sub_0db58691.field_256) = arg1
        else:
            if 2 >= sub_0db58691.length:
                revert with 'NH{q', 50
            if sub_a3bacbcd[uint256(stor20.field_512)] >= 0 and sub_69ad693a[uint256(stor20.field_512)] > -sub_a3bacbcd[uint256(stor20.field_512)] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 'NH{q', 17
            if sub_a3bacbcd[uint256(stor20.field_512)] < 0 and sub_69ad693a[uint256(stor20.field_512)] < -sub_a3bacbcd[uint256(stor20.field_512)] - 0x8000000000000000000000000000000000000000000000000000000000000000:
                revert with 'NH{q', 17
            if sub_a3bacbcd[uint256(stor20.field_512)] + sub_69ad693a[uint256(stor20.field_512)] >= 0 and sub_9d25b329[uint256(stor20.field_512)] > -sub_a3bacbcd[uint256(stor20.field_512)] + -sub_69ad693a[uint256(stor20.field_512)] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 'NH{q', 17
            if sub_a3bacbcd[uint256(stor20.field_512)] + sub_69ad693a[uint256(stor20.field_512)] < 0 and sub_9d25b329[uint256(stor20.field_512)] < -sub_a3bacbcd[uint256(stor20.field_512)] + -sub_69ad693a[uint256(stor20.field_512)] - 0x8000000000000000000000000000000000000000000000000000000000000000:
                revert with 'NH{q', 17
            if sub_a3bacbcd[uint256(stor20.field_512)] + sub_69ad693a[uint256(stor20.field_512)] + sub_9d25b329[uint256(stor20.field_512)] >= 0 and sub_c53917aa[uint256(stor20.field_512)] > -sub_a3bacbcd[uint256(stor20.field_512)] + -sub_69ad693a[uint256(stor20.field_512)] + -sub_9d25b329[uint256(stor20.field_512)] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 'NH{q', 17
            if sub_a3bacbcd[uint256(stor20.field_512)] + sub_69ad693a[uint256(stor20.field_512)] + sub_9d25b329[uint256(stor20.field_512)] < 0 and sub_c53917aa[uint256(stor20.field_512)] < -sub_a3bacbcd[uint256(stor20.field_512)] + -sub_69ad693a[uint256(stor20.field_512)] + -sub_9d25b329[uint256(stor20.field_512)] - 0x8000000000000000000000000000000000000000000000000000000000000000:
                revert with 'NH{q', 17
            if sub_a3bacbcd[uint256(stor20.field_512)] + sub_69ad693a[uint256(stor20.field_512)] + sub_9d25b329[uint256(stor20.field_512)] + sub_c53917aa[uint256(stor20.field_512)] >= 0 and sub_b93cdb85[uint256(stor20.field_512)] > -sub_a3bacbcd[uint256(stor20.field_512)] + -sub_69ad693a[uint256(stor20.field_512)] + -sub_9d25b329[uint256(stor20.field_512)] + -sub_c53917aa[uint256(stor20.field_512)] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 'NH{q', 17
            if sub_a3bacbcd[uint256(stor20.field_512)] + sub_69ad693a[uint256(stor20.field_512)] + sub_9d25b329[uint256(stor20.field_512)] + sub_c53917aa[uint256(stor20.field_512)] < 0 and sub_b93cdb85[uint256(stor20.field_512)] < -sub_a3bacbcd[uint256(stor20.field_512)] + -sub_69ad693a[uint256(stor20.field_512)] + -sub_9d25b329[uint256(stor20.field_512)] + -sub_c53917aa[uint256(stor20.field_512)] - 0x8000000000000000000000000000000000000000000000000000000000000000:
                revert with 'NH{q', 17
            if sub_a3bacbcd[arg1] >= 0 and sub_69ad693a[arg1] > -sub_a3bacbcd[arg1] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 'NH{q', 17
            if sub_a3bacbcd[arg1] < 0 and sub_69ad693a[arg1] < -sub_a3bacbcd[arg1] - 0x8000000000000000000000000000000000000000000000000000000000000000:
                revert with 'NH{q', 17
            if sub_a3bacbcd[arg1] + sub_69ad693a[arg1] >= 0 and sub_9d25b329[arg1] > -sub_a3bacbcd[arg1] + -sub_69ad693a[arg1] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 'NH{q', 17
            if sub_a3bacbcd[arg1] + sub_69ad693a[arg1] < 0 and sub_9d25b329[arg1] < -sub_a3bacbcd[arg1] + -sub_69ad693a[arg1] - 0x8000000000000000000000000000000000000000000000000000000000000000:
                revert with 'NH{q', 17
            if sub_a3bacbcd[arg1] + sub_69ad693a[arg1] + sub_9d25b329[arg1] >= 0 and sub_c53917aa[arg1] > -sub_a3bacbcd[arg1] + -sub_69ad693a[arg1] + -sub_9d25b329[arg1] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 'NH{q', 17
            if sub_a3bacbcd[arg1] + sub_69ad693a[arg1] + sub_9d25b329[arg1] < 0 and sub_c53917aa[arg1] < -sub_a3bacbcd[arg1] + -sub_69ad693a[arg1] + -sub_9d25b329[arg1] - 0x8000000000000000000000000000000000000000000000000000000000000000:
                revert with 'NH{q', 17
            if sub_a3bacbcd[arg1] + sub_69ad693a[arg1] + sub_9d25b329[arg1] + sub_c53917aa[arg1] >= 0 and sub_b93cdb85[arg1] > -sub_a3bacbcd[arg1] + -sub_69ad693a[arg1] + -sub_9d25b329[arg1] + -sub_c53917aa[arg1] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 'NH{q', 17
            if sub_a3bacbcd[arg1] + sub_69ad693a[arg1] + sub_9d25b329[arg1] + sub_c53917aa[arg1] < 0 and sub_b93cdb85[arg1] < -sub_a3bacbcd[arg1] + -sub_69ad693a[arg1] + -sub_9d25b329[arg1] + -sub_c53917aa[arg1] - 0x8000000000000000000000000000000000000000000000000000000000000000:
                revert with 'NH{q', 17
            if sub_a3bacbcd[arg1] + sub_69ad693a[arg1] + sub_9d25b329[arg1] + sub_c53917aa[arg1] + sub_b93cdb85[arg1] > sub_a3bacbcd[uint256(stor20.field_512)] + sub_69ad693a[uint256(stor20.field_512)] + sub_9d25b329[uint256(stor20.field_512)] + sub_c53917aa[uint256(stor20.field_512)] + sub_b93cdb85[uint256(stor20.field_512)]:
                if 2 >= sub_0db58691.length:
                    revert with 'NH{q', 50
                uint256(sub_0db58691.field_512) = arg1
}



}
