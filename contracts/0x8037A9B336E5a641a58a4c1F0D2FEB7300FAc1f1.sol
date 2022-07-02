contract main {




// =====================  Runtime code  =====================


address owner;
array of struct stor1;
address inputTokenAddress;
uint256 sub_3831226a;
uint256 sub_f6ae49f0;
uint256 sub_7762323d;
uint256 sub_f6785047;
uint256 sub_8b65be08;
uint256 totalInvestors;
uint8 poolEnabled;
uint8 sub_d2f82536; offset 8
uint256 stor9; offset 8
uint256 interestRate;
array of address investorList;

function inputToken() {
    return inputTokenAddress
}

function investorList(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < investorList.length
    return investorList[arg1]
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

function sub_7762323d(?) {
    return sub_7762323d
}

function interestRate() {
    return interestRate
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

function poolEnabled() {
    return bool(poolEnabled)
}

function sub_d2f82536(?) {
    return bool(sub_d2f82536)
}

function getTotalInvestors() {
    return totalInvestors
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

function sub_54a3e65f(?) {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    poolEnabled = uint8(bool(arg1))
    emit 0x1781a749: bool(poolEnabled), block.timestamp
}

function sub_1b25ad2c(?) {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor9 = Mask(248, 0, bool(arg1))
    emit 0xef5fd91d: bool(poolEnabled), block.timestamp
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
    if not sub_d2f82536:
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
        require ext_code.size(inputTokenAddress)
        call inputTokenAddress.0xa9059cbb with:
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
        require ext_code.size(inputTokenAddress)
        call inputTokenAddress.0xa9059cbb with:
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

function unstakeAll() payable {
    if not poolEnabled:
        revert with 0, 'Pool Investment Not Yet Enabled'
    if not stakedAmount[address(msg.sender)].field_1024:
        if not sub_d2f82536:
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
            require ext_code.size(inputTokenAddress)
            call inputTokenAddress.0xa9059cbb with:
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
            require ext_code.size(inputTokenAddress)
            call inputTokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            require ext_call.return_data[0]
            stakedAmount[address(msg.sender)].field_1280 = block.timestamp
            emit RedeemReward(msg.sender, 0);
    require ext_code.size(inputTokenAddress)
    call inputTokenAddress.0xa9059cbb with:
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

function stake(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not poolEnabled:
        revert with 0, 'Pool Investment Not Yet Enabled'
    if arg1 <= sub_f6ae49f0:
        revert with 0, 'Please stake the minimum amount'
    if arg1 >= sub_3831226a:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Please stake below the maximum allowed'
    if stakedAmount[address(msg.sender)].field_0 > 0:
        if not sub_d2f82536:
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
            require ext_code.size(inputTokenAddress)
            call inputTokenAddress.0xa9059cbb with:
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
            require ext_code.size(inputTokenAddress)
            call inputTokenAddress.0xa9059cbb with:
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
        revert with 0, 'Commitment Already Made'
    require ext_code.size(inputTokenAddress)
    call inputTokenAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Failed to Transfer Input Token to Factory'
    if stakedAmount[address(msg.sender)].field_0 > -arg1 - 1:
        revert with 'NH{q', 17
    stakedAmount[address(msg.sender)].field_0 += arg1
    stakedAmount[address(msg.sender)].field_1280 = block.timestamp
    stakedAmount[address(msg.sender)].field_768++
    stor[(2 * stakedAmount[address(msg.sender)].field_768) + ('array', 3, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stakedAmount', 11)))].field_0 = block.timestamp
    stor[(2 * stakedAmount[address(msg.sender)].field_768) + ('array', 3, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stakedAmount', 11)))].field_256 = arg1
    if sub_f6785047 > -arg1 - 1:
        revert with 'NH{q', 17
    sub_f6785047 += arg1
    if stakedAmount[address(msg.sender)].field_768 == 1:
        if totalInvestors > -2:
            revert with 'NH{q', 17
        totalInvestors++
        investorList.length++
        investorList[investorList.length] = msg.sender
    emit Stake(msg.sender, arg1);
}



}
