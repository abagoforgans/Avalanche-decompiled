contract main {




// =====================  Runtime code  =====================


address owner;
array of struct stor1;
uint32 stor2;
address inputTokenAddress;
address rewardTokenAddress;
array of address stor4;
mapping of uint32 assetOf;
mapping of uint256 stor6;
mapping of uint8 stor7;
address sub_08288d7eAddress;
address sub_bd841459Address;
address sub_6af66772Address;
address sub_82c780a1Address;
address sub_21201358Address;
uint256 pid;
uint256 sub_3831226a;
uint256 sub_f6ae49f0;
uint256 sub_7762323d;
uint256 sub_f6785047;
uint256 sub_8b65be08;
uint256 totalInvestors;
uint8 stor20;
uint8 stor20; offset 8
uint256 stor20; offset 8
uint256 interestRate;
array of address investorList;

function inputToken() {
    return address(inputTokenAddress)
}

function sub_08288d7e(?) {
    return sub_08288d7eAddress
}

function investorList(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < investorList.length
    return investorList[arg1]
}

function sub_21201358(?) {
    return sub_21201358Address
}

function totalInvestors() {
    return totalInvestors
}

function sub_3831226a(?) {
    return sub_3831226a
}

function getStakedAmount(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return stakedAmount[address(arg1)].field_0
}

function getInterestRate() {
    return interestRate
}

function sub_6af66772(?) {
    return sub_6af66772Address
}

function assetOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor7[address(arg1)]:
        revert with 0, 'ASSET_NOT_EXIST'
    return address(assetOf[address(arg1)])
}

function sub_7762323d(?) {
    return sub_7762323d
}

function interestRate() {
    return interestRate
}

function sub_82c780a1(?) {
    return sub_82c780a1Address
}

function sub_8b65be08(?) {
    return sub_8b65be08
}

function owner() {
    return owner
}

function sub_a14ed18a(?) {
    return sub_f6785047
}

function sub_bd841459(?) {
    return sub_bd841459Address
}

function poolEnabled() {
    return bool(uint8(stor20.field_0))
}

function sub_d2f82536(?) {
    return bool(uint8(stor20.field_8))
}

function getTotalInvestors() {
    return totalInvestors
}

function pid() {
    return pid
}

function sub_f6785047(?) {
    return sub_f6785047
}

function sub_f6ae49f0(?) {
    return sub_f6ae49f0
}

function sub_f703f36f(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return stakedAmount[arg1].field_0, 
           stakedAmount[arg1].field_256,
           bool(stakedAmount[arg1].field_1024),
           stakedAmount[arg1].field_1280
}

function rewardToken() {
    return rewardTokenAddress
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

function updateInterestRate(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    interestRate = arg1
}

function sub_4f9999f5(?) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_f6ae49f0 = arg1
    sub_3831226a = arg2
}

function sub_99f99a70(?) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == address(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    pid = arg1
    address(inputTokenAddress) = address(arg2)
}

function sub_54a3e65f(?) {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint8(stor20.field_0) = uint8(bool(arg1))
    emit 0x1781a749: bool(uint8(stor20.field_0)), block.timestamp
}

function sub_1b25ad2c(?) {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(248, 0, stor20.field_8) = Mask(248, 0, bool(arg1))
    emit 0xef5fd91d: bool(uint8(stor20.field_0)), block.timestamp
}

function calculateYieldTime(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if block.timestamp < stakedAmount[address(arg1)].field_1280:
        revert with 'NH{q', 17
    if block.timestamp - stakedAmount[address(arg1)].field_1280 != block.timestamp:
        return (block.timestamp - stakedAmount[address(arg1)].field_1280)
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
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function sub_368ea53e(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(sub_08288d7eAddress)
    call sub_08288d7eAddress.0xe2bbb158 with:
         gas gas_remaining wei
        args pid, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    if ext_call.return_data[32] <= 0:
        revert with 0, 'Failed to Transfer Input Token to Master PTP Pool'
    return ext_call.return_data[0], ext_call.return_data[32]
}

function sub_2a4e7ea5(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(sub_08288d7eAddress)
    call sub_08288d7eAddress.0x441a3e70 with:
         gas gas_remaining wei
        args pid, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    if ext_call.return_data[32] <= 0:
        revert with 0, 'Failed to Transfer LP Token from Master PTP Pool to this contract'
    return ext_call.return_data[0], ext_call.return_data[32]
}

function addAsset(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'ZERO'
    if not arg2:
        revert with 0, 'ZERO'
    if stor7[address(arg1)]:
        revert with 0, 'ASSET_EXISTS'
    if stor7[address(arg1)]:
        address(assetOf[address(arg1)]) = arg2
    else:
        stor7[address(arg1)] = 1
        address(assetOf[address(arg1)]) = arg2
        stor6[address(arg1)] = stor4.length
        stor4.length++
        stor4[stor4.length] = arg1
    emit AssetAdded(arg1, arg2);
}

function sub_494fc7b1(?) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require ext_code.size(sub_08288d7eAddress)
    call sub_08288d7eAddress.0xe2bbb158 with:
         gas gas_remaining wei
        args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    if ext_call.return_data[32] <= 0:
        revert with 0, 'Failed to Transfer Input Token to Master PTP Pool'
    return ext_call.return_data[0], ext_call.return_data[32]
}

function sub_ed2969f3(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(address(arg1))
    call address(arg1).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Failed to Approve Token'
}

function sub_873ce9e6(?) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require ext_code.size(sub_08288d7eAddress)
    call sub_08288d7eAddress.0x441a3e70 with:
         gas gas_remaining wei
        args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    if ext_call.return_data[32] <= 0:
        revert with 0, 'Failed to Transfer LP Token from Master PTP Pool to this contract'
    return ext_call.return_data[0], ext_call.return_data[32]
}

function sub_accad902(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if block.timestamp > -31:
        revert with 'NH{q', 17
    require ext_code.size(sub_bd841459Address)
    call sub_bd841459Address.deposit(address arg1, uint256 arg2, address arg3, uint256 arg4) with:
         gas gas_remaining wei
        args 0, uint32(stor2), arg1, address(this.address), block.timestamp + 30
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] <= 0:
        revert with 0, 'Failed to Transfer Input Token to PTP Pool'
    return ext_call.return_data[0]
}

function sub_662a9a68(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if block.timestamp > -31:
        revert with 'NH{q', 17
    require ext_code.size(sub_bd841459Address)
    call sub_bd841459Address.withdraw(address arg1, uint256 arg2, uint256 arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args 0, uint32(stor2), arg1, arg1, this.address, block.timestamp + 30
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] <= 0:
        revert with 0, 'Failed to Transfer Token from  PTP IPool to this contract'
    return ext_call.return_data[0]
}

function removeAsset(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor7[address(arg1)]:
        stor7[address(arg1)] = 0
        address(assetOf[address(arg1)]) = 0
        if stor4.length < 1:
            revert with 'NH{q', 17
        if stor4.length - 1 >= stor4.length:
            revert with 'NH{q', 50
        stor6[stor4[stor4.length]] = stor6[address(arg1)]
        stor6[address(arg1)] = 0
        if stor6[address(arg1)] >= stor4.length:
            revert with 'NH{q', 50
        stor4[stor6[address(arg1)]] = stor4[stor4.length]
        if not stor4.length:
            revert with 'NH{q', 49
        stor4[stor4.length] = 0
        stor4.length--
}

function sub_04c4eeac(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if block.timestamp > -31:
        revert with 'NH{q', 17
    if arg1 and 99 > -1 / arg1:
        revert with 'NH{q', 17
    require ext_code.size(sub_bd841459Address)
    call sub_bd841459Address.withdraw(address arg1, uint256 arg2, uint256 arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args 0, uint32(stor2), arg1, 99 * arg1 / 100, this.address, block.timestamp + 30
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] <= 0:
        revert with 0, 'Failed to Transfer Token from  PTP IPool to this contract'
    return ext_call.return_data[0]
}

function sub_d110325a(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg3 == arg3
    if not address(arg1):
        revert with 0, 'ZERO'
    if arg2 and 99 > -1 / arg2:
        revert with 'NH{q', 17
    require ext_code.size(sub_bd841459Address)
    call sub_bd841459Address.withdraw(address arg1, uint256 arg2, uint256 arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args 0, 0, arg2, 99 * arg2 / 100, this.address, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] <= 0:
        revert with 0, 'Failed to Transfer Token from  PTP IPool to this contract'
    return ext_call.return_data[0]
}

function sub_e4905fab(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg3 == arg3
    if arg2 <= 0:
        revert with 0, 'ZERO_AMOUNT'
    if not address(arg1):
        revert with 0, 'ZERO'
    if not stor7[address(arg1)]:
        revert with 0, 'ASSET_NOT_EXIST'
    require ext_code.size(sub_bd841459Address)
    call sub_bd841459Address.deposit(address arg1, uint256 arg2, address arg3, uint256 arg4) with:
         gas gas_remaining wei
        args 0, uint32(assetOf[address(arg1)]), arg2, address(this.address), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] <= 0:
        revert with 0, 'Failed to Transfer Input Token to PTP Pool'
    return ext_call.return_data[0]
}

function sub_26a18e67(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(address(arg1))
    call address(arg1).0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Failed to transfer Token from Contract to Treasury'
}

function calculateRewards(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if interestRate and stakedAmount[address(arg1)].field_0 / 10^16 > -1 / interestRate:
        revert with 'NH{q', 17
    if block.timestamp < stakedAmount[address(arg1)].field_1280:
        revert with 'NH{q', 17
    if block.timestamp - stakedAmount[address(arg1)].field_1280 != block.timestamp:
        if interestRate * stakedAmount[address(arg1)].field_0 / 10^16 and block.timestamp - stakedAmount[address(arg1)].field_1280 > -1 / interestRate * stakedAmount[address(arg1)].field_0 / 10^16:
            revert with 'NH{q', 17
        return ((block.timestamp * interestRate * stakedAmount[address(arg1)].field_0 / 10^16) - (stakedAmount[address(arg1)].field_1280 * interestRate * stakedAmount[address(arg1)].field_0 / 10^16))
    if interestRate * stakedAmount[address(arg1)].field_0 / 10^16 and 0 > -1 / interestRate * stakedAmount[address(arg1)].field_0 / 10^16:
        revert with 'NH{q', 17
    else:
        return 0
}

function redeemRewards() payable {
    if not uint8(stor20.field_8):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Redeeming is not currently enabled'
    if stakedAmount[address(msg.sender)].field_0 <= 0:
        revert with 0, 'You are not staked'
    if interestRate and stakedAmount[address(msg.sender)].field_0 / 10^16 > -1 / interestRate:
        revert with 'NH{q', 17
    if block.timestamp < stakedAmount[address(msg.sender)].field_1280:
        revert with 'NH{q', 17
    if block.timestamp - stakedAmount[address(msg.sender)].field_1280 != block.timestamp:
        if interestRate * stakedAmount[address(msg.sender)].field_0 / 10^16 and block.timestamp - stakedAmount[address(msg.sender)].field_1280 > -1 / interestRate * stakedAmount[address(msg.sender)].field_0 / 10^16:
            revert with 'NH{q', 17
        require ext_code.size(rewardTokenAddress)
        call rewardTokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, (block.timestamp * interestRate * stakedAmount[address(msg.sender)].field_0 / 10^16) - (stakedAmount[address(msg.sender)].field_1280 * interestRate * stakedAmount[address(msg.sender)].field_0 / 10^16)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_call.return_data[0]
        stakedAmount[address(msg.sender)].field_1280 = block.timestamp
        emit RedeemReward(msg.sender, (block.timestamp * interestRate * stakedAmount[address(msg.sender)].field_0 / 10^16) - (stakedAmount[address(msg.sender)].field_1280 * interestRate * stakedAmount[address(msg.sender)].field_0 / 10^16));
    else:
        if interestRate * stakedAmount[address(msg.sender)].field_0 / 10^16 and 0 > -1 / interestRate * stakedAmount[address(msg.sender)].field_0 / 10^16:
            revert with 'NH{q', 17
        require ext_code.size(rewardTokenAddress)
        call rewardTokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_call.return_data[0]
        stakedAmount[address(msg.sender)].field_1280 = block.timestamp
        emit RedeemReward(msg.sender, 0);
}

function name() {
    if bool(stor1.length):
        if bool(stor1.length) == stor1.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor1.length):
            if bool(stor1.length) == stor1.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor1.length.field_1:
                if 31 < stor1.length.field_1:
                    mem[128] = uint256(stor1.field_0)
                    idx = 128
                    s = 0
                    while stor1.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor1[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor1.length.field_1), data=mem[128 len ceil32(stor1.length.field_1)])
                mem[128] = 256 * stor1.length.field_8
        else:
            if bool(stor1.length) == stor1.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor1.length.field_1:
                if 31 < stor1.length.field_1:
                    mem[128] = uint256(stor1.field_0)
                    idx = 128
                    s = 0
                    while stor1.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor1[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor1.length.field_1), data=mem[128 len ceil32(stor1.length.field_1)])
                mem[128] = 256 * stor1.length.field_8
        mem[ceil32(stor1.length.field_1) + 192 len ceil32(stor1.length.field_1)] = mem[128 len ceil32(stor1.length.field_1)]
        if ceil32(stor1.length.field_1) > stor1.length.field_1:
            mem[ceil32(stor1.length.field_1) + stor1.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor1.length.field_1), data=mem[128 len ceil32(stor1.length.field_1)], mem[(2 * ceil32(stor1.length.field_1)) + 192 len 2 * ceil32(stor1.length.field_1)]), 
    if bool(stor1.length) == stor1.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor1.length):
        if bool(stor1.length) == stor1.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor1.length.field_1:
            if 31 < stor1.length.field_1:
                mem[128] = uint256(stor1.field_0)
                idx = 128
                s = 0
                while stor1.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor1[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1)])
            mem[128] = 256 * stor1.length.field_8
    else:
        if bool(stor1.length) == stor1.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor1.length.field_1:
            if 31 < stor1.length.field_1:
                mem[128] = uint256(stor1.field_0)
                idx = 128
                s = 0
                while stor1.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor1[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1)])
            mem[128] = 256 * stor1.length.field_8
    mem[ceil32(stor1.length.field_1) + 192 len ceil32(stor1.length.field_1)] = mem[128 len ceil32(stor1.length.field_1)]
    if ceil32(stor1.length.field_1) > stor1.length.field_1:
        mem[ceil32(stor1.length.field_1) + stor1.length.field_1 + 192] = 0
    return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1)], mem[(2 * ceil32(stor1.length.field_1)) + 192 len 2 * ceil32(stor1.length.field_1)]), 
}

function unstakeAll() payable {
    if not uint8(stor20.field_0):
        revert with 0, 'Pool Investment Not Yet Enabled'
    if not uint8(stor20.field_8):
        revert with 0, 'Claiming is Not Enabled'
    if not stakedAmount[address(msg.sender)].field_1024:
        if not uint8(stor20.field_8):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Redeeming is not currently enabled'
        if stakedAmount[address(msg.sender)].field_0 <= 0:
            revert with 0, 'You are not staked'
        if interestRate and stakedAmount[address(msg.sender)].field_0 / 10^16 > -1 / interestRate:
            revert with 'NH{q', 17
        if block.timestamp < stakedAmount[address(msg.sender)].field_1280:
            revert with 'NH{q', 17
        if block.timestamp - stakedAmount[address(msg.sender)].field_1280 != block.timestamp:
            if interestRate * stakedAmount[address(msg.sender)].field_0 / 10^16 and block.timestamp - stakedAmount[address(msg.sender)].field_1280 > -1 / interestRate * stakedAmount[address(msg.sender)].field_0 / 10^16:
                revert with 'NH{q', 17
            require ext_code.size(rewardTokenAddress)
            call rewardTokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, (block.timestamp * interestRate * stakedAmount[address(msg.sender)].field_0 / 10^16) - (stakedAmount[address(msg.sender)].field_1280 * interestRate * stakedAmount[address(msg.sender)].field_0 / 10^16)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            require ext_call.return_data[0]
            stakedAmount[address(msg.sender)].field_1280 = block.timestamp
            emit RedeemReward(msg.sender, (block.timestamp * interestRate * stakedAmount[address(msg.sender)].field_0 / 10^16) - (stakedAmount[address(msg.sender)].field_1280 * interestRate * stakedAmount[address(msg.sender)].field_0 / 10^16));
        else:
            if interestRate * stakedAmount[address(msg.sender)].field_0 / 10^16 and 0 > -1 / interestRate * stakedAmount[address(msg.sender)].field_0 / 10^16:
                revert with 'NH{q', 17
            require ext_code.size(rewardTokenAddress)
            call rewardTokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            require ext_call.return_data[0]
            stakedAmount[address(msg.sender)].field_1280 = block.timestamp
            emit RedeemReward(msg.sender, 0);
    require ext_code.size(sub_08288d7eAddress)
    call sub_08288d7eAddress.0x441a3e70 with:
         gas gas_remaining wei
        args pid, stakedAmount[address(msg.sender)].field_0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    if ext_call.return_data[32] <= 0:
        revert with 0, 'Failed to Transfer LP Token from Master PTP Pool to this contract'
    if block.timestamp > -31:
        revert with 'NH{q', 17
    require ext_code.size(sub_bd841459Address)
    call sub_bd841459Address.withdraw(address arg1, uint256 arg2, uint256 arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args address(inputTokenAddress), stakedAmount[address(msg.sender)].field_0, stakedAmount[address(msg.sender)].field_0, address(this.address), block.timestamp + 30
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] <= 0:
        revert with 0, 'Failed to Transfer Token from  PTP IPool to this contract'
    require ext_code.size(address(inputTokenAddress))
    call address(inputTokenAddress).0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, stakedAmount[address(msg.sender)].field_0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_call.return_data[0]
    stakedAmount[address(msg.sender)].field_0 = 0
    stakedAmount[address(msg.sender)].field_1280 = block.timestamp
    if sub_f6785047 < stakedAmount[address(msg.sender)].field_0:
        revert with 'NH{q', 17
    sub_f6785047 -= stakedAmount[address(msg.sender)].field_0
    emit Unstake(msg.sender, stakedAmount[address(msg.sender)].field_0);
}

function stake(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not uint8(stor20.field_0):
        revert with 0, 'Pool Investment Not Yet Enabled'
    if arg2 <= sub_f6ae49f0:
        revert with 0, 'Please stake the minimum amount'
    if arg2 >= sub_3831226a:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Please stake below the maximum allowed'
    if arg2 <= 0:
        revert with 0, 'ZERO_AMOUNT'
    if not arg1:
        revert with 0, 'ZERO'
    if stakedAmount[address(msg.sender)].field_0 <= 0:
        if stakedAmount[address(msg.sender)].field_1024:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Investor has not yet claimed rewards'
    else:
        if not uint8(stor20.field_8):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Redeeming is not currently enabled'
        if stakedAmount[address(msg.sender)].field_0 <= 0:
            revert with 0, 'You are not staked'
        if interestRate and stakedAmount[address(msg.sender)].field_0 / 10^16 > -1 / interestRate:
            revert with 'NH{q', 17
        if block.timestamp < stakedAmount[address(msg.sender)].field_1280:
            revert with 'NH{q', 17
        if block.timestamp - stakedAmount[address(msg.sender)].field_1280 != block.timestamp:
            if interestRate * stakedAmount[address(msg.sender)].field_0 / 10^16 and block.timestamp - stakedAmount[address(msg.sender)].field_1280 > -1 / interestRate * stakedAmount[address(msg.sender)].field_0 / 10^16:
                revert with 'NH{q', 17
            require ext_code.size(rewardTokenAddress)
            call rewardTokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, (block.timestamp * interestRate * stakedAmount[address(msg.sender)].field_0 / 10^16) - (stakedAmount[address(msg.sender)].field_1280 * interestRate * stakedAmount[address(msg.sender)].field_0 / 10^16)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            require ext_call.return_data[0]
            stakedAmount[address(msg.sender)].field_1280 = block.timestamp
            emit RedeemReward(msg.sender, (block.timestamp * interestRate * stakedAmount[address(msg.sender)].field_0 / 10^16) - (stakedAmount[address(msg.sender)].field_1280 * interestRate * stakedAmount[address(msg.sender)].field_0 / 10^16));
        else:
            if interestRate * stakedAmount[address(msg.sender)].field_0 / 10^16 and 0 > -1 / interestRate * stakedAmount[address(msg.sender)].field_0 / 10^16:
                revert with 'NH{q', 17
            require ext_code.size(rewardTokenAddress)
            call rewardTokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            require ext_call.return_data[0]
            stakedAmount[address(msg.sender)].field_1280 = block.timestamp
            emit RedeemReward(msg.sender, 0);
        if stakedAmount[address(msg.sender)].field_1024:
            revert with 0, 'Investor has not yet claimed rewards'
    ('iszero', ('field', 1024, ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stakedAmount', 22)))))
    require ext_code.size(address(inputTokenAddress))
    call address(inputTokenAddress).0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Failed to Transfer Input Token to Factory'
    if block.timestamp > -31:
        revert with 'NH{q', 17
    require ext_code.size(sub_bd841459Address)
    call sub_bd841459Address.deposit(address arg1, uint256 arg2, address arg3, uint256 arg4) with:
         gas gas_remaining wei
        args address(inputTokenAddress), arg2, address(this.address), block.timestamp + 30
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] <= 0:
        revert with 0, 'Failed to Transfer Input Token to PTP Pool'
    require ext_code.size(sub_08288d7eAddress)
    call sub_08288d7eAddress.0xe2bbb158 with:
         gas gas_remaining wei
        args pid, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    if ext_call.return_data[32] <= 0:
        revert with 0, 'Failed to Transfer Input Token to Master PTP Pool'
    if ext_call.return_data[0] <= 0:
        revert with 0, 'Failed to Transfer Input Token to PTP Pool'
    if stakedAmount[address(msg.sender)].field_0 > -arg2 - 1:
        revert with 'NH{q', 17
    stakedAmount[address(msg.sender)].field_0 += arg2
    stakedAmount[address(msg.sender)].field_1280 = block.timestamp
    stakedAmount[address(msg.sender)].field_768++
    stor[(2 * stakedAmount[address(msg.sender)].field_768) + ('array', 3, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stakedAmount', 22)))].field_0 = block.timestamp
    stor[(2 * stakedAmount[address(msg.sender)].field_768) + ('array', 3, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stakedAmount', 22)))].field_256 = arg2
    if sub_f6785047 > -arg2 - 1:
        revert with 'NH{q', 17
    sub_f6785047 += arg2
    if stakedAmount[address(msg.sender)].field_768 == 1:
        if totalInvestors > -2:
            revert with 'NH{q', 17
        totalInvestors++
        investorList.length++
        investorList[investorList.length] = msg.sender
    emit Stake(msg.sender, arg2);
}



}
