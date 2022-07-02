contract main {




// =====================  Runtime code  =====================


#
#  - sub_077e2e37(?)
#  - withdraw(uint256 arg1)
#  - sub_8245cb86(?)
#  - deposit(uint256 arg1)
#  - emergencyWithdraw()
#  - reinvest()
#
const decimals = 18


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of struct stor3;
array of struct stor4;
uint8 stor5;
address owner; offset 8
uint256 MIN_TOKENS_TO_REINVEST;
uint256 DEV_FEE_BIPS;
uint256 REINVEST_REWARD_BIPS;
address routerAddress;
address sub_a614d69fAddress;
address sub_13bb3c33Address;
uint256 sub_3cd24362;
address devaddr;
address sub_13ab14b3Address;
address rewardTokenAddress;
array of address sub_af386a85;
array of uint256 blockDeltaStartStage;
array of uint256 blockDeltaEndStage;
array of uint256 userFeeStage;
uint256 userDepFee;
uint256 PERCENT_LOCK_BONUS_REWARD;
address stor22;
uint256 stor23;
uint8 stor24;
address stor25;
uint256 stor26; offset 32
uint256 stor26;
mapping of struct userInfo;
mapping of uint8 stor28;

function sub_13ab14b3(?) payable {
    return sub_13ab14b3Address
}

function sub_13bb3c33(?) payable {
    return sub_13bb3c33Address
}

function totalSupply() payable {
    return totalSupply
}

function userInfo(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return userInfo[arg1].field_0, 
           userInfo[arg1].field_256,
           userInfo[arg1].field_512,
           userInfo[arg1].field_768,
           userInfo[arg1].field_1024,
           userInfo[arg1].field_1280,
           userInfo[arg1].field_1536
}

function sub_3cd24362(?) payable {
    return sub_3cd24362
}

function paused() payable {
    return bool(stor5)
}

function DEV_FEE_BIPS() payable {
    return DEV_FEE_BIPS
}

function blockDeltaStartStage(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < blockDeltaStartStage.length
    return blockDeltaStartStage[arg1]
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function userDepFee() payable {
    return userDepFee
}

function REINVEST_REWARD_BIPS() payable {
    return REINVEST_REWARD_BIPS
}

function owner() payable {
    return owner
}

function PERCENT_LOCK_BONUS_REWARD() payable {
    return PERCENT_LOCK_BONUS_REWARD
}

function sub_a614d69f(?) payable {
    return sub_a614d69fAddress
}

function sub_af386a85(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_af386a85.length
    return address(sub_af386a85[arg1])
}

function authorized(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor28[arg1])
}

function MIN_TOKENS_TO_REINVEST() payable {
    return MIN_TOKENS_TO_REINVEST
}

function blockDeltaEndStage(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < blockDeltaEndStage.length
    return blockDeltaEndStage[arg1]
}

function userFeeStage(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < userFeeStage.length
    return userFeeStage[arg1]
}

function devaddr() payable {
    return devaddr
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function rewardToken() payable {
    return rewardTokenAddress
}

function router() payable {
    return routerAddress
}

function _fallback() payable {
    revert
}

function poolInfo() payable {
    return stor22, stor23, bool(stor24)
}

function sub_5e30c164(?) payable {
    return stor25, uint256(stor26.field_0)
}

function sub_2556c7cb(?) payable {
    require calldata.size - 4 >= 32
    if not stor28[msg.sender]:
        require msg.sender == owner
    DEV_FEE_BIPS = arg1
}

function sub_e8e12ab1(?) payable {
    require calldata.size - 4 >= 32
    if not stor28[msg.sender]:
        require msg.sender == owner
    REINVEST_REWARD_BIPS = arg1
}

function setDepositFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not stor28[msg.sender]:
        require msg.sender == owner
    userDepFee = arg1
}

function sub_7bc017d4(?) payable {
    require calldata.size - 4 >= 32
    if not stor28[msg.sender]:
        require msg.sender == owner
    MIN_TOKENS_TO_REINVEST = arg1
}

function sub_01548337(?) payable {
    require calldata.size - 4 >= 32
    if not stor28[msg.sender]:
        require msg.sender == owner
    PERCENT_LOCK_BONUS_REWARD = arg1
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function pause() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor5:
        revert with 0, 'Pausable: paused'
    stor5 = 1
    emit Paused(msg.sender);
}

function sub_6c600dce(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    devaddr = address(arg1)
}

function unpause() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not stor5:
        revert with 0, 'Pausable: not paused'
    stor5 = 0
    emit Unpaused(msg.sender);
}

function addAuthorized(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor28[address(arg1)] = 1
}

function sub_33dd2318(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_13ab14b3Address = address(arg1)
}

function sub_b55a0845(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    userInfo[address(arg1)].field_768 = arg2
}

function sub_2b217753(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    userInfo[address(arg1)].field_1024 = arg2
}

function sub_ebffde56(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_a614d69fAddress = address(arg1)
    sub_3cd24362 = arg2
}

function removeAuthorized(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg1 != msg.sender
    stor28[address(arg1)] = 0
}

function updateDepositsEnabled(bool arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg1 != bool(stor24)
    stor24 = uint8(arg1)
    emit DepositsEnabled(arg1);
}

function getDepositTokensForShares(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if totalSupply and stor23 > -1 / totalSupply:
        revert with 0, 17
    if not totalSupply * stor23:
        return 0
    if arg1 and stor23 > -1 / arg1:
        revert with 0, 17
    if not totalSupply:
        revert with 0, 18
    return (arg1 * stor23 / totalSupply)
}

function getSharesForDepositTokens(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if totalSupply and stor23 > -1 / totalSupply:
        revert with 0, 17
    if not totalSupply * stor23:
        return arg1
    if arg1 and totalSupply > -1 / arg1:
        revert with 0, 17
    if not stor23:
        revert with 0, 18
    return (arg1 * totalSupply / stor23)
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
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

function mint(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'ERC20: mint to the zero address'
    if stor5:
        revert with 0, 'Pausable: paused'
    if totalSupply > !arg2:
        revert with 0, 17
    totalSupply += arg2
    if balanceOf[address(arg1)] > !arg2:
        revert with 0, 17
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, 0, arg1);
}

function sub_9856b081(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor25:
        require ext_code.size(stor22)
        call stor22.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args stor25, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function burn(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn from the zero address'
    if stor5:
        revert with 0, 'Pausable: paused'
    if balanceOf[address(msg.sender)] < arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn amount exceeds balance'
    balanceOf[address(msg.sender)] -= arg1
    if totalSupply < arg1:
        revert with 0, 17
    totalSupply -= arg1
    emit Transfer(arg1, msg.sender, 0);
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

function sub_3fed04dc(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor25:
        require ext_code.size(stor25)
        call stor25.emergencyWithdraw(uint256 arg1, address arg2) with:
             gas gas_remaining wei
            args uint256(stor26.field_0), this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    if 1 == bool(stor24):
        if bool(arg1) == 1:
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            require bool(stor24) != 0
            stor24 = 0
            emit DepositsEnabled(0);
}

function updatePool() payable {
    require ext_code.size(sub_a614d69fAddress)
    staticcall sub_a614d69fAddress.0x1526fe27 with:
            gas gas_remaining wei
           args sub_3cd24362
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_call.return_data[32] == ext_call.return_data[44 len 20]
    if block.number > ext_call.return_data[96]:
        require ext_code.size(sub_a614d69fAddress)
        call sub_a614d69fAddress.0x51eb05a6 with:
             gas gas_remaining wei
            args sub_3cd24362
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
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

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if stor5:
        revert with 0, 'Pausable: paused'
    if balanceOf[address(msg.sender)] < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
    balanceOf[address(msg.sender)] -= arg2
    if balanceOf[arg1] > !arg2:
        revert with 0, 17
    balanceOf[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function setUserFeeStage(uint256[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require calldata.size > arg1 + 35
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg1.length) + 97 < 96 or ceil32(32 * arg1.length) + 97 > test266151307():
        revert with 0, 65
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    s = arg1 + 36
    t = 128
    idx = 0
    while idx < arg1.length:
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    if not stor28[msg.sender]:
        require msg.sender == owner
    userFeeStage.length = arg1.length
    if not arg1.length:
        idx = 0
        while userFeeStage.length > idx:
            userFeeStage[idx] = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * arg1.length) + 128 > idx:
            userFeeStage[s] = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg1.length) + 31) >> 5
        while userFeeStage.length > idx:
            userFeeStage[idx] = 0
            idx = idx + 1
            continue 
}

function setStageEnds(uint256[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require calldata.size > arg1 + 35
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg1.length) + 97 < 96 or ceil32(32 * arg1.length) + 97 > test266151307():
        revert with 0, 65
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    s = arg1 + 36
    t = 128
    idx = 0
    while idx < arg1.length:
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    if not stor28[msg.sender]:
        require msg.sender == owner
    blockDeltaEndStage.length = arg1.length
    if not arg1.length:
        idx = 0
        while blockDeltaEndStage.length > idx:
            blockDeltaEndStage[idx] = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * arg1.length) + 128 > idx:
            blockDeltaEndStage[s] = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg1.length) + 31) >> 5
        while blockDeltaEndStage.length > idx:
            blockDeltaEndStage[idx] = 0
            idx = idx + 1
            continue 
}

function setStageStarts(uint256[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require calldata.size > arg1 + 35
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg1.length) + 97 < 96 or ceil32(32 * arg1.length) + 97 > test266151307():
        revert with 0, 65
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    s = arg1 + 36
    t = 128
    idx = 0
    while idx < arg1.length:
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    if not stor28[msg.sender]:
        require msg.sender == owner
    blockDeltaStartStage.length = arg1.length
    if not arg1.length:
        idx = 0
        while blockDeltaStartStage.length > idx:
            blockDeltaStartStage[idx] = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * arg1.length) + 128 > idx:
            blockDeltaStartStage[s] = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg1.length) + 31) >> 5
        while blockDeltaStartStage.length > idx:
            blockDeltaStartStage[idx] = 0
            idx = idx + 1
            continue 
}

function burnFrom(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if allowance[address(arg1)][address(msg.sender)] != -1:
        if allowance[address(arg1)][address(msg.sender)] < arg2:
            revert with 0, 'ERC20: insufficient allowance'
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
        if not msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
        allowance[address(arg1)][address(msg.sender)] -= arg2
        emit Approval((allowance[address(arg1)][address(msg.sender)] - arg2), arg1, msg.sender);
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn from the zero address'
    if stor5:
        revert with 0, 'Pausable: paused'
    if balanceOf[address(arg1)] < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn amount exceeds balance'
    balanceOf[address(arg1)] -= arg2
    if totalSupply < arg2:
        revert with 0, 17
    totalSupply -= arg2
    emit Transfer(arg2, arg1, 0);
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if allowance[address(arg1)][address(msg.sender)] != -1:
        if allowance[address(arg1)][address(msg.sender)] < arg3:
            revert with 0, 'ERC20: insufficient allowance'
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
        if not msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
        allowance[address(arg1)][address(msg.sender)] -= arg3
        emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if stor5:
        revert with 0, 'Pausable: paused'
    if balanceOf[address(arg1)] < arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
    balanceOf[address(arg1)] -= arg3
    if balanceOf[arg2] > !arg3:
        revert with 0, 17
    balanceOf[arg2] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function sub_1dd523fc(?) payable {
    require calldata.size - 4 >= 288
    require cd[4] == address(cd[4])
    require cd[36] == address(cd[36])
    require cd[100] == address(cd[100])
    require cd[132] <= test266151307()
    require cd[132] + 35 < calldata.size
    if ('cd', 132).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 132).length) + 97 < 96 or ceil32(32 * ('cd', 132).length) + 97 > test266151307():
        revert with 0, 65
    require cd[132] + (32 * ('cd', 132).length) + 36 <= calldata.size
    idx = 0
    s = cd[132] + 36
    t = 128
    while idx < ('cd', 132).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[164] == address(cd[164])
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not address(cd[4]):
        revert with 0, 'lp addres != 0'
    if not address(cd[36]):
        revert with 0, 'contract !=0 '
    stor22 = address(cd[4])
    stor23 = 0
    stor24 = 1
    stor25 = address(cd[36])
    uint256(stor26.field_0) = cd[68]
    rewardTokenAddress = address(cd[100])
    sub_af386a85.length = ('cd', 132).length
    if not ('cd', 132).length:
        idx = 0
        while sub_af386a85.length > idx:
            uint256(sub_af386a85[idx]) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * ('cd', 132).length) + 128 > idx:
            address(sub_af386a85[s]) = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * ('cd', 132).length) + 31) >> 5
        while sub_af386a85.length > idx:
            uint256(sub_af386a85[idx]) = 0
            idx = idx + 1
            continue 
    routerAddress = address(cd[164])
    MIN_TOKENS_TO_REINVEST = cd[196]
    DEV_FEE_BIPS = cd[228]
    REINVEST_REWARD_BIPS = cd[260]
}

function pendingReward(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(sub_a614d69fAddress)
    staticcall sub_a614d69fAddress.0x1526fe27 with:
            gas gas_remaining wei
           args sub_3cd24362
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_call.return_data[32] == ext_call.return_data[44 len 20]
    if block.number <= ext_call.return_data[96]:
        if userInfo[address(arg1)].field_0 and ext_call.return_data[128] > -1 / userInfo[address(arg1)].field_0:
            revert with 0, 17
        if userInfo[address(arg1)].field_0 * ext_call.return_data[128] / 10^12 < userInfo[address(arg1)].field_256:
            revert with 0, 17
        return ((userInfo[address(arg1)].field_0 * ext_call.return_data[128] / 10^12) - userInfo[address(arg1)].field_256)
    if totalSupply <= 0:
        if userInfo[address(arg1)].field_0 and ext_call.return_data[128] > -1 / userInfo[address(arg1)].field_0:
            revert with 0, 17
        if userInfo[address(arg1)].field_0 * ext_call.return_data[128] / 10^12 < userInfo[address(arg1)].field_256:
            revert with 0, 17
        return ((userInfo[address(arg1)].field_0 * ext_call.return_data[128] / 10^12) - userInfo[address(arg1)].field_256)
    require ext_code.size(sub_a614d69fAddress)
    staticcall sub_a614d69fAddress.getPoolReward(uint256 arg1, uint256 arg2, uint256 arg3) with:
            gas gas_remaining wei
           args ext_call.return_data[96], block.number, ext_call.return_data[64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    if ext_call.return_data[32] > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
        revert with 0, 17
    if not totalSupply:
        revert with 0, 18
    if ext_call.return_data[128] > !(10^12 * ext_call.return_data[32] / totalSupply):
        revert with 0, 17
    if userInfo[address(arg1)].field_0 and ext_call.return_data[128] + (10^12 * ext_call.return_data[32] / totalSupply) > -1 / userInfo[address(arg1)].field_0:
        revert with 0, 17
    if (ext_call.return_data[128] * userInfo[address(arg1)].field_0) + (10^12 * ext_call.return_data[32] / totalSupply * userInfo[address(arg1)].field_0) / 10^12 < userInfo[address(arg1)].field_256:
        revert with 0, 17
    return (((ext_call.return_data[128] * userInfo[address(arg1)].field_0) + (10^12 * ext_call.return_data[32] / totalSupply * userInfo[address(arg1)].field_0) / 10^12) - userInfo[address(arg1)].field_256)
}

function sub_43386b8d(?) payable {
    require calldata.size - 4 >= 160
    require cd[4] == address(cd[4])
    require cd[68] == address(cd[68])
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    if ('cd', 100).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 100).length) + 97 < 96 or ceil32(32 * ('cd', 100).length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 100).length
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    idx = 0
    s = cd[100] + 36
    t = 128
    while idx < ('cd', 100).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[132] == bool(cd[132])
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not address(cd[4]):
        revert with 0, 'Add != 0'
    if cd[132]:
        require ext_code.size(sub_a614d69fAddress)
        staticcall sub_a614d69fAddress.0x1526fe27 with:
                gas gas_remaining wei
               args sub_3cd24362
        mem[ceil32(32 * ('cd', 100).length) + 97 len 160] = ext_call.return_data[0 len 160]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 160
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_call.return_data[32] == ext_call.return_data[44 len 20]
        if block.number > ext_call.return_data[96]:
            mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 97] = 0x51eb05a600000000000000000000000000000000000000000000000000000000
            mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 101] = sub_3cd24362
            require ext_code.size(sub_a614d69fAddress)
            call sub_a614d69fAddress.0x51eb05a6 with:
                 gas gas_remaining wei
                args sub_3cd24362
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    stor25 = address(cd[4])
    uint256(stor26.field_0) = cd[36]
    rewardTokenAddress = address(cd[68])
    sub_af386a85.length = ('cd', 100).length
    if not ('cd', 100).length:
        idx = 0
        while sub_af386a85.length > idx:
            uint256(sub_af386a85[idx]) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * ('cd', 100).length) + 128 > idx:
            address(sub_af386a85[s]) = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * ('cd', 100).length) + 31) >> 5
        while sub_af386a85.length > idx:
            uint256(sub_af386a85[idx]) = 0
            idx = idx + 1
            continue 
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

function sub_77d28fa1(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if routerAddress:
        mem[100] = routerAddress
        mem[132] = arg1
        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args routerAddress, arg1
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(stor22)
        staticcall stor22.token0() with:
                gas gas_remaining wei
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[(2 * ceil32(return_data.size)) + 100] = routerAddress
        mem[(2 * ceil32(return_data.size)) + 132] = arg1
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args routerAddress, arg1
        mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(stor22)
        staticcall stor22.0xd21220a7 with:
                gas gas_remaining wei
        mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[(6 * ceil32(return_data.size)) + 100] = routerAddress
        mem[(6 * ceil32(return_data.size)) + 132] = arg1
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args routerAddress, arg1
        mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[(7 * ceil32(return_data.size)) + 100] = routerAddress
        mem[(7 * ceil32(return_data.size)) + 132] = arg1
        require ext_code.size(stor22)
        call stor22.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args routerAddress, arg1
        mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[(8 * ceil32(return_data.size)) + 100] = routerAddress
        mem[(8 * ceil32(return_data.size)) + 132] = arg1
        require ext_code.size(rewardTokenAddress)
        call rewardTokenAddress.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args routerAddress, arg1
        mem[(8 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = (10 * ceil32(return_data.size)) + 96
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        idx = 0
        while idx < sub_af386a85.length:
            mem[0] = 16
            mem[mem[64] + 4] = routerAddress
            mem[mem[64] + 36] = arg1
            require ext_code.size(address(sub_af386a85[idx]))
            call address(sub_af386a85[idx]).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args routerAddress, arg1
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _39 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_39] == bool(mem[_39])
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
}

function checkReward() payable {
    mem[100] = uint256(stor26.field_0)
    mem[132] = this.address
    require ext_code.size(stor25)
    staticcall stor25.pendingReward(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args uint256(stor26.field_0), this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 100] = this.address
    require ext_code.size(rewardTokenAddress)
    staticcall rewardTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if sub_af386a85.length:
        mem[(2 * ceil32(return_data.size)) + 100] = uint256(stor26.field_0)
        require ext_code.size(stor25)
        staticcall stor25.rewarder(uint256 arg1) with:
                gas gas_remaining wei
               args uint256(stor26.field_0)
        mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[(4 * ceil32(return_data.size)) + 96] = 0xd63b3c4900000000000000000000000000000000000000000000000000000000
        mem[(4 * ceil32(return_data.size)) + 100] = uint256(stor26.field_0)
        mem[(4 * ceil32(return_data.size)) + 132] = this.address
        mem[(4 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).pendingTokens(uint256 arg1, address arg2, uint256 arg3) with:
                gas gas_remaining wei
               args uint256(stor26.field_0), this.address, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(4 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (6 * ceil32(return_data.size)) + 96
        require return_data.size >= 64
        _18 = mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 0, stor26.field_32)
        require mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 0, stor26.field_32) <= test266151307()
        require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 0, stor26.field_32) + 127 < (4 * ceil32(return_data.size)) + return_data.size + 96
        _19 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 0, stor26.field_32) + 96]
        if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 0, stor26.field_32) + 96] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 0, stor26.field_32) + 96]) + 1 < 0 or (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 0, stor26.field_32) + 96]) + 97 > test266151307():
            revert with 0, 65
        mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 0, stor26.field_32) + 96]) + 97
        mem[(6 * ceil32(return_data.size)) + 96] = _19
        require _18 + (32 * _19) + 32 <= return_data.size
        s = (4 * ceil32(return_data.size)) + _18 + 128
        t = (6 * ceil32(return_data.size)) + 128
        idx = 0
        while idx < _19:
            require mem[s] == mem[s + 12 len 20]
            mem[t] = mem[s]
            s = s + 32
            t = t + 32
            idx = idx + 1
            continue 
        require mem[(4 * ceil32(return_data.size)) + 128] <= test266151307()
        require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 128] + 127 < (4 * ceil32(return_data.size)) + return_data.size + 96
        if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 128] + 96] > test266151307():
            revert with 0, 65
        if mem[64] + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 128] + 96]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 128] + 96]) + 1 > test266151307():
            revert with 0, 65
        require mem[(4 * ceil32(return_data.size)) + 128] + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 128] + 96]) + 32 <= return_data.size
    if ext_call.return_data[0] > !ext_call.return_data[0]:
        revert with 0, 17
    return (2 * ext_call.return_data[0])
}

function claimReward() payable {
    require ext_code.size(sub_a614d69fAddress)
    staticcall sub_a614d69fAddress.0x1526fe27 with:
            gas gas_remaining wei
           args sub_3cd24362
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_call.return_data[32] == ext_call.return_data[44 len 20]
    require ext_code.size(sub_a614d69fAddress)
    if block.number > ext_call.return_data[96]:
        call sub_a614d69fAddress.0x51eb05a6 with:
             gas gas_remaining wei
            args sub_3cd24362
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    staticcall sub_a614d69fAddress.0x1526fe27 with:
            gas gas_remaining wei
           args sub_3cd24362
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_call.return_data[32] == ext_call.return_data[44 len 20]
    if userInfo[address(msg.sender)].field_0:
        if userInfo[address(msg.sender)].field_0 and ext_call.return_data[128] > -1 / userInfo[address(msg.sender)].field_0:
            revert with 0, 17
        if userInfo[address(msg.sender)].field_0 * ext_call.return_data[128] / 10^12 < userInfo[address(msg.sender)].field_256:
            revert with 0, 17
        require ext_code.size(sub_13bb3c33Address)
        staticcall sub_13bb3c33Address.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if (userInfo[address(msg.sender)].field_0 * ext_call.return_data[128] / 10^12) - userInfo[address(msg.sender)].field_256 <= ext_call.return_data[0]:
            if (userInfo[address(msg.sender)].field_0 * ext_call.return_data[128] / 10^12) - userInfo[address(msg.sender)].field_256:
                require ext_code.size(sub_13bb3c33Address)
                call sub_13bb3c33Address.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, (userInfo[address(msg.sender)].field_0 * ext_call.return_data[128] / 10^12) - userInfo[address(msg.sender)].field_256
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if (userInfo[address(msg.sender)].field_0 * ext_call.return_data[128] / 10^12) - userInfo[address(msg.sender)].field_256 and PERCENT_LOCK_BONUS_REWARD > -1 / (userInfo[address(msg.sender)].field_0 * ext_call.return_data[128] / 10^12) - userInfo[address(msg.sender)].field_256:
                    revert with 0, 17
                require ext_code.size(sub_13bb3c33Address)
                call sub_13bb3c33Address.lock(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args msg.sender, (userInfo[address(msg.sender)].field_0 * ext_call.return_data[128] / 10^12 * PERCENT_LOCK_BONUS_REWARD) - (userInfo[address(msg.sender)].field_256 * PERCENT_LOCK_BONUS_REWARD) / 100
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                userInfo[address(msg.sender)].field_512 = block.number
                emit 0x93fdfb61: (userInfo[address(msg.sender)].field_0 * ext_call.return_data[128] / 10^12) - userInfo[address(msg.sender)].field_256, (userInfo[address(msg.sender)].field_0 * ext_call.return_data[128] / 10^12 * PERCENT_LOCK_BONUS_REWARD) - (userInfo[address(msg.sender)].field_256 * PERCENT_LOCK_BONUS_REWARD) / 100, msg.sender, sub_3cd24362
        else:
            if ext_call.return_data[0]:
                require ext_code.size(sub_13bb3c33Address)
                call sub_13bb3c33Address.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if ext_call.return_data[0] and PERCENT_LOCK_BONUS_REWARD > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                require ext_code.size(sub_13bb3c33Address)
                call sub_13bb3c33Address.lock(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args msg.sender, ext_call.return_data[0] * PERCENT_LOCK_BONUS_REWARD / 100
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                userInfo[address(msg.sender)].field_512 = block.number
                emit 0x93fdfb61: ext_call.return_data[0], ext_call.return_data[0] * PERCENT_LOCK_BONUS_REWARD / 100, msg.sender, sub_3cd24362
        if userInfo[address(msg.sender)].field_0 and ext_call.return_data[128] > -1 / userInfo[address(msg.sender)].field_0:
            revert with 0, 17
        userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * ext_call.return_data[128] / 10^12
}



}
