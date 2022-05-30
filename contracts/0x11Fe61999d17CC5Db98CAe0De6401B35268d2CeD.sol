contract main {




// =====================  Runtime code  =====================


#
#  - mistakenERC20DepositRescue(address arg1, address arg2, uint256 arg3)
#
const sub_5c894fe3(?) = 0x7308377bbcfee4c643b62e55a600f0c1ee294f1d8949667b05bfef816828e284

const _ADMIN = 0xae6c2fc584631af4c9385b8a55683f1a75c813747e27efef5afece31c6b230d3

const _RESCUE = 0x508f8f8be8f5dbcb88f4f4500430b8b3684c471ed936f31fea912c78ad46a6b9

const DEFAULT_ADMIN_ROLE = 0


mapping of struct roleAdmin;
uint8 stor1;
uint8 stor1; offset 8
uint8 stor1; offset 16
address stor1;
address sub_fa11fd5aAddress; offset 24
uint256 stor1; offset 16
uint256 stor1; offset 8
address stor2;
uint256 sub_68f34eb5;
uint256 sub_ba28fd2e;
uint256 sub_46255919;
uint256 sub_134e0f01;
uint8 stor7;
uint8 stor7; offset 8
uint8 stor7; offset 16
uint256 stor7; offset 16
array of address byIndex;
mapping of uint256 stakeOf;
mapping of uint256 totalRewardsOf;
mapping of uint256 lastWdHeight;

function totalRewardsOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return totalRewardsOf[address(arg1)]
}

function sub_134e0f01(?) payable {
    return sub_134e0f01
}

function getRoleAdmin(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return roleAdmin[arg1].field_256
}

function getByIndex(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 >= byIndex.length:
        revert with 'NH{q', 50
    return byIndex[arg1]
}

function stakeOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return stakeOf[address(arg1)]
}

function sub_46255919(?) payable {
    return sub_46255919
}

function sub_54887be2(?) payable {
    return bool(uint8(stor7.field_16))
}

function lastWdHeight() payable {
    return lastWdHeight[address(msg.sender)]
}

function paused() payable {
    return bool(uint8(stor7.field_8))
}

function sub_68f34eb5(?) payable {
    return sub_68f34eb5
}

function hasRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(roleAdmin[arg1][address(arg2)].field_0)
}

function sub_ad67ddcb(?) payable {
    return bool(uint8(stor7.field_0))
}

function getStakeholders() payable {
    return byIndex.length
}

function sub_ba28fd2e(?) payable {
    return sub_ba28fd2e
}

function queryPaused() payable {
    return bool(uint8(stor1.field_16))
}

function sub_fa11fd5a(?) payable {
    return sub_fa11fd5aAddress
}

function _fallback() payable {
    revert
}

function calculateReward(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not sub_68f34eb5:
        revert with 'NH{q', 18
    return (stakeOf[address(arg1)] / sub_68f34eb5)
}

function setAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require roleAdmin[0xae6c2fc584631af4c9385b8a55683f1a75c813747e27efef5afece31c6b230d3][address(msg.sender)].field_0
    stor2 = arg1
}

function stakeOff(bool arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require roleAdmin[0x7308377bbcfee4c643b62e55a600f0c1ee294f1d8949667b05bfef816828e284][address(msg.sender)].field_0
    uint8(stor7.field_0) = uint8(arg1)
}

function setEmergencyWDoff(bool arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require roleAdmin[0xae6c2fc584631af4c9385b8a55683f1a75c813747e27efef5afece31c6b230d3][address(msg.sender)].field_0
    Mask(240, 0, stor7.field_16) = Mask(240, 0, arg1)
}

function isStakeholder(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    idx = 0
    while idx < byIndex.length:
        mem[0] = 8
        if arg1 == byIndex[idx]:
            return 1, idx
        if idx > -2:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    return 0
}

function supportsInterface(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if Mask(32, 224, arg1) == 0x7965db0b00000000000000000000000000000000000000000000000000000000:
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
}

function sub_93977ade(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if sub_46255919 and sub_134e0f01 > -1 / sub_46255919:
        revert with 'NH{q', 17
    if lastWdHeight[address(arg1)] > (-1 * sub_46255919 * sub_134e0f01) - 1:
        revert with 'NH{q', 17
    return (lastWdHeight[address(arg1)] + (sub_46255919 * sub_134e0f01))
}

function renounceRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg2 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: can only renounce roles for self'
    if roleAdmin[arg1][address(arg2)].field_0:
        roleAdmin[arg1][address(arg2)].field_0 = 0
        emit RoleRevoked(arg1, arg2, msg.sender);
}

function rewardsAccrued() payable {
    if block.number < lastWdHeight[address(msg.sender)]:
        revert with 'NH{q', 17
    if not sub_46255919:
        revert with 'NH{q', 18
    if not sub_68f34eb5:
        revert with 'NH{q', 18
    if stakeOf[address(msg.sender)] / sub_68f34eb5 and block.number - lastWdHeight[address(msg.sender)] / sub_46255919 > -1 / stakeOf[address(msg.sender)] / sub_68f34eb5:
        revert with 'NH{q', 17
    return (stakeOf[address(msg.sender)] / sub_68f34eb5 * block.number - lastWdHeight[address(msg.sender)] / sub_46255919)
}

function setStakeCap(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if uint8(stor1.field_16):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SecureContract: Contract is paused'
    if uint8(stor7.field_0):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TokenStaking: Staking is not currently active'
    require roleAdmin[0x7308377bbcfee4c643b62e55a600f0c1ee294f1d8949667b05bfef816828e284][address(msg.sender)].field_0
    sub_ba28fd2e = arg1
}

function setStakeCalc(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if uint8(stor1.field_16):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SecureContract: Contract is paused'
    if uint8(stor7.field_0):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TokenStaking: Staking is not currently active'
    require roleAdmin[0x7308377bbcfee4c643b62e55a600f0c1ee294f1d8949667b05bfef816828e284][address(msg.sender)].field_0
    sub_68f34eb5 = arg1
}

function setRewardsWindow(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if uint8(stor1.field_16):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SecureContract: Contract is paused'
    if uint8(stor7.field_0):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TokenStaking: Staking is not currently active'
    require roleAdmin[0x7308377bbcfee4c643b62e55a600f0c1ee294f1d8949667b05bfef816828e284][address(msg.sender)].field_0
    sub_46255919 = arg1
}

function setStakeMultiplier(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if uint8(stor1.field_16):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SecureContract: Contract is paused'
    if uint8(stor7.field_0):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TokenStaking: Staking is not currently active'
    require roleAdmin[0x7308377bbcfee4c643b62e55a600f0c1ee294f1d8949667b05bfef816828e284][address(msg.sender)].field_0
    sub_134e0f01 = arg1
}

function setPaused(bool arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin[0xae6c2fc584631af4c9385b8a55683f1a75c813747e27efef5afece31c6b230d3][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SecureContract: Not admin - Permission denied'
    if arg1 != bool(uint8(stor1.field_16)):
        Mask(240, 0, stor1.field_16) = Mask(240, 0, arg1)
        if not arg1:
            emit ContractUnpaused(block.number, msg.sender);
        else:
            emit ContractPaused(block.number, msg.sender);
}

function sub_77147b6e(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    if not roleAdmin[0x508f8f8be8f5dbcb88f4f4500430b8b3684c471ed936f31fea912c78ad46a6b9][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TokenStaking: Message Sender must be _RESCUE'
    call address(arg1) with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit ETHRescued(address(arg1), arg2, block.number);
}

function init() payable {
    if uint8(stor1.field_8):
        if ext_code.size(this.address) > 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    else:
        if uint8(stor1.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    if not uint8(stor1.field_8):
        Mask(248, 0, stor1.field_8) = 1
        uint8(stor1.field_0) = 1
    if not roleAdmin[address(msg.sender)].field_0:
        roleAdmin[address(msg.sender)].field_0 = 1
        emit RoleGranted(0, msg.sender, msg.sender);
    if not roleAdmin[0xae6c2fc584631af4c9385b8a55683f1a75c813747e27efef5afece31c6b230d3][address(msg.sender)].field_0:
        roleAdmin[0xae6c2fc584631af4c9385b8a55683f1a75c813747e27efef5afece31c6b230d3][address(msg.sender)].field_0 = 1
        emit RoleGranted(0xae6c2fc584631af4c9385b8a55683f1a75c813747e27efef5afece31c6b230d3, msg.sender, msg.sender);
    Mask(240, 0, stor1.field_16) = 0
    sub_fa11fd5aAddress = msg.sender
    if not uint8(stor1.field_8):
        Mask(248, 0, stor1.field_8) = 0
}

function totalStakes() payable {
    idx = 0
    s = 0
    while idx < byIndex.length:
        mem[0] = byIndex[idx]
        mem[32] = 9
        if s > -stakeOf[stor8[idx]] - 1:
            revert with 'NH{q', 17
        if idx > -2:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s + stakeOf[stor8[idx]]
        continue 
    return (s * byIndex.length * byIndex.length * byIndex.length * byIndex.length * byIndex.length * byIndex.length * byIndex.length * byIndex.length * byIndex.length * byIndex.length * byIndex.length * byIndex.length * byIndex.length * byIndex.length * byIndex.length * byIndex.length * byIndex.length * byIndex.length * byIndex.length * byIndex.length * byIndex.length * byIndex.length * byIndex.length * byIndex.length * byIndex.length * byIndex.length * byIndex.length * byIndex.length * byIndex.length * byIndex.length * byIndex.length * byIndex.length * byIndex.length * byIndex.length * byIndex.length * byIndex.length * byIndex.length * byIndex.length * byIndex.length * byIndex.length * byIndex.length * byIndex.length * byIndex.length * byIndex.length * byIndex.length * byIndex.length * byIndex.length * byIndex.length * byIndex.length * byIndex.length * byIndex.length * byIndex.length * byIndex.length * byIndex.length * byIndex.length * byIndex.length * byIndex.length * byIndex.length * byIndex.length * byIndex.length * byIndex.length * byIndex.length * byIndex.length * byIndex.length * byIndex.length * byIndex.length * byIndex.length * byIndex.length * byIndex.length * byIndex.length * byIndex.length * byIndex.length * byIndex.length * byIndex.length * byIndex.length * byIndex.length * byIndex.length * byIndex.length * byIndex.length * byIndex.length)
}

function totalRewardsPaid() payable {
    idx = 0
    s = 0
    while idx < byIndex.length:
        mem[0] = byIndex[idx]
        mem[32] = 10
        if s > -totalRewardsOf[stor8[idx]] - 1:
            revert with 'NH{q', 17
        if idx > -2:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s + totalRewardsOf[stor8[idx]]
        continue 
    return (s * byIndex.length * byIndex.length * byIndex.length * byIndex.length * byIndex.length * byIndex.length * byIndex.length * byIndex.length * byIndex.length * byIndex.length * byIndex.length * byIndex.length * byIndex.length * byIndex.length * byIndex.length * byIndex.length * byIndex.length * byIndex.length * byIndex.length * byIndex.length * byIndex.length * byIndex.length * byIndex.length * byIndex.length * byIndex.length * byIndex.length * byIndex.length * byIndex.length * byIndex.length * byIndex.length * byIndex.length * byIndex.length * byIndex.length * byIndex.length * byIndex.length * byIndex.length * byIndex.length * byIndex.length * byIndex.length * byIndex.length * byIndex.length * byIndex.length * byIndex.length * byIndex.length * byIndex.length * byIndex.length * byIndex.length * byIndex.length * byIndex.length * byIndex.length * byIndex.length * byIndex.length * byIndex.length * byIndex.length * byIndex.length * byIndex.length * byIndex.length * byIndex.length * byIndex.length * byIndex.length * byIndex.length * byIndex.length * byIndex.length * byIndex.length * byIndex.length * byIndex.length * byIndex.length * byIndex.length * byIndex.length * byIndex.length * byIndex.length * byIndex.length * byIndex.length * byIndex.length * byIndex.length * byIndex.length * byIndex.length * byIndex.length * byIndex.length * byIndex.length)
}

function revokeRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if roleAdmin[roleAdmin[arg1].field_256][address(msg.sender)].field_0:
        if roleAdmin[arg1][address(arg2)].field_0:
            roleAdmin[arg1][address(arg2)].field_0 = 0
            emit RoleRevoked(arg1, arg2, msg.sender);
    mem[128 len 42] = call.data[calldata.size len 42]
    mem[129 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
    idx = 41
    s = address(msg.sender)
    while idx > 1:
        if s % 16 >= 16:
            revert with 'NH{q', 50
        if idx >= 42:
            revert with 'NH{q', 50
        mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 'NH{q', 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if msg.sender + 10240:
        revert with 0, 'Strings: hex length insufficient'
    mem[224 len 66] = call.data[calldata.size len 66]
    mem[225 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
    idx = 65
    s = roleAdmin[arg1].field_256
    while idx > 1:
        if s % 16 >= 16:
            revert with 'NH{q', 50
        if idx >= 66:
            revert with 'NH{q', 50
        mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 'NH{q', 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if roleAdmin[arg1].field_256 + 16384:
        revert with 0, 'Strings: hex length insufficient'
    mem[352] = 'AccessControl: account '
    mem[375 len 64] = 0, mem[129 len 63]
    mem[417] = ' is missing role '
    mem[434 len 96] = 0, mem[225 len 95]
    mem[500] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[504] = 32
    mem[536] = mem[320]
    mem[568 len ceil32(mem[320])] = mem[352 len ceil32(mem[320])]
    if ceil32(mem[320]) > mem[320]:
        mem[mem[320] + 568] = 0
    revert with 0, 32, mem[320], mem[568 len ceil32(mem[320])]
}

function grantRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if roleAdmin[roleAdmin[arg1].field_256][address(msg.sender)].field_0:
        if not roleAdmin[arg1][address(arg2)].field_0:
            roleAdmin[arg1][address(arg2)].field_0 = 1
            emit RoleGranted(arg1, arg2, msg.sender);
    mem[128 len 42] = call.data[calldata.size len 42]
    mem[129 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
    idx = 41
    s = address(msg.sender)
    while idx > 1:
        if s % 16 >= 16:
            revert with 'NH{q', 50
        if idx >= 42:
            revert with 'NH{q', 50
        mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 'NH{q', 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if msg.sender + 10240:
        revert with 0, 'Strings: hex length insufficient'
    mem[224 len 66] = call.data[calldata.size len 66]
    mem[225 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
    idx = 65
    s = roleAdmin[arg1].field_256
    while idx > 1:
        if s % 16 >= 16:
            revert with 'NH{q', 50
        if idx >= 66:
            revert with 'NH{q', 50
        mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 'NH{q', 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if roleAdmin[arg1].field_256 + 16384:
        revert with 0, 'Strings: hex length insufficient'
    mem[352] = 'AccessControl: account '
    mem[375 len 64] = 0, mem[129 len 63]
    mem[417] = ' is missing role '
    mem[434 len 96] = 0, mem[225 len 95]
    mem[500] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[504] = 32
    mem[536] = mem[320]
    mem[568 len ceil32(mem[320])] = mem[352 len ceil32(mem[320])]
    if ceil32(mem[320]) > mem[320]:
        mem[mem[320] + 568] = 0
    revert with 0, 32, mem[320], mem[568 len ceil32(mem[320])]
}

function emergencyWithdrawRewardAndStakes() payable {
    if uint8(stor7.field_16):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TokenStaking: Emergency Withdraw is not enabled'
    if block.number < lastWdHeight[address(msg.sender)]:
        revert with 'NH{q', 17
    if not sub_46255919:
        revert with 'NH{q', 18
    if not sub_68f34eb5:
        revert with 'NH{q', 18
    if stakeOf[address(msg.sender)] / sub_68f34eb5 and block.number - lastWdHeight[address(msg.sender)] / sub_46255919 > -1 / stakeOf[address(msg.sender)] / sub_68f34eb5:
        revert with 'NH{q', 17
    if totalRewardsOf[address(msg.sender)] > (-1 * stakeOf[address(msg.sender)] / sub_68f34eb5 * block.number - lastWdHeight[address(msg.sender)] / sub_46255919) - 1:
        revert with 'NH{q', 17
    totalRewardsOf[address(msg.sender)] += stakeOf[address(msg.sender)] / sub_68f34eb5 * block.number - lastWdHeight[address(msg.sender)] / sub_46255919
    if block.number < lastWdHeight[address(msg.sender)]:
        revert with 'NH{q', 17
    if not sub_46255919:
        revert with 'NH{q', 18
    if not sub_68f34eb5:
        revert with 'NH{q', 18
    if stakeOf[address(msg.sender)] / sub_68f34eb5 and block.number - lastWdHeight[address(msg.sender)] / sub_46255919 > -1 / stakeOf[address(msg.sender)] / sub_68f34eb5:
        revert with 'NH{q', 17
    if stakeOf[address(msg.sender)] / sub_68f34eb5 * block.number - lastWdHeight[address(msg.sender)] / sub_46255919 > -stakeOf[address(msg.sender)] - 1:
        revert with 'NH{q', 17
    require ext_code.size(stor2)
    call stor2.mintTo(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, (stakeOf[address(msg.sender)] / sub_68f34eb5 * block.number - lastWdHeight[address(msg.sender)] / sub_46255919) + stakeOf[address(msg.sender)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if stakeOf[address(msg.sender)] < stakeOf[address(msg.sender)]:
        revert with 'NH{q', 17
    stakeOf[address(msg.sender)] = 0
    idx = 0
    while idx < byIndex.length:
        mem[0] = 8
        if byIndex[idx] != msg.sender:
            if idx > -2:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        if byIndex.length < 1:
            revert with 'NH{q', 17
        if byIndex.length - 1 >= byIndex.length:
            revert with 'NH{q', 50
        if idx >= byIndex.length:
            revert with 'NH{q', 50
        byIndex[idx] = byIndex[byIndex.length]
        if not byIndex.length:
            revert with 'NH{q', 49
        byIndex[byIndex.length] = 0
        byIndex.length--
}

function withdrawReward() payable {
    if uint8(stor1.field_16):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SecureContract: Contract is paused'
    if uint8(stor7.field_0):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TokenStaking: Staking is not currently active'
    if block.number < lastWdHeight[address(msg.sender)]:
        revert with 'NH{q', 17
    if not sub_46255919:
        revert with 'NH{q', 18
    if not sub_68f34eb5:
        revert with 'NH{q', 18
    if stakeOf[address(msg.sender)] / sub_68f34eb5 and block.number - lastWdHeight[address(msg.sender)] / sub_46255919 > -1 / stakeOf[address(msg.sender)] / sub_68f34eb5:
        revert with 'NH{q', 17
    if totalRewardsOf[address(msg.sender)] > (-1 * stakeOf[address(msg.sender)] / sub_68f34eb5 * block.number - lastWdHeight[address(msg.sender)] / sub_46255919) - 1:
        revert with 'NH{q', 17
    totalRewardsOf[address(msg.sender)] += stakeOf[address(msg.sender)] / sub_68f34eb5 * block.number - lastWdHeight[address(msg.sender)] / sub_46255919
    if not lastWdHeight[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'TokenStaking: You cannot withdraw if you hve never staked'
    if lastWdHeight[address(msg.sender)]:
        if lastWdHeight[address(msg.sender)] > -sub_46255919 - 1:
            revert with 'NH{q', 17
        if block.number <= lastWdHeight[address(msg.sender)] + sub_46255919:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'TokenStaking: It hasn't been enough time since your last withdrawl'
        if block.number < lastWdHeight[address(msg.sender)]:
            revert with 'NH{q', 17
        if not sub_46255919:
            revert with 'NH{q', 18
        if not sub_68f34eb5:
            revert with 'NH{q', 18
        if stakeOf[address(msg.sender)] / sub_68f34eb5 and block.number - lastWdHeight[address(msg.sender)] / sub_46255919 > -1 / stakeOf[address(msg.sender)] / sub_68f34eb5:
            revert with 'NH{q', 17
        require ext_code.size(stor2)
        call stor2.mintTo(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args msg.sender, stakeOf[address(msg.sender)] / sub_68f34eb5 * block.number - lastWdHeight[address(msg.sender)] / sub_46255919
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        lastWdHeight[address(msg.sender)] = block.number
        if block.number < lastWdHeight[address(msg.sender)]:
            revert with 'NH{q', 17
        if not sub_46255919:
            revert with 'NH{q', 18
        if not sub_68f34eb5:
            revert with 'NH{q', 18
        if stakeOf[address(msg.sender)] / sub_68f34eb5 and block.number - lastWdHeight[address(msg.sender)] / sub_46255919 > -1 / stakeOf[address(msg.sender)] / sub_68f34eb5:
            revert with 'NH{q', 17
        emit RewardsWithdrawn(msg.sender, stakeOf[address(msg.sender)] / sub_68f34eb5 * block.number - lastWdHeight[address(msg.sender)] / sub_46255919, block.number);
}

function createStake(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if uint8(stor1.field_16):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SecureContract: Contract is paused'
    if uint8(stor7.field_0):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TokenStaking: Staking is not currently active'
    if block.number < lastWdHeight[address(msg.sender)]:
        revert with 'NH{q', 17
    if not sub_46255919:
        revert with 'NH{q', 18
    if not sub_68f34eb5:
        revert with 'NH{q', 18
    if stakeOf[address(msg.sender)] / sub_68f34eb5 and block.number - lastWdHeight[address(msg.sender)] / sub_46255919 > -1 / stakeOf[address(msg.sender)] / sub_68f34eb5:
        revert with 'NH{q', 17
    if stakeOf[address(msg.sender)] / sub_68f34eb5 * block.number - lastWdHeight[address(msg.sender)] / sub_46255919:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'TokenStaking: Rewards must be withdrawn or compunded first'
    if block.number < lastWdHeight[address(msg.sender)]:
        revert with 'NH{q', 17
    if not sub_46255919:
        revert with 'NH{q', 18
    if not sub_68f34eb5:
        revert with 'NH{q', 18
    if stakeOf[address(msg.sender)] / sub_68f34eb5 and block.number - lastWdHeight[address(msg.sender)] / sub_46255919 > -1 / stakeOf[address(msg.sender)] / sub_68f34eb5:
        revert with 'NH{q', 17
    if totalRewardsOf[address(msg.sender)] > (-1 * stakeOf[address(msg.sender)] / sub_68f34eb5 * block.number - lastWdHeight[address(msg.sender)] / sub_46255919) - 1:
        revert with 'NH{q', 17
    totalRewardsOf[address(msg.sender)] += stakeOf[address(msg.sender)] / sub_68f34eb5 * block.number - lastWdHeight[address(msg.sender)] / sub_46255919
    if not stakeOf[address(msg.sender)]:
        if uint8(stor1.field_16):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SecureContract: Contract is paused'
        if uint8(stor7.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TokenStaking: Staking is not currently active'
        idx = 0
        while idx < byIndex.length:
            mem[0] = 8
            if byIndex[idx] != msg.sender:
                if idx > -2:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            if stakeOf[address(msg.sender)] > -arg1 - 1:
                revert with 'NH{q', 17
            stakeOf[address(msg.sender)] += arg1
            require ext_code.size(stor2)
            call stor2.0x79cc6790 with:
                 gas gas_remaining wei
                args msg.sender, arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if stakeOf[address(msg.sender)] > sub_ba28fd2e:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            'TokenStaking: Can't Stake More than allowed moneybags'
            lastWdHeight[address(msg.sender)] = block.number
            emit StakeCreated(msg.sender, arg1, block.number);
        byIndex.length++
        byIndex[byIndex.length] = msg.sender
    if stakeOf[address(msg.sender)] > -arg1 - 1:
        revert with 'NH{q', 17
    stakeOf[address(msg.sender)] += arg1
    require ext_code.size(stor2)
    call stor2.0x79cc6790 with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if stakeOf[address(msg.sender)] > sub_ba28fd2e:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'TokenStaking: Can't Stake More than allowed moneybags'
    lastWdHeight[address(msg.sender)] = block.number
    emit StakeCreated(msg.sender, arg1, block.number);
}

function compoundRewards() payable {
    if uint8(stor1.field_16):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SecureContract: Contract is paused'
    if uint8(stor7.field_0):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TokenStaking: Staking is not currently active'
    if block.number < lastWdHeight[address(msg.sender)]:
        revert with 'NH{q', 17
    if not sub_46255919:
        revert with 'NH{q', 18
    if not sub_68f34eb5:
        revert with 'NH{q', 18
    if stakeOf[address(msg.sender)] / sub_68f34eb5 and block.number - lastWdHeight[address(msg.sender)] / sub_46255919 > -1 / stakeOf[address(msg.sender)] / sub_68f34eb5:
        revert with 'NH{q', 17
    if totalRewardsOf[address(msg.sender)] > (-1 * stakeOf[address(msg.sender)] / sub_68f34eb5 * block.number - lastWdHeight[address(msg.sender)] / sub_46255919) - 1:
        revert with 'NH{q', 17
    totalRewardsOf[address(msg.sender)] += stakeOf[address(msg.sender)] / sub_68f34eb5 * block.number - lastWdHeight[address(msg.sender)] / sub_46255919
    if not stakeOf[address(msg.sender)]:
        if uint8(stor1.field_16):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SecureContract: Contract is paused'
        if uint8(stor7.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TokenStaking: Staking is not currently active'
        idx = 0
        while idx < byIndex.length:
            mem[0] = 8
            if byIndex[idx] != msg.sender:
                if idx > -2:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            if block.number < lastWdHeight[address(msg.sender)]:
                revert with 'NH{q', 17
            if not sub_46255919:
                revert with 'NH{q', 18
            if not sub_68f34eb5:
                revert with 'NH{q', 18
            if stakeOf[address(msg.sender)] / sub_68f34eb5 and block.number - lastWdHeight[address(msg.sender)] / sub_46255919 > -1 / stakeOf[address(msg.sender)] / sub_68f34eb5:
                revert with 'NH{q', 17
            if stakeOf[address(msg.sender)] > (-1 * stakeOf[address(msg.sender)] / sub_68f34eb5 * block.number - lastWdHeight[address(msg.sender)] / sub_46255919) - 1:
                revert with 'NH{q', 17
            stakeOf[address(msg.sender)] += stakeOf[address(msg.sender)] / sub_68f34eb5 * block.number - lastWdHeight[address(msg.sender)] / sub_46255919
            if stakeOf[address(msg.sender)] > sub_ba28fd2e:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            'TokenStaking: Can't Stake More than allowed moneybags'
            lastWdHeight[address(msg.sender)] = block.number
            if block.number < lastWdHeight[address(msg.sender)]:
                revert with 'NH{q', 17
            if not sub_46255919:
                revert with 'NH{q', 18
            if not sub_68f34eb5:
                revert with 'NH{q', 18
            if stakeOf[address(msg.sender)] / sub_68f34eb5 and block.number - lastWdHeight[address(msg.sender)] / sub_46255919 > -1 / stakeOf[address(msg.sender)] / sub_68f34eb5:
                revert with 'NH{q', 17
            emit rewardsCompunded(msg.sender, stakeOf[address(msg.sender)] / sub_68f34eb5 * block.number - lastWdHeight[address(msg.sender)] / sub_46255919, block.number);
        byIndex.length++
        byIndex[byIndex.length] = msg.sender
    if block.number < lastWdHeight[address(msg.sender)]:
        revert with 'NH{q', 17
    if not sub_46255919:
        revert with 'NH{q', 18
    if not sub_68f34eb5:
        revert with 'NH{q', 18
    if stakeOf[address(msg.sender)] / sub_68f34eb5 and block.number - lastWdHeight[address(msg.sender)] / sub_46255919 > -1 / stakeOf[address(msg.sender)] / sub_68f34eb5:
        revert with 'NH{q', 17
    if stakeOf[address(msg.sender)] > (-1 * stakeOf[address(msg.sender)] / sub_68f34eb5 * block.number - lastWdHeight[address(msg.sender)] / sub_46255919) - 1:
        revert with 'NH{q', 17
    stakeOf[address(msg.sender)] += stakeOf[address(msg.sender)] / sub_68f34eb5 * block.number - lastWdHeight[address(msg.sender)] / sub_46255919
    if stakeOf[address(msg.sender)] > sub_ba28fd2e:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'TokenStaking: Can't Stake More than allowed moneybags'
    lastWdHeight[address(msg.sender)] = block.number
    if block.number < lastWdHeight[address(msg.sender)]:
        revert with 'NH{q', 17
    if not sub_46255919:
        revert with 'NH{q', 18
    if not sub_68f34eb5:
        revert with 'NH{q', 18
    if stakeOf[address(msg.sender)] / sub_68f34eb5 and block.number - lastWdHeight[address(msg.sender)] / sub_46255919 > -1 / stakeOf[address(msg.sender)] / sub_68f34eb5:
        revert with 'NH{q', 17
    emit rewardsCompunded(msg.sender, stakeOf[address(msg.sender)] / sub_68f34eb5 * block.number - lastWdHeight[address(msg.sender)] / sub_46255919, block.number);
}

function removeStake(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if uint8(stor1.field_16):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SecureContract: Contract is paused'
    if sub_46255919 and sub_134e0f01 > -1 / sub_46255919:
        revert with 'NH{q', 17
    if lastWdHeight[address(msg.sender)] > (-1 * sub_46255919 * sub_134e0f01) - 1:
        revert with 'NH{q', 17
    if block.number < lastWdHeight[address(msg.sender)] + (sub_46255919 * sub_134e0f01):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'TokenStaking: FMTA has not been staked for long enough'
    if block.number < lastWdHeight[address(msg.sender)]:
        revert with 'NH{q', 17
    if not sub_46255919:
        revert with 'NH{q', 18
    if not sub_68f34eb5:
        revert with 'NH{q', 18
    if stakeOf[address(msg.sender)] / sub_68f34eb5 and block.number - lastWdHeight[address(msg.sender)] / sub_46255919 > -1 / stakeOf[address(msg.sender)] / sub_68f34eb5:
        revert with 'NH{q', 17
    if totalRewardsOf[address(msg.sender)] > (-1 * stakeOf[address(msg.sender)] / sub_68f34eb5 * block.number - lastWdHeight[address(msg.sender)] / sub_46255919) - 1:
        revert with 'NH{q', 17
    totalRewardsOf[address(msg.sender)] += stakeOf[address(msg.sender)] / sub_68f34eb5 * block.number - lastWdHeight[address(msg.sender)] / sub_46255919
    if not stakeOf[address(msg.sender)]:
        if arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TokenStaking: You don't have any tokens staked'
    if not stakeOf[address(msg.sender)]:
        if not stakeOf[address(msg.sender)]:
            idx = 0
            while idx < byIndex.length:
                mem[0] = 8
                if byIndex[idx] != msg.sender:
                    if idx > -2:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if byIndex.length < 1:
                    revert with 'NH{q', 17
                if byIndex.length - 1 >= byIndex.length:
                    revert with 'NH{q', 50
                if idx >= byIndex.length:
                    revert with 'NH{q', 50
                byIndex[idx] = byIndex[byIndex.length]
                if not byIndex.length:
                    revert with 'NH{q', 49
                byIndex[byIndex.length] = 0
                byIndex.length--
                emit StakeRemoved(address(msg.sender), arg1, 0, block.number);
        emit StakeRemoved(address(msg.sender), arg1, 0, block.number);
    else:
        if not arg1:
            if not stakeOf[address(msg.sender)]:
                idx = 0
                while idx < byIndex.length:
                    mem[0] = 8
                    if byIndex[idx] != msg.sender:
                        if idx > -2:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                    if byIndex.length < 1:
                        revert with 'NH{q', 17
                    if byIndex.length - 1 >= byIndex.length:
                        revert with 'NH{q', 50
                    if idx >= byIndex.length:
                        revert with 'NH{q', 50
                    byIndex[idx] = byIndex[byIndex.length]
                    if not byIndex.length:
                        revert with 'NH{q', 49
                    byIndex[byIndex.length] = 0
                    byIndex.length--
                    emit StakeRemoved(address(msg.sender), arg1, 0, block.number);
            emit StakeRemoved(address(msg.sender), arg1, 0, block.number);
        else:
            if block.number < lastWdHeight[address(msg.sender)]:
                revert with 'NH{q', 17
            if not sub_46255919:
                revert with 'NH{q', 18
            if not sub_68f34eb5:
                revert with 'NH{q', 18
            if stakeOf[address(msg.sender)] / sub_68f34eb5 and block.number - lastWdHeight[address(msg.sender)] / sub_46255919 > -1 / stakeOf[address(msg.sender)] / sub_68f34eb5:
                revert with 'NH{q', 17
            if stakeOf[address(msg.sender)] / sub_68f34eb5 * block.number - lastWdHeight[address(msg.sender)] / sub_46255919 > -arg1 - 1:
                revert with 'NH{q', 17
            require ext_code.size(stor2)
            call stor2.mintTo(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args msg.sender, (stakeOf[address(msg.sender)] / sub_68f34eb5 * block.number - lastWdHeight[address(msg.sender)] / sub_46255919) + arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if stakeOf[address(msg.sender)] < arg1:
                revert with 'NH{q', 17
            stakeOf[address(msg.sender)] -= arg1
            lastWdHeight[address(msg.sender)] = block.number
            if not stakeOf[address(msg.sender)]:
                idx = 0
                while idx < byIndex.length:
                    mem[0] = 8
                    if byIndex[idx] != msg.sender:
                        if idx > -2:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                    if byIndex.length < 1:
                        revert with 'NH{q', 17
                    if byIndex.length - 1 >= byIndex.length:
                        revert with 'NH{q', 50
                    if idx >= byIndex.length:
                        revert with 'NH{q', 50
                    byIndex[idx] = byIndex[byIndex.length]
                    if not byIndex.length:
                        revert with 'NH{q', 49
                    byIndex[byIndex.length] = 0
                    byIndex.length--
                    emit StakeRemoved(address(msg.sender), arg1, (stakeOf[address(msg.sender)] / sub_68f34eb5 * block.number - lastWdHeight[address(msg.sender)] / sub_46255919) + arg1, block.number);
            emit StakeRemoved(address(msg.sender), arg1, (stakeOf[address(msg.sender)] / sub_68f34eb5 * block.number - lastWdHeight[address(msg.sender)] / sub_46255919) + arg1, block.number);
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if sub_fa11fd5aAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SecureContract: Not owner - Permission denied'
    if not roleAdmin[uint256(roleAdmin.field_256)][address(msg.sender)].field_0:
        mem[128 len 42] = call.data[calldata.size len 42]
        mem[129 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
        idx = 41
        s = address(msg.sender)
        while idx > 1:
            if s % 16 >= 16:
                revert with 'NH{q', 50
            if idx >= 42:
                revert with 'NH{q', 50
            mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 'NH{q', 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if msg.sender + 10240:
            revert with 0, 'Strings: hex length insufficient'
        mem[224 len 66] = call.data[calldata.size len 66]
        mem[225 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
        idx = 65
        s = uint256(roleAdmin.field_256)
        while idx > 1:
            if s % 16 >= 16:
                revert with 'NH{q', 50
            if idx >= 66:
                revert with 'NH{q', 50
            mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 'NH{q', 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if uint256(roleAdmin.field_256) + 16384:
            revert with 0, 'Strings: hex length insufficient'
    else:
        if not roleAdmin[address(arg1)].field_0:
            roleAdmin[address(arg1)].field_0 = 1
            emit RoleGranted(0, arg1, msg.sender);
        if not roleAdmin[roleAdmin[0xae6c2fc584631af4c9385b8a55683f1a75c813747e27efef5afece31c6b230d3].field_256][address(msg.sender)].field_0:
            mem[128 len 42] = call.data[calldata.size len 42]
            mem[129 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
            idx = 41
            s = address(msg.sender)
            while idx > 1:
                if s % 16 >= 16:
                    revert with 'NH{q', 50
                if idx >= 42:
                    revert with 'NH{q', 50
                mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                if not idx:
                    revert with 'NH{q', 17
                idx = idx - 1
                s = Mask(252, 0, s) * 0.0625
                continue 
            if msg.sender + 10240:
                revert with 0, 'Strings: hex length insufficient'
            mem[224 len 66] = call.data[calldata.size len 66]
            mem[225 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
            idx = 65
            s = roleAdmin[0xae6c2fc584631af4c9385b8a55683f1a75c813747e27efef5afece31c6b230d3].field_256
            while idx > 1:
                if s % 16 >= 16:
                    revert with 'NH{q', 50
                if idx >= 66:
                    revert with 'NH{q', 50
                mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                if not idx:
                    revert with 'NH{q', 17
                idx = idx - 1
                s = Mask(252, 0, s) * 0.0625
                continue 
            if roleAdmin[0xae6c2fc584631af4c9385b8a55683f1a75c813747e27efef5afece31c6b230d3].field_256 + 16384:
                revert with 0, 'Strings: hex length insufficient'
        else:
            if not roleAdmin[0xae6c2fc584631af4c9385b8a55683f1a75c813747e27efef5afece31c6b230d3][address(arg1)].field_0:
                roleAdmin[0xae6c2fc584631af4c9385b8a55683f1a75c813747e27efef5afece31c6b230d3][address(arg1)].field_0 = 1
                emit RoleGranted(0xae6c2fc584631af4c9385b8a55683f1a75c813747e27efef5afece31c6b230d3, arg1, msg.sender);
            if not roleAdmin[roleAdmin[0xae6c2fc584631af4c9385b8a55683f1a75c813747e27efef5afece31c6b230d3].field_256][address(msg.sender)].field_0:
                mem[128 len 42] = call.data[calldata.size len 42]
                mem[129 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
                idx = 41
                s = address(msg.sender)
                while idx > 1:
                    if s % 16 >= 16:
                        revert with 'NH{q', 50
                    if idx >= 42:
                        revert with 'NH{q', 50
                    mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                    if not idx:
                        revert with 'NH{q', 17
                    idx = idx - 1
                    s = Mask(252, 0, s) * 0.0625
                    continue 
                if msg.sender + 10240:
                    revert with 0, 'Strings: hex length insufficient'
                mem[224 len 66] = call.data[calldata.size len 66]
                mem[225 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
                idx = 65
                s = roleAdmin[0xae6c2fc584631af4c9385b8a55683f1a75c813747e27efef5afece31c6b230d3].field_256
                while idx > 1:
                    if s % 16 >= 16:
                        revert with 'NH{q', 50
                    if idx >= 66:
                        revert with 'NH{q', 50
                    mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                    if not idx:
                        revert with 'NH{q', 17
                    idx = idx - 1
                    s = Mask(252, 0, s) * 0.0625
                    continue 
                if roleAdmin[0xae6c2fc584631af4c9385b8a55683f1a75c813747e27efef5afece31c6b230d3].field_256 + 16384:
                    revert with 0, 'Strings: hex length insufficient'
            else:
                if roleAdmin[0xae6c2fc584631af4c9385b8a55683f1a75c813747e27efef5afece31c6b230d3][address(stor1.field_0)].field_0:
                    roleAdmin[0xae6c2fc584631af4c9385b8a55683f1a75c813747e27efef5afece31c6b230d3][address(stor1.field_0)].field_0 = 0
                    emit RoleRevoked(0xae6c2fc584631af4c9385b8a55683f1a75c813747e27efef5afece31c6b230d3, sub_fa11fd5aAddress, msg.sender);
                if roleAdmin[uint256(roleAdmin.field_256)][address(msg.sender)].field_0:
                    if roleAdmin[address(stor1.field_0)].field_0:
                        roleAdmin[address(stor1.field_0)].field_0 = 0
                        emit RoleRevoked(0, sub_fa11fd5aAddress, msg.sender);
                    sub_fa11fd5aAddress = arg1
                    emit OwnershipTransferred(address(stor1.field_0), arg1);
                mem[128 len 42] = call.data[calldata.size len 42]
                mem[129 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
                idx = 41
                s = address(msg.sender)
                while idx > 1:
                    if s % 16 >= 16:
                        revert with 'NH{q', 50
                    if idx >= 42:
                        revert with 'NH{q', 50
                    mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                    if not idx:
                        revert with 'NH{q', 17
                    idx = idx - 1
                    s = Mask(252, 0, s) * 0.0625
                    continue 
                if msg.sender + 10240:
                    revert with 0, 'Strings: hex length insufficient'
                mem[224 len 66] = call.data[calldata.size len 66]
                mem[225 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
                idx = 65
                s = uint256(roleAdmin.field_256)
                while idx > 1:
                    if s % 16 >= 16:
                        revert with 'NH{q', 50
                    if idx >= 66:
                        revert with 'NH{q', 50
                    mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                    if not idx:
                        revert with 'NH{q', 17
                    idx = idx - 1
                    s = Mask(252, 0, s) * 0.0625
                    continue 
                if uint256(roleAdmin.field_256) + 16384:
                    revert with 0, 'Strings: hex length insufficient'
    mem[352] = 'AccessControl: account '
    mem[375 len 64] = 0, mem[129 len 63]
    mem[417] = ' is missing role '
    mem[434 len 96] = 0, mem[225 len 95]
    mem[500] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[504] = 32
    mem[536] = mem[320]
    mem[568 len ceil32(mem[320])] = mem[352 len ceil32(mem[320])]
    if ceil32(mem[320]) > mem[320]:
        mem[mem[320] + 568] = 0
    revert with 0, 32, mem[320], mem[568 len ceil32(mem[320])]
}



}
