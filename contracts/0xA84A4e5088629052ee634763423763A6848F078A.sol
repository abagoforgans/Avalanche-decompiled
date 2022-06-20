contract main {




// =====================  Runtime code  =====================


#
#  - claim()
#  - sub_aa11aecd(?)
#  - buyNode(uint256 arg1)
#
address owner;
address milkAddress;
address usdcAddress;
address pairAddress;
uint32 stor4;
address treasuryAddress;
uint256 stor4;
address devAddress;
uint256 dailyInterest;
uint256 nodeCost;
uint256 sub_bcd4aa83;
uint256 sub_f9caa583;
uint256 sub_e8b4266d;
uint256 sub_b59449a7;
uint256 sub_7796ff37;
uint256 devShare;
uint8 isLive;
uint256 sub_63584ecd;
uint256 stor16;
array of address sub_bfeaa071;
mapping of struct farmers;
mapping of uint8 stor19;

function dailyInterest() {
    return dailyInterest
}

function nodeCost() {
    return nodeCost
}

function usdc() {
    return usdcAddress
}

function farmers(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(farmers[arg1].field_0), 
           farmers[arg1].field_256,
           farmers[arg1].field_512,
           farmers[arg1].field_768,
           farmers[arg1].field_1024,
           farmers[arg1].field_1280
}

function sub_5dcce8c7(?) {
    return sub_e8b4266d
}

function treasury() {
    return address(treasuryAddress)
}

function sub_63584ecd(?) {
    return sub_63584ecd
}

function sub_6b6156c8(?) {
    return sub_b59449a7
}

function sub_7796ff37(?) {
    return sub_7796ff37
}

function owner() {
    return owner
}

function dev() {
    return devAddress
}

function pair() {
    return pairAddress
}

function devShare() {
    return devShare
}

function sub_b59449a7(?) {
    return sub_b59449a7
}

function isLive() {
    return bool(isLive)
}

function sub_bcd4aa83(?) {
    return sub_bcd4aa83
}

function sub_bfeaa071(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < sub_bfeaa071.length
    return sub_bfeaa071[arg1]
}

function milk() {
    return milkAddress
}

function sub_e8b4266d(?) {
    return sub_e8b4266d
}

function sub_f9caa583(?) {
    return sub_f9caa583
}

function isBlacklisted(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor19[arg1])
}

function _fallback() payable {
    revert
}

function sub_e7438d1d(?) {
    if sub_bcd4aa83 and dailyInterest > -1 / sub_bcd4aa83:
        revert with 'NH{q', 17
    return (sub_bcd4aa83 * dailyInterest / 100)
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_be7847a7(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    nodeCost = arg1
}

function sub_4260aabc(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_b59449a7 = arg1
}

function sub_a0bde78c(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_e8b4266d = arg1
}

function sub_b7f2e759(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_bcd4aa83 = arg1
}

function setDailyInterest(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    dailyInterest = arg1
}

function sub_71e7af22(?) {
    if farmers[address(msg.sender)].field_256 > -farmers[address(msg.sender)].field_512 - 1:
        revert with 'NH{q', 17
    return (farmers[address(msg.sender)].field_256 + farmers[address(msg.sender)].field_512)
}

function sub_6eaae824(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 and 10^6 > -1 / arg1:
        revert with 'NH{q', 17
    stor16 = 10^6 * arg1
}

function blacklistAddress(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor19[address(arg1)] = uint8(arg2)
}

function setBondDiscount(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > 25:
        revert with 0, 'Discount above limit'
    sub_f9caa583 = arg1
}

function setDevShare(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(treasuryAddress) != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Can only be used by Dairy.Money Treasury'
    devShare = arg1
}

function setPairAddr(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(treasuryAddress) != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Can only be used by Dairy.Money Treasury'
    pairAddress = arg1
}

function setTokenAddr(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(treasuryAddress) != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Can only be used by Dairy.Money Treasury'
    milkAddress = arg1
}

function sub_e3b57275(?) {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if address(treasuryAddress) != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Can only be used by Dairy.Money Treasury'
    isLive = uint8(bool(arg1))
}

function setTreasuryShare(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(treasuryAddress) != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Can only be used by Dairy.Money Treasury'
    sub_7796ff37 = arg1
}

function sub_fbdeff2d(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if address(treasuryAddress) != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Can only be used by Dairy.Money Treasury'
    usdcAddress = address(arg1)
}

function setTreasuryAddr(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(treasuryAddress) != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Can only be used by Dairy.Money Treasury'
    address(treasuryAddress) = arg1
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

function getPrice() {
    require ext_code.size(pairAddress)
    staticcall pairAddress.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    if ext_call.return_data[18 len 14] <= 0:
        revert with 0, 'divison by zero error'
    if ext_call.return_data[50 len 14] and 1000000000000 * 10^18 > -1 / ext_call.return_data[50 len 14]:
        revert with 'NH{q', 17
    if not ext_call.return_data[18 len 14]:
        revert with 'NH{q', 18
    return (1000000000000 * 10^18 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14])
}

function sub_6f608ab7(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not farmers[address(arg1)].field_0:
        revert with 0, 'Farmer does not exist'
    farmers[address(arg1)].field_0 = uint8(bool(farmers[address(arg1)].field_0))
    if farmers[address(arg1)].field_256 < arg2:
        revert with 'NH{q', 17
    farmers[address(arg1)].field_256 -= arg2
    if farmers[address(arg1)].field_512 < arg3:
        revert with 'NH{q', 17
    farmers[address(arg1)].field_512 -= arg3
    farmers[address(arg1)].field_768 = 0
    farmers[address(arg1)].field_1024 = 0
    if arg2 > -arg3 - 1:
        revert with 'NH{q', 17
    if sub_63584ecd < arg2 + arg3:
        revert with 'NH{q', 17
    sub_63584ecd = sub_63584ecd - arg2 - arg3
    farmers[address(arg1)].field_1280 = block.timestamp
}

function sub_1f735a84(?) {
    require ext_code.size(pairAddress)
    staticcall pairAddress.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    if ext_call.return_data[18 len 14] <= 0:
        revert with 0, 'divison by zero error'
    if ext_call.return_data[50 len 14] and 1000000000000 * 10^18 > -1 / ext_call.return_data[50 len 14]:
        revert with 'NH{q', 17
    if not ext_call.return_data[18 len 14]:
        revert with 'NH{q', 18
    if nodeCost / 10^18 and 1000000000000 * 10^18 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] > -1 / nodeCost / 10^18:
        revert with 'NH{q', 17
    if 100 < sub_f9caa583:
        revert with 'NH{q', 17
    if nodeCost / 10^18 * 1000000000000 * 10^18 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] / 10^12 and -sub_f9caa583 + 100 > -1 / nodeCost / 10^18 * 1000000000000 * 10^18 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] / 10^12:
        revert with 'NH{q', 17
    return ((100 * nodeCost / 10^18 * 1000000000000 * 10^18 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] / 10^12) - (sub_f9caa583 * nodeCost / 10^18 * 1000000000000 * 10^18 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] / 10^12) / 100)
}

function emergencyWithdrawal() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[100] = this.address
    require ext_code.size(milkAddress)
    staticcall milkAddress.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[ceil32(return_data.size) + 132] = address(treasuryAddress)
    mem[ceil32(return_data.size) + 164] = ext_call.return_data[0]
    mem[ceil32(return_data.size) + 96] = 68
    mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor4)
    mem[ceil32(return_data.size) + 128 len 4] = transfer(address arg1, uint256 arg2)
    mem[ceil32(return_data.size) + 196] = 32
    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if ext_code.size(milkAddress) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 260 len 96] = transfer(address arg1, uint256 arg2), Mask(224, 0, stor4), uint32(stor4), ext_call.return_data[0], 0
    mem[ceil32(return_data.size) + 328] = 0
    call milkAddress with:
       funct Mask(32, 224, transfer(address arg1, uint256 arg2), Mask(224, 0, stor4), uint32(stor4), ext_call.return_data[0], 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, transfer(address arg1, uint256 arg2), Mask(224, 0, stor4), uint32(stor4), ext_call.return_data[0], 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0] > 0:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0] > 0:
            require ext_call.return_data[0] >= 32
            require 0, mem[132 len 28] == bool(0, mem[132 len 28])
            if not 0, mem[132 len 28]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
            if not mem[ceil32(return_data.size) + 292]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    emit 0xbcd97362: address(treasuryAddress), ext_call.return_data[0], milkAddress
}

function sub_97e35e82(?) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = arg1
    while idx < arg2:
        if idx >= sub_bfeaa071.length:
            revert with 'NH{q', 50
        mem[0] = sub_bfeaa071[idx]
        mem[32] = 18
        if farmers[stor17[idx]].field_1280 > 0:
            if block.timestamp < farmers[stor17[idx]].field_1280:
                revert with 'NH{q', 17
            if farmers[stor17[idx]].field_256 and sub_bcd4aa83 > -1 / farmers[stor17[idx]].field_256:
                revert with 'NH{q', 17
            if farmers[stor17[idx]].field_256 * sub_bcd4aa83 and dailyInterest > -1 / farmers[stor17[idx]].field_256 * sub_bcd4aa83:
                revert with 'NH{q', 17
            if farmers[stor17[idx]].field_256 * sub_bcd4aa83 * dailyInterest and block.timestamp - farmers[stor17[idx]].field_1280 > -1 / farmers[stor17[idx]].field_256 * sub_bcd4aa83 * dailyInterest:
                revert with 'NH{q', 17
            if farmers[stor17[idx]].field_768 > -((block.timestamp * farmers[stor17[idx]].field_256 * sub_bcd4aa83 * dailyInterest) - (farmers[stor17[idx]].field_1280 * farmers[stor17[idx]].field_256 * sub_bcd4aa83 * dailyInterest) / 2400 * 24 * 3600) - 1:
                revert with 'NH{q', 17
            farmers[stor17[idx]].field_768 += (block.timestamp * farmers[stor17[idx]].field_256 * sub_bcd4aa83 * dailyInterest) - (farmers[stor17[idx]].field_1280 * farmers[stor17[idx]].field_256 * sub_bcd4aa83 * dailyInterest) / 2400 * 24 * 3600
            if block.timestamp < farmers[stor17[idx]].field_1280:
                revert with 'NH{q', 17
            if farmers[stor17[idx]].field_512 and sub_bcd4aa83 > -1 / farmers[stor17[idx]].field_512:
                revert with 'NH{q', 17
            if farmers[stor17[idx]].field_512 * sub_bcd4aa83 and dailyInterest > -1 / farmers[stor17[idx]].field_512 * sub_bcd4aa83:
                revert with 'NH{q', 17
            if farmers[stor17[idx]].field_512 * sub_bcd4aa83 * dailyInterest and block.timestamp - farmers[stor17[idx]].field_1280 > -1 / farmers[stor17[idx]].field_512 * sub_bcd4aa83 * dailyInterest:
                revert with 'NH{q', 17
            if farmers[stor17[idx]].field_1024 > -((block.timestamp * farmers[stor17[idx]].field_512 * sub_bcd4aa83 * dailyInterest) - (farmers[stor17[idx]].field_1280 * farmers[stor17[idx]].field_512 * sub_bcd4aa83 * dailyInterest) / 2400 * 24 * 3600) - 1:
                revert with 'NH{q', 17
            farmers[stor17[idx]].field_1024 += (block.timestamp * farmers[stor17[idx]].field_512 * sub_bcd4aa83 * dailyInterest) - (farmers[stor17[idx]].field_1280 * farmers[stor17[idx]].field_512 * sub_bcd4aa83 * dailyInterest) / 2400 * 24 * 3600
            mem[0] = sub_bfeaa071[idx]
            mem[32] = 18
            farmers[stor17[idx]].field_1280 = block.timestamp
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_6180c609(?) {
    if block.timestamp < farmers[address(msg.sender)].field_1280:
        revert with 'NH{q', 17
    if farmers[address(msg.sender)].field_256 and sub_bcd4aa83 > -1 / farmers[address(msg.sender)].field_256:
        revert with 'NH{q', 17
    if farmers[address(msg.sender)].field_256 * sub_bcd4aa83 and dailyInterest > -1 / farmers[address(msg.sender)].field_256 * sub_bcd4aa83:
        revert with 'NH{q', 17
    if farmers[address(msg.sender)].field_256 * sub_bcd4aa83 * dailyInterest and block.timestamp - farmers[address(msg.sender)].field_1280 > -1 / farmers[address(msg.sender)].field_256 * sub_bcd4aa83 * dailyInterest:
        revert with 'NH{q', 17
    if block.timestamp < farmers[address(msg.sender)].field_1280:
        revert with 'NH{q', 17
    if farmers[address(msg.sender)].field_512 and sub_bcd4aa83 > -1 / farmers[address(msg.sender)].field_512:
        revert with 'NH{q', 17
    if farmers[address(msg.sender)].field_512 * sub_bcd4aa83 and dailyInterest > -1 / farmers[address(msg.sender)].field_512 * sub_bcd4aa83:
        revert with 'NH{q', 17
    if farmers[address(msg.sender)].field_512 * sub_bcd4aa83 * dailyInterest and block.timestamp - farmers[address(msg.sender)].field_1280 > -1 / farmers[address(msg.sender)].field_512 * sub_bcd4aa83 * dailyInterest:
        revert with 'NH{q', 17
    if (block.timestamp * farmers[address(msg.sender)].field_256 * sub_bcd4aa83 * dailyInterest) - (farmers[address(msg.sender)].field_1280 * farmers[address(msg.sender)].field_256 * sub_bcd4aa83 * dailyInterest) / 2400 * 24 * 3600 > -((block.timestamp * farmers[address(msg.sender)].field_512 * sub_bcd4aa83 * dailyInterest) - (farmers[address(msg.sender)].field_1280 * farmers[address(msg.sender)].field_512 * sub_bcd4aa83 * dailyInterest) / 2400 * 24 * 3600) - 1:
        revert with 'NH{q', 17
    if farmers[address(msg.sender)].field_768 > -farmers[address(msg.sender)].field_1024 - 1:
        revert with 'NH{q', 17
    if farmers[address(msg.sender)].field_768 + farmers[address(msg.sender)].field_1024 > -((block.timestamp * farmers[address(msg.sender)].field_256 * sub_bcd4aa83 * dailyInterest) - (farmers[address(msg.sender)].field_1280 * farmers[address(msg.sender)].field_256 * sub_bcd4aa83 * dailyInterest) / 2400 * 24 * 3600) + -((block.timestamp * farmers[address(msg.sender)].field_512 * sub_bcd4aa83 * dailyInterest) - (farmers[address(msg.sender)].field_1280 * farmers[address(msg.sender)].field_512 * sub_bcd4aa83 * dailyInterest) / 2400 * 24 * 3600) - 1:
        revert with 'NH{q', 17
    return (farmers[address(msg.sender)].field_768 + farmers[address(msg.sender)].field_1024 + ((block.timestamp * farmers[address(msg.sender)].field_256 * sub_bcd4aa83 * dailyInterest) - (farmers[address(msg.sender)].field_1280 * farmers[address(msg.sender)].field_256 * sub_bcd4aa83 * dailyInterest) / 2400 * 24 * 3600) + ((block.timestamp * farmers[address(msg.sender)].field_512 * sub_bcd4aa83 * dailyInterest) - (farmers[address(msg.sender)].field_1280 * farmers[address(msg.sender)].field_512 * sub_bcd4aa83 * dailyInterest) / 2400 * 24 * 3600))
}

function calculateTax() {
    if farmers[address(msg.sender)].field_1280 > 0:
        if block.timestamp < farmers[address(msg.sender)].field_1280:
            revert with 'NH{q', 17
        if farmers[address(msg.sender)].field_256 and sub_bcd4aa83 > -1 / farmers[address(msg.sender)].field_256:
            revert with 'NH{q', 17
        if farmers[address(msg.sender)].field_256 * sub_bcd4aa83 and dailyInterest > -1 / farmers[address(msg.sender)].field_256 * sub_bcd4aa83:
            revert with 'NH{q', 17
        if farmers[address(msg.sender)].field_256 * sub_bcd4aa83 * dailyInterest and block.timestamp - farmers[address(msg.sender)].field_1280 > -1 / farmers[address(msg.sender)].field_256 * sub_bcd4aa83 * dailyInterest:
            revert with 'NH{q', 17
        if farmers[address(msg.sender)].field_768 > -((block.timestamp * farmers[address(msg.sender)].field_256 * sub_bcd4aa83 * dailyInterest) - (farmers[address(msg.sender)].field_1280 * farmers[address(msg.sender)].field_256 * sub_bcd4aa83 * dailyInterest) / 2400 * 24 * 3600) - 1:
            revert with 'NH{q', 17
        farmers[address(msg.sender)].field_768 += (block.timestamp * farmers[address(msg.sender)].field_256 * sub_bcd4aa83 * dailyInterest) - (farmers[address(msg.sender)].field_1280 * farmers[address(msg.sender)].field_256 * sub_bcd4aa83 * dailyInterest) / 2400 * 24 * 3600
        if block.timestamp < farmers[address(msg.sender)].field_1280:
            revert with 'NH{q', 17
        if farmers[address(msg.sender)].field_512 and sub_bcd4aa83 > -1 / farmers[address(msg.sender)].field_512:
            revert with 'NH{q', 17
        if farmers[address(msg.sender)].field_512 * sub_bcd4aa83 and dailyInterest > -1 / farmers[address(msg.sender)].field_512 * sub_bcd4aa83:
            revert with 'NH{q', 17
        if farmers[address(msg.sender)].field_512 * sub_bcd4aa83 * dailyInterest and block.timestamp - farmers[address(msg.sender)].field_1280 > -1 / farmers[address(msg.sender)].field_512 * sub_bcd4aa83 * dailyInterest:
            revert with 'NH{q', 17
        if farmers[address(msg.sender)].field_1024 > -((block.timestamp * farmers[address(msg.sender)].field_512 * sub_bcd4aa83 * dailyInterest) - (farmers[address(msg.sender)].field_1280 * farmers[address(msg.sender)].field_512 * sub_bcd4aa83 * dailyInterest) / 2400 * 24 * 3600) - 1:
            revert with 'NH{q', 17
        farmers[address(msg.sender)].field_1024 += (block.timestamp * farmers[address(msg.sender)].field_512 * sub_bcd4aa83 * dailyInterest) - (farmers[address(msg.sender)].field_1280 * farmers[address(msg.sender)].field_512 * sub_bcd4aa83 * dailyInterest) / 2400 * 24 * 3600
        farmers[address(msg.sender)].field_1280 = block.timestamp
    if farmers[address(msg.sender)].field_768 / 100 and sub_e8b4266d > -1 / farmers[address(msg.sender)].field_768 / 100:
        revert with 'NH{q', 17
    if farmers[address(msg.sender)].field_1024 / 100 and sub_b59449a7 > -1 / farmers[address(msg.sender)].field_1024 / 100:
        revert with 'NH{q', 17
    if farmers[address(msg.sender)].field_768 / 100 * sub_e8b4266d > (-1 * farmers[address(msg.sender)].field_1024 / 100 * sub_b59449a7) - 1:
        revert with 'NH{q', 17
    return ((farmers[address(msg.sender)].field_768 / 100 * sub_e8b4266d) + (farmers[address(msg.sender)].field_1024 / 100 * sub_b59449a7))
}

function sub_eefe8bd0(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor19[address(arg1)]:
        revert with 0, 'Fuck off'
    if arg2 > -arg3 - 1:
        revert with 'NH{q', 17
    if farmers[address(arg1)].field_256 > -farmers[address(arg1)].field_512 - 1:
        revert with 'NH{q', 17
    if farmers[address(arg1)].field_256 + farmers[address(arg1)].field_512 > -arg2 + -arg3 - 1:
        revert with 'NH{q', 17
    if farmers[address(arg1)].field_256 + farmers[address(arg1)].field_512 + arg2 + arg3 >= 101:
        revert with 0, 'Max Cows Owned'
    if farmers[address(arg1)].field_0:
        farmers[address(arg1)].field_0 = uint8(bool(farmers[address(arg1)].field_0))
    else:
        sub_bfeaa071.length++
        sub_bfeaa071[sub_bfeaa071.length] = address(arg1)
        farmers[address(arg1)].field_0 = 1
        farmers[address(arg1)].field_256 = 0
        farmers[address(arg1)].field_512 = 0
        farmers[address(arg1)].field_768 = 0
        farmers[address(arg1)].field_1024 = 0
        farmers[address(arg1)].field_1280 = 0
    if farmers[address(arg1)].field_1280 > 0:
        if block.timestamp < farmers[address(arg1)].field_1280:
            revert with 'NH{q', 17
        if farmers[address(arg1)].field_256 and sub_bcd4aa83 > -1 / farmers[address(arg1)].field_256:
            revert with 'NH{q', 17
        if farmers[address(arg1)].field_256 * sub_bcd4aa83 and dailyInterest > -1 / farmers[address(arg1)].field_256 * sub_bcd4aa83:
            revert with 'NH{q', 17
        if farmers[address(arg1)].field_256 * sub_bcd4aa83 * dailyInterest and block.timestamp - farmers[address(arg1)].field_1280 > -1 / farmers[address(arg1)].field_256 * sub_bcd4aa83 * dailyInterest:
            revert with 'NH{q', 17
        if farmers[address(arg1)].field_768 > -((block.timestamp * farmers[address(arg1)].field_256 * sub_bcd4aa83 * dailyInterest) - (farmers[address(arg1)].field_1280 * farmers[address(arg1)].field_256 * sub_bcd4aa83 * dailyInterest) / 2400 * 24 * 3600) - 1:
            revert with 'NH{q', 17
        farmers[address(arg1)].field_768 += (block.timestamp * farmers[address(arg1)].field_256 * sub_bcd4aa83 * dailyInterest) - (farmers[address(arg1)].field_1280 * farmers[address(arg1)].field_256 * sub_bcd4aa83 * dailyInterest) / 2400 * 24 * 3600
        if block.timestamp < farmers[address(arg1)].field_1280:
            revert with 'NH{q', 17
        if farmers[address(arg1)].field_512 and sub_bcd4aa83 > -1 / farmers[address(arg1)].field_512:
            revert with 'NH{q', 17
        if farmers[address(arg1)].field_512 * sub_bcd4aa83 and dailyInterest > -1 / farmers[address(arg1)].field_512 * sub_bcd4aa83:
            revert with 'NH{q', 17
        if farmers[address(arg1)].field_512 * sub_bcd4aa83 * dailyInterest and block.timestamp - farmers[address(arg1)].field_1280 > -1 / farmers[address(arg1)].field_512 * sub_bcd4aa83 * dailyInterest:
            revert with 'NH{q', 17
        if farmers[address(arg1)].field_1024 > -((block.timestamp * farmers[address(arg1)].field_512 * sub_bcd4aa83 * dailyInterest) - (farmers[address(arg1)].field_1280 * farmers[address(arg1)].field_512 * sub_bcd4aa83 * dailyInterest) / 2400 * 24 * 3600) - 1:
            revert with 'NH{q', 17
        farmers[address(arg1)].field_1024 += (block.timestamp * farmers[address(arg1)].field_512 * sub_bcd4aa83 * dailyInterest) - (farmers[address(arg1)].field_1280 * farmers[address(arg1)].field_512 * sub_bcd4aa83 * dailyInterest) / 2400 * 24 * 3600
        farmers[address(arg1)].field_1280 = block.timestamp
    if farmers[address(arg1)].field_256 > -arg2 - 1:
        revert with 'NH{q', 17
    farmers[address(arg1)].field_256 += arg2
    if farmers[address(arg1)].field_512 > -arg3 - 1:
        revert with 'NH{q', 17
    farmers[address(arg1)].field_512 += arg3
    if sub_63584ecd > -arg2 + -arg3 - 1:
        revert with 'NH{q', 17
    sub_63584ecd = sub_63584ecd + arg2 + arg3
    farmers[address(arg1)].field_1280 = block.timestamp
}

function sub_d07b26ba(?) {
    if block.timestamp < farmers[address(msg.sender)].field_1280:
        revert with 'NH{q', 17
    if farmers[address(msg.sender)].field_256 and sub_bcd4aa83 > -1 / farmers[address(msg.sender)].field_256:
        revert with 'NH{q', 17
    if farmers[address(msg.sender)].field_256 * sub_bcd4aa83 and dailyInterest > -1 / farmers[address(msg.sender)].field_256 * sub_bcd4aa83:
        revert with 'NH{q', 17
    if farmers[address(msg.sender)].field_256 * sub_bcd4aa83 * dailyInterest and block.timestamp - farmers[address(msg.sender)].field_1280 > -1 / farmers[address(msg.sender)].field_256 * sub_bcd4aa83 * dailyInterest:
        revert with 'NH{q', 17
    if block.timestamp < farmers[address(msg.sender)].field_1280:
        revert with 'NH{q', 17
    if farmers[address(msg.sender)].field_512 and sub_bcd4aa83 > -1 / farmers[address(msg.sender)].field_512:
        revert with 'NH{q', 17
    if farmers[address(msg.sender)].field_512 * sub_bcd4aa83 and dailyInterest > -1 / farmers[address(msg.sender)].field_512 * sub_bcd4aa83:
        revert with 'NH{q', 17
    if farmers[address(msg.sender)].field_512 * sub_bcd4aa83 * dailyInterest and block.timestamp - farmers[address(msg.sender)].field_1280 > -1 / farmers[address(msg.sender)].field_512 * sub_bcd4aa83 * dailyInterest:
        revert with 'NH{q', 17
    if (block.timestamp * farmers[address(msg.sender)].field_256 * sub_bcd4aa83 * dailyInterest) - (farmers[address(msg.sender)].field_1280 * farmers[address(msg.sender)].field_256 * sub_bcd4aa83 * dailyInterest) / 2400 * 24 * 3600 > -farmers[address(msg.sender)].field_768 - 1:
        revert with 'NH{q', 17
    if (block.timestamp * farmers[address(msg.sender)].field_512 * sub_bcd4aa83 * dailyInterest) - (farmers[address(msg.sender)].field_1280 * farmers[address(msg.sender)].field_512 * sub_bcd4aa83 * dailyInterest) / 2400 * 24 * 3600 > -farmers[address(msg.sender)].field_1024 - 1:
        revert with 'NH{q', 17
    if ((block.timestamp * farmers[address(msg.sender)].field_256 * sub_bcd4aa83 * dailyInterest) - (farmers[address(msg.sender)].field_1280 * farmers[address(msg.sender)].field_256 * sub_bcd4aa83 * dailyInterest) / 2400 * 24 * 3600) + farmers[address(msg.sender)].field_768 / 100 and sub_e8b4266d > -1 / ((block.timestamp * farmers[address(msg.sender)].field_256 * sub_bcd4aa83 * dailyInterest) - (farmers[address(msg.sender)].field_1280 * farmers[address(msg.sender)].field_256 * sub_bcd4aa83 * dailyInterest) / 2400 * 24 * 3600) + farmers[address(msg.sender)].field_768 / 100:
        revert with 'NH{q', 17
    if ((block.timestamp * farmers[address(msg.sender)].field_512 * sub_bcd4aa83 * dailyInterest) - (farmers[address(msg.sender)].field_1280 * farmers[address(msg.sender)].field_512 * sub_bcd4aa83 * dailyInterest) / 2400 * 24 * 3600) + farmers[address(msg.sender)].field_1024 / 100 and sub_b59449a7 > -1 / ((block.timestamp * farmers[address(msg.sender)].field_512 * sub_bcd4aa83 * dailyInterest) - (farmers[address(msg.sender)].field_1280 * farmers[address(msg.sender)].field_512 * sub_bcd4aa83 * dailyInterest) / 2400 * 24 * 3600) + farmers[address(msg.sender)].field_1024 / 100:
        revert with 'NH{q', 17
    if ((block.timestamp * farmers[address(msg.sender)].field_256 * sub_bcd4aa83 * dailyInterest) - (farmers[address(msg.sender)].field_1280 * farmers[address(msg.sender)].field_256 * sub_bcd4aa83 * dailyInterest) / 2400 * 24 * 3600) + farmers[address(msg.sender)].field_768 / 100 * sub_e8b4266d > (-1 * ((block.timestamp * farmers[address(msg.sender)].field_512 * sub_bcd4aa83 * dailyInterest) - (farmers[address(msg.sender)].field_1280 * farmers[address(msg.sender)].field_512 * sub_bcd4aa83 * dailyInterest) / 2400 * 24 * 3600) + farmers[address(msg.sender)].field_1024 / 100 * sub_b59449a7) - 1:
        revert with 'NH{q', 17
    return ((((block.timestamp * farmers[address(msg.sender)].field_256 * sub_bcd4aa83 * dailyInterest) - (farmers[address(msg.sender)].field_1280 * farmers[address(msg.sender)].field_256 * sub_bcd4aa83 * dailyInterest) / 2400 * 24 * 3600) + farmers[address(msg.sender)].field_768 / 100 * sub_e8b4266d) + (((block.timestamp * farmers[address(msg.sender)].field_512 * sub_bcd4aa83 * dailyInterest) - (farmers[address(msg.sender)].field_1280 * farmers[address(msg.sender)].field_512 * sub_bcd4aa83 * dailyInterest) / 2400 * 24 * 3600) + farmers[address(msg.sender)].field_1024 / 100 * sub_b59449a7))
}

function sub_29a5c72b(?) {
    if stor19[address(msg.sender)]:
        revert with 0, 'Fuck off'
    if not isLive:
        revert with 0, 'Platform is not live'
    if block.timestamp < farmers[address(msg.sender)].field_1280:
        revert with 'NH{q', 17
    if farmers[address(msg.sender)].field_256 and sub_bcd4aa83 > -1 / farmers[address(msg.sender)].field_256:
        revert with 'NH{q', 17
    if farmers[address(msg.sender)].field_256 * sub_bcd4aa83 and dailyInterest > -1 / farmers[address(msg.sender)].field_256 * sub_bcd4aa83:
        revert with 'NH{q', 17
    if farmers[address(msg.sender)].field_256 * sub_bcd4aa83 * dailyInterest and block.timestamp - farmers[address(msg.sender)].field_1280 > -1 / farmers[address(msg.sender)].field_256 * sub_bcd4aa83 * dailyInterest:
        revert with 'NH{q', 17
    if block.timestamp < farmers[address(msg.sender)].field_1280:
        revert with 'NH{q', 17
    if farmers[address(msg.sender)].field_512 and sub_bcd4aa83 > -1 / farmers[address(msg.sender)].field_512:
        revert with 'NH{q', 17
    if farmers[address(msg.sender)].field_512 * sub_bcd4aa83 and dailyInterest > -1 / farmers[address(msg.sender)].field_512 * sub_bcd4aa83:
        revert with 'NH{q', 17
    if farmers[address(msg.sender)].field_512 * sub_bcd4aa83 * dailyInterest and block.timestamp - farmers[address(msg.sender)].field_1280 > -1 / farmers[address(msg.sender)].field_512 * sub_bcd4aa83 * dailyInterest:
        revert with 'NH{q', 17
    if (block.timestamp * farmers[address(msg.sender)].field_256 * sub_bcd4aa83 * dailyInterest) - (farmers[address(msg.sender)].field_1280 * farmers[address(msg.sender)].field_256 * sub_bcd4aa83 * dailyInterest) / 2400 * 24 * 3600 > -((block.timestamp * farmers[address(msg.sender)].field_512 * sub_bcd4aa83 * dailyInterest) - (farmers[address(msg.sender)].field_1280 * farmers[address(msg.sender)].field_512 * sub_bcd4aa83 * dailyInterest) / 2400 * 24 * 3600) - 1:
        revert with 'NH{q', 17
    if farmers[address(msg.sender)].field_768 > -farmers[address(msg.sender)].field_1024 - 1:
        revert with 'NH{q', 17
    if farmers[address(msg.sender)].field_768 + farmers[address(msg.sender)].field_1024 > -((block.timestamp * farmers[address(msg.sender)].field_256 * sub_bcd4aa83 * dailyInterest) - (farmers[address(msg.sender)].field_1280 * farmers[address(msg.sender)].field_256 * sub_bcd4aa83 * dailyInterest) / 2400 * 24 * 3600) + -((block.timestamp * farmers[address(msg.sender)].field_512 * sub_bcd4aa83 * dailyInterest) - (farmers[address(msg.sender)].field_1280 * farmers[address(msg.sender)].field_512 * sub_bcd4aa83 * dailyInterest) / 2400 * 24 * 3600) - 1:
        revert with 'NH{q', 17
    if farmers[address(msg.sender)].field_256 > -farmers[address(msg.sender)].field_512 - 1:
        revert with 'NH{q', 17
    if farmers[address(msg.sender)].field_768 + farmers[address(msg.sender)].field_1024 + ((block.timestamp * farmers[address(msg.sender)].field_256 * sub_bcd4aa83 * dailyInterest) - (farmers[address(msg.sender)].field_1280 * farmers[address(msg.sender)].field_256 * sub_bcd4aa83 * dailyInterest) / 2400 * 24 * 3600) + ((block.timestamp * farmers[address(msg.sender)].field_512 * sub_bcd4aa83 * dailyInterest) - (farmers[address(msg.sender)].field_1280 * farmers[address(msg.sender)].field_512 * sub_bcd4aa83 * dailyInterest) / 2400 * 24 * 3600) <= nodeCost:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Not enough pending MILK to compound'
    if farmers[address(msg.sender)].field_256 + farmers[address(msg.sender)].field_512 >= 100:
        revert with 0, 'Max Cows Owned'
    if farmers[address(msg.sender)].field_1280 > 0:
        if block.timestamp < farmers[address(msg.sender)].field_1280:
            revert with 'NH{q', 17
        if farmers[address(msg.sender)].field_256 and sub_bcd4aa83 > -1 / farmers[address(msg.sender)].field_256:
            revert with 'NH{q', 17
        if farmers[address(msg.sender)].field_256 * sub_bcd4aa83 and dailyInterest > -1 / farmers[address(msg.sender)].field_256 * sub_bcd4aa83:
            revert with 'NH{q', 17
        if farmers[address(msg.sender)].field_256 * sub_bcd4aa83 * dailyInterest and block.timestamp - farmers[address(msg.sender)].field_1280 > -1 / farmers[address(msg.sender)].field_256 * sub_bcd4aa83 * dailyInterest:
            revert with 'NH{q', 17
        if farmers[address(msg.sender)].field_768 > -((block.timestamp * farmers[address(msg.sender)].field_256 * sub_bcd4aa83 * dailyInterest) - (farmers[address(msg.sender)].field_1280 * farmers[address(msg.sender)].field_256 * sub_bcd4aa83 * dailyInterest) / 2400 * 24 * 3600) - 1:
            revert with 'NH{q', 17
        farmers[address(msg.sender)].field_768 += (block.timestamp * farmers[address(msg.sender)].field_256 * sub_bcd4aa83 * dailyInterest) - (farmers[address(msg.sender)].field_1280 * farmers[address(msg.sender)].field_256 * sub_bcd4aa83 * dailyInterest) / 2400 * 24 * 3600
        if block.timestamp < farmers[address(msg.sender)].field_1280:
            revert with 'NH{q', 17
        if farmers[address(msg.sender)].field_512 and sub_bcd4aa83 > -1 / farmers[address(msg.sender)].field_512:
            revert with 'NH{q', 17
        if farmers[address(msg.sender)].field_512 * sub_bcd4aa83 and dailyInterest > -1 / farmers[address(msg.sender)].field_512 * sub_bcd4aa83:
            revert with 'NH{q', 17
        if farmers[address(msg.sender)].field_512 * sub_bcd4aa83 * dailyInterest and block.timestamp - farmers[address(msg.sender)].field_1280 > -1 / farmers[address(msg.sender)].field_512 * sub_bcd4aa83 * dailyInterest:
            revert with 'NH{q', 17
        if farmers[address(msg.sender)].field_1024 > -((block.timestamp * farmers[address(msg.sender)].field_512 * sub_bcd4aa83 * dailyInterest) - (farmers[address(msg.sender)].field_1280 * farmers[address(msg.sender)].field_512 * sub_bcd4aa83 * dailyInterest) / 2400 * 24 * 3600) - 1:
            revert with 'NH{q', 17
        farmers[address(msg.sender)].field_1024 += (block.timestamp * farmers[address(msg.sender)].field_512 * sub_bcd4aa83 * dailyInterest) - (farmers[address(msg.sender)].field_1280 * farmers[address(msg.sender)].field_512 * sub_bcd4aa83 * dailyInterest) / 2400 * 24 * 3600
        farmers[address(msg.sender)].field_1280 = block.timestamp
    if farmers[address(msg.sender)].field_768 > nodeCost:
        if farmers[address(msg.sender)].field_768 < nodeCost:
            revert with 'NH{q', 17
        farmers[address(msg.sender)].field_768 -= nodeCost
        if farmers[address(msg.sender)].field_256 == -1:
            revert with 'NH{q', 17
        farmers[address(msg.sender)].field_256++
    else:
        if nodeCost < farmers[address(msg.sender)].field_768:
            revert with 'NH{q', 17
        farmers[address(msg.sender)].field_768 = 0
        if farmers[address(msg.sender)].field_1024 < nodeCost - farmers[address(msg.sender)].field_768:
            revert with 'NH{q', 17
        farmers[address(msg.sender)].field_1024 = farmers[address(msg.sender)].field_1024 - nodeCost + farmers[address(msg.sender)].field_768
        if farmers[address(msg.sender)].field_512 == -1:
            revert with 'NH{q', 17
        farmers[address(msg.sender)].field_512++
    if sub_63584ecd == -1:
        revert with 'NH{q', 17
    sub_63584ecd++
}



}
