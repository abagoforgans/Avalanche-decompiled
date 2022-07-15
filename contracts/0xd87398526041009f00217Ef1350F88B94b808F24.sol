contract main {




// =====================  Runtime code  =====================


const decimals = 18

const ADMIN_ROLE = 0xfea49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c217

const DEFAULT_ADMIN_ROLE = 0


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of struct stor3;
array of struct stor4;
mapping of struct roleAdmin;
uint256 totalDeposits;
address feeDestinationAddress;
address routerAddress;
address depositTokenAddress;
address rewardToken1Address;
address poolTokenAddress;
address stakingContractAddress;
uint16 stor13;
uint16 poolId; offset 160
address poolContractAddress;
uint256 pid;
uint256 MIN_TOKENS_TO_REINVEST;
uint256 REINVEST_REWARD_BIPS;
uint256 ADMIN_FEE_BIPS;
uint256 WITHDRAW_FEE_BIPS;
uint8 stor19;
uint256 stor19;
uint256 sub_03cac7e5;

function sub_03cac7e5(?) payable {
    return sub_03cac7e5
}

function ADMIN_FEE_BIPS() payable {
    return ADMIN_FEE_BIPS
}

function totalSupply() payable {
    return totalSupply
}

function getRoleAdmin(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_256
}

function poolId() payable {
    return poolId
}

function sub_6e51b454(?) payable {
    return bool(uint8(stor19))
}

function rewardToken1() payable {
    return rewardToken1Address
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function totalDeposits() payable {
    return totalDeposits
}

function poolContract() payable {
    return poolContractAddress
}

function REINVEST_REWARD_BIPS() payable {
    return REINVEST_REWARD_BIPS
}

function hasRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return bool(roleAdmin[arg1][address(arg2)].field_0)
}

function MIN_TOKENS_TO_REINVEST() payable {
    return MIN_TOKENS_TO_REINVEST
}

function depositToken() payable {
    return depositTokenAddress
}

function poolToken() payable {
    return poolTokenAddress
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function feeDestination() payable {
    return feeDestinationAddress
}

function WITHDRAW_FEE_BIPS() payable {
    return WITHDRAW_FEE_BIPS
}

function stakingContract() payable {
    return stakingContractAddress
}

function pid() payable {
    return pid
}

function router() payable {
    return routerAddress
}

function _fallback() payable {
    revert
}

function sub_5bf3e824(?) payable {
    require calldata.size - 4 >= 32
    if not roleAdmin[0xfea49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c217][address(msg.sender)].field_0:
        revert with 0, 'Caller is not an admin'
    emit 0x8c59740e: sub_03cac7e5, arg1
    sub_03cac7e5 = arg1
}

function setFeeDestination(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin[0xfea49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c217][address(msg.sender)].field_0:
        revert with 0, 'Caller is not an admin'
    feeDestinationAddress = arg1
}

function sub_5dba42fc(?) payable {
    if not roleAdmin[0xfea49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c217][address(msg.sender)].field_0:
        revert with 0, 'Caller is not an admin'
    uint256(stor19) = not uint8(stor19) or Mask(248, 8, uint256(stor19))
    emit 0x714f96e8: bool(uint8(not uint8(stor19)))
}

function supportsInterface(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if 0x7965db0b00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
}

function updateMinTokensToReinvest(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not roleAdmin[0xfea49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c217][address(msg.sender)].field_0:
        revert with 0, 'Caller is not an admin'
    emit UpdateMinTokensToReinvest(MIN_TOKENS_TO_REINVEST, arg1);
    MIN_TOKENS_TO_REINVEST = arg1
}

function getDepositTokensForShares(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if totalSupply and totalDeposits > -1 / totalSupply:
        revert with 0, 17
    if not totalSupply * totalDeposits:
        return 0
    if arg1 and totalDeposits > -1 / arg1:
        revert with 0, 17
    if not totalSupply:
        revert with 0, 18
    return (arg1 * totalDeposits / totalSupply)
}

function getSharesForDepositTokens(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if totalSupply and totalDeposits > -1 / totalSupply:
        revert with 0, 17
    if not totalSupply * totalDeposits:
        return arg1
    if arg1 and totalSupply > -1 / arg1:
        revert with 0, 17
    if not totalDeposits:
        revert with 0, 18
    return (arg1 * totalSupply / totalDeposits)
}

function updateWithdrawFeeBips(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not roleAdmin[0xfea49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c217][address(msg.sender)].field_0:
        revert with 0, 'Caller is not an admin'
    if arg1 >= 50:
        revert with 0, 'withdraw fee cant exceed 0.5%'
    emit UpdateWithdrawFee(WITHDRAW_FEE_BIPS, arg1);
    WITHDRAW_FEE_BIPS = arg1
}

function renounceRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if arg2 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: can only renounce roles for self'
    if roleAdmin[arg1][address(arg2)].field_0:
        roleAdmin[arg1][address(arg2)].field_0 = 0
        emit RoleRevoked(arg1, arg2, msg.sender);
}

function updateAdminFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not roleAdmin[0xfea49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c217][address(msg.sender)].field_0:
        revert with 0, 'Caller is not an admin'
    if arg1 > !REINVEST_REWARD_BIPS:
        revert with 0, 17
    if arg1 + REINVEST_REWARD_BIPS > 500:
        revert with 0, 'admin fee too high'
    emit UpdateAdminFee(ADMIN_FEE_BIPS, arg1);
    ADMIN_FEE_BIPS = arg1
}

function updateReinvestReward(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not roleAdmin[0xfea49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c217][address(msg.sender)].field_0:
        revert with 0, 'Caller is not an admin'
    if arg1 > !ADMIN_FEE_BIPS:
        revert with 0, 17
    if arg1 + ADMIN_FEE_BIPS > 500:
        revert with 0, 'reinvest reward too high'
    emit UpdateReinvestReward(REINVEST_REWARD_BIPS, arg1);
    REINVEST_REWARD_BIPS = arg1
}

function recoverETH(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not roleAdmin[0xfea49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c217][address(msg.sender)].field_0:
        revert with 0, 'Caller is not an admin'
    if arg1 <= 0:
        revert with 0, 'amount too low'
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Recovered(0, arg1);
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if allowance[msg.sender][address(arg1)] > !arg2:
        revert with 0, 17
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] + arg2
    emit Approval((allowance[msg.sender][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function revokeAllowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not roleAdmin[0xfea49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c217][address(msg.sender)].field_0:
        revert with 0, 'Caller is not an admin'
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg2), 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_call.return_data[0]
}

function checkReward() payable {
    require ext_code.size(stakingContractAddress)
    staticcall stakingContractAddress.0x2f607fdd with:
            gas gas_remaining wei
           args pid, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(rewardToken1Address)
    staticcall rewardToken1Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > !ext_call.return_data[0]:
        revert with 0, 17
    return (2 * ext_call.return_data[0])
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if balanceOf[address(msg.sender)] < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
    balanceOf[address(msg.sender)] -= arg2
    if balanceOf[arg1] > !arg2:
        revert with 0, 17
    balanceOf[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if allowance[msg.sender][address(arg1)] < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: decreased allowance below zero'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] - arg2
    emit Approval((allowance[msg.sender][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function estimateReinvestReward() payable {
    require ext_code.size(stakingContractAddress)
    staticcall stakingContractAddress.0x2f607fdd with:
            gas gas_remaining wei
           args pid, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(rewardToken1Address)
    staticcall rewardToken1Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > !ext_call.return_data[0]:
        revert with 0, 17
    if 2 * ext_call.return_data[0] < MIN_TOKENS_TO_REINVEST:
        return 0
    if uint255(ext_call.return_data[0]) and REINVEST_REWARD_BIPS > -1 / 2 * ext_call.return_data[0]:
        revert with 0, 17
    return ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if balanceOf[address(arg1)] < arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
    balanceOf[address(arg1)] -= arg3
    if balanceOf[arg2] > !arg3:
        revert with 0, 17
    balanceOf[arg2] += arg3
    emit Transfer(arg3, arg1, arg2);
    if allowance[address(arg1)][msg.sender] < arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds allowance'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(arg1)][address(msg.sender)] = allowance[address(arg1)][msg.sender] - arg3
    emit Approval((allowance[address(arg1)][msg.sender] - arg3), arg1, msg.sender);
    return 1
}

function revokeRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if roleAdmin[roleAdmin[arg1].field_256][address(msg.sender)].field_0:
        if roleAdmin[arg1][address(arg2)].field_0:
            roleAdmin[arg1][address(arg2)].field_0 = 0
            emit RoleRevoked(arg1, arg2, msg.sender);
    mem[128 len 42] = call.data[calldata.size len 42]
    idx = 41
    s = address(msg.sender)
    while idx > 1:
        if s % 16 >= 16:
            revert with 0, 50
        if idx >= 42:
            revert with 0, 50
        mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if msg.sender + 10240:
        revert with 0, 'Strings: hex length insufficient'
    mem[224 len 66] = call.data[calldata.size len 66]
    idx = 65
    s = roleAdmin[arg1].field_256
    while idx > 1:
        if s % 16 >= 16:
            revert with 0, 50
        if idx >= 66:
            revert with 0, 50
        mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if roleAdmin[arg1].field_256 + 16384:
        revert with 0, 'Strings: hex length insufficient'
    revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
}

function grantRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if roleAdmin[roleAdmin[arg1].field_256][address(msg.sender)].field_0:
        if not roleAdmin[arg1][address(arg2)].field_0:
            roleAdmin[arg1][address(arg2)].field_0 = 1
            emit RoleGranted(arg1, arg2, msg.sender);
    mem[128 len 42] = call.data[calldata.size len 42]
    idx = 41
    s = address(msg.sender)
    while idx > 1:
        if s % 16 >= 16:
            revert with 0, 50
        if idx >= 42:
            revert with 0, 50
        mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if msg.sender + 10240:
        revert with 0, 'Strings: hex length insufficient'
    mem[224 len 66] = call.data[calldata.size len 66]
    idx = 65
    s = roleAdmin[arg1].field_256
    while idx > 1:
        if s % 16 >= 16:
            revert with 0, 50
        if idx >= 66:
            revert with 0, 50
        mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if roleAdmin[arg1].field_256 + 16384:
        revert with 0, 'Strings: hex length insufficient'
    revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
}

function setAllowances() payable {
    if not roleAdmin[0xfea49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c217][address(msg.sender)].field_0:
        revert with 0, 'Caller is not an admin'
    require ext_code.size(depositTokenAddress)
    staticcall depositTokenAddress.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(depositTokenAddress)
    call depositTokenAddress.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args poolContractAddress, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(poolTokenAddress)
    staticcall poolTokenAddress.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(poolTokenAddress)
    call poolTokenAddress.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stakingContractAddress, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(rewardToken1Address)
    staticcall rewardToken1Address.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(rewardToken1Address)
    call rewardToken1Address.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args routerAddress, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function name() payable {
    if bool(stor3.length):
        if bool(stor3.length) == uint255(stor3.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor3.length):
            if bool(stor3.length) == uint255(stor3.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor3.length):
                if 31 < uint255(stor3.length) * 0.5:
                    mem[128] = uint256(stor3.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor3.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor3[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor3.length), data=mem[128 len ceil32(uint255(stor3.length) * 0.5)])
                mem[128] = 256 * stor3.length.field_8
        else:
            if bool(stor3.length) == stor3.length.field_1 < 32:
                revert with 0, 34
            if stor3.length.field_1:
                if 31 < stor3.length.field_1:
                    mem[128] = uint256(stor3.field_0)
                    idx = 128
                    s = 0
                    while stor3.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor3[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor3.length), data=mem[128 len ceil32(uint255(stor3.length) * 0.5)])
                mem[128] = 256 * stor3.length.field_8
        mem[ceil32(uint255(stor3.length) * 0.5) + 192 len ceil32(uint255(stor3.length) * 0.5)] = mem[128 len ceil32(uint255(stor3.length) * 0.5)]
        if ceil32(uint255(stor3.length) * 0.5) > uint255(stor3.length) * 0.5:
            mem[(uint255(stor3.length) * 0.5) + ceil32(uint255(stor3.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor3.length), data=mem[128 len ceil32(uint255(stor3.length) * 0.5)], mem[(2 * ceil32(uint255(stor3.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor3.length) * 0.5)]), 
    if bool(stor3.length) == stor3.length.field_1 < 32:
        revert with 0, 34
    if bool(stor3.length):
        if bool(stor3.length) == uint255(stor3.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor3.length):
            if 31 < uint255(stor3.length) * 0.5:
                mem[128] = uint256(stor3.field_0)
                idx = 128
                s = 0
                while (uint255(stor3.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor3[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor3.length % 128, data=mem[128 len ceil32(stor3.length.field_1)])
            mem[128] = 256 * stor3.length.field_8
    else:
        if bool(stor3.length) == stor3.length.field_1 < 32:
            revert with 0, 34
        if stor3.length.field_1:
            if 31 < stor3.length.field_1:
                mem[128] = uint256(stor3.field_0)
                idx = 128
                s = 0
                while stor3.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor3[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor3.length % 128, data=mem[128 len ceil32(stor3.length.field_1)])
            mem[128] = 256 * stor3.length.field_8
    mem[ceil32(stor3.length.field_1) + 192 len ceil32(stor3.length.field_1)] = mem[128 len ceil32(stor3.length.field_1)]
    if ceil32(stor3.length.field_1) > stor3.length.field_1:
        mem[stor3.length.field_1 + ceil32(stor3.length.field_1) + 192] = 0
    return Array(len=stor3.length % 128, data=mem[128 len ceil32(stor3.length.field_1)], mem[(2 * ceil32(stor3.length.field_1)) + 192 len 2 * ceil32(stor3.length.field_1)]), 
}

function symbol() payable {
    if bool(stor4.length):
        if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor4.length):
            if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor4.length):
                if 31 < uint255(stor4.length) * 0.5:
                    mem[128] = uint256(stor4.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor4.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor4[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor4.length), data=mem[128 len ceil32(uint255(stor4.length) * 0.5)])
                mem[128] = 256 * stor4.length.field_8
        else:
            if bool(stor4.length) == stor4.length.field_1 < 32:
                revert with 0, 34
            if stor4.length.field_1:
                if 31 < stor4.length.field_1:
                    mem[128] = uint256(stor4.field_0)
                    idx = 128
                    s = 0
                    while stor4.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor4[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor4.length), data=mem[128 len ceil32(uint255(stor4.length) * 0.5)])
                mem[128] = 256 * stor4.length.field_8
        mem[ceil32(uint255(stor4.length) * 0.5) + 192 len ceil32(uint255(stor4.length) * 0.5)] = mem[128 len ceil32(uint255(stor4.length) * 0.5)]
        if ceil32(uint255(stor4.length) * 0.5) > uint255(stor4.length) * 0.5:
            mem[(uint255(stor4.length) * 0.5) + ceil32(uint255(stor4.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor4.length), data=mem[128 len ceil32(uint255(stor4.length) * 0.5)], mem[(2 * ceil32(uint255(stor4.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor4.length) * 0.5)]), 
    if bool(stor4.length) == stor4.length.field_1 < 32:
        revert with 0, 34
    if bool(stor4.length):
        if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor4.length):
            if 31 < uint255(stor4.length) * 0.5:
                mem[128] = uint256(stor4.field_0)
                idx = 128
                s = 0
                while (uint255(stor4.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor4[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1)])
            mem[128] = 256 * stor4.length.field_8
    else:
        if bool(stor4.length) == stor4.length.field_1 < 32:
            revert with 0, 34
        if stor4.length.field_1:
            if 31 < stor4.length.field_1:
                mem[128] = uint256(stor4.field_0)
                idx = 128
                s = 0
                while stor4.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor4[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1)])
            mem[128] = 256 * stor4.length.field_8
    mem[ceil32(stor4.length.field_1) + 192 len ceil32(stor4.length.field_1)] = mem[128 len ceil32(stor4.length.field_1)]
    if ceil32(stor4.length.field_1) > stor4.length.field_1:
        mem[stor4.length.field_1 + ceil32(stor4.length.field_1) + 192] = 0
    return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1)], mem[(2 * ceil32(stor4.length.field_1)) + 192 len 2 * ceil32(stor4.length.field_1)]), 
}

function withdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 > balanceOf[msg.sender]:
        revert with 0, 'insufficent balance to withdraw'
    if totalSupply and totalDeposits > -1 / totalSupply:
        revert with 0, 17
    if totalSupply * totalDeposits:
        if arg1 and totalDeposits > -1 / arg1:
            revert with 0, 17
        if not totalSupply:
            revert with 0, 18
        if arg1 * totalDeposits / totalSupply:
            if arg1 * totalDeposits / totalSupply <= 0:
                revert with 0, 'amount too low'
            require ext_code.size(stakingContractAddress)
            call stakingContractAddress.withdraw(uint256 arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args pid, uint128(arg1 * totalDeposits / totalSupply)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(poolTokenAddress)
            staticcall poolTokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(poolContractAddress)
            call poolContractAddress.0xc4de93a5 with:
                 gas gas_remaining wei
                args stor13, ext_call.return_data[0], this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not WITHDRAW_FEE_BIPS:
                require ext_code.size(depositTokenAddress)
                call depositTokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, arg1 * totalDeposits / totalSupply
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if not ext_call.return_data[0]:
                    revert with 0, 'transfer failed'
                if not msg.sender:
                    revert with 0, 'ERC20: burn from the zero address'
                if balanceOf[address(msg.sender)] < arg1:
                    revert with 0, 'ERC20: burn amount exceeds balance'
                balanceOf[address(msg.sender)] -= arg1
                if totalSupply < arg1:
                    revert with 0, 17
                totalSupply -= arg1
                emit Transfer(arg1, msg.sender, 0);
                if totalDeposits < arg1 * totalDeposits / totalSupply:
                    revert with 0, 17
                totalDeposits -= arg1 * totalDeposits / totalSupply
                emit Withdraw((arg1 * totalDeposits / totalSupply), msg.sender);
            else:
                if arg1 * totalDeposits / totalSupply and WITHDRAW_FEE_BIPS > -1 / arg1 * totalDeposits / totalSupply:
                    revert with 0, 17
                require ext_code.size(depositTokenAddress)
                call depositTokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args feeDestinationAddress, arg1 * totalDeposits / totalSupply * WITHDRAW_FEE_BIPS / 10000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if not ext_call.return_data[0]:
                    revert with 0, 'transfer failed'
                if arg1 * totalDeposits / totalSupply < arg1 * totalDeposits / totalSupply * WITHDRAW_FEE_BIPS / 10000:
                    revert with 0, 17
                require ext_code.size(depositTokenAddress)
                call depositTokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, (arg1 * totalDeposits / totalSupply) - (arg1 * totalDeposits / totalSupply * WITHDRAW_FEE_BIPS / 10000)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if not ext_call.return_data[0]:
                    revert with 0, 'transfer failed'
                if not msg.sender:
                    revert with 0, 'ERC20: burn from the zero address'
                if balanceOf[address(msg.sender)] < arg1:
                    revert with 0, 'ERC20: burn amount exceeds balance'
                balanceOf[address(msg.sender)] -= arg1
                if totalSupply < arg1:
                    revert with 0, 17
                totalSupply -= arg1
                emit Transfer(arg1, msg.sender, 0);
                if totalDeposits < (arg1 * totalDeposits / totalSupply) - (arg1 * totalDeposits / totalSupply * WITHDRAW_FEE_BIPS / 10000):
                    revert with 0, 17
                totalDeposits = totalDeposits - (arg1 * totalDeposits / totalSupply) + (arg1 * totalDeposits / totalSupply * WITHDRAW_FEE_BIPS / 10000)
                emit Withdraw(((arg1 * totalDeposits / totalSupply) - (arg1 * totalDeposits / totalSupply * WITHDRAW_FEE_BIPS / 10000)), msg.sender);
}

function reinvest() payable {
    if tx.origin != msg.sender:
        revert with 0, 'onlyEOA'
    mem[100] = pid
    mem[132] = this.address
    require ext_code.size(stakingContractAddress)
    staticcall stakingContractAddress.0x2f607fdd with:
            gas gas_remaining wei
           args pid, this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 100] = this.address
    require ext_code.size(rewardToken1Address)
    staticcall rewardToken1Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > !ext_call.return_data[0]:
        revert with 0, 17
    if 2 * ext_call.return_data[0] < MIN_TOKENS_TO_REINVEST:
        revert with 0, 'MIN_TOKENS_TO_REINVEST'
    require ext_code.size(stakingContractAddress)
    call stakingContractAddress.deposit(uint256 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args pid, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if uint255(ext_call.return_data[0]) and ADMIN_FEE_BIPS > -1 / 2 * ext_call.return_data[0]:
        revert with 0, 17
    if not (ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000:
        if uint255(ext_call.return_data[0]) and REINVEST_REWARD_BIPS > -1 / 2 * ext_call.return_data[0]:
            revert with 0, 17
        if not (ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000:
            if 2 * ext_call.return_data[0] < (ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000:
                revert with 0, 17
            if (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) < (ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000:
                revert with 0, 17
            if (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) <= 0:
                revert with 0, '::_convertRewardTokensToDepositTokens'
            mem[(2 * ceil32(return_data.size)) + 96] = 3
            mem[(2 * ceil32(return_data.size)) + 128] = rewardToken1Address
            mem[(2 * ceil32(return_data.size)) + 160] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
            mem[(2 * ceil32(return_data.size)) + 192] = depositTokenAddress
            mem[(2 * ceil32(return_data.size)) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[(2 * ceil32(return_data.size)) + 228] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)
            mem[(2 * ceil32(return_data.size)) + 260] = 64
            mem[(2 * ceil32(return_data.size)) + 292] = 3
            idx = 0
            s = (2 * ceil32(return_data.size)) + 128
            t = (2 * ceil32(return_data.size)) + 324
            while idx < 3:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(routerAddress)
            staticcall routerAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000), Array(len=3, data=mem[(2 * ceil32(return_data.size)) + 324 len 96])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(2 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (4 * ceil32(return_data.size)) + 224
            require return_data.size >= 32
            _201 = mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32
            require mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 <= test266151307()
            require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 255 < (2 * ceil32(return_data.size)) + return_data.size + 224
            _205 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 224]
            if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 224] > test266151307():
                revert with 0, 65
            if (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 224]) + 225 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 224]) + 1 < 0:
                revert with 0, 65
            mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 224]) + 225
            mem[(4 * ceil32(return_data.size)) + 224] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 224]
            require return_data.size >= _201 + (32 * _205) + 32
            mem[(4 * ceil32(return_data.size)) + 256 len 32 * _205] = mem[(2 * ceil32(return_data.size)) + _201 + 256 len 32 * _205]
            if _205 < 1:
                revert with 0, 17
            if _205 - 1 >= _205:
                revert with 0, 50
            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)
            mem[mem[64] + 36] = mem[(32 * _205 - 1) + (4 * ceil32(return_data.size)) + 256]
            mem[mem[64] + 68] = 160
            mem[mem[64] + 164] = 3
            idx = 0
            s = (2 * ceil32(return_data.size)) + 128
            t = mem[64] + 196
            while idx < 3:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 100] = this.address
            mem[mem[64] + 132] = block.timestamp
            require ext_code.size(routerAddress)
            call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000), mem[(32 * _205 - 1) + (4 * ceil32(return_data.size)) + 256], Array(len=3, data=mem[mem[64] + 196 len 96]), address(this.address), block.timestamp
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _421 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_421] <= test266151307()
            require _421 + mem[_421] + 31 < _421 + return_data.size
            if mem[_421 + mem[_421]] > test266151307():
                revert with 0, 65
            if _421 + ceil32(return_data.size) + ceil32(32 * mem[_421 + mem[_421]]) + 1 > test266151307() or ceil32(32 * mem[_421 + mem[_421]]) + 1 < 0:
                revert with 0, 65
            require return_data.size >= mem[_421] + (32 * mem[_421 + mem[_421]]) + 32
            require ext_code.size(poolContractAddress)
            call poolContractAddress.addLiquidity(uint256 arg1, uint256 arg2, address arg3) with:
                 gas gas_remaining wei
                args stor13, mem[(32 * _205 - 1) + (4 * ceil32(return_data.size)) + 256], this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(poolTokenAddress)
            staticcall poolTokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if mem[(32 * _205 - 1) + (4 * ceil32(return_data.size)) + 256] <= 0:
                revert with 0, 'amount too low'
            require ext_code.size(stakingContractAddress)
            call stakingContractAddress.deposit(uint256 arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args pid, mem[(32 * _205 - 1) + (4 * ceil32(return_data.size)) + 272 len 16]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if totalDeposits > !mem[(32 * _205 - 1) + (4 * ceil32(return_data.size)) + 256]:
                revert with 0, 17
            totalDeposits += mem[(32 * _205 - 1) + (4 * ceil32(return_data.size)) + 256]
            emit Reinvest(totalDeposits + mem[(32 * _205 - 1) + (4 * ceil32(return_data.size)) + 256], totalSupply);
        else:
            mem[(2 * ceil32(return_data.size)) + 100] = msg.sender
            mem[(2 * ceil32(return_data.size)) + 132] = (ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000
            require ext_code.size(rewardToken1Address)
            call rewardToken1Address.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, (ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000
            mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                revert with 0, 'reinvest fee transfer failed'
            if 2 * ext_call.return_data[0] < (ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000:
                revert with 0, 17
            if (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) < (ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000:
                revert with 0, 17
            if (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) <= 0:
                revert with 0, '::_convertRewardTokensToDepositTokens'
            mem[(4 * ceil32(return_data.size)) + 96] = 3
            mem[(4 * ceil32(return_data.size)) + 128] = rewardToken1Address
            mem[(4 * ceil32(return_data.size)) + 160] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
            mem[(4 * ceil32(return_data.size)) + 192] = depositTokenAddress
            mem[(4 * ceil32(return_data.size)) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[(4 * ceil32(return_data.size)) + 228] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)
            mem[(4 * ceil32(return_data.size)) + 260] = 64
            mem[(4 * ceil32(return_data.size)) + 292] = 3
            idx = 0
            s = (4 * ceil32(return_data.size)) + 128
            t = (4 * ceil32(return_data.size)) + 324
            while idx < 3:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(routerAddress)
            staticcall routerAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000), Array(len=3, data=mem[(4 * ceil32(return_data.size)) + 324 len 96])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(4 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (6 * ceil32(return_data.size)) + 224
            require return_data.size >= 32
            _202 = mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32
            require mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 <= test266151307()
            require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 255 < (4 * ceil32(return_data.size)) + return_data.size + 224
            _206 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 224]
            if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 224] > test266151307():
                revert with 0, 65
            if (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 224]) + 225 > test266151307() or ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 224]) + 1 < 0:
                revert with 0, 65
            mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 224]) + 225
            mem[(6 * ceil32(return_data.size)) + 224] = _206
            require return_data.size >= _202 + (32 * _206) + 32
            mem[(6 * ceil32(return_data.size)) + 256 len 32 * _206] = mem[(4 * ceil32(return_data.size)) + _202 + 256 len 32 * _206]
            if _206 < 1:
                revert with 0, 17
            if _206 - 1 >= _206:
                revert with 0, 50
            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)
            mem[mem[64] + 36] = mem[(32 * _206 - 1) + (6 * ceil32(return_data.size)) + 256]
            mem[mem[64] + 68] = 160
            mem[mem[64] + 164] = 3
            idx = 0
            s = (4 * ceil32(return_data.size)) + 128
            t = mem[64] + 196
            while idx < 3:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 100] = this.address
            mem[mem[64] + 132] = block.timestamp
            require ext_code.size(routerAddress)
            call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000), mem[(32 * _206 - 1) + (6 * ceil32(return_data.size)) + 256], Array(len=3, data=mem[mem[64] + 196 len 96]), address(this.address), block.timestamp
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _422 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_422] <= test266151307()
            require _422 + mem[_422] + 31 < _422 + return_data.size
            if mem[_422 + mem[_422]] > test266151307():
                revert with 0, 65
            if _422 + ceil32(return_data.size) + ceil32(32 * mem[_422 + mem[_422]]) + 1 > test266151307() or ceil32(32 * mem[_422 + mem[_422]]) + 1 < 0:
                revert with 0, 65
            require return_data.size >= mem[_422] + (32 * mem[_422 + mem[_422]]) + 32
            require ext_code.size(poolContractAddress)
            call poolContractAddress.addLiquidity(uint256 arg1, uint256 arg2, address arg3) with:
                 gas gas_remaining wei
                args stor13, mem[(32 * _206 - 1) + (6 * ceil32(return_data.size)) + 256], this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(poolTokenAddress)
            staticcall poolTokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if mem[(32 * _206 - 1) + (6 * ceil32(return_data.size)) + 256] <= 0:
                revert with 0, 'amount too low'
            require ext_code.size(stakingContractAddress)
            call stakingContractAddress.deposit(uint256 arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args pid, mem[(32 * _206 - 1) + (6 * ceil32(return_data.size)) + 272 len 16]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if totalDeposits > !mem[(32 * _206 - 1) + (6 * ceil32(return_data.size)) + 256]:
                revert with 0, 17
            totalDeposits += mem[(32 * _206 - 1) + (6 * ceil32(return_data.size)) + 256]
            emit Reinvest(totalDeposits + mem[(32 * _206 - 1) + (6 * ceil32(return_data.size)) + 256], totalSupply);
    else:
        mem[(2 * ceil32(return_data.size)) + 100] = feeDestinationAddress
        mem[(2 * ceil32(return_data.size)) + 132] = (ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000
        require ext_code.size(rewardToken1Address)
        call rewardToken1Address.0xa9059cbb with:
             gas gas_remaining wei
            args feeDestinationAddress, (ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000
        mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 0, 'admin fee transfer failed'
        if uint255(ext_call.return_data[0]) and REINVEST_REWARD_BIPS > -1 / 2 * ext_call.return_data[0]:
            revert with 0, 17
        if not (ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000:
            if 2 * ext_call.return_data[0] < (ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000:
                revert with 0, 17
            if (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) < (ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000:
                revert with 0, 17
            if (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) <= 0:
                revert with 0, '::_convertRewardTokensToDepositTokens'
            mem[(4 * ceil32(return_data.size)) + 96] = 3
            mem[(4 * ceil32(return_data.size)) + 128] = rewardToken1Address
            mem[(4 * ceil32(return_data.size)) + 160] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
            mem[(4 * ceil32(return_data.size)) + 192] = depositTokenAddress
            mem[(4 * ceil32(return_data.size)) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[(4 * ceil32(return_data.size)) + 228] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)
            mem[(4 * ceil32(return_data.size)) + 260] = 64
            mem[(4 * ceil32(return_data.size)) + 292] = 3
            idx = 0
            s = (4 * ceil32(return_data.size)) + 128
            t = (4 * ceil32(return_data.size)) + 324
            while idx < 3:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(routerAddress)
            staticcall routerAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000), Array(len=3, data=mem[(4 * ceil32(return_data.size)) + 324 len 96])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(4 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (6 * ceil32(return_data.size)) + 224
            require return_data.size >= 32
            _203 = mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32
            require mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 <= test266151307()
            require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 255 < (4 * ceil32(return_data.size)) + return_data.size + 224
            _207 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 224]
            if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 224] > test266151307():
                revert with 0, 65
            if (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 224]) + 225 > test266151307() or ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 224]) + 1 < 0:
                revert with 0, 65
            mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 224]) + 225
            mem[(6 * ceil32(return_data.size)) + 224] = _207
            require return_data.size >= _203 + (32 * _207) + 32
            mem[(6 * ceil32(return_data.size)) + 256 len 32 * _207] = mem[(4 * ceil32(return_data.size)) + _203 + 256 len 32 * _207]
            if _207 < 1:
                revert with 0, 17
            if _207 - 1 >= _207:
                revert with 0, 50
            _329 = mem[(32 * _207 - 1) + (6 * ceil32(return_data.size)) + 256]
            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)
            mem[mem[64] + 36] = _329
            mem[mem[64] + 68] = 160
            mem[mem[64] + 164] = 3
            idx = 0
            s = (4 * ceil32(return_data.size)) + 128
            t = mem[64] + 196
            while idx < 3:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 100] = this.address
            mem[mem[64] + 132] = block.timestamp
            require ext_code.size(routerAddress)
            call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000), _329, Array(len=3, data=mem[mem[64] + 196 len 96]), address(this.address), block.timestamp
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _423 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_423] <= test266151307()
            require _423 + mem[_423] + 31 < _423 + return_data.size
            if mem[_423 + mem[_423]] > test266151307():
                revert with 0, 65
            if _423 + ceil32(return_data.size) + ceil32(32 * mem[_423 + mem[_423]]) + 1 > test266151307() or ceil32(32 * mem[_423 + mem[_423]]) + 1 < 0:
                revert with 0, 65
            require return_data.size >= mem[_423] + (32 * mem[_423 + mem[_423]]) + 32
            require ext_code.size(poolContractAddress)
            call poolContractAddress.addLiquidity(uint256 arg1, uint256 arg2, address arg3) with:
                 gas gas_remaining wei
                args stor13, _329, this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(poolTokenAddress)
            staticcall poolTokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if _329 <= 0:
                revert with 0, 'amount too low'
            require ext_code.size(stakingContractAddress)
            call stakingContractAddress.deposit(uint256 arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args pid, uint128(_329)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if totalDeposits > !_329:
                revert with 0, 17
            totalDeposits += _329
            emit Reinvest(totalDeposits + _329, totalSupply);
        else:
            mem[(4 * ceil32(return_data.size)) + 100] = msg.sender
            mem[(4 * ceil32(return_data.size)) + 132] = (ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000
            require ext_code.size(rewardToken1Address)
            call rewardToken1Address.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, (ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000
            mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                revert with 0, 'reinvest fee transfer failed'
            if 2 * ext_call.return_data[0] < (ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000:
                revert with 0, 17
            if (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) < (ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000:
                revert with 0, 17
            if (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000) <= 0:
                revert with 0, '::_convertRewardTokensToDepositTokens'
            mem[(6 * ceil32(return_data.size)) + 96] = 3
            mem[(6 * ceil32(return_data.size)) + 128] = rewardToken1Address
            mem[(6 * ceil32(return_data.size)) + 160] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
            mem[(6 * ceil32(return_data.size)) + 192] = depositTokenAddress
            mem[(6 * ceil32(return_data.size)) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[(6 * ceil32(return_data.size)) + 228] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)
            mem[(6 * ceil32(return_data.size)) + 260] = 64
            mem[(6 * ceil32(return_data.size)) + 292] = 3
            idx = 0
            s = (6 * ceil32(return_data.size)) + 128
            t = (6 * ceil32(return_data.size)) + 324
            while idx < 3:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(routerAddress)
            staticcall routerAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000), Array(len=3, data=mem[(6 * ceil32(return_data.size)) + 324 len 96])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(6 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (7 * ceil32(return_data.size)) + 224
            require return_data.size >= 32
            _204 = mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32
            require mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 <= test266151307()
            require (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 255 < (6 * ceil32(return_data.size)) + return_data.size + 224
            _208 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 224]
            if mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 224] > test266151307():
                revert with 0, 65
            if (7 * ceil32(return_data.size)) + ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 224]) + 225 > test266151307() or ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 224]) + 1 < 0:
                revert with 0, 65
            mem[64] = (7 * ceil32(return_data.size)) + ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)) >> 32 + 224]) + 225
            mem[(7 * ceil32(return_data.size)) + 224] = _208
            require return_data.size >= _204 + (32 * _208) + 32
            mem[(7 * ceil32(return_data.size)) + 256 len 32 * _208] = mem[(6 * ceil32(return_data.size)) + _204 + 256 len 32 * _208]
            if _208 < 1:
                revert with 0, 17
            if _208 - 1 >= _208:
                revert with 0, 50
            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000)
            mem[mem[64] + 36] = mem[(32 * _208 - 1) + (7 * ceil32(return_data.size)) + 256]
            mem[mem[64] + 68] = 160
            mem[mem[64] + 164] = 3
            idx = 0
            s = (6 * ceil32(return_data.size)) + 128
            t = mem[64] + 196
            while idx < 3:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 100] = this.address
            mem[mem[64] + 132] = block.timestamp
            require ext_code.size(routerAddress)
            call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * ADMIN_FEE_BIPS) + (ext_call.return_data[0] * ADMIN_FEE_BIPS) / 10000) - ((ext_call.return_data[0] * REINVEST_REWARD_BIPS) + (ext_call.return_data[0] * REINVEST_REWARD_BIPS) / 10000), mem[(32 * _208 - 1) + (7 * ceil32(return_data.size)) + 256], Array(len=3, data=mem[mem[64] + 196 len 96]), address(this.address), block.timestamp
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _424 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_424] <= test266151307()
            require _424 + mem[_424] + 31 < _424 + return_data.size
            if mem[_424 + mem[_424]] > test266151307():
                revert with 0, 65
            if _424 + ceil32(return_data.size) + ceil32(32 * mem[_424 + mem[_424]]) + 1 > test266151307() or ceil32(32 * mem[_424 + mem[_424]]) + 1 < 0:
                revert with 0, 65
            require return_data.size >= mem[_424] + (32 * mem[_424 + mem[_424]]) + 32
            require ext_code.size(poolContractAddress)
            call poolContractAddress.addLiquidity(uint256 arg1, uint256 arg2, address arg3) with:
                 gas gas_remaining wei
                args stor13, mem[(32 * _208 - 1) + (7 * ceil32(return_data.size)) + 256], this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(poolTokenAddress)
            staticcall poolTokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if mem[(32 * _208 - 1) + (7 * ceil32(return_data.size)) + 256] <= 0:
                revert with 0, 'amount too low'
            require ext_code.size(stakingContractAddress)
            call stakingContractAddress.deposit(uint256 arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args pid, mem[(32 * _208 - 1) + (7 * ceil32(return_data.size)) + 272 len 16]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if totalDeposits > !mem[(32 * _208 - 1) + (7 * ceil32(return_data.size)) + 256]:
                revert with 0, 17
            totalDeposits += mem[(32 * _208 - 1) + (7 * ceil32(return_data.size)) + 256]
            emit Reinvest(totalDeposits + mem[(32 * _208 - 1) + (7 * ceil32(return_data.size)) + 256], totalSupply);
}

function deposit(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if totalDeposits < totalSupply:
        revert with 0, 'deposit failed'
    mem[100] = msg.sender
    mem[132] = this.address
    mem[164] = arg1
    require ext_code.size(depositTokenAddress)
    call depositTokenAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg1
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'transferFrom failed'
    mem[ceil32(return_data.size) + 132] = arg1
    mem[ceil32(return_data.size) + 164] = this.address
    require ext_code.size(poolContractAddress)
    call poolContractAddress.addLiquidity(uint256 arg1, uint256 arg2, address arg3) with:
         gas gas_remaining wei
        args stor13, arg1, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 100] = this.address
    require ext_code.size(poolTokenAddress)
    staticcall poolTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'amount too low'
    mem[(2 * ceil32(return_data.size)) + 132] = uint128(ext_call.return_data[0])
    require ext_code.size(stakingContractAddress)
    call stakingContractAddress.deposit(uint256 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args pid, uint128(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if totalSupply and totalDeposits > -1 / totalSupply:
        revert with 0, 17
    if not totalSupply * totalDeposits:
        if not msg.sender:
            revert with 0, 'ERC20: mint to the zero address'
        if totalSupply > !ext_call.return_data[0]:
            revert with 0, 17
        totalSupply += ext_call.return_data[0]
        mem[0] = msg.sender
        mem[32] = 0
        if balanceOf[address(msg.sender)] > !ext_call.return_data[0]:
            revert with 0, 17
        balanceOf[address(msg.sender)] += ext_call.return_data[0]
        emit Transfer(ext_call.return_data[0], 0, msg.sender);
        if totalDeposits > !ext_call.return_data[0]:
            revert with 0, 17
        totalDeposits += ext_call.return_data[0]
        if uint8(stor19):
            mem[(2 * ceil32(return_data.size)) + 100] = this.address
            require ext_code.size(rewardToken1Address)
            staticcall rewardToken1Address.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] >= sub_03cac7e5:
                require ext_code.size(stakingContractAddress)
                call stakingContractAddress.deposit(uint256 arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args pid, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if ext_call.return_data[0] and ADMIN_FEE_BIPS > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                if not ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000:
                    if ext_call.return_data[0] and REINVEST_REWARD_BIPS > -1 / ext_call.return_data[0]:
                        revert with 0, 17
                    if not ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000:
                        if ext_call.return_data[0] < ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000:
                            revert with 0, 17
                        if ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) < ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000:
                            revert with 0, 17
                        if ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000) <= 0:
                            revert with 0, '::_convertRewardTokensToDepositTokens'
                        mem[(4 * ceil32(return_data.size)) + 96] = 3
                        mem[(4 * ceil32(return_data.size)) + 128] = rewardToken1Address
                        mem[(4 * ceil32(return_data.size)) + 160] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                        mem[(4 * ceil32(return_data.size)) + 192] = depositTokenAddress
                        mem[(4 * ceil32(return_data.size)) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[(4 * ceil32(return_data.size)) + 228] = ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)
                        mem[(4 * ceil32(return_data.size)) + 260] = 64
                        mem[(4 * ceil32(return_data.size)) + 292] = 3
                        idx = 0
                        s = (4 * ceil32(return_data.size)) + 128
                        t = (4 * ceil32(return_data.size)) + 324
                        while idx < 3:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(routerAddress)
                        staticcall routerAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000), Array(len=3, data=mem[(4 * ceil32(return_data.size)) + 324 len 96])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(4 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (6 * ceil32(return_data.size)) + 224
                        require return_data.size >= 32
                        _441 = mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32
                        require mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 <= test266151307()
                        require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 255 < (4 * ceil32(return_data.size)) + return_data.size + 224
                        _449 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 224]
                        if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 224] > test266151307():
                            revert with 0, 65
                        if (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 224]) + 225 > test266151307() or ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 224]) + 1 < 0:
                            revert with 0, 65
                        mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 224]) + 225
                        mem[(6 * ceil32(return_data.size)) + 224] = _449
                        require return_data.size >= _441 + (32 * _449) + 32
                        mem[(6 * ceil32(return_data.size)) + 256 len 32 * _449] = mem[(4 * ceil32(return_data.size)) + _441 + 256 len 32 * _449]
                        if _449 < 1:
                            revert with 0, 17
                        if _449 - 1 >= _449:
                            revert with 0, 50
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)
                        mem[mem[64] + 36] = mem[(32 * _449 - 1) + (6 * ceil32(return_data.size)) + 256]
                        mem[mem[64] + 68] = 160
                        mem[mem[64] + 164] = 3
                        idx = 0
                        s = (4 * ceil32(return_data.size)) + 128
                        t = mem[64] + 196
                        while idx < 3:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 100] = this.address
                        mem[mem[64] + 132] = block.timestamp
                        require ext_code.size(routerAddress)
                        call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000), mem[(32 * _449 - 1) + (6 * ceil32(return_data.size)) + 256], Array(len=3, data=mem[mem[64] + 196 len 96]), address(this.address), block.timestamp
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _913 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_913] <= test266151307()
                        require _913 + mem[_913] + 31 < _913 + return_data.size
                        if mem[_913 + mem[_913]] > test266151307():
                            revert with 0, 65
                        if _913 + ceil32(return_data.size) + ceil32(32 * mem[_913 + mem[_913]]) + 1 > test266151307() or ceil32(32 * mem[_913 + mem[_913]]) + 1 < 0:
                            revert with 0, 65
                        require return_data.size >= mem[_913] + (32 * mem[_913 + mem[_913]]) + 32
                        require ext_code.size(poolContractAddress)
                        call poolContractAddress.addLiquidity(uint256 arg1, uint256 arg2, address arg3) with:
                             gas gas_remaining wei
                            args stor13, mem[(32 * _449 - 1) + (6 * ceil32(return_data.size)) + 256], this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(poolTokenAddress)
                        staticcall poolTokenAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if mem[(32 * _449 - 1) + (6 * ceil32(return_data.size)) + 256] <= 0:
                            revert with 0, 'amount too low'
                        require ext_code.size(stakingContractAddress)
                        call stakingContractAddress.deposit(uint256 arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args pid, mem[(32 * _449 - 1) + (6 * ceil32(return_data.size)) + 272 len 16]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if totalDeposits > !mem[(32 * _449 - 1) + (6 * ceil32(return_data.size)) + 256]:
                            revert with 0, 17
                        totalDeposits += mem[(32 * _449 - 1) + (6 * ceil32(return_data.size)) + 256]
                        emit Reinvest(totalDeposits + mem[(32 * _449 - 1) + (6 * ceil32(return_data.size)) + 256], totalSupply);
                    else:
                        mem[(4 * ceil32(return_data.size)) + 100] = msg.sender
                        mem[(4 * ceil32(return_data.size)) + 132] = ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000
                        require ext_code.size(rewardToken1Address)
                        call rewardToken1Address.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000
                        mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if not ext_call.return_data[0]:
                            revert with 0, 'reinvest fee transfer failed'
                        if ext_call.return_data[0] < ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000:
                            revert with 0, 17
                        if ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) < ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000:
                            revert with 0, 17
                        if ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000) <= 0:
                            revert with 0, '::_convertRewardTokensToDepositTokens'
                        mem[(6 * ceil32(return_data.size)) + 96] = 3
                        mem[(6 * ceil32(return_data.size)) + 128] = rewardToken1Address
                        mem[(6 * ceil32(return_data.size)) + 160] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                        mem[(6 * ceil32(return_data.size)) + 192] = depositTokenAddress
                        mem[(6 * ceil32(return_data.size)) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[(6 * ceil32(return_data.size)) + 228] = ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)
                        mem[(6 * ceil32(return_data.size)) + 260] = 64
                        mem[(6 * ceil32(return_data.size)) + 292] = 3
                        idx = 0
                        s = (6 * ceil32(return_data.size)) + 128
                        t = (6 * ceil32(return_data.size)) + 324
                        while idx < 3:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(routerAddress)
                        staticcall routerAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000), Array(len=3, data=mem[(6 * ceil32(return_data.size)) + 324 len 96])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(6 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (7 * ceil32(return_data.size)) + 224
                        require return_data.size >= 32
                        _442 = mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32
                        require mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 <= test266151307()
                        require (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 255 < (6 * ceil32(return_data.size)) + return_data.size + 224
                        _450 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 224]
                        if mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 224] > test266151307():
                            revert with 0, 65
                        if (7 * ceil32(return_data.size)) + ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 224]) + 225 > test266151307() or ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 224]) + 1 < 0:
                            revert with 0, 65
                        mem[64] = (7 * ceil32(return_data.size)) + ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 224]) + 225
                        mem[(7 * ceil32(return_data.size)) + 224] = _450
                        require return_data.size >= _442 + (32 * _450) + 32
                        mem[(7 * ceil32(return_data.size)) + 256 len 32 * _450] = mem[(6 * ceil32(return_data.size)) + _442 + 256 len 32 * _450]
                        if _450 < 1:
                            revert with 0, 17
                        if _450 - 1 >= _450:
                            revert with 0, 50
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)
                        mem[mem[64] + 36] = mem[(32 * _450 - 1) + (7 * ceil32(return_data.size)) + 256]
                        mem[mem[64] + 68] = 160
                        mem[mem[64] + 164] = 3
                        idx = 0
                        s = (6 * ceil32(return_data.size)) + 128
                        t = mem[64] + 196
                        while idx < 3:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 100] = this.address
                        mem[mem[64] + 132] = block.timestamp
                        require ext_code.size(routerAddress)
                        call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000), mem[(32 * _450 - 1) + (7 * ceil32(return_data.size)) + 256], Array(len=3, data=mem[mem[64] + 196 len 96]), address(this.address), block.timestamp
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _914 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_914] <= test266151307()
                        require _914 + mem[_914] + 31 < _914 + return_data.size
                        if mem[_914 + mem[_914]] > test266151307():
                            revert with 0, 65
                        if _914 + ceil32(return_data.size) + ceil32(32 * mem[_914 + mem[_914]]) + 1 > test266151307() or ceil32(32 * mem[_914 + mem[_914]]) + 1 < 0:
                            revert with 0, 65
                        require return_data.size >= mem[_914] + (32 * mem[_914 + mem[_914]]) + 32
                        require ext_code.size(poolContractAddress)
                        call poolContractAddress.addLiquidity(uint256 arg1, uint256 arg2, address arg3) with:
                             gas gas_remaining wei
                            args stor13, mem[(32 * _450 - 1) + (7 * ceil32(return_data.size)) + 256], this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(poolTokenAddress)
                        staticcall poolTokenAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if mem[(32 * _450 - 1) + (7 * ceil32(return_data.size)) + 256] <= 0:
                            revert with 0, 'amount too low'
                        require ext_code.size(stakingContractAddress)
                        call stakingContractAddress.deposit(uint256 arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args pid, mem[(32 * _450 - 1) + (7 * ceil32(return_data.size)) + 272 len 16]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if totalDeposits > !mem[(32 * _450 - 1) + (7 * ceil32(return_data.size)) + 256]:
                            revert with 0, 17
                        totalDeposits += mem[(32 * _450 - 1) + (7 * ceil32(return_data.size)) + 256]
                        emit Reinvest(totalDeposits + mem[(32 * _450 - 1) + (7 * ceil32(return_data.size)) + 256], totalSupply);
                else:
                    mem[(4 * ceil32(return_data.size)) + 100] = feeDestinationAddress
                    mem[(4 * ceil32(return_data.size)) + 132] = ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000
                    require ext_code.size(rewardToken1Address)
                    call rewardToken1Address.0xa9059cbb with:
                         gas gas_remaining wei
                        args feeDestinationAddress, ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000
                    mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if not ext_call.return_data[0]:
                        revert with 0, 'admin fee transfer failed'
                    if ext_call.return_data[0] and REINVEST_REWARD_BIPS > -1 / ext_call.return_data[0]:
                        revert with 0, 17
                    if not ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000:
                        if ext_call.return_data[0] < ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000:
                            revert with 0, 17
                        if ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) < ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000:
                            revert with 0, 17
                        if ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000) <= 0:
                            revert with 0, '::_convertRewardTokensToDepositTokens'
                        mem[(6 * ceil32(return_data.size)) + 96] = 3
                        mem[(6 * ceil32(return_data.size)) + 128] = rewardToken1Address
                        mem[(6 * ceil32(return_data.size)) + 160] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                        mem[(6 * ceil32(return_data.size)) + 192] = depositTokenAddress
                        mem[(6 * ceil32(return_data.size)) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[(6 * ceil32(return_data.size)) + 228] = ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)
                        mem[(6 * ceil32(return_data.size)) + 260] = 64
                        mem[(6 * ceil32(return_data.size)) + 292] = 3
                        idx = 0
                        s = (6 * ceil32(return_data.size)) + 128
                        t = (6 * ceil32(return_data.size)) + 324
                        while idx < 3:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(routerAddress)
                        staticcall routerAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000), Array(len=3, data=mem[(6 * ceil32(return_data.size)) + 324 len 96])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(6 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (7 * ceil32(return_data.size)) + 224
                        require return_data.size >= 32
                        _443 = mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32
                        require mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 <= test266151307()
                        require (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 255 < (6 * ceil32(return_data.size)) + return_data.size + 224
                        _451 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 224]
                        if mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 224] > test266151307():
                            revert with 0, 65
                        if (7 * ceil32(return_data.size)) + ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 224]) + 225 > test266151307() or ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 224]) + 1 < 0:
                            revert with 0, 65
                        mem[64] = (7 * ceil32(return_data.size)) + ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 224]) + 225
                        mem[(7 * ceil32(return_data.size)) + 224] = _451
                        require return_data.size >= _443 + (32 * _451) + 32
                        mem[(7 * ceil32(return_data.size)) + 256 len 32 * _451] = mem[(6 * ceil32(return_data.size)) + _443 + 256 len 32 * _451]
                        if _451 < 1:
                            revert with 0, 17
                        if _451 - 1 >= _451:
                            revert with 0, 50
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)
                        mem[mem[64] + 36] = mem[(32 * _451 - 1) + (7 * ceil32(return_data.size)) + 256]
                        mem[mem[64] + 68] = 160
                        mem[mem[64] + 164] = 3
                        idx = 0
                        s = (6 * ceil32(return_data.size)) + 128
                        t = mem[64] + 196
                        while idx < 3:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 100] = this.address
                        mem[mem[64] + 132] = block.timestamp
                        require ext_code.size(routerAddress)
                        call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000), mem[(32 * _451 - 1) + (7 * ceil32(return_data.size)) + 256], Array(len=3, data=mem[mem[64] + 196 len 96]), address(this.address), block.timestamp
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _915 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_915] <= test266151307()
                        require _915 + mem[_915] + 31 < _915 + return_data.size
                        if mem[_915 + mem[_915]] > test266151307():
                            revert with 0, 65
                        if _915 + ceil32(return_data.size) + ceil32(32 * mem[_915 + mem[_915]]) + 1 > test266151307() or ceil32(32 * mem[_915 + mem[_915]]) + 1 < 0:
                            revert with 0, 65
                        require return_data.size >= mem[_915] + (32 * mem[_915 + mem[_915]]) + 32
                        require ext_code.size(poolContractAddress)
                        call poolContractAddress.addLiquidity(uint256 arg1, uint256 arg2, address arg3) with:
                             gas gas_remaining wei
                            args stor13, mem[(32 * _451 - 1) + (7 * ceil32(return_data.size)) + 256], this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(poolTokenAddress)
                        staticcall poolTokenAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if mem[(32 * _451 - 1) + (7 * ceil32(return_data.size)) + 256] <= 0:
                            revert with 0, 'amount too low'
                        require ext_code.size(stakingContractAddress)
                        call stakingContractAddress.deposit(uint256 arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args pid, mem[(32 * _451 - 1) + (7 * ceil32(return_data.size)) + 272 len 16]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if totalDeposits > !mem[(32 * _451 - 1) + (7 * ceil32(return_data.size)) + 256]:
                            revert with 0, 17
                        totalDeposits += mem[(32 * _451 - 1) + (7 * ceil32(return_data.size)) + 256]
                        emit Reinvest(totalDeposits + mem[(32 * _451 - 1) + (7 * ceil32(return_data.size)) + 256], totalSupply);
                    else:
                        mem[(6 * ceil32(return_data.size)) + 100] = msg.sender
                        mem[(6 * ceil32(return_data.size)) + 132] = ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000
                        require ext_code.size(rewardToken1Address)
                        call rewardToken1Address.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000
                        mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if not ext_call.return_data[0]:
                            revert with 0, 'reinvest fee transfer failed'
                        if ext_call.return_data[0] < ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000:
                            revert with 0, 17
                        if ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) < ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000:
                            revert with 0, 17
                        if ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000) <= 0:
                            revert with 0, '::_convertRewardTokensToDepositTokens'
                        mem[(7 * ceil32(return_data.size)) + 96] = 3
                        mem[(7 * ceil32(return_data.size)) + 128] = rewardToken1Address
                        mem[(7 * ceil32(return_data.size)) + 160] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                        mem[(7 * ceil32(return_data.size)) + 192] = depositTokenAddress
                        mem[(7 * ceil32(return_data.size)) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[(7 * ceil32(return_data.size)) + 228] = ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)
                        mem[(7 * ceil32(return_data.size)) + 260] = 64
                        mem[(7 * ceil32(return_data.size)) + 292] = 3
                        idx = 0
                        s = (7 * ceil32(return_data.size)) + 128
                        t = (7 * ceil32(return_data.size)) + 324
                        while idx < 3:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(routerAddress)
                        staticcall routerAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000), Array(len=3, data=mem[(7 * ceil32(return_data.size)) + 324 len 96])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(7 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (8 * ceil32(return_data.size)) + 224
                        require return_data.size >= 32
                        _444 = mem[(7 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32
                        require mem[(7 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 <= test266151307()
                        require (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 255 < (7 * ceil32(return_data.size)) + return_data.size + 224
                        _452 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 224]
                        if mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 224] > test266151307():
                            revert with 0, 65
                        if (8 * ceil32(return_data.size)) + ceil32(32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 224]) + 225 > test266151307() or ceil32(32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 224]) + 1 < 0:
                            revert with 0, 65
                        mem[64] = (8 * ceil32(return_data.size)) + ceil32(32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 224]) + 225
                        mem[(8 * ceil32(return_data.size)) + 224] = _452
                        require return_data.size >= _444 + (32 * _452) + 32
                        mem[(8 * ceil32(return_data.size)) + 256 len 32 * _452] = mem[(7 * ceil32(return_data.size)) + _444 + 256 len 32 * _452]
                        if _452 < 1:
                            revert with 0, 17
                        if _452 - 1 >= _452:
                            revert with 0, 50
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)
                        mem[mem[64] + 36] = mem[(32 * _452 - 1) + (8 * ceil32(return_data.size)) + 256]
                        mem[mem[64] + 68] = 160
                        mem[mem[64] + 164] = 3
                        idx = 0
                        s = (7 * ceil32(return_data.size)) + 128
                        t = mem[64] + 196
                        while idx < 3:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 100] = this.address
                        mem[mem[64] + 132] = block.timestamp
                        require ext_code.size(routerAddress)
                        call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000), mem[(32 * _452 - 1) + (8 * ceil32(return_data.size)) + 256], Array(len=3, data=mem[mem[64] + 196 len 96]), address(this.address), block.timestamp
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _916 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_916] <= test266151307()
                        require _916 + mem[_916] + 31 < _916 + return_data.size
                        if mem[_916 + mem[_916]] > test266151307():
                            revert with 0, 65
                        if _916 + ceil32(return_data.size) + ceil32(32 * mem[_916 + mem[_916]]) + 1 > test266151307() or ceil32(32 * mem[_916 + mem[_916]]) + 1 < 0:
                            revert with 0, 65
                        require return_data.size >= mem[_916] + (32 * mem[_916 + mem[_916]]) + 32
                        require ext_code.size(poolContractAddress)
                        call poolContractAddress.addLiquidity(uint256 arg1, uint256 arg2, address arg3) with:
                             gas gas_remaining wei
                            args stor13, mem[(32 * _452 - 1) + (8 * ceil32(return_data.size)) + 256], this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(poolTokenAddress)
                        staticcall poolTokenAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if mem[(32 * _452 - 1) + (8 * ceil32(return_data.size)) + 256] <= 0:
                            revert with 0, 'amount too low'
                        require ext_code.size(stakingContractAddress)
                        call stakingContractAddress.deposit(uint256 arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args pid, mem[(32 * _452 - 1) + (8 * ceil32(return_data.size)) + 272 len 16]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if totalDeposits > !mem[(32 * _452 - 1) + (8 * ceil32(return_data.size)) + 256]:
                            revert with 0, 17
                        totalDeposits += mem[(32 * _452 - 1) + (8 * ceil32(return_data.size)) + 256]
                        emit Reinvest(totalDeposits + mem[(32 * _452 - 1) + (8 * ceil32(return_data.size)) + 256], totalSupply);
    else:
        if ext_call.return_data[0] and totalSupply > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if not totalDeposits:
            revert with 0, 18
        if not msg.sender:
            revert with 0, 'ERC20: mint to the zero address'
        if totalSupply > !(ext_call.return_data[0] * totalSupply / totalDeposits):
            revert with 0, 17
        totalSupply += ext_call.return_data[0] * totalSupply / totalDeposits
        mem[0] = msg.sender
        mem[32] = 0
        if balanceOf[address(msg.sender)] > !(ext_call.return_data[0] * totalSupply / totalDeposits):
            revert with 0, 17
        balanceOf[address(msg.sender)] += ext_call.return_data[0] * totalSupply / totalDeposits
        emit Transfer((ext_call.return_data[0] * totalSupply / totalDeposits), 0, msg.sender);
        if totalDeposits > !ext_call.return_data[0]:
            revert with 0, 17
        totalDeposits += ext_call.return_data[0]
        if uint8(stor19):
            mem[(2 * ceil32(return_data.size)) + 100] = this.address
            require ext_code.size(rewardToken1Address)
            staticcall rewardToken1Address.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] >= sub_03cac7e5:
                require ext_code.size(stakingContractAddress)
                call stakingContractAddress.deposit(uint256 arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args pid, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if ext_call.return_data[0] and ADMIN_FEE_BIPS > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                if not ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000:
                    if ext_call.return_data[0] and REINVEST_REWARD_BIPS > -1 / ext_call.return_data[0]:
                        revert with 0, 17
                    if not ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000:
                        if ext_call.return_data[0] < ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000:
                            revert with 0, 17
                        if ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) < ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000:
                            revert with 0, 17
                        if ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000) <= 0:
                            revert with 0, '::_convertRewardTokensToDepositTokens'
                        mem[(4 * ceil32(return_data.size)) + 96] = 3
                        mem[(4 * ceil32(return_data.size)) + 128] = rewardToken1Address
                        mem[(4 * ceil32(return_data.size)) + 160] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                        mem[(4 * ceil32(return_data.size)) + 192] = depositTokenAddress
                        mem[(4 * ceil32(return_data.size)) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[(4 * ceil32(return_data.size)) + 228] = ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)
                        mem[(4 * ceil32(return_data.size)) + 260] = 64
                        mem[(4 * ceil32(return_data.size)) + 292] = 3
                        idx = 0
                        s = (4 * ceil32(return_data.size)) + 128
                        t = (4 * ceil32(return_data.size)) + 324
                        while idx < 3:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(routerAddress)
                        staticcall routerAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000), Array(len=3, data=mem[(4 * ceil32(return_data.size)) + 324 len 96])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(4 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (6 * ceil32(return_data.size)) + 224
                        require return_data.size >= 32
                        _437 = mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32
                        require mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 <= test266151307()
                        require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 255 < (4 * ceil32(return_data.size)) + return_data.size + 224
                        _445 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 224]
                        if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 224] > test266151307():
                            revert with 0, 65
                        if (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 224]) + 225 > test266151307() or ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 224]) + 1 < 0:
                            revert with 0, 65
                        mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 224]) + 225
                        mem[(6 * ceil32(return_data.size)) + 224] = _445
                        require return_data.size >= _437 + (32 * _445) + 32
                        mem[(6 * ceil32(return_data.size)) + 256 len 32 * _445] = mem[(4 * ceil32(return_data.size)) + _437 + 256 len 32 * _445]
                        if _445 < 1:
                            revert with 0, 17
                        if _445 - 1 >= _445:
                            revert with 0, 50
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)
                        mem[mem[64] + 36] = mem[(32 * _445 - 1) + (6 * ceil32(return_data.size)) + 256]
                        mem[mem[64] + 68] = 160
                        mem[mem[64] + 164] = 3
                        idx = 0
                        s = (4 * ceil32(return_data.size)) + 128
                        t = mem[64] + 196
                        while idx < 3:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 100] = this.address
                        mem[mem[64] + 132] = block.timestamp
                        require ext_code.size(routerAddress)
                        call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000), mem[(32 * _445 - 1) + (6 * ceil32(return_data.size)) + 256], Array(len=3, data=mem[mem[64] + 196 len 96]), address(this.address), block.timestamp
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _909 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_909] <= test266151307()
                        require _909 + mem[_909] + 31 < _909 + return_data.size
                        if mem[_909 + mem[_909]] > test266151307():
                            revert with 0, 65
                        if _909 + ceil32(return_data.size) + ceil32(32 * mem[_909 + mem[_909]]) + 1 > test266151307() or ceil32(32 * mem[_909 + mem[_909]]) + 1 < 0:
                            revert with 0, 65
                        require return_data.size >= mem[_909] + (32 * mem[_909 + mem[_909]]) + 32
                        require ext_code.size(poolContractAddress)
                        call poolContractAddress.addLiquidity(uint256 arg1, uint256 arg2, address arg3) with:
                             gas gas_remaining wei
                            args stor13, mem[(32 * _445 - 1) + (6 * ceil32(return_data.size)) + 256], this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(poolTokenAddress)
                        staticcall poolTokenAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if mem[(32 * _445 - 1) + (6 * ceil32(return_data.size)) + 256] <= 0:
                            revert with 0, 'amount too low'
                        require ext_code.size(stakingContractAddress)
                        call stakingContractAddress.deposit(uint256 arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args pid, mem[(32 * _445 - 1) + (6 * ceil32(return_data.size)) + 272 len 16]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if totalDeposits > !mem[(32 * _445 - 1) + (6 * ceil32(return_data.size)) + 256]:
                            revert with 0, 17
                        totalDeposits += mem[(32 * _445 - 1) + (6 * ceil32(return_data.size)) + 256]
                        emit Reinvest(totalDeposits + mem[(32 * _445 - 1) + (6 * ceil32(return_data.size)) + 256], totalSupply);
                    else:
                        mem[(4 * ceil32(return_data.size)) + 100] = msg.sender
                        mem[(4 * ceil32(return_data.size)) + 132] = ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000
                        require ext_code.size(rewardToken1Address)
                        call rewardToken1Address.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000
                        mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if not ext_call.return_data[0]:
                            revert with 0, 'reinvest fee transfer failed'
                        if ext_call.return_data[0] < ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000:
                            revert with 0, 17
                        if ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) < ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000:
                            revert with 0, 17
                        if ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000) <= 0:
                            revert with 0, '::_convertRewardTokensToDepositTokens'
                        mem[(6 * ceil32(return_data.size)) + 96] = 3
                        mem[(6 * ceil32(return_data.size)) + 128] = rewardToken1Address
                        mem[(6 * ceil32(return_data.size)) + 160] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                        mem[(6 * ceil32(return_data.size)) + 192] = depositTokenAddress
                        mem[(6 * ceil32(return_data.size)) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[(6 * ceil32(return_data.size)) + 228] = ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)
                        mem[(6 * ceil32(return_data.size)) + 260] = 64
                        mem[(6 * ceil32(return_data.size)) + 292] = 3
                        idx = 0
                        s = (6 * ceil32(return_data.size)) + 128
                        t = (6 * ceil32(return_data.size)) + 324
                        while idx < 3:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(routerAddress)
                        staticcall routerAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000), Array(len=3, data=mem[(6 * ceil32(return_data.size)) + 324 len 96])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(6 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (7 * ceil32(return_data.size)) + 224
                        require return_data.size >= 32
                        _438 = mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32
                        require mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 <= test266151307()
                        require (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 255 < (6 * ceil32(return_data.size)) + return_data.size + 224
                        _446 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 224]
                        if mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 224] > test266151307():
                            revert with 0, 65
                        if (7 * ceil32(return_data.size)) + ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 224]) + 225 > test266151307() or ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 224]) + 1 < 0:
                            revert with 0, 65
                        mem[64] = (7 * ceil32(return_data.size)) + ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 224]) + 225
                        mem[(7 * ceil32(return_data.size)) + 224] = _446
                        require return_data.size >= _438 + (32 * _446) + 32
                        mem[(7 * ceil32(return_data.size)) + 256 len 32 * _446] = mem[(6 * ceil32(return_data.size)) + _438 + 256 len 32 * _446]
                        if _446 < 1:
                            revert with 0, 17
                        if _446 - 1 >= _446:
                            revert with 0, 50
                        _703 = mem[(32 * _446 - 1) + (7 * ceil32(return_data.size)) + 256]
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)
                        mem[mem[64] + 36] = _703
                        mem[mem[64] + 68] = 160
                        mem[mem[64] + 164] = 3
                        idx = 0
                        s = (6 * ceil32(return_data.size)) + 128
                        t = mem[64] + 196
                        while idx < 3:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 100] = this.address
                        mem[mem[64] + 132] = block.timestamp
                        require ext_code.size(routerAddress)
                        call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000), _703, Array(len=3, data=mem[mem[64] + 196 len 96]), address(this.address), block.timestamp
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _910 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_910] <= test266151307()
                        require _910 + mem[_910] + 31 < _910 + return_data.size
                        if mem[_910 + mem[_910]] > test266151307():
                            revert with 0, 65
                        if _910 + ceil32(return_data.size) + ceil32(32 * mem[_910 + mem[_910]]) + 1 > test266151307() or ceil32(32 * mem[_910 + mem[_910]]) + 1 < 0:
                            revert with 0, 65
                        require return_data.size >= mem[_910] + (32 * mem[_910 + mem[_910]]) + 32
                        require ext_code.size(poolContractAddress)
                        call poolContractAddress.addLiquidity(uint256 arg1, uint256 arg2, address arg3) with:
                             gas gas_remaining wei
                            args stor13, _703, this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(poolTokenAddress)
                        staticcall poolTokenAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if _703 <= 0:
                            revert with 0, 'amount too low'
                        require ext_code.size(stakingContractAddress)
                        call stakingContractAddress.deposit(uint256 arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args pid, uint128(_703)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if totalDeposits > !_703:
                            revert with 0, 17
                        totalDeposits += _703
                        emit Reinvest(totalDeposits + _703, totalSupply);
                else:
                    mem[(4 * ceil32(return_data.size)) + 100] = feeDestinationAddress
                    mem[(4 * ceil32(return_data.size)) + 132] = ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000
                    require ext_code.size(rewardToken1Address)
                    call rewardToken1Address.0xa9059cbb with:
                         gas gas_remaining wei
                        args feeDestinationAddress, ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000
                    mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if not ext_call.return_data[0]:
                        revert with 0, 'admin fee transfer failed'
                    if ext_call.return_data[0] and REINVEST_REWARD_BIPS > -1 / ext_call.return_data[0]:
                        revert with 0, 17
                    if not ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000:
                        if ext_call.return_data[0] < ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000:
                            revert with 0, 17
                        if ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) < ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000:
                            revert with 0, 17
                        if ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000) <= 0:
                            revert with 0, '::_convertRewardTokensToDepositTokens'
                        mem[(6 * ceil32(return_data.size)) + 96] = 3
                        mem[(6 * ceil32(return_data.size)) + 128] = rewardToken1Address
                        mem[(6 * ceil32(return_data.size)) + 160] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                        mem[(6 * ceil32(return_data.size)) + 192] = depositTokenAddress
                        mem[(6 * ceil32(return_data.size)) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[(6 * ceil32(return_data.size)) + 228] = ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)
                        mem[(6 * ceil32(return_data.size)) + 260] = 64
                        mem[(6 * ceil32(return_data.size)) + 292] = 3
                        idx = 0
                        s = (6 * ceil32(return_data.size)) + 128
                        t = (6 * ceil32(return_data.size)) + 324
                        while idx < 3:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(routerAddress)
                        staticcall routerAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000), Array(len=3, data=mem[(6 * ceil32(return_data.size)) + 324 len 96])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(6 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (7 * ceil32(return_data.size)) + 224
                        require return_data.size >= 32
                        _439 = mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32
                        require mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 <= test266151307()
                        require (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 255 < (6 * ceil32(return_data.size)) + return_data.size + 224
                        _447 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 224]
                        if mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 224] > test266151307():
                            revert with 0, 65
                        if (7 * ceil32(return_data.size)) + ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 224]) + 225 > test266151307() or ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 224]) + 1 < 0:
                            revert with 0, 65
                        mem[64] = (7 * ceil32(return_data.size)) + ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 224]) + 225
                        mem[(7 * ceil32(return_data.size)) + 224] = _447
                        require return_data.size >= _439 + (32 * _447) + 32
                        mem[(7 * ceil32(return_data.size)) + 256 len 32 * _447] = mem[(6 * ceil32(return_data.size)) + _439 + 256 len 32 * _447]
                        if _447 < 1:
                            revert with 0, 17
                        if _447 - 1 >= _447:
                            revert with 0, 50
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)
                        mem[mem[64] + 36] = mem[(32 * _447 - 1) + (7 * ceil32(return_data.size)) + 256]
                        mem[mem[64] + 68] = 160
                        mem[mem[64] + 164] = 3
                        idx = 0
                        s = (6 * ceil32(return_data.size)) + 128
                        t = mem[64] + 196
                        while idx < 3:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 100] = this.address
                        mem[mem[64] + 132] = block.timestamp
                        require ext_code.size(routerAddress)
                        call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000), mem[(32 * _447 - 1) + (7 * ceil32(return_data.size)) + 256], Array(len=3, data=mem[mem[64] + 196 len 96]), address(this.address), block.timestamp
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _911 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_911] <= test266151307()
                        require _911 + mem[_911] + 31 < _911 + return_data.size
                        if mem[_911 + mem[_911]] > test266151307():
                            revert with 0, 65
                        if _911 + ceil32(return_data.size) + ceil32(32 * mem[_911 + mem[_911]]) + 1 > test266151307() or ceil32(32 * mem[_911 + mem[_911]]) + 1 < 0:
                            revert with 0, 65
                        require return_data.size >= mem[_911] + (32 * mem[_911 + mem[_911]]) + 32
                        require ext_code.size(poolContractAddress)
                        call poolContractAddress.addLiquidity(uint256 arg1, uint256 arg2, address arg3) with:
                             gas gas_remaining wei
                            args stor13, mem[(32 * _447 - 1) + (7 * ceil32(return_data.size)) + 256], this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(poolTokenAddress)
                        staticcall poolTokenAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if mem[(32 * _447 - 1) + (7 * ceil32(return_data.size)) + 256] <= 0:
                            revert with 0, 'amount too low'
                        require ext_code.size(stakingContractAddress)
                        call stakingContractAddress.deposit(uint256 arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args pid, mem[(32 * _447 - 1) + (7 * ceil32(return_data.size)) + 272 len 16]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if totalDeposits > !mem[(32 * _447 - 1) + (7 * ceil32(return_data.size)) + 256]:
                            revert with 0, 17
                        totalDeposits += mem[(32 * _447 - 1) + (7 * ceil32(return_data.size)) + 256]
                        emit Reinvest(totalDeposits + mem[(32 * _447 - 1) + (7 * ceil32(return_data.size)) + 256], totalSupply);
                    else:
                        mem[(6 * ceil32(return_data.size)) + 100] = msg.sender
                        mem[(6 * ceil32(return_data.size)) + 132] = ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000
                        require ext_code.size(rewardToken1Address)
                        call rewardToken1Address.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000
                        mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if not ext_call.return_data[0]:
                            revert with 0, 'reinvest fee transfer failed'
                        if ext_call.return_data[0] < ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000:
                            revert with 0, 17
                        if ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) < ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000:
                            revert with 0, 17
                        if ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000) <= 0:
                            revert with 0, '::_convertRewardTokensToDepositTokens'
                        mem[(7 * ceil32(return_data.size)) + 96] = 3
                        mem[(7 * ceil32(return_data.size)) + 128] = rewardToken1Address
                        mem[(7 * ceil32(return_data.size)) + 160] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                        mem[(7 * ceil32(return_data.size)) + 192] = depositTokenAddress
                        mem[(7 * ceil32(return_data.size)) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[(7 * ceil32(return_data.size)) + 228] = ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)
                        mem[(7 * ceil32(return_data.size)) + 260] = 64
                        mem[(7 * ceil32(return_data.size)) + 292] = 3
                        idx = 0
                        s = (7 * ceil32(return_data.size)) + 128
                        t = (7 * ceil32(return_data.size)) + 324
                        while idx < 3:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(routerAddress)
                        staticcall routerAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000), Array(len=3, data=mem[(7 * ceil32(return_data.size)) + 324 len 96])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(7 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (8 * ceil32(return_data.size)) + 224
                        require return_data.size >= 32
                        _440 = mem[(7 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32
                        require mem[(7 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 <= test266151307()
                        require (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 255 < (7 * ceil32(return_data.size)) + return_data.size + 224
                        _448 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 224]
                        if mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 224] > test266151307():
                            revert with 0, 65
                        if (8 * ceil32(return_data.size)) + ceil32(32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 224]) + 225 > test266151307() or ceil32(32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 224]) + 1 < 0:
                            revert with 0, 65
                        mem[64] = (8 * ceil32(return_data.size)) + ceil32(32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)) >> 32 + 224]) + 225
                        mem[(8 * ceil32(return_data.size)) + 224] = _448
                        require return_data.size >= _440 + (32 * _448) + 32
                        mem[(8 * ceil32(return_data.size)) + 256 len 32 * _448] = mem[(7 * ceil32(return_data.size)) + _440 + 256 len 32 * _448]
                        if _448 < 1:
                            revert with 0, 17
                        if _448 - 1 >= _448:
                            revert with 0, 50
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000)
                        mem[mem[64] + 36] = mem[(32 * _448 - 1) + (8 * ceil32(return_data.size)) + 256]
                        mem[mem[64] + 68] = 160
                        mem[mem[64] + 164] = 3
                        idx = 0
                        s = (7 * ceil32(return_data.size)) + 128
                        t = mem[64] + 196
                        while idx < 3:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 100] = this.address
                        mem[mem[64] + 132] = block.timestamp
                        require ext_code.size(routerAddress)
                        call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0] - (ext_call.return_data[0] * ADMIN_FEE_BIPS / 10000) - (ext_call.return_data[0] * REINVEST_REWARD_BIPS / 10000), mem[(32 * _448 - 1) + (8 * ceil32(return_data.size)) + 256], Array(len=3, data=mem[mem[64] + 196 len 96]), address(this.address), block.timestamp
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _912 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_912] <= test266151307()
                        require _912 + mem[_912] + 31 < _912 + return_data.size
                        if mem[_912 + mem[_912]] > test266151307():
                            revert with 0, 65
                        if _912 + ceil32(return_data.size) + ceil32(32 * mem[_912 + mem[_912]]) + 1 > test266151307() or ceil32(32 * mem[_912 + mem[_912]]) + 1 < 0:
                            revert with 0, 65
                        require return_data.size >= mem[_912] + (32 * mem[_912 + mem[_912]]) + 32
                        require ext_code.size(poolContractAddress)
                        call poolContractAddress.addLiquidity(uint256 arg1, uint256 arg2, address arg3) with:
                             gas gas_remaining wei
                            args stor13, mem[(32 * _448 - 1) + (8 * ceil32(return_data.size)) + 256], this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(poolTokenAddress)
                        staticcall poolTokenAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if mem[(32 * _448 - 1) + (8 * ceil32(return_data.size)) + 256] <= 0:
                            revert with 0, 'amount too low'
                        require ext_code.size(stakingContractAddress)
                        call stakingContractAddress.deposit(uint256 arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args pid, mem[(32 * _448 - 1) + (8 * ceil32(return_data.size)) + 272 len 16]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if totalDeposits > !mem[(32 * _448 - 1) + (8 * ceil32(return_data.size)) + 256]:
                            revert with 0, 17
                        totalDeposits += mem[(32 * _448 - 1) + (8 * ceil32(return_data.size)) + 256]
                        emit Reinvest(totalDeposits + mem[(32 * _448 - 1) + (8 * ceil32(return_data.size)) + 256], totalSupply);
    emit Deposit(ext_call.return_data[0], msg.sender);
}



}
