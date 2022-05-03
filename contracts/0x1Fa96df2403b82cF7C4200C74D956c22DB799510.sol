contract main {




// =====================  Runtime code  =====================


const sub_2a1af125(?) = 1530947

const sub_2b74c89d(?) = 90

const sub_5248eede(?) = 30

const sub_70c6bc77(?) = 60

const sub_787f1e55(?) = 5128942

const sub_8b31b6dd(?) = 14185834


address owner;
address stor2;
mapping of address staking;
array of struct stor4;
mapping of uint256 stakingStartTimeById;
mapping of uint256 stakingEndTimeById;
mapping of uint256 sub_dbbac56b;
mapping of uint8 stor8;
mapping of uint256 finalStakeWithdraw;
mapping of uint256 stakingTotalDaysById;
mapping of uint256 sub_46525473;
uint256 stakingCount;
uint256 tokenReward;
uint256 stor14;
uint8 stakingPaused;
uint256 totalStakedAmount;
uint256 sub_dcdd406e;

function sub_0986746b(?) {
    return sub_dcdd406e
}

function getFinalStakeWithdraw(uint256 arg1) {
    return finalStakeWithdraw[arg1]
}

function getTotalStakedAmount() {
    return totalStakedAmount
}

function sub_46525473(?) {
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Invalid Address, Please try again!!'
    return sub_46525473[address(arg1)]
}

function totalStakedAmount() {
    return totalStakedAmount
}

function sub_8978b2da(?) {
    if arg1 > stakingCount:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Unable to reterive data on specified id, Please try again!!'
    return bool(stor8[arg1])
}

function getStakingStartTimeById(uint256 arg1) {
    if arg1 > stakingCount:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Unable to reterive data on specified id, Please try again!!'
    return stakingStartTimeById[arg1]
}

function getStakingTotalDaysById(uint256 arg1) {
    if arg1 > stakingCount:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Unable to reterive data on specified id, Please try again!!'
    return stakingTotalDaysById[arg1]
}

function stakingPaused() {
    return bool(stakingPaused)
}

function sub_dbbac56b(?) {
    if arg1 > stakingCount:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Unable to reterive data on specified id, Please try again!!'
    return sub_dbbac56b[arg1]
}

function sub_dcdd406e(?) {
    return sub_dcdd406e
}

function getStakingCount() {
    return stakingCount
}

function getStakingEndTimeById(uint256 arg1) {
    if arg1 > stakingCount:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Unable to reterive data on specified id, Please try again!!'
    return stakingEndTimeById[arg1]
}

function getStakingAddressById(uint256 arg1) {
    if arg1 > stakingCount:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Unable to reterive data on specified id, Please try again!!'
    return address(staking[arg1])
}

function getTokenReward() {
    return tokenReward
}

function getowner() {
    return owner
}

function _fallback() payable {
    revert
}

function pauseStaking() {
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You are not authenticate to make this transfer'
    stakingPaused = 1
    emit Paused()
}

function unpauseStaking() {
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You are not authenticate to make this transfer'
    stakingPaused = 0
    emit Unpaused()
}

function transferOwnership(address arg1) {
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You are not authenticate to make this transfer'
    owner = arg1
    return 1
}

function setContractAddress(address arg1) {
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You are not authenticate to make this transfer'
    stor2 = arg1
    return 1
}

function sub_0a1624ac(?) {
    if 30 == stakingTotalDaysById[arg1]:
        return (1530947 * sub_dbbac56b[arg1] / 100 * 10^6)
    if 60 == stakingTotalDaysById[arg1]:
        return (5128942 * sub_dbbac56b[arg1] / 100 * 10^6)
    if stakingTotalDaysById[arg1] != 90:
        return 0
    return (14185834 * sub_dbbac56b[arg1] / 100 * 10^6)
}

function withdrawNativeToken() {
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You are not authenticate to make this transfer'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function addTokenReward(uint256 arg1) {
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You are not authenticate to make this transfer'
    if arg1 + tokenReward < tokenReward:
        revert with 0, 'Calculation error'
    tokenReward += arg1
    require ext_code.size(stor2)
    call stor2.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return 1
}

function withdrawToken(uint256 arg1) {
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You are not authenticate to make this transfer'
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Please input valid value and tey again!!!'
    require ext_code.size(stor2)
    call stor2.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return 1
}

function withdrawAddedTokenReward(uint256 arg1) {
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You are not authenticate to make this transfer'
    if arg1 >= tokenReward:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Value is not feasible, Please Try Again!!!'
    if arg1 > tokenReward:
        revert with 0, 'Calculation error'
    tokenReward -= arg1
    require ext_code.size(stor2)
    call stor2.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return 1
}

function sub_fccd39a2(?) {
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Invalid Address, Pleae Try Again!!!'
    if not stor4[address(arg1)].field_0:
        mem[(32 * stor4[address(arg1)].field_0) + 128] = 32
        mem[(32 * stor4[address(arg1)].field_0) + 160] = stor4[address(arg1)].field_0
        mem[(32 * stor4[address(arg1)].field_0) + 192 len floor32(stor4[address(arg1)].field_0)] = mem[128 len floor32(stor4[address(arg1)].field_0)]
        return memory
          from (32 * stor4[address(arg1)].field_0) + 128
           len (96 * stor4[address(arg1)].field_0) + 64
    mem[128] = stor4[address(arg1)].field_0
    idx = 128
    s = 0
    while (32 * stor4[address(arg1)].field_0) + 96 > idx:
        mem[idx + 32] = stor4[address(arg1)][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor4[address(arg1)].field_0) + 192 len floor32(stor4[address(arg1)].field_0)] = mem[128 len floor32(stor4[address(arg1)].field_0)]
    return Array(len=stor4[address(arg1)].field_0, data=mem[128 len floor32(stor4[address(arg1)].field_0)], mem[(32 * stor4[address(arg1)].field_0) + floor32(stor4[address(arg1)].field_0) + 192 len (32 * stor4[address(arg1)].field_0) - floor32(stor4[address(arg1)].field_0)]), 
}

function sub_faa31c38(?) payable {
    if 0 >= msg.value:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Invalid Amount, Please Try Again!!! '
    if arg1 != 30:
        if arg1 != 60:
            if arg1 != 90:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Enter the Valid Time Period and Try Again !!!'
    if stakingPaused:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Staking is Paused, Please try after staking get unpaused!!!'
    stor14 = block.timestamp + (24 * 3600 * arg1)
    stakingCount++
    stakingTotalDaysById[stor12 + 1] = arg1
    uint256(staking[stor12]) = msg.sender or Mask(96, 160, uint256(staking[stor12]))
    stor4[msg.sender].field_0++
    stor4[msg.sender][stor4[msg.sender].field_0].field_0 = stakingCount
    stakingEndTimeById[stor12] = stor14
    stakingStartTimeById[stor12] = block.timestamp
    sub_dbbac56b[stor12] = msg.value
    if msg.value + sub_46525473[msg.sender] < sub_46525473[msg.sender]:
        revert with 0, 'Calculation error'
    sub_46525473[msg.sender] += msg.value
    stor8[stor12] = 0
    if msg.value + sub_dcdd406e < sub_dcdd406e:
        revert with 0, 'Calculation error'
    sub_dcdd406e += msg.value
    if msg.value + totalStakedAmount < totalStakedAmount:
        revert with 0, 'Calculation error'
    totalStakedAmount += msg.value
    return 1
}

function sub_b75fb28b(?) {
    if address(staking[arg1]) != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'No staked token found on this address and ID'
    if 1 == bool(stor8[arg1]):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Either tokens are already withdrawn or blocked by admin'
    if stakingTotalDaysById[arg1] != 30:
        if stakingTotalDaysById[arg1] != 60:
            if stakingTotalDaysById[arg1] != 90:
                return 0
    if block.timestamp < stakingStartTimeById[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Unable to Withdraw Stake amount before staking start time, Please Try Again Later!!!'
    stor8[arg1] = 1
    if block.timestamp < stakingEndTimeById[arg1]:
        finalStakeWithdraw[arg1] = sub_dbbac56b[arg1]
        call address(staking[arg1]) with:
           value sub_dbbac56b[arg1] wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        if 30 == stakingTotalDaysById[arg1]:
            if (1530947 * sub_dbbac56b[arg1] / 100 * 10^6) + sub_dbbac56b[arg1] < sub_dbbac56b[arg1]:
                revert with 0, 'Calculation error'
            finalStakeWithdraw[arg1] = (1530947 * sub_dbbac56b[arg1] / 100 * 10^6) + sub_dbbac56b[arg1]
        else:
            if 60 == stakingTotalDaysById[arg1]:
                if (5128942 * sub_dbbac56b[arg1] / 100 * 10^6) + sub_dbbac56b[arg1] < sub_dbbac56b[arg1]:
                    revert with 0, 'Calculation error'
                finalStakeWithdraw[arg1] = (5128942 * sub_dbbac56b[arg1] / 100 * 10^6) + sub_dbbac56b[arg1]
            else:
                if stakingTotalDaysById[arg1] != 90:
                    if sub_dbbac56b[arg1] < sub_dbbac56b[arg1]:
                        revert with 0, 'Calculation error'
                    finalStakeWithdraw[arg1] = sub_dbbac56b[arg1]
                else:
                    if (14185834 * sub_dbbac56b[arg1] / 100 * 10^6) + sub_dbbac56b[arg1] < sub_dbbac56b[arg1]:
                        revert with 0, 'Calculation error'
                    finalStakeWithdraw[arg1] = (14185834 * sub_dbbac56b[arg1] / 100 * 10^6) + sub_dbbac56b[arg1]
        call address(staking[arg1]) with:
           value sub_dbbac56b[arg1] wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(stor2)
        if 30 == stakingTotalDaysById[arg1]:
            call stor2.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, 1530947 * sub_dbbac56b[arg1] / 100 * 10^6
        else:
            if 60 == stakingTotalDaysById[arg1]:
                call stor2.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, 5128942 * sub_dbbac56b[arg1] / 100 * 10^6
            else:
                if stakingTotalDaysById[arg1] != 90:
                    call stor2.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, 0
                else:
                    call stor2.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, 14185834 * sub_dbbac56b[arg1] / 100 * 10^6
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    if sub_dbbac56b[arg1] > sub_dcdd406e:
        revert with 0, 'Calculation error'
    sub_dcdd406e -= sub_dbbac56b[arg1]
    return 1
}



}
