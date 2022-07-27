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
uint256 stor20; offset 8
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

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_28ae3727(?) {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint256(stor20.field_0) = not bool(sub_ebaf1549) or Mask(248, 8, uint256(stor20.field_0))
}

function getTotalCount() {
    require ext_code.size(managementAddress)
    staticcall managementAddress.0x56d42bb3 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function sub_94471c42(?) {
    require ext_code.size(managementAddress)
    staticcall managementAddress.0x94471c42 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function sub_f90f0eaa(?) {
    require ext_code.size(managementAddress)
    staticcall managementAddress.0xf90f0eaa with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
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

function getNodeCount() {
    require ext_code.size(managementAddress)
    staticcall managementAddress.0x8b730855 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
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
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function setAddresses(address[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if floor32(arg1.length) + 97 > test266151307() or floor32(arg1.length) + 97 < 96:
        revert with 'NH{q', 65
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    idx = arg1 + 36
    s = 128
    while idx < arg1 + (32 * arg1.length) + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if 0 >= arg1.length:
        revert with 'NH{q', 50
    treasuryAddress = mem[140 len 20]
    if 1 >= arg1.length:
        revert with 'NH{q', 50
    devAddress = mem[172 len 20]
    if 2 >= arg1.length:
        revert with 'NH{q', 50
    interestAddress = mem[204 len 20]
}

function sub_1e91e8f7(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + 97 > test266151307() or floor32(('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = cd[4] + 36
    s = 128
    while idx < cd[4] + (32 * ('cd', 4).length) + 36:
        require cd[idx] == cd[idx]
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if 0 >= ('cd', 4).length:
        revert with 'NH{q', 50
    sub_8a55784b = mem[128]
    if 1 >= ('cd', 4).length:
        revert with 'NH{q', 50
    sub_b91b740b = mem[160]
    if 2 >= ('cd', 4).length:
        revert with 'NH{q', 50
    sub_72f1dbdb = mem[192]
    if 3 >= ('cd', 4).length:
        revert with 'NH{q', 50
    claimTax = mem[224]
    if 4 >= ('cd', 4).length:
        revert with 'NH{q', 50
    sub_2d5429de = mem[256]
    if 5 >= ('cd', 4).length:
        revert with 'NH{q', 50
    sub_6acc95cd = mem[288]
    if 6 >= ('cd', 4).length:
        revert with 'NH{q', 50
    sub_8f2a7780 = mem[320]
    if 7 >= ('cd', 4).length:
        revert with 'NH{q', 50
    nodePrice = mem[352]
    if 8 >= ('cd', 4).length:
        revert with 'NH{q', 50
    rewardPerDay = mem[384]
    if 9 >= ('cd', 4).length:
        revert with 'NH{q', 50
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
    require mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 127 < return_data.size + 96
    _5 = mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]
    if mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96] > test266151307():
        revert with 'NH{q', 65
    if ceil32(return_data.size) + ceil32(ceil32(mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96])) + 97 > test266151307() or ceil32(ceil32(mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96])) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = ceil32(return_data.size) + ceil32(ceil32(mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96])) + 97
    mem[ceil32(return_data.size) + 96] = _5
    require _4 + _5 + 32 <= return_data.size
    mem[ceil32(return_data.size) + 128 len ceil32(_5)] = mem[_4 + 128 len ceil32(_5)]
    if ceil32(_5) <= _5:
        _19 = mem[64]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = _5
        mem[mem[64] + 64 len ceil32(_5)] = mem[ceil32(return_data.size) + 128 len ceil32(_5)]
        if ceil32(_5) <= _5:
            return Array(len=_5, data=mem[mem[64] + 64 len ceil32(_5)])
        mem[mem[64] + _5 + 64] = 0
        return memory
          from mem[64]
           len _19 + ceil32(_5) + -mem[64] + 64
    mem[ceil32(return_data.size) + _5 + 128] = 0
    _20 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = _5
    mem[mem[64] + 64 len ceil32(_5)] = mem[ceil32(return_data.size) + 128 len ceil32(_5)]
    if ceil32(_5) <= _5:
        return Array(len=_5, data=mem[mem[64] + 64 len ceil32(_5)])
    mem[mem[64] + _5 + 64] = 0
    return memory
      from mem[64]
       len _20 + ceil32(_5) + -mem[64] + 64
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
    require mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 127 < return_data.size + 96
    _5 = mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]
    if mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96] > test266151307():
        revert with 'NH{q', 65
    if ceil32(return_data.size) + ceil32(ceil32(mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96])) + 97 > test266151307() or ceil32(ceil32(mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96])) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = ceil32(return_data.size) + ceil32(ceil32(mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96])) + 97
    mem[ceil32(return_data.size) + 96] = _5
    require _4 + _5 + 32 <= return_data.size
    mem[ceil32(return_data.size) + 128 len ceil32(_5)] = mem[_4 + 128 len ceil32(_5)]
    if ceil32(_5) <= _5:
        _19 = mem[64]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = _5
        mem[mem[64] + 64 len ceil32(_5)] = mem[ceil32(return_data.size) + 128 len ceil32(_5)]
        if ceil32(_5) <= _5:
            return Array(len=_5, data=mem[mem[64] + 64 len ceil32(_5)])
        mem[mem[64] + _5 + 64] = 0
        return memory
          from mem[64]
           len _19 + ceil32(_5) + -mem[64] + 64
    mem[ceil32(return_data.size) + _5 + 128] = 0
    _20 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = _5
    mem[mem[64] + 64 len ceil32(_5)] = mem[ceil32(return_data.size) + 128 len ceil32(_5)]
    if ceil32(_5) <= _5:
        return Array(len=_5, data=mem[mem[64] + 64 len ceil32(_5)])
    mem[mem[64] + _5 + 64] = 0
    return memory
      from mem[64]
       len _20 + ceil32(_5) + -mem[64] + 64
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
    require mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 127 < return_data.size + 96
    _5 = mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]
    if mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96] > test266151307():
        revert with 'NH{q', 65
    if ceil32(return_data.size) + ceil32(ceil32(mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96])) + 97 > test266151307() or ceil32(ceil32(mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96])) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = ceil32(return_data.size) + ceil32(ceil32(mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96])) + 97
    mem[ceil32(return_data.size) + 96] = _5
    require _4 + _5 + 32 <= return_data.size
    mem[ceil32(return_data.size) + 128 len ceil32(_5)] = mem[_4 + 128 len ceil32(_5)]
    if ceil32(_5) <= _5:
        _19 = mem[64]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = _5
        mem[mem[64] + 64 len ceil32(_5)] = mem[ceil32(return_data.size) + 128 len ceil32(_5)]
        if ceil32(_5) <= _5:
            return Array(len=_5, data=mem[mem[64] + 64 len ceil32(_5)])
        mem[mem[64] + _5 + 64] = 0
        return memory
          from mem[64]
           len _19 + ceil32(_5) + -mem[64] + 64
    mem[ceil32(return_data.size) + _5 + 128] = 0
    _20 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = _5
    mem[mem[64] + 64 len ceil32(_5)] = mem[ceil32(return_data.size) + 128 len ceil32(_5)]
    if ceil32(_5) <= _5:
        return Array(len=_5, data=mem[mem[64] + 64 len ceil32(_5)])
    mem[mem[64] + _5 + 64] = 0
    return memory
      from mem[64]
       len _20 + ceil32(_5) + -mem[64] + 64
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
    require mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 127 < return_data.size + 96
    _5 = mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]
    if mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96] > test266151307():
        revert with 'NH{q', 65
    if ceil32(return_data.size) + ceil32(ceil32(mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96])) + 97 > test266151307() or ceil32(ceil32(mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96])) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = ceil32(return_data.size) + ceil32(ceil32(mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96])) + 97
    mem[ceil32(return_data.size) + 96] = _5
    require _4 + _5 + 32 <= return_data.size
    mem[ceil32(return_data.size) + 128 len ceil32(_5)] = mem[_4 + 128 len ceil32(_5)]
    if ceil32(_5) <= _5:
        _19 = mem[64]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = _5
        mem[mem[64] + 64 len ceil32(_5)] = mem[ceil32(return_data.size) + 128 len ceil32(_5)]
        if ceil32(_5) <= _5:
            return Array(len=_5, data=mem[mem[64] + 64 len ceil32(_5)])
        mem[mem[64] + _5 + 64] = 0
        return memory
          from mem[64]
           len _19 + ceil32(_5) + -mem[64] + 64
    mem[ceil32(return_data.size) + _5 + 128] = 0
    _20 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = _5
    mem[mem[64] + 64 len ceil32(_5)] = mem[ceil32(return_data.size) + 128 len ceil32(_5)]
    if ceil32(_5) <= _5:
        return Array(len=_5, data=mem[mem[64] + 64 len ceil32(_5)])
    mem[mem[64] + _5 + 64] = 0
    return memory
      from mem[64]
       len _20 + ceil32(_5) + -mem[64] + 64
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
    require mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 127 < return_data.size + 96
    _5 = mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]
    if mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96] > test266151307():
        revert with 'NH{q', 65
    if ceil32(return_data.size) + ceil32(ceil32(mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96])) + 97 > test266151307() or ceil32(ceil32(mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96])) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = ceil32(return_data.size) + ceil32(ceil32(mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96])) + 97
    mem[ceil32(return_data.size) + 96] = _5
    require _4 + _5 + 32 <= return_data.size
    mem[ceil32(return_data.size) + 128 len ceil32(_5)] = mem[_4 + 128 len ceil32(_5)]
    if ceil32(_5) <= _5:
        _19 = mem[64]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = _5
        mem[mem[64] + 64 len ceil32(_5)] = mem[ceil32(return_data.size) + 128 len ceil32(_5)]
        if ceil32(_5) <= _5:
            return Array(len=_5, data=mem[mem[64] + 64 len ceil32(_5)])
        mem[mem[64] + _5 + 64] = 0
        return memory
          from mem[64]
           len _19 + ceil32(_5) + -mem[64] + 64
    mem[ceil32(return_data.size) + _5 + 128] = 0
    _20 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = _5
    mem[mem[64] + 64 len ceil32(_5)] = mem[ceil32(return_data.size) + 128 len ceil32(_5)]
    if ceil32(_5) <= _5:
        return Array(len=_5, data=mem[mem[64] + 64 len ceil32(_5)])
    mem[mem[64] + _5 + 64] = 0
    return memory
      from mem[64]
       len _20 + ceil32(_5) + -mem[64] + 64
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
    s = 320
    t = (2 * ceil32(return_data.size)) + 580
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
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
        revert with 'NH{q', 17
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
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
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
    s = (6 * ceil32(return_data.size)) + 544
    t = (9 * ceil32(return_data.size)) + 804
    while idx < mem[(6 * ceil32(return_data.size)) + 512]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(uniswapV2RouterAddress)
    call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args 5 * 10^16, 0, 160, address(this.address), block.timestamp, mem[(9 * ceil32(return_data.size)) + 772 len (32 * mem[(6 * ceil32(return_data.size)) + 512]) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if eth.balance(this.address) > eth.balance(this.address):
        mem[(9 * ceil32(return_data.size)) + 770] = 0
        revert with 0, 'SafeMath: subtraction overflow', mem[(9 * ceil32(return_data.size)) + 770 len (5 * ceil32(return_data.size)) + 2]
    if eth.balance(this.address) < eth.balance(this.address):
        revert with 'NH{q', 17
    call treasuryAddress with:
         gas gas_remaining wei
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'PAYMENT FAIL', mem[(9 * ceil32(return_data.size)) + 772 len 5 * ceil32(return_data.size)]
    else:
        if not ext_call.success:
            revert with 0, 
                        'PAYMENT FAIL',
                        mem[(9 * ceil32(return_data.size)) + ceil32(return_data.size) + 773 len 5 * ceil32(return_data.size)]
    ('bool', 'ext_call.success')
}

function cashoutAll() {
    if not sub_ebaf1549:
        revert with 0, 'USER HELPER: NOT ENABLED YET'
    mem[100] = msg.sender
    require ext_code.size(managementAddress)
    call managementAddress.0x499e862a with:
         gas gas_remaining wei
        args msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] and claimTax > -1 / ext_call.return_data[0]:
        revert with 'NH{q', 17
    require ext_code.size(rewardPoolAddress)
    call rewardPoolAddress.rewardTo(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(this.address), ext_call.return_data[0] * claimTax / 100
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if ext_call.return_data[0] and sub_2d5429de > -1 / ext_call.return_data[0]:
        revert with 'NH{q', 17
    mem[ceil32(return_data.size) + 96] = 2
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
    mem[(4 * ceil32(return_data.size)) + 260] = 160
    mem[(4 * ceil32(return_data.size)) + 356] = 2
    idx = 0
    s = ceil32(return_data.size) + 128
    t = (4 * ceil32(return_data.size)) + 388
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(4 * ceil32(return_data.size)) + 292] = this.address
    mem[(4 * ceil32(return_data.size)) + 324] = block.timestamp
    require ext_code.size(uniswapV2RouterAddress)
    call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args ext_call.return_data[0] * sub_2d5429de / 100, 0, 160, address(this.address), block.timestamp, 2, mem[(4 * ceil32(return_data.size)) + 388 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(4 * ceil32(return_data.size)) + 192] = 30
    mem[(4 * ceil32(return_data.size)) + 224] = 'SafeMath: subtraction overflow'
    if eth.balance(this.address) > eth.balance(this.address):
        revert with 0, 'SafeMath: subtraction overflow', 0
    if eth.balance(this.address) < eth.balance(this.address):
        revert with 'NH{q', 17
    call treasuryAddress with:
         gas gas_remaining wei
    if return_data.size:
        mem[(4 * ceil32(return_data.size)) + 256] = return_data.size
        mem[(4 * ceil32(return_data.size)) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'PAYMENT FAIL'
        if ext_call.return_data[0] and sub_8f2a7780 > -1 / ext_call.return_data[0]:
            revert with 'NH{q', 17
        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = this.address
        require ext_code.size(stor5)
        staticcall stor5.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 257] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 257] = 3
        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 289] = sub_0c756bf3Address
        require ext_code.size(uniswapV2RouterAddress)
        staticcall uniswapV2RouterAddress.WAVAX() with:
                gas gas_remaining wei
        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 385] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 321] = ext_call.return_data[12 len 20]
        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 353] = stor5
        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 389] = uniswapV2RouterAddress
        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 421] = ext_call.return_data[0] * sub_8f2a7780 / 100
        require ext_code.size(sub_0c756bf3Address)
        call sub_0c756bf3Address.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args uniswapV2RouterAddress, ext_call.return_data[0] * sub_8f2a7780 / 100
        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 385] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = (9 * ceil32(return_data.size)) + ceil32(return_data.size) + 385
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[(9 * ceil32(return_data.size)) + ceil32(return_data.size) + 385] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
        mem[(9 * ceil32(return_data.size)) + ceil32(return_data.size) + 389] = ext_call.return_data[0] * sub_8f2a7780 / 100
        mem[(9 * ceil32(return_data.size)) + ceil32(return_data.size) + 421] = 0
        mem[(9 * ceil32(return_data.size)) + ceil32(return_data.size) + 453] = 160
        mem[(9 * ceil32(return_data.size)) + ceil32(return_data.size) + 549] = 3
        idx = 0
        s = (6 * ceil32(return_data.size)) + ceil32(return_data.size) + 289
        t = (9 * ceil32(return_data.size)) + ceil32(return_data.size) + 581
        while idx < mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 257]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(9 * ceil32(return_data.size)) + ceil32(return_data.size) + 485] = this.address
        mem[(9 * ceil32(return_data.size)) + ceil32(return_data.size) + 517] = block.timestamp
        require ext_code.size(uniswapV2RouterAddress)
        call uniswapV2RouterAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args ext_call.return_data[0] * sub_8f2a7780 / 100, 0, 160, address(this.address), block.timestamp, mem[(9 * ceil32(return_data.size)) + ceil32(return_data.size) + 549 len (32 * mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 257]) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(9 * ceil32(return_data.size)) + ceil32(return_data.size) + 389] = this.address
        require ext_code.size(stor5)
        staticcall stor5.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[(9 * ceil32(return_data.size)) + ceil32(return_data.size) + 385] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        mem[(11 * ceil32(return_data.size)) + ceil32(return_data.size) + 385] = 30
        mem[(11 * ceil32(return_data.size)) + ceil32(return_data.size) + 417] = 'SafeMath: subtraction overflow'
        if ext_call.return_data[0] > ext_call.return_data[0]:
            mem[(11 * ceil32(return_data.size)) + ceil32(return_data.size) + 547] = 0
            revert with 0, 
                        'SafeMath: subtraction overflow',
                        mem[(11 * ceil32(return_data.size)) + ceil32(return_data.size) + 547 len (9 * ceil32(return_data.size)) + 2]
        if ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 'NH{q', 17
        mem[(11 * ceil32(return_data.size)) + ceil32(return_data.size) + 453] = interestAddress
        mem[(11 * ceil32(return_data.size)) + ceil32(return_data.size) + 485] = 0
        require ext_code.size(stor5)
        call stor5.0xa9059cbb with:
             gas gas_remaining wei
            args interestAddress, 0, mem[(11 * ceil32(return_data.size)) + ceil32(return_data.size) + 517 len 9 * ceil32(return_data.size)]
        mem[(11 * ceil32(return_data.size)) + ceil32(return_data.size) + 449] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if ext_call.return_data[0] and sub_6acc95cd > -1 / ext_call.return_data[0]:
            revert with 'NH{q', 17
        mem[(12 * ceil32(return_data.size)) + ceil32(return_data.size) + 449] = 2
        mem[(12 * ceil32(return_data.size)) + ceil32(return_data.size) + 481] = sub_0c756bf3Address
        require ext_code.size(uniswapV2RouterAddress)
        staticcall uniswapV2RouterAddress.WAVAX() with:
                gas gas_remaining wei
        mem[(12 * ceil32(return_data.size)) + ceil32(return_data.size) + 545] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[(12 * ceil32(return_data.size)) + ceil32(return_data.size) + 513] = ext_call.return_data[12 len 20]
        mem[(13 * ceil32(return_data.size)) + ceil32(return_data.size) + 549] = uniswapV2RouterAddress
        mem[(13 * ceil32(return_data.size)) + ceil32(return_data.size) + 581] = ext_call.return_data[0] * sub_6acc95cd / 100
        require ext_code.size(sub_0c756bf3Address)
        call sub_0c756bf3Address.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args uniswapV2RouterAddress, ext_call.return_data[0] * sub_6acc95cd / 100
        mem[(13 * ceil32(return_data.size)) + ceil32(return_data.size) + 545] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = (15 * ceil32(return_data.size)) + ceil32(return_data.size) + 545
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[(15 * ceil32(return_data.size)) + ceil32(return_data.size) + 545] = 0x762b156200000000000000000000000000000000000000000000000000000000
        mem[(15 * ceil32(return_data.size)) + ceil32(return_data.size) + 549] = ext_call.return_data[0] * sub_6acc95cd / 100
        mem[(15 * ceil32(return_data.size)) + ceil32(return_data.size) + 581] = 0
        mem[(15 * ceil32(return_data.size)) + ceil32(return_data.size) + 613] = 160
        mem[(15 * ceil32(return_data.size)) + ceil32(return_data.size) + 709] = 2
        idx = 0
        s = (12 * ceil32(return_data.size)) + ceil32(return_data.size) + 481
        t = (15 * ceil32(return_data.size)) + ceil32(return_data.size) + 741
        while idx < mem[(12 * ceil32(return_data.size)) + ceil32(return_data.size) + 449]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(15 * ceil32(return_data.size)) + ceil32(return_data.size) + 677] = block.timestamp
        require ext_code.size(uniswapV2RouterAddress)
        call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args ext_call.return_data[0] * sub_6acc95cd / 100, 0, 160, address(this.address), block.timestamp, mem[(15 * ceil32(return_data.size)) + ceil32(return_data.size) + 709 len (32 * mem[(12 * ceil32(return_data.size)) + ceil32(return_data.size) + 449]) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if eth.balance(this.address) > eth.balance(this.address):
            mem[(15 * ceil32(return_data.size)) + ceil32(return_data.size) + 707] = 0
            revert with 0, 
                        'SafeMath: subtraction overflow',
                        mem[(15 * ceil32(return_data.size)) + ceil32(return_data.size) + 707 len (5 * ceil32(return_data.size)) + 2]
        if eth.balance(this.address) < eth.balance(this.address):
            revert with 'NH{q', 17
        call devAddress with:
             gas gas_remaining wei
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 
                            'PAYMENT FAIL',
                            mem[(15 * ceil32(return_data.size)) + ceil32(return_data.size) + 709 len 5 * ceil32(return_data.size)]
            if ext_call.return_data[0] < ext_call.return_data[0] * claimTax / 100:
                revert with 'NH{q', 17
            require ext_code.size(rewardPoolAddress)
            call rewardPoolAddress.rewardTo(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args msg.sender, ext_call.return_data[0] - (ext_call.return_data[0] * claimTax / 100), mem[(15 * ceil32(return_data.size)) + ceil32(return_data.size) + 677 len 5 * ceil32(return_data.size)]
        else:
            if not ext_call.success:
                revert with 0, 
                            'PAYMENT FAIL',
                            mem[(18 * ceil32(return_data.size)) + 710 len (7 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            if ext_call.return_data[0] < ext_call.return_data[0] * claimTax / 100:
                revert with 'NH{q', 17
            require ext_code.size(rewardPoolAddress)
            call rewardPoolAddress.rewardTo(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args msg.sender, ext_call.return_data[0] - (ext_call.return_data[0] * claimTax / 100), mem[(18 * ceil32(return_data.size)) + 678 len (7 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
    else:
        if not ext_call.success:
            revert with 0, 'PAYMENT FAIL'
        if ext_call.return_data[0] and sub_8f2a7780 > -1 / ext_call.return_data[0]:
            revert with 'NH{q', 17
        mem[(4 * ceil32(return_data.size)) + 260] = this.address
        require ext_code.size(stor5)
        staticcall stor5.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[(4 * ceil32(return_data.size)) + 256] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        mem[(6 * ceil32(return_data.size)) + 256] = 3
        mem[(6 * ceil32(return_data.size)) + 288] = sub_0c756bf3Address
        require ext_code.size(uniswapV2RouterAddress)
        staticcall uniswapV2RouterAddress.WAVAX() with:
                gas gas_remaining wei
        mem[(6 * ceil32(return_data.size)) + 384] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[(6 * ceil32(return_data.size)) + 320] = ext_call.return_data[12 len 20]
        mem[(6 * ceil32(return_data.size)) + 352] = stor5
        mem[(7 * ceil32(return_data.size)) + 388] = uniswapV2RouterAddress
        mem[(7 * ceil32(return_data.size)) + 420] = ext_call.return_data[0] * sub_8f2a7780 / 100
        require ext_code.size(sub_0c756bf3Address)
        call sub_0c756bf3Address.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args uniswapV2RouterAddress, ext_call.return_data[0] * sub_8f2a7780 / 100
        mem[(7 * ceil32(return_data.size)) + 384] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = (9 * ceil32(return_data.size)) + 384
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[(9 * ceil32(return_data.size)) + 384] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
        mem[(9 * ceil32(return_data.size)) + 388] = ext_call.return_data[0] * sub_8f2a7780 / 100
        mem[(9 * ceil32(return_data.size)) + 420] = 0
        mem[(9 * ceil32(return_data.size)) + 452] = 160
        mem[(9 * ceil32(return_data.size)) + 548] = 3
        idx = 0
        s = (6 * ceil32(return_data.size)) + 288
        t = (9 * ceil32(return_data.size)) + 580
        while idx < mem[(6 * ceil32(return_data.size)) + 256]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(9 * ceil32(return_data.size)) + 484] = this.address
        mem[(9 * ceil32(return_data.size)) + 516] = block.timestamp
        require ext_code.size(uniswapV2RouterAddress)
        call uniswapV2RouterAddress.mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len (9 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + 256]) + -mem[64] + 576]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[mem[64] + 4] = this.address
        require ext_code.size(stor5)
        staticcall stor5.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _131 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _133 = mem[_131]
        require mem[_131] == mem[_131]
        _135 = mem[64]
        mem[64] = mem[64] + 64
        mem[_135] = 30
        mem[_135 + 32] = 'SafeMath: subtraction overflow'
        if ext_call.return_data[0] > _133:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if _133 < ext_call.return_data[0]:
            revert with 'NH{q', 17
        mem[mem[64] + 4] = interestAddress
        mem[mem[64] + 36] = _133 - ext_call.return_data[0]
        require ext_code.size(stor5)
        call stor5.0xa9059cbb with:
             gas gas_remaining wei
            args interestAddress, _133 - ext_call.return_data[0]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _151 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_151] == bool(mem[_151])
        if ext_call.return_data[0] and sub_6acc95cd > -1 / ext_call.return_data[0]:
            revert with 'NH{q', 17
        _155 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        mem[_155 + 32 len 64] = call.data[calldata.size len 64]
        if 0 >= mem[_155]:
            revert with 'NH{q', 50
        mem[_155 + 32] = sub_0c756bf3Address
        require ext_code.size(uniswapV2RouterAddress)
        staticcall uniswapV2RouterAddress.WAVAX() with:
                gas gas_remaining wei
        mem[_155 + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = _155 + ceil32(return_data.size) + 96
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if 1 >= mem[_155]:
            revert with 'NH{q', 50
        mem[_155 + 64] = ext_call.return_data[12 len 20]
        mem[_155 + ceil32(return_data.size) + 100] = uniswapV2RouterAddress
        mem[_155 + ceil32(return_data.size) + 132] = ext_call.return_data[0] * sub_6acc95cd / 100
        require ext_code.size(sub_0c756bf3Address)
        call sub_0c756bf3Address.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args uniswapV2RouterAddress, ext_call.return_data[0] * sub_6acc95cd / 100
        mem[_155 + ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = _155 + (2 * ceil32(return_data.size)) + 96
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[_155 + (2 * ceil32(return_data.size)) + 96] = 0x762b156200000000000000000000000000000000000000000000000000000000
        mem[_155 + (2 * ceil32(return_data.size)) + 100] = ext_call.return_data[0] * sub_6acc95cd / 100
        mem[_155 + (2 * ceil32(return_data.size)) + 132] = 0
        mem[_155 + (2 * ceil32(return_data.size)) + 164] = 160
        mem[_155 + (2 * ceil32(return_data.size)) + 260] = mem[_155]
        idx = 0
        s = _155 + 32
        t = _155 + (2 * ceil32(return_data.size)) + 292
        while idx < mem[_155]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_155 + (2 * ceil32(return_data.size)) + 196] = this.address
        mem[_155 + (2 * ceil32(return_data.size)) + 228] = block.timestamp
        require ext_code.size(uniswapV2RouterAddress)
        call uniswapV2RouterAddress.mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _155 + (2 * ceil32(return_data.size)) + (32 * mem[_155]) + -mem[64] + 288]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if eth.balance(this.address) > eth.balance(this.address):
            revert with 0, 'SafeMath: subtraction overflow', 0
        if eth.balance(this.address) < eth.balance(this.address):
            revert with 'NH{q', 17
        call devAddress with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with 0, 'PAYMENT FAIL'
        if ext_call.return_data[0] < ext_call.return_data[0] * claimTax / 100:
            revert with 'NH{q', 17
        require ext_code.size(rewardPoolAddress)
        call rewardPoolAddress.rewardTo(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args msg.sender, ext_call.return_data[0] - (ext_call.return_data[0] * claimTax / 100)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function cashout(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not sub_ebaf1549:
        revert with 0, 'USER HELPER: NOT ENABLED YET'
    mem[100] = msg.sender
    mem[132] = arg1
    require ext_code.size(managementAddress)
    call managementAddress.0xcd160c9f with:
         gas gas_remaining wei
        args msg.sender, arg1
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] and claimTax > -1 / ext_call.return_data[0]:
        revert with 'NH{q', 17
    require ext_code.size(rewardPoolAddress)
    call rewardPoolAddress.rewardTo(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(this.address), ext_call.return_data[0] * claimTax / 100
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if ext_call.return_data[0] and sub_2d5429de > -1 / ext_call.return_data[0]:
        revert with 'NH{q', 17
    mem[ceil32(return_data.size) + 96] = 2
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
    mem[(4 * ceil32(return_data.size)) + 260] = 160
    mem[(4 * ceil32(return_data.size)) + 356] = 2
    idx = 0
    s = ceil32(return_data.size) + 128
    t = (4 * ceil32(return_data.size)) + 388
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(4 * ceil32(return_data.size)) + 292] = this.address
    mem[(4 * ceil32(return_data.size)) + 324] = block.timestamp
    require ext_code.size(uniswapV2RouterAddress)
    call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args ext_call.return_data[0] * sub_2d5429de / 100, 0, 160, address(this.address), block.timestamp, 2, mem[(4 * ceil32(return_data.size)) + 388 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(4 * ceil32(return_data.size)) + 192] = 30
    mem[(4 * ceil32(return_data.size)) + 224] = 'SafeMath: subtraction overflow'
    if eth.balance(this.address) > eth.balance(this.address):
        revert with 0, 'SafeMath: subtraction overflow', 0
    if eth.balance(this.address) < eth.balance(this.address):
        revert with 'NH{q', 17
    call treasuryAddress with:
         gas gas_remaining wei
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'PAYMENT FAIL'
        if ext_call.return_data[0] and sub_8f2a7780 > -1 / ext_call.return_data[0]:
            revert with 'NH{q', 17
        mem[(4 * ceil32(return_data.size)) + 260] = this.address
        require ext_code.size(stor5)
        staticcall stor5.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[(4 * ceil32(return_data.size)) + 256] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        mem[(6 * ceil32(return_data.size)) + 256] = 3
        mem[(6 * ceil32(return_data.size)) + 288] = sub_0c756bf3Address
        require ext_code.size(uniswapV2RouterAddress)
        staticcall uniswapV2RouterAddress.WAVAX() with:
                gas gas_remaining wei
        mem[(6 * ceil32(return_data.size)) + 384] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[(6 * ceil32(return_data.size)) + 320] = ext_call.return_data[12 len 20]
        mem[(6 * ceil32(return_data.size)) + 352] = stor5
        mem[(7 * ceil32(return_data.size)) + 388] = uniswapV2RouterAddress
        mem[(7 * ceil32(return_data.size)) + 420] = ext_call.return_data[0] * sub_8f2a7780 / 100
        require ext_code.size(sub_0c756bf3Address)
        call sub_0c756bf3Address.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args uniswapV2RouterAddress, ext_call.return_data[0] * sub_8f2a7780 / 100
        mem[(7 * ceil32(return_data.size)) + 384] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = (9 * ceil32(return_data.size)) + 384
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[(9 * ceil32(return_data.size)) + 384] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
        mem[(9 * ceil32(return_data.size)) + 388] = ext_call.return_data[0] * sub_8f2a7780 / 100
        mem[(9 * ceil32(return_data.size)) + 420] = 0
        mem[(9 * ceil32(return_data.size)) + 452] = 160
        mem[(9 * ceil32(return_data.size)) + 548] = 3
        idx = 0
        s = (6 * ceil32(return_data.size)) + 288
        t = (9 * ceil32(return_data.size)) + 580
        while idx < mem[(6 * ceil32(return_data.size)) + 256]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(9 * ceil32(return_data.size)) + 484] = this.address
        mem[(9 * ceil32(return_data.size)) + 516] = block.timestamp
        require ext_code.size(uniswapV2RouterAddress)
        call uniswapV2RouterAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args ext_call.return_data[0] * sub_8f2a7780 / 100, 0, 160, address(this.address), block.timestamp, mem[(9 * ceil32(return_data.size)) + 548 len (32 * mem[(6 * ceil32(return_data.size)) + 256]) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(9 * ceil32(return_data.size)) + 388] = this.address
        require ext_code.size(stor5)
        staticcall stor5.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[(9 * ceil32(return_data.size)) + 384] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        mem[(11 * ceil32(return_data.size)) + 384] = 30
        mem[(11 * ceil32(return_data.size)) + 416] = 'SafeMath: subtraction overflow'
        if ext_call.return_data[0] > ext_call.return_data[0]:
            mem[(11 * ceil32(return_data.size)) + 546] = 0
            revert with 0, 'SafeMath: subtraction overflow', mem[(11 * ceil32(return_data.size)) + 546 len (9 * ceil32(return_data.size)) + 2]
        if ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 'NH{q', 17
        mem[(11 * ceil32(return_data.size)) + 452] = interestAddress
        mem[(11 * ceil32(return_data.size)) + 484] = 0
        require ext_code.size(stor5)
        call stor5.0xa9059cbb with:
             gas gas_remaining wei
            args interestAddress, 0, mem[(11 * ceil32(return_data.size)) + 516 len 9 * ceil32(return_data.size)]
        mem[(11 * ceil32(return_data.size)) + 448] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if ext_call.return_data[0] and sub_6acc95cd > -1 / ext_call.return_data[0]:
            revert with 'NH{q', 17
        mem[(12 * ceil32(return_data.size)) + 448] = 2
        mem[(12 * ceil32(return_data.size)) + 480] = sub_0c756bf3Address
        require ext_code.size(uniswapV2RouterAddress)
        staticcall uniswapV2RouterAddress.WAVAX() with:
                gas gas_remaining wei
        mem[(12 * ceil32(return_data.size)) + 544] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[(12 * ceil32(return_data.size)) + 512] = ext_call.return_data[12 len 20]
        mem[(13 * ceil32(return_data.size)) + 548] = uniswapV2RouterAddress
        mem[(13 * ceil32(return_data.size)) + 580] = ext_call.return_data[0] * sub_6acc95cd / 100
        require ext_code.size(sub_0c756bf3Address)
        call sub_0c756bf3Address.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args uniswapV2RouterAddress, ext_call.return_data[0] * sub_6acc95cd / 100
        mem[(13 * ceil32(return_data.size)) + 544] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = (15 * ceil32(return_data.size)) + 544
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[(15 * ceil32(return_data.size)) + 544] = 0x762b156200000000000000000000000000000000000000000000000000000000
        mem[(15 * ceil32(return_data.size)) + 548] = ext_call.return_data[0] * sub_6acc95cd / 100
        mem[(15 * ceil32(return_data.size)) + 580] = 0
        mem[(15 * ceil32(return_data.size)) + 612] = 160
        mem[(15 * ceil32(return_data.size)) + 708] = 2
        idx = 0
        s = (12 * ceil32(return_data.size)) + 480
        t = (15 * ceil32(return_data.size)) + 740
        while idx < mem[(12 * ceil32(return_data.size)) + 448]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(15 * ceil32(return_data.size)) + 676] = block.timestamp
        require ext_code.size(uniswapV2RouterAddress)
        call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args ext_call.return_data[0] * sub_6acc95cd / 100, 0, 160, address(this.address), block.timestamp, mem[(15 * ceil32(return_data.size)) + 708 len (32 * mem[(12 * ceil32(return_data.size)) + 448]) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if eth.balance(this.address) > eth.balance(this.address):
            mem[(15 * ceil32(return_data.size)) + 706] = 0
            revert with 0, 'SafeMath: subtraction overflow', mem[(15 * ceil32(return_data.size)) + 706 len (5 * ceil32(return_data.size)) + 2]
        if eth.balance(this.address) < eth.balance(this.address):
            revert with 'NH{q', 17
        call devAddress with:
             gas gas_remaining wei
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'PAYMENT FAIL', mem[(15 * ceil32(return_data.size)) + 708 len 5 * ceil32(return_data.size)]
            if ext_call.return_data[0] < ext_call.return_data[0] * claimTax / 100:
                revert with 'NH{q', 17
            require ext_code.size(rewardPoolAddress)
            call rewardPoolAddress.rewardTo(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args msg.sender, ext_call.return_data[0] - (ext_call.return_data[0] * claimTax / 100), mem[(15 * ceil32(return_data.size)) + 676 len 5 * ceil32(return_data.size)]
        else:
            if not ext_call.success:
                revert with 0, 
                            'PAYMENT FAIL',
                            mem[(15 * ceil32(return_data.size)) + ceil32(return_data.size) + 709 len 5 * ceil32(return_data.size)]
            if ext_call.return_data[0] < ext_call.return_data[0] * claimTax / 100:
                revert with 'NH{q', 17
            require ext_code.size(rewardPoolAddress)
            call rewardPoolAddress.rewardTo(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args msg.sender, ext_call.return_data[0] - (ext_call.return_data[0] * claimTax / 100), mem[(15 * ceil32(return_data.size)) + ceil32(return_data.size) + 677 len 5 * ceil32(return_data.size)]
    else:
        mem[(4 * ceil32(return_data.size)) + 256] = return_data.size
        mem[(4 * ceil32(return_data.size)) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'PAYMENT FAIL'
        if ext_call.return_data[0] and sub_8f2a7780 > -1 / ext_call.return_data[0]:
            revert with 'NH{q', 17
        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = this.address
        require ext_code.size(stor5)
        staticcall stor5.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 257] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 257] = 3
        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 289] = sub_0c756bf3Address
        require ext_code.size(uniswapV2RouterAddress)
        staticcall uniswapV2RouterAddress.WAVAX() with:
                gas gas_remaining wei
        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 385] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 321] = ext_call.return_data[12 len 20]
        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 353] = stor5
        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 389] = uniswapV2RouterAddress
        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 421] = ext_call.return_data[0] * sub_8f2a7780 / 100
        require ext_code.size(sub_0c756bf3Address)
        call sub_0c756bf3Address.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args uniswapV2RouterAddress, ext_call.return_data[0] * sub_8f2a7780 / 100
        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 385] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = (9 * ceil32(return_data.size)) + ceil32(return_data.size) + 385
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[(9 * ceil32(return_data.size)) + ceil32(return_data.size) + 385] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
        mem[(9 * ceil32(return_data.size)) + ceil32(return_data.size) + 389] = ext_call.return_data[0] * sub_8f2a7780 / 100
        mem[(9 * ceil32(return_data.size)) + ceil32(return_data.size) + 421] = 0
        mem[(9 * ceil32(return_data.size)) + ceil32(return_data.size) + 453] = 160
        mem[(9 * ceil32(return_data.size)) + ceil32(return_data.size) + 549] = 3
        idx = 0
        s = (6 * ceil32(return_data.size)) + ceil32(return_data.size) + 289
        t = (9 * ceil32(return_data.size)) + ceil32(return_data.size) + 581
        while idx < mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 257]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(9 * ceil32(return_data.size)) + ceil32(return_data.size) + 485] = this.address
        mem[(9 * ceil32(return_data.size)) + ceil32(return_data.size) + 517] = block.timestamp
        require ext_code.size(uniswapV2RouterAddress)
        call uniswapV2RouterAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args ext_call.return_data[0] * sub_8f2a7780 / 100, 0, 160, address(this.address), block.timestamp, mem[(9 * ceil32(return_data.size)) + ceil32(return_data.size) + 549 len (32 * mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 257]) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(9 * ceil32(return_data.size)) + ceil32(return_data.size) + 389] = this.address
        require ext_code.size(stor5)
        staticcall stor5.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[(9 * ceil32(return_data.size)) + ceil32(return_data.size) + 385] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        mem[(11 * ceil32(return_data.size)) + ceil32(return_data.size) + 385] = 30
        mem[(11 * ceil32(return_data.size)) + ceil32(return_data.size) + 417] = 'SafeMath: subtraction overflow'
        if ext_call.return_data[0] > ext_call.return_data[0]:
            mem[(11 * ceil32(return_data.size)) + ceil32(return_data.size) + 547] = 0
            revert with 0, 
                        'SafeMath: subtraction overflow',
                        mem[(11 * ceil32(return_data.size)) + ceil32(return_data.size) + 547 len (9 * ceil32(return_data.size)) + 2]
        if ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 'NH{q', 17
        mem[(11 * ceil32(return_data.size)) + ceil32(return_data.size) + 453] = interestAddress
        mem[(11 * ceil32(return_data.size)) + ceil32(return_data.size) + 485] = 0
        require ext_code.size(stor5)
        call stor5.0xa9059cbb with:
             gas gas_remaining wei
            args interestAddress, 0, mem[(11 * ceil32(return_data.size)) + ceil32(return_data.size) + 517 len 9 * ceil32(return_data.size)]
        mem[(11 * ceil32(return_data.size)) + ceil32(return_data.size) + 449] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if ext_call.return_data[0] and sub_6acc95cd > -1 / ext_call.return_data[0]:
            revert with 'NH{q', 17
        mem[(12 * ceil32(return_data.size)) + ceil32(return_data.size) + 449] = 2
        mem[(12 * ceil32(return_data.size)) + ceil32(return_data.size) + 481] = sub_0c756bf3Address
        require ext_code.size(uniswapV2RouterAddress)
        staticcall uniswapV2RouterAddress.WAVAX() with:
                gas gas_remaining wei
        mem[(12 * ceil32(return_data.size)) + ceil32(return_data.size) + 545] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[(12 * ceil32(return_data.size)) + ceil32(return_data.size) + 513] = ext_call.return_data[12 len 20]
        mem[(13 * ceil32(return_data.size)) + ceil32(return_data.size) + 549] = uniswapV2RouterAddress
        mem[(13 * ceil32(return_data.size)) + ceil32(return_data.size) + 581] = ext_call.return_data[0] * sub_6acc95cd / 100
        require ext_code.size(sub_0c756bf3Address)
        call sub_0c756bf3Address.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args uniswapV2RouterAddress, ext_call.return_data[0] * sub_6acc95cd / 100
        mem[(13 * ceil32(return_data.size)) + ceil32(return_data.size) + 545] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = (15 * ceil32(return_data.size)) + ceil32(return_data.size) + 545
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[(15 * ceil32(return_data.size)) + ceil32(return_data.size) + 545] = 0x762b156200000000000000000000000000000000000000000000000000000000
        mem[(15 * ceil32(return_data.size)) + ceil32(return_data.size) + 549] = ext_call.return_data[0] * sub_6acc95cd / 100
        mem[(15 * ceil32(return_data.size)) + ceil32(return_data.size) + 581] = 0
        mem[(15 * ceil32(return_data.size)) + ceil32(return_data.size) + 613] = 160
        mem[(15 * ceil32(return_data.size)) + ceil32(return_data.size) + 709] = 2
        idx = 0
        s = (12 * ceil32(return_data.size)) + ceil32(return_data.size) + 481
        t = (15 * ceil32(return_data.size)) + ceil32(return_data.size) + 741
        while idx < mem[(12 * ceil32(return_data.size)) + ceil32(return_data.size) + 449]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(15 * ceil32(return_data.size)) + ceil32(return_data.size) + 645] = this.address
        mem[(15 * ceil32(return_data.size)) + ceil32(return_data.size) + 677] = block.timestamp
        require ext_code.size(uniswapV2RouterAddress)
        call uniswapV2RouterAddress.mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len (15 * ceil32(return_data.size)) + ceil32(return_data.size) + (32 * mem[(12 * ceil32(return_data.size)) + ceil32(return_data.size) + 449]) + -mem[64] + 737]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if eth.balance(this.address) > eth.balance(this.address):
            revert with 0, 'SafeMath: subtraction overflow', 0
        if eth.balance(this.address) < eth.balance(this.address):
            revert with 'NH{q', 17
        call devAddress with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with 0, 'PAYMENT FAIL'
        if ext_call.return_data[0] < ext_call.return_data[0] * claimTax / 100:
            revert with 'NH{q', 17
        require ext_code.size(rewardPoolAddress)
        call rewardPoolAddress.rewardTo(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args msg.sender, ext_call.return_data[0] - (ext_call.return_data[0] * claimTax / 100)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_b5e157f1(?) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg1.length)) + 97 > test266151307() or ceil32(ceil32(arg1.length)) + 97 < 96:
        revert with 'NH{q', 65
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
    if ext_code.size(sub_0c756bf3Address) <= 0:
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
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
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
        require ext_call.return_data[0] == ext_call.return_data[0]
        if distributing:
            require ext_code.size(managementAddress)
            call managementAddress.0x90219732 with:
                 gas gas_remaining wei
                args msg.sender, Array(len=arg1.length, data=arg1[all]), rewardPerDay
        else:
            if distributionAmount > ext_call.return_data[0]:
                require ext_code.size(managementAddress)
                call managementAddress.0x90219732 with:
                     gas gas_remaining wei
                    args msg.sender, Array(len=arg1.length, data=arg1[all]), rewardPerDay
            else:
                Mask(248, 0, stor20.field_8) = 1
                mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + ceil32(return_data.size) + 298] = this.address
                require ext_code.size(sub_0c756bf3Address)
                staticcall sub_0c756bf3Address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + ceil32(return_data.size) + 294] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if ext_call.return_data[0] and sub_8a55784b > -1 / ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if ext_call.return_data[0] and sub_b91b740b > -1 / ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if ext_call.return_data[0] and sub_72f1dbdb > -1 / ext_call.return_data[0]:
                    revert with 'NH{q', 17
                mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 294] = 26
                mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 326] = 'SafeMath: division by zero'
                mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 358] = 30
                mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 390] = 'SafeMath: subtraction overflow'
                if ext_call.return_data[0] * sub_8a55784b / 100 / 2 > ext_call.return_data[0] * sub_8a55784b / 100:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if ext_call.return_data[0] * sub_8a55784b / 100 < ext_call.return_data[0] * sub_8a55784b / 100 / 2:
                    revert with 'NH{q', 17
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
                s = ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 454
                t = ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 714
                while idx < mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 422]:
                    mem[t] = mem[s + 12 len 20]
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
                    revert with 'NH{q', 17
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
                require ext_call.return_data[0] == ext_call.return_data[0]
                require ext_call.return_data[32] == ext_call.return_data[32]
                require ext_call.return_data[64] == ext_call.return_data[64]
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
                s = ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + (9 * ceil32(return_data.size)) + 614
                t = ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + (12 * ceil32(return_data.size)) + 874
                while idx < mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + (9 * ceil32(return_data.size)) + 582]:
                    mem[t] = mem[s + 12 len 20]
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
                    revert with 'NH{q', 17
                call treasuryAddress with:
                     gas gas_remaining wei
                if return_data.size:
                    if not ext_call.success:
                        revert with 0, 
                                    'PAYMENT FAIL',
                                    mem[ceil32(ceil32(arg1.length)) + (15 * ceil32(return_data.size)) + 843 len (7 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if ext_code.size(sub_0c756bf3Address) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(ceil32(arg1.length)) + (15 * ceil32(return_data.size)) + 907 len 96] = 0, burnAddress, ext_call.return_data[0] * sub_72f1dbdb / 100, 0
                    call sub_0c756bf3Address with:
                       funct Mask(32, 224, 0, burnAddress, ext_call.return_data[0] * sub_72f1dbdb / 100, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, 0, burnAddress, ext_call.return_data[0] * sub_72f1dbdb / 100, 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if arg1.length > 0:
                                revert with memory
                                  from 128
                                   len arg1.length
                            revert with 0, 'SafeERC20: low-level call failed'
                        if arg1.length > 0:
                            require arg1.length >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[ceil32(ceil32(arg1.length)) + (15 * ceil32(return_data.size)) + 939 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            require mem[ceil32(ceil32(arg1.length)) + (15 * ceil32(return_data.size)) + 939] == bool(mem[ceil32(ceil32(arg1.length)) + (15 * ceil32(return_data.size)) + 939])
                            if not mem[ceil32(ceil32(arg1.length)) + (15 * ceil32(return_data.size)) + 939]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    Mask(248, 0, stor20.field_8) = 0
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
                    if ext_code.size(sub_0c756bf3Address) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + (12 * ceil32(return_data.size)) + 906 len 96] = 0, burnAddress, ext_call.return_data[0] * sub_72f1dbdb / 100, 0
                    call sub_0c756bf3Address with:
                       funct Mask(32, 224, 0, burnAddress, ext_call.return_data[0] * sub_72f1dbdb / 100, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, 0, burnAddress, ext_call.return_data[0] * sub_72f1dbdb / 100, 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if arg1.length > 0:
                                revert with memory
                                  from 128
                                   len arg1.length
                            revert with 0, 'SafeERC20: low-level call failed'
                        if arg1.length > 0:
                            require arg1.length >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        Mask(248, 0, stor20.field_8) = 0
                        require ext_code.size(managementAddress)
                        call managementAddress.0x90219732 with:
                             gas gas_remaining wei
                            args msg.sender, Array(len=arg1.length, data=mem[128 len ceil32(arg1.length)]), rewardPerDay
                    else:
                        mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + (12 * ceil32(return_data.size)) + 938 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        'SafeERC20: low-level call failed',
                                        mem[ceil32(ceil32(arg1.length)) + (15 * ceil32(return_data.size)) + 1007 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if return_data.size > 0:
                            require return_data.size >= 32
                            require mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + (12 * ceil32(return_data.size)) + 938] == bool(mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + (12 * ceil32(return_data.size)) + 938])
                            if not mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + (12 * ceil32(return_data.size)) + 938]:
                                revert with 0, 
                                            'SafeERC20: ERC20 operation did not succeed',
                                            mem[ceil32(ceil32(arg1.length)) + (15 * ceil32(return_data.size)) + 1039 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        Mask(248, 0, stor20.field_8) = 0
                        mem[ceil32(ceil32(arg1.length)) + (15 * ceil32(return_data.size)) + 1039 len ceil32(arg1.length)] = mem[128 len ceil32(arg1.length)]
                        if ceil32(arg1.length) > arg1.length:
                            mem[ceil32(ceil32(arg1.length)) + (15 * ceil32(return_data.size)) + arg1.length + 1039] = 0
                        require ext_code.size(managementAddress)
                        call managementAddress.0x90219732 with:
                             gas gas_remaining wei
                            args msg.sender, Array(len=arg1.length, data=mem[ceil32(ceil32(arg1.length)) + (15 * ceil32(return_data.size)) + 1039 len (3 * ceil32(return_data.size)) + ceil32(arg1.length) - (2 * ceil32(return_data.size))]), rewardPerDay
    else:
        if not ext_call.success:
            if arg1.length > 0:
                revert with arg1[all]
            revert with 0, 'SafeERC20: low-level call failed'
        if arg1.length <= 0:
            mem[ceil32(ceil32(arg1.length)) + 297] = this.address
            require ext_code.size(sub_0c756bf3Address)
            staticcall sub_0c756bf3Address.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[ceil32(ceil32(arg1.length)) + 293] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if distributing:
                require ext_code.size(managementAddress)
                call managementAddress.0x90219732 with:
                     gas gas_remaining wei
                    args msg.sender, Array(len=arg1.length, data=arg1[all]), rewardPerDay
            else:
                if distributionAmount > ext_call.return_data[0]:
                    require ext_code.size(managementAddress)
                    call managementAddress.0x90219732 with:
                         gas gas_remaining wei
                        args msg.sender, Array(len=arg1.length, data=arg1[all]), rewardPerDay
                else:
                    Mask(248, 0, stor20.field_8) = 1
                    mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 297] = this.address
                    require ext_code.size(sub_0c756bf3Address)
                    staticcall sub_0c756bf3Address.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 293] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if ext_call.return_data[0] and sub_8a55784b > -1 / ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    if ext_call.return_data[0] and sub_b91b740b > -1 / ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    if ext_call.return_data[0] and sub_72f1dbdb > -1 / ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 293] = 26
                    mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 325] = 'SafeMath: division by zero'
                    mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 357] = 30
                    mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 389] = 'SafeMath: subtraction overflow'
                    if ext_call.return_data[0] * sub_8a55784b / 100 / 2 > ext_call.return_data[0] * sub_8a55784b / 100:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if ext_call.return_data[0] * sub_8a55784b / 100 < ext_call.return_data[0] * sub_8a55784b / 100 / 2:
                        revert with 'NH{q', 17
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
                    s = ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 453
                    t = ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 713
                    while idx < mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 421]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 617] = this.address
                    mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 649] = block.timestamp
                    require ext_code.size(uniswapV2RouterAddress)
                    call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args Mask(255, 1, ext_call.return_data[0] * sub_8a55784b / 100), 0, 160, address(this.address), block.timestamp, mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 681 len (32 * mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 421]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 517] = 30
                    mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 549] = 'SafeMath: subtraction overflow'
                    if eth.balance(this.address) > eth.balance(this.address):
                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 581] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 585] = 32
                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 617] = 30
                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 649] = 'SafeMath: subtraction overflow'
                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 679] = 0
                        revert with memory
                          from ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 581
                           len (7 * ceil32(return_data.size)) + 100
                    if eth.balance(this.address) < eth.balance(this.address):
                        revert with 'NH{q', 17
                    mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 585] = uniswapV2RouterAddress
                    mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 617] = (ext_call.return_data[0] * sub_8a55784b / 100) - (ext_call.return_data[0] * sub_8a55784b / 100 / 2)
                    require ext_code.size(sub_0c756bf3Address)
                    call sub_0c756bf3Address.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 585 len (7 * ceil32(return_data.size)) + 64]
                    mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 581] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 585] = sub_0c756bf3Address
                    mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 617] = (ext_call.return_data[0] * sub_8a55784b / 100) - (ext_call.return_data[0] * sub_8a55784b / 100 / 2)
                    mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 649] = 0
                    mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 681] = 0
                    mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 713] = 0
                    mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 745] = block.timestamp
                    require ext_code.size(uniswapV2RouterAddress)
                    call uniswapV2RouterAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                         gas gas_remaining wei
                        args mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 585 len (13 * ceil32(return_data.size)) + 192]
                    mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 581 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    require ext_call.return_data[32] == ext_call.return_data[32]
                    require ext_call.return_data[64] == ext_call.return_data[64]
                    mem[ceil32(ceil32(arg1.length)) + (9 * ceil32(return_data.size)) + 581] = 2
                    mem[ceil32(ceil32(arg1.length)) + (9 * ceil32(return_data.size)) + 613] = sub_0c756bf3Address
                    require ext_code.size(uniswapV2RouterAddress)
                    staticcall uniswapV2RouterAddress.WAVAX() with:
                            gas gas_remaining wei
                    mem[ceil32(ceil32(arg1.length)) + (9 * ceil32(return_data.size)) + 677] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[ceil32(ceil32(arg1.length)) + (9 * ceil32(return_data.size)) + 645] = ext_call.return_data[12 len 20]
                    mem[ceil32(ceil32(arg1.length)) + (10 * ceil32(return_data.size)) + 681] = uniswapV2RouterAddress
                    mem[ceil32(ceil32(arg1.length)) + (10 * ceil32(return_data.size)) + 713] = ext_call.return_data[0] * sub_b91b740b / 100
                    require ext_code.size(sub_0c756bf3Address)
                    call sub_0c756bf3Address.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args uniswapV2RouterAddress, ext_call.return_data[0] * sub_b91b740b / 100
                    mem[ceil32(ceil32(arg1.length)) + (10 * ceil32(return_data.size)) + 677] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(ceil32(arg1.length)) + (12 * ceil32(return_data.size)) + 677
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    mem[ceil32(ceil32(arg1.length)) + (12 * ceil32(return_data.size)) + 677] = 0x762b156200000000000000000000000000000000000000000000000000000000
                    mem[ceil32(ceil32(arg1.length)) + (12 * ceil32(return_data.size)) + 681] = ext_call.return_data[0] * sub_b91b740b / 100
                    mem[ceil32(ceil32(arg1.length)) + (12 * ceil32(return_data.size)) + 713] = 0
                    mem[ceil32(ceil32(arg1.length)) + (12 * ceil32(return_data.size)) + 745] = 160
                    mem[ceil32(ceil32(arg1.length)) + (12 * ceil32(return_data.size)) + 841] = 2
                    idx = 0
                    s = ceil32(ceil32(arg1.length)) + (9 * ceil32(return_data.size)) + 613
                    t = ceil32(ceil32(arg1.length)) + (12 * ceil32(return_data.size)) + 873
                    while idx < mem[ceil32(ceil32(arg1.length)) + (9 * ceil32(return_data.size)) + 581]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[ceil32(ceil32(arg1.length)) + (12 * ceil32(return_data.size)) + 777] = this.address
                    mem[ceil32(ceil32(arg1.length)) + (12 * ceil32(return_data.size)) + 809] = block.timestamp
                    require ext_code.size(uniswapV2RouterAddress)
                    call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len ceil32(ceil32(arg1.length)) + (12 * ceil32(return_data.size)) + (32 * mem[ceil32(ceil32(arg1.length)) + (9 * ceil32(return_data.size)) + 581]) + -mem[64] + 869]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3038 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3038] = 30
                    mem[_3038 + 32] = 'SafeMath: subtraction overflow'
                    if eth.balance(this.address) > eth.balance(this.address):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if eth.balance(this.address) < eth.balance(this.address):
                        revert with 'NH{q', 17
                    call treasuryAddress with:
                         gas gas_remaining wei
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'PAYMENT FAIL'
                        _3130 = mem[64]
                        mem[mem[64] + 36] = burnAddress
                        mem[mem[64] + 68] = ext_call.return_data[0] * sub_72f1dbdb / 100
                        _3170 = mem[64]
                        mem[mem[64]] = 68
                        mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                        mem[64] = mem[64] + 164
                        mem[_3130 + 100] = 32
                        mem[_3130 + 132] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if ext_code.size(sub_0c756bf3Address) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        _3258 = mem[_3170]
                        mem[_3130 + 164 len ceil32(mem[_3170])] = mem[_3170 + 32 len ceil32(mem[_3170])]
                        if ceil32(_3258) > _3258:
                            mem[_3130 + _3258 + 164] = 0
                        call sub_0c756bf3Address with:
                             gas gas_remaining wei
                            args mem[_3130 + 168 len _3258 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96] > 0:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if mem[96] > 0:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            Mask(248, 0, stor20.field_8) = 0
                            mem[_3130 + 164] = 0x9021973200000000000000000000000000000000000000000000000000000000
                            mem[_3130 + 168] = msg.sender
                            mem[_3130 + 200] = 96
                            mem[_3130 + 264] = mem[96]
                            mem[_3130 + 296 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                            if ceil32(mem[96]) > mem[96]:
                                mem[_3130 + mem[96] + 296] = 0
                            mem[_3130 + 232] = rewardPerDay
                            require ext_code.size(managementAddress)
                            call managementAddress.0x90219732 with:
                                 gas gas_remaining wei
                                args msg.sender, Array(len=mem[96], data=mem[_3130 + 296 len ceil32(mem[96])]), rewardPerDay
                        else:
                            mem[_3130 + 164] = return_data.size
                            mem[_3130 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                require mem[_3130 + 196] == bool(mem[_3130 + 196])
                                if not mem[_3130 + 196]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            Mask(248, 0, stor20.field_8) = 0
                            mem[_3130 + ceil32(return_data.size) + 165] = 0x9021973200000000000000000000000000000000000000000000000000000000
                            mem[_3130 + ceil32(return_data.size) + 169] = msg.sender
                            mem[_3130 + ceil32(return_data.size) + 201] = 96
                            mem[_3130 + ceil32(return_data.size) + 265] = mem[96]
                            mem[_3130 + ceil32(return_data.size) + 297 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                            if ceil32(mem[96]) > mem[96]:
                                mem[_3130 + ceil32(return_data.size) + mem[96] + 297] = 0
                            require ext_code.size(managementAddress)
                            call managementAddress.0x90219732 with:
                                 gas gas_remaining wei
                                args msg.sender, Array(len=mem[96], data=mem[_3130 + ceil32(return_data.size) + 297 len ceil32(mem[96])]), rewardPerDay
                    else:
                        _3102 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_3102] = return_data.size
                        mem[_3102 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'PAYMENT FAIL'
                        _3131 = mem[64]
                        mem[mem[64] + 36] = burnAddress
                        mem[mem[64] + 68] = ext_call.return_data[0] * sub_72f1dbdb / 100
                        _3172 = mem[64]
                        mem[mem[64]] = 68
                        mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                        mem[64] = mem[64] + 164
                        mem[_3131 + 100] = 32
                        mem[_3131 + 132] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if ext_code.size(sub_0c756bf3Address) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        _3259 = mem[_3172]
                        mem[_3131 + 164 len ceil32(mem[_3172])] = mem[_3172 + 32 len ceil32(mem[_3172])]
                        if ceil32(_3259) > _3259:
                            mem[_3131 + _3259 + 164] = 0
                        call sub_0c756bf3Address with:
                             gas gas_remaining wei
                            args mem[_3131 + 168 len _3259 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96] > 0:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if mem[96] > 0:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            Mask(248, 0, stor20.field_8) = 0
                            mem[_3131 + 164] = 0x9021973200000000000000000000000000000000000000000000000000000000
                            mem[_3131 + 168] = msg.sender
                            mem[_3131 + 200] = 96
                            mem[_3131 + 264] = mem[96]
                            mem[_3131 + 296 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                            if ceil32(mem[96]) > mem[96]:
                                mem[_3131 + mem[96] + 296] = 0
                            mem[_3131 + 232] = rewardPerDay
                            require ext_code.size(managementAddress)
                            call managementAddress.0x90219732 with:
                                 gas gas_remaining wei
                                args msg.sender, Array(len=mem[96], data=mem[_3131 + 296 len ceil32(mem[96])]), rewardPerDay
                        else:
                            mem[_3131 + 164] = return_data.size
                            mem[_3131 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                require mem[_3131 + 196] == bool(mem[_3131 + 196])
                                if not mem[_3131 + 196]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            Mask(248, 0, stor20.field_8) = 0
                            mem[_3131 + ceil32(return_data.size) + 165] = 0x9021973200000000000000000000000000000000000000000000000000000000
                            mem[_3131 + ceil32(return_data.size) + 169] = msg.sender
                            mem[_3131 + ceil32(return_data.size) + 201] = 96
                            mem[_3131 + ceil32(return_data.size) + 265] = mem[96]
                            mem[_3131 + ceil32(return_data.size) + 297 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                            if ceil32(mem[96]) > mem[96]:
                                mem[_3131 + ceil32(return_data.size) + mem[96] + 297] = 0
                            require ext_code.size(managementAddress)
                            call managementAddress.0x90219732 with:
                                 gas gas_remaining wei
                                args msg.sender, Array(len=mem[96], data=mem[_3131 + ceil32(return_data.size) + 297 len ceil32(mem[96])]), rewardPerDay
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
            require ext_call.return_data[0] == ext_call.return_data[0]
            if distributing:
                require ext_code.size(managementAddress)
                call managementAddress.0x90219732 with:
                     gas gas_remaining wei
                    args msg.sender, Array(len=arg1.length, data=arg1[all]), rewardPerDay
            else:
                if distributionAmount > ext_call.return_data[0]:
                    require ext_code.size(managementAddress)
                    call managementAddress.0x90219732 with:
                         gas gas_remaining wei
                        args msg.sender, Array(len=arg1.length, data=arg1[all]), rewardPerDay
                else:
                    Mask(248, 0, stor20.field_8) = 1
                    mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 297] = this.address
                    require ext_code.size(sub_0c756bf3Address)
                    staticcall sub_0c756bf3Address.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 293] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if ext_call.return_data[0] and sub_8a55784b > -1 / ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    if ext_call.return_data[0] and sub_b91b740b > -1 / ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    if ext_call.return_data[0] and sub_72f1dbdb > -1 / ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 293] = 26
                    mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 325] = 'SafeMath: division by zero'
                    mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 357] = 30
                    mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 389] = 'SafeMath: subtraction overflow'
                    if ext_call.return_data[0] * sub_8a55784b / 100 / 2 > ext_call.return_data[0] * sub_8a55784b / 100:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if ext_call.return_data[0] * sub_8a55784b / 100 < ext_call.return_data[0] * sub_8a55784b / 100 / 2:
                        revert with 'NH{q', 17
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
                    s = ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 453
                    t = ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 713
                    while idx < mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 421]:
                        mem[t] = mem[s + 12 len 20]
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
                    _999 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_999] = 30
                    mem[_999 + 32] = 'SafeMath: subtraction overflow'
                    if eth.balance(this.address) > eth.balance(this.address):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if eth.balance(this.address) < eth.balance(this.address):
                        revert with 'NH{q', 17
                    mem[mem[64] + 4] = uniswapV2RouterAddress
                    mem[mem[64] + 36] = (ext_call.return_data[0] * sub_8a55784b / 100) - (ext_call.return_data[0] * sub_8a55784b / 100 / 2)
                    require ext_code.size(sub_0c756bf3Address)
                    call sub_0c756bf3Address.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args uniswapV2RouterAddress, (ext_call.return_data[0] * sub_8a55784b / 100) - (ext_call.return_data[0] * sub_8a55784b / 100 / 2)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1063 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1063] == bool(mem[_1063])
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
                    _1095 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    require mem[_1095] == mem[_1095]
                    require mem[_1095 + 32] == mem[_1095 + 32]
                    require mem[_1095 + 64] == mem[_1095 + 64]
                    _1127 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    mem[_1127 + 32 len 64] = call.data[calldata.size len 64]
                    if 0 >= mem[_1127]:
                        revert with 'NH{q', 50
                    mem[_1127 + 32] = sub_0c756bf3Address
                    require ext_code.size(uniswapV2RouterAddress)
                    staticcall uniswapV2RouterAddress.WAVAX() with:
                            gas gas_remaining wei
                    mem[_1127 + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _1127 + ceil32(return_data.size) + 96
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if 1 >= mem[_1127]:
                        revert with 'NH{q', 50
                    mem[_1127 + 64] = ext_call.return_data[12 len 20]
                    mem[_1127 + ceil32(return_data.size) + 100] = uniswapV2RouterAddress
                    mem[_1127 + ceil32(return_data.size) + 132] = ext_call.return_data[0] * sub_b91b740b / 100
                    require ext_code.size(sub_0c756bf3Address)
                    call sub_0c756bf3Address.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args uniswapV2RouterAddress, ext_call.return_data[0] * sub_b91b740b / 100
                    mem[_1127 + ceil32(return_data.size) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _1127 + (2 * ceil32(return_data.size)) + 96
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    mem[_1127 + (2 * ceil32(return_data.size)) + 96] = 0x762b156200000000000000000000000000000000000000000000000000000000
                    mem[_1127 + (2 * ceil32(return_data.size)) + 100] = ext_call.return_data[0] * sub_b91b740b / 100
                    mem[_1127 + (2 * ceil32(return_data.size)) + 132] = 0
                    mem[_1127 + (2 * ceil32(return_data.size)) + 164] = 160
                    mem[_1127 + (2 * ceil32(return_data.size)) + 260] = mem[_1127]
                    idx = 0
                    s = _1127 + 32
                    t = _1127 + (2 * ceil32(return_data.size)) + 292
                    while idx < mem[_1127]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_1127 + (2 * ceil32(return_data.size)) + 196] = this.address
                    mem[_1127 + (2 * ceil32(return_data.size)) + 228] = block.timestamp
                    require ext_code.size(uniswapV2RouterAddress)
                    call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _1127 + (2 * ceil32(return_data.size)) + (32 * mem[_1127]) + -mem[64] + 288]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3039 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3039] = 30
                    mem[_3039 + 32] = 'SafeMath: subtraction overflow'
                    if eth.balance(this.address) > eth.balance(this.address):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if eth.balance(this.address) < eth.balance(this.address):
                        revert with 'NH{q', 17
                    call treasuryAddress with:
                         gas gas_remaining wei
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'PAYMENT FAIL'
                        _3132 = mem[64]
                        mem[mem[64] + 36] = burnAddress
                        mem[mem[64] + 68] = ext_call.return_data[0] * sub_72f1dbdb / 100
                        _3174 = mem[64]
                        mem[mem[64]] = 68
                        mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                        mem[64] = mem[64] + 164
                        mem[_3132 + 100] = 32
                        mem[_3132 + 132] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if ext_code.size(sub_0c756bf3Address) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        _3260 = mem[_3174]
                        mem[_3132 + 164 len ceil32(mem[_3174])] = mem[_3174 + 32 len ceil32(mem[_3174])]
                        if ceil32(_3260) > _3260:
                            mem[_3132 + _3260 + 164] = 0
                        call sub_0c756bf3Address with:
                             gas gas_remaining wei
                            args mem[_3132 + 168 len _3260 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96] > 0:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if mem[96] > 0:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            Mask(248, 0, stor20.field_8) = 0
                            mem[_3132 + 164] = 0x9021973200000000000000000000000000000000000000000000000000000000
                            mem[_3132 + 168] = msg.sender
                            mem[_3132 + 200] = 96
                            mem[_3132 + 264] = mem[96]
                            mem[_3132 + 296 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                            if ceil32(mem[96]) > mem[96]:
                                mem[_3132 + mem[96] + 296] = 0
                            mem[_3132 + 232] = rewardPerDay
                            require ext_code.size(managementAddress)
                            call managementAddress.0x90219732 with:
                                 gas gas_remaining wei
                                args msg.sender, Array(len=mem[96], data=mem[_3132 + 296 len ceil32(mem[96])]), rewardPerDay
                        else:
                            mem[_3132 + 164] = return_data.size
                            mem[_3132 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                require mem[_3132 + 196] == bool(mem[_3132 + 196])
                                if not mem[_3132 + 196]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            Mask(248, 0, stor20.field_8) = 0
                            mem[_3132 + ceil32(return_data.size) + 165] = 0x9021973200000000000000000000000000000000000000000000000000000000
                            mem[_3132 + ceil32(return_data.size) + 169] = msg.sender
                            mem[_3132 + ceil32(return_data.size) + 201] = 96
                            mem[_3132 + ceil32(return_data.size) + 265] = mem[96]
                            mem[_3132 + ceil32(return_data.size) + 297 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                            if ceil32(mem[96]) > mem[96]:
                                mem[_3132 + ceil32(return_data.size) + mem[96] + 297] = 0
                            require ext_code.size(managementAddress)
                            call managementAddress.0x90219732 with:
                                 gas gas_remaining wei
                                args msg.sender, Array(len=mem[96], data=mem[_3132 + ceil32(return_data.size) + 297 len ceil32(mem[96])]), rewardPerDay
                    else:
                        _3103 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_3103] = return_data.size
                        mem[_3103 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'PAYMENT FAIL'
                        _3133 = mem[64]
                        mem[mem[64] + 36] = burnAddress
                        mem[mem[64] + 68] = ext_call.return_data[0] * sub_72f1dbdb / 100
                        _3176 = mem[64]
                        mem[mem[64]] = 68
                        mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                        mem[64] = mem[64] + 164
                        mem[_3133 + 100] = 32
                        mem[_3133 + 132] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if ext_code.size(sub_0c756bf3Address) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        _3261 = mem[_3176]
                        mem[_3133 + 164 len ceil32(mem[_3176])] = mem[_3176 + 32 len ceil32(mem[_3176])]
                        if ceil32(_3261) > _3261:
                            mem[_3133 + _3261 + 164] = 0
                        call sub_0c756bf3Address with:
                             gas gas_remaining wei
                            args mem[_3133 + 168 len _3261 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96] > 0:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if mem[96] > 0:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            Mask(248, 0, stor20.field_8) = 0
                            mem[_3133 + 164] = 0x9021973200000000000000000000000000000000000000000000000000000000
                            mem[_3133 + 168] = msg.sender
                            mem[_3133 + 200] = 96
                            mem[_3133 + 264] = mem[96]
                            mem[_3133 + 296 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                            if ceil32(mem[96]) > mem[96]:
                                mem[_3133 + mem[96] + 296] = 0
                            mem[_3133 + 232] = rewardPerDay
                            require ext_code.size(managementAddress)
                            call managementAddress.0x90219732 with:
                                 gas gas_remaining wei
                                args msg.sender, Array(len=mem[96], data=mem[_3133 + 296 len ceil32(mem[96])]), rewardPerDay
                        else:
                            mem[_3133 + 164] = return_data.size
                            mem[_3133 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                require mem[_3133 + 196] == bool(mem[_3133 + 196])
                                if not mem[_3133 + 196]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            Mask(248, 0, stor20.field_8) = 0
                            mem[_3133 + ceil32(return_data.size) + 165] = 0x9021973200000000000000000000000000000000000000000000000000000000
                            mem[_3133 + ceil32(return_data.size) + 169] = msg.sender
                            mem[_3133 + ceil32(return_data.size) + 201] = 96
                            mem[_3133 + ceil32(return_data.size) + 265] = mem[96]
                            mem[_3133 + ceil32(return_data.size) + 297 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                            if ceil32(mem[96]) > mem[96]:
                                mem[_3133 + ceil32(return_data.size) + mem[96] + 297] = 0
                            require ext_code.size(managementAddress)
                            call managementAddress.0x90219732 with:
                                 gas gas_remaining wei
                                args msg.sender, Array(len=mem[96], data=mem[_3133 + ceil32(return_data.size) + 297 len ceil32(mem[96])]), rewardPerDay
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
