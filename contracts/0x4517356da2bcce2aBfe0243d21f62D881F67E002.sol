contract main {




// =====================  Runtime code  =====================


#
#  - sub_a760a355(?)
#
address owner;
address treasuryAddress;
address devAddress;
address interestAddress;
address burnAddress;
address stor5;
address sub_0c756bf3Address;
address managementAddress;
address rewardPoolAddress;
address uniswapV2RouterAddress;
uint256 nodePrice;
uint256 rewardPerDay;
uint256 distributionAmount;
uint256 sub_8a55784b;
uint256 sub_b91b740b;
uint256 sub_72f1dbdb;
uint256 claimTax;
uint256 sub_2d5429de;
uint256 sub_6acc95cd;
uint256 sub_8f2a7780;
uint8 sub_ebaf1549;
uint8 distributing; offset 8
uint256 stor20;

function sub_0c756bf3(?) {
    return sub_0c756bf3Address
}

function distributing() {
    return bool(distributing)
}

function uniswapV2Router() {
    return uniswapV2RouterAddress
}

function sub_2d5429de(?) {
    return sub_2d5429de
}

function claimTax() {
    return claimTax
}

function burn() {
    return burnAddress
}

function treasury() {
    return treasuryAddress
}

function rewardPool() {
    return rewardPoolAddress
}

function sub_6acc95cd(?) {
    return sub_6acc95cd
}

function sub_72f1dbdb(?) {
    return sub_72f1dbdb
}

function management() {
    return managementAddress
}

function sub_8a55784b(?) {
    return sub_8a55784b
}

function owner() {
    return owner
}

function sub_8f2a7780(?) {
    return sub_8f2a7780
}

function dev() {
    return devAddress
}

function rewardPerDay() {
    return rewardPerDay
}

function distributionAmount() {
    return distributionAmount
}

function sub_b91b740b(?) {
    return sub_b91b740b
}

function interest() {
    return interestAddress
}

function sub_ebaf1549(?) {
    return bool(sub_ebaf1549)
}

function nodePrice() {
    return nodePrice
}

function sub_28ae3727(?) {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor20 = not sub_ebaf1549 or Mask(248, 8, stor20)
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function getTotalCount() {
    require ext_code.size(managementAddress)
    staticcall managementAddress.0x56d42bb3 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_94471c42(?) {
    require ext_code.size(managementAddress)
    staticcall managementAddress.0x94471c42 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_f90f0eaa(?) {
    require ext_code.size(managementAddress)
    staticcall managementAddress.0xf90f0eaa with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function getNodeCount() {
    require ext_code.size(managementAddress)
    staticcall managementAddress.0x8b730855 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function getTotalReward() {
    require ext_code.size(managementAddress)
    staticcall managementAddress.0x49f81644 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
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

function setAddresses(address[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require calldata.size > arg1 + 35
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg1.length) + 97 < 96 or ceil32(32 * arg1.length) + 97 > test266151307():
        revert with 0, 65
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    s = 128
    idx = arg1 + 36
    while idx < arg1 + (32 * arg1.length) + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        s = s + 32
        idx = idx + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if 0 >= arg1.length:
        revert with 0, 50
    treasuryAddress = mem[140 len 20]
    if 1 >= arg1.length:
        revert with 0, 50
    devAddress = mem[172 len 20]
    if 2 >= arg1.length:
        revert with 0, 50
    interestAddress = mem[204 len 20]
}

function sub_1e91e8f7(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require calldata.size > cd[4] + 35
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    s = 128
    idx = cd[4] + 36
    while idx < cd[4] + (32 * ('cd', 4).length) + 36:
        mem[s] = cd[idx]
        s = s + 32
        idx = idx + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if 0 >= ('cd', 4).length:
        revert with 0, 50
    sub_8a55784b = mem[128]
    if 1 >= ('cd', 4).length:
        revert with 0, 50
    sub_b91b740b = mem[160]
    if 2 >= ('cd', 4).length:
        revert with 0, 50
    sub_72f1dbdb = mem[192]
    if 3 >= ('cd', 4).length:
        revert with 0, 50
    claimTax = mem[224]
    if 4 >= ('cd', 4).length:
        revert with 0, 50
    sub_2d5429de = mem[256]
    if 5 >= ('cd', 4).length:
        revert with 0, 50
    sub_6acc95cd = mem[288]
    if 6 >= ('cd', 4).length:
        revert with 0, 50
    sub_8f2a7780 = mem[320]
    if 7 >= ('cd', 4).length:
        revert with 0, 50
    nodePrice = mem[352]
    if 8 >= ('cd', 4).length:
        revert with 0, 50
    rewardPerDay = mem[384]
    if 9 >= ('cd', 4).length:
        revert with 0, 50
    distributionAmount = mem[416]
}

function sub_44d83112(?) {
    mem[96] = 0x89fef76900000000000000000000000000000000000000000000000000000000
    mem[100] = msg.sender
    require ext_code.size(managementAddress)
    staticcall managementAddress.0x89fef769 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _4 = mem[96 len 4], Mask(224, 32, msg.sender) >> 32
    require mem[96 len 4], Mask(224, 32, msg.sender) >> 32 <= test266151307()
    require return_data.size + 96 > mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 127
    _5 = mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]
    if mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96] > test266151307():
        revert with 0, 65
    if ceil32(ceil32(mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96])) + 1 < 0 or ceil32(return_data.size) + ceil32(ceil32(mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96])) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(ceil32(mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96])) + 97
    mem[ceil32(return_data.size) + 96] = _5
    require _4 + _5 + 32 <= return_data.size
    mem[ceil32(return_data.size) + 128 len ceil32(_5)] = mem[_4 + 128 len ceil32(_5)]
    if ceil32(_5) > _5:
        mem[_5 + ceil32(return_data.size) + 128] = 0
    mem[mem[64]] = 32
    mem[mem[64] + 32] = _5
    mem[mem[64] + 64 len ceil32(_5)] = mem[ceil32(return_data.size) + 128 len ceil32(_5)]
    if ceil32(_5) > _5:
        mem[_5 + mem[64] + 64] = 0
    return Array(len=_5, data=mem[mem[64] + 64 len ceil32(_5)])
}

function sub_48d51919(?) {
    mem[96] = 0x9c339d0500000000000000000000000000000000000000000000000000000000
    mem[100] = msg.sender
    require ext_code.size(managementAddress)
    staticcall managementAddress.0x9c339d05 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _4 = mem[96 len 4], Mask(224, 32, msg.sender) >> 32
    require mem[96 len 4], Mask(224, 32, msg.sender) >> 32 <= test266151307()
    require return_data.size + 96 > mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 127
    _5 = mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]
    if mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96] > test266151307():
        revert with 0, 65
    if ceil32(ceil32(mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96])) + 1 < 0 or ceil32(return_data.size) + ceil32(ceil32(mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96])) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(ceil32(mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96])) + 97
    mem[ceil32(return_data.size) + 96] = _5
    require _4 + _5 + 32 <= return_data.size
    mem[ceil32(return_data.size) + 128 len ceil32(_5)] = mem[_4 + 128 len ceil32(_5)]
    if ceil32(_5) > _5:
        mem[_5 + ceil32(return_data.size) + 128] = 0
    mem[mem[64]] = 32
    mem[mem[64] + 32] = _5
    mem[mem[64] + 64 len ceil32(_5)] = mem[ceil32(return_data.size) + 128 len ceil32(_5)]
    if ceil32(_5) > _5:
        mem[_5 + mem[64] + 64] = 0
    return Array(len=_5, data=mem[mem[64] + 64 len ceil32(_5)])
}

function sub_7fdf4182(?) {
    mem[96] = 0xa716a53b00000000000000000000000000000000000000000000000000000000
    mem[100] = msg.sender
    require ext_code.size(managementAddress)
    staticcall managementAddress.0xa716a53b with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _4 = mem[96 len 4], Mask(224, 32, msg.sender) >> 32
    require mem[96 len 4], Mask(224, 32, msg.sender) >> 32 <= test266151307()
    require return_data.size + 96 > mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 127
    _5 = mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]
    if mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96] > test266151307():
        revert with 0, 65
    if ceil32(ceil32(mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96])) + 1 < 0 or ceil32(return_data.size) + ceil32(ceil32(mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96])) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(ceil32(mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96])) + 97
    mem[ceil32(return_data.size) + 96] = _5
    require _4 + _5 + 32 <= return_data.size
    mem[ceil32(return_data.size) + 128 len ceil32(_5)] = mem[_4 + 128 len ceil32(_5)]
    if ceil32(_5) > _5:
        mem[_5 + ceil32(return_data.size) + 128] = 0
    mem[mem[64]] = 32
    mem[mem[64] + 32] = _5
    mem[mem[64] + 64 len ceil32(_5)] = mem[ceil32(return_data.size) + 128 len ceil32(_5)]
    if ceil32(_5) > _5:
        mem[_5 + mem[64] + 64] = 0
    return Array(len=_5, data=mem[mem[64] + 64 len ceil32(_5)])
}

function sub_81e57325(?) {
    mem[96] = 0x5e9ce5a900000000000000000000000000000000000000000000000000000000
    mem[100] = msg.sender
    require ext_code.size(managementAddress)
    staticcall managementAddress.0x5e9ce5a9 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _4 = mem[96 len 4], Mask(224, 32, msg.sender) >> 32
    require mem[96 len 4], Mask(224, 32, msg.sender) >> 32 <= test266151307()
    require return_data.size + 96 > mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 127
    _5 = mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]
    if mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96] > test266151307():
        revert with 0, 65
    if ceil32(ceil32(mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96])) + 1 < 0 or ceil32(return_data.size) + ceil32(ceil32(mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96])) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(ceil32(mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96])) + 97
    mem[ceil32(return_data.size) + 96] = _5
    require _4 + _5 + 32 <= return_data.size
    mem[ceil32(return_data.size) + 128 len ceil32(_5)] = mem[_4 + 128 len ceil32(_5)]
    if ceil32(_5) > _5:
        mem[_5 + ceil32(return_data.size) + 128] = 0
    mem[mem[64]] = 32
    mem[mem[64] + 32] = _5
    mem[mem[64] + 64 len ceil32(_5)] = mem[ceil32(return_data.size) + 128 len ceil32(_5)]
    if ceil32(_5) > _5:
        mem[_5 + mem[64] + 64] = 0
    return Array(len=_5, data=mem[mem[64] + 64 len ceil32(_5)])
}

function sub_d16370e1(?) {
    mem[96] = 0x1c08484300000000000000000000000000000000000000000000000000000000
    mem[100] = msg.sender
    require ext_code.size(managementAddress)
    staticcall managementAddress.0x1c084843 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _4 = mem[96 len 4], Mask(224, 32, msg.sender) >> 32
    require mem[96 len 4], Mask(224, 32, msg.sender) >> 32 <= test266151307()
    require return_data.size + 96 > mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 127
    _5 = mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]
    if mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96] > test266151307():
        revert with 0, 65
    if ceil32(ceil32(mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96])) + 1 < 0 or ceil32(return_data.size) + ceil32(ceil32(mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96])) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(ceil32(mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96])) + 97
    mem[ceil32(return_data.size) + 96] = _5
    require _4 + _5 + 32 <= return_data.size
    mem[ceil32(return_data.size) + 128 len ceil32(_5)] = mem[_4 + 128 len ceil32(_5)]
    if ceil32(_5) > _5:
        mem[_5 + ceil32(return_data.size) + 128] = 0
    mem[mem[64]] = 32
    mem[mem[64] + 32] = _5
    mem[mem[64] + 64 len ceil32(_5)] = mem[ceil32(return_data.size) + 128 len ceil32(_5)]
    if ceil32(_5) > _5:
        mem[_5 + mem[64] + 64] = 0
    return Array(len=_5, data=mem[mem[64] + 64 len ceil32(_5)])
}

function cashoutAll() {
    if not sub_ebaf1549:
        revert with 0, 'USER HELPER: NOT ENABLED YET'
    require ext_code.size(managementAddress)
    call managementAddress.0x499e862a with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] and claimTax > -1 / ext_call.return_data[0]:
        revert with 0, 17
    require ext_code.size(rewardPoolAddress)
    call rewardPoolAddress.rewardTo(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(this.address), ext_call.return_data[0] * claimTax / 100
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if ext_call.return_data[0] and sub_2d5429de > -1 / ext_call.return_data[0]:
        revert with 0, 17
    mem[ceil32(return_data.size) + 128] = sub_0c756bf3Address
    require ext_code.size(uniswapV2RouterAddress)
    staticcall uniswapV2RouterAddress.WAVAX() with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[ceil32(return_data.size) + 160] = ext_call.return_data[12 len 20]
    mem[(2 * ceil32(return_data.size)) + 196] = uniswapV2RouterAddress
    mem[(2 * ceil32(return_data.size)) + 228] = ext_call.return_data[0] * sub_2d5429de / 100
    require ext_code.size(sub_0c756bf3Address)
    call sub_0c756bf3Address.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args mem[(2 * ceil32(return_data.size)) + 196 len ceil32(return_data.size) + 64]
    mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(4 * ceil32(return_data.size)) + 192] = 0x762b156200000000000000000000000000000000000000000000000000000000
    mem[(4 * ceil32(return_data.size)) + 196] = ext_call.return_data[0] * sub_2d5429de / 100
    idx = 0
    s = (4 * ceil32(return_data.size)) + 388
    t = ceil32(return_data.size) + 128
    while idx < 2:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(uniswapV2RouterAddress)
    call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args ext_call.return_data[0] * sub_2d5429de / 100, 0, 160, address(this.address), block.timestamp, 2, mem[(4 * ceil32(return_data.size)) + 388 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if eth.balance(this.address) > eth.balance(this.address):
        revert with 0, 'SafeMath: subtraction overflow', 0
    if eth.balance(this.address) < eth.balance(this.address):
        revert with 0, 17
    call treasuryAddress with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'PAYMENT FAIL'
    if ext_call.return_data[0] and sub_8f2a7780 > -1 / ext_call.return_data[0]:
        revert with 0, 17
    require ext_code.size(stor5)
    staticcall stor5.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(uniswapV2RouterAddress)
    staticcall uniswapV2RouterAddress.WAVAX() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    revert with 0, 50
}

function cashout(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not sub_ebaf1549:
        revert with 0, 'USER HELPER: NOT ENABLED YET'
    mem[132] = arg1
    require ext_code.size(managementAddress)
    call managementAddress.0xcd160c9f with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] and claimTax > -1 / ext_call.return_data[0]:
        revert with 0, 17
    require ext_code.size(rewardPoolAddress)
    call rewardPoolAddress.rewardTo(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(this.address), ext_call.return_data[0] * claimTax / 100
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if ext_call.return_data[0] and sub_2d5429de > -1 / ext_call.return_data[0]:
        revert with 0, 17
    mem[ceil32(return_data.size) + 128] = sub_0c756bf3Address
    require ext_code.size(uniswapV2RouterAddress)
    staticcall uniswapV2RouterAddress.WAVAX() with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[ceil32(return_data.size) + 160] = ext_call.return_data[12 len 20]
    mem[(2 * ceil32(return_data.size)) + 196] = uniswapV2RouterAddress
    mem[(2 * ceil32(return_data.size)) + 228] = ext_call.return_data[0] * sub_2d5429de / 100
    require ext_code.size(sub_0c756bf3Address)
    call sub_0c756bf3Address.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args mem[(2 * ceil32(return_data.size)) + 196 len ceil32(return_data.size) + 64]
    mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(4 * ceil32(return_data.size)) + 192] = 0x762b156200000000000000000000000000000000000000000000000000000000
    mem[(4 * ceil32(return_data.size)) + 196] = ext_call.return_data[0] * sub_2d5429de / 100
    idx = 0
    s = (4 * ceil32(return_data.size)) + 388
    t = ceil32(return_data.size) + 128
    while idx < 2:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(uniswapV2RouterAddress)
    call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args ext_call.return_data[0] * sub_2d5429de / 100, 0, 160, address(this.address), block.timestamp, 2, mem[(4 * ceil32(return_data.size)) + 388 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if eth.balance(this.address) > eth.balance(this.address):
        revert with 0, 'SafeMath: subtraction overflow', 0
    if eth.balance(this.address) < eth.balance(this.address):
        revert with 0, 17
    call treasuryAddress with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'PAYMENT FAIL'
    if ext_call.return_data[0] and sub_8f2a7780 > -1 / ext_call.return_data[0]:
        revert with 0, 17
    require ext_code.size(stor5)
    staticcall stor5.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(uniswapV2RouterAddress)
    staticcall uniswapV2RouterAddress.WAVAX() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    revert with 0, 50
}

function test() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(rewardPoolAddress)
    call rewardPoolAddress.rewardTo(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(this.address), 10^17
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96] = 26
    mem[128] = 'SafeMath: division by zero'
    mem[160] = 26
    mem[192] = 'SafeMath: division by zero'
    mem[224] = 30
    mem[256] = 'SafeMath: subtraction overflow'
    mem[288] = 2
    mem[320] = sub_0c756bf3Address
    require ext_code.size(uniswapV2RouterAddress)
    staticcall uniswapV2RouterAddress.WAVAX() with:
            gas gas_remaining wei
    mem[384] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[352] = ext_call.return_data[12 len 20]
    mem[ceil32(return_data.size) + 388] = uniswapV2RouterAddress
    mem[ceil32(return_data.size) + 420] = 25 * 10^15
    require ext_code.size(sub_0c756bf3Address)
    call sub_0c756bf3Address.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args uniswapV2RouterAddress, 25 * 10^15
    mem[ceil32(return_data.size) + 384] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(2 * ceil32(return_data.size)) + 384] = 0x762b156200000000000000000000000000000000000000000000000000000000
    mem[(2 * ceil32(return_data.size)) + 388] = 25 * 10^15
    mem[(2 * ceil32(return_data.size)) + 548] = 2
    idx = 0
    s = (2 * ceil32(return_data.size)) + 580
    t = 320
    while idx < 2:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(2 * ceil32(return_data.size)) + 516] = block.timestamp
    require ext_code.size(uniswapV2RouterAddress)
    call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args 25 * 10^15, 0, 160, address(this.address), block.timestamp, 2, mem[(2 * ceil32(return_data.size)) + 580 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(2 * ceil32(return_data.size)) + 384] = 30
    mem[(2 * ceil32(return_data.size)) + 416] = 'SafeMath: subtraction overflow'
    if eth.balance(this.address) > eth.balance(this.address):
        revert with 0, 'SafeMath: subtraction overflow', 0
    if eth.balance(this.address) < eth.balance(this.address):
        revert with 0, 17
    mem[(2 * ceil32(return_data.size)) + 452] = uniswapV2RouterAddress
    mem[(2 * ceil32(return_data.size)) + 484] = 25 * 10^15
    require ext_code.size(sub_0c756bf3Address)
    call sub_0c756bf3Address.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args uniswapV2RouterAddress, 25 * 10^15
    mem[(2 * ceil32(return_data.size)) + 448] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(4 * ceil32(return_data.size)) + 516] = 0
    mem[(4 * ceil32(return_data.size)) + 548] = 0
    mem[(4 * ceil32(return_data.size)) + 580] = 0
    mem[(4 * ceil32(return_data.size)) + 612] = block.timestamp
    require ext_code.size(uniswapV2RouterAddress)
    call uniswapV2RouterAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
         gas gas_remaining wei
        args sub_0c756bf3Address, 25 * 10^15, 0, 0, 0, block.timestamp
    mem[(4 * ceil32(return_data.size)) + 448 len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    mem[(6 * ceil32(return_data.size)) + 448] = 26
    mem[(6 * ceil32(return_data.size)) + 480] = 'SafeMath: division by zero'
    mem[(6 * ceil32(return_data.size)) + 512] = 2
    mem[(6 * ceil32(return_data.size)) + 544] = sub_0c756bf3Address
    require ext_code.size(uniswapV2RouterAddress)
    staticcall uniswapV2RouterAddress.WAVAX() with:
            gas gas_remaining wei
    mem[(6 * ceil32(return_data.size)) + 608] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[(6 * ceil32(return_data.size)) + 576] = ext_call.return_data[12 len 20]
    mem[(7 * ceil32(return_data.size)) + 612] = uniswapV2RouterAddress
    mem[(7 * ceil32(return_data.size)) + 644] = 5 * 10^16
    require ext_code.size(sub_0c756bf3Address)
    call sub_0c756bf3Address.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args uniswapV2RouterAddress, 5 * 10^16
    mem[(7 * ceil32(return_data.size)) + 608] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = (9 * ceil32(return_data.size)) + 608
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(9 * ceil32(return_data.size)) + 608] = 0x762b156200000000000000000000000000000000000000000000000000000000
    mem[(9 * ceil32(return_data.size)) + 612] = 5 * 10^16
    mem[(9 * ceil32(return_data.size)) + 644] = 0
    mem[(9 * ceil32(return_data.size)) + 676] = 160
    mem[(9 * ceil32(return_data.size)) + 772] = 2
    idx = 0
    s = (9 * ceil32(return_data.size)) + 804
    t = (6 * ceil32(return_data.size)) + 544
    while idx < mem[(6 * ceil32(return_data.size)) + 512]:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(9 * ceil32(return_data.size)) + 708] = this.address
    mem[(9 * ceil32(return_data.size)) + 740] = block.timestamp
    require ext_code.size(uniswapV2RouterAddress)
    call uniswapV2RouterAddress.mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len (9 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + 512]) + -mem[64] + 800]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if eth.balance(this.address) > eth.balance(this.address):
        revert with 0, 'SafeMath: subtraction overflow', 0
    if eth.balance(this.address) < eth.balance(this.address):
        revert with 0, 17
    call treasuryAddress with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'PAYMENT FAIL'
}

function sub_b5e157f1(?) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require calldata.size > arg1 + 35
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg1.length
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    if not sub_ebaf1549:
        revert with 0, 'USER HELPER: NOT ENABLED YET'
    mem[ceil32(ceil32(arg1.length)) + 133] = msg.sender
    mem[ceil32(ceil32(arg1.length)) + 165] = this.address
    mem[ceil32(ceil32(arg1.length)) + 197] = nodePrice
    mem[ceil32(ceil32(arg1.length)) + 97] = 100
    mem[ceil32(ceil32(arg1.length)) + 133 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[ceil32(ceil32(arg1.length)) + 129 len 4] = unknown_0x23b872dd(?????)
    mem[ceil32(ceil32(arg1.length)) + 229] = 32
    mem[ceil32(ceil32(arg1.length)) + 261] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(sub_0c756bf3Address):
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(ceil32(arg1.length)) + 293 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), nodePrice, 0
    mem[ceil32(ceil32(arg1.length)) + 393] = 0
    call sub_0c756bf3Address with:
       funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, address(this.address), nodePrice, 0) >> 224
         gas gas_remaining wei
        args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, address(this.address), nodePrice, 0) << 544)
    if return_data.size:
        mem[ceil32(ceil32(arg1.length)) + 293] = return_data.size
        mem[ceil32(ceil32(arg1.length)) + 325 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[ceil32(ceil32(arg1.length)) + 325] == bool(mem[ceil32(ceil32(arg1.length)) + 325])
            if not mem[ceil32(ceil32(arg1.length)) + 325]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 298] = this.address
            require ext_code.size(sub_0c756bf3Address)
            staticcall sub_0c756bf3Address.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 294] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if distributing:
                require ext_code.size(managementAddress)
                call managementAddress.0x90219732 with:
                     gas gas_remaining wei
                    args msg.sender, Array(len=arg1.length, data=arg1[all]), rewardPerDay
            else:
                if ext_call.return_data[0] < distributionAmount:
                    require ext_code.size(managementAddress)
                    call managementAddress.0x90219732 with:
                         gas gas_remaining wei
                        args msg.sender, Array(len=arg1.length, data=arg1[all]), rewardPerDay
                else:
                    distributing = 1
                    mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + ceil32(return_data.size) + 298] = this.address
                    require ext_code.size(sub_0c756bf3Address)
                    staticcall sub_0c756bf3Address.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + ceil32(return_data.size) + 294] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] and sub_8a55784b > -1 / ext_call.return_data[0]:
                        revert with 0, 17
                    if ext_call.return_data[0] and sub_b91b740b > -1 / ext_call.return_data[0]:
                        revert with 0, 17
                    if ext_call.return_data[0] and sub_72f1dbdb > -1 / ext_call.return_data[0]:
                        revert with 0, 17
                    mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 294] = 26
                    mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 326] = 'SafeMath: division by zero'
                    mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 358] = 30
                    mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 390] = 'SafeMath: subtraction overflow'
                    if ext_call.return_data[0] * sub_8a55784b / 100 / 2 > ext_call.return_data[0] * sub_8a55784b / 100:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if ext_call.return_data[0] * sub_8a55784b / 100 < ext_call.return_data[0] * sub_8a55784b / 100 / 2:
                        revert with 0, 17
                    mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 422] = 2
                    mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 454] = sub_0c756bf3Address
                    require ext_code.size(uniswapV2RouterAddress)
                    staticcall uniswapV2RouterAddress.WAVAX() with:
                            gas gas_remaining wei
                    mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 518] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 486] = ext_call.return_data[12 len 20]
                    require ext_code.size(sub_0c756bf3Address)
                    call sub_0c756bf3Address.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args uniswapV2RouterAddress, ext_call.return_data[0] * sub_8a55784b / 100 / 2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 518
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 518] = 0x762b156200000000000000000000000000000000000000000000000000000000
                    mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 522] = ext_call.return_data[0] * sub_8a55784b / 100 / 2
                    mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 554] = 0
                    mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 586] = 160
                    mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 682] = 2
                    idx = 0
                    s = ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 714
                    t = ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 454
                    while idx < mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 422]:
                        mem[s] = mem[t + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 618] = this.address
                    mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 650] = block.timestamp
                    require ext_code.size(uniswapV2RouterAddress)
                    call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args Mask(255, 1, ext_call.return_data[0] * sub_8a55784b / 100), 0, 160, address(this.address), block.timestamp, mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 682 len (32 * mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 422]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 518] = 30
                    mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 550] = 'SafeMath: subtraction overflow'
                    if eth.balance(this.address) > eth.balance(this.address):
                        mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 582] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 586] = 32
                        mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 618] = 30
                        mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 650] = 'SafeMath: subtraction overflow'
                        mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 680] = 0
                        revert with memory
                          from ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 582
                           len (7 * ceil32(return_data.size)) + 100
                    if eth.balance(this.address) < eth.balance(this.address):
                        revert with 0, 17
                    mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 586] = uniswapV2RouterAddress
                    mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 618] = (ext_call.return_data[0] * sub_8a55784b / 100) - (ext_call.return_data[0] * sub_8a55784b / 100 / 2)
                    require ext_code.size(sub_0c756bf3Address)
                    call sub_0c756bf3Address.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 586 len (7 * ceil32(return_data.size)) + 64]
                    mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 582] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + (8 * ceil32(return_data.size)) + 586] = sub_0c756bf3Address
                    mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + (8 * ceil32(return_data.size)) + 618] = (ext_call.return_data[0] * sub_8a55784b / 100) - (ext_call.return_data[0] * sub_8a55784b / 100 / 2)
                    mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + (8 * ceil32(return_data.size)) + 650] = 0
                    mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + (8 * ceil32(return_data.size)) + 682] = 0
                    mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + (8 * ceil32(return_data.size)) + 714] = 0
                    mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + (8 * ceil32(return_data.size)) + 746] = block.timestamp
                    require ext_code.size(uniswapV2RouterAddress)
                    call uniswapV2RouterAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                         gas gas_remaining wei
                        args mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + (8 * ceil32(return_data.size)) + 586 len (13 * ceil32(return_data.size)) + 192]
                    mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + (8 * ceil32(return_data.size)) + 582 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + (9 * ceil32(return_data.size)) + 582] = 2
                    mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + (9 * ceil32(return_data.size)) + 614] = sub_0c756bf3Address
                    require ext_code.size(uniswapV2RouterAddress)
                    staticcall uniswapV2RouterAddress.WAVAX() with:
                            gas gas_remaining wei
                    mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + (9 * ceil32(return_data.size)) + 678] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + (9 * ceil32(return_data.size)) + 646] = ext_call.return_data[12 len 20]
                    mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + (10 * ceil32(return_data.size)) + 682] = uniswapV2RouterAddress
                    mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + (10 * ceil32(return_data.size)) + 714] = ext_call.return_data[0] * sub_b91b740b / 100
                    require ext_code.size(sub_0c756bf3Address)
                    call sub_0c756bf3Address.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args uniswapV2RouterAddress, ext_call.return_data[0] * sub_b91b740b / 100
                    mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + (10 * ceil32(return_data.size)) + 678] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + (12 * ceil32(return_data.size)) + 678
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + (12 * ceil32(return_data.size)) + 678] = 0x762b156200000000000000000000000000000000000000000000000000000000
                    mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + (12 * ceil32(return_data.size)) + 682] = ext_call.return_data[0] * sub_b91b740b / 100
                    mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + (12 * ceil32(return_data.size)) + 714] = 0
                    mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + (12 * ceil32(return_data.size)) + 746] = 160
                    mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + (12 * ceil32(return_data.size)) + 842] = 2
                    idx = 0
                    s = ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + (12 * ceil32(return_data.size)) + 874
                    t = ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + (9 * ceil32(return_data.size)) + 614
                    while idx < mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + (9 * ceil32(return_data.size)) + 582]:
                        mem[s] = mem[t + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(uniswapV2RouterAddress)
                    call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0] * sub_b91b740b / 100, 0, 160, address(this.address), block.timestamp, mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + (12 * ceil32(return_data.size)) + 842 len (32 * mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + (9 * ceil32(return_data.size)) + 582]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if eth.balance(this.address) > eth.balance(this.address):
                        mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + (12 * ceil32(return_data.size)) + 840] = 0
                        revert with 0, 
                                    'SafeMath: subtraction overflow',
                                    mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + (12 * ceil32(return_data.size)) + 840 len (5 * ceil32(return_data.size)) + 2]
                    if eth.balance(this.address) < eth.balance(this.address):
                        revert with 0, 17
                    call treasuryAddress with:
                         gas gas_remaining wei
                    if return_data.size:
                        if not ext_call.success:
                            revert with 0, 
                                        'PAYMENT FAIL',
                                        mem[ceil32(ceil32(arg1.length)) + (15 * ceil32(return_data.size)) + 843 len (7 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(sub_0c756bf3Address):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(ceil32(arg1.length)) + (15 * ceil32(return_data.size)) + 907 len 96] = 0, burnAddress, ext_call.return_data[0] * sub_72f1dbdb / 100, 0
                        call sub_0c756bf3Address with:
                           funct Mask(32, 224, 0, burnAddress, ext_call.return_data[0] * sub_72f1dbdb / 100, 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, 0, burnAddress, ext_call.return_data[0] * sub_72f1dbdb / 100, 0) << 288)
                        if not return_data.size:
                            if not ext_call.success:
                                if arg1.length:
                                    revert with memory
                                      from 128
                                       len arg1.length
                                revert with 0, 'SafeERC20: low-level call failed'
                            if arg1.length:
                                require arg1.length >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[ceil32(ceil32(arg1.length)) + (15 * ceil32(return_data.size)) + 939 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[ceil32(ceil32(arg1.length)) + (15 * ceil32(return_data.size)) + 939] == bool(mem[ceil32(ceil32(arg1.length)) + (15 * ceil32(return_data.size)) + 939])
                                if not mem[ceil32(ceil32(arg1.length)) + (15 * ceil32(return_data.size)) + 939]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        distributing = 0
                        require ext_code.size(managementAddress)
                        call managementAddress.0x90219732 with:
                             gas gas_remaining wei
                            args msg.sender, Array(len=arg1.length, data=mem[128 len ceil32(arg1.length)]), rewardPerDay
                    else:
                        if not ext_call.success:
                            revert with 0, 
                                        'PAYMENT FAIL',
                                        mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + (12 * ceil32(return_data.size)) + 842 len 5 * ceil32(return_data.size)]
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(sub_0c756bf3Address):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + (12 * ceil32(return_data.size)) + 906 len 96] = 0, burnAddress, ext_call.return_data[0] * sub_72f1dbdb / 100, 0
                        call sub_0c756bf3Address with:
                           funct Mask(32, 224, 0, burnAddress, ext_call.return_data[0] * sub_72f1dbdb / 100, 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, 0, burnAddress, ext_call.return_data[0] * sub_72f1dbdb / 100, 0) << 288)
                        if not return_data.size:
                            if not ext_call.success:
                                if arg1.length:
                                    revert with memory
                                      from 128
                                       len arg1.length
                                revert with 0, 'SafeERC20: low-level call failed'
                            if arg1.length:
                                require arg1.length >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            distributing = 0
                            require ext_code.size(managementAddress)
                            call managementAddress.0x90219732 with:
                                 gas gas_remaining wei
                                args msg.sender, Array(len=arg1.length, data=mem[128 len ceil32(arg1.length)]), rewardPerDay
                        else:
                            mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + (12 * ceil32(return_data.size)) + 938 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            'SafeERC20: low-level call failed',
                                            mem[ceil32(ceil32(arg1.length)) + (15 * ceil32(return_data.size)) + 1007 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + (12 * ceil32(return_data.size)) + 938] == bool(mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + (12 * ceil32(return_data.size)) + 938])
                                if not mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + (12 * ceil32(return_data.size)) + 938]:
                                    revert with 0, 
                                                'SafeERC20: ERC20 operation did not succeed',
                                                mem[ceil32(ceil32(arg1.length)) + (15 * ceil32(return_data.size)) + 1039 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            distributing = 0
                            mem[ceil32(ceil32(arg1.length)) + (15 * ceil32(return_data.size)) + 1039 len ceil32(arg1.length)] = mem[128 len ceil32(arg1.length)]
                            if ceil32(arg1.length) > arg1.length:
                                mem[arg1.length + ceil32(ceil32(arg1.length)) + (15 * ceil32(return_data.size)) + 1039] = 0
                            require ext_code.size(managementAddress)
                            call managementAddress.0x90219732 with:
                                 gas gas_remaining wei
                                args msg.sender, Array(len=arg1.length, data=mem[ceil32(ceil32(arg1.length)) + (15 * ceil32(return_data.size)) + 1039 len (3 * ceil32(return_data.size)) + ceil32(arg1.length) - (2 * ceil32(return_data.size))]), rewardPerDay
        else:
            mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 298] = this.address
            require ext_code.size(sub_0c756bf3Address)
            staticcall sub_0c756bf3Address.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 294] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if distributing:
                require ext_code.size(managementAddress)
                call managementAddress.0x90219732 with:
                     gas gas_remaining wei
                    args msg.sender, Array(len=arg1.length, data=arg1[all]), rewardPerDay
            else:
                if ext_call.return_data[0] < distributionAmount:
                    require ext_code.size(managementAddress)
                    call managementAddress.0x90219732 with:
                         gas gas_remaining wei
                        args msg.sender, Array(len=arg1.length, data=arg1[all]), rewardPerDay
                else:
                    distributing = 1
                    mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + ceil32(return_data.size) + 298] = this.address
                    require ext_code.size(sub_0c756bf3Address)
                    staticcall sub_0c756bf3Address.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + ceil32(return_data.size) + 294] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] and sub_8a55784b > -1 / ext_call.return_data[0]:
                        revert with 0, 17
                    if ext_call.return_data[0] and sub_b91b740b > -1 / ext_call.return_data[0]:
                        revert with 0, 17
                    if ext_call.return_data[0] and sub_72f1dbdb > -1 / ext_call.return_data[0]:
                        revert with 0, 17
                    mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 294] = 26
                    mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 326] = 'SafeMath: division by zero'
                    mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 358] = 30
                    mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 390] = 'SafeMath: subtraction overflow'
                    if ext_call.return_data[0] * sub_8a55784b / 100 / 2 > ext_call.return_data[0] * sub_8a55784b / 100:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if ext_call.return_data[0] * sub_8a55784b / 100 < ext_call.return_data[0] * sub_8a55784b / 100 / 2:
                        revert with 0, 17
                    mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 422] = 2
                    mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 454] = sub_0c756bf3Address
                    require ext_code.size(uniswapV2RouterAddress)
                    staticcall uniswapV2RouterAddress.WAVAX() with:
                            gas gas_remaining wei
                    mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 518] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 486] = ext_call.return_data[12 len 20]
                    require ext_code.size(sub_0c756bf3Address)
                    call sub_0c756bf3Address.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args uniswapV2RouterAddress, ext_call.return_data[0] * sub_8a55784b / 100 / 2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 518
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 518] = 0x762b156200000000000000000000000000000000000000000000000000000000
                    mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 522] = ext_call.return_data[0] * sub_8a55784b / 100 / 2
                    mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 554] = 0
                    mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 586] = 160
                    mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 682] = 2
                    idx = 0
                    s = ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 714
                    t = ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 454
                    while idx < mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 422]:
                        mem[s] = mem[t + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 618] = this.address
                    mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 650] = block.timestamp
                    require ext_code.size(uniswapV2RouterAddress)
                    call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args Mask(255, 1, ext_call.return_data[0] * sub_8a55784b / 100), 0, 160, address(this.address), block.timestamp, mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 682 len (32 * mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 422]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 518] = 30
                    mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 550] = 'SafeMath: subtraction overflow'
                    if eth.balance(this.address) > eth.balance(this.address):
                        mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 582] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 586] = 32
                        mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 618] = 30
                        mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 650] = 'SafeMath: subtraction overflow'
                        mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 680] = 0
                        revert with memory
                          from ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 582
                           len (7 * ceil32(return_data.size)) + 100
                    if eth.balance(this.address) < eth.balance(this.address):
                        revert with 0, 17
                    mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 586] = uniswapV2RouterAddress
                    mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 618] = (ext_call.return_data[0] * sub_8a55784b / 100) - (ext_call.return_data[0] * sub_8a55784b / 100 / 2)
                    require ext_code.size(sub_0c756bf3Address)
                    call sub_0c756bf3Address.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 586 len (7 * ceil32(return_data.size)) + 64]
                    mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 582] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + (8 * ceil32(return_data.size)) + 586] = sub_0c756bf3Address
                    mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + (8 * ceil32(return_data.size)) + 618] = (ext_call.return_data[0] * sub_8a55784b / 100) - (ext_call.return_data[0] * sub_8a55784b / 100 / 2)
                    mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + (8 * ceil32(return_data.size)) + 650] = 0
                    mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + (8 * ceil32(return_data.size)) + 682] = 0
                    mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + (8 * ceil32(return_data.size)) + 714] = 0
                    mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + (8 * ceil32(return_data.size)) + 746] = block.timestamp
                    require ext_code.size(uniswapV2RouterAddress)
                    call uniswapV2RouterAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                         gas gas_remaining wei
                        args mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + (8 * ceil32(return_data.size)) + 586 len (13 * ceil32(return_data.size)) + 192]
                    mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + (8 * ceil32(return_data.size)) + 582 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + (9 * ceil32(return_data.size)) + 582] = 2
                    mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + (9 * ceil32(return_data.size)) + 614] = sub_0c756bf3Address
                    require ext_code.size(uniswapV2RouterAddress)
                    staticcall uniswapV2RouterAddress.WAVAX() with:
                            gas gas_remaining wei
                    mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + (9 * ceil32(return_data.size)) + 678] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + (9 * ceil32(return_data.size)) + 646] = ext_call.return_data[12 len 20]
                    mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + (10 * ceil32(return_data.size)) + 682] = uniswapV2RouterAddress
                    mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + (10 * ceil32(return_data.size)) + 714] = ext_call.return_data[0] * sub_b91b740b / 100
                    require ext_code.size(sub_0c756bf3Address)
                    call sub_0c756bf3Address.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args uniswapV2RouterAddress, ext_call.return_data[0] * sub_b91b740b / 100
                    mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + (10 * ceil32(return_data.size)) + 678] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + (12 * ceil32(return_data.size)) + 678
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + (12 * ceil32(return_data.size)) + 678] = 0x762b156200000000000000000000000000000000000000000000000000000000
                    mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + (12 * ceil32(return_data.size)) + 682] = ext_call.return_data[0] * sub_b91b740b / 100
                    mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + (12 * ceil32(return_data.size)) + 714] = 0
                    mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + (12 * ceil32(return_data.size)) + 746] = 160
                    mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + (12 * ceil32(return_data.size)) + 842] = 2
                    idx = 0
                    s = ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + (12 * ceil32(return_data.size)) + 874
                    t = ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + (9 * ceil32(return_data.size)) + 614
                    while idx < mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + (9 * ceil32(return_data.size)) + 582]:
                        mem[s] = mem[t + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + (12 * ceil32(return_data.size)) + 778] = this.address
                    mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + (12 * ceil32(return_data.size)) + 810] = block.timestamp
                    require ext_code.size(uniswapV2RouterAddress)
                    call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + (12 * ceil32(return_data.size)) + (32 * mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + (9 * ceil32(return_data.size)) + 582]) + -mem[64] + 870]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4750 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4750] = 30
                    mem[_4750 + 32] = 'SafeMath: subtraction overflow'
                    if eth.balance(this.address) > eth.balance(this.address):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if eth.balance(this.address) < eth.balance(this.address):
                        revert with 0, 17
                    call treasuryAddress with:
                         gas gas_remaining wei
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'PAYMENT FAIL'
                        _4864 = mem[64]
                        mem[mem[64] + 36] = burnAddress
                        mem[mem[64] + 68] = ext_call.return_data[0] * sub_72f1dbdb / 100
                        _4892 = mem[64]
                        mem[mem[64]] = 68
                        mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                        mem[64] = mem[64] + 164
                        mem[_4864 + 100] = 32
                        mem[_4864 + 132] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(sub_0c756bf3Address):
                            revert with 0, 'Address: call to non-contract'
                        _5004 = mem[_4892]
                        mem[_4864 + 164 len ceil32(mem[_4892])] = mem[_4892 + 32 len ceil32(mem[_4892])]
                        if ceil32(_5004) > _5004:
                            mem[_5004 + _4864 + 164] = 0
                        call sub_0c756bf3Address with:
                             gas gas_remaining wei
                            args mem[_4864 + 168 len _5004 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            distributing = 0
                            mem[_4864 + 164] = 0x9021973200000000000000000000000000000000000000000000000000000000
                            mem[_4864 + 168] = msg.sender
                            mem[_4864 + 200] = 96
                            mem[_4864 + 264] = mem[96]
                            mem[_4864 + 296 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                            if ceil32(mem[96]) > mem[96]:
                                mem[mem[96] + _4864 + 296] = 0
                            mem[_4864 + 232] = rewardPerDay
                            require ext_code.size(managementAddress)
                            call managementAddress.0x90219732 with:
                                 gas gas_remaining wei
                                args msg.sender, Array(len=mem[96], data=mem[_4864 + 296 len ceil32(mem[96])]), rewardPerDay
                        else:
                            mem[_4864 + 164] = return_data.size
                            mem[_4864 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_4864 + 196] == bool(mem[_4864 + 196])
                                if not mem[_4864 + 196]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            distributing = 0
                            mem[_4864 + ceil32(return_data.size) + 165] = 0x9021973200000000000000000000000000000000000000000000000000000000
                            mem[_4864 + ceil32(return_data.size) + 169] = msg.sender
                            mem[_4864 + ceil32(return_data.size) + 201] = 96
                            mem[_4864 + ceil32(return_data.size) + 265] = mem[96]
                            mem[_4864 + ceil32(return_data.size) + 297 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                            if ceil32(mem[96]) > mem[96]:
                                mem[mem[96] + _4864 + ceil32(return_data.size) + 297] = 0
                            require ext_code.size(managementAddress)
                            call managementAddress.0x90219732 with:
                                 gas gas_remaining wei
                                args msg.sender, Array(len=mem[96], data=mem[_4864 + ceil32(return_data.size) + 297 len ceil32(mem[96])]), rewardPerDay
                    else:
                        _4802 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_4802] = return_data.size
                        mem[_4802 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'PAYMENT FAIL'
                        _4865 = mem[64]
                        mem[mem[64] + 36] = burnAddress
                        mem[mem[64] + 68] = ext_call.return_data[0] * sub_72f1dbdb / 100
                        _4894 = mem[64]
                        mem[mem[64]] = 68
                        mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                        mem[64] = mem[64] + 164
                        mem[_4865 + 100] = 32
                        mem[_4865 + 132] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(sub_0c756bf3Address):
                            revert with 0, 'Address: call to non-contract'
                        _5006 = mem[_4894]
                        mem[_4865 + 164 len ceil32(mem[_4894])] = mem[_4894 + 32 len ceil32(mem[_4894])]
                        if ceil32(_5006) > _5006:
                            mem[_5006 + _4865 + 164] = 0
                        call sub_0c756bf3Address with:
                             gas gas_remaining wei
                            args mem[_4865 + 168 len _5006 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            distributing = 0
                            mem[_4865 + 164] = 0x9021973200000000000000000000000000000000000000000000000000000000
                            mem[_4865 + 168] = msg.sender
                            mem[_4865 + 200] = 96
                            mem[_4865 + 264] = mem[96]
                            mem[_4865 + 296 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                            if ceil32(mem[96]) > mem[96]:
                                mem[mem[96] + _4865 + 296] = 0
                            mem[_4865 + 232] = rewardPerDay
                            require ext_code.size(managementAddress)
                            call managementAddress.0x90219732 with:
                                 gas gas_remaining wei
                                args msg.sender, Array(len=mem[96], data=mem[_4865 + 296 len ceil32(mem[96])]), rewardPerDay
                        else:
                            mem[_4865 + 164] = return_data.size
                            mem[_4865 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_4865 + 196] == bool(mem[_4865 + 196])
                                if not mem[_4865 + 196]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            distributing = 0
                            mem[_4865 + ceil32(return_data.size) + 165] = 0x9021973200000000000000000000000000000000000000000000000000000000
                            mem[_4865 + ceil32(return_data.size) + 169] = msg.sender
                            mem[_4865 + ceil32(return_data.size) + 201] = 96
                            mem[_4865 + ceil32(return_data.size) + 265] = mem[96]
                            mem[_4865 + ceil32(return_data.size) + 297 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                            if ceil32(mem[96]) > mem[96]:
                                mem[mem[96] + _4865 + ceil32(return_data.size) + 297] = 0
                            require ext_code.size(managementAddress)
                            call managementAddress.0x90219732 with:
                                 gas gas_remaining wei
                                args msg.sender, Array(len=mem[96], data=mem[_4865 + ceil32(return_data.size) + 297 len ceil32(mem[96])]), rewardPerDay
    else:
        if not ext_call.success:
            if arg1.length:
                revert with arg1[all]
            revert with 0, 'SafeERC20: low-level call failed'
        if not arg1.length:
            mem[ceil32(ceil32(arg1.length)) + 297] = this.address
            require ext_code.size(sub_0c756bf3Address)
            staticcall sub_0c756bf3Address.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[ceil32(ceil32(arg1.length)) + 293] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if distributing:
                require ext_code.size(managementAddress)
                call managementAddress.0x90219732 with:
                     gas gas_remaining wei
                    args msg.sender, Array(len=arg1.length, data=arg1[all]), rewardPerDay
            else:
                if ext_call.return_data[0] < distributionAmount:
                    require ext_code.size(managementAddress)
                    call managementAddress.0x90219732 with:
                         gas gas_remaining wei
                        args msg.sender, Array(len=arg1.length, data=arg1[all]), rewardPerDay
                else:
                    distributing = 1
                    mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 297] = this.address
                    require ext_code.size(sub_0c756bf3Address)
                    staticcall sub_0c756bf3Address.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 293] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] and sub_8a55784b > -1 / ext_call.return_data[0]:
                        revert with 0, 17
                    if ext_call.return_data[0] and sub_b91b740b > -1 / ext_call.return_data[0]:
                        revert with 0, 17
                    if ext_call.return_data[0] and sub_72f1dbdb > -1 / ext_call.return_data[0]:
                        revert with 0, 17
                    mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 293] = 26
                    mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 325] = 'SafeMath: division by zero'
                    mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 357] = 30
                    mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 389] = 'SafeMath: subtraction overflow'
                    if ext_call.return_data[0] * sub_8a55784b / 100 / 2 > ext_call.return_data[0] * sub_8a55784b / 100:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if ext_call.return_data[0] * sub_8a55784b / 100 < ext_call.return_data[0] * sub_8a55784b / 100 / 2:
                        revert with 0, 17
                    mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 421] = 2
                    mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 453] = sub_0c756bf3Address
                    require ext_code.size(uniswapV2RouterAddress)
                    staticcall uniswapV2RouterAddress.WAVAX() with:
                            gas gas_remaining wei
                    mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 517] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 485] = ext_call.return_data[12 len 20]
                    require ext_code.size(sub_0c756bf3Address)
                    call sub_0c756bf3Address.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args uniswapV2RouterAddress, ext_call.return_data[0] * sub_8a55784b / 100 / 2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 517
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 517] = 0x762b156200000000000000000000000000000000000000000000000000000000
                    mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 521] = ext_call.return_data[0] * sub_8a55784b / 100 / 2
                    mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 553] = 0
                    mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 585] = 160
                    mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 681] = 2
                    idx = 0
                    s = ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 713
                    t = ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 453
                    while idx < mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 421]:
                        mem[s] = mem[t + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 617] = this.address
                    mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 649] = block.timestamp
                    require ext_code.size(uniswapV2RouterAddress)
                    call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + (32 * mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 421]) + -mem[64] + 709]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2702 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2702] = 30
                    mem[_2702 + 32] = 'SafeMath: subtraction overflow'
                    if eth.balance(this.address) > eth.balance(this.address):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if eth.balance(this.address) < eth.balance(this.address):
                        revert with 0, 17
                    mem[mem[64] + 4] = uniswapV2RouterAddress
                    mem[mem[64] + 36] = (ext_call.return_data[0] * sub_8a55784b / 100) - (ext_call.return_data[0] * sub_8a55784b / 100 / 2)
                    require ext_code.size(sub_0c756bf3Address)
                    call sub_0c756bf3Address.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args uniswapV2RouterAddress, (ext_call.return_data[0] * sub_8a55784b / 100) - (ext_call.return_data[0] * sub_8a55784b / 100 / 2)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2776 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2776] == bool(mem[_2776])
                    mem[mem[64] + 68] = 0
                    mem[mem[64] + 100] = 0
                    mem[mem[64] + 132] = 0
                    mem[mem[64] + 164] = block.timestamp
                    require ext_code.size(uniswapV2RouterAddress)
                    call uniswapV2RouterAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                         gas gas_remaining wei
                        args sub_0c756bf3Address, (ext_call.return_data[0] * sub_8a55784b / 100) - (ext_call.return_data[0] * sub_8a55784b / 100 / 2), 0, 0, 0, block.timestamp
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _2844 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    mem[_2844 + 32 len 64] = call.data[calldata.size len 64]
                    if not mem[_2844]:
                        revert with 0, 50
                    mem[_2844 + 32] = sub_0c756bf3Address
                    require ext_code.size(uniswapV2RouterAddress)
                    staticcall uniswapV2RouterAddress.WAVAX() with:
                            gas gas_remaining wei
                    mem[_2844 + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _2844 + ceil32(return_data.size) + 96
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if 1 >= mem[_2844]:
                        revert with 0, 50
                    mem[_2844 + 64] = ext_call.return_data[12 len 20]
                    mem[_2844 + ceil32(return_data.size) + 100] = uniswapV2RouterAddress
                    mem[_2844 + ceil32(return_data.size) + 132] = ext_call.return_data[0] * sub_b91b740b / 100
                    require ext_code.size(sub_0c756bf3Address)
                    call sub_0c756bf3Address.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args uniswapV2RouterAddress, ext_call.return_data[0] * sub_b91b740b / 100
                    mem[_2844 + ceil32(return_data.size) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _2844 + (2 * ceil32(return_data.size)) + 96
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    mem[_2844 + (2 * ceil32(return_data.size)) + 96] = 0x762b156200000000000000000000000000000000000000000000000000000000
                    mem[_2844 + (2 * ceil32(return_data.size)) + 100] = ext_call.return_data[0] * sub_b91b740b / 100
                    mem[_2844 + (2 * ceil32(return_data.size)) + 132] = 0
                    mem[_2844 + (2 * ceil32(return_data.size)) + 164] = 160
                    mem[_2844 + (2 * ceil32(return_data.size)) + 260] = mem[_2844]
                    idx = 0
                    s = _2844 + (2 * ceil32(return_data.size)) + 292
                    t = _2844 + 32
                    while idx < mem[_2844]:
                        mem[s] = mem[t + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_2844 + (2 * ceil32(return_data.size)) + 196] = this.address
                    mem[_2844 + (2 * ceil32(return_data.size)) + 228] = block.timestamp
                    require ext_code.size(uniswapV2RouterAddress)
                    call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0] * sub_b91b740b / 100, 0, 160, address(this.address), block.timestamp, mem[_2844 + (2 * ceil32(return_data.size)) + 260 len (32 * mem[_2844]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_2844 + (2 * ceil32(return_data.size)) + 96] = 30
                    mem[_2844 + (2 * ceil32(return_data.size)) + 128] = 'SafeMath: subtraction overflow'
                    if eth.balance(this.address) > eth.balance(this.address):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if eth.balance(this.address) < eth.balance(this.address):
                        revert with 0, 17
                    call treasuryAddress with:
                         gas gas_remaining wei
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'PAYMENT FAIL'
                        mem[_2844 + (2 * ceil32(return_data.size)) + 196] = burnAddress
                        mem[_2844 + (2 * ceil32(return_data.size)) + 228] = ext_call.return_data[0] * sub_72f1dbdb / 100
                        mem[_2844 + (2 * ceil32(return_data.size)) + 160] = 68
                        mem[_2844 + (2 * ceil32(return_data.size)) + 192 len 4] = unknown_0xa9059cbb(?????)
                        mem[_2844 + (2 * ceil32(return_data.size)) + 260] = 32
                        mem[_2844 + (2 * ceil32(return_data.size)) + 292] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(sub_0c756bf3Address):
                            revert with 0, 'Address: call to non-contract'
                        mem[_2844 + (2 * ceil32(return_data.size)) + 324 len 96] = 0, burnAddress, ext_call.return_data[0] * sub_72f1dbdb / 100, 0
                        mem[_2844 + (2 * ceil32(return_data.size)) + 392] = 0
                        call sub_0c756bf3Address with:
                           funct Mask(32, 224, 0, burnAddress, ext_call.return_data[0] * sub_72f1dbdb / 100, 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, 0, burnAddress, ext_call.return_data[0] * sub_72f1dbdb / 100, 0) << 288)
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            distributing = 0
                            mem[_2844 + (2 * ceil32(return_data.size)) + 324] = 0x9021973200000000000000000000000000000000000000000000000000000000
                            mem[_2844 + (2 * ceil32(return_data.size)) + 328] = msg.sender
                            mem[_2844 + (2 * ceil32(return_data.size)) + 360] = 96
                            mem[_2844 + (2 * ceil32(return_data.size)) + 424] = mem[96]
                            mem[_2844 + (2 * ceil32(return_data.size)) + 456 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                            if ceil32(mem[96]) > mem[96]:
                                mem[mem[96] + _2844 + (2 * ceil32(return_data.size)) + 456] = 0
                            require ext_code.size(managementAddress)
                            call managementAddress.0x90219732 with:
                                 gas gas_remaining wei
                                args msg.sender, Array(len=mem[96], data=mem[_2844 + (2 * ceil32(return_data.size)) + 456 len ceil32(mem[96])]), rewardPerDay
                        else:
                            mem[_2844 + (2 * ceil32(return_data.size)) + 324] = return_data.size
                            mem[_2844 + (2 * ceil32(return_data.size)) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_2844 + (2 * ceil32(return_data.size)) + 356] == bool(mem[_2844 + (2 * ceil32(return_data.size)) + 356])
                                if not mem[_2844 + (2 * ceil32(return_data.size)) + 356]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            distributing = 0
                            mem[_2844 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 325] = 0x9021973200000000000000000000000000000000000000000000000000000000
                            mem[_2844 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = msg.sender
                            mem[_2844 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = 96
                            mem[_2844 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = mem[96]
                            mem[_2844 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                            if ceil32(mem[96]) > mem[96]:
                                mem[mem[96] + _2844 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = 0
                            require ext_code.size(managementAddress)
                            call managementAddress.0x90219732 with:
                                 gas gas_remaining wei
                                args msg.sender, Array(len=mem[96], data=mem[_2844 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457 len ceil32(mem[96])]), rewardPerDay
                    else:
                        mem[_2844 + (2 * ceil32(return_data.size)) + 160] = return_data.size
                        mem[_2844 + (2 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'PAYMENT FAIL'
                        mem[_2844 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 197] = burnAddress
                        mem[_2844 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 229] = ext_call.return_data[0] * sub_72f1dbdb / 100
                        mem[_2844 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 161] = 68
                        mem[_2844 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 193 len 4] = unknown_0xa9059cbb(?????)
                        mem[_2844 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 32
                        mem[_2844 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(sub_0c756bf3Address):
                            revert with 0, 'Address: call to non-contract'
                        mem[_2844 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 325 len 96] = 0, burnAddress, ext_call.return_data[0] * sub_72f1dbdb / 100, 0
                        mem[_2844 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = 0
                        call sub_0c756bf3Address with:
                           funct Mask(32, 224, 0, burnAddress, ext_call.return_data[0] * sub_72f1dbdb / 100, 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, 0, burnAddress, ext_call.return_data[0] * sub_72f1dbdb / 100, 0) << 288)
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            distributing = 0
                            mem[_2844 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 325] = 0x9021973200000000000000000000000000000000000000000000000000000000
                            mem[_2844 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = msg.sender
                            mem[_2844 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = 96
                            mem[_2844 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = mem[96]
                            mem[_2844 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                            if ceil32(mem[96]) > mem[96]:
                                mem[mem[96] + _2844 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = 0
                            require ext_code.size(managementAddress)
                            call managementAddress.0x90219732 with:
                                 gas gas_remaining wei
                                args msg.sender, Array(len=mem[96], data=mem[_2844 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457 len ceil32(mem[96])]), rewardPerDay
                        else:
                            mem[_2844 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 325] = return_data.size
                            mem[_2844 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_2844 + (4 * ceil32(return_data.size)) + 326] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_2844 + (4 * ceil32(return_data.size)) + 330] = 32
                                mem[_2844 + (4 * ceil32(return_data.size)) + 362] = 32
                                mem[_2844 + (4 * ceil32(return_data.size)) + 394] = 'SafeERC20: low-level call failed'
                                revert with memory
                                  from _2844 + (4 * ceil32(return_data.size)) + 326
                                   len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_2844 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357] == bool(mem[_2844 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357])
                                if not mem[_2844 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357]:
                                    mem[_2844 + (4 * ceil32(return_data.size)) + 326] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_2844 + (4 * ceil32(return_data.size)) + 330] = 32
                                    mem[_2844 + (4 * ceil32(return_data.size)) + 362] = 42
                                    mem[_2844 + (4 * ceil32(return_data.size)) + 394] = 'SafeERC20: ERC20 operation did n'
                                    mem[_2844 + (4 * ceil32(return_data.size)) + 426] = 0x6f74207375636365656400000000000000000000000000000000000000000000
                                    revert with memory
                                      from _2844 + (4 * ceil32(return_data.size)) + 326
                                       len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
                            distributing = 0
                            mem[_2844 + (4 * ceil32(return_data.size)) + 326] = 0x9021973200000000000000000000000000000000000000000000000000000000
                            mem[_2844 + (4 * ceil32(return_data.size)) + 330] = msg.sender
                            mem[_2844 + (4 * ceil32(return_data.size)) + 362] = 96
                            mem[_2844 + (4 * ceil32(return_data.size)) + 426] = mem[96]
                            mem[_2844 + (4 * ceil32(return_data.size)) + 458 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                            if ceil32(mem[96]) > mem[96]:
                                mem[mem[96] + _2844 + (4 * ceil32(return_data.size)) + 458] = 0
                            mem[_2844 + (4 * ceil32(return_data.size)) + 394] = rewardPerDay
                            require ext_code.size(managementAddress)
                            call managementAddress.0x90219732 with:
                                 gas gas_remaining wei
                                args mem[_2844 + (4 * ceil32(return_data.size)) + 330 len ceil32(mem[96]) + (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 128]
        else:
            require arg1.length >= 32
            require mem[128] == bool(mem[128])
            if not mem[128]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            mem[ceil32(ceil32(arg1.length)) + 297] = this.address
            require ext_code.size(sub_0c756bf3Address)
            staticcall sub_0c756bf3Address.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[ceil32(ceil32(arg1.length)) + 293] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if distributing:
                require ext_code.size(managementAddress)
                call managementAddress.0x90219732 with:
                     gas gas_remaining wei
                    args msg.sender, Array(len=arg1.length, data=arg1[all]), rewardPerDay
            else:
                if ext_call.return_data[0] < distributionAmount:
                    require ext_code.size(managementAddress)
                    call managementAddress.0x90219732 with:
                         gas gas_remaining wei
                        args msg.sender, Array(len=arg1.length, data=arg1[all]), rewardPerDay
                else:
                    distributing = 1
                    mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 297] = this.address
                    require ext_code.size(sub_0c756bf3Address)
                    staticcall sub_0c756bf3Address.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 293] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] and sub_8a55784b > -1 / ext_call.return_data[0]:
                        revert with 0, 17
                    if ext_call.return_data[0] and sub_b91b740b > -1 / ext_call.return_data[0]:
                        revert with 0, 17
                    if ext_call.return_data[0] and sub_72f1dbdb > -1 / ext_call.return_data[0]:
                        revert with 0, 17
                    mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 293] = 26
                    mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 325] = 'SafeMath: division by zero'
                    mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 357] = 30
                    mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 389] = 'SafeMath: subtraction overflow'
                    if ext_call.return_data[0] * sub_8a55784b / 100 / 2 > ext_call.return_data[0] * sub_8a55784b / 100:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if ext_call.return_data[0] * sub_8a55784b / 100 < ext_call.return_data[0] * sub_8a55784b / 100 / 2:
                        revert with 0, 17
                    mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 421] = 2
                    mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 453] = sub_0c756bf3Address
                    require ext_code.size(uniswapV2RouterAddress)
                    staticcall uniswapV2RouterAddress.WAVAX() with:
                            gas gas_remaining wei
                    mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 517] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 485] = ext_call.return_data[12 len 20]
                    require ext_code.size(sub_0c756bf3Address)
                    call sub_0c756bf3Address.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args uniswapV2RouterAddress, ext_call.return_data[0] * sub_8a55784b / 100 / 2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 517
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 517] = 0x762b156200000000000000000000000000000000000000000000000000000000
                    mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 521] = ext_call.return_data[0] * sub_8a55784b / 100 / 2
                    mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 553] = 0
                    mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 585] = 160
                    mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 681] = 2
                    idx = 0
                    s = ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 713
                    t = ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 453
                    while idx < mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 421]:
                        mem[s] = mem[t + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 617] = this.address
                    mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 649] = block.timestamp
                    require ext_code.size(uniswapV2RouterAddress)
                    call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + (32 * mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 421]) + -mem[64] + 709]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2705 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2705] = 30
                    mem[_2705 + 32] = 'SafeMath: subtraction overflow'
                    if eth.balance(this.address) > eth.balance(this.address):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if eth.balance(this.address) < eth.balance(this.address):
                        revert with 0, 17
                    mem[mem[64] + 4] = uniswapV2RouterAddress
                    mem[mem[64] + 36] = (ext_call.return_data[0] * sub_8a55784b / 100) - (ext_call.return_data[0] * sub_8a55784b / 100 / 2)
                    require ext_code.size(sub_0c756bf3Address)
                    call sub_0c756bf3Address.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args uniswapV2RouterAddress, (ext_call.return_data[0] * sub_8a55784b / 100) - (ext_call.return_data[0] * sub_8a55784b / 100 / 2)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2777 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2777] == bool(mem[_2777])
                    mem[mem[64] + 68] = 0
                    mem[mem[64] + 100] = 0
                    mem[mem[64] + 132] = 0
                    mem[mem[64] + 164] = block.timestamp
                    require ext_code.size(uniswapV2RouterAddress)
                    call uniswapV2RouterAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                         gas gas_remaining wei
                        args sub_0c756bf3Address, (ext_call.return_data[0] * sub_8a55784b / 100) - (ext_call.return_data[0] * sub_8a55784b / 100 / 2), 0, 0, 0, block.timestamp
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _2846 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    mem[_2846 + 32 len 64] = call.data[calldata.size len 64]
                    if not mem[_2846]:
                        revert with 0, 50
                    mem[_2846 + 32] = sub_0c756bf3Address
                    require ext_code.size(uniswapV2RouterAddress)
                    staticcall uniswapV2RouterAddress.WAVAX() with:
                            gas gas_remaining wei
                    mem[_2846 + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _2846 + ceil32(return_data.size) + 96
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if 1 >= mem[_2846]:
                        revert with 0, 50
                    mem[_2846 + 64] = ext_call.return_data[12 len 20]
                    mem[_2846 + ceil32(return_data.size) + 100] = uniswapV2RouterAddress
                    mem[_2846 + ceil32(return_data.size) + 132] = ext_call.return_data[0] * sub_b91b740b / 100
                    require ext_code.size(sub_0c756bf3Address)
                    call sub_0c756bf3Address.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args uniswapV2RouterAddress, ext_call.return_data[0] * sub_b91b740b / 100
                    mem[_2846 + ceil32(return_data.size) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _2846 + (2 * ceil32(return_data.size)) + 96
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    mem[_2846 + (2 * ceil32(return_data.size)) + 96] = 0x762b156200000000000000000000000000000000000000000000000000000000
                    mem[_2846 + (2 * ceil32(return_data.size)) + 100] = ext_call.return_data[0] * sub_b91b740b / 100
                    mem[_2846 + (2 * ceil32(return_data.size)) + 132] = 0
                    mem[_2846 + (2 * ceil32(return_data.size)) + 164] = 160
                    mem[_2846 + (2 * ceil32(return_data.size)) + 260] = mem[_2846]
                    idx = 0
                    s = _2846 + (2 * ceil32(return_data.size)) + 292
                    t = _2846 + 32
                    while idx < mem[_2846]:
                        mem[s] = mem[t + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_2846 + (2 * ceil32(return_data.size)) + 196] = this.address
                    mem[_2846 + (2 * ceil32(return_data.size)) + 228] = block.timestamp
                    require ext_code.size(uniswapV2RouterAddress)
                    call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _2846 + (2 * ceil32(return_data.size)) + (32 * mem[_2846]) + -mem[64] + 288]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4747 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4747] = 30
                    mem[_4747 + 32] = 'SafeMath: subtraction overflow'
                    if eth.balance(this.address) > eth.balance(this.address):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if eth.balance(this.address) < eth.balance(this.address):
                        revert with 0, 17
                    call treasuryAddress with:
                         gas gas_remaining wei
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'PAYMENT FAIL'
                        _4862 = mem[64]
                        mem[mem[64] + 36] = burnAddress
                        mem[mem[64] + 68] = ext_call.return_data[0] * sub_72f1dbdb / 100
                        _4888 = mem[64]
                        mem[mem[64]] = 68
                        mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                        mem[64] = mem[64] + 164
                        mem[_4862 + 100] = 32
                        mem[_4862 + 132] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(sub_0c756bf3Address):
                            revert with 0, 'Address: call to non-contract'
                        _5000 = mem[_4888]
                        mem[_4862 + 164 len ceil32(mem[_4888])] = mem[_4888 + 32 len ceil32(mem[_4888])]
                        if ceil32(_5000) > _5000:
                            mem[_5000 + _4862 + 164] = 0
                        call sub_0c756bf3Address with:
                             gas gas_remaining wei
                            args mem[_4862 + 168 len _5000 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            distributing = 0
                            mem[_4862 + 164] = 0x9021973200000000000000000000000000000000000000000000000000000000
                            mem[_4862 + 168] = msg.sender
                            mem[_4862 + 200] = 96
                            mem[_4862 + 264] = mem[96]
                            mem[_4862 + 296 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                            if ceil32(mem[96]) > mem[96]:
                                mem[mem[96] + _4862 + 296] = 0
                            mem[_4862 + 232] = rewardPerDay
                            require ext_code.size(managementAddress)
                            call managementAddress.0x90219732 with:
                                 gas gas_remaining wei
                                args msg.sender, Array(len=mem[96], data=mem[_4862 + 296 len ceil32(mem[96])]), rewardPerDay
                        else:
                            mem[_4862 + 164] = return_data.size
                            mem[_4862 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_4862 + 196] == bool(mem[_4862 + 196])
                                if not mem[_4862 + 196]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            distributing = 0
                            mem[_4862 + ceil32(return_data.size) + 165] = 0x9021973200000000000000000000000000000000000000000000000000000000
                            mem[_4862 + ceil32(return_data.size) + 169] = msg.sender
                            mem[_4862 + ceil32(return_data.size) + 201] = 96
                            mem[_4862 + ceil32(return_data.size) + 265] = mem[96]
                            mem[_4862 + ceil32(return_data.size) + 297 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                            if ceil32(mem[96]) > mem[96]:
                                mem[mem[96] + _4862 + ceil32(return_data.size) + 297] = 0
                            require ext_code.size(managementAddress)
                            call managementAddress.0x90219732 with:
                                 gas gas_remaining wei
                                args msg.sender, Array(len=mem[96], data=mem[_4862 + ceil32(return_data.size) + 297 len ceil32(mem[96])]), rewardPerDay
                    else:
                        _4801 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_4801] = return_data.size
                        mem[_4801 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'PAYMENT FAIL'
                        _4863 = mem[64]
                        mem[mem[64] + 36] = burnAddress
                        mem[mem[64] + 68] = ext_call.return_data[0] * sub_72f1dbdb / 100
                        _4890 = mem[64]
                        mem[mem[64]] = 68
                        mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                        mem[64] = mem[64] + 164
                        mem[_4863 + 100] = 32
                        mem[_4863 + 132] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(sub_0c756bf3Address):
                            revert with 0, 'Address: call to non-contract'
                        _5002 = mem[_4890]
                        mem[_4863 + 164 len ceil32(mem[_4890])] = mem[_4890 + 32 len ceil32(mem[_4890])]
                        if ceil32(_5002) > _5002:
                            mem[_5002 + _4863 + 164] = 0
                        call sub_0c756bf3Address with:
                             gas gas_remaining wei
                            args mem[_4863 + 168 len _5002 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            distributing = 0
                            mem[_4863 + 164] = 0x9021973200000000000000000000000000000000000000000000000000000000
                            mem[_4863 + 168] = msg.sender
                            mem[_4863 + 200] = 96
                            mem[_4863 + 264] = mem[96]
                            mem[_4863 + 296 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                            if ceil32(mem[96]) > mem[96]:
                                mem[mem[96] + _4863 + 296] = 0
                            mem[_4863 + 232] = rewardPerDay
                            require ext_code.size(managementAddress)
                            call managementAddress.0x90219732 with:
                                 gas gas_remaining wei
                                args msg.sender, Array(len=mem[96], data=mem[_4863 + 296 len ceil32(mem[96])]), rewardPerDay
                        else:
                            mem[_4863 + 164] = return_data.size
                            mem[_4863 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_4863 + 196] == bool(mem[_4863 + 196])
                                if not mem[_4863 + 196]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            distributing = 0
                            mem[_4863 + ceil32(return_data.size) + 165] = 0x9021973200000000000000000000000000000000000000000000000000000000
                            mem[_4863 + ceil32(return_data.size) + 169] = msg.sender
                            mem[_4863 + ceil32(return_data.size) + 201] = 96
                            mem[_4863 + ceil32(return_data.size) + 265] = mem[96]
                            mem[_4863 + ceil32(return_data.size) + 297 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                            if ceil32(mem[96]) > mem[96]:
                                mem[mem[96] + _4863 + ceil32(return_data.size) + 297] = 0
                            require ext_code.size(managementAddress)
                            call managementAddress.0x90219732 with:
                                 gas gas_remaining wei
                                args msg.sender, Array(len=mem[96], data=mem[_4863 + ceil32(return_data.size) + 297 len ceil32(mem[96])]), rewardPerDay
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function _fallback() payable {
    if calldata.size < 4:
        require not calldata.size
    else:
        if unknown_0x81e57325(?????) > uint32(call.func_hash) >> 224:
            if unknown_0x48d51919(?????) > uint32(call.func_hash) >> 224:
                if unknown_0x2d5429de(?????) <= uint32(call.func_hash) >> 224:
                    if unknown_0x2d5429de(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return sub_2d5429de
                    if unknown_0x39bf397e(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require ext_code.size(managementAddress)
                        staticcall managementAddress.0x8b730855 with:
                                gas gas_remaining wei
                               args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        return ext_call.return_data[0]
                    if unknown_0x448883d7(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return claimTax
                    if uint32(call.func_hash) >> 224 != unknown_0x44d83112(?????):
                        require unknown_0x44df8e70(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        return burnAddress
                    require not msg.value
                    mem[128] = 0x89fef76900000000000000000000000000000000000000000000000000000000
                    mem[132] = msg.sender
                    require ext_code.size(managementAddress)
                    staticcall managementAddress.0x89fef769 with:
                            gas gas_remaining wei
                           args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _103 = mem[128 len 4], Mask(224, 32, msg.sender) >> 32
                    require mem[128 len 4], Mask(224, 32, msg.sender) >> 32 <= test266151307()
                    require return_data.size + 128 > mem[128 len 4], Mask(224, 32, msg.sender) >> 32 + 159
                    _115 = mem[mem[128 len 4], Mask(224, 32, msg.sender) >> 32 + 128]
                    if mem[mem[128 len 4], Mask(224, 32, msg.sender) >> 32 + 128] > test266151307():
                        revert with 0, 65
                    if ceil32(ceil32(mem[mem[128 len 4], Mask(224, 32, msg.sender) >> 32 + 128])) + 1 < 0 or ceil32(return_data.size) + ceil32(ceil32(mem[mem[128 len 4], Mask(224, 32, msg.sender) >> 32 + 128])) + 129 > test266151307():
                        revert with 0, 65
                    mem[64] = ceil32(return_data.size) + ceil32(ceil32(mem[mem[128 len 4], Mask(224, 32, msg.sender) >> 32 + 128])) + 129
                    mem[ceil32(return_data.size) + 128] = mem[mem[128 len 4], Mask(224, 32, msg.sender) >> 32 + 128]
                    require _103 + _115 + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 160 len ceil32(_115)] = mem[_103 + 160 len ceil32(_115)]
                    if ceil32(_115) > _115:
                        mem[_115 + ceil32(return_data.size) + 160] = 0
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = _115
                    mem[mem[64] + 64 len ceil32(_115)] = mem[ceil32(return_data.size) + 160 len ceil32(_115)]
                    if ceil32(_115) > _115:
                        mem[_115 + mem[64] + 64] = 0
                    return Array(len=_115, data=mem[mem[64] + 64 len ceil32(_115)])
                if unknown_0x0c756bf3(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return sub_0c756bf3Address
                if unknown_0x12c1083d(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return bool(distributing)
                if unknown_0x1694505e(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return uniswapV2RouterAddress
                if uint32(call.func_hash) >> 224 != unknown_0x1e91e8f7(?????):
                    require unknown_0x28ae3727(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    stor20 = not sub_ebaf1549 or Mask(248, 8, stor20)
                else:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require cd[4] <= test266151307()
                    require calldata.size > cd[4] + 35
                    if ('cd', 4).length > test266151307():
                        revert with 0, 65
                    if ceil32(32 * ('cd', 4).length) + 129 < 128 or ceil32(32 * ('cd', 4).length) + 129 > test266151307():
                        revert with 0, 65
                    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
                    s = 160
                    idx = cd[4] + 36
                    while idx < cd[4] + (32 * ('cd', 4).length) + 36:
                        mem[s] = cd[idx]
                        s = s + 32
                        idx = idx + 32
                        continue 
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    if 0 >= ('cd', 4).length:
                        revert with 0, 50
                    sub_8a55784b = mem[160]
                    if 1 >= ('cd', 4).length:
                        revert with 0, 50
                    sub_b91b740b = mem[192]
                    if 2 >= ('cd', 4).length:
                        revert with 0, 50
                    sub_72f1dbdb = mem[224]
                    if 3 >= ('cd', 4).length:
                        revert with 0, 50
                    claimTax = mem[256]
                    if 4 >= ('cd', 4).length:
                        revert with 0, 50
                    sub_2d5429de = mem[288]
                    if 5 >= ('cd', 4).length:
                        revert with 0, 50
                    sub_6acc95cd = mem[320]
                    if 6 >= ('cd', 4).length:
                        revert with 0, 50
                    sub_8f2a7780 = mem[352]
                    if 7 >= ('cd', 4).length:
                        revert with 0, 50
                    nodePrice = mem[384]
                    if 8 >= ('cd', 4).length:
                        revert with 0, 50
                    rewardPerDay = mem[416]
                    if 9 >= ('cd', 4).length:
                        revert with 0, 50
                    distributionAmount = mem[448]
            if unknown_0x6acc95cd(?????) <= uint32(call.func_hash) >> 224:
                if unknown_0x6acc95cd(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return sub_6acc95cd
                if unknown_0x715018a6(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    emit OwnershipTransferred(owner, 0);
                    owner = 0
                if unknown_0x72f1dbdb(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return sub_72f1dbdb
                if unknown_0x7d1fcbfa(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require ext_code.size(managementAddress)
                    staticcall managementAddress.0x49f81644 with:
                            gas gas_remaining wei
                           args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    return ext_call.return_data[0]
                require unknown_0x7fdf4182(?????) == uint32(call.func_hash) >> 224
                require not msg.value
                mem[128] = 0xa716a53b00000000000000000000000000000000000000000000000000000000
                mem[132] = msg.sender
                require ext_code.size(managementAddress)
                staticcall managementAddress.0xa716a53b with:
                        gas gas_remaining wei
                       args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 128
                require return_data.size >= 32
                _109 = mem[128 len 4], Mask(224, 32, msg.sender) >> 32
                require mem[128 len 4], Mask(224, 32, msg.sender) >> 32 <= test266151307()
                require return_data.size + 128 > mem[128 len 4], Mask(224, 32, msg.sender) >> 32 + 159
                _119 = mem[mem[128 len 4], Mask(224, 32, msg.sender) >> 32 + 128]
                if mem[mem[128 len 4], Mask(224, 32, msg.sender) >> 32 + 128] > test266151307():
                    revert with 0, 65
                if ceil32(ceil32(mem[mem[128 len 4], Mask(224, 32, msg.sender) >> 32 + 128])) + 1 < 0 or ceil32(return_data.size) + ceil32(ceil32(mem[mem[128 len 4], Mask(224, 32, msg.sender) >> 32 + 128])) + 129 > test266151307():
                    revert with 0, 65
                mem[64] = ceil32(return_data.size) + ceil32(ceil32(mem[mem[128 len 4], Mask(224, 32, msg.sender) >> 32 + 128])) + 129
                mem[ceil32(return_data.size) + 128] = mem[mem[128 len 4], Mask(224, 32, msg.sender) >> 32 + 128]
                require _109 + _119 + 32 <= return_data.size
                mem[ceil32(return_data.size) + 160 len ceil32(_119)] = mem[_109 + 160 len ceil32(_119)]
                if ceil32(_119) > _119:
                    mem[_119 + ceil32(return_data.size) + 160] = 0
                mem[mem[64]] = 32
                mem[mem[64] + 32] = _119
                mem[mem[64] + 64 len ceil32(_119)] = mem[ceil32(return_data.size) + 160 len ceil32(_119)]
                if ceil32(_119) > _119:
                    mem[_119 + mem[64] + 64] = 0
                return Array(len=_119, data=mem[mem[64] + 64 len ceil32(_119)])
            if unknown_0x48d51919(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                mem[128] = 0x9c339d0500000000000000000000000000000000000000000000000000000000
                mem[132] = msg.sender
                require ext_code.size(managementAddress)
                staticcall managementAddress.0x9c339d05 with:
                        gas gas_remaining wei
                       args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 128
                require return_data.size >= 32
                _72 = mem[128 len 4], Mask(224, 32, msg.sender) >> 32
                require mem[128 len 4], Mask(224, 32, msg.sender) >> 32 <= test266151307()
                require return_data.size + 128 > mem[128 len 4], Mask(224, 32, msg.sender) >> 32 + 159
                _91 = mem[mem[128 len 4], Mask(224, 32, msg.sender) >> 32 + 128]
                if mem[mem[128 len 4], Mask(224, 32, msg.sender) >> 32 + 128] > test266151307():
                    revert with 0, 65
                if ceil32(ceil32(mem[mem[128 len 4], Mask(224, 32, msg.sender) >> 32 + 128])) + 1 < 0 or ceil32(return_data.size) + ceil32(ceil32(mem[mem[128 len 4], Mask(224, 32, msg.sender) >> 32 + 128])) + 129 > test266151307():
                    revert with 0, 65
                mem[64] = ceil32(return_data.size) + ceil32(ceil32(mem[mem[128 len 4], Mask(224, 32, msg.sender) >> 32 + 128])) + 129
                mem[ceil32(return_data.size) + 128] = mem[mem[128 len 4], Mask(224, 32, msg.sender) >> 32 + 128]
                require _72 + _91 + 32 <= return_data.size
                mem[ceil32(return_data.size) + 160 len ceil32(_91)] = mem[_72 + 160 len ceil32(_91)]
                if ceil32(_91) > _91:
                    mem[_91 + ceil32(return_data.size) + 160] = 0
                mem[mem[64]] = 32
                mem[mem[64] + 32] = _91
                mem[mem[64] + 64 len ceil32(_91)] = mem[ceil32(return_data.size) + 160 len ceil32(_91)]
                if ceil32(_91) > _91:
                    mem[_91 + mem[64] + 64] = 0
                return Array(len=_91, data=mem[mem[64] + 64 len ceil32(_91)])
            if uint32(call.func_hash) >> 224 != unknown_0x54557973(?????):
                if uint32(call.func_hash) >> 224 != unknown_0x56d42bb3(?????):
                    if unknown_0x61d027b3(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return treasuryAddress
                    require unknown_0x66666aa9(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    return rewardPoolAddress
                require not msg.value
                require ext_code.size(managementAddress)
                staticcall managementAddress.0x56d42bb3 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                return ext_call.return_data[0]
            require not msg.value
            if not sub_ebaf1549:
                revert with 0, 'USER HELPER: NOT ENABLED YET'
            require ext_code.size(managementAddress)
            call managementAddress.0x499e862a with:
                 gas gas_remaining wei
                args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] and claimTax > -1 / ext_call.return_data[0]:
                revert with 0, 17
            require ext_code.size(rewardPoolAddress)
            call rewardPoolAddress.rewardTo(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(this.address), ext_call.return_data[0] * claimTax / 100
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if ext_call.return_data[0] and sub_2d5429de > -1 / ext_call.return_data[0]:
                revert with 0, 17
            mem[ceil32(return_data.size) + 160] = sub_0c756bf3Address
            require ext_code.size(uniswapV2RouterAddress)
            staticcall uniswapV2RouterAddress.WAVAX() with:
                    gas gas_remaining wei
            mem[ceil32(return_data.size) + 224] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            mem[ceil32(return_data.size) + 192] = ext_call.return_data[12 len 20]
            mem[(2 * ceil32(return_data.size)) + 228] = uniswapV2RouterAddress
            mem[(2 * ceil32(return_data.size)) + 260] = ext_call.return_data[0] * sub_2d5429de / 100
            require ext_code.size(sub_0c756bf3Address)
            call sub_0c756bf3Address.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args mem[(2 * ceil32(return_data.size)) + 228 len ceil32(return_data.size) + 64]
            mem[(2 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            mem[(4 * ceil32(return_data.size)) + 224] = 0x762b156200000000000000000000000000000000000000000000000000000000
            mem[(4 * ceil32(return_data.size)) + 228] = ext_call.return_data[0] * sub_2d5429de / 100
            idx = 0
            s = (4 * ceil32(return_data.size)) + 420
            t = ceil32(return_data.size) + 160
            while idx < 2:
                mem[s] = mem[t + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(uniswapV2RouterAddress)
            call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args ext_call.return_data[0] * sub_2d5429de / 100, 0, 160, address(this.address), block.timestamp, 2, mem[(4 * ceil32(return_data.size)) + 420 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if eth.balance(this.address) > eth.balance(this.address):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if eth.balance(this.address) < eth.balance(this.address):
                revert with 0, 17
            call treasuryAddress with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with 0, 'PAYMENT FAIL'
            if ext_call.return_data[0] and sub_8f2a7780 > -1 / ext_call.return_data[0]:
                revert with 0, 17
            require ext_code.size(stor5)
            staticcall stor5.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(uniswapV2RouterAddress)
            staticcall uniswapV2RouterAddress.WAVAX() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            revert with 0, 50
        if unknown_0xb0e0c681(?????) <= uint32(call.func_hash) >> 224:
            if unknown_0xd16370e1(?????) <= uint32(call.func_hash) >> 224:
                if unknown_0xd16370e1(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    mem[128] = 0x1c08484300000000000000000000000000000000000000000000000000000000
                    mem[132] = msg.sender
                    require ext_code.size(managementAddress)
                    staticcall managementAddress.0x1c084843 with:
                            gas gas_remaining wei
                           args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _81 = mem[128 len 4], Mask(224, 32, msg.sender) >> 32
                    require mem[128 len 4], Mask(224, 32, msg.sender) >> 32 <= test266151307()
                    require return_data.size + 128 > mem[128 len 4], Mask(224, 32, msg.sender) >> 32 + 159
                    _98 = mem[mem[128 len 4], Mask(224, 32, msg.sender) >> 32 + 128]
                    if mem[mem[128 len 4], Mask(224, 32, msg.sender) >> 32 + 128] > test266151307():
                        revert with 0, 65
                    if ceil32(ceil32(mem[mem[128 len 4], Mask(224, 32, msg.sender) >> 32 + 128])) + 1 < 0 or ceil32(return_data.size) + ceil32(ceil32(mem[mem[128 len 4], Mask(224, 32, msg.sender) >> 32 + 128])) + 129 > test266151307():
                        revert with 0, 65
                    mem[64] = ceil32(return_data.size) + ceil32(ceil32(mem[mem[128 len 4], Mask(224, 32, msg.sender) >> 32 + 128])) + 129
                    mem[ceil32(return_data.size) + 128] = mem[mem[128 len 4], Mask(224, 32, msg.sender) >> 32 + 128]
                    require _81 + _98 + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 160 len ceil32(_98)] = mem[_81 + 160 len ceil32(_98)]
                    if ceil32(_98) > _98:
                        mem[_98 + ceil32(return_data.size) + 160] = 0
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = _98
                    mem[mem[64] + 64 len ceil32(_98)] = mem[ceil32(return_data.size) + 160 len ceil32(_98)]
                    if ceil32(_98) > _98:
                        mem[_98 + mem[64] + 64] = 0
                    return Array(len=_98, data=mem[mem[64] + 64 len ceil32(_98)])
                if unknown_0xebaf1549(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return bool(sub_ebaf1549)
                if unknown_0xf1fec2b8(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return nodePrice
                if unknown_0xf2fde38b(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require cd[4] == address(cd[4])
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    if not address(cd[4]):
                        revert with 0, 'Ownable: new owner is the zero address'
                    emit OwnershipTransferred(owner, address(cd[4]));
                    owner = address(cd[4])
                else:
                    if uint32(call.func_hash) >> 224 != unknown_0xf8a8fd6d(?????):
                        require unknown_0xf90f0eaa(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        require ext_code.size(managementAddress)
                        staticcall managementAddress.0xf90f0eaa with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        return ext_call.return_data[0]
                    require not msg.value
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    require ext_code.size(rewardPoolAddress)
                    call rewardPoolAddress.rewardTo(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(this.address), 10^17
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[128] = 26
                    mem[160] = 'SafeMath: division by zero'
                    mem[192] = 26
                    mem[224] = 'SafeMath: division by zero'
                    mem[256] = 30
                    mem[288] = 'SafeMath: subtraction overflow'
                    mem[320] = 2
                    mem[352] = sub_0c756bf3Address
                    require ext_code.size(uniswapV2RouterAddress)
                    staticcall uniswapV2RouterAddress.WAVAX() with:
                            gas gas_remaining wei
                    mem[416] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[384] = ext_call.return_data[12 len 20]
                    mem[ceil32(return_data.size) + 420] = uniswapV2RouterAddress
                    mem[ceil32(return_data.size) + 452] = 25 * 10^15
                    require ext_code.size(sub_0c756bf3Address)
                    call sub_0c756bf3Address.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args uniswapV2RouterAddress, 25 * 10^15
                    mem[ceil32(return_data.size) + 416] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    mem[(2 * ceil32(return_data.size)) + 416] = 0x762b156200000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(return_data.size)) + 420] = 25 * 10^15
                    mem[(2 * ceil32(return_data.size)) + 580] = 2
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + 612
                    t = 352
                    while idx < 2:
                        mem[s] = mem[t + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(2 * ceil32(return_data.size)) + 548] = block.timestamp
                    require ext_code.size(uniswapV2RouterAddress)
                    call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args 25 * 10^15, 0, 160, address(this.address), block.timestamp, 2, mem[(2 * ceil32(return_data.size)) + 612 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(2 * ceil32(return_data.size)) + 416] = 30
                    mem[(2 * ceil32(return_data.size)) + 448] = 'SafeMath: subtraction overflow'
                    if eth.balance(this.address) > eth.balance(this.address):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if eth.balance(this.address) < eth.balance(this.address):
                        revert with 0, 17
                    mem[(2 * ceil32(return_data.size)) + 484] = uniswapV2RouterAddress
                    mem[(2 * ceil32(return_data.size)) + 516] = 25 * 10^15
                    require ext_code.size(sub_0c756bf3Address)
                    call sub_0c756bf3Address.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args uniswapV2RouterAddress, 25 * 10^15
                    mem[(2 * ceil32(return_data.size)) + 480] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    mem[(4 * ceil32(return_data.size)) + 548] = 0
                    mem[(4 * ceil32(return_data.size)) + 580] = 0
                    mem[(4 * ceil32(return_data.size)) + 612] = 0
                    mem[(4 * ceil32(return_data.size)) + 644] = block.timestamp
                    require ext_code.size(uniswapV2RouterAddress)
                    call uniswapV2RouterAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                         gas gas_remaining wei
                        args sub_0c756bf3Address, 25 * 10^15, 0, 0, 0, block.timestamp
                    mem[(4 * ceil32(return_data.size)) + 480 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    mem[(6 * ceil32(return_data.size)) + 544] = 2
                    mem[(6 * ceil32(return_data.size)) + 576] = sub_0c756bf3Address
                    require ext_code.size(uniswapV2RouterAddress)
                    staticcall uniswapV2RouterAddress.WAVAX() with:
                            gas gas_remaining wei
                    mem[(6 * ceil32(return_data.size)) + 640] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[(6 * ceil32(return_data.size)) + 608] = ext_call.return_data[12 len 20]
                    mem[(7 * ceil32(return_data.size)) + 644] = uniswapV2RouterAddress
                    mem[(7 * ceil32(return_data.size)) + 676] = 5 * 10^16
                    require ext_code.size(sub_0c756bf3Address)
                    call sub_0c756bf3Address.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args uniswapV2RouterAddress, 5 * 10^16
                    mem[(7 * ceil32(return_data.size)) + 640] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = (9 * ceil32(return_data.size)) + 640
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    mem[(9 * ceil32(return_data.size)) + 640] = 0x762b156200000000000000000000000000000000000000000000000000000000
                    mem[(9 * ceil32(return_data.size)) + 644] = 5 * 10^16
                    mem[(9 * ceil32(return_data.size)) + 676] = 0
                    mem[(9 * ceil32(return_data.size)) + 708] = 160
                    mem[(9 * ceil32(return_data.size)) + 804] = 2
                    idx = 0
                    s = (9 * ceil32(return_data.size)) + 836
                    t = (6 * ceil32(return_data.size)) + 576
                    while idx < mem[(6 * ceil32(return_data.size)) + 544]:
                        mem[s] = mem[t + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(uniswapV2RouterAddress)
                    call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args 5 * 10^16, 0, 160, address(this.address), block.timestamp, mem[(9 * ceil32(return_data.size)) + 804 len (32 * mem[(6 * ceil32(return_data.size)) + 544]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if eth.balance(this.address) > eth.balance(this.address):
                        mem[(9 * ceil32(return_data.size)) + 802] = 0
                        revert with 0, 'SafeMath: subtraction overflow', mem[(9 * ceil32(return_data.size)) + 802 len (5 * ceil32(return_data.size)) + 2]
                    if eth.balance(this.address) < eth.balance(this.address):
                        revert with 0, 17
                    call treasuryAddress with:
                         gas gas_remaining wei
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'PAYMENT FAIL', mem[(9 * ceil32(return_data.size)) + 804 len 5 * ceil32(return_data.size)]
                    else:
                        if not ext_call.success:
                            revert with 0, 
                                        'PAYMENT FAIL',
                                        mem[(9 * ceil32(return_data.size)) + ceil32(return_data.size) + 805 len 5 * ceil32(return_data.size)]
                    ('bool', 'ext_call.success')
            else:
                if unknown_0xb0e0c681(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return distributionAmount
                if uint32(call.func_hash) >> 224 != unknown_0xb5e157f1(?????):
                    if unknown_0xb91b740b(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return sub_b91b740b
                    if uint32(call.func_hash) >> 224 != unknown_0xb9571721(?????):
                        require unknown_0xc392f766(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        return interestAddress
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require cd[4] <= test266151307()
                    require calldata.size > cd[4] + 35
                    if ('cd', 4).length > test266151307():
                        revert with 0, 65
                    if ceil32(32 * ('cd', 4).length) + 129 < 128 or ceil32(32 * ('cd', 4).length) + 129 > test266151307():
                        revert with 0, 65
                    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
                    s = 160
                    idx = cd[4] + 36
                    while idx < cd[4] + (32 * ('cd', 4).length) + 36:
                        require cd[idx] == address(cd[idx])
                        mem[s] = cd[idx]
                        s = s + 32
                        idx = idx + 32
                        continue 
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    if 0 >= ('cd', 4).length:
                        revert with 0, 50
                    treasuryAddress = mem[172 len 20]
                    if 1 >= ('cd', 4).length:
                        revert with 0, 50
                    devAddress = mem[204 len 20]
                    if 2 >= ('cd', 4).length:
                        revert with 0, 50
                    interestAddress = mem[236 len 20]
                else:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require cd[4] <= test266151307()
                    require calldata.size > cd[4] + 35
                    if ('cd', 4).length > test266151307():
                        revert with 0, 65
                    if ceil32(ceil32(('cd', 4).length)) + 129 < 128 or ceil32(ceil32(('cd', 4).length)) + 129 > test266151307():
                        revert with 0, 65
                    mem[128] = ('cd', 4).length
                    require cd[4] + ('cd', 4).length + 36 <= calldata.size
                    mem[160 len ('cd', 4).length] = call.data[cd[4] + 36 len ('cd', 4).length]
                    if not sub_ebaf1549:
                        revert with 0, 'USER HELPER: NOT ENABLED YET'
                    mem[ceil32(ceil32(('cd', 4).length)) + 165] = msg.sender
                    mem[ceil32(ceil32(('cd', 4).length)) + 197] = this.address
                    mem[ceil32(ceil32(('cd', 4).length)) + 229] = nodePrice
                    mem[ceil32(ceil32(('cd', 4).length)) + 129] = 100
                    mem[ceil32(ceil32(('cd', 4).length)) + 165 len 28] = Mask(224, 32, msg.sender) >> 32
                    mem[ceil32(ceil32(('cd', 4).length)) + 161 len 4] = unknown_0x23b872dd(?????)
                    mem[ceil32(ceil32(('cd', 4).length)) + 261] = 32
                    mem[ceil32(ceil32(('cd', 4).length)) + 293] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(sub_0c756bf3Address):
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(ceil32(('cd', 4).length)) + 325 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), nodePrice, 0
                    mem[ceil32(ceil32(('cd', 4).length)) + 425] = 0
                    call sub_0c756bf3Address with:
                       funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, address(this.address), nodePrice, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, address(this.address), nodePrice, 0) << 544)
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if not mem[96]:
                            mem[ceil32(ceil32(('cd', 4).length)) + 329] = this.address
                            require ext_code.size(sub_0c756bf3Address)
                            staticcall sub_0c756bf3Address.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[ceil32(ceil32(('cd', 4).length)) + 325] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if distributing:
                                require ext_code.size(managementAddress)
                                call managementAddress.0x90219732 with:
                                     gas gas_remaining wei
                                    args msg.sender, Array(len=('cd', 4).length, data=call.data[cd[4] + 36 len ('cd', 4).length]), rewardPerDay
                            else:
                                if ext_call.return_data[0] < distributionAmount:
                                    require ext_code.size(managementAddress)
                                    call managementAddress.0x90219732 with:
                                         gas gas_remaining wei
                                        args msg.sender, Array(len=('cd', 4).length, data=call.data[cd[4] + 36 len ('cd', 4).length]), rewardPerDay
                                else:
                                    distributing = 1
                                    mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + 329] = this.address
                                    require ext_code.size(sub_0c756bf3Address)
                                    staticcall sub_0c756bf3Address.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + 325] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] and sub_8a55784b > -1 / ext_call.return_data[0]:
                                        revert with 0, 17
                                    if ext_call.return_data[0] and sub_b91b740b > -1 / ext_call.return_data[0]:
                                        revert with 0, 17
                                    if ext_call.return_data[0] and sub_72f1dbdb > -1 / ext_call.return_data[0]:
                                        revert with 0, 17
                                    mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 325] = 26
                                    mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 357] = 'SafeMath: division by zero'
                                    mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 389] = 30
                                    mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 421] = 'SafeMath: subtraction overflow'
                                    if ext_call.return_data[0] * sub_8a55784b / 100 / 2 > ext_call.return_data[0] * sub_8a55784b / 100:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if ext_call.return_data[0] * sub_8a55784b / 100 < ext_call.return_data[0] * sub_8a55784b / 100 / 2:
                                        revert with 0, 17
                                    mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 453] = 2
                                    mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 485] = sub_0c756bf3Address
                                    require ext_code.size(uniswapV2RouterAddress)
                                    staticcall uniswapV2RouterAddress.WAVAX() with:
                                            gas gas_remaining wei
                                    mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 549] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 517] = ext_call.return_data[12 len 20]
                                    require ext_code.size(sub_0c756bf3Address)
                                    call sub_0c756bf3Address.approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args uniswapV2RouterAddress, ext_call.return_data[0] * sub_8a55784b / 100 / 2
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 549
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 549] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 553] = ext_call.return_data[0] * sub_8a55784b / 100 / 2
                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 585] = 0
                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 617] = 160
                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 713] = 2
                                    idx = 0
                                    s = ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 745
                                    t = ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 485
                                    while idx < mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 453]:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 649] = this.address
                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 681] = block.timestamp
                                    require ext_code.size(uniswapV2RouterAddress)
                                    call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + (32 * mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 453]) + -mem[64] + 741]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _9414 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_9414] = 30
                                    mem[_9414 + 32] = 'SafeMath: subtraction overflow'
                                    if eth.balance(this.address) > eth.balance(this.address):
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if eth.balance(this.address) < eth.balance(this.address):
                                        revert with 0, 17
                                    mem[mem[64] + 4] = uniswapV2RouterAddress
                                    mem[mem[64] + 36] = (ext_call.return_data[0] * sub_8a55784b / 100) - (ext_call.return_data[0] * sub_8a55784b / 100 / 2)
                                    require ext_code.size(sub_0c756bf3Address)
                                    call sub_0c756bf3Address.approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args uniswapV2RouterAddress, (ext_call.return_data[0] * sub_8a55784b / 100) - (ext_call.return_data[0] * sub_8a55784b / 100 / 2)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _9691 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_9691] == bool(mem[_9691])
                                    mem[mem[64] + 68] = 0
                                    mem[mem[64] + 100] = 0
                                    mem[mem[64] + 132] = 0
                                    mem[mem[64] + 164] = block.timestamp
                                    require ext_code.size(uniswapV2RouterAddress)
                                    call uniswapV2RouterAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                         gas gas_remaining wei
                                        args sub_0c756bf3Address, (ext_call.return_data[0] * sub_8a55784b / 100) - (ext_call.return_data[0] * sub_8a55784b / 100 / 2), 0, 0, 0, block.timestamp
                                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 96
                                    _9971 = mem[64]
                                    mem[mem[64]] = 2
                                    mem[64] = mem[64] + 96
                                    mem[_9971 + 32 len 64] = call.data[calldata.size len 64]
                                    if not mem[_9971]:
                                        revert with 0, 50
                                    mem[_9971 + 32] = sub_0c756bf3Address
                                    require ext_code.size(uniswapV2RouterAddress)
                                    staticcall uniswapV2RouterAddress.WAVAX() with:
                                            gas gas_remaining wei
                                    mem[_9971 + 96] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = _9971 + ceil32(return_data.size) + 96
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    if 1 >= mem[_9971]:
                                        revert with 0, 50
                                    mem[_9971 + 64] = ext_call.return_data[12 len 20]
                                    mem[_9971 + ceil32(return_data.size) + 100] = uniswapV2RouterAddress
                                    mem[_9971 + ceil32(return_data.size) + 132] = ext_call.return_data[0] * sub_b91b740b / 100
                                    require ext_code.size(sub_0c756bf3Address)
                                    call sub_0c756bf3Address.approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args uniswapV2RouterAddress, ext_call.return_data[0] * sub_b91b740b / 100
                                    mem[_9971 + ceil32(return_data.size) + 96] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = _9971 + (2 * ceil32(return_data.size)) + 96
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    mem[_9971 + (2 * ceil32(return_data.size)) + 96] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                    mem[_9971 + (2 * ceil32(return_data.size)) + 100] = ext_call.return_data[0] * sub_b91b740b / 100
                                    mem[_9971 + (2 * ceil32(return_data.size)) + 132] = 0
                                    mem[_9971 + (2 * ceil32(return_data.size)) + 164] = 160
                                    mem[_9971 + (2 * ceil32(return_data.size)) + 260] = mem[_9971]
                                    idx = 0
                                    s = _9971 + (2 * ceil32(return_data.size)) + 292
                                    t = _9971 + 32
                                    while idx < mem[_9971]:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[_9971 + (2 * ceil32(return_data.size)) + 196] = this.address
                                    mem[_9971 + (2 * ceil32(return_data.size)) + 228] = block.timestamp
                                    require ext_code.size(uniswapV2RouterAddress)
                                    call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0] * sub_b91b740b / 100, 0, 160, address(this.address), block.timestamp, mem[_9971 + (2 * ceil32(return_data.size)) + 260 len (32 * mem[_9971]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_9971 + (2 * ceil32(return_data.size)) + 96] = 30
                                    mem[_9971 + (2 * ceil32(return_data.size)) + 128] = 'SafeMath: subtraction overflow'
                                    if eth.balance(this.address) > eth.balance(this.address):
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if eth.balance(this.address) < eth.balance(this.address):
                                        revert with 0, 17
                                    call treasuryAddress with:
                                         gas gas_remaining wei
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 'PAYMENT FAIL'
                                        mem[_9971 + (2 * ceil32(return_data.size)) + 196] = burnAddress
                                        mem[_9971 + (2 * ceil32(return_data.size)) + 228] = ext_call.return_data[0] * sub_72f1dbdb / 100
                                        mem[_9971 + (2 * ceil32(return_data.size)) + 160] = 68
                                        mem[_9971 + (2 * ceil32(return_data.size)) + 192 len 4] = unknown_0xa9059cbb(?????)
                                        mem[_9971 + (2 * ceil32(return_data.size)) + 260] = 32
                                        mem[_9971 + (2 * ceil32(return_data.size)) + 292] = 'SafeERC20: low-level call failed'
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 'Address: insufficient balance for call'
                                        if not ext_code.size(sub_0c756bf3Address):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[_9971 + (2 * ceil32(return_data.size)) + 324 len 96] = 0, burnAddress, ext_call.return_data[0] * sub_72f1dbdb / 100, 0
                                        mem[_9971 + (2 * ceil32(return_data.size)) + 392] = 0
                                        call sub_0c756bf3Address with:
                                           funct Mask(32, 224, 0, burnAddress, ext_call.return_data[0] * sub_72f1dbdb / 100, 0) >> 224
                                             gas gas_remaining wei
                                            args (Mask(512, -288, 0, burnAddress, ext_call.return_data[0] * sub_72f1dbdb / 100, 0) << 288)
                                        if not return_data.size:
                                            if not ext_call.success:
                                                if mem[96]:
                                                    revert with memory
                                                      from 128
                                                       len mem[96]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if mem[96]:
                                                require mem[96] >= 32
                                                require mem[128] == bool(mem[128])
                                                if not mem[128]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            distributing = 0
                                            mem[_9971 + (2 * ceil32(return_data.size)) + 324] = 0x9021973200000000000000000000000000000000000000000000000000000000
                                            mem[_9971 + (2 * ceil32(return_data.size)) + 328] = msg.sender
                                            mem[_9971 + (2 * ceil32(return_data.size)) + 360] = 96
                                            mem[_9971 + (2 * ceil32(return_data.size)) + 424] = mem[128]
                                            mem[_9971 + (2 * ceil32(return_data.size)) + 456 len ceil32(mem[128])] = mem[160 len ceil32(mem[128])]
                                            if ceil32(mem[128]) > mem[128]:
                                                mem[mem[128] + _9971 + (2 * ceil32(return_data.size)) + 456] = 0
                                            require ext_code.size(managementAddress)
                                            call managementAddress.0x90219732 with:
                                                 gas gas_remaining wei
                                                args msg.sender, Array(len=mem[128], data=mem[_9971 + (2 * ceil32(return_data.size)) + 456 len ceil32(mem[128])]), rewardPerDay
                                        else:
                                            mem[_9971 + (2 * ceil32(return_data.size)) + 324] = return_data.size
                                            mem[_9971 + (2 * ceil32(return_data.size)) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                require mem[_9971 + (2 * ceil32(return_data.size)) + 356] == bool(mem[_9971 + (2 * ceil32(return_data.size)) + 356])
                                                if not mem[_9971 + (2 * ceil32(return_data.size)) + 356]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            distributing = 0
                                            mem[_9971 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 325] = 0x9021973200000000000000000000000000000000000000000000000000000000
                                            mem[_9971 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = msg.sender
                                            mem[_9971 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = 96
                                            mem[_9971 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = mem[128]
                                            mem[_9971 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457 len ceil32(mem[128])] = mem[160 len ceil32(mem[128])]
                                            if ceil32(mem[128]) > mem[128]:
                                                mem[mem[128] + _9971 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = 0
                                            require ext_code.size(managementAddress)
                                            call managementAddress.0x90219732 with:
                                                 gas gas_remaining wei
                                                args msg.sender, Array(len=mem[128], data=mem[_9971 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457 len ceil32(mem[128])]), rewardPerDay
                                    else:
                                        mem[_9971 + (2 * ceil32(return_data.size)) + 160] = return_data.size
                                        mem[_9971 + (2 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, 'PAYMENT FAIL'
                                        mem[_9971 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 197] = burnAddress
                                        mem[_9971 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 229] = ext_call.return_data[0] * sub_72f1dbdb / 100
                                        mem[_9971 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 161] = 68
                                        mem[_9971 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 193 len 4] = unknown_0xa9059cbb(?????)
                                        mem[_9971 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 32
                                        mem[_9971 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = 'SafeERC20: low-level call failed'
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 'Address: insufficient balance for call'
                                        if not ext_code.size(sub_0c756bf3Address):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[_9971 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 325 len 96] = 0, burnAddress, ext_call.return_data[0] * sub_72f1dbdb / 100, 0
                                        mem[_9971 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = 0
                                        call sub_0c756bf3Address with:
                                           funct Mask(32, 224, 0, burnAddress, ext_call.return_data[0] * sub_72f1dbdb / 100, 0) >> 224
                                             gas gas_remaining wei
                                            args (Mask(512, -288, 0, burnAddress, ext_call.return_data[0] * sub_72f1dbdb / 100, 0) << 288)
                                        if not return_data.size:
                                            if not ext_call.success:
                                                if mem[96]:
                                                    revert with memory
                                                      from 128
                                                       len mem[96]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if mem[96]:
                                                require mem[96] >= 32
                                                require mem[128] == bool(mem[128])
                                                if not mem[128]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            distributing = 0
                                            mem[_9971 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 325] = 0x9021973200000000000000000000000000000000000000000000000000000000
                                            mem[_9971 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = msg.sender
                                            mem[_9971 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = 96
                                            mem[_9971 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = mem[128]
                                            mem[_9971 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457 len ceil32(mem[128])] = mem[160 len ceil32(mem[128])]
                                            if ceil32(mem[128]) > mem[128]:
                                                mem[mem[128] + _9971 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = 0
                                            require ext_code.size(managementAddress)
                                            call managementAddress.0x90219732 with:
                                                 gas gas_remaining wei
                                                args msg.sender, Array(len=mem[128], data=mem[_9971 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457 len ceil32(mem[128])]), rewardPerDay
                                        else:
                                            mem[_9971 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 325] = return_data.size
                                            mem[_9971 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[_9971 + (4 * ceil32(return_data.size)) + 326] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_9971 + (4 * ceil32(return_data.size)) + 330] = 32
                                                mem[_9971 + (4 * ceil32(return_data.size)) + 362] = 32
                                                mem[_9971 + (4 * ceil32(return_data.size)) + 394] = 'SafeERC20: low-level call failed'
                                                revert with memory
                                                  from _9971 + (4 * ceil32(return_data.size)) + 326
                                                   len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
                                            if return_data.size:
                                                require return_data.size >= 32
                                                require mem[_9971 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357] == bool(mem[_9971 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357])
                                                if not mem[_9971 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357]:
                                                    mem[_9971 + (4 * ceil32(return_data.size)) + 326] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[_9971 + (4 * ceil32(return_data.size)) + 330] = 32
                                                    mem[_9971 + (4 * ceil32(return_data.size)) + 362] = 42
                                                    mem[_9971 + (4 * ceil32(return_data.size)) + 394] = 'SafeERC20: ERC20 operation did n'
                                                    mem[_9971 + (4 * ceil32(return_data.size)) + 426] = 0x6f74207375636365656400000000000000000000000000000000000000000000
                                                    revert with memory
                                                      from _9971 + (4 * ceil32(return_data.size)) + 326
                                                       len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
                                            distributing = 0
                                            mem[_9971 + (4 * ceil32(return_data.size)) + 326] = 0x9021973200000000000000000000000000000000000000000000000000000000
                                            mem[_9971 + (4 * ceil32(return_data.size)) + 330] = msg.sender
                                            mem[_9971 + (4 * ceil32(return_data.size)) + 362] = 96
                                            mem[_9971 + (4 * ceil32(return_data.size)) + 426] = mem[128]
                                            mem[_9971 + (4 * ceil32(return_data.size)) + 458 len ceil32(mem[128])] = mem[160 len ceil32(mem[128])]
                                            if ceil32(mem[128]) > mem[128]:
                                                mem[mem[128] + _9971 + (4 * ceil32(return_data.size)) + 458] = 0
                                            mem[_9971 + (4 * ceil32(return_data.size)) + 394] = rewardPerDay
                                            require ext_code.size(managementAddress)
                                            call managementAddress.0x90219732 with:
                                                 gas gas_remaining wei
                                                args mem[_9971 + (4 * ceil32(return_data.size)) + 330 len ceil32(mem[128]) + (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 128]
                        else:
                            require mem[96] >= 32
                            require ('cd', 4).length == bool(('cd', 4).length)
                            if not ('cd', 4).length:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            mem[ceil32(ceil32(('cd', 4).length)) + 329] = this.address
                            require ext_code.size(sub_0c756bf3Address)
                            staticcall sub_0c756bf3Address.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[ceil32(ceil32(('cd', 4).length)) + 325] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if distributing:
                                require ext_code.size(managementAddress)
                                call managementAddress.0x90219732 with:
                                     gas gas_remaining wei
                                    args msg.sender, Array(len=('cd', 4).length, data=call.data[cd[4] + 36 len ('cd', 4).length]), rewardPerDay
                            else:
                                if ext_call.return_data[0] < distributionAmount:
                                    require ext_code.size(managementAddress)
                                    call managementAddress.0x90219732 with:
                                         gas gas_remaining wei
                                        args msg.sender, Array(len=('cd', 4).length, data=call.data[cd[4] + 36 len ('cd', 4).length]), rewardPerDay
                                else:
                                    distributing = 1
                                    mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + 329] = this.address
                                    require ext_code.size(sub_0c756bf3Address)
                                    staticcall sub_0c756bf3Address.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + 325] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] and sub_8a55784b > -1 / ext_call.return_data[0]:
                                        revert with 0, 17
                                    if ext_call.return_data[0] and sub_b91b740b > -1 / ext_call.return_data[0]:
                                        revert with 0, 17
                                    if ext_call.return_data[0] and sub_72f1dbdb > -1 / ext_call.return_data[0]:
                                        revert with 0, 17
                                    mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 325] = 26
                                    mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 357] = 'SafeMath: division by zero'
                                    mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 389] = 30
                                    mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 421] = 'SafeMath: subtraction overflow'
                                    if ext_call.return_data[0] * sub_8a55784b / 100 / 2 > ext_call.return_data[0] * sub_8a55784b / 100:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if ext_call.return_data[0] * sub_8a55784b / 100 < ext_call.return_data[0] * sub_8a55784b / 100 / 2:
                                        revert with 0, 17
                                    mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 453] = 2
                                    mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 485] = sub_0c756bf3Address
                                    require ext_code.size(uniswapV2RouterAddress)
                                    staticcall uniswapV2RouterAddress.WAVAX() with:
                                            gas gas_remaining wei
                                    mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 549] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 517] = ext_call.return_data[12 len 20]
                                    require ext_code.size(sub_0c756bf3Address)
                                    call sub_0c756bf3Address.approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args uniswapV2RouterAddress, ext_call.return_data[0] * sub_8a55784b / 100 / 2
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 549
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 549] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 553] = ext_call.return_data[0] * sub_8a55784b / 100 / 2
                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 585] = 0
                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 617] = 160
                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 713] = 2
                                    idx = 0
                                    s = ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 745
                                    t = ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 485
                                    while idx < mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 453]:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 649] = this.address
                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 681] = block.timestamp
                                    require ext_code.size(uniswapV2RouterAddress)
                                    call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + (32 * mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 453]) + -mem[64] + 741]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _9417 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_9417] = 30
                                    mem[_9417 + 32] = 'SafeMath: subtraction overflow'
                                    if eth.balance(this.address) > eth.balance(this.address):
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if eth.balance(this.address) < eth.balance(this.address):
                                        revert with 0, 17
                                    mem[mem[64] + 4] = uniswapV2RouterAddress
                                    mem[mem[64] + 36] = (ext_call.return_data[0] * sub_8a55784b / 100) - (ext_call.return_data[0] * sub_8a55784b / 100 / 2)
                                    require ext_code.size(sub_0c756bf3Address)
                                    call sub_0c756bf3Address.approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args uniswapV2RouterAddress, (ext_call.return_data[0] * sub_8a55784b / 100) - (ext_call.return_data[0] * sub_8a55784b / 100 / 2)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _9692 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_9692] == bool(mem[_9692])
                                    mem[mem[64] + 68] = 0
                                    mem[mem[64] + 100] = 0
                                    mem[mem[64] + 132] = 0
                                    mem[mem[64] + 164] = block.timestamp
                                    require ext_code.size(uniswapV2RouterAddress)
                                    call uniswapV2RouterAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                         gas gas_remaining wei
                                        args sub_0c756bf3Address, (ext_call.return_data[0] * sub_8a55784b / 100) - (ext_call.return_data[0] * sub_8a55784b / 100 / 2), 0, 0, 0, block.timestamp
                                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 96
                                    _9973 = mem[64]
                                    mem[mem[64]] = 2
                                    mem[64] = mem[64] + 96
                                    mem[_9973 + 32 len 64] = call.data[calldata.size len 64]
                                    if not mem[_9973]:
                                        revert with 0, 50
                                    mem[_9973 + 32] = sub_0c756bf3Address
                                    require ext_code.size(uniswapV2RouterAddress)
                                    staticcall uniswapV2RouterAddress.WAVAX() with:
                                            gas gas_remaining wei
                                    mem[_9973 + 96] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = _9973 + ceil32(return_data.size) + 96
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    if 1 >= mem[_9973]:
                                        revert with 0, 50
                                    mem[_9973 + 64] = ext_call.return_data[12 len 20]
                                    mem[_9973 + ceil32(return_data.size) + 100] = uniswapV2RouterAddress
                                    mem[_9973 + ceil32(return_data.size) + 132] = ext_call.return_data[0] * sub_b91b740b / 100
                                    require ext_code.size(sub_0c756bf3Address)
                                    call sub_0c756bf3Address.approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args uniswapV2RouterAddress, ext_call.return_data[0] * sub_b91b740b / 100
                                    mem[_9973 + ceil32(return_data.size) + 96] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = _9973 + (2 * ceil32(return_data.size)) + 96
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    mem[_9973 + (2 * ceil32(return_data.size)) + 96] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                    mem[_9973 + (2 * ceil32(return_data.size)) + 100] = ext_call.return_data[0] * sub_b91b740b / 100
                                    mem[_9973 + (2 * ceil32(return_data.size)) + 132] = 0
                                    mem[_9973 + (2 * ceil32(return_data.size)) + 164] = 160
                                    mem[_9973 + (2 * ceil32(return_data.size)) + 260] = mem[_9973]
                                    idx = 0
                                    s = _9973 + (2 * ceil32(return_data.size)) + 292
                                    t = _9973 + 32
                                    while idx < mem[_9973]:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[_9973 + (2 * ceil32(return_data.size)) + 196] = this.address
                                    mem[_9973 + (2 * ceil32(return_data.size)) + 228] = block.timestamp
                                    require ext_code.size(uniswapV2RouterAddress)
                                    call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0] * sub_b91b740b / 100, 0, 160, address(this.address), block.timestamp, mem[_9973 + (2 * ceil32(return_data.size)) + 260 len (32 * mem[_9973]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_9973 + (2 * ceil32(return_data.size)) + 96] = 30
                                    mem[_9973 + (2 * ceil32(return_data.size)) + 128] = 'SafeMath: subtraction overflow'
                                    if eth.balance(this.address) > eth.balance(this.address):
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if eth.balance(this.address) < eth.balance(this.address):
                                        revert with 0, 17
                                    call treasuryAddress with:
                                         gas gas_remaining wei
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 'PAYMENT FAIL'
                                        mem[_9973 + (2 * ceil32(return_data.size)) + 196] = burnAddress
                                        mem[_9973 + (2 * ceil32(return_data.size)) + 228] = ext_call.return_data[0] * sub_72f1dbdb / 100
                                        mem[_9973 + (2 * ceil32(return_data.size)) + 160] = 68
                                        mem[_9973 + (2 * ceil32(return_data.size)) + 192 len 4] = unknown_0xa9059cbb(?????)
                                        mem[_9973 + (2 * ceil32(return_data.size)) + 260] = 32
                                        mem[_9973 + (2 * ceil32(return_data.size)) + 292] = 'SafeERC20: low-level call failed'
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 'Address: insufficient balance for call'
                                        if not ext_code.size(sub_0c756bf3Address):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[_9973 + (2 * ceil32(return_data.size)) + 324 len 96] = 0, burnAddress, ext_call.return_data[0] * sub_72f1dbdb / 100, 0
                                        mem[_9973 + (2 * ceil32(return_data.size)) + 392] = 0
                                        call sub_0c756bf3Address with:
                                           funct Mask(32, 224, 0, burnAddress, ext_call.return_data[0] * sub_72f1dbdb / 100, 0) >> 224
                                             gas gas_remaining wei
                                            args (Mask(512, -288, 0, burnAddress, ext_call.return_data[0] * sub_72f1dbdb / 100, 0) << 288)
                                        if not return_data.size:
                                            if not ext_call.success:
                                                if mem[96]:
                                                    revert with memory
                                                      from 128
                                                       len mem[96]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if mem[96]:
                                                require mem[96] >= 32
                                                require mem[128] == bool(mem[128])
                                                if not mem[128]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            distributing = 0
                                            mem[_9973 + (2 * ceil32(return_data.size)) + 324] = 0x9021973200000000000000000000000000000000000000000000000000000000
                                            mem[_9973 + (2 * ceil32(return_data.size)) + 328] = msg.sender
                                            mem[_9973 + (2 * ceil32(return_data.size)) + 360] = 96
                                            mem[_9973 + (2 * ceil32(return_data.size)) + 424] = mem[128]
                                            mem[_9973 + (2 * ceil32(return_data.size)) + 456 len ceil32(mem[128])] = mem[160 len ceil32(mem[128])]
                                            if ceil32(mem[128]) > mem[128]:
                                                mem[mem[128] + _9973 + (2 * ceil32(return_data.size)) + 456] = 0
                                            require ext_code.size(managementAddress)
                                            call managementAddress.0x90219732 with:
                                                 gas gas_remaining wei
                                                args msg.sender, Array(len=mem[128], data=mem[_9973 + (2 * ceil32(return_data.size)) + 456 len ceil32(mem[128])]), rewardPerDay
                                        else:
                                            mem[_9973 + (2 * ceil32(return_data.size)) + 324] = return_data.size
                                            mem[_9973 + (2 * ceil32(return_data.size)) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                require mem[_9973 + (2 * ceil32(return_data.size)) + 356] == bool(mem[_9973 + (2 * ceil32(return_data.size)) + 356])
                                                if not mem[_9973 + (2 * ceil32(return_data.size)) + 356]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            distributing = 0
                                            mem[_9973 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 325] = 0x9021973200000000000000000000000000000000000000000000000000000000
                                            mem[_9973 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = msg.sender
                                            mem[_9973 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = 96
                                            mem[_9973 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = mem[128]
                                            mem[_9973 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457 len ceil32(mem[128])] = mem[160 len ceil32(mem[128])]
                                            if ceil32(mem[128]) > mem[128]:
                                                mem[mem[128] + _9973 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = 0
                                            require ext_code.size(managementAddress)
                                            call managementAddress.0x90219732 with:
                                                 gas gas_remaining wei
                                                args msg.sender, Array(len=mem[128], data=mem[_9973 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457 len ceil32(mem[128])]), rewardPerDay
                                    else:
                                        mem[_9973 + (2 * ceil32(return_data.size)) + 160] = return_data.size
                                        mem[_9973 + (2 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, 'PAYMENT FAIL'
                                        mem[_9973 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 197] = burnAddress
                                        mem[_9973 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 229] = ext_call.return_data[0] * sub_72f1dbdb / 100
                                        mem[_9973 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 161] = 68
                                        mem[_9973 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 193 len 4] = unknown_0xa9059cbb(?????)
                                        mem[_9973 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 32
                                        mem[_9973 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = 'SafeERC20: low-level call failed'
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 'Address: insufficient balance for call'
                                        if not ext_code.size(sub_0c756bf3Address):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[_9973 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 325 len 96] = 0, burnAddress, ext_call.return_data[0] * sub_72f1dbdb / 100, 0
                                        mem[_9973 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = 0
                                        call sub_0c756bf3Address with:
                                           funct Mask(32, 224, 0, burnAddress, ext_call.return_data[0] * sub_72f1dbdb / 100, 0) >> 224
                                             gas gas_remaining wei
                                            args (Mask(512, -288, 0, burnAddress, ext_call.return_data[0] * sub_72f1dbdb / 100, 0) << 288)
                                        if not return_data.size:
                                            if not ext_call.success:
                                                if mem[96]:
                                                    revert with memory
                                                      from 128
                                                       len mem[96]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if mem[96]:
                                                require mem[96] >= 32
                                                require mem[128] == bool(mem[128])
                                                if not mem[128]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            distributing = 0
                                            mem[_9973 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 325] = 0x9021973200000000000000000000000000000000000000000000000000000000
                                            mem[_9973 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = msg.sender
                                            mem[_9973 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = 96
                                            mem[_9973 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = mem[128]
                                            mem[_9973 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457 len ceil32(mem[128])] = mem[160 len ceil32(mem[128])]
                                            if ceil32(mem[128]) > mem[128]:
                                                mem[mem[128] + _9973 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = 0
                                            require ext_code.size(managementAddress)
                                            call managementAddress.0x90219732 with:
                                                 gas gas_remaining wei
                                                args msg.sender, Array(len=mem[128], data=mem[_9973 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457 len ceil32(mem[128])]), rewardPerDay
                                        else:
                                            mem[_9973 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 325] = return_data.size
                                            mem[_9973 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[_9973 + (4 * ceil32(return_data.size)) + 326] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_9973 + (4 * ceil32(return_data.size)) + 330] = 32
                                                mem[_9973 + (4 * ceil32(return_data.size)) + 362] = 32
                                                mem[_9973 + (4 * ceil32(return_data.size)) + 394] = 'SafeERC20: low-level call failed'
                                                revert with memory
                                                  from _9973 + (4 * ceil32(return_data.size)) + 326
                                                   len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
                                            if return_data.size:
                                                require return_data.size >= 32
                                                require mem[_9973 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357] == bool(mem[_9973 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357])
                                                if not mem[_9973 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357]:
                                                    mem[_9973 + (4 * ceil32(return_data.size)) + 326] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[_9973 + (4 * ceil32(return_data.size)) + 330] = 32
                                                    mem[_9973 + (4 * ceil32(return_data.size)) + 362] = 42
                                                    mem[_9973 + (4 * ceil32(return_data.size)) + 394] = 'SafeERC20: ERC20 operation did n'
                                                    mem[_9973 + (4 * ceil32(return_data.size)) + 426] = 0x6f74207375636365656400000000000000000000000000000000000000000000
                                                    revert with memory
                                                      from _9973 + (4 * ceil32(return_data.size)) + 326
                                                       len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
                                            distributing = 0
                                            mem[_9973 + (4 * ceil32(return_data.size)) + 326] = 0x9021973200000000000000000000000000000000000000000000000000000000
                                            mem[_9973 + (4 * ceil32(return_data.size)) + 330] = msg.sender
                                            mem[_9973 + (4 * ceil32(return_data.size)) + 362] = 96
                                            mem[_9973 + (4 * ceil32(return_data.size)) + 426] = mem[128]
                                            mem[_9973 + (4 * ceil32(return_data.size)) + 458 len ceil32(mem[128])] = mem[160 len ceil32(mem[128])]
                                            if ceil32(mem[128]) > mem[128]:
                                                mem[mem[128] + _9973 + (4 * ceil32(return_data.size)) + 458] = 0
                                            mem[_9973 + (4 * ceil32(return_data.size)) + 394] = rewardPerDay
                                            require ext_code.size(managementAddress)
                                            call managementAddress.0x90219732 with:
                                                 gas gas_remaining wei
                                                args mem[_9973 + (4 * ceil32(return_data.size)) + 330 len ceil32(mem[128]) + (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 128]
                    else:
                        mem[ceil32(ceil32(('cd', 4).length)) + 325] = return_data.size
                        mem[ceil32(ceil32(('cd', 4).length)) + 357 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if not return_data.size:
                            mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + 330] = this.address
                            require ext_code.size(sub_0c756bf3Address)
                            staticcall sub_0c756bf3Address.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + 326] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if distributing:
                                require ext_code.size(managementAddress)
                                call managementAddress.0x90219732 with:
                                     gas gas_remaining wei
                                    args msg.sender, Array(len=('cd', 4).length, data=call.data[cd[4] + 36 len ('cd', 4).length]), rewardPerDay
                            else:
                                if ext_call.return_data[0] < distributionAmount:
                                    require ext_code.size(managementAddress)
                                    call managementAddress.0x90219732 with:
                                         gas gas_remaining wei
                                        args msg.sender, Array(len=('cd', 4).length, data=call.data[cd[4] + 36 len ('cd', 4).length]), rewardPerDay
                                else:
                                    distributing = 1
                                    mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + ceil32(return_data.size) + 330] = this.address
                                    require ext_code.size(sub_0c756bf3Address)
                                    staticcall sub_0c756bf3Address.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + ceil32(return_data.size) + 326] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] and sub_8a55784b > -1 / ext_call.return_data[0]:
                                        revert with 0, 17
                                    if ext_call.return_data[0] and sub_b91b740b > -1 / ext_call.return_data[0]:
                                        revert with 0, 17
                                    if ext_call.return_data[0] and sub_72f1dbdb > -1 / ext_call.return_data[0]:
                                        revert with 0, 17
                                    mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 326] = 26
                                    mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 358] = 'SafeMath: division by zero'
                                    mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 390] = 30
                                    mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 422] = 'SafeMath: subtraction overflow'
                                    if ext_call.return_data[0] * sub_8a55784b / 100 / 2 > ext_call.return_data[0] * sub_8a55784b / 100:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if ext_call.return_data[0] * sub_8a55784b / 100 < ext_call.return_data[0] * sub_8a55784b / 100 / 2:
                                        revert with 0, 17
                                    mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 454] = 2
                                    mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 486] = sub_0c756bf3Address
                                    require ext_code.size(uniswapV2RouterAddress)
                                    staticcall uniswapV2RouterAddress.WAVAX() with:
                                            gas gas_remaining wei
                                    mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 550] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 518] = ext_call.return_data[12 len 20]
                                    require ext_code.size(sub_0c756bf3Address)
                                    call sub_0c756bf3Address.approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args uniswapV2RouterAddress, ext_call.return_data[0] * sub_8a55784b / 100 / 2
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 550
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 550] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 554] = ext_call.return_data[0] * sub_8a55784b / 100 / 2
                                    mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 586] = 0
                                    mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 618] = 160
                                    mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 714] = 2
                                    idx = 0
                                    s = ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 746
                                    t = ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 486
                                    while idx < mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 454]:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 650] = this.address
                                    mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 682] = block.timestamp
                                    require ext_code.size(uniswapV2RouterAddress)
                                    call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + (32 * mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 454]) + -mem[64] + 742]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _9422 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_9422] = 30
                                    mem[_9422 + 32] = 'SafeMath: subtraction overflow'
                                    if eth.balance(this.address) > eth.balance(this.address):
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if eth.balance(this.address) < eth.balance(this.address):
                                        revert with 0, 17
                                    mem[mem[64] + 4] = uniswapV2RouterAddress
                                    mem[mem[64] + 36] = (ext_call.return_data[0] * sub_8a55784b / 100) - (ext_call.return_data[0] * sub_8a55784b / 100 / 2)
                                    require ext_code.size(sub_0c756bf3Address)
                                    call sub_0c756bf3Address.approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args uniswapV2RouterAddress, (ext_call.return_data[0] * sub_8a55784b / 100) - (ext_call.return_data[0] * sub_8a55784b / 100 / 2)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _9693 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_9693] == bool(mem[_9693])
                                    mem[mem[64] + 68] = 0
                                    mem[mem[64] + 100] = 0
                                    mem[mem[64] + 132] = 0
                                    mem[mem[64] + 164] = block.timestamp
                                    require ext_code.size(uniswapV2RouterAddress)
                                    call uniswapV2RouterAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                         gas gas_remaining wei
                                        args sub_0c756bf3Address, (ext_call.return_data[0] * sub_8a55784b / 100) - (ext_call.return_data[0] * sub_8a55784b / 100 / 2), 0, 0, 0, block.timestamp
                                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 96
                                    _9975 = mem[64]
                                    mem[mem[64]] = 2
                                    mem[64] = mem[64] + 96
                                    mem[_9975 + 32 len 64] = call.data[calldata.size len 64]
                                    if not mem[_9975]:
                                        revert with 0, 50
                                    mem[_9975 + 32] = sub_0c756bf3Address
                                    require ext_code.size(uniswapV2RouterAddress)
                                    staticcall uniswapV2RouterAddress.WAVAX() with:
                                            gas gas_remaining wei
                                    mem[_9975 + 96] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = _9975 + ceil32(return_data.size) + 96
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    if 1 >= mem[_9975]:
                                        revert with 0, 50
                                    mem[_9975 + 64] = ext_call.return_data[12 len 20]
                                    mem[_9975 + ceil32(return_data.size) + 100] = uniswapV2RouterAddress
                                    mem[_9975 + ceil32(return_data.size) + 132] = ext_call.return_data[0] * sub_b91b740b / 100
                                    require ext_code.size(sub_0c756bf3Address)
                                    call sub_0c756bf3Address.approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args uniswapV2RouterAddress, ext_call.return_data[0] * sub_b91b740b / 100
                                    mem[_9975 + ceil32(return_data.size) + 96] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = _9975 + (2 * ceil32(return_data.size)) + 96
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    mem[_9975 + (2 * ceil32(return_data.size)) + 96] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                    mem[_9975 + (2 * ceil32(return_data.size)) + 100] = ext_call.return_data[0] * sub_b91b740b / 100
                                    mem[_9975 + (2 * ceil32(return_data.size)) + 132] = 0
                                    mem[_9975 + (2 * ceil32(return_data.size)) + 164] = 160
                                    mem[_9975 + (2 * ceil32(return_data.size)) + 260] = mem[_9975]
                                    idx = 0
                                    s = _9975 + (2 * ceil32(return_data.size)) + 292
                                    t = _9975 + 32
                                    while idx < mem[_9975]:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[_9975 + (2 * ceil32(return_data.size)) + 196] = this.address
                                    mem[_9975 + (2 * ceil32(return_data.size)) + 228] = block.timestamp
                                    require ext_code.size(uniswapV2RouterAddress)
                                    call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0] * sub_b91b740b / 100, 0, 160, address(this.address), block.timestamp, mem[_9975 + (2 * ceil32(return_data.size)) + 260 len (32 * mem[_9975]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_9975 + (2 * ceil32(return_data.size)) + 96] = 30
                                    mem[_9975 + (2 * ceil32(return_data.size)) + 128] = 'SafeMath: subtraction overflow'
                                    if eth.balance(this.address) > eth.balance(this.address):
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if eth.balance(this.address) < eth.balance(this.address):
                                        revert with 0, 17
                                    call treasuryAddress with:
                                         gas gas_remaining wei
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 'PAYMENT FAIL'
                                        mem[_9975 + (2 * ceil32(return_data.size)) + 196] = burnAddress
                                        mem[_9975 + (2 * ceil32(return_data.size)) + 228] = ext_call.return_data[0] * sub_72f1dbdb / 100
                                        mem[_9975 + (2 * ceil32(return_data.size)) + 160] = 68
                                        mem[_9975 + (2 * ceil32(return_data.size)) + 192 len 4] = unknown_0xa9059cbb(?????)
                                        mem[_9975 + (2 * ceil32(return_data.size)) + 260] = 32
                                        mem[_9975 + (2 * ceil32(return_data.size)) + 292] = 'SafeERC20: low-level call failed'
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 'Address: insufficient balance for call'
                                        if not ext_code.size(sub_0c756bf3Address):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[_9975 + (2 * ceil32(return_data.size)) + 324 len 96] = 0, burnAddress, ext_call.return_data[0] * sub_72f1dbdb / 100, 0
                                        mem[_9975 + (2 * ceil32(return_data.size)) + 392] = 0
                                        call sub_0c756bf3Address with:
                                           funct Mask(32, 224, 0, burnAddress, ext_call.return_data[0] * sub_72f1dbdb / 100, 0) >> 224
                                             gas gas_remaining wei
                                            args (Mask(512, -288, 0, burnAddress, ext_call.return_data[0] * sub_72f1dbdb / 100, 0) << 288)
                                        if not return_data.size:
                                            if not ext_call.success:
                                                if mem[96]:
                                                    revert with memory
                                                      from 128
                                                       len mem[96]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if mem[96]:
                                                require mem[96] >= 32
                                                require mem[128] == bool(mem[128])
                                                if not mem[128]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            distributing = 0
                                            mem[_9975 + (2 * ceil32(return_data.size)) + 324] = 0x9021973200000000000000000000000000000000000000000000000000000000
                                            mem[_9975 + (2 * ceil32(return_data.size)) + 328] = msg.sender
                                            mem[_9975 + (2 * ceil32(return_data.size)) + 360] = 96
                                            mem[_9975 + (2 * ceil32(return_data.size)) + 424] = mem[128]
                                            mem[_9975 + (2 * ceil32(return_data.size)) + 456 len ceil32(mem[128])] = mem[160 len ceil32(mem[128])]
                                            if ceil32(mem[128]) > mem[128]:
                                                mem[mem[128] + _9975 + (2 * ceil32(return_data.size)) + 456] = 0
                                            require ext_code.size(managementAddress)
                                            call managementAddress.0x90219732 with:
                                                 gas gas_remaining wei
                                                args msg.sender, Array(len=mem[128], data=mem[_9975 + (2 * ceil32(return_data.size)) + 456 len ceil32(mem[128])]), rewardPerDay
                                        else:
                                            mem[_9975 + (2 * ceil32(return_data.size)) + 324] = return_data.size
                                            mem[_9975 + (2 * ceil32(return_data.size)) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                require mem[_9975 + (2 * ceil32(return_data.size)) + 356] == bool(mem[_9975 + (2 * ceil32(return_data.size)) + 356])
                                                if not mem[_9975 + (2 * ceil32(return_data.size)) + 356]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            distributing = 0
                                            mem[_9975 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 325] = 0x9021973200000000000000000000000000000000000000000000000000000000
                                            mem[_9975 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = msg.sender
                                            mem[_9975 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = 96
                                            mem[_9975 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = mem[128]
                                            mem[_9975 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457 len ceil32(mem[128])] = mem[160 len ceil32(mem[128])]
                                            if ceil32(mem[128]) > mem[128]:
                                                mem[mem[128] + _9975 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = 0
                                            require ext_code.size(managementAddress)
                                            call managementAddress.0x90219732 with:
                                                 gas gas_remaining wei
                                                args msg.sender, Array(len=mem[128], data=mem[_9975 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457 len ceil32(mem[128])]), rewardPerDay
                                    else:
                                        mem[_9975 + (2 * ceil32(return_data.size)) + 160] = return_data.size
                                        mem[_9975 + (2 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, 'PAYMENT FAIL'
                                        mem[_9975 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 197] = burnAddress
                                        mem[_9975 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 229] = ext_call.return_data[0] * sub_72f1dbdb / 100
                                        mem[_9975 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 161] = 68
                                        mem[_9975 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 193 len 4] = unknown_0xa9059cbb(?????)
                                        mem[_9975 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 32
                                        mem[_9975 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = 'SafeERC20: low-level call failed'
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 'Address: insufficient balance for call'
                                        if not ext_code.size(sub_0c756bf3Address):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[_9975 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 325 len 96] = 0, burnAddress, ext_call.return_data[0] * sub_72f1dbdb / 100, 0
                                        mem[_9975 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = 0
                                        call sub_0c756bf3Address with:
                                           funct Mask(32, 224, 0, burnAddress, ext_call.return_data[0] * sub_72f1dbdb / 100, 0) >> 224
                                             gas gas_remaining wei
                                            args (Mask(512, -288, 0, burnAddress, ext_call.return_data[0] * sub_72f1dbdb / 100, 0) << 288)
                                        if not return_data.size:
                                            if not ext_call.success:
                                                if mem[96]:
                                                    revert with memory
                                                      from 128
                                                       len mem[96]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if mem[96]:
                                                require mem[96] >= 32
                                                require mem[128] == bool(mem[128])
                                                if not mem[128]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            distributing = 0
                                            mem[_9975 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 325] = 0x9021973200000000000000000000000000000000000000000000000000000000
                                            mem[_9975 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = msg.sender
                                            mem[_9975 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = 96
                                            mem[_9975 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = mem[128]
                                            mem[_9975 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457 len ceil32(mem[128])] = mem[160 len ceil32(mem[128])]
                                            if ceil32(mem[128]) > mem[128]:
                                                mem[mem[128] + _9975 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = 0
                                            require ext_code.size(managementAddress)
                                            call managementAddress.0x90219732 with:
                                                 gas gas_remaining wei
                                                args msg.sender, Array(len=mem[128], data=mem[_9975 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457 len ceil32(mem[128])]), rewardPerDay
                                        else:
                                            mem[_9975 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 325] = return_data.size
                                            mem[_9975 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[_9975 + (4 * ceil32(return_data.size)) + 326] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_9975 + (4 * ceil32(return_data.size)) + 330] = 32
                                                mem[_9975 + (4 * ceil32(return_data.size)) + 362] = 32
                                                mem[_9975 + (4 * ceil32(return_data.size)) + 394] = 'SafeERC20: low-level call failed'
                                                revert with memory
                                                  from _9975 + (4 * ceil32(return_data.size)) + 326
                                                   len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
                                            if return_data.size:
                                                require return_data.size >= 32
                                                require mem[_9975 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357] == bool(mem[_9975 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357])
                                                if not mem[_9975 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357]:
                                                    mem[_9975 + (4 * ceil32(return_data.size)) + 326] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[_9975 + (4 * ceil32(return_data.size)) + 330] = 32
                                                    mem[_9975 + (4 * ceil32(return_data.size)) + 362] = 42
                                                    mem[_9975 + (4 * ceil32(return_data.size)) + 394] = 'SafeERC20: ERC20 operation did n'
                                                    mem[_9975 + (4 * ceil32(return_data.size)) + 426] = 0x6f74207375636365656400000000000000000000000000000000000000000000
                                                    revert with memory
                                                      from _9975 + (4 * ceil32(return_data.size)) + 326
                                                       len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
                                            distributing = 0
                                            mem[_9975 + (4 * ceil32(return_data.size)) + 326] = 0x9021973200000000000000000000000000000000000000000000000000000000
                                            mem[_9975 + (4 * ceil32(return_data.size)) + 330] = msg.sender
                                            mem[_9975 + (4 * ceil32(return_data.size)) + 362] = 96
                                            mem[_9975 + (4 * ceil32(return_data.size)) + 426] = mem[128]
                                            mem[_9975 + (4 * ceil32(return_data.size)) + 458 len ceil32(mem[128])] = mem[160 len ceil32(mem[128])]
                                            if ceil32(mem[128]) > mem[128]:
                                                mem[mem[128] + _9975 + (4 * ceil32(return_data.size)) + 458] = 0
                                            mem[_9975 + (4 * ceil32(return_data.size)) + 394] = rewardPerDay
                                            require ext_code.size(managementAddress)
                                            call managementAddress.0x90219732 with:
                                                 gas gas_remaining wei
                                                args mem[_9975 + (4 * ceil32(return_data.size)) + 330 len ceil32(mem[128]) + (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 128]
                        else:
                            require return_data.size >= 32
                            require mem[ceil32(ceil32(('cd', 4).length)) + 357] == bool(mem[ceil32(ceil32(('cd', 4).length)) + 357])
                            if not mem[ceil32(ceil32(('cd', 4).length)) + 357]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + 330] = this.address
                            require ext_code.size(sub_0c756bf3Address)
                            staticcall sub_0c756bf3Address.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + 326] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if distributing:
                                require ext_code.size(managementAddress)
                                call managementAddress.0x90219732 with:
                                     gas gas_remaining wei
                                    args msg.sender, Array(len=('cd', 4).length, data=call.data[cd[4] + 36 len ('cd', 4).length]), rewardPerDay
                            else:
                                if ext_call.return_data[0] < distributionAmount:
                                    require ext_code.size(managementAddress)
                                    call managementAddress.0x90219732 with:
                                         gas gas_remaining wei
                                        args msg.sender, Array(len=('cd', 4).length, data=call.data[cd[4] + 36 len ('cd', 4).length]), rewardPerDay
                                else:
                                    distributing = 1
                                    mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + ceil32(return_data.size) + 330] = this.address
                                    require ext_code.size(sub_0c756bf3Address)
                                    staticcall sub_0c756bf3Address.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + ceil32(return_data.size) + 326] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] and sub_8a55784b > -1 / ext_call.return_data[0]:
                                        revert with 0, 17
                                    if ext_call.return_data[0] and sub_b91b740b > -1 / ext_call.return_data[0]:
                                        revert with 0, 17
                                    if ext_call.return_data[0] and sub_72f1dbdb > -1 / ext_call.return_data[0]:
                                        revert with 0, 17
                                    mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 326] = 26
                                    mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 358] = 'SafeMath: division by zero'
                                    mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 390] = 30
                                    mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 422] = 'SafeMath: subtraction overflow'
                                    if ext_call.return_data[0] * sub_8a55784b / 100 / 2 > ext_call.return_data[0] * sub_8a55784b / 100:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if ext_call.return_data[0] * sub_8a55784b / 100 < ext_call.return_data[0] * sub_8a55784b / 100 / 2:
                                        revert with 0, 17
                                    mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 454] = 2
                                    mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 486] = sub_0c756bf3Address
                                    require ext_code.size(uniswapV2RouterAddress)
                                    staticcall uniswapV2RouterAddress.WAVAX() with:
                                            gas gas_remaining wei
                                    mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 550] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 518] = ext_call.return_data[12 len 20]
                                    require ext_code.size(sub_0c756bf3Address)
                                    call sub_0c756bf3Address.approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args uniswapV2RouterAddress, ext_call.return_data[0] * sub_8a55784b / 100 / 2
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 550
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 550] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 554] = ext_call.return_data[0] * sub_8a55784b / 100 / 2
                                    mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 586] = 0
                                    mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 618] = 160
                                    mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 714] = 2
                                    idx = 0
                                    s = ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 746
                                    t = ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 486
                                    while idx < mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 454]:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 650] = this.address
                                    mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 682] = block.timestamp
                                    require ext_code.size(uniswapV2RouterAddress)
                                    call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + (32 * mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 454]) + -mem[64] + 742]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _9425 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_9425] = 30
                                    mem[_9425 + 32] = 'SafeMath: subtraction overflow'
                                    if eth.balance(this.address) > eth.balance(this.address):
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if eth.balance(this.address) < eth.balance(this.address):
                                        revert with 0, 17
                                    mem[mem[64] + 4] = uniswapV2RouterAddress
                                    mem[mem[64] + 36] = (ext_call.return_data[0] * sub_8a55784b / 100) - (ext_call.return_data[0] * sub_8a55784b / 100 / 2)
                                    require ext_code.size(sub_0c756bf3Address)
                                    call sub_0c756bf3Address.approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args uniswapV2RouterAddress, (ext_call.return_data[0] * sub_8a55784b / 100) - (ext_call.return_data[0] * sub_8a55784b / 100 / 2)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _9694 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_9694] == bool(mem[_9694])
                                    mem[mem[64] + 68] = 0
                                    mem[mem[64] + 100] = 0
                                    mem[mem[64] + 132] = 0
                                    mem[mem[64] + 164] = block.timestamp
                                    require ext_code.size(uniswapV2RouterAddress)
                                    call uniswapV2RouterAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                         gas gas_remaining wei
                                        args sub_0c756bf3Address, (ext_call.return_data[0] * sub_8a55784b / 100) - (ext_call.return_data[0] * sub_8a55784b / 100 / 2), 0, 0, 0, block.timestamp
                                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 96
                                    _9977 = mem[64]
                                    mem[mem[64]] = 2
                                    mem[64] = mem[64] + 96
                                    mem[_9977 + 32 len 64] = call.data[calldata.size len 64]
                                    if not mem[_9977]:
                                        revert with 0, 50
                                    mem[_9977 + 32] = sub_0c756bf3Address
                                    require ext_code.size(uniswapV2RouterAddress)
                                    staticcall uniswapV2RouterAddress.WAVAX() with:
                                            gas gas_remaining wei
                                    mem[_9977 + 96] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = _9977 + ceil32(return_data.size) + 96
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    if 1 >= mem[_9977]:
                                        revert with 0, 50
                                    mem[_9977 + 64] = ext_call.return_data[12 len 20]
                                    mem[_9977 + ceil32(return_data.size) + 100] = uniswapV2RouterAddress
                                    mem[_9977 + ceil32(return_data.size) + 132] = ext_call.return_data[0] * sub_b91b740b / 100
                                    require ext_code.size(sub_0c756bf3Address)
                                    call sub_0c756bf3Address.approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args uniswapV2RouterAddress, ext_call.return_data[0] * sub_b91b740b / 100
                                    mem[_9977 + ceil32(return_data.size) + 96] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = _9977 + (2 * ceil32(return_data.size)) + 96
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    mem[_9977 + (2 * ceil32(return_data.size)) + 96] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                    mem[_9977 + (2 * ceil32(return_data.size)) + 100] = ext_call.return_data[0] * sub_b91b740b / 100
                                    mem[_9977 + (2 * ceil32(return_data.size)) + 132] = 0
                                    mem[_9977 + (2 * ceil32(return_data.size)) + 164] = 160
                                    mem[_9977 + (2 * ceil32(return_data.size)) + 260] = mem[_9977]
                                    idx = 0
                                    s = _9977 + (2 * ceil32(return_data.size)) + 292
                                    t = _9977 + 32
                                    while idx < mem[_9977]:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[_9977 + (2 * ceil32(return_data.size)) + 196] = this.address
                                    mem[_9977 + (2 * ceil32(return_data.size)) + 228] = block.timestamp
                                    require ext_code.size(uniswapV2RouterAddress)
                                    call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0] * sub_b91b740b / 100, 0, 160, address(this.address), block.timestamp, mem[_9977 + (2 * ceil32(return_data.size)) + 260 len (32 * mem[_9977]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_9977 + (2 * ceil32(return_data.size)) + 96] = 30
                                    mem[_9977 + (2 * ceil32(return_data.size)) + 128] = 'SafeMath: subtraction overflow'
                                    if eth.balance(this.address) > eth.balance(this.address):
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if eth.balance(this.address) < eth.balance(this.address):
                                        revert with 0, 17
                                    call treasuryAddress with:
                                         gas gas_remaining wei
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 'PAYMENT FAIL'
                                        mem[_9977 + (2 * ceil32(return_data.size)) + 196] = burnAddress
                                        mem[_9977 + (2 * ceil32(return_data.size)) + 228] = ext_call.return_data[0] * sub_72f1dbdb / 100
                                        mem[_9977 + (2 * ceil32(return_data.size)) + 160] = 68
                                        mem[_9977 + (2 * ceil32(return_data.size)) + 192 len 4] = unknown_0xa9059cbb(?????)
                                        mem[_9977 + (2 * ceil32(return_data.size)) + 260] = 32
                                        mem[_9977 + (2 * ceil32(return_data.size)) + 292] = 'SafeERC20: low-level call failed'
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 'Address: insufficient balance for call'
                                        if not ext_code.size(sub_0c756bf3Address):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[_9977 + (2 * ceil32(return_data.size)) + 324 len 96] = 0, burnAddress, ext_call.return_data[0] * sub_72f1dbdb / 100, 0
                                        mem[_9977 + (2 * ceil32(return_data.size)) + 392] = 0
                                        call sub_0c756bf3Address with:
                                           funct Mask(32, 224, 0, burnAddress, ext_call.return_data[0] * sub_72f1dbdb / 100, 0) >> 224
                                             gas gas_remaining wei
                                            args (Mask(512, -288, 0, burnAddress, ext_call.return_data[0] * sub_72f1dbdb / 100, 0) << 288)
                                        if not return_data.size:
                                            if not ext_call.success:
                                                if mem[96]:
                                                    revert with memory
                                                      from 128
                                                       len mem[96]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if mem[96]:
                                                require mem[96] >= 32
                                                require mem[128] == bool(mem[128])
                                                if not mem[128]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            distributing = 0
                                            mem[_9977 + (2 * ceil32(return_data.size)) + 324] = 0x9021973200000000000000000000000000000000000000000000000000000000
                                            mem[_9977 + (2 * ceil32(return_data.size)) + 328] = msg.sender
                                            mem[_9977 + (2 * ceil32(return_data.size)) + 360] = 96
                                            mem[_9977 + (2 * ceil32(return_data.size)) + 424] = mem[128]
                                            mem[_9977 + (2 * ceil32(return_data.size)) + 456 len ceil32(mem[128])] = mem[160 len ceil32(mem[128])]
                                            if ceil32(mem[128]) > mem[128]:
                                                mem[mem[128] + _9977 + (2 * ceil32(return_data.size)) + 456] = 0
                                            require ext_code.size(managementAddress)
                                            call managementAddress.0x90219732 with:
                                                 gas gas_remaining wei
                                                args msg.sender, Array(len=mem[128], data=mem[_9977 + (2 * ceil32(return_data.size)) + 456 len ceil32(mem[128])]), rewardPerDay
                                        else:
                                            mem[_9977 + (2 * ceil32(return_data.size)) + 324] = return_data.size
                                            mem[_9977 + (2 * ceil32(return_data.size)) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                require mem[_9977 + (2 * ceil32(return_data.size)) + 356] == bool(mem[_9977 + (2 * ceil32(return_data.size)) + 356])
                                                if not mem[_9977 + (2 * ceil32(return_data.size)) + 356]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            distributing = 0
                                            mem[_9977 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 325] = 0x9021973200000000000000000000000000000000000000000000000000000000
                                            mem[_9977 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = msg.sender
                                            mem[_9977 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = 96
                                            mem[_9977 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = mem[128]
                                            mem[_9977 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457 len ceil32(mem[128])] = mem[160 len ceil32(mem[128])]
                                            if ceil32(mem[128]) > mem[128]:
                                                mem[mem[128] + _9977 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = 0
                                            require ext_code.size(managementAddress)
                                            call managementAddress.0x90219732 with:
                                                 gas gas_remaining wei
                                                args msg.sender, Array(len=mem[128], data=mem[_9977 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457 len ceil32(mem[128])]), rewardPerDay
                                    else:
                                        mem[_9977 + (2 * ceil32(return_data.size)) + 160] = return_data.size
                                        mem[_9977 + (2 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, 'PAYMENT FAIL'
                                        mem[_9977 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 197] = burnAddress
                                        mem[_9977 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 229] = ext_call.return_data[0] * sub_72f1dbdb / 100
                                        mem[_9977 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 161] = 68
                                        mem[_9977 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 193 len 4] = unknown_0xa9059cbb(?????)
                                        mem[_9977 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 32
                                        mem[_9977 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = 'SafeERC20: low-level call failed'
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 'Address: insufficient balance for call'
                                        if not ext_code.size(sub_0c756bf3Address):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[_9977 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 325 len 96] = 0, burnAddress, ext_call.return_data[0] * sub_72f1dbdb / 100, 0
                                        mem[_9977 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = 0
                                        call sub_0c756bf3Address with:
                                           funct Mask(32, 224, 0, burnAddress, ext_call.return_data[0] * sub_72f1dbdb / 100, 0) >> 224
                                             gas gas_remaining wei
                                            args (Mask(512, -288, 0, burnAddress, ext_call.return_data[0] * sub_72f1dbdb / 100, 0) << 288)
                                        if not return_data.size:
                                            if not ext_call.success:
                                                if mem[96]:
                                                    revert with memory
                                                      from 128
                                                       len mem[96]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if mem[96]:
                                                require mem[96] >= 32
                                                require mem[128] == bool(mem[128])
                                                if not mem[128]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            distributing = 0
                                            mem[_9977 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 325] = 0x9021973200000000000000000000000000000000000000000000000000000000
                                            mem[_9977 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = msg.sender
                                            mem[_9977 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = 96
                                            mem[_9977 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = mem[128]
                                            mem[_9977 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457 len ceil32(mem[128])] = mem[160 len ceil32(mem[128])]
                                            if ceil32(mem[128]) > mem[128]:
                                                mem[mem[128] + _9977 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = 0
                                            require ext_code.size(managementAddress)
                                            call managementAddress.0x90219732 with:
                                                 gas gas_remaining wei
                                                args msg.sender, Array(len=mem[128], data=mem[_9977 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457 len ceil32(mem[128])]), rewardPerDay
                                        else:
                                            mem[_9977 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 325] = return_data.size
                                            mem[_9977 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[_9977 + (4 * ceil32(return_data.size)) + 326] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_9977 + (4 * ceil32(return_data.size)) + 330] = 32
                                                mem[_9977 + (4 * ceil32(return_data.size)) + 362] = 32
                                                mem[_9977 + (4 * ceil32(return_data.size)) + 394] = 'SafeERC20: low-level call failed'
                                                revert with memory
                                                  from _9977 + (4 * ceil32(return_data.size)) + 326
                                                   len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
                                            if return_data.size:
                                                require return_data.size >= 32
                                                require mem[_9977 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357] == bool(mem[_9977 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357])
                                                if not mem[_9977 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357]:
                                                    mem[_9977 + (4 * ceil32(return_data.size)) + 326] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[_9977 + (4 * ceil32(return_data.size)) + 330] = 32
                                                    mem[_9977 + (4 * ceil32(return_data.size)) + 362] = 42
                                                    mem[_9977 + (4 * ceil32(return_data.size)) + 394] = 'SafeERC20: ERC20 operation did n'
                                                    mem[_9977 + (4 * ceil32(return_data.size)) + 426] = 0x6f74207375636365656400000000000000000000000000000000000000000000
                                                    revert with memory
                                                      from _9977 + (4 * ceil32(return_data.size)) + 326
                                                       len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
                                            distributing = 0
                                            mem[_9977 + (4 * ceil32(return_data.size)) + 326] = 0x9021973200000000000000000000000000000000000000000000000000000000
                                            mem[_9977 + (4 * ceil32(return_data.size)) + 330] = msg.sender
                                            mem[_9977 + (4 * ceil32(return_data.size)) + 362] = 96
                                            mem[_9977 + (4 * ceil32(return_data.size)) + 426] = mem[128]
                                            mem[_9977 + (4 * ceil32(return_data.size)) + 458 len ceil32(mem[128])] = mem[160 len ceil32(mem[128])]
                                            if ceil32(mem[128]) > mem[128]:
                                                mem[mem[128] + _9977 + (4 * ceil32(return_data.size)) + 458] = 0
                                            mem[_9977 + (4 * ceil32(return_data.size)) + 394] = rewardPerDay
                                            require ext_code.size(managementAddress)
                                            call managementAddress.0x90219732 with:
                                                 gas gas_remaining wei
                                                args mem[_9977 + (4 * ceil32(return_data.size)) + 330 len ceil32(mem[128]) + (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 128]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
        else:
            if unknown_0x91cca3db(?????) > uint32(call.func_hash) >> 224:
                if uint32(call.func_hash) >> 224 != unknown_0x81e57325(?????):
                    if unknown_0x88a8d602(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return managementAddress
                    if unknown_0x8a55784b(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return sub_8a55784b
                    if unknown_0x8da5cb5b(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return owner
                    require unknown_0x8f2a7780(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    return sub_8f2a7780
                require not msg.value
                mem[128] = 0x5e9ce5a900000000000000000000000000000000000000000000000000000000
                mem[132] = msg.sender
                require ext_code.size(managementAddress)
                staticcall managementAddress.0x5e9ce5a9 with:
                        gas gas_remaining wei
                       args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 128
                require return_data.size >= 32
                _76 = mem[128 len 4], Mask(224, 32, msg.sender) >> 32
                require mem[128 len 4], Mask(224, 32, msg.sender) >> 32 <= test266151307()
                require return_data.size + 128 > mem[128 len 4], Mask(224, 32, msg.sender) >> 32 + 159
                _94 = mem[mem[128 len 4], Mask(224, 32, msg.sender) >> 32 + 128]
                if mem[mem[128 len 4], Mask(224, 32, msg.sender) >> 32 + 128] > test266151307():
                    revert with 0, 65
                if ceil32(ceil32(mem[mem[128 len 4], Mask(224, 32, msg.sender) >> 32 + 128])) + 1 < 0 or ceil32(return_data.size) + ceil32(ceil32(mem[mem[128 len 4], Mask(224, 32, msg.sender) >> 32 + 128])) + 129 > test266151307():
                    revert with 0, 65
                mem[64] = ceil32(return_data.size) + ceil32(ceil32(mem[mem[128 len 4], Mask(224, 32, msg.sender) >> 32 + 128])) + 129
                mem[ceil32(return_data.size) + 128] = mem[mem[128 len 4], Mask(224, 32, msg.sender) >> 32 + 128]
                require _76 + _94 + 32 <= return_data.size
                mem[ceil32(return_data.size) + 160 len ceil32(_94)] = mem[_76 + 160 len ceil32(_94)]
                if ceil32(_94) > _94:
                    mem[_94 + ceil32(return_data.size) + 160] = 0
                mem[mem[64]] = 32
                mem[mem[64] + 32] = _94
                mem[mem[64] + 64 len ceil32(_94)] = mem[ceil32(return_data.size) + 160 len ceil32(_94)]
                if ceil32(_94) > _94:
                    mem[_94 + mem[64] + 64] = 0
                return Array(len=_94, data=mem[mem[64] + 64 len ceil32(_94)])
            if unknown_0x91cca3db(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return devAddress
            if unknown_0x94471c42(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require ext_code.size(managementAddress)
                staticcall managementAddress.0x94471c42 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                return ext_call.return_data[0]
            if uint32(call.func_hash) >> 224 != unknown_0xa760a355(?????):
                if uint32(call.func_hash) >> 224 != unknown_0xa9e732bb(?????):
                    require unknown_0xaf8f42b8(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    return rewardPerDay
                require not msg.value
                require calldata.size - 4 >= 32
                if not sub_ebaf1549:
                    revert with 0, 'USER HELPER: NOT ENABLED YET'
                mem[164] = cd[4]
                require ext_code.size(managementAddress)
                call managementAddress.0xcd160c9f with:
                     gas gas_remaining wei
                    args msg.sender, cd[4]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] and claimTax > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                require ext_code.size(rewardPoolAddress)
                call rewardPoolAddress.rewardTo(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(this.address), ext_call.return_data[0] * claimTax / 100
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if ext_call.return_data[0] and sub_2d5429de > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                mem[ceil32(return_data.size) + 160] = sub_0c756bf3Address
                require ext_code.size(uniswapV2RouterAddress)
                staticcall uniswapV2RouterAddress.WAVAX() with:
                        gas gas_remaining wei
                mem[ceil32(return_data.size) + 224] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[ceil32(return_data.size) + 192] = ext_call.return_data[12 len 20]
                mem[(2 * ceil32(return_data.size)) + 228] = uniswapV2RouterAddress
                mem[(2 * ceil32(return_data.size)) + 260] = ext_call.return_data[0] * sub_2d5429de / 100
                require ext_code.size(sub_0c756bf3Address)
                call sub_0c756bf3Address.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args mem[(2 * ceil32(return_data.size)) + 228 len ceil32(return_data.size) + 64]
                mem[(2 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                mem[(4 * ceil32(return_data.size)) + 224] = 0x762b156200000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + 228] = ext_call.return_data[0] * sub_2d5429de / 100
                idx = 0
                s = (4 * ceil32(return_data.size)) + 420
                t = ceil32(return_data.size) + 160
                while idx < 2:
                    mem[s] = mem[t + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(uniswapV2RouterAddress)
                call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0] * sub_2d5429de / 100, 0, 160, address(this.address), block.timestamp, 2, mem[(4 * ceil32(return_data.size)) + 420 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if eth.balance(this.address) > eth.balance(this.address):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if eth.balance(this.address) < eth.balance(this.address):
                    revert with 0, 17
                call treasuryAddress with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with 0, 'PAYMENT FAIL'
                if ext_call.return_data[0] and sub_8f2a7780 > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                require ext_code.size(stor5)
                staticcall stor5.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(uniswapV2RouterAddress)
                staticcall uniswapV2RouterAddress.WAVAX() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                revert with 0, 50
            require not msg.value
            require calldata.size - 4 >= 32
            require cd[4] <= test266151307()
            require calldata.size > cd[4] + 35
            if ('cd', 4).length > test266151307():
                revert with 0, 65
            if ceil32(ceil32(('cd', 4).length)) + 129 < 128 or ceil32(ceil32(('cd', 4).length)) + 129 > test266151307():
                revert with 0, 65
            mem[128] = ('cd', 4).length
            require cd[4] + ('cd', 4).length + 36 <= calldata.size
            mem[160 len ('cd', 4).length] = call.data[cd[4] + 36 len ('cd', 4).length]
            if not sub_ebaf1549:
                revert with 0, 'USER HELPER: NOT ENABLED YET'
            mem[ceil32(ceil32(('cd', 4).length)) + 133] = msg.sender
            mem[ceil32(ceil32(('cd', 4).length)) + 165] = nodePrice
            require ext_code.size(managementAddress)
            call managementAddress.0x66a36975 with:
                 gas gas_remaining wei
                args msg.sender, nodePrice
            mem[ceil32(ceil32(('cd', 4).length)) + 129] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if nodePrice < ext_call.return_data[0]:
                    revert with 0, 17
                if nodePrice - ext_call.return_data[0] <= 0:
                    mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + 133] = this.address
                    require ext_code.size(sub_0c756bf3Address)
                    staticcall sub_0c756bf3Address.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + 129] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if distributing:
                        require ext_code.size(managementAddress)
                        call managementAddress.0x90219732 with:
                             gas gas_remaining wei
                            args msg.sender, Array(len=('cd', 4).length, data=call.data[cd[4] + 36 len ('cd', 4).length]), rewardPerDay
                    else:
                        if ext_call.return_data[0] < distributionAmount:
                            require ext_code.size(managementAddress)
                            call managementAddress.0x90219732 with:
                                 gas gas_remaining wei
                                args msg.sender, Array(len=('cd', 4).length, data=call.data[cd[4] + 36 len ('cd', 4).length]), rewardPerDay
                        else:
                            distributing = 1
                            mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 133] = this.address
                            require ext_code.size(sub_0c756bf3Address)
                            staticcall sub_0c756bf3Address.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 129] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] and sub_8a55784b > -1 / ext_call.return_data[0]:
                                revert with 0, 17
                            if ext_call.return_data[0] and sub_b91b740b > -1 / ext_call.return_data[0]:
                                revert with 0, 17
                            if ext_call.return_data[0] and sub_72f1dbdb > -1 / ext_call.return_data[0]:
                                revert with 0, 17
                            mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 129] = 26
                            mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 161] = 'SafeMath: division by zero'
                            mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 193] = 30
                            mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 225] = 'SafeMath: subtraction overflow'
                            if ext_call.return_data[0] * sub_8a55784b / 100 / 2 > ext_call.return_data[0] * sub_8a55784b / 100:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if ext_call.return_data[0] * sub_8a55784b / 100 < ext_call.return_data[0] * sub_8a55784b / 100 / 2:
                                revert with 0, 17
                            mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 257] = 2
                            mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 289] = sub_0c756bf3Address
                            require ext_code.size(uniswapV2RouterAddress)
                            staticcall uniswapV2RouterAddress.WAVAX() with:
                                    gas gas_remaining wei
                            mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 353] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 321] = ext_call.return_data[12 len 20]
                            mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 357] = uniswapV2RouterAddress
                            mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 389] = ext_call.return_data[0] * sub_8a55784b / 100 / 2
                            require ext_code.size(sub_0c756bf3Address)
                            call sub_0c756bf3Address.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args uniswapV2RouterAddress, Mask(255, 1, ext_call.return_data[0] * sub_8a55784b / 100), mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 421 len 9 * ceil32(return_data.size)]
                            mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 353] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 353] = 0x762b156200000000000000000000000000000000000000000000000000000000
                            mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 357] = ext_call.return_data[0] * sub_8a55784b / 100 / 2
                            mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 517] = 2
                            idx = 0
                            s = ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 549
                            t = ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 289
                            while idx < 2:
                                mem[s] = mem[t + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 485] = block.timestamp
                            require ext_code.size(uniswapV2RouterAddress)
                            call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args Mask(255, 1, ext_call.return_data[0] * sub_8a55784b / 100), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 549 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 353] = 30
                            mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 385] = 'SafeMath: subtraction overflow'
                            if eth.balance(this.address) > eth.balance(this.address):
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if eth.balance(this.address) < eth.balance(this.address):
                                revert with 0, 17
                            mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 421] = uniswapV2RouterAddress
                            mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 453] = (ext_call.return_data[0] * sub_8a55784b / 100) - (ext_call.return_data[0] * sub_8a55784b / 100 / 2)
                            require ext_code.size(sub_0c756bf3Address)
                            call sub_0c756bf3Address.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args uniswapV2RouterAddress, (ext_call.return_data[0] * sub_8a55784b / 100) - (ext_call.return_data[0] * sub_8a55784b / 100 / 2)
                            mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 417] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            mem[ceil32(ceil32(('cd', 4).length)) + (10 * ceil32(return_data.size)) + 485] = 0
                            mem[ceil32(ceil32(('cd', 4).length)) + (10 * ceil32(return_data.size)) + 517] = 0
                            mem[ceil32(ceil32(('cd', 4).length)) + (10 * ceil32(return_data.size)) + 549] = 0
                            mem[ceil32(ceil32(('cd', 4).length)) + (10 * ceil32(return_data.size)) + 581] = block.timestamp
                            require ext_code.size(uniswapV2RouterAddress)
                            call uniswapV2RouterAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                 gas gas_remaining wei
                                args sub_0c756bf3Address, (ext_call.return_data[0] * sub_8a55784b / 100) - (ext_call.return_data[0] * sub_8a55784b / 100 / 2), 0, 0, 0, block.timestamp
                            mem[ceil32(ceil32(('cd', 4).length)) + (10 * ceil32(return_data.size)) + 417 len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            mem[ceil32(ceil32(('cd', 4).length)) + (11 * ceil32(return_data.size)) + 417] = 2
                            mem[ceil32(ceil32(('cd', 4).length)) + (11 * ceil32(return_data.size)) + 449] = sub_0c756bf3Address
                            require ext_code.size(uniswapV2RouterAddress)
                            staticcall uniswapV2RouterAddress.WAVAX() with:
                                    gas gas_remaining wei
                            mem[ceil32(ceil32(('cd', 4).length)) + (11 * ceil32(return_data.size)) + 513] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[ceil32(ceil32(('cd', 4).length)) + (11 * ceil32(return_data.size)) + 481] = ext_call.return_data[12 len 20]
                            mem[ceil32(ceil32(('cd', 4).length)) + (12 * ceil32(return_data.size)) + 517] = uniswapV2RouterAddress
                            mem[ceil32(ceil32(('cd', 4).length)) + (12 * ceil32(return_data.size)) + 549] = ext_call.return_data[0] * sub_b91b740b / 100
                            require ext_code.size(sub_0c756bf3Address)
                            call sub_0c756bf3Address.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args uniswapV2RouterAddress, ext_call.return_data[0] * sub_b91b740b / 100
                            mem[ceil32(ceil32(('cd', 4).length)) + (12 * ceil32(return_data.size)) + 513] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(ceil32(('cd', 4).length)) + (14 * ceil32(return_data.size)) + 513
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            mem[ceil32(ceil32(('cd', 4).length)) + (14 * ceil32(return_data.size)) + 513] = 0x762b156200000000000000000000000000000000000000000000000000000000
                            mem[ceil32(ceil32(('cd', 4).length)) + (14 * ceil32(return_data.size)) + 517] = ext_call.return_data[0] * sub_b91b740b / 100
                            mem[ceil32(ceil32(('cd', 4).length)) + (14 * ceil32(return_data.size)) + 549] = 0
                            mem[ceil32(ceil32(('cd', 4).length)) + (14 * ceil32(return_data.size)) + 581] = 160
                            mem[ceil32(ceil32(('cd', 4).length)) + (14 * ceil32(return_data.size)) + 677] = 2
                            idx = 0
                            s = ceil32(ceil32(('cd', 4).length)) + (14 * ceil32(return_data.size)) + 709
                            t = ceil32(ceil32(('cd', 4).length)) + (11 * ceil32(return_data.size)) + 449
                            while idx < mem[ceil32(ceil32(('cd', 4).length)) + (11 * ceil32(return_data.size)) + 417]:
                                mem[s] = mem[t + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[ceil32(ceil32(('cd', 4).length)) + (14 * ceil32(return_data.size)) + 613] = this.address
                            mem[ceil32(ceil32(('cd', 4).length)) + (14 * ceil32(return_data.size)) + 645] = block.timestamp
                            require ext_code.size(uniswapV2RouterAddress)
                            call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len ceil32(ceil32(('cd', 4).length)) + (14 * ceil32(return_data.size)) + (32 * mem[ceil32(ceil32(('cd', 4).length)) + (11 * ceil32(return_data.size)) + 417]) + -mem[64] + 705]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _9324 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_9324] = 30
                            mem[_9324 + 32] = 'SafeMath: subtraction overflow'
                            if eth.balance(this.address) > eth.balance(this.address):
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if eth.balance(this.address) < eth.balance(this.address):
                                revert with 0, 17
                            call treasuryAddress with:
                                 gas gas_remaining wei
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 'PAYMENT FAIL'
                                _9665 = mem[64]
                                mem[mem[64] + 36] = burnAddress
                                mem[mem[64] + 68] = ext_call.return_data[0] * sub_72f1dbdb / 100
                                _9697 = mem[64]
                                mem[mem[64]] = 68
                                mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                                mem[64] = mem[64] + 164
                                mem[_9665 + 100] = 32
                                mem[_9665 + 132] = 'SafeERC20: low-level call failed'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 'Address: insufficient balance for call'
                                if not ext_code.size(sub_0c756bf3Address):
                                    revert with 0, 'Address: call to non-contract'
                                _9839 = mem[_9697]
                                mem[_9665 + 164 len ceil32(mem[_9697])] = mem[_9697 + 32 len ceil32(mem[_9697])]
                                if ceil32(_9839) > _9839:
                                    mem[_9839 + _9665 + 164] = 0
                                call sub_0c756bf3Address with:
                                     gas gas_remaining wei
                                    args mem[_9665 + 168 len _9839 - 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if mem[96]:
                                            revert with memory
                                              from 128
                                               len mem[96]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if mem[96]:
                                        require mem[96] >= 32
                                        require mem[128] == bool(mem[128])
                                        if not mem[128]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    distributing = 0
                                    mem[_9665 + 164] = 0x9021973200000000000000000000000000000000000000000000000000000000
                                    mem[_9665 + 168] = msg.sender
                                    mem[_9665 + 200] = 96
                                    mem[_9665 + 264] = mem[128]
                                    mem[_9665 + 296 len ceil32(mem[128])] = mem[160 len ceil32(mem[128])]
                                    if ceil32(mem[128]) > mem[128]:
                                        mem[mem[128] + _9665 + 296] = 0
                                    mem[_9665 + 232] = rewardPerDay
                                    require ext_code.size(managementAddress)
                                    call managementAddress.0x90219732 with:
                                         gas gas_remaining wei
                                        args msg.sender, Array(len=mem[128], data=mem[_9665 + 296 len ceil32(mem[128])]), rewardPerDay
                                else:
                                    mem[_9665 + 164] = return_data.size
                                    mem[_9665 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        require mem[_9665 + 196] == bool(mem[_9665 + 196])
                                        if not mem[_9665 + 196]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    distributing = 0
                                    mem[_9665 + ceil32(return_data.size) + 165] = 0x9021973200000000000000000000000000000000000000000000000000000000
                                    mem[_9665 + ceil32(return_data.size) + 169] = msg.sender
                                    mem[_9665 + ceil32(return_data.size) + 201] = 96
                                    mem[_9665 + ceil32(return_data.size) + 265] = mem[128]
                                    mem[_9665 + ceil32(return_data.size) + 297 len ceil32(mem[128])] = mem[160 len ceil32(mem[128])]
                                    if ceil32(mem[128]) > mem[128]:
                                        mem[mem[128] + _9665 + ceil32(return_data.size) + 297] = 0
                                    require ext_code.size(managementAddress)
                                    call managementAddress.0x90219732 with:
                                         gas gas_remaining wei
                                        args msg.sender, Array(len=mem[128], data=mem[_9665 + ceil32(return_data.size) + 297 len ceil32(mem[128])]), rewardPerDay
                            else:
                                _9542 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_9542] = return_data.size
                                mem[_9542 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 'PAYMENT FAIL'
                                _9666 = mem[64]
                                mem[mem[64] + 36] = burnAddress
                                mem[mem[64] + 68] = ext_call.return_data[0] * sub_72f1dbdb / 100
                                _9699 = mem[64]
                                mem[mem[64]] = 68
                                mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                                mem[64] = mem[64] + 164
                                mem[_9666 + 100] = 32
                                mem[_9666 + 132] = 'SafeERC20: low-level call failed'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 'Address: insufficient balance for call'
                                if not ext_code.size(sub_0c756bf3Address):
                                    revert with 0, 'Address: call to non-contract'
                                _9841 = mem[_9699]
                                mem[_9666 + 164 len ceil32(mem[_9699])] = mem[_9699 + 32 len ceil32(mem[_9699])]
                                if ceil32(_9841) > _9841:
                                    mem[_9841 + _9666 + 164] = 0
                                call sub_0c756bf3Address with:
                                     gas gas_remaining wei
                                    args mem[_9666 + 168 len _9841 - 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if mem[96]:
                                            revert with memory
                                              from 128
                                               len mem[96]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if mem[96]:
                                        require mem[96] >= 32
                                        require mem[128] == bool(mem[128])
                                        if not mem[128]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    distributing = 0
                                    mem[_9666 + 164] = 0x9021973200000000000000000000000000000000000000000000000000000000
                                    mem[_9666 + 168] = msg.sender
                                    mem[_9666 + 200] = 96
                                    mem[_9666 + 264] = mem[128]
                                    mem[_9666 + 296 len ceil32(mem[128])] = mem[160 len ceil32(mem[128])]
                                    if ceil32(mem[128]) > mem[128]:
                                        mem[mem[128] + _9666 + 296] = 0
                                    mem[_9666 + 232] = rewardPerDay
                                    require ext_code.size(managementAddress)
                                    call managementAddress.0x90219732 with:
                                         gas gas_remaining wei
                                        args msg.sender, Array(len=mem[128], data=mem[_9666 + 296 len ceil32(mem[128])]), rewardPerDay
                                else:
                                    mem[_9666 + 164] = return_data.size
                                    mem[_9666 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        require mem[_9666 + 196] == bool(mem[_9666 + 196])
                                        if not mem[_9666 + 196]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    distributing = 0
                                    mem[_9666 + ceil32(return_data.size) + 165] = 0x9021973200000000000000000000000000000000000000000000000000000000
                                    mem[_9666 + ceil32(return_data.size) + 169] = msg.sender
                                    mem[_9666 + ceil32(return_data.size) + 201] = 96
                                    mem[_9666 + ceil32(return_data.size) + 265] = mem[128]
                                    mem[_9666 + ceil32(return_data.size) + 297 len ceil32(mem[128])] = mem[160 len ceil32(mem[128])]
                                    if ceil32(mem[128]) > mem[128]:
                                        mem[mem[128] + _9666 + ceil32(return_data.size) + 297] = 0
                                    require ext_code.size(managementAddress)
                                    call managementAddress.0x90219732 with:
                                         gas gas_remaining wei
                                        args msg.sender, Array(len=mem[128], data=mem[_9666 + ceil32(return_data.size) + 297 len ceil32(mem[128])]), rewardPerDay
                else:
                    if nodePrice < ext_call.return_data[0]:
                        revert with 0, 17
                    mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + 165] = msg.sender
                    mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + 197] = this.address
                    mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + 229] = nodePrice - ext_call.return_data[0]
                    mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + 129] = 100
                    mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + 165 len 28] = Mask(224, 32, msg.sender) >> 32
                    mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + 161 len 4] = unknown_0x23b872dd(?????)
                    mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + 261] = 32
                    mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + 293] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(sub_0c756bf3Address):
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + 325 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), nodePrice - ext_call.return_data[0], 0
                    mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + 425] = 0
                    call sub_0c756bf3Address with:
                       funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, address(this.address), nodePrice - ext_call.return_data[0], 0) >> 224
                         gas gas_remaining wei
                        args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, address(this.address), nodePrice - ext_call.return_data[0], 0) << 544)
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if not mem[96]:
                            mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + 329] = this.address
                            require ext_code.size(sub_0c756bf3Address)
                            staticcall sub_0c756bf3Address.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + 325] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if distributing:
                                require ext_code.size(managementAddress)
                                call managementAddress.0x90219732 with:
                                     gas gas_remaining wei
                                    args msg.sender, Array(len=('cd', 4).length, data=call.data[cd[4] + 36 len ('cd', 4).length]), rewardPerDay
                            else:
                                if ext_call.return_data[0] < distributionAmount:
                                    require ext_code.size(managementAddress)
                                    call managementAddress.0x90219732 with:
                                         gas gas_remaining wei
                                        args msg.sender, Array(len=('cd', 4).length, data=call.data[cd[4] + 36 len ('cd', 4).length]), rewardPerDay
                                else:
                                    distributing = 1
                                    mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 329] = this.address
                                    require ext_code.size(sub_0c756bf3Address)
                                    staticcall sub_0c756bf3Address.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 325] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] and sub_8a55784b > -1 / ext_call.return_data[0]:
                                        revert with 0, 17
                                    if ext_call.return_data[0] and sub_b91b740b > -1 / ext_call.return_data[0]:
                                        revert with 0, 17
                                    if ext_call.return_data[0] and sub_72f1dbdb > -1 / ext_call.return_data[0]:
                                        revert with 0, 17
                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 325] = 26
                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 357] = 'SafeMath: division by zero'
                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 389] = 30
                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 421] = 'SafeMath: subtraction overflow'
                                    if ext_call.return_data[0] * sub_8a55784b / 100 / 2 > ext_call.return_data[0] * sub_8a55784b / 100:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if ext_call.return_data[0] * sub_8a55784b / 100 < ext_call.return_data[0] * sub_8a55784b / 100 / 2:
                                        revert with 0, 17
                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 453] = 2
                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 485] = sub_0c756bf3Address
                                    require ext_code.size(uniswapV2RouterAddress)
                                    staticcall uniswapV2RouterAddress.WAVAX() with:
                                            gas gas_remaining wei
                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 549] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 517] = ext_call.return_data[12 len 20]
                                    mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 553] = uniswapV2RouterAddress
                                    mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 585] = ext_call.return_data[0] * sub_8a55784b / 100 / 2
                                    require ext_code.size(sub_0c756bf3Address)
                                    call sub_0c756bf3Address.approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args uniswapV2RouterAddress, ext_call.return_data[0] * sub_8a55784b / 100 / 2
                                    mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 549] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 549
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 549] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 553] = ext_call.return_data[0] * sub_8a55784b / 100 / 2
                                    mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 585] = 0
                                    mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 617] = 160
                                    mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 713] = 2
                                    idx = 0
                                    s = ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 745
                                    t = ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 485
                                    while idx < mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 453]:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 649] = this.address
                                    mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 681] = block.timestamp
                                    require ext_code.size(uniswapV2RouterAddress)
                                    call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + (32 * mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 453]) + -mem[64] + 741]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _9345 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_9345] = 30
                                    mem[_9345 + 32] = 'SafeMath: subtraction overflow'
                                    if eth.balance(this.address) > eth.balance(this.address):
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if eth.balance(this.address) < eth.balance(this.address):
                                        revert with 0, 17
                                    mem[mem[64] + 4] = uniswapV2RouterAddress
                                    mem[mem[64] + 36] = (ext_call.return_data[0] * sub_8a55784b / 100) - (ext_call.return_data[0] * sub_8a55784b / 100 / 2)
                                    require ext_code.size(sub_0c756bf3Address)
                                    call sub_0c756bf3Address.approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args uniswapV2RouterAddress, (ext_call.return_data[0] * sub_8a55784b / 100) - (ext_call.return_data[0] * sub_8a55784b / 100 / 2)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _9671 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_9671] == bool(mem[_9671])
                                    mem[mem[64] + 68] = 0
                                    mem[mem[64] + 100] = 0
                                    mem[mem[64] + 132] = 0
                                    mem[mem[64] + 164] = block.timestamp
                                    require ext_code.size(uniswapV2RouterAddress)
                                    call uniswapV2RouterAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                         gas gas_remaining wei
                                        args sub_0c756bf3Address, (ext_call.return_data[0] * sub_8a55784b / 100) - (ext_call.return_data[0] * sub_8a55784b / 100 / 2), 0, 0, 0, block.timestamp
                                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 96
                                    _9935 = mem[64]
                                    mem[mem[64]] = 2
                                    mem[64] = mem[64] + 96
                                    mem[_9935 + 32 len 64] = call.data[calldata.size len 64]
                                    if not mem[_9935]:
                                        revert with 0, 50
                                    mem[_9935 + 32] = sub_0c756bf3Address
                                    require ext_code.size(uniswapV2RouterAddress)
                                    staticcall uniswapV2RouterAddress.WAVAX() with:
                                            gas gas_remaining wei
                                    mem[_9935 + 96] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = _9935 + ceil32(return_data.size) + 96
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    if 1 >= mem[_9935]:
                                        revert with 0, 50
                                    mem[_9935 + 64] = ext_call.return_data[12 len 20]
                                    mem[_9935 + ceil32(return_data.size) + 100] = uniswapV2RouterAddress
                                    mem[_9935 + ceil32(return_data.size) + 132] = ext_call.return_data[0] * sub_b91b740b / 100
                                    require ext_code.size(sub_0c756bf3Address)
                                    call sub_0c756bf3Address.approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args uniswapV2RouterAddress, ext_call.return_data[0] * sub_b91b740b / 100
                                    mem[_9935 + ceil32(return_data.size) + 96] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = _9935 + (2 * ceil32(return_data.size)) + 96
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    mem[_9935 + (2 * ceil32(return_data.size)) + 96] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                    mem[_9935 + (2 * ceil32(return_data.size)) + 100] = ext_call.return_data[0] * sub_b91b740b / 100
                                    mem[_9935 + (2 * ceil32(return_data.size)) + 132] = 0
                                    mem[_9935 + (2 * ceil32(return_data.size)) + 164] = 160
                                    mem[_9935 + (2 * ceil32(return_data.size)) + 260] = mem[_9935]
                                    idx = 0
                                    s = _9935 + (2 * ceil32(return_data.size)) + 292
                                    t = _9935 + 32
                                    while idx < mem[_9935]:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[_9935 + (2 * ceil32(return_data.size)) + 196] = this.address
                                    mem[_9935 + (2 * ceil32(return_data.size)) + 228] = block.timestamp
                                    require ext_code.size(uniswapV2RouterAddress)
                                    call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0] * sub_b91b740b / 100, 0, 160, address(this.address), block.timestamp, mem[_9935 + (2 * ceil32(return_data.size)) + 260 len (32 * mem[_9935]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_9935 + (2 * ceil32(return_data.size)) + 96] = 30
                                    mem[_9935 + (2 * ceil32(return_data.size)) + 128] = 'SafeMath: subtraction overflow'
                                    if eth.balance(this.address) > eth.balance(this.address):
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if eth.balance(this.address) < eth.balance(this.address):
                                        revert with 0, 17
                                    call treasuryAddress with:
                                         gas gas_remaining wei
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 'PAYMENT FAIL'
                                        mem[_9935 + (2 * ceil32(return_data.size)) + 196] = burnAddress
                                        mem[_9935 + (2 * ceil32(return_data.size)) + 228] = ext_call.return_data[0] * sub_72f1dbdb / 100
                                        mem[_9935 + (2 * ceil32(return_data.size)) + 160] = 68
                                        mem[_9935 + (2 * ceil32(return_data.size)) + 192 len 4] = unknown_0xa9059cbb(?????)
                                        mem[_9935 + (2 * ceil32(return_data.size)) + 260] = 32
                                        mem[_9935 + (2 * ceil32(return_data.size)) + 292] = 'SafeERC20: low-level call failed'
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 'Address: insufficient balance for call'
                                        if not ext_code.size(sub_0c756bf3Address):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[_9935 + (2 * ceil32(return_data.size)) + 324 len 96] = 0, burnAddress, ext_call.return_data[0] * sub_72f1dbdb / 100, 0
                                        mem[_9935 + (2 * ceil32(return_data.size)) + 392] = 0
                                        call sub_0c756bf3Address with:
                                           funct Mask(32, 224, 0, burnAddress, ext_call.return_data[0] * sub_72f1dbdb / 100, 0) >> 224
                                             gas gas_remaining wei
                                            args (Mask(512, -288, 0, burnAddress, ext_call.return_data[0] * sub_72f1dbdb / 100, 0) << 288)
                                        if not return_data.size:
                                            if not ext_call.success:
                                                if mem[96]:
                                                    revert with memory
                                                      from 128
                                                       len mem[96]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if mem[96]:
                                                require mem[96] >= 32
                                                require mem[128] == bool(mem[128])
                                                if not mem[128]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            distributing = 0
                                            mem[_9935 + (2 * ceil32(return_data.size)) + 324] = 0x9021973200000000000000000000000000000000000000000000000000000000
                                            mem[_9935 + (2 * ceil32(return_data.size)) + 328] = msg.sender
                                            mem[_9935 + (2 * ceil32(return_data.size)) + 360] = 96
                                            mem[_9935 + (2 * ceil32(return_data.size)) + 424] = mem[128]
                                            mem[_9935 + (2 * ceil32(return_data.size)) + 456 len ceil32(mem[128])] = mem[160 len ceil32(mem[128])]
                                            if ceil32(mem[128]) > mem[128]:
                                                mem[mem[128] + _9935 + (2 * ceil32(return_data.size)) + 456] = 0
                                            require ext_code.size(managementAddress)
                                            call managementAddress.0x90219732 with:
                                                 gas gas_remaining wei
                                                args msg.sender, Array(len=mem[128], data=mem[_9935 + (2 * ceil32(return_data.size)) + 456 len ceil32(mem[128])]), rewardPerDay
                                        else:
                                            mem[_9935 + (2 * ceil32(return_data.size)) + 324] = return_data.size
                                            mem[_9935 + (2 * ceil32(return_data.size)) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                require mem[_9935 + (2 * ceil32(return_data.size)) + 356] == bool(mem[_9935 + (2 * ceil32(return_data.size)) + 356])
                                                if not mem[_9935 + (2 * ceil32(return_data.size)) + 356]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            distributing = 0
                                            mem[_9935 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 325] = 0x9021973200000000000000000000000000000000000000000000000000000000
                                            mem[_9935 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = msg.sender
                                            mem[_9935 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = 96
                                            mem[_9935 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = mem[128]
                                            mem[_9935 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457 len ceil32(mem[128])] = mem[160 len ceil32(mem[128])]
                                            if ceil32(mem[128]) > mem[128]:
                                                mem[mem[128] + _9935 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = 0
                                            require ext_code.size(managementAddress)
                                            call managementAddress.0x90219732 with:
                                                 gas gas_remaining wei
                                                args msg.sender, Array(len=mem[128], data=mem[_9935 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457 len ceil32(mem[128])]), rewardPerDay
                                    else:
                                        mem[_9935 + (2 * ceil32(return_data.size)) + 160] = return_data.size
                                        mem[_9935 + (2 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, 'PAYMENT FAIL'
                                        mem[_9935 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 197] = burnAddress
                                        mem[_9935 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 229] = ext_call.return_data[0] * sub_72f1dbdb / 100
                                        mem[_9935 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 161] = 68
                                        mem[_9935 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 193 len 4] = unknown_0xa9059cbb(?????)
                                        mem[_9935 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 32
                                        mem[_9935 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = 'SafeERC20: low-level call failed'
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 'Address: insufficient balance for call'
                                        if not ext_code.size(sub_0c756bf3Address):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[_9935 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 325 len 96] = 0, burnAddress, ext_call.return_data[0] * sub_72f1dbdb / 100, 0
                                        mem[_9935 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = 0
                                        call sub_0c756bf3Address with:
                                           funct Mask(32, 224, 0, burnAddress, ext_call.return_data[0] * sub_72f1dbdb / 100, 0) >> 224
                                             gas gas_remaining wei
                                            args (Mask(512, -288, 0, burnAddress, ext_call.return_data[0] * sub_72f1dbdb / 100, 0) << 288)
                                        if not return_data.size:
                                            if not ext_call.success:
                                                if mem[96]:
                                                    revert with memory
                                                      from 128
                                                       len mem[96]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if mem[96]:
                                                require mem[96] >= 32
                                                require mem[128] == bool(mem[128])
                                                if not mem[128]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            distributing = 0
                                            mem[_9935 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 325] = 0x9021973200000000000000000000000000000000000000000000000000000000
                                            mem[_9935 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = msg.sender
                                            mem[_9935 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = 96
                                            mem[_9935 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = mem[128]
                                            mem[_9935 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457 len ceil32(mem[128])] = mem[160 len ceil32(mem[128])]
                                            if ceil32(mem[128]) > mem[128]:
                                                mem[mem[128] + _9935 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = 0
                                            require ext_code.size(managementAddress)
                                            call managementAddress.0x90219732 with:
                                                 gas gas_remaining wei
                                                args msg.sender, Array(len=mem[128], data=mem[_9935 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457 len ceil32(mem[128])]), rewardPerDay
                                        else:
                                            mem[_9935 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 325] = return_data.size
                                            mem[_9935 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[_9935 + (4 * ceil32(return_data.size)) + 326] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_9935 + (4 * ceil32(return_data.size)) + 330] = 32
                                                mem[_9935 + (4 * ceil32(return_data.size)) + 362] = 32
                                                mem[_9935 + (4 * ceil32(return_data.size)) + 394] = 'SafeERC20: low-level call failed'
                                                revert with memory
                                                  from _9935 + (4 * ceil32(return_data.size)) + 326
                                                   len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
                                            if return_data.size:
                                                require return_data.size >= 32
                                                require mem[_9935 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357] == bool(mem[_9935 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357])
                                                if not mem[_9935 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357]:
                                                    mem[_9935 + (4 * ceil32(return_data.size)) + 326] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[_9935 + (4 * ceil32(return_data.size)) + 330] = 32
                                                    mem[_9935 + (4 * ceil32(return_data.size)) + 362] = 42
                                                    mem[_9935 + (4 * ceil32(return_data.size)) + 394] = 'SafeERC20: ERC20 operation did n'
                                                    mem[_9935 + (4 * ceil32(return_data.size)) + 426] = 0x6f74207375636365656400000000000000000000000000000000000000000000
                                                    revert with memory
                                                      from _9935 + (4 * ceil32(return_data.size)) + 326
                                                       len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
                                            distributing = 0
                                            mem[_9935 + (4 * ceil32(return_data.size)) + 326] = 0x9021973200000000000000000000000000000000000000000000000000000000
                                            mem[_9935 + (4 * ceil32(return_data.size)) + 330] = msg.sender
                                            mem[_9935 + (4 * ceil32(return_data.size)) + 362] = 96
                                            mem[_9935 + (4 * ceil32(return_data.size)) + 426] = mem[128]
                                            mem[_9935 + (4 * ceil32(return_data.size)) + 458 len ceil32(mem[128])] = mem[160 len ceil32(mem[128])]
                                            if ceil32(mem[128]) > mem[128]:
                                                mem[mem[128] + _9935 + (4 * ceil32(return_data.size)) + 458] = 0
                                            mem[_9935 + (4 * ceil32(return_data.size)) + 394] = rewardPerDay
                                            require ext_code.size(managementAddress)
                                            call managementAddress.0x90219732 with:
                                                 gas gas_remaining wei
                                                args mem[_9935 + (4 * ceil32(return_data.size)) + 330 len ceil32(mem[128]) + (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 128]
                        else:
                            require mem[96] >= 32
                            require ('cd', 4).length == bool(('cd', 4).length)
                            if not ('cd', 4).length:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + 329] = this.address
                            require ext_code.size(sub_0c756bf3Address)
                            staticcall sub_0c756bf3Address.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + 325] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if distributing:
                                require ext_code.size(managementAddress)
                                call managementAddress.0x90219732 with:
                                     gas gas_remaining wei
                                    args msg.sender, Array(len=('cd', 4).length, data=call.data[cd[4] + 36 len ('cd', 4).length]), rewardPerDay
                            else:
                                if ext_call.return_data[0] < distributionAmount:
                                    require ext_code.size(managementAddress)
                                    call managementAddress.0x90219732 with:
                                         gas gas_remaining wei
                                        args msg.sender, Array(len=('cd', 4).length, data=call.data[cd[4] + 36 len ('cd', 4).length]), rewardPerDay
                                else:
                                    distributing = 1
                                    mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 329] = this.address
                                    require ext_code.size(sub_0c756bf3Address)
                                    staticcall sub_0c756bf3Address.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 325] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] and sub_8a55784b > -1 / ext_call.return_data[0]:
                                        revert with 0, 17
                                    if ext_call.return_data[0] and sub_b91b740b > -1 / ext_call.return_data[0]:
                                        revert with 0, 17
                                    if ext_call.return_data[0] and sub_72f1dbdb > -1 / ext_call.return_data[0]:
                                        revert with 0, 17
                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 325] = 26
                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 357] = 'SafeMath: division by zero'
                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 389] = 30
                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 421] = 'SafeMath: subtraction overflow'
                                    if ext_call.return_data[0] * sub_8a55784b / 100 / 2 > ext_call.return_data[0] * sub_8a55784b / 100:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if ext_call.return_data[0] * sub_8a55784b / 100 < ext_call.return_data[0] * sub_8a55784b / 100 / 2:
                                        revert with 0, 17
                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 453] = 2
                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 485] = sub_0c756bf3Address
                                    require ext_code.size(uniswapV2RouterAddress)
                                    staticcall uniswapV2RouterAddress.WAVAX() with:
                                            gas gas_remaining wei
                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 549] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 517] = ext_call.return_data[12 len 20]
                                    mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 553] = uniswapV2RouterAddress
                                    mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 585] = ext_call.return_data[0] * sub_8a55784b / 100 / 2
                                    require ext_code.size(sub_0c756bf3Address)
                                    call sub_0c756bf3Address.approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args uniswapV2RouterAddress, ext_call.return_data[0] * sub_8a55784b / 100 / 2
                                    mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 549] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 549
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 549] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 553] = ext_call.return_data[0] * sub_8a55784b / 100 / 2
                                    mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 585] = 0
                                    mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 617] = 160
                                    mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 713] = 2
                                    idx = 0
                                    s = ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 745
                                    t = ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 485
                                    while idx < mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 453]:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 649] = this.address
                                    mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 681] = block.timestamp
                                    require ext_code.size(uniswapV2RouterAddress)
                                    call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args Mask(255, 1, ext_call.return_data[0] * sub_8a55784b / 100), 0, 160, address(this.address), block.timestamp, mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 713 len (32 * mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 453]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 549] = 30
                                    mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 581] = 'SafeMath: subtraction overflow'
                                    if eth.balance(this.address) > eth.balance(this.address):
                                        mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 613] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 617] = 32
                                        mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 649] = 30
                                        mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 681] = 'SafeMath: subtraction overflow'
                                        mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 711] = 0
                                        revert with memory
                                          from ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 613
                                           len (13 * ceil32(return_data.size)) + 100
                                    if eth.balance(this.address) < eth.balance(this.address):
                                        revert with 0, 17
                                    mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 617] = uniswapV2RouterAddress
                                    mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 649] = (ext_call.return_data[0] * sub_8a55784b / 100) - (ext_call.return_data[0] * sub_8a55784b / 100 / 2)
                                    require ext_code.size(sub_0c756bf3Address)
                                    call sub_0c756bf3Address.approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 617 len (13 * ceil32(return_data.size)) + 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 617] = sub_0c756bf3Address
                                    mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 649] = (ext_call.return_data[0] * sub_8a55784b / 100) - (ext_call.return_data[0] * sub_8a55784b / 100 / 2)
                                    mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 681] = 0
                                    mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 713] = 0
                                    mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 745] = 0
                                    mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 777] = block.timestamp
                                    require ext_code.size(uniswapV2RouterAddress)
                                    call uniswapV2RouterAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                         gas gas_remaining wei
                                        args mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 617 len (15 * ceil32(return_data.size)) + 192]
                                    mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 613 len 96] = ext_call.return_data[0 len 96]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 96
                                    mem[ceil32(ceil32(('cd', 4).length)) + (11 * ceil32(return_data.size)) + 613] = 2
                                    mem[ceil32(ceil32(('cd', 4).length)) + (11 * ceil32(return_data.size)) + 645] = sub_0c756bf3Address
                                    require ext_code.size(uniswapV2RouterAddress)
                                    staticcall uniswapV2RouterAddress.WAVAX() with:
                                            gas gas_remaining wei
                                    mem[ceil32(ceil32(('cd', 4).length)) + (11 * ceil32(return_data.size)) + 709] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[ceil32(ceil32(('cd', 4).length)) + (11 * ceil32(return_data.size)) + 677] = ext_call.return_data[12 len 20]
                                    mem[ceil32(ceil32(('cd', 4).length)) + (12 * ceil32(return_data.size)) + 713] = uniswapV2RouterAddress
                                    mem[ceil32(ceil32(('cd', 4).length)) + (12 * ceil32(return_data.size)) + 745] = ext_call.return_data[0] * sub_b91b740b / 100
                                    require ext_code.size(sub_0c756bf3Address)
                                    call sub_0c756bf3Address.approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args uniswapV2RouterAddress, ext_call.return_data[0] * sub_b91b740b / 100
                                    mem[ceil32(ceil32(('cd', 4).length)) + (12 * ceil32(return_data.size)) + 709] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = ceil32(ceil32(('cd', 4).length)) + (14 * ceil32(return_data.size)) + 709
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    mem[ceil32(ceil32(('cd', 4).length)) + (14 * ceil32(return_data.size)) + 709] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(ceil32(('cd', 4).length)) + (14 * ceil32(return_data.size)) + 713] = ext_call.return_data[0] * sub_b91b740b / 100
                                    mem[ceil32(ceil32(('cd', 4).length)) + (14 * ceil32(return_data.size)) + 745] = 0
                                    mem[ceil32(ceil32(('cd', 4).length)) + (14 * ceil32(return_data.size)) + 777] = 160
                                    mem[ceil32(ceil32(('cd', 4).length)) + (14 * ceil32(return_data.size)) + 873] = 2
                                    idx = 0
                                    s = ceil32(ceil32(('cd', 4).length)) + (14 * ceil32(return_data.size)) + 905
                                    t = ceil32(ceil32(('cd', 4).length)) + (11 * ceil32(return_data.size)) + 645
                                    while idx < mem[ceil32(ceil32(('cd', 4).length)) + (11 * ceil32(return_data.size)) + 613]:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[ceil32(ceil32(('cd', 4).length)) + (14 * ceil32(return_data.size)) + 809] = this.address
                                    mem[ceil32(ceil32(('cd', 4).length)) + (14 * ceil32(return_data.size)) + 841] = block.timestamp
                                    require ext_code.size(uniswapV2RouterAddress)
                                    call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len ceil32(ceil32(('cd', 4).length)) + (14 * ceil32(return_data.size)) + (32 * mem[ceil32(ceil32(('cd', 4).length)) + (11 * ceil32(return_data.size)) + 613]) + -mem[64] + 901]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _16165 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_16165] = 30
                                    mem[_16165 + 32] = 'SafeMath: subtraction overflow'
                                    if eth.balance(this.address) > eth.balance(this.address):
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if eth.balance(this.address) < eth.balance(this.address):
                                        revert with 0, 17
                                    call treasuryAddress with:
                                         gas gas_remaining wei
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 'PAYMENT FAIL'
                                        _16794 = mem[64]
                                        mem[mem[64] + 36] = burnAddress
                                        mem[mem[64] + 68] = ext_call.return_data[0] * sub_72f1dbdb / 100
                                        _16888 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                                        mem[64] = mem[64] + 164
                                        mem[_16794 + 100] = 32
                                        mem[_16794 + 132] = 'SafeERC20: low-level call failed'
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 'Address: insufficient balance for call'
                                        if not ext_code.size(sub_0c756bf3Address):
                                            revert with 0, 'Address: call to non-contract'
                                        _17308 = mem[_16888]
                                        mem[_16794 + 164 len ceil32(mem[_16888])] = mem[_16888 + 32 len ceil32(mem[_16888])]
                                        if ceil32(_17308) > _17308:
                                            mem[_17308 + _16794 + 164] = 0
                                        call sub_0c756bf3Address with:
                                             gas gas_remaining wei
                                            args mem[_16794 + 168 len _17308 - 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                if mem[96]:
                                                    revert with memory
                                                      from 128
                                                       len mem[96]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if mem[96]:
                                                require mem[96] >= 32
                                                require mem[128] == bool(mem[128])
                                                if not mem[128]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            distributing = 0
                                            mem[_16794 + 164] = 0x9021973200000000000000000000000000000000000000000000000000000000
                                            mem[_16794 + 168] = msg.sender
                                            mem[_16794 + 200] = 96
                                            mem[_16794 + 264] = mem[128]
                                            mem[_16794 + 296 len ceil32(mem[128])] = mem[160 len ceil32(mem[128])]
                                            if ceil32(mem[128]) > mem[128]:
                                                mem[mem[128] + _16794 + 296] = 0
                                            mem[_16794 + 232] = rewardPerDay
                                            require ext_code.size(managementAddress)
                                            call managementAddress.0x90219732 with:
                                                 gas gas_remaining wei
                                                args msg.sender, Array(len=mem[128], data=mem[_16794 + 296 len ceil32(mem[128])]), rewardPerDay
                                        else:
                                            mem[_16794 + 164] = return_data.size
                                            mem[_16794 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                require mem[_16794 + 196] == bool(mem[_16794 + 196])
                                                if not mem[_16794 + 196]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            distributing = 0
                                            mem[_16794 + ceil32(return_data.size) + 165] = 0x9021973200000000000000000000000000000000000000000000000000000000
                                            mem[_16794 + ceil32(return_data.size) + 169] = msg.sender
                                            mem[_16794 + ceil32(return_data.size) + 201] = 96
                                            mem[_16794 + ceil32(return_data.size) + 265] = mem[128]
                                            mem[_16794 + ceil32(return_data.size) + 297 len ceil32(mem[128])] = mem[160 len ceil32(mem[128])]
                                            if ceil32(mem[128]) > mem[128]:
                                                mem[mem[128] + _16794 + ceil32(return_data.size) + 297] = 0
                                            require ext_code.size(managementAddress)
                                            call managementAddress.0x90219732 with:
                                                 gas gas_remaining wei
                                                args msg.sender, Array(len=mem[128], data=mem[_16794 + ceil32(return_data.size) + 297 len ceil32(mem[128])]), rewardPerDay
                                    else:
                                        _16515 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                        mem[_16515] = return_data.size
                                        mem[_16515 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, 'PAYMENT FAIL'
                                        _16795 = mem[64]
                                        mem[mem[64] + 36] = burnAddress
                                        mem[mem[64] + 68] = ext_call.return_data[0] * sub_72f1dbdb / 100
                                        _16890 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                                        mem[64] = mem[64] + 164
                                        mem[_16795 + 100] = 32
                                        mem[_16795 + 132] = 'SafeERC20: low-level call failed'
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 'Address: insufficient balance for call'
                                        if not ext_code.size(sub_0c756bf3Address):
                                            revert with 0, 'Address: call to non-contract'
                                        _17310 = mem[_16890]
                                        mem[_16795 + 164 len ceil32(mem[_16890])] = mem[_16890 + 32 len ceil32(mem[_16890])]
                                        if ceil32(_17310) > _17310:
                                            mem[_17310 + _16795 + 164] = 0
                                        call sub_0c756bf3Address with:
                                             gas gas_remaining wei
                                            args mem[_16795 + 168 len _17310 - 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                if mem[96]:
                                                    revert with memory
                                                      from 128
                                                       len mem[96]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if mem[96]:
                                                require mem[96] >= 32
                                                require mem[128] == bool(mem[128])
                                                if not mem[128]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            distributing = 0
                                            mem[_16795 + 164] = 0x9021973200000000000000000000000000000000000000000000000000000000
                                            mem[_16795 + 168] = msg.sender
                                            mem[_16795 + 200] = 96
                                            mem[_16795 + 264] = mem[128]
                                            mem[_16795 + 296 len ceil32(mem[128])] = mem[160 len ceil32(mem[128])]
                                            if ceil32(mem[128]) > mem[128]:
                                                mem[mem[128] + _16795 + 296] = 0
                                            mem[_16795 + 232] = rewardPerDay
                                            require ext_code.size(managementAddress)
                                            call managementAddress.0x90219732 with:
                                                 gas gas_remaining wei
                                                args msg.sender, Array(len=mem[128], data=mem[_16795 + 296 len ceil32(mem[128])]), rewardPerDay
                                        else:
                                            mem[_16795 + 164] = return_data.size
                                            mem[_16795 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                require mem[_16795 + 196] == bool(mem[_16795 + 196])
                                                if not mem[_16795 + 196]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            distributing = 0
                                            mem[_16795 + ceil32(return_data.size) + 165] = 0x9021973200000000000000000000000000000000000000000000000000000000
                                            mem[_16795 + ceil32(return_data.size) + 169] = msg.sender
                                            mem[_16795 + ceil32(return_data.size) + 201] = 96
                                            mem[_16795 + ceil32(return_data.size) + 265] = mem[128]
                                            mem[_16795 + ceil32(return_data.size) + 297 len ceil32(mem[128])] = mem[160 len ceil32(mem[128])]
                                            if ceil32(mem[128]) > mem[128]:
                                                mem[mem[128] + _16795 + ceil32(return_data.size) + 297] = 0
                                            require ext_code.size(managementAddress)
                                            call managementAddress.0x90219732 with:
                                                 gas gas_remaining wei
                                                args msg.sender, Array(len=mem[128], data=mem[_16795 + ceil32(return_data.size) + 297 len ceil32(mem[128])]), rewardPerDay
                    else:
                        mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + 325] = return_data.size
                        mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + 357 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + 357] == bool(mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + 357])
                            if not mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + 357]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + ceil32(return_data.size) + 330] = this.address
                            require ext_code.size(sub_0c756bf3Address)
                            staticcall sub_0c756bf3Address.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + ceil32(return_data.size) + 326] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if distributing:
                                require ext_code.size(managementAddress)
                                call managementAddress.0x90219732 with:
                                     gas gas_remaining wei
                                    args msg.sender, Array(len=('cd', 4).length, data=call.data[cd[4] + 36 len ('cd', 4).length]), rewardPerDay
                            else:
                                if ext_call.return_data[0] < distributionAmount:
                                    require ext_code.size(managementAddress)
                                    call managementAddress.0x90219732 with:
                                         gas gas_remaining wei
                                        args msg.sender, Array(len=('cd', 4).length, data=call.data[cd[4] + 36 len ('cd', 4).length]), rewardPerDay
                                else:
                                    distributing = 1
                                    mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 330] = this.address
                                    require ext_code.size(sub_0c756bf3Address)
                                    staticcall sub_0c756bf3Address.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 326] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] and sub_8a55784b > -1 / ext_call.return_data[0]:
                                        revert with 0, 17
                                    if ext_call.return_data[0] and sub_b91b740b > -1 / ext_call.return_data[0]:
                                        revert with 0, 17
                                    if ext_call.return_data[0] and sub_72f1dbdb > -1 / ext_call.return_data[0]:
                                        revert with 0, 17
                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 326] = 26
                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 358] = 'SafeMath: division by zero'
                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 390] = 30
                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 422] = 'SafeMath: subtraction overflow'
                                    if ext_call.return_data[0] * sub_8a55784b / 100 / 2 > ext_call.return_data[0] * sub_8a55784b / 100:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if ext_call.return_data[0] * sub_8a55784b / 100 < ext_call.return_data[0] * sub_8a55784b / 100 / 2:
                                        revert with 0, 17
                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 454] = 2
                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 486] = sub_0c756bf3Address
                                    require ext_code.size(uniswapV2RouterAddress)
                                    staticcall uniswapV2RouterAddress.WAVAX() with:
                                            gas gas_remaining wei
                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 550] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 518] = ext_call.return_data[12 len 20]
                                    mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + ceil32(return_data.size) + 554] = uniswapV2RouterAddress
                                    mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + ceil32(return_data.size) + 586] = ext_call.return_data[0] * sub_8a55784b / 100 / 2
                                    require ext_code.size(sub_0c756bf3Address)
                                    call sub_0c756bf3Address.approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args uniswapV2RouterAddress, ext_call.return_data[0] * sub_8a55784b / 100 / 2
                                    mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + ceil32(return_data.size) + 550] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 550
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 550] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 554] = ext_call.return_data[0] * sub_8a55784b / 100 / 2
                                    mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 586] = 0
                                    mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 618] = 160
                                    mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 714] = 2
                                    idx = 0
                                    s = ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 746
                                    t = ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 486
                                    while idx < mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 454]:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 650] = this.address
                                    mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 682] = block.timestamp
                                    require ext_code.size(uniswapV2RouterAddress)
                                    call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args Mask(255, 1, ext_call.return_data[0] * sub_8a55784b / 100), 0, 160, address(this.address), block.timestamp, mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 714 len (32 * mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 454]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 550] = 30
                                    mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 582] = 'SafeMath: subtraction overflow'
                                    if eth.balance(this.address) > eth.balance(this.address):
                                        mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 614] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 618] = 32
                                        mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 650] = 30
                                        mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 682] = 'SafeMath: subtraction overflow'
                                        mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 712] = 0
                                        revert with memory
                                          from ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 614
                                           len (13 * ceil32(return_data.size)) + 100
                                    if eth.balance(this.address) < eth.balance(this.address):
                                        revert with 0, 17
                                    mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 618] = uniswapV2RouterAddress
                                    mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 650] = (ext_call.return_data[0] * sub_8a55784b / 100) - (ext_call.return_data[0] * sub_8a55784b / 100 / 2)
                                    require ext_code.size(sub_0c756bf3Address)
                                    call sub_0c756bf3Address.approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 618 len (13 * ceil32(return_data.size)) + 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 618] = sub_0c756bf3Address
                                    mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 650] = (ext_call.return_data[0] * sub_8a55784b / 100) - (ext_call.return_data[0] * sub_8a55784b / 100 / 2)
                                    mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 682] = 0
                                    mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 714] = 0
                                    mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 746] = 0
                                    mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 778] = block.timestamp
                                    require ext_code.size(uniswapV2RouterAddress)
                                    call uniswapV2RouterAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                         gas gas_remaining wei
                                        args mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 618 len (15 * ceil32(return_data.size)) + 192]
                                    mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 614 len 96] = ext_call.return_data[0 len 96]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 96
                                    mem[ceil32(ceil32(('cd', 4).length)) + (11 * ceil32(return_data.size)) + ceil32(return_data.size) + 614] = 2
                                    mem[ceil32(ceil32(('cd', 4).length)) + (11 * ceil32(return_data.size)) + ceil32(return_data.size) + 646] = sub_0c756bf3Address
                                    require ext_code.size(uniswapV2RouterAddress)
                                    staticcall uniswapV2RouterAddress.WAVAX() with:
                                            gas gas_remaining wei
                                    mem[ceil32(ceil32(('cd', 4).length)) + (11 * ceil32(return_data.size)) + ceil32(return_data.size) + 710] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[ceil32(ceil32(('cd', 4).length)) + (11 * ceil32(return_data.size)) + ceil32(return_data.size) + 678] = ext_call.return_data[12 len 20]
                                    mem[ceil32(ceil32(('cd', 4).length)) + (12 * ceil32(return_data.size)) + ceil32(return_data.size) + 714] = uniswapV2RouterAddress
                                    mem[ceil32(ceil32(('cd', 4).length)) + (12 * ceil32(return_data.size)) + ceil32(return_data.size) + 746] = ext_call.return_data[0] * sub_b91b740b / 100
                                    require ext_code.size(sub_0c756bf3Address)
                                    call sub_0c756bf3Address.approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args uniswapV2RouterAddress, ext_call.return_data[0] * sub_b91b740b / 100
                                    mem[ceil32(ceil32(('cd', 4).length)) + (12 * ceil32(return_data.size)) + ceil32(return_data.size) + 710] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = ceil32(ceil32(('cd', 4).length)) + (14 * ceil32(return_data.size)) + ceil32(return_data.size) + 710
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    mem[ceil32(ceil32(('cd', 4).length)) + (14 * ceil32(return_data.size)) + ceil32(return_data.size) + 710] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(ceil32(('cd', 4).length)) + (14 * ceil32(return_data.size)) + ceil32(return_data.size) + 714] = ext_call.return_data[0] * sub_b91b740b / 100
                                    mem[ceil32(ceil32(('cd', 4).length)) + (14 * ceil32(return_data.size)) + ceil32(return_data.size) + 746] = 0
                                    mem[ceil32(ceil32(('cd', 4).length)) + (14 * ceil32(return_data.size)) + ceil32(return_data.size) + 778] = 160
                                    mem[ceil32(ceil32(('cd', 4).length)) + (14 * ceil32(return_data.size)) + ceil32(return_data.size) + 874] = 2
                                    idx = 0
                                    s = ceil32(ceil32(('cd', 4).length)) + (14 * ceil32(return_data.size)) + ceil32(return_data.size) + 906
                                    t = ceil32(ceil32(('cd', 4).length)) + (11 * ceil32(return_data.size)) + ceil32(return_data.size) + 646
                                    while idx < mem[ceil32(ceil32(('cd', 4).length)) + (11 * ceil32(return_data.size)) + ceil32(return_data.size) + 614]:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[ceil32(ceil32(('cd', 4).length)) + (14 * ceil32(return_data.size)) + ceil32(return_data.size) + 810] = this.address
                                    mem[ceil32(ceil32(('cd', 4).length)) + (14 * ceil32(return_data.size)) + ceil32(return_data.size) + 842] = block.timestamp
                                    require ext_code.size(uniswapV2RouterAddress)
                                    call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0] * sub_b91b740b / 100, 0, 160, address(this.address), block.timestamp, mem[ceil32(ceil32(('cd', 4).length)) + (14 * ceil32(return_data.size)) + ceil32(return_data.size) + 874 len (32 * mem[ceil32(ceil32(('cd', 4).length)) + (11 * ceil32(return_data.size)) + ceil32(return_data.size) + 614]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[ceil32(ceil32(('cd', 4).length)) + (14 * ceil32(return_data.size)) + ceil32(return_data.size) + 710] = 30
                                    mem[ceil32(ceil32(('cd', 4).length)) + (14 * ceil32(return_data.size)) + ceil32(return_data.size) + 742] = 'SafeMath: subtraction overflow'
                                    if eth.balance(this.address) > eth.balance(this.address):
                                        mem[ceil32(ceil32(('cd', 4).length)) + (14 * ceil32(return_data.size)) + ceil32(return_data.size) + 872] = 0
                                        revert with 0, 
                                                    'SafeMath: subtraction overflow',
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (14 * ceil32(return_data.size)) + ceil32(return_data.size) + 872 len (5 * ceil32(return_data.size)) + 2]
                                    if eth.balance(this.address) < eth.balance(this.address):
                                        revert with 0, 17
                                    call treasuryAddress with:
                                         gas gas_remaining wei
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        'PAYMENT FAIL',
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (14 * ceil32(return_data.size)) + ceil32(return_data.size) + 874 len 5 * ceil32(return_data.size)]
                                        mem[ceil32(ceil32(('cd', 4).length)) + (14 * ceil32(return_data.size)) + ceil32(return_data.size) + 810] = burnAddress
                                        mem[ceil32(ceil32(('cd', 4).length)) + (14 * ceil32(return_data.size)) + ceil32(return_data.size) + 842] = ext_call.return_data[0] * sub_72f1dbdb / 100
                                        mem[ceil32(ceil32(('cd', 4).length)) + (14 * ceil32(return_data.size)) + ceil32(return_data.size) + 774] = 68
                                        mem[ceil32(ceil32(('cd', 4).length)) + (14 * ceil32(return_data.size)) + ceil32(return_data.size) + 806 len 4] = unknown_0xa9059cbb(?????)
                                        mem[ceil32(ceil32(('cd', 4).length)) + (14 * ceil32(return_data.size)) + ceil32(return_data.size) + 874] = 32
                                        mem[ceil32(ceil32(('cd', 4).length)) + (14 * ceil32(return_data.size)) + ceil32(return_data.size) + 906] = 'SafeERC20: low-level call failed'
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 'Address: insufficient balance for call'
                                        if not ext_code.size(sub_0c756bf3Address):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[ceil32(ceil32(('cd', 4).length)) + (14 * ceil32(return_data.size)) + ceil32(return_data.size) + 938 len 96] = 0, burnAddress, ext_call.return_data[0] * sub_72f1dbdb / 100, 0
                                        mem[ceil32(ceil32(('cd', 4).length)) + (14 * ceil32(return_data.size)) + ceil32(return_data.size) + 1006] = 0
                                        call sub_0c756bf3Address with:
                                           funct Mask(32, 224, 0, burnAddress, ext_call.return_data[0] * sub_72f1dbdb / 100, 0) >> 224
                                             gas gas_remaining wei
                                            args (Mask(512, -288, 0, burnAddress, ext_call.return_data[0] * sub_72f1dbdb / 100, 0) << 288)
                                        if not return_data.size:
                                            if not ext_call.success:
                                                if mem[96]:
                                                    revert with memory
                                                      from 128
                                                       len mem[96]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if mem[96]:
                                                require mem[96] >= 32
                                                require ('cd', 4).length == bool(('cd', 4).length)
                                                if not ('cd', 4).length:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            distributing = 0
                                            require ext_code.size(managementAddress)
                                            call managementAddress.0x90219732 with:
                                                 gas gas_remaining wei
                                                args msg.sender, Array(len=('cd', 4).length, data=mem[160 len ceil32(('cd', 4).length)]), rewardPerDay
                                        else:
                                            mem[ceil32(ceil32(('cd', 4).length)) + (14 * ceil32(return_data.size)) + ceil32(return_data.size) + 970 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 
                                                            'SafeERC20: low-level call failed',
                                                            mem[ceil32(ceil32(('cd', 4).length)) + (17 * ceil32(return_data.size)) + 1039 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                            if return_data.size:
                                                require return_data.size >= 32
                                                require mem[ceil32(ceil32(('cd', 4).length)) + (14 * ceil32(return_data.size)) + ceil32(return_data.size) + 970] == bool(mem[ceil32(ceil32(('cd', 4).length)) + (14 * ceil32(return_data.size)) + ceil32(return_data.size) + 970])
                                                if not mem[ceil32(ceil32(('cd', 4).length)) + (14 * ceil32(return_data.size)) + ceil32(return_data.size) + 970]:
                                                    revert with 0, 
                                                                'SafeERC20: ERC20 operation did not succeed',
                                                                mem[ceil32(ceil32(('cd', 4).length)) + (17 * ceil32(return_data.size)) + 1071 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                            distributing = 0
                                            mem[ceil32(ceil32(('cd', 4).length)) + (17 * ceil32(return_data.size)) + 1071 len ceil32(('cd', 4).length)] = mem[160 len ceil32(('cd', 4).length)]
                                            if ceil32(('cd', 4).length) > ('cd', 4).length:
                                                mem[('cd', 4).length + ceil32(ceil32(('cd', 4).length)) + (17 * ceil32(return_data.size)) + 1071] = 0
                                            require ext_code.size(managementAddress)
                                            call managementAddress.0x90219732 with:
                                                 gas gas_remaining wei
                                                args msg.sender, Array(len=('cd', 4).length, data=mem[ceil32(ceil32(('cd', 4).length)) + (17 * ceil32(return_data.size)) + 1071 len (3 * ceil32(return_data.size)) + ceil32(('cd', 4).length) - (2 * ceil32(return_data.size))]), rewardPerDay
                                    else:
                                        mem[ceil32(ceil32(('cd', 4).length)) + (14 * ceil32(return_data.size)) + ceil32(return_data.size) + 774] = return_data.size
                                        mem[ceil32(ceil32(('cd', 4).length)) + (14 * ceil32(return_data.size)) + ceil32(return_data.size) + 806 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, 
                                                        'PAYMENT FAIL',
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (17 * ceil32(return_data.size)) + 875 len (7 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                        mem[ceil32(ceil32(('cd', 4).length)) + (17 * ceil32(return_data.size)) + 811] = burnAddress
                                        mem[ceil32(ceil32(('cd', 4).length)) + (17 * ceil32(return_data.size)) + 843] = ext_call.return_data[0] * sub_72f1dbdb / 100
                                        mem[ceil32(ceil32(('cd', 4).length)) + (17 * ceil32(return_data.size)) + 775] = 68
                                        mem[ceil32(ceil32(('cd', 4).length)) + (17 * ceil32(return_data.size)) + 807 len 4] = unknown_0xa9059cbb(?????)
                                        mem[ceil32(ceil32(('cd', 4).length)) + (17 * ceil32(return_data.size)) + 875] = 32
                                        mem[ceil32(ceil32(('cd', 4).length)) + (17 * ceil32(return_data.size)) + 907] = 'SafeERC20: low-level call failed'
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 'Address: insufficient balance for call'
                                        if not ext_code.size(sub_0c756bf3Address):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[ceil32(ceil32(('cd', 4).length)) + (17 * ceil32(return_data.size)) + 939 len 96] = 0, burnAddress, ext_call.return_data[0] * sub_72f1dbdb / 100, 0
                                        mem[ceil32(ceil32(('cd', 4).length)) + (17 * ceil32(return_data.size)) + 1007] = 0
                                        call sub_0c756bf3Address with:
                                           funct Mask(32, 224, 0, burnAddress, ext_call.return_data[0] * sub_72f1dbdb / 100, 0) >> 224
                                             gas gas_remaining wei
                                            args (Mask(512, -288, 0, burnAddress, ext_call.return_data[0] * sub_72f1dbdb / 100, 0) << 288)
                                        if not return_data.size:
                                            if not ext_call.success:
                                                if mem[96]:
                                                    revert with memory
                                                      from 128
                                                       len mem[96]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if mem[96]:
                                                require mem[96] >= 32
                                                require ('cd', 4).length == bool(('cd', 4).length)
                                                if not ('cd', 4).length:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                        else:
                                            mem[ceil32(ceil32(('cd', 4).length)) + (17 * ceil32(return_data.size)) + 971 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                require mem[ceil32(ceil32(('cd', 4).length)) + (17 * ceil32(return_data.size)) + 971] == bool(mem[ceil32(ceil32(('cd', 4).length)) + (17 * ceil32(return_data.size)) + 971])
                                                if not mem[ceil32(ceil32(('cd', 4).length)) + (17 * ceil32(return_data.size)) + 971]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                        distributing = 0
                                        require ext_code.size(managementAddress)
                                        call managementAddress.0x90219732 with:
                                             gas gas_remaining wei
                                            args msg.sender, Array(len=('cd', 4).length, data=mem[160 len ceil32(('cd', 4).length)]), rewardPerDay
                        else:
                            mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + ceil32(return_data.size) + 330] = this.address
                            require ext_code.size(sub_0c756bf3Address)
                            staticcall sub_0c756bf3Address.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + ceil32(return_data.size) + 326] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if distributing:
                                require ext_code.size(managementAddress)
                                call managementAddress.0x90219732 with:
                                     gas gas_remaining wei
                                    args msg.sender, Array(len=('cd', 4).length, data=call.data[cd[4] + 36 len ('cd', 4).length]), rewardPerDay
                            else:
                                if ext_call.return_data[0] < distributionAmount:
                                    require ext_code.size(managementAddress)
                                    call managementAddress.0x90219732 with:
                                         gas gas_remaining wei
                                        args msg.sender, Array(len=('cd', 4).length, data=call.data[cd[4] + 36 len ('cd', 4).length]), rewardPerDay
                                else:
                                    distributing = 1
                                    mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 330] = this.address
                                    require ext_code.size(sub_0c756bf3Address)
                                    staticcall sub_0c756bf3Address.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 326] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] and sub_8a55784b > -1 / ext_call.return_data[0]:
                                        revert with 0, 17
                                    if ext_call.return_data[0] and sub_b91b740b > -1 / ext_call.return_data[0]:
                                        revert with 0, 17
                                    if ext_call.return_data[0] and sub_72f1dbdb > -1 / ext_call.return_data[0]:
                                        revert with 0, 17
                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 326] = 26
                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 358] = 'SafeMath: division by zero'
                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 390] = 30
                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 422] = 'SafeMath: subtraction overflow'
                                    if ext_call.return_data[0] * sub_8a55784b / 100 / 2 > ext_call.return_data[0] * sub_8a55784b / 100:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if ext_call.return_data[0] * sub_8a55784b / 100 < ext_call.return_data[0] * sub_8a55784b / 100 / 2:
                                        revert with 0, 17
                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 454] = 2
                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 486] = sub_0c756bf3Address
                                    require ext_code.size(uniswapV2RouterAddress)
                                    staticcall uniswapV2RouterAddress.WAVAX() with:
                                            gas gas_remaining wei
                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 550] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 518] = ext_call.return_data[12 len 20]
                                    mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + ceil32(return_data.size) + 554] = uniswapV2RouterAddress
                                    mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + ceil32(return_data.size) + 586] = ext_call.return_data[0] * sub_8a55784b / 100 / 2
                                    require ext_code.size(sub_0c756bf3Address)
                                    call sub_0c756bf3Address.approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args uniswapV2RouterAddress, ext_call.return_data[0] * sub_8a55784b / 100 / 2
                                    mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + ceil32(return_data.size) + 550] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 550
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 550] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 554] = ext_call.return_data[0] * sub_8a55784b / 100 / 2
                                    mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 586] = 0
                                    mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 618] = 160
                                    mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 714] = 2
                                    idx = 0
                                    s = ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 746
                                    t = ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 486
                                    while idx < mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 454]:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 650] = this.address
                                    mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 682] = block.timestamp
                                    require ext_code.size(uniswapV2RouterAddress)
                                    call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + ceil32(return_data.size) + (32 * mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 454]) + -mem[64] + 742]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _9353 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_9353] = 30
                                    mem[_9353 + 32] = 'SafeMath: subtraction overflow'
                                    if eth.balance(this.address) > eth.balance(this.address):
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if eth.balance(this.address) < eth.balance(this.address):
                                        revert with 0, 17
                                    mem[mem[64] + 4] = uniswapV2RouterAddress
                                    mem[mem[64] + 36] = (ext_call.return_data[0] * sub_8a55784b / 100) - (ext_call.return_data[0] * sub_8a55784b / 100 / 2)
                                    require ext_code.size(sub_0c756bf3Address)
                                    call sub_0c756bf3Address.approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args uniswapV2RouterAddress, (ext_call.return_data[0] * sub_8a55784b / 100) - (ext_call.return_data[0] * sub_8a55784b / 100 / 2)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _9673 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_9673] == bool(mem[_9673])
                                    mem[mem[64] + 68] = 0
                                    mem[mem[64] + 100] = 0
                                    mem[mem[64] + 132] = 0
                                    mem[mem[64] + 164] = block.timestamp
                                    require ext_code.size(uniswapV2RouterAddress)
                                    call uniswapV2RouterAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                         gas gas_remaining wei
                                        args sub_0c756bf3Address, (ext_call.return_data[0] * sub_8a55784b / 100) - (ext_call.return_data[0] * sub_8a55784b / 100 / 2), 0, 0, 0, block.timestamp
                                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 96
                                    _9939 = mem[64]
                                    mem[mem[64]] = 2
                                    mem[64] = mem[64] + 96
                                    mem[_9939 + 32 len 64] = call.data[calldata.size len 64]
                                    if not mem[_9939]:
                                        revert with 0, 50
                                    mem[_9939 + 32] = sub_0c756bf3Address
                                    require ext_code.size(uniswapV2RouterAddress)
                                    staticcall uniswapV2RouterAddress.WAVAX() with:
                                            gas gas_remaining wei
                                    mem[_9939 + 96] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = _9939 + ceil32(return_data.size) + 96
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    if 1 >= mem[_9939]:
                                        revert with 0, 50
                                    mem[_9939 + 64] = ext_call.return_data[12 len 20]
                                    mem[_9939 + ceil32(return_data.size) + 100] = uniswapV2RouterAddress
                                    mem[_9939 + ceil32(return_data.size) + 132] = ext_call.return_data[0] * sub_b91b740b / 100
                                    require ext_code.size(sub_0c756bf3Address)
                                    call sub_0c756bf3Address.approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args uniswapV2RouterAddress, ext_call.return_data[0] * sub_b91b740b / 100
                                    mem[_9939 + ceil32(return_data.size) + 96] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = _9939 + (2 * ceil32(return_data.size)) + 96
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    mem[_9939 + (2 * ceil32(return_data.size)) + 96] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                    mem[_9939 + (2 * ceil32(return_data.size)) + 100] = ext_call.return_data[0] * sub_b91b740b / 100
                                    mem[_9939 + (2 * ceil32(return_data.size)) + 132] = 0
                                    mem[_9939 + (2 * ceil32(return_data.size)) + 164] = 160
                                    mem[_9939 + (2 * ceil32(return_data.size)) + 260] = mem[_9939]
                                    idx = 0
                                    s = _9939 + (2 * ceil32(return_data.size)) + 292
                                    t = _9939 + 32
                                    while idx < mem[_9939]:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[_9939 + (2 * ceil32(return_data.size)) + 196] = this.address
                                    mem[_9939 + (2 * ceil32(return_data.size)) + 228] = block.timestamp
                                    require ext_code.size(uniswapV2RouterAddress)
                                    call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _9939 + (2 * ceil32(return_data.size)) + (32 * mem[_9939]) + -mem[64] + 288]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _16168 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_16168] = 30
                                    mem[_16168 + 32] = 'SafeMath: subtraction overflow'
                                    if eth.balance(this.address) > eth.balance(this.address):
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if eth.balance(this.address) < eth.balance(this.address):
                                        revert with 0, 17
                                    call treasuryAddress with:
                                         gas gas_remaining wei
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 'PAYMENT FAIL'
                                        _16796 = mem[64]
                                        mem[mem[64] + 36] = burnAddress
                                        mem[mem[64] + 68] = ext_call.return_data[0] * sub_72f1dbdb / 100
                                        _16892 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                                        mem[64] = mem[64] + 164
                                        mem[_16796 + 100] = 32
                                        mem[_16796 + 132] = 'SafeERC20: low-level call failed'
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 'Address: insufficient balance for call'
                                        if not ext_code.size(sub_0c756bf3Address):
                                            revert with 0, 'Address: call to non-contract'
                                        _17312 = mem[_16892]
                                        mem[_16796 + 164 len ceil32(mem[_16892])] = mem[_16892 + 32 len ceil32(mem[_16892])]
                                        if ceil32(_17312) > _17312:
                                            mem[_17312 + _16796 + 164] = 0
                                        call sub_0c756bf3Address with:
                                             gas gas_remaining wei
                                            args mem[_16796 + 168 len _17312 - 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                if mem[96]:
                                                    revert with memory
                                                      from 128
                                                       len mem[96]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if mem[96]:
                                                require mem[96] >= 32
                                                require mem[128] == bool(mem[128])
                                                if not mem[128]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            distributing = 0
                                            mem[_16796 + 164] = 0x9021973200000000000000000000000000000000000000000000000000000000
                                            mem[_16796 + 168] = msg.sender
                                            mem[_16796 + 200] = 96
                                            mem[_16796 + 264] = mem[128]
                                            mem[_16796 + 296 len ceil32(mem[128])] = mem[160 len ceil32(mem[128])]
                                            if ceil32(mem[128]) > mem[128]:
                                                mem[mem[128] + _16796 + 296] = 0
                                            mem[_16796 + 232] = rewardPerDay
                                            require ext_code.size(managementAddress)
                                            call managementAddress.0x90219732 with:
                                                 gas gas_remaining wei
                                                args msg.sender, Array(len=mem[128], data=mem[_16796 + 296 len ceil32(mem[128])]), rewardPerDay
                                        else:
                                            mem[_16796 + 164] = return_data.size
                                            mem[_16796 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                require mem[_16796 + 196] == bool(mem[_16796 + 196])
                                                if not mem[_16796 + 196]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            distributing = 0
                                            mem[_16796 + ceil32(return_data.size) + 165] = 0x9021973200000000000000000000000000000000000000000000000000000000
                                            mem[_16796 + ceil32(return_data.size) + 169] = msg.sender
                                            mem[_16796 + ceil32(return_data.size) + 201] = 96
                                            mem[_16796 + ceil32(return_data.size) + 265] = mem[128]
                                            mem[_16796 + ceil32(return_data.size) + 297 len ceil32(mem[128])] = mem[160 len ceil32(mem[128])]
                                            if ceil32(mem[128]) > mem[128]:
                                                mem[mem[128] + _16796 + ceil32(return_data.size) + 297] = 0
                                            require ext_code.size(managementAddress)
                                            call managementAddress.0x90219732 with:
                                                 gas gas_remaining wei
                                                args msg.sender, Array(len=mem[128], data=mem[_16796 + ceil32(return_data.size) + 297 len ceil32(mem[128])]), rewardPerDay
                                    else:
                                        _16516 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                        mem[_16516] = return_data.size
                                        mem[_16516 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, 'PAYMENT FAIL'
                                        _16797 = mem[64]
                                        mem[mem[64] + 36] = burnAddress
                                        mem[mem[64] + 68] = ext_call.return_data[0] * sub_72f1dbdb / 100
                                        _16894 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                                        mem[64] = mem[64] + 164
                                        mem[_16797 + 100] = 32
                                        mem[_16797 + 132] = 'SafeERC20: low-level call failed'
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 'Address: insufficient balance for call'
                                        if not ext_code.size(sub_0c756bf3Address):
                                            revert with 0, 'Address: call to non-contract'
                                        _17314 = mem[_16894]
                                        mem[_16797 + 164 len ceil32(mem[_16894])] = mem[_16894 + 32 len ceil32(mem[_16894])]
                                        if ceil32(_17314) > _17314:
                                            mem[_17314 + _16797 + 164] = 0
                                        call sub_0c756bf3Address with:
                                             gas gas_remaining wei
                                            args mem[_16797 + 168 len _17314 - 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                if mem[96]:
                                                    revert with memory
                                                      from 128
                                                       len mem[96]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if mem[96]:
                                                require mem[96] >= 32
                                                require mem[128] == bool(mem[128])
                                                if not mem[128]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            distributing = 0
                                            mem[_16797 + 164] = 0x9021973200000000000000000000000000000000000000000000000000000000
                                            mem[_16797 + 168] = msg.sender
                                            mem[_16797 + 200] = 96
                                            mem[_16797 + 264] = mem[128]
                                            mem[_16797 + 296 len ceil32(mem[128])] = mem[160 len ceil32(mem[128])]
                                            if ceil32(mem[128]) > mem[128]:
                                                mem[mem[128] + _16797 + 296] = 0
                                            mem[_16797 + 232] = rewardPerDay
                                            require ext_code.size(managementAddress)
                                            call managementAddress.0x90219732 with:
                                                 gas gas_remaining wei
                                                args msg.sender, Array(len=mem[128], data=mem[_16797 + 296 len ceil32(mem[128])]), rewardPerDay
                                        else:
                                            mem[_16797 + 164] = return_data.size
                                            mem[_16797 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                require mem[_16797 + 196] == bool(mem[_16797 + 196])
                                                if not mem[_16797 + 196]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            distributing = 0
                                            mem[_16797 + ceil32(return_data.size) + 165] = 0x9021973200000000000000000000000000000000000000000000000000000000
                                            mem[_16797 + ceil32(return_data.size) + 169] = msg.sender
                                            mem[_16797 + ceil32(return_data.size) + 201] = 96
                                            mem[_16797 + ceil32(return_data.size) + 265] = mem[128]
                                            mem[_16797 + ceil32(return_data.size) + 297 len ceil32(mem[128])] = mem[160 len ceil32(mem[128])]
                                            if ceil32(mem[128]) > mem[128]:
                                                mem[mem[128] + _16797 + ceil32(return_data.size) + 297] = 0
                                            require ext_code.size(managementAddress)
                                            call managementAddress.0x90219732 with:
                                                 gas gas_remaining wei
                                                args msg.sender, Array(len=mem[128], data=mem[_16797 + ceil32(return_data.size) + 297 len ceil32(mem[128])]), rewardPerDay
            else:
                mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                require ext_code.size(rewardPoolAddress)
                call rewardPoolAddress.rewardTo(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(this.address), ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if nodePrice < ext_call.return_data[0]:
                    revert with 0, 17
                if nodePrice - ext_call.return_data[0] <= 0:
                    mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + 133] = this.address
                    require ext_code.size(sub_0c756bf3Address)
                    staticcall sub_0c756bf3Address.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + 129] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if distributing:
                        require ext_code.size(managementAddress)
                        call managementAddress.0x90219732 with:
                             gas gas_remaining wei
                            args msg.sender, Array(len=('cd', 4).length, data=call.data[cd[4] + 36 len ('cd', 4).length]), rewardPerDay
                    else:
                        if ext_call.return_data[0] < distributionAmount:
                            require ext_code.size(managementAddress)
                            call managementAddress.0x90219732 with:
                                 gas gas_remaining wei
                                args msg.sender, Array(len=('cd', 4).length, data=call.data[cd[4] + 36 len ('cd', 4).length]), rewardPerDay
                        else:
                            distributing = 1
                            mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 133] = this.address
                            require ext_code.size(sub_0c756bf3Address)
                            staticcall sub_0c756bf3Address.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 129] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] and sub_8a55784b > -1 / ext_call.return_data[0]:
                                revert with 0, 17
                            if ext_call.return_data[0] and sub_b91b740b > -1 / ext_call.return_data[0]:
                                revert with 0, 17
                            if ext_call.return_data[0] and sub_72f1dbdb > -1 / ext_call.return_data[0]:
                                revert with 0, 17
                            mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 129] = 26
                            mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 161] = 'SafeMath: division by zero'
                            mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 193] = 30
                            mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 225] = 'SafeMath: subtraction overflow'
                            if ext_call.return_data[0] * sub_8a55784b / 100 / 2 > ext_call.return_data[0] * sub_8a55784b / 100:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if ext_call.return_data[0] * sub_8a55784b / 100 < ext_call.return_data[0] * sub_8a55784b / 100 / 2:
                                revert with 0, 17
                            mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 257] = 2
                            mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 289] = sub_0c756bf3Address
                            require ext_code.size(uniswapV2RouterAddress)
                            staticcall uniswapV2RouterAddress.WAVAX() with:
                                    gas gas_remaining wei
                            mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 353] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 321] = ext_call.return_data[12 len 20]
                            mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 357] = uniswapV2RouterAddress
                            mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 389] = ext_call.return_data[0] * sub_8a55784b / 100 / 2
                            require ext_code.size(sub_0c756bf3Address)
                            call sub_0c756bf3Address.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args uniswapV2RouterAddress, Mask(255, 1, ext_call.return_data[0] * sub_8a55784b / 100), mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 421 len 9 * ceil32(return_data.size)]
                            mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 353] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 353] = 0x762b156200000000000000000000000000000000000000000000000000000000
                            mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 357] = ext_call.return_data[0] * sub_8a55784b / 100 / 2
                            mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 517] = 2
                            idx = 0
                            s = ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 549
                            t = ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 289
                            while idx < 2:
                                mem[s] = mem[t + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 485] = block.timestamp
                            require ext_code.size(uniswapV2RouterAddress)
                            call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args Mask(255, 1, ext_call.return_data[0] * sub_8a55784b / 100), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 549 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 353] = 30
                            mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 385] = 'SafeMath: subtraction overflow'
                            if eth.balance(this.address) > eth.balance(this.address):
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if eth.balance(this.address) < eth.balance(this.address):
                                revert with 0, 17
                            mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 421] = uniswapV2RouterAddress
                            mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 453] = (ext_call.return_data[0] * sub_8a55784b / 100) - (ext_call.return_data[0] * sub_8a55784b / 100 / 2)
                            require ext_code.size(sub_0c756bf3Address)
                            call sub_0c756bf3Address.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args uniswapV2RouterAddress, (ext_call.return_data[0] * sub_8a55784b / 100) - (ext_call.return_data[0] * sub_8a55784b / 100 / 2)
                            mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 417] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            mem[ceil32(ceil32(('cd', 4).length)) + (10 * ceil32(return_data.size)) + 485] = 0
                            mem[ceil32(ceil32(('cd', 4).length)) + (10 * ceil32(return_data.size)) + 517] = 0
                            mem[ceil32(ceil32(('cd', 4).length)) + (10 * ceil32(return_data.size)) + 549] = 0
                            mem[ceil32(ceil32(('cd', 4).length)) + (10 * ceil32(return_data.size)) + 581] = block.timestamp
                            require ext_code.size(uniswapV2RouterAddress)
                            call uniswapV2RouterAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                 gas gas_remaining wei
                                args sub_0c756bf3Address, (ext_call.return_data[0] * sub_8a55784b / 100) - (ext_call.return_data[0] * sub_8a55784b / 100 / 2), 0, 0, 0, block.timestamp
                            mem[ceil32(ceil32(('cd', 4).length)) + (10 * ceil32(return_data.size)) + 417 len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            mem[ceil32(ceil32(('cd', 4).length)) + (11 * ceil32(return_data.size)) + 417] = 2
                            mem[ceil32(ceil32(('cd', 4).length)) + (11 * ceil32(return_data.size)) + 449] = sub_0c756bf3Address
                            require ext_code.size(uniswapV2RouterAddress)
                            staticcall uniswapV2RouterAddress.WAVAX() with:
                                    gas gas_remaining wei
                            mem[ceil32(ceil32(('cd', 4).length)) + (11 * ceil32(return_data.size)) + 513] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[ceil32(ceil32(('cd', 4).length)) + (11 * ceil32(return_data.size)) + 481] = ext_call.return_data[12 len 20]
                            mem[ceil32(ceil32(('cd', 4).length)) + (12 * ceil32(return_data.size)) + 517] = uniswapV2RouterAddress
                            mem[ceil32(ceil32(('cd', 4).length)) + (12 * ceil32(return_data.size)) + 549] = ext_call.return_data[0] * sub_b91b740b / 100
                            require ext_code.size(sub_0c756bf3Address)
                            call sub_0c756bf3Address.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args uniswapV2RouterAddress, ext_call.return_data[0] * sub_b91b740b / 100
                            mem[ceil32(ceil32(('cd', 4).length)) + (12 * ceil32(return_data.size)) + 513] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(ceil32(('cd', 4).length)) + (14 * ceil32(return_data.size)) + 513
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            mem[ceil32(ceil32(('cd', 4).length)) + (14 * ceil32(return_data.size)) + 513] = 0x762b156200000000000000000000000000000000000000000000000000000000
                            mem[ceil32(ceil32(('cd', 4).length)) + (14 * ceil32(return_data.size)) + 517] = ext_call.return_data[0] * sub_b91b740b / 100
                            mem[ceil32(ceil32(('cd', 4).length)) + (14 * ceil32(return_data.size)) + 549] = 0
                            mem[ceil32(ceil32(('cd', 4).length)) + (14 * ceil32(return_data.size)) + 581] = 160
                            mem[ceil32(ceil32(('cd', 4).length)) + (14 * ceil32(return_data.size)) + 677] = 2
                            idx = 0
                            s = ceil32(ceil32(('cd', 4).length)) + (14 * ceil32(return_data.size)) + 709
                            t = ceil32(ceil32(('cd', 4).length)) + (11 * ceil32(return_data.size)) + 449
                            while idx < mem[ceil32(ceil32(('cd', 4).length)) + (11 * ceil32(return_data.size)) + 417]:
                                mem[s] = mem[t + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[ceil32(ceil32(('cd', 4).length)) + (14 * ceil32(return_data.size)) + 613] = this.address
                            mem[ceil32(ceil32(('cd', 4).length)) + (14 * ceil32(return_data.size)) + 645] = block.timestamp
                            require ext_code.size(uniswapV2RouterAddress)
                            call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0] * sub_b91b740b / 100, 0, 160, address(this.address), block.timestamp, mem[ceil32(ceil32(('cd', 4).length)) + (14 * ceil32(return_data.size)) + 677 len (32 * mem[ceil32(ceil32(('cd', 4).length)) + (11 * ceil32(return_data.size)) + 417]) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[ceil32(ceil32(('cd', 4).length)) + (14 * ceil32(return_data.size)) + 513] = 30
                            mem[ceil32(ceil32(('cd', 4).length)) + (14 * ceil32(return_data.size)) + 545] = 'SafeMath: subtraction overflow'
                            if eth.balance(this.address) > eth.balance(this.address):
                                mem[ceil32(ceil32(('cd', 4).length)) + (14 * ceil32(return_data.size)) + 675] = 0
                                revert with 0, 
                                            'SafeMath: subtraction overflow',
                                            mem[ceil32(ceil32(('cd', 4).length)) + (14 * ceil32(return_data.size)) + 675 len (5 * ceil32(return_data.size)) + 2]
                            if eth.balance(this.address) < eth.balance(this.address):
                                revert with 0, 17
                            call treasuryAddress with:
                                 gas gas_remaining wei
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 
                                                'PAYMENT FAIL',
                                                mem[ceil32(ceil32(('cd', 4).length)) + (14 * ceil32(return_data.size)) + 677 len 5 * ceil32(return_data.size)]
                                mem[ceil32(ceil32(('cd', 4).length)) + (14 * ceil32(return_data.size)) + 613] = burnAddress
                                mem[ceil32(ceil32(('cd', 4).length)) + (14 * ceil32(return_data.size)) + 645] = ext_call.return_data[0] * sub_72f1dbdb / 100
                                mem[ceil32(ceil32(('cd', 4).length)) + (14 * ceil32(return_data.size)) + 577] = 68
                                mem[ceil32(ceil32(('cd', 4).length)) + (14 * ceil32(return_data.size)) + 609 len 4] = unknown_0xa9059cbb(?????)
                                mem[ceil32(ceil32(('cd', 4).length)) + (14 * ceil32(return_data.size)) + 677] = 32
                                mem[ceil32(ceil32(('cd', 4).length)) + (14 * ceil32(return_data.size)) + 709] = 'SafeERC20: low-level call failed'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 'Address: insufficient balance for call'
                                if not ext_code.size(sub_0c756bf3Address):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(ceil32(('cd', 4).length)) + (14 * ceil32(return_data.size)) + 741 len 96] = 0, burnAddress, ext_call.return_data[0] * sub_72f1dbdb / 100, 0
                                mem[ceil32(ceil32(('cd', 4).length)) + (14 * ceil32(return_data.size)) + 809] = 0
                                call sub_0c756bf3Address with:
                                   funct Mask(32, 224, 0, burnAddress, ext_call.return_data[0] * sub_72f1dbdb / 100, 0) >> 224
                                     gas gas_remaining wei
                                    args (Mask(512, -288, 0, burnAddress, ext_call.return_data[0] * sub_72f1dbdb / 100, 0) << 288)
                                if not return_data.size:
                                    if not ext_call.success:
                                        if mem[96]:
                                            revert with memory
                                              from 128
                                               len mem[96]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if mem[96]:
                                        require mem[96] >= 32
                                        require ('cd', 4).length == bool(('cd', 4).length)
                                        if not ('cd', 4).length:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                else:
                                    mem[ceil32(ceil32(('cd', 4).length)) + (14 * ceil32(return_data.size)) + 773 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        require mem[ceil32(ceil32(('cd', 4).length)) + (14 * ceil32(return_data.size)) + 773] == bool(mem[ceil32(ceil32(('cd', 4).length)) + (14 * ceil32(return_data.size)) + 773])
                                        if not mem[ceil32(ceil32(('cd', 4).length)) + (14 * ceil32(return_data.size)) + 773]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                distributing = 0
                                require ext_code.size(managementAddress)
                                call managementAddress.0x90219732 with:
                                     gas gas_remaining wei
                                    args msg.sender, Array(len=('cd', 4).length, data=mem[160 len ceil32(('cd', 4).length)]), rewardPerDay
                            else:
                                mem[ceil32(ceil32(('cd', 4).length)) + (14 * ceil32(return_data.size)) + 577] = return_data.size
                                mem[ceil32(ceil32(('cd', 4).length)) + (14 * ceil32(return_data.size)) + 609 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 
                                                'PAYMENT FAIL',
                                                mem[ceil32(ceil32(('cd', 4).length)) + (14 * ceil32(return_data.size)) + ceil32(return_data.size) + 678 len 5 * ceil32(return_data.size)]
                                mem[ceil32(ceil32(('cd', 4).length)) + (14 * ceil32(return_data.size)) + ceil32(return_data.size) + 614] = burnAddress
                                mem[ceil32(ceil32(('cd', 4).length)) + (14 * ceil32(return_data.size)) + ceil32(return_data.size) + 646] = ext_call.return_data[0] * sub_72f1dbdb / 100
                                mem[ceil32(ceil32(('cd', 4).length)) + (14 * ceil32(return_data.size)) + ceil32(return_data.size) + 578] = 68
                                mem[ceil32(ceil32(('cd', 4).length)) + (14 * ceil32(return_data.size)) + ceil32(return_data.size) + 610 len 4] = unknown_0xa9059cbb(?????)
                                mem[ceil32(ceil32(('cd', 4).length)) + (14 * ceil32(return_data.size)) + ceil32(return_data.size) + 678] = 32
                                mem[ceil32(ceil32(('cd', 4).length)) + (14 * ceil32(return_data.size)) + ceil32(return_data.size) + 710] = 'SafeERC20: low-level call failed'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 'Address: insufficient balance for call'
                                if not ext_code.size(sub_0c756bf3Address):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(ceil32(('cd', 4).length)) + (14 * ceil32(return_data.size)) + ceil32(return_data.size) + 742 len 96] = 0, burnAddress, ext_call.return_data[0] * sub_72f1dbdb / 100, 0
                                mem[ceil32(ceil32(('cd', 4).length)) + (14 * ceil32(return_data.size)) + ceil32(return_data.size) + 810] = 0
                                call sub_0c756bf3Address with:
                                   funct Mask(32, 224, 0, burnAddress, ext_call.return_data[0] * sub_72f1dbdb / 100, 0) >> 224
                                     gas gas_remaining wei
                                    args (Mask(512, -288, 0, burnAddress, ext_call.return_data[0] * sub_72f1dbdb / 100, 0) << 288)
                                if not return_data.size:
                                    if not ext_call.success:
                                        if mem[96]:
                                            revert with memory
                                              from 128
                                               len mem[96]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if mem[96]:
                                        require mem[96] >= 32
                                        require ('cd', 4).length == bool(('cd', 4).length)
                                        if not ('cd', 4).length:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    distributing = 0
                                    require ext_code.size(managementAddress)
                                    call managementAddress.0x90219732 with:
                                         gas gas_remaining wei
                                        args msg.sender, Array(len=('cd', 4).length, data=mem[160 len ceil32(('cd', 4).length)]), rewardPerDay
                                else:
                                    mem[ceil32(ceil32(('cd', 4).length)) + (14 * ceil32(return_data.size)) + ceil32(return_data.size) + 774 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 
                                                    'SafeERC20: low-level call failed',
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (17 * ceil32(return_data.size)) + 843 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                    if return_data.size:
                                        require return_data.size >= 32
                                        require mem[ceil32(ceil32(('cd', 4).length)) + (14 * ceil32(return_data.size)) + ceil32(return_data.size) + 774] == bool(mem[ceil32(ceil32(('cd', 4).length)) + (14 * ceil32(return_data.size)) + ceil32(return_data.size) + 774])
                                        if not mem[ceil32(ceil32(('cd', 4).length)) + (14 * ceil32(return_data.size)) + ceil32(return_data.size) + 774]:
                                            revert with 0, 
                                                        'SafeERC20: ERC20 operation did not succeed',
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (17 * ceil32(return_data.size)) + 875 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                    distributing = 0
                                    mem[ceil32(ceil32(('cd', 4).length)) + (17 * ceil32(return_data.size)) + 875 len ceil32(('cd', 4).length)] = mem[160 len ceil32(('cd', 4).length)]
                                    if ceil32(('cd', 4).length) > ('cd', 4).length:
                                        mem[('cd', 4).length + ceil32(ceil32(('cd', 4).length)) + (17 * ceil32(return_data.size)) + 875] = 0
                                    require ext_code.size(managementAddress)
                                    call managementAddress.0x90219732 with:
                                         gas gas_remaining wei
                                        args msg.sender, Array(len=('cd', 4).length, data=mem[ceil32(ceil32(('cd', 4).length)) + (17 * ceil32(return_data.size)) + 875 len (3 * ceil32(return_data.size)) + ceil32(('cd', 4).length) - (2 * ceil32(return_data.size))]), rewardPerDay
                else:
                    if nodePrice < ext_call.return_data[0]:
                        revert with 0, 17
                    mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + 165] = msg.sender
                    mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + 197] = this.address
                    mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + 229] = nodePrice - ext_call.return_data[0]
                    mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + 129] = 100
                    mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + 165 len 28] = Mask(224, 32, msg.sender) >> 32
                    mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + 161 len 4] = unknown_0x23b872dd(?????)
                    mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + 261] = 32
                    mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + 293] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(sub_0c756bf3Address):
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + 325 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), nodePrice - ext_call.return_data[0], 0
                    mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + 425] = 0
                    call sub_0c756bf3Address with:
                       funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, address(this.address), nodePrice - ext_call.return_data[0], 0) >> 224
                         gas gas_remaining wei
                        args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, address(this.address), nodePrice - ext_call.return_data[0], 0) << 544)
                    if return_data.size:
                        mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + 325] = return_data.size
                        mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + 357 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + 357] == bool(mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + 357])
                            if not mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + 357]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + ceil32(return_data.size) + 330] = this.address
                            require ext_code.size(sub_0c756bf3Address)
                            staticcall sub_0c756bf3Address.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + ceil32(return_data.size) + 326] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if distributing:
                                require ext_code.size(managementAddress)
                                call managementAddress.0x90219732 with:
                                     gas gas_remaining wei
                                    args msg.sender, Array(len=('cd', 4).length, data=call.data[cd[4] + 36 len ('cd', 4).length]), rewardPerDay
                            else:
                                if ext_call.return_data[0] < distributionAmount:
                                    require ext_code.size(managementAddress)
                                    call managementAddress.0x90219732 with:
                                         gas gas_remaining wei
                                        args msg.sender, Array(len=('cd', 4).length, data=call.data[cd[4] + 36 len ('cd', 4).length]), rewardPerDay
                                else:
                                    distributing = 1
                                    mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 330] = this.address
                                    require ext_code.size(sub_0c756bf3Address)
                                    staticcall sub_0c756bf3Address.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 326] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] and sub_8a55784b > -1 / ext_call.return_data[0]:
                                        revert with 0, 17
                                    if ext_call.return_data[0] and sub_b91b740b > -1 / ext_call.return_data[0]:
                                        revert with 0, 17
                                    if ext_call.return_data[0] and sub_72f1dbdb > -1 / ext_call.return_data[0]:
                                        revert with 0, 17
                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 326] = 26
                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 358] = 'SafeMath: division by zero'
                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 390] = 30
                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 422] = 'SafeMath: subtraction overflow'
                                    if ext_call.return_data[0] * sub_8a55784b / 100 / 2 > ext_call.return_data[0] * sub_8a55784b / 100:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if ext_call.return_data[0] * sub_8a55784b / 100 < ext_call.return_data[0] * sub_8a55784b / 100 / 2:
                                        revert with 0, 17
                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 454] = 2
                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 486] = sub_0c756bf3Address
                                    require ext_code.size(uniswapV2RouterAddress)
                                    staticcall uniswapV2RouterAddress.WAVAX() with:
                                            gas gas_remaining wei
                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 550] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 518] = ext_call.return_data[12 len 20]
                                    mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + ceil32(return_data.size) + 554] = uniswapV2RouterAddress
                                    mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + ceil32(return_data.size) + 586] = ext_call.return_data[0] * sub_8a55784b / 100 / 2
                                    require ext_code.size(sub_0c756bf3Address)
                                    call sub_0c756bf3Address.approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args uniswapV2RouterAddress, ext_call.return_data[0] * sub_8a55784b / 100 / 2
                                    mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + ceil32(return_data.size) + 550] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 550
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 550] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 554] = ext_call.return_data[0] * sub_8a55784b / 100 / 2
                                    mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 586] = 0
                                    mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 618] = 160
                                    mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 714] = 2
                                    idx = 0
                                    s = ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 746
                                    t = ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 486
                                    while idx < mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 454]:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 650] = this.address
                                    mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 682] = block.timestamp
                                    require ext_code.size(uniswapV2RouterAddress)
                                    call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args Mask(255, 1, ext_call.return_data[0] * sub_8a55784b / 100), 0, 160, address(this.address), block.timestamp, mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 714 len (32 * mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 454]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 550] = 30
                                    mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 582] = 'SafeMath: subtraction overflow'
                                    if eth.balance(this.address) > eth.balance(this.address):
                                        mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 614] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 618] = 32
                                        mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 650] = 30
                                        mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 682] = 'SafeMath: subtraction overflow'
                                        mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 712] = 0
                                        revert with memory
                                          from ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 614
                                           len (13 * ceil32(return_data.size)) + 100
                                    if eth.balance(this.address) < eth.balance(this.address):
                                        revert with 0, 17
                                    mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 618] = uniswapV2RouterAddress
                                    mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 650] = (ext_call.return_data[0] * sub_8a55784b / 100) - (ext_call.return_data[0] * sub_8a55784b / 100 / 2)
                                    require ext_code.size(sub_0c756bf3Address)
                                    call sub_0c756bf3Address.approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 618 len (13 * ceil32(return_data.size)) + 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 618] = sub_0c756bf3Address
                                    mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 650] = (ext_call.return_data[0] * sub_8a55784b / 100) - (ext_call.return_data[0] * sub_8a55784b / 100 / 2)
                                    mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 682] = 0
                                    mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 714] = 0
                                    mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 746] = 0
                                    mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 778] = block.timestamp
                                    require ext_code.size(uniswapV2RouterAddress)
                                    call uniswapV2RouterAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                         gas gas_remaining wei
                                        args mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 618 len (15 * ceil32(return_data.size)) + 192]
                                    mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 614 len 96] = ext_call.return_data[0 len 96]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 96
                                    mem[ceil32(ceil32(('cd', 4).length)) + (11 * ceil32(return_data.size)) + ceil32(return_data.size) + 614] = 2
                                    mem[ceil32(ceil32(('cd', 4).length)) + (11 * ceil32(return_data.size)) + ceil32(return_data.size) + 646] = sub_0c756bf3Address
                                    require ext_code.size(uniswapV2RouterAddress)
                                    staticcall uniswapV2RouterAddress.WAVAX() with:
                                            gas gas_remaining wei
                                    mem[ceil32(ceil32(('cd', 4).length)) + (11 * ceil32(return_data.size)) + ceil32(return_data.size) + 710] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[ceil32(ceil32(('cd', 4).length)) + (11 * ceil32(return_data.size)) + ceil32(return_data.size) + 678] = ext_call.return_data[12 len 20]
                                    mem[ceil32(ceil32(('cd', 4).length)) + (12 * ceil32(return_data.size)) + ceil32(return_data.size) + 714] = uniswapV2RouterAddress
                                    mem[ceil32(ceil32(('cd', 4).length)) + (12 * ceil32(return_data.size)) + ceil32(return_data.size) + 746] = ext_call.return_data[0] * sub_b91b740b / 100
                                    require ext_code.size(sub_0c756bf3Address)
                                    call sub_0c756bf3Address.approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args uniswapV2RouterAddress, ext_call.return_data[0] * sub_b91b740b / 100
                                    mem[ceil32(ceil32(('cd', 4).length)) + (12 * ceil32(return_data.size)) + ceil32(return_data.size) + 710] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = ceil32(ceil32(('cd', 4).length)) + (14 * ceil32(return_data.size)) + ceil32(return_data.size) + 710
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    mem[ceil32(ceil32(('cd', 4).length)) + (14 * ceil32(return_data.size)) + ceil32(return_data.size) + 710] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(ceil32(('cd', 4).length)) + (14 * ceil32(return_data.size)) + ceil32(return_data.size) + 714] = ext_call.return_data[0] * sub_b91b740b / 100
                                    mem[ceil32(ceil32(('cd', 4).length)) + (14 * ceil32(return_data.size)) + ceil32(return_data.size) + 746] = 0
                                    mem[ceil32(ceil32(('cd', 4).length)) + (14 * ceil32(return_data.size)) + ceil32(return_data.size) + 778] = 160
                                    mem[ceil32(ceil32(('cd', 4).length)) + (14 * ceil32(return_data.size)) + ceil32(return_data.size) + 874] = 2
                                    idx = 0
                                    s = ceil32(ceil32(('cd', 4).length)) + (14 * ceil32(return_data.size)) + ceil32(return_data.size) + 906
                                    t = ceil32(ceil32(('cd', 4).length)) + (11 * ceil32(return_data.size)) + ceil32(return_data.size) + 646
                                    while idx < mem[ceil32(ceil32(('cd', 4).length)) + (11 * ceil32(return_data.size)) + ceil32(return_data.size) + 614]:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[ceil32(ceil32(('cd', 4).length)) + (14 * ceil32(return_data.size)) + ceil32(return_data.size) + 810] = this.address
                                    mem[ceil32(ceil32(('cd', 4).length)) + (14 * ceil32(return_data.size)) + ceil32(return_data.size) + 842] = block.timestamp
                                    require ext_code.size(uniswapV2RouterAddress)
                                    call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0] * sub_b91b740b / 100, 0, 160, address(this.address), block.timestamp, mem[ceil32(ceil32(('cd', 4).length)) + (14 * ceil32(return_data.size)) + ceil32(return_data.size) + 874 len (32 * mem[ceil32(ceil32(('cd', 4).length)) + (11 * ceil32(return_data.size)) + ceil32(return_data.size) + 614]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[ceil32(ceil32(('cd', 4).length)) + (14 * ceil32(return_data.size)) + ceil32(return_data.size) + 710] = 30
                                    mem[ceil32(ceil32(('cd', 4).length)) + (14 * ceil32(return_data.size)) + ceil32(return_data.size) + 742] = 'SafeMath: subtraction overflow'
                                    if eth.balance(this.address) > eth.balance(this.address):
                                        mem[ceil32(ceil32(('cd', 4).length)) + (14 * ceil32(return_data.size)) + ceil32(return_data.size) + 872] = 0
                                        revert with 0, 
                                                    'SafeMath: subtraction overflow',
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (14 * ceil32(return_data.size)) + ceil32(return_data.size) + 872 len (5 * ceil32(return_data.size)) + 2]
                                    if eth.balance(this.address) < eth.balance(this.address):
                                        revert with 0, 17
                                    call treasuryAddress with:
                                         gas gas_remaining wei
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        'PAYMENT FAIL',
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (14 * ceil32(return_data.size)) + ceil32(return_data.size) + 874 len 5 * ceil32(return_data.size)]
                                        mem[ceil32(ceil32(('cd', 4).length)) + (14 * ceil32(return_data.size)) + ceil32(return_data.size) + 810] = burnAddress
                                        mem[ceil32(ceil32(('cd', 4).length)) + (14 * ceil32(return_data.size)) + ceil32(return_data.size) + 842] = ext_call.return_data[0] * sub_72f1dbdb / 100
                                        mem[ceil32(ceil32(('cd', 4).length)) + (14 * ceil32(return_data.size)) + ceil32(return_data.size) + 774] = 68
                                        mem[ceil32(ceil32(('cd', 4).length)) + (14 * ceil32(return_data.size)) + ceil32(return_data.size) + 806 len 4] = unknown_0xa9059cbb(?????)
                                        mem[ceil32(ceil32(('cd', 4).length)) + (14 * ceil32(return_data.size)) + ceil32(return_data.size) + 874] = 32
                                        mem[ceil32(ceil32(('cd', 4).length)) + (14 * ceil32(return_data.size)) + ceil32(return_data.size) + 906] = 'SafeERC20: low-level call failed'
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 'Address: insufficient balance for call'
                                        if not ext_code.size(sub_0c756bf3Address):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[ceil32(ceil32(('cd', 4).length)) + (14 * ceil32(return_data.size)) + ceil32(return_data.size) + 938 len 96] = 0, burnAddress, ext_call.return_data[0] * sub_72f1dbdb / 100, 0
                                        mem[ceil32(ceil32(('cd', 4).length)) + (14 * ceil32(return_data.size)) + ceil32(return_data.size) + 1006] = 0
                                        call sub_0c756bf3Address with:
                                           funct Mask(32, 224, 0, burnAddress, ext_call.return_data[0] * sub_72f1dbdb / 100, 0) >> 224
                                             gas gas_remaining wei
                                            args (Mask(512, -288, 0, burnAddress, ext_call.return_data[0] * sub_72f1dbdb / 100, 0) << 288)
                                        if not return_data.size:
                                            if not ext_call.success:
                                                if mem[96]:
                                                    revert with memory
                                                      from 128
                                                       len mem[96]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if mem[96]:
                                                require mem[96] >= 32
                                                require ('cd', 4).length == bool(('cd', 4).length)
                                                if not ('cd', 4).length:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            distributing = 0
                                            require ext_code.size(managementAddress)
                                            call managementAddress.0x90219732 with:
                                                 gas gas_remaining wei
                                                args msg.sender, Array(len=('cd', 4).length, data=mem[160 len ceil32(('cd', 4).length)]), rewardPerDay
                                        else:
                                            mem[ceil32(ceil32(('cd', 4).length)) + (14 * ceil32(return_data.size)) + ceil32(return_data.size) + 970 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 
                                                            'SafeERC20: low-level call failed',
                                                            mem[ceil32(ceil32(('cd', 4).length)) + (17 * ceil32(return_data.size)) + 1039 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                            if return_data.size:
                                                require return_data.size >= 32
                                                require mem[ceil32(ceil32(('cd', 4).length)) + (14 * ceil32(return_data.size)) + ceil32(return_data.size) + 970] == bool(mem[ceil32(ceil32(('cd', 4).length)) + (14 * ceil32(return_data.size)) + ceil32(return_data.size) + 970])
                                                if not mem[ceil32(ceil32(('cd', 4).length)) + (14 * ceil32(return_data.size)) + ceil32(return_data.size) + 970]:
                                                    revert with 0, 
                                                                'SafeERC20: ERC20 operation did not succeed',
                                                                mem[ceil32(ceil32(('cd', 4).length)) + (17 * ceil32(return_data.size)) + 1071 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                            distributing = 0
                                            mem[ceil32(ceil32(('cd', 4).length)) + (17 * ceil32(return_data.size)) + 1071 len ceil32(('cd', 4).length)] = mem[160 len ceil32(('cd', 4).length)]
                                            if ceil32(('cd', 4).length) > ('cd', 4).length:
                                                mem[('cd', 4).length + ceil32(ceil32(('cd', 4).length)) + (17 * ceil32(return_data.size)) + 1071] = 0
                                            require ext_code.size(managementAddress)
                                            call managementAddress.0x90219732 with:
                                                 gas gas_remaining wei
                                                args msg.sender, Array(len=('cd', 4).length, data=mem[ceil32(ceil32(('cd', 4).length)) + (17 * ceil32(return_data.size)) + 1071 len (3 * ceil32(return_data.size)) + ceil32(('cd', 4).length) - (2 * ceil32(return_data.size))]), rewardPerDay
                                    else:
                                        mem[ceil32(ceil32(('cd', 4).length)) + (14 * ceil32(return_data.size)) + ceil32(return_data.size) + 774] = return_data.size
                                        mem[ceil32(ceil32(('cd', 4).length)) + (14 * ceil32(return_data.size)) + ceil32(return_data.size) + 806 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, 
                                                        'PAYMENT FAIL',
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (17 * ceil32(return_data.size)) + 875 len (7 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                        mem[ceil32(ceil32(('cd', 4).length)) + (17 * ceil32(return_data.size)) + 811] = burnAddress
                                        mem[ceil32(ceil32(('cd', 4).length)) + (17 * ceil32(return_data.size)) + 843] = ext_call.return_data[0] * sub_72f1dbdb / 100
                                        mem[ceil32(ceil32(('cd', 4).length)) + (17 * ceil32(return_data.size)) + 775] = 68
                                        mem[ceil32(ceil32(('cd', 4).length)) + (17 * ceil32(return_data.size)) + 807 len 4] = unknown_0xa9059cbb(?????)
                                        mem[ceil32(ceil32(('cd', 4).length)) + (17 * ceil32(return_data.size)) + 875] = 32
                                        mem[ceil32(ceil32(('cd', 4).length)) + (17 * ceil32(return_data.size)) + 907] = 'SafeERC20: low-level call failed'
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 'Address: insufficient balance for call'
                                        if not ext_code.size(sub_0c756bf3Address):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[ceil32(ceil32(('cd', 4).length)) + (17 * ceil32(return_data.size)) + 939 len 96] = 0, burnAddress, ext_call.return_data[0] * sub_72f1dbdb / 100, 0
                                        mem[ceil32(ceil32(('cd', 4).length)) + (17 * ceil32(return_data.size)) + 1007] = 0
                                        call sub_0c756bf3Address with:
                                           funct Mask(32, 224, 0, burnAddress, ext_call.return_data[0] * sub_72f1dbdb / 100, 0) >> 224
                                             gas gas_remaining wei
                                            args (Mask(512, -288, 0, burnAddress, ext_call.return_data[0] * sub_72f1dbdb / 100, 0) << 288)
                                        if not return_data.size:
                                            if not ext_call.success:
                                                if mem[96]:
                                                    revert with memory
                                                      from 128
                                                       len mem[96]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if mem[96]:
                                                require mem[96] >= 32
                                                require ('cd', 4).length == bool(('cd', 4).length)
                                                if not ('cd', 4).length:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                        else:
                                            mem[ceil32(ceil32(('cd', 4).length)) + (17 * ceil32(return_data.size)) + 971 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                require mem[ceil32(ceil32(('cd', 4).length)) + (17 * ceil32(return_data.size)) + 971] == bool(mem[ceil32(ceil32(('cd', 4).length)) + (17 * ceil32(return_data.size)) + 971])
                                                if not mem[ceil32(ceil32(('cd', 4).length)) + (17 * ceil32(return_data.size)) + 971]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                        distributing = 0
                                        require ext_code.size(managementAddress)
                                        call managementAddress.0x90219732 with:
                                             gas gas_remaining wei
                                            args msg.sender, Array(len=('cd', 4).length, data=mem[160 len ceil32(('cd', 4).length)]), rewardPerDay
                        else:
                            mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + ceil32(return_data.size) + 330] = this.address
                            require ext_code.size(sub_0c756bf3Address)
                            staticcall sub_0c756bf3Address.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + ceil32(return_data.size) + 326] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if distributing:
                                require ext_code.size(managementAddress)
                                call managementAddress.0x90219732 with:
                                     gas gas_remaining wei
                                    args msg.sender, Array(len=('cd', 4).length, data=call.data[cd[4] + 36 len ('cd', 4).length]), rewardPerDay
                            else:
                                if ext_call.return_data[0] < distributionAmount:
                                    require ext_code.size(managementAddress)
                                    call managementAddress.0x90219732 with:
                                         gas gas_remaining wei
                                        args msg.sender, Array(len=('cd', 4).length, data=call.data[cd[4] + 36 len ('cd', 4).length]), rewardPerDay
                                else:
                                    distributing = 1
                                    mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 330] = this.address
                                    require ext_code.size(sub_0c756bf3Address)
                                    staticcall sub_0c756bf3Address.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 326] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] and sub_8a55784b > -1 / ext_call.return_data[0]:
                                        revert with 0, 17
                                    if ext_call.return_data[0] and sub_b91b740b > -1 / ext_call.return_data[0]:
                                        revert with 0, 17
                                    if ext_call.return_data[0] and sub_72f1dbdb > -1 / ext_call.return_data[0]:
                                        revert with 0, 17
                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 326] = 26
                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 358] = 'SafeMath: division by zero'
                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 390] = 30
                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 422] = 'SafeMath: subtraction overflow'
                                    if ext_call.return_data[0] * sub_8a55784b / 100 / 2 > ext_call.return_data[0] * sub_8a55784b / 100:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if ext_call.return_data[0] * sub_8a55784b / 100 < ext_call.return_data[0] * sub_8a55784b / 100 / 2:
                                        revert with 0, 17
                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 454] = 2
                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 486] = sub_0c756bf3Address
                                    require ext_code.size(uniswapV2RouterAddress)
                                    staticcall uniswapV2RouterAddress.WAVAX() with:
                                            gas gas_remaining wei
                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 550] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 518] = ext_call.return_data[12 len 20]
                                    mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + ceil32(return_data.size) + 554] = uniswapV2RouterAddress
                                    mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + ceil32(return_data.size) + 586] = ext_call.return_data[0] * sub_8a55784b / 100 / 2
                                    require ext_code.size(sub_0c756bf3Address)
                                    call sub_0c756bf3Address.approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args uniswapV2RouterAddress, ext_call.return_data[0] * sub_8a55784b / 100 / 2
                                    mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + ceil32(return_data.size) + 550] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 550
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 550] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 554] = ext_call.return_data[0] * sub_8a55784b / 100 / 2
                                    mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 586] = 0
                                    mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 618] = 160
                                    mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 714] = 2
                                    idx = 0
                                    s = ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 746
                                    t = ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 486
                                    while idx < mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 454]:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 650] = this.address
                                    mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 682] = block.timestamp
                                    require ext_code.size(uniswapV2RouterAddress)
                                    call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + ceil32(return_data.size) + (32 * mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 454]) + -mem[64] + 742]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _9388 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_9388] = 30
                                    mem[_9388 + 32] = 'SafeMath: subtraction overflow'
                                    if eth.balance(this.address) > eth.balance(this.address):
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if eth.balance(this.address) < eth.balance(this.address):
                                        revert with 0, 17
                                    mem[mem[64] + 4] = uniswapV2RouterAddress
                                    mem[mem[64] + 36] = (ext_call.return_data[0] * sub_8a55784b / 100) - (ext_call.return_data[0] * sub_8a55784b / 100 / 2)
                                    require ext_code.size(sub_0c756bf3Address)
                                    call sub_0c756bf3Address.approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args uniswapV2RouterAddress, (ext_call.return_data[0] * sub_8a55784b / 100) - (ext_call.return_data[0] * sub_8a55784b / 100 / 2)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _9683 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_9683] == bool(mem[_9683])
                                    mem[mem[64] + 68] = 0
                                    mem[mem[64] + 100] = 0
                                    mem[mem[64] + 132] = 0
                                    mem[mem[64] + 164] = block.timestamp
                                    require ext_code.size(uniswapV2RouterAddress)
                                    call uniswapV2RouterAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                         gas gas_remaining wei
                                        args sub_0c756bf3Address, (ext_call.return_data[0] * sub_8a55784b / 100) - (ext_call.return_data[0] * sub_8a55784b / 100 / 2), 0, 0, 0, block.timestamp
                                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 96
                                    _9959 = mem[64]
                                    mem[mem[64]] = 2
                                    mem[64] = mem[64] + 96
                                    mem[_9959 + 32 len 64] = call.data[calldata.size len 64]
                                    if not mem[_9959]:
                                        revert with 0, 50
                                    mem[_9959 + 32] = sub_0c756bf3Address
                                    require ext_code.size(uniswapV2RouterAddress)
                                    staticcall uniswapV2RouterAddress.WAVAX() with:
                                            gas gas_remaining wei
                                    mem[_9959 + 96] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = _9959 + ceil32(return_data.size) + 96
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    if 1 >= mem[_9959]:
                                        revert with 0, 50
                                    mem[_9959 + 64] = ext_call.return_data[12 len 20]
                                    mem[_9959 + ceil32(return_data.size) + 100] = uniswapV2RouterAddress
                                    mem[_9959 + ceil32(return_data.size) + 132] = ext_call.return_data[0] * sub_b91b740b / 100
                                    require ext_code.size(sub_0c756bf3Address)
                                    call sub_0c756bf3Address.approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args uniswapV2RouterAddress, ext_call.return_data[0] * sub_b91b740b / 100
                                    mem[_9959 + ceil32(return_data.size) + 96] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = _9959 + (2 * ceil32(return_data.size)) + 96
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    mem[_9959 + (2 * ceil32(return_data.size)) + 96] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                    mem[_9959 + (2 * ceil32(return_data.size)) + 100] = ext_call.return_data[0] * sub_b91b740b / 100
                                    mem[_9959 + (2 * ceil32(return_data.size)) + 132] = 0
                                    mem[_9959 + (2 * ceil32(return_data.size)) + 164] = 160
                                    mem[_9959 + (2 * ceil32(return_data.size)) + 260] = mem[_9959]
                                    idx = 0
                                    s = _9959 + (2 * ceil32(return_data.size)) + 292
                                    t = _9959 + 32
                                    while idx < mem[_9959]:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[_9959 + (2 * ceil32(return_data.size)) + 196] = this.address
                                    mem[_9959 + (2 * ceil32(return_data.size)) + 228] = block.timestamp
                                    require ext_code.size(uniswapV2RouterAddress)
                                    call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0] * sub_b91b740b / 100, 0, 160, address(this.address), block.timestamp, mem[_9959 + (2 * ceil32(return_data.size)) + 260 len (32 * mem[_9959]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_9959 + (2 * ceil32(return_data.size)) + 96] = 30
                                    mem[_9959 + (2 * ceil32(return_data.size)) + 128] = 'SafeMath: subtraction overflow'
                                    if eth.balance(this.address) > eth.balance(this.address):
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if eth.balance(this.address) < eth.balance(this.address):
                                        revert with 0, 17
                                    call treasuryAddress with:
                                         gas gas_remaining wei
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 'PAYMENT FAIL'
                                        mem[_9959 + (2 * ceil32(return_data.size)) + 196] = burnAddress
                                        mem[_9959 + (2 * ceil32(return_data.size)) + 228] = ext_call.return_data[0] * sub_72f1dbdb / 100
                                        mem[_9959 + (2 * ceil32(return_data.size)) + 160] = 68
                                        mem[_9959 + (2 * ceil32(return_data.size)) + 192 len 4] = unknown_0xa9059cbb(?????)
                                        mem[_9959 + (2 * ceil32(return_data.size)) + 260] = 32
                                        mem[_9959 + (2 * ceil32(return_data.size)) + 292] = 'SafeERC20: low-level call failed'
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 'Address: insufficient balance for call'
                                        if not ext_code.size(sub_0c756bf3Address):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[_9959 + (2 * ceil32(return_data.size)) + 324 len 96] = 0, burnAddress, ext_call.return_data[0] * sub_72f1dbdb / 100, 0
                                        mem[_9959 + (2 * ceil32(return_data.size)) + 392] = 0
                                        call sub_0c756bf3Address with:
                                           funct Mask(32, 224, 0, burnAddress, ext_call.return_data[0] * sub_72f1dbdb / 100, 0) >> 224
                                             gas gas_remaining wei
                                            args (Mask(512, -288, 0, burnAddress, ext_call.return_data[0] * sub_72f1dbdb / 100, 0) << 288)
                                        if not return_data.size:
                                            if not ext_call.success:
                                                if mem[96]:
                                                    revert with memory
                                                      from 128
                                                       len mem[96]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if mem[96]:
                                                require mem[96] >= 32
                                                require mem[128] == bool(mem[128])
                                                if not mem[128]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            distributing = 0
                                            mem[_9959 + (2 * ceil32(return_data.size)) + 324] = 0x9021973200000000000000000000000000000000000000000000000000000000
                                            mem[_9959 + (2 * ceil32(return_data.size)) + 328] = msg.sender
                                            mem[_9959 + (2 * ceil32(return_data.size)) + 360] = 96
                                            mem[_9959 + (2 * ceil32(return_data.size)) + 424] = mem[128]
                                            mem[_9959 + (2 * ceil32(return_data.size)) + 456 len ceil32(mem[128])] = mem[160 len ceil32(mem[128])]
                                            if ceil32(mem[128]) > mem[128]:
                                                mem[mem[128] + _9959 + (2 * ceil32(return_data.size)) + 456] = 0
                                            require ext_code.size(managementAddress)
                                            call managementAddress.0x90219732 with:
                                                 gas gas_remaining wei
                                                args msg.sender, Array(len=mem[128], data=mem[_9959 + (2 * ceil32(return_data.size)) + 456 len ceil32(mem[128])]), rewardPerDay
                                        else:
                                            mem[_9959 + (2 * ceil32(return_data.size)) + 324] = return_data.size
                                            mem[_9959 + (2 * ceil32(return_data.size)) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                require mem[_9959 + (2 * ceil32(return_data.size)) + 356] == bool(mem[_9959 + (2 * ceil32(return_data.size)) + 356])
                                                if not mem[_9959 + (2 * ceil32(return_data.size)) + 356]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            distributing = 0
                                            mem[_9959 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 325] = 0x9021973200000000000000000000000000000000000000000000000000000000
                                            mem[_9959 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = msg.sender
                                            mem[_9959 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = 96
                                            mem[_9959 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = mem[128]
                                            mem[_9959 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457 len ceil32(mem[128])] = mem[160 len ceil32(mem[128])]
                                            if ceil32(mem[128]) > mem[128]:
                                                mem[mem[128] + _9959 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = 0
                                            require ext_code.size(managementAddress)
                                            call managementAddress.0x90219732 with:
                                                 gas gas_remaining wei
                                                args msg.sender, Array(len=mem[128], data=mem[_9959 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457 len ceil32(mem[128])]), rewardPerDay
                                    else:
                                        mem[_9959 + (2 * ceil32(return_data.size)) + 160] = return_data.size
                                        mem[_9959 + (2 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, 'PAYMENT FAIL'
                                        mem[_9959 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 197] = burnAddress
                                        mem[_9959 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 229] = ext_call.return_data[0] * sub_72f1dbdb / 100
                                        mem[_9959 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 161] = 68
                                        mem[_9959 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 193 len 4] = unknown_0xa9059cbb(?????)
                                        mem[_9959 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 32
                                        mem[_9959 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = 'SafeERC20: low-level call failed'
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 'Address: insufficient balance for call'
                                        if not ext_code.size(sub_0c756bf3Address):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[_9959 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 325 len 96] = 0, burnAddress, ext_call.return_data[0] * sub_72f1dbdb / 100, 0
                                        mem[_9959 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = 0
                                        call sub_0c756bf3Address with:
                                           funct Mask(32, 224, 0, burnAddress, ext_call.return_data[0] * sub_72f1dbdb / 100, 0) >> 224
                                             gas gas_remaining wei
                                            args (Mask(512, -288, 0, burnAddress, ext_call.return_data[0] * sub_72f1dbdb / 100, 0) << 288)
                                        if not return_data.size:
                                            if not ext_call.success:
                                                if mem[96]:
                                                    revert with memory
                                                      from 128
                                                       len mem[96]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if mem[96]:
                                                require mem[96] >= 32
                                                require mem[128] == bool(mem[128])
                                                if not mem[128]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            distributing = 0
                                            mem[_9959 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 325] = 0x9021973200000000000000000000000000000000000000000000000000000000
                                            mem[_9959 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = msg.sender
                                            mem[_9959 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = 96
                                            mem[_9959 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = mem[128]
                                            mem[_9959 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457 len ceil32(mem[128])] = mem[160 len ceil32(mem[128])]
                                            if ceil32(mem[128]) > mem[128]:
                                                mem[mem[128] + _9959 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = 0
                                            require ext_code.size(managementAddress)
                                            call managementAddress.0x90219732 with:
                                                 gas gas_remaining wei
                                                args msg.sender, Array(len=mem[128], data=mem[_9959 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457 len ceil32(mem[128])]), rewardPerDay
                                        else:
                                            mem[_9959 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 325] = return_data.size
                                            mem[_9959 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[_9959 + (4 * ceil32(return_data.size)) + 326] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_9959 + (4 * ceil32(return_data.size)) + 330] = 32
                                                mem[_9959 + (4 * ceil32(return_data.size)) + 362] = 32
                                                mem[_9959 + (4 * ceil32(return_data.size)) + 394] = 'SafeERC20: low-level call failed'
                                                revert with memory
                                                  from _9959 + (4 * ceil32(return_data.size)) + 326
                                                   len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
                                            if return_data.size:
                                                require return_data.size >= 32
                                                require mem[_9959 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357] == bool(mem[_9959 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357])
                                                if not mem[_9959 + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357]:
                                                    mem[_9959 + (4 * ceil32(return_data.size)) + 326] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[_9959 + (4 * ceil32(return_data.size)) + 330] = 32
                                                    mem[_9959 + (4 * ceil32(return_data.size)) + 362] = 42
                                                    mem[_9959 + (4 * ceil32(return_data.size)) + 394] = 'SafeERC20: ERC20 operation did n'
                                                    mem[_9959 + (4 * ceil32(return_data.size)) + 426] = 0x6f74207375636365656400000000000000000000000000000000000000000000
                                                    revert with memory
                                                      from _9959 + (4 * ceil32(return_data.size)) + 326
                                                       len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
                                            distributing = 0
                                            mem[_9959 + (4 * ceil32(return_data.size)) + 326] = 0x9021973200000000000000000000000000000000000000000000000000000000
                                            mem[_9959 + (4 * ceil32(return_data.size)) + 330] = msg.sender
                                            mem[_9959 + (4 * ceil32(return_data.size)) + 362] = 96
                                            mem[_9959 + (4 * ceil32(return_data.size)) + 426] = mem[128]
                                            mem[_9959 + (4 * ceil32(return_data.size)) + 458 len ceil32(mem[128])] = mem[160 len ceil32(mem[128])]
                                            if ceil32(mem[128]) > mem[128]:
                                                mem[mem[128] + _9959 + (4 * ceil32(return_data.size)) + 458] = 0
                                            mem[_9959 + (4 * ceil32(return_data.size)) + 394] = rewardPerDay
                                            require ext_code.size(managementAddress)
                                            call managementAddress.0x90219732 with:
                                                 gas gas_remaining wei
                                                args mem[_9959 + (4 * ceil32(return_data.size)) + 330 len ceil32(mem[128]) + (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 128]
                    else:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if not mem[96]:
                            mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + 329] = this.address
                            require ext_code.size(sub_0c756bf3Address)
                            staticcall sub_0c756bf3Address.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + 325] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if distributing:
                                require ext_code.size(managementAddress)
                                call managementAddress.0x90219732 with:
                                     gas gas_remaining wei
                                    args msg.sender, Array(len=('cd', 4).length, data=call.data[cd[4] + 36 len ('cd', 4).length]), rewardPerDay
                            else:
                                if ext_call.return_data[0] < distributionAmount:
                                    require ext_code.size(managementAddress)
                                    call managementAddress.0x90219732 with:
                                         gas gas_remaining wei
                                        args msg.sender, Array(len=('cd', 4).length, data=call.data[cd[4] + 36 len ('cd', 4).length]), rewardPerDay
                                else:
                                    distributing = 1
                                    mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 329] = this.address
                                    require ext_code.size(sub_0c756bf3Address)
                                    staticcall sub_0c756bf3Address.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 325] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] and sub_8a55784b > -1 / ext_call.return_data[0]:
                                        revert with 0, 17
                                    if ext_call.return_data[0] and sub_b91b740b > -1 / ext_call.return_data[0]:
                                        revert with 0, 17
                                    if ext_call.return_data[0] and sub_72f1dbdb > -1 / ext_call.return_data[0]:
                                        revert with 0, 17
                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 325] = 26
                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 357] = 'SafeMath: division by zero'
                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 389] = 30
                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 421] = 'SafeMath: subtraction overflow'
                                    if ext_call.return_data[0] * sub_8a55784b / 100 / 2 > ext_call.return_data[0] * sub_8a55784b / 100:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if ext_call.return_data[0] * sub_8a55784b / 100 < ext_call.return_data[0] * sub_8a55784b / 100 / 2:
                                        revert with 0, 17
                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 453] = 2
                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 485] = sub_0c756bf3Address
                                    require ext_code.size(uniswapV2RouterAddress)
                                    staticcall uniswapV2RouterAddress.WAVAX() with:
                                            gas gas_remaining wei
                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 549] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 517] = ext_call.return_data[12 len 20]
                                    mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 553] = uniswapV2RouterAddress
                                    mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 585] = ext_call.return_data[0] * sub_8a55784b / 100 / 2
                                    require ext_code.size(sub_0c756bf3Address)
                                    call sub_0c756bf3Address.approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args uniswapV2RouterAddress, ext_call.return_data[0] * sub_8a55784b / 100 / 2
                                    mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 549] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 549
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 549] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 553] = ext_call.return_data[0] * sub_8a55784b / 100 / 2
                                    mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 585] = 0
                                    mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 617] = 160
                                    mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 713] = 2
                                    idx = 0
                                    s = ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 745
                                    t = ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 485
                                    while idx < mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 453]:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 649] = this.address
                                    mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 681] = block.timestamp
                                    require ext_code.size(uniswapV2RouterAddress)
                                    call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args Mask(255, 1, ext_call.return_data[0] * sub_8a55784b / 100), 0, 160, address(this.address), block.timestamp, mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 713 len (32 * mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 453]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 549] = 30
                                    mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 581] = 'SafeMath: subtraction overflow'
                                    if eth.balance(this.address) > eth.balance(this.address):
                                        mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 613] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 617] = 32
                                        mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 649] = 30
                                        mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 681] = 'SafeMath: subtraction overflow'
                                        mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 711] = 0
                                        revert with memory
                                          from ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 613
                                           len (13 * ceil32(return_data.size)) + 100
                                    if eth.balance(this.address) < eth.balance(this.address):
                                        revert with 0, 17
                                    mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 617] = uniswapV2RouterAddress
                                    mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 649] = (ext_call.return_data[0] * sub_8a55784b / 100) - (ext_call.return_data[0] * sub_8a55784b / 100 / 2)
                                    require ext_code.size(sub_0c756bf3Address)
                                    call sub_0c756bf3Address.approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 617 len (13 * ceil32(return_data.size)) + 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 617] = sub_0c756bf3Address
                                    mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 649] = (ext_call.return_data[0] * sub_8a55784b / 100) - (ext_call.return_data[0] * sub_8a55784b / 100 / 2)
                                    mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 681] = 0
                                    mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 713] = 0
                                    mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 745] = 0
                                    mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 777] = block.timestamp
                                    require ext_code.size(uniswapV2RouterAddress)
                                    call uniswapV2RouterAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                         gas gas_remaining wei
                                        args mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 617 len (15 * ceil32(return_data.size)) + 192]
                                    mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 613 len 96] = ext_call.return_data[0 len 96]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 96
                                    mem[ceil32(ceil32(('cd', 4).length)) + (11 * ceil32(return_data.size)) + 613] = 2
                                    mem[ceil32(ceil32(('cd', 4).length)) + (11 * ceil32(return_data.size)) + 645] = sub_0c756bf3Address
                                    require ext_code.size(uniswapV2RouterAddress)
                                    staticcall uniswapV2RouterAddress.WAVAX() with:
                                            gas gas_remaining wei
                                    mem[ceil32(ceil32(('cd', 4).length)) + (11 * ceil32(return_data.size)) + 709] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[ceil32(ceil32(('cd', 4).length)) + (11 * ceil32(return_data.size)) + 677] = ext_call.return_data[12 len 20]
                                    mem[ceil32(ceil32(('cd', 4).length)) + (12 * ceil32(return_data.size)) + 713] = uniswapV2RouterAddress
                                    mem[ceil32(ceil32(('cd', 4).length)) + (12 * ceil32(return_data.size)) + 745] = ext_call.return_data[0] * sub_b91b740b / 100
                                    require ext_code.size(sub_0c756bf3Address)
                                    call sub_0c756bf3Address.approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args uniswapV2RouterAddress, ext_call.return_data[0] * sub_b91b740b / 100
                                    mem[ceil32(ceil32(('cd', 4).length)) + (12 * ceil32(return_data.size)) + 709] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = ceil32(ceil32(('cd', 4).length)) + (14 * ceil32(return_data.size)) + 709
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    mem[ceil32(ceil32(('cd', 4).length)) + (14 * ceil32(return_data.size)) + 709] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(ceil32(('cd', 4).length)) + (14 * ceil32(return_data.size)) + 713] = ext_call.return_data[0] * sub_b91b740b / 100
                                    mem[ceil32(ceil32(('cd', 4).length)) + (14 * ceil32(return_data.size)) + 745] = 0
                                    mem[ceil32(ceil32(('cd', 4).length)) + (14 * ceil32(return_data.size)) + 777] = 160
                                    mem[ceil32(ceil32(('cd', 4).length)) + (14 * ceil32(return_data.size)) + 873] = 2
                                    idx = 0
                                    s = ceil32(ceil32(('cd', 4).length)) + (14 * ceil32(return_data.size)) + 905
                                    t = ceil32(ceil32(('cd', 4).length)) + (11 * ceil32(return_data.size)) + 645
                                    while idx < mem[ceil32(ceil32(('cd', 4).length)) + (11 * ceil32(return_data.size)) + 613]:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[ceil32(ceil32(('cd', 4).length)) + (14 * ceil32(return_data.size)) + 809] = this.address
                                    mem[ceil32(ceil32(('cd', 4).length)) + (14 * ceil32(return_data.size)) + 841] = block.timestamp
                                    require ext_code.size(uniswapV2RouterAddress)
                                    call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0] * sub_b91b740b / 100, 0, 160, address(this.address), block.timestamp, mem[ceil32(ceil32(('cd', 4).length)) + (14 * ceil32(return_data.size)) + 873 len (32 * mem[ceil32(ceil32(('cd', 4).length)) + (11 * ceil32(return_data.size)) + 613]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[ceil32(ceil32(('cd', 4).length)) + (14 * ceil32(return_data.size)) + 709] = 30
                                    mem[ceil32(ceil32(('cd', 4).length)) + (14 * ceil32(return_data.size)) + 741] = 'SafeMath: subtraction overflow'
                                    if eth.balance(this.address) > eth.balance(this.address):
                                        mem[ceil32(ceil32(('cd', 4).length)) + (14 * ceil32(return_data.size)) + 871] = 0
                                        revert with 0, 
                                                    'SafeMath: subtraction overflow',
                                                    mem[ceil32(ceil32(('cd', 4).length)) + (14 * ceil32(return_data.size)) + 871 len (5 * ceil32(return_data.size)) + 2]
                                    if eth.balance(this.address) < eth.balance(this.address):
                                        revert with 0, 17
                                    call treasuryAddress with:
                                         gas gas_remaining wei
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        'PAYMENT FAIL',
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (14 * ceil32(return_data.size)) + 873 len 5 * ceil32(return_data.size)]
                                        mem[ceil32(ceil32(('cd', 4).length)) + (14 * ceil32(return_data.size)) + 809] = burnAddress
                                        mem[ceil32(ceil32(('cd', 4).length)) + (14 * ceil32(return_data.size)) + 841] = ext_call.return_data[0] * sub_72f1dbdb / 100
                                        mem[ceil32(ceil32(('cd', 4).length)) + (14 * ceil32(return_data.size)) + 773] = 68
                                        mem[ceil32(ceil32(('cd', 4).length)) + (14 * ceil32(return_data.size)) + 805 len 4] = unknown_0xa9059cbb(?????)
                                        mem[ceil32(ceil32(('cd', 4).length)) + (14 * ceil32(return_data.size)) + 873] = 32
                                        mem[ceil32(ceil32(('cd', 4).length)) + (14 * ceil32(return_data.size)) + 905] = 'SafeERC20: low-level call failed'
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 'Address: insufficient balance for call'
                                        if not ext_code.size(sub_0c756bf3Address):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[ceil32(ceil32(('cd', 4).length)) + (14 * ceil32(return_data.size)) + 937 len 96] = 0, burnAddress, ext_call.return_data[0] * sub_72f1dbdb / 100, 0
                                        mem[ceil32(ceil32(('cd', 4).length)) + (14 * ceil32(return_data.size)) + 1005] = 0
                                        call sub_0c756bf3Address with:
                                           funct Mask(32, 224, 0, burnAddress, ext_call.return_data[0] * sub_72f1dbdb / 100, 0) >> 224
                                             gas gas_remaining wei
                                            args (Mask(512, -288, 0, burnAddress, ext_call.return_data[0] * sub_72f1dbdb / 100, 0) << 288)
                                        if not return_data.size:
                                            if not ext_call.success:
                                                if mem[96]:
                                                    revert with memory
                                                      from 128
                                                       len mem[96]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if mem[96]:
                                                require mem[96] >= 32
                                                require ('cd', 4).length == bool(('cd', 4).length)
                                                if not ('cd', 4).length:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                        else:
                                            mem[ceil32(ceil32(('cd', 4).length)) + (14 * ceil32(return_data.size)) + 969 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                require mem[ceil32(ceil32(('cd', 4).length)) + (14 * ceil32(return_data.size)) + 969] == bool(mem[ceil32(ceil32(('cd', 4).length)) + (14 * ceil32(return_data.size)) + 969])
                                                if not mem[ceil32(ceil32(('cd', 4).length)) + (14 * ceil32(return_data.size)) + 969]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                        distributing = 0
                                        require ext_code.size(managementAddress)
                                        call managementAddress.0x90219732 with:
                                             gas gas_remaining wei
                                            args msg.sender, Array(len=('cd', 4).length, data=mem[160 len ceil32(('cd', 4).length)]), rewardPerDay
                                    else:
                                        mem[ceil32(ceil32(('cd', 4).length)) + (14 * ceil32(return_data.size)) + 773] = return_data.size
                                        mem[ceil32(ceil32(('cd', 4).length)) + (14 * ceil32(return_data.size)) + 805 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, 
                                                        'PAYMENT FAIL',
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (14 * ceil32(return_data.size)) + ceil32(return_data.size) + 874 len 5 * ceil32(return_data.size)]
                                        mem[ceil32(ceil32(('cd', 4).length)) + (14 * ceil32(return_data.size)) + ceil32(return_data.size) + 810] = burnAddress
                                        mem[ceil32(ceil32(('cd', 4).length)) + (14 * ceil32(return_data.size)) + ceil32(return_data.size) + 842] = ext_call.return_data[0] * sub_72f1dbdb / 100
                                        mem[ceil32(ceil32(('cd', 4).length)) + (14 * ceil32(return_data.size)) + ceil32(return_data.size) + 774] = 68
                                        mem[ceil32(ceil32(('cd', 4).length)) + (14 * ceil32(return_data.size)) + ceil32(return_data.size) + 806 len 4] = unknown_0xa9059cbb(?????)
                                        mem[ceil32(ceil32(('cd', 4).length)) + (14 * ceil32(return_data.size)) + ceil32(return_data.size) + 874] = 32
                                        mem[ceil32(ceil32(('cd', 4).length)) + (14 * ceil32(return_data.size)) + ceil32(return_data.size) + 906] = 'SafeERC20: low-level call failed'
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 'Address: insufficient balance for call'
                                        if not ext_code.size(sub_0c756bf3Address):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[ceil32(ceil32(('cd', 4).length)) + (14 * ceil32(return_data.size)) + ceil32(return_data.size) + 938 len 96] = 0, burnAddress, ext_call.return_data[0] * sub_72f1dbdb / 100, 0
                                        mem[ceil32(ceil32(('cd', 4).length)) + (14 * ceil32(return_data.size)) + ceil32(return_data.size) + 1006] = 0
                                        call sub_0c756bf3Address with:
                                           funct Mask(32, 224, 0, burnAddress, ext_call.return_data[0] * sub_72f1dbdb / 100, 0) >> 224
                                             gas gas_remaining wei
                                            args (Mask(512, -288, 0, burnAddress, ext_call.return_data[0] * sub_72f1dbdb / 100, 0) << 288)
                                        if not return_data.size:
                                            if not ext_call.success:
                                                if mem[96]:
                                                    revert with memory
                                                      from 128
                                                       len mem[96]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if mem[96]:
                                                require mem[96] >= 32
                                                require ('cd', 4).length == bool(('cd', 4).length)
                                                if not ('cd', 4).length:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            distributing = 0
                                            require ext_code.size(managementAddress)
                                            call managementAddress.0x90219732 with:
                                                 gas gas_remaining wei
                                                args msg.sender, Array(len=('cd', 4).length, data=mem[160 len ceil32(('cd', 4).length)]), rewardPerDay
                                        else:
                                            mem[ceil32(ceil32(('cd', 4).length)) + (14 * ceil32(return_data.size)) + ceil32(return_data.size) + 970 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 
                                                            'SafeERC20: low-level call failed',
                                                            mem[ceil32(ceil32(('cd', 4).length)) + (17 * ceil32(return_data.size)) + 1039 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                            if return_data.size:
                                                require return_data.size >= 32
                                                require mem[ceil32(ceil32(('cd', 4).length)) + (14 * ceil32(return_data.size)) + ceil32(return_data.size) + 970] == bool(mem[ceil32(ceil32(('cd', 4).length)) + (14 * ceil32(return_data.size)) + ceil32(return_data.size) + 970])
                                                if not mem[ceil32(ceil32(('cd', 4).length)) + (14 * ceil32(return_data.size)) + ceil32(return_data.size) + 970]:
                                                    revert with 0, 
                                                                'SafeERC20: ERC20 operation did not succeed',
                                                                mem[ceil32(ceil32(('cd', 4).length)) + (17 * ceil32(return_data.size)) + 1071 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                            distributing = 0
                                            mem[ceil32(ceil32(('cd', 4).length)) + (17 * ceil32(return_data.size)) + 1071 len ceil32(('cd', 4).length)] = mem[160 len ceil32(('cd', 4).length)]
                                            if ceil32(('cd', 4).length) > ('cd', 4).length:
                                                mem[('cd', 4).length + ceil32(ceil32(('cd', 4).length)) + (17 * ceil32(return_data.size)) + 1071] = 0
                                            require ext_code.size(managementAddress)
                                            call managementAddress.0x90219732 with:
                                                 gas gas_remaining wei
                                                args msg.sender, Array(len=('cd', 4).length, data=mem[ceil32(ceil32(('cd', 4).length)) + (17 * ceil32(return_data.size)) + 1071 len (3 * ceil32(return_data.size)) + ceil32(('cd', 4).length) - (2 * ceil32(return_data.size))]), rewardPerDay
                        else:
                            require mem[96] >= 32
                            require ('cd', 4).length == bool(('cd', 4).length)
                            if not ('cd', 4).length:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + 329] = this.address
                            require ext_code.size(sub_0c756bf3Address)
                            staticcall sub_0c756bf3Address.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + 325] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if distributing:
                                require ext_code.size(managementAddress)
                                call managementAddress.0x90219732 with:
                                     gas gas_remaining wei
                                    args msg.sender, Array(len=('cd', 4).length, data=call.data[cd[4] + 36 len ('cd', 4).length]), rewardPerDay
                            else:
                                if ext_call.return_data[0] < distributionAmount:
                                    require ext_code.size(managementAddress)
                                    call managementAddress.0x90219732 with:
                                         gas gas_remaining wei
                                        args msg.sender, Array(len=('cd', 4).length, data=call.data[cd[4] + 36 len ('cd', 4).length]), rewardPerDay
                                else:
                                    distributing = 1
                                    mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 329] = this.address
                                    require ext_code.size(sub_0c756bf3Address)
                                    staticcall sub_0c756bf3Address.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 325] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] and sub_8a55784b > -1 / ext_call.return_data[0]:
                                        revert with 0, 17
                                    if ext_call.return_data[0] and sub_b91b740b > -1 / ext_call.return_data[0]:
                                        revert with 0, 17
                                    if ext_call.return_data[0] and sub_72f1dbdb > -1 / ext_call.return_data[0]:
                                        revert with 0, 17
                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 325] = 26
                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 357] = 'SafeMath: division by zero'
                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 389] = 30
                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 421] = 'SafeMath: subtraction overflow'
                                    if ext_call.return_data[0] * sub_8a55784b / 100 / 2 > ext_call.return_data[0] * sub_8a55784b / 100:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if ext_call.return_data[0] * sub_8a55784b / 100 < ext_call.return_data[0] * sub_8a55784b / 100 / 2:
                                        revert with 0, 17
                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 453] = 2
                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 485] = sub_0c756bf3Address
                                    require ext_code.size(uniswapV2RouterAddress)
                                    staticcall uniswapV2RouterAddress.WAVAX() with:
                                            gas gas_remaining wei
                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 549] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 517] = ext_call.return_data[12 len 20]
                                    mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 553] = uniswapV2RouterAddress
                                    mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 585] = ext_call.return_data[0] * sub_8a55784b / 100 / 2
                                    require ext_code.size(sub_0c756bf3Address)
                                    call sub_0c756bf3Address.approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args uniswapV2RouterAddress, ext_call.return_data[0] * sub_8a55784b / 100 / 2
                                    mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 549] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 549
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 549] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 553] = ext_call.return_data[0] * sub_8a55784b / 100 / 2
                                    mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 585] = 0
                                    mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 617] = 160
                                    mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 713] = 2
                                    idx = 0
                                    s = ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 745
                                    t = ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 485
                                    while idx < mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 453]:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 649] = this.address
                                    mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 681] = block.timestamp
                                    require ext_code.size(uniswapV2RouterAddress)
                                    call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + (32 * mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 453]) + -mem[64] + 741]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _9383 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_9383] = 30
                                    mem[_9383 + 32] = 'SafeMath: subtraction overflow'
                                    if eth.balance(this.address) > eth.balance(this.address):
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if eth.balance(this.address) < eth.balance(this.address):
                                        revert with 0, 17
                                    mem[mem[64] + 4] = uniswapV2RouterAddress
                                    mem[mem[64] + 36] = (ext_call.return_data[0] * sub_8a55784b / 100) - (ext_call.return_data[0] * sub_8a55784b / 100 / 2)
                                    require ext_code.size(sub_0c756bf3Address)
                                    call sub_0c756bf3Address.approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args uniswapV2RouterAddress, (ext_call.return_data[0] * sub_8a55784b / 100) - (ext_call.return_data[0] * sub_8a55784b / 100 / 2)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _9682 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_9682] == bool(mem[_9682])
                                    mem[mem[64] + 68] = 0
                                    mem[mem[64] + 100] = 0
                                    mem[mem[64] + 132] = 0
                                    mem[mem[64] + 164] = block.timestamp
                                    require ext_code.size(uniswapV2RouterAddress)
                                    call uniswapV2RouterAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                         gas gas_remaining wei
                                        args sub_0c756bf3Address, (ext_call.return_data[0] * sub_8a55784b / 100) - (ext_call.return_data[0] * sub_8a55784b / 100 / 2), 0, 0, 0, block.timestamp
                                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 96
                                    _9957 = mem[64]
                                    mem[mem[64]] = 2
                                    mem[64] = mem[64] + 96
                                    mem[_9957 + 32 len 64] = call.data[calldata.size len 64]
                                    if not mem[_9957]:
                                        revert with 0, 50
                                    mem[_9957 + 32] = sub_0c756bf3Address
                                    require ext_code.size(uniswapV2RouterAddress)
                                    staticcall uniswapV2RouterAddress.WAVAX() with:
                                            gas gas_remaining wei
                                    mem[_9957 + 96] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = _9957 + ceil32(return_data.size) + 96
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    if 1 >= mem[_9957]:
                                        revert with 0, 50
                                    mem[_9957 + 64] = ext_call.return_data[12 len 20]
                                    mem[_9957 + ceil32(return_data.size) + 100] = uniswapV2RouterAddress
                                    mem[_9957 + ceil32(return_data.size) + 132] = ext_call.return_data[0] * sub_b91b740b / 100
                                    require ext_code.size(sub_0c756bf3Address)
                                    call sub_0c756bf3Address.approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args uniswapV2RouterAddress, ext_call.return_data[0] * sub_b91b740b / 100
                                    mem[_9957 + ceil32(return_data.size) + 96] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = _9957 + (2 * ceil32(return_data.size)) + 96
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    mem[_9957 + (2 * ceil32(return_data.size)) + 96] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                    mem[_9957 + (2 * ceil32(return_data.size)) + 100] = ext_call.return_data[0] * sub_b91b740b / 100
                                    mem[_9957 + (2 * ceil32(return_data.size)) + 132] = 0
                                    mem[_9957 + (2 * ceil32(return_data.size)) + 164] = 160
                                    mem[_9957 + (2 * ceil32(return_data.size)) + 260] = mem[_9957]
                                    idx = 0
                                    s = _9957 + (2 * ceil32(return_data.size)) + 292
                                    t = _9957 + 32
                                    while idx < mem[_9957]:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[_9957 + (2 * ceil32(return_data.size)) + 196] = this.address
                                    mem[_9957 + (2 * ceil32(return_data.size)) + 228] = block.timestamp
                                    require ext_code.size(uniswapV2RouterAddress)
                                    call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _9957 + (2 * ceil32(return_data.size)) + (32 * mem[_9957]) + -mem[64] + 288]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _16191 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_16191] = 30
                                    mem[_16191 + 32] = 'SafeMath: subtraction overflow'
                                    if eth.balance(this.address) > eth.balance(this.address):
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if eth.balance(this.address) < eth.balance(this.address):
                                        revert with 0, 17
                                    call treasuryAddress with:
                                         gas gas_remaining wei
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 'PAYMENT FAIL'
                                        _16818 = mem[64]
                                        mem[mem[64] + 36] = burnAddress
                                        mem[mem[64] + 68] = ext_call.return_data[0] * sub_72f1dbdb / 100
                                        _16928 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                                        mem[64] = mem[64] + 164
                                        mem[_16818 + 100] = 32
                                        mem[_16818 + 132] = 'SafeERC20: low-level call failed'
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 'Address: insufficient balance for call'
                                        if not ext_code.size(sub_0c756bf3Address):
                                            revert with 0, 'Address: call to non-contract'
                                        _17340 = mem[_16928]
                                        mem[_16818 + 164 len ceil32(mem[_16928])] = mem[_16928 + 32 len ceil32(mem[_16928])]
                                        if ceil32(_17340) > _17340:
                                            mem[_17340 + _16818 + 164] = 0
                                        call sub_0c756bf3Address with:
                                             gas gas_remaining wei
                                            args mem[_16818 + 168 len _17340 - 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                if mem[96]:
                                                    revert with memory
                                                      from 128
                                                       len mem[96]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if mem[96]:
                                                require mem[96] >= 32
                                                require mem[128] == bool(mem[128])
                                                if not mem[128]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            distributing = 0
                                            mem[_16818 + 164] = 0x9021973200000000000000000000000000000000000000000000000000000000
                                            mem[_16818 + 168] = msg.sender
                                            mem[_16818 + 200] = 96
                                            mem[_16818 + 264] = mem[128]
                                            mem[_16818 + 296 len ceil32(mem[128])] = mem[160 len ceil32(mem[128])]
                                            if ceil32(mem[128]) > mem[128]:
                                                mem[mem[128] + _16818 + 296] = 0
                                            mem[_16818 + 232] = rewardPerDay
                                            require ext_code.size(managementAddress)
                                            call managementAddress.0x90219732 with:
                                                 gas gas_remaining wei
                                                args msg.sender, Array(len=mem[128], data=mem[_16818 + 296 len ceil32(mem[128])]), rewardPerDay
                                        else:
                                            mem[_16818 + 164] = return_data.size
                                            mem[_16818 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                require mem[_16818 + 196] == bool(mem[_16818 + 196])
                                                if not mem[_16818 + 196]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            distributing = 0
                                            mem[_16818 + ceil32(return_data.size) + 165] = 0x9021973200000000000000000000000000000000000000000000000000000000
                                            mem[_16818 + ceil32(return_data.size) + 169] = msg.sender
                                            mem[_16818 + ceil32(return_data.size) + 201] = 96
                                            mem[_16818 + ceil32(return_data.size) + 265] = mem[128]
                                            mem[_16818 + ceil32(return_data.size) + 297 len ceil32(mem[128])] = mem[160 len ceil32(mem[128])]
                                            if ceil32(mem[128]) > mem[128]:
                                                mem[mem[128] + _16818 + ceil32(return_data.size) + 297] = 0
                                            require ext_code.size(managementAddress)
                                            call managementAddress.0x90219732 with:
                                                 gas gas_remaining wei
                                                args msg.sender, Array(len=mem[128], data=mem[_16818 + ceil32(return_data.size) + 297 len ceil32(mem[128])]), rewardPerDay
                                    else:
                                        _16531 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                        mem[_16531] = return_data.size
                                        mem[_16531 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, 'PAYMENT FAIL'
                                        _16819 = mem[64]
                                        mem[mem[64] + 36] = burnAddress
                                        mem[mem[64] + 68] = ext_call.return_data[0] * sub_72f1dbdb / 100
                                        _16930 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                                        mem[64] = mem[64] + 164
                                        mem[_16819 + 100] = 32
                                        mem[_16819 + 132] = 'SafeERC20: low-level call failed'
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 'Address: insufficient balance for call'
                                        if not ext_code.size(sub_0c756bf3Address):
                                            revert with 0, 'Address: call to non-contract'
                                        _17342 = mem[_16930]
                                        mem[_16819 + 164 len ceil32(mem[_16930])] = mem[_16930 + 32 len ceil32(mem[_16930])]
                                        if ceil32(_17342) > _17342:
                                            mem[_17342 + _16819 + 164] = 0
                                        call sub_0c756bf3Address with:
                                             gas gas_remaining wei
                                            args mem[_16819 + 168 len _17342 - 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                if mem[96]:
                                                    revert with memory
                                                      from 128
                                                       len mem[96]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if mem[96]:
                                                require mem[96] >= 32
                                                require mem[128] == bool(mem[128])
                                                if not mem[128]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            distributing = 0
                                            mem[_16819 + 164] = 0x9021973200000000000000000000000000000000000000000000000000000000
                                            mem[_16819 + 168] = msg.sender
                                            mem[_16819 + 200] = 96
                                            mem[_16819 + 264] = mem[128]
                                            mem[_16819 + 296 len ceil32(mem[128])] = mem[160 len ceil32(mem[128])]
                                            if ceil32(mem[128]) > mem[128]:
                                                mem[mem[128] + _16819 + 296] = 0
                                            mem[_16819 + 232] = rewardPerDay
                                            require ext_code.size(managementAddress)
                                            call managementAddress.0x90219732 with:
                                                 gas gas_remaining wei
                                                args msg.sender, Array(len=mem[128], data=mem[_16819 + 296 len ceil32(mem[128])]), rewardPerDay
                                        else:
                                            mem[_16819 + 164] = return_data.size
                                            mem[_16819 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                require mem[_16819 + 196] == bool(mem[_16819 + 196])
                                                if not mem[_16819 + 196]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            distributing = 0
                                            mem[_16819 + ceil32(return_data.size) + 165] = 0x9021973200000000000000000000000000000000000000000000000000000000
                                            mem[_16819 + ceil32(return_data.size) + 169] = msg.sender
                                            mem[_16819 + ceil32(return_data.size) + 201] = 96
                                            mem[_16819 + ceil32(return_data.size) + 265] = mem[128]
                                            mem[_16819 + ceil32(return_data.size) + 297 len ceil32(mem[128])] = mem[160 len ceil32(mem[128])]
                                            if ceil32(mem[128]) > mem[128]:
                                                mem[mem[128] + _16819 + ceil32(return_data.size) + 297] = 0
                                            require ext_code.size(managementAddress)
                                            call managementAddress.0x90219732 with:
                                                 gas gas_remaining wei
                                                args msg.sender, Array(len=mem[128], data=mem[_16819 + ceil32(return_data.size) + 297 len ceil32(mem[128])]), rewardPerDay
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
}



}
