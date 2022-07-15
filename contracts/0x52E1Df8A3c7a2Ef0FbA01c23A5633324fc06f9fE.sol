contract main {




// =====================  Runtime code  =====================


#
#  - sub_077e2e37(?)
#  - withdraw(uint256 arg1)
#  - sub_8245cb86(?)
#  - deposit(uint256 arg1)
#  - reinvest()
#  - _fallback()
#
const decimals = 18


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of struct stor3;
array of struct stor4;
uint8 paused;
address owner; offset 8
uint256 stor6;
uint256 MIN_TOKENS_TO_REINVEST;
uint256 DEV_FEE_BIPS;
uint256 REINVEST_REWARD_BIPS;
address routerAddress;
address router2Address;
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
address stor24;
uint256 stor25;
uint8 stor26;
address stor27;
address stor28;
uint32 stor29;
uint256 stor29; offset 32
uint256 stor29;
mapping of struct userInfo;
mapping of uint8 stor31;

function sub_13ab14b3(?) {
    return sub_13ab14b3Address
}

function sub_13bb3c33(?) {
    return sub_13bb3c33Address
}

function totalSupply() {
    return totalSupply
}

function userInfo(address arg1) {
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

function sub_3cd24362(?) {
    return sub_3cd24362
}

function paused() {
    return bool(paused)
}

function DEV_FEE_BIPS() {
    return DEV_FEE_BIPS
}

function blockDeltaStartStage(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < blockDeltaStartStage.length
    return blockDeltaStartStage[arg1]
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function router2() {
    return router2Address
}

function userDepFee() {
    return userDepFee
}

function REINVEST_REWARD_BIPS() {
    return REINVEST_REWARD_BIPS
}

function owner() {
    return owner
}

function PERCENT_LOCK_BONUS_REWARD() {
    return PERCENT_LOCK_BONUS_REWARD
}

function sub_a614d69f(?) {
    return sub_a614d69fAddress
}

function sub_af386a85(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_af386a85.length
    return address(sub_af386a85[arg1])
}

function authorized(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor31[arg1])
}

function MIN_TOKENS_TO_REINVEST() {
    return MIN_TOKENS_TO_REINVEST
}

function blockDeltaEndStage(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < blockDeltaEndStage.length
    return blockDeltaEndStage[arg1]
}

function userFeeStage(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < userFeeStage.length
    return userFeeStage[arg1]
}

function devaddr() {
    return devaddr
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function rewardToken() {
    return rewardTokenAddress
}

function router() {
    return routerAddress
}

function poolInfo() {
    return stor24, stor25, bool(stor26)
}

function sub_5e30c164(?) {
    return stor27, stor28, uint256(stor29.field_0)
}

function sub_7bc017d4(?) {
    require calldata.size - 4 >= 32
    if not stor31[msg.sender]:
        require msg.sender == owner
    MIN_TOKENS_TO_REINVEST = arg1
}

function sub_01548337(?) {
    require calldata.size - 4 >= 32
    if not stor31[msg.sender]:
        require msg.sender == owner
    PERCENT_LOCK_BONUS_REWARD = arg1
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_6dfd2cbf(?) {
    require calldata.size - 4 >= 64
    if not stor31[msg.sender]:
        require msg.sender == owner
    DEV_FEE_BIPS = arg1
    REINVEST_REWARD_BIPS = arg2
}

function pause() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if paused:
        revert with 0, 'Pausable: paused'
    paused = 1
    emit Paused(msg.sender);
}

function addAuthorized(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor31[address(arg1)] = 1
}

function unpause() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not paused:
        revert with 0, 'Pausable: not paused'
    paused = 0
    emit Unpaused(msg.sender);
}

function sub_ebffde56(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_a614d69fAddress = address(arg1)
    sub_3cd24362 = arg2
}

function removeAuthorized(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg1 != msg.sender
    stor31[address(arg1)] = 0
}

function updateDepositsEnabled(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg1 != bool(stor26)
    stor26 = uint8(arg1)
    emit DepositsEnabled(arg1);
}

function sub_1a182b67(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    devaddr = address(arg1)
    sub_13ab14b3Address = address(arg2)
}

function getDepositTokensForShares(uint256 arg1) {
    require calldata.size - 4 >= 32
    if totalSupply and stor25 > -1 / totalSupply:
        revert with 0, 17
    if not totalSupply * stor25:
        return 0
    if arg1 and stor25 > -1 / arg1:
        revert with 0, 17
    if not totalSupply:
        revert with 0, 18
    return (arg1 * stor25 / totalSupply)
}

function getSharesForDepositTokens(uint256 arg1) {
    require calldata.size - 4 >= 32
    if totalSupply and stor25 > -1 / totalSupply:
        revert with 0, 17
    if not totalSupply * stor25:
        return arg1
    if arg1 and totalSupply > -1 / arg1:
        revert with 0, 17
    if not stor25:
        revert with 0, 18
    return (arg1 * totalSupply / stor25)
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

function approve(address arg1, uint256 arg2) {
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

function burn(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn from the zero address'
    if paused:
        revert with 0, 'Pausable: paused'
    if balanceOf[address(msg.sender)] < arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn amount exceeds balance'
    balanceOf[address(msg.sender)] -= arg1
    if totalSupply < arg1:
        revert with 0, 17
    totalSupply -= arg1
    emit Transfer(arg1, msg.sender, 0);
}

function increaseAllowance(address arg1, uint256 arg2) {
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

function sub_3fed04dc(?) {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(stor27)
    call stor27.emergencyWithdraw(uint256 arg1) with:
         gas gas_remaining wei
        args uint256(stor29.field_0)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if 1 == bool(stor26):
        if bool(arg1) == 1:
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            require bool(stor26) != 0
            stor26 = 0
            emit DepositsEnabled(0);
}

function decreaseAllowance(address arg1, uint256 arg2) {
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

function updatePool() {
    require ext_code.size(sub_a614d69fAddress)
    staticcall sub_a614d69fAddress.poolInfo(uint256 arg1) with:
            gas gas_remaining wei
           args sub_3cd24362
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_call.return_data[32] == ext_call.return_data[44 len 20]
    if block.number > ext_call.return_data[96]:
        require ext_code.size(sub_a614d69fAddress)
        call sub_a614d69fAddress.updatePool(uint256 arg1) with:
             gas gas_remaining wei
            args sub_3cd24362
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if paused:
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

function burnFrom(address arg1, uint256 arg2) {
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
    if paused:
        revert with 0, 'Pausable: paused'
    if balanceOf[address(arg1)] < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn amount exceeds balance'
    balanceOf[address(arg1)] -= arg2
    if totalSupply < arg2:
        revert with 0, 17
    totalSupply -= arg2
    emit Transfer(arg2, arg1, 0);
}

function sub_855f1254(?) {
    require calldata.size - 4 >= 64
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 36).length) + 97 < 96 or ceil32(32 * ('cd', 36).length) + 97 > test266151307():
        revert with 0, 65
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = 128
    while idx < ('cd', 36).length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if not stor31[msg.sender]:
        require msg.sender == owner
    userDepFee = cd[4]
    userFeeStage.length = ('cd', 36).length
    if not ('cd', 36).length:
        idx = 0
        while userFeeStage.length > idx:
            userFeeStage[idx] = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * ('cd', 36).length) + 128 > idx:
            userFeeStage[s] = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * ('cd', 36).length) + 31) >> 5
        while userFeeStage.length > idx:
            userFeeStage[idx] = 0
            idx = idx + 1
            continue 
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
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
    if paused:
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

function checkReward() {
    mem[96] = 0xd18df53c00000000000000000000000000000000000000000000000000000000
    mem[100] = uint256(stor29.field_0)
    mem[132] = this.address
    require ext_code.size(stor27)
    staticcall stor27.pendingRewards(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args uint256(stor29.field_0), this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _4 = mem[96 len 4], Mask(224, 0, stor29.field_32)
    require mem[96 len 4], Mask(224, 0, stor29.field_32) <= test266151307()
    require mem[96 len 4], Mask(224, 0, stor29.field_32) + 127 < return_data.size + 96
    _5 = mem[mem[96 len 4], Mask(224, 0, stor29.field_32) + 96]
    if mem[mem[96 len 4], Mask(224, 0, stor29.field_32) + 96] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[mem[96 len 4], Mask(224, 0, stor29.field_32) + 96]) + 1 < 0 or ceil32(return_data.size) + ceil32(32 * mem[mem[96 len 4], Mask(224, 0, stor29.field_32) + 96]) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[96 len 4], Mask(224, 0, stor29.field_32) + 96]) + 97
    mem[ceil32(return_data.size) + 96] = _5
    require _4 + (32 * _5) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 128 len 32 * _5] = mem[_4 + 128 len 32 * _5]
    if 1 >= _5:
        revert with 0, 50
    mem[mem[64]] = mem[ceil32(return_data.size) + 160]
    mem[mem[64] + 32] = 64
    mem[mem[64] + 64] = _5
    mem[mem[64] + 96 len 32 * _5] = mem[ceil32(return_data.size) + 128 len 32 * _5]
    return mem[mem[64]], Array(len=_5, data=mem[mem[64] + 96 len 32 * _5])
}

function sub_97f63927(?) {
    require calldata.size - 4 >= 352
    require cd[4] == address(cd[4])
    require cd[36] == address(cd[36])
    require cd[68] == address(cd[68])
    require cd[132] == address(cd[132])
    require cd[164] <= test266151307()
    require cd[164] + 35 < calldata.size
    if ('cd', 164).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 164).length) + 97 < 96 or ceil32(32 * ('cd', 164).length) + 97 > test266151307():
        revert with 0, 65
    require cd[164] + (32 * ('cd', 164).length) + 36 <= calldata.size
    idx = 0
    s = cd[164] + 36
    t = 128
    while idx < ('cd', 164).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[196] == address(cd[196])
    require cd[228] == address(cd[228])
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[ceil32(32 * ('cd', 164).length) + 97] = address(cd[4])
    mem[ceil32(32 * ('cd', 164).length) + 129] = 0
    stor24 = address(cd[4])
    stor25 = 0
    stor26 = 1
    stor27 = address(cd[36])
    stor28 = address(cd[68])
    uint256(stor29.field_0) = cd[100]
    rewardTokenAddress = address(cd[132])
    sub_af386a85.length = ('cd', 164).length
    if not ('cd', 164).length:
        idx = 0
        while sub_af386a85.length > idx:
            uint256(sub_af386a85[idx]) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * ('cd', 164).length) + 128 > idx:
            address(sub_af386a85[s]) = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * ('cd', 164).length) + 31) >> 5
        while sub_af386a85.length > idx:
            uint256(sub_af386a85[idx]) = 0
            idx = idx + 1
            continue 
    routerAddress = address(cd[196])
    router2Address = address(cd[228])
    MIN_TOKENS_TO_REINVEST = cd[260]
    DEV_FEE_BIPS = cd[292]
    REINVEST_REWARD_BIPS = cd[324]
}

function sub_8c002ef2(?) {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 36).length) + 98 < 97 or ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98 > test266151307():
        revert with 0, 65
    mem[ceil32(32 * ('cd', 4).length) + 97] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = ceil32(32 * ('cd', 4).length) + 129
    while idx < ('cd', 36).length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if not stor31[msg.sender]:
        require msg.sender == owner
    blockDeltaStartStage.length = ('cd', 4).length
    if not ('cd', 4).length:
        idx = 0
        while blockDeltaStartStage.length > idx:
            blockDeltaStartStage[idx] = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * ('cd', 4).length) + 128 > idx:
            blockDeltaStartStage[s] = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * ('cd', 4).length) + 31) >> 5
        while blockDeltaStartStage.length > idx:
            blockDeltaStartStage[idx] = 0
            idx = idx + 1
            continue 
    blockDeltaEndStage.length = ('cd', 36).length
    if not ('cd', 36).length:
        idx = 0
        while blockDeltaEndStage.length > idx:
            blockDeltaEndStage[idx] = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = ceil32(32 * ('cd', 4).length) + 129
        while ceil32(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 129 > idx:
            blockDeltaEndStage[s] = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * ('cd', 36).length) + 31) >> 5
        while blockDeltaEndStage.length > idx:
            blockDeltaEndStage[idx] = 0
            idx = idx + 1
            continue 
}

function pendingReward(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(sub_a614d69fAddress)
    staticcall sub_a614d69fAddress.poolInfo(uint256 arg1) with:
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

function sub_91b337b3(?) {
    require calldata.size - 4 >= 256
    require cd[4] == address(cd[4])
    require cd[36] == address(cd[36])
    require cd[100] == address(cd[100])
    require cd[132] <= test266151307()
    require cd[132] + 35 < calldata.size
    if ('cd', 132).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 132).length) + 97 < 96 or ceil32(32 * ('cd', 132).length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 132).length
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
    require cd[196] == address(cd[196])
    require cd[228] == bool(cd[228])
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not cd[228]:
        mem[ceil32(32 * ('cd', 132).length) + 97] = address(cd[4])
        mem[ceil32(32 * ('cd', 132).length) + 129] = address(cd[36])
    else:
        require ext_code.size(sub_a614d69fAddress)
        staticcall sub_a614d69fAddress.poolInfo(uint256 arg1) with:
                gas gas_remaining wei
               args sub_3cd24362
        mem[ceil32(32 * ('cd', 132).length) + 97 len 160] = ext_call.return_data[0 len 160]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 160
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_call.return_data[32] == ext_call.return_data[44 len 20]
        if block.number > ext_call.return_data[96]:
            require ext_code.size(sub_a614d69fAddress)
            call sub_a614d69fAddress.updatePool(uint256 arg1) with:
                 gas gas_remaining wei
                args sub_3cd24362
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(32 * ('cd', 132).length) + ceil32(return_data.size) + 97] = address(cd[4])
        mem[ceil32(32 * ('cd', 132).length) + ceil32(return_data.size) + 129] = address(cd[36])
    stor27 = address(cd[4])
    stor28 = address(cd[36])
    uint256(stor29.field_0) = cd[68]
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
    router2Address = address(cd[196])
}

function name() {
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

function symbol() {
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

function setAllowances(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(stor24)
    call stor24.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor27, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if routerAddress:
        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args routerAddress, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(stor24)
        staticcall stor24.token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args routerAddress, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(stor24)
        staticcall stor24.token1() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args routerAddress, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if router2Address:
        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args router2Address, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(stor24)
        staticcall stor24.token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args router2Address, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(stor24)
        staticcall stor24.token1() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args router2Address, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(stor24)
        call stor24.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args router2Address, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(rewardTokenAddress)
        call rewardTokenAddress.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args router2Address, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function claimReward() {
    if stor6 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor6 = 2
    require ext_code.size(sub_a614d69fAddress)
    staticcall sub_a614d69fAddress.poolInfo(uint256 arg1) with:
            gas gas_remaining wei
           args sub_3cd24362
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_call.return_data[32] == ext_call.return_data[44 len 20]
    require ext_code.size(sub_a614d69fAddress)
    if block.number > ext_call.return_data[96]:
        call sub_a614d69fAddress.updatePool(uint256 arg1) with:
             gas gas_remaining wei
            args sub_3cd24362
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    staticcall sub_a614d69fAddress.poolInfo(uint256 arg1) with:
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
    stor6 = 1
}

function sub_9e5e12ea(?) {
    mem[96] = 0x2f50bd7200000000000000000000000000000000000000000000000000000000
    mem[100] = this.address
    mem[132] = rewardTokenAddress
    require ext_code.size(stor28)
    staticcall stor28.0x2f50bd72 with:
            gas gas_remaining wei
           args this.address, rewardTokenAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _4 = mem[96 len 4], Mask(224, 32, this.address) >> 32
    require mem[96 len 4], Mask(224, 32, this.address) >> 32 <= test266151307()
    require return_data.size + 96 > mem[96 len 4], Mask(224, 32, this.address) >> 32 + 127
    _5 = mem[mem[96 len 4], Mask(224, 32, this.address) >> 32 + 96]
    if mem[mem[96 len 4], Mask(224, 32, this.address) >> 32 + 96] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[mem[96 len 4], Mask(224, 32, this.address) >> 32 + 96]) + 1 < 0 or ceil32(return_data.size) + ceil32(32 * mem[mem[96 len 4], Mask(224, 32, this.address) >> 32 + 96]) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[96 len 4], Mask(224, 32, this.address) >> 32 + 96]) + 97
    mem[ceil32(return_data.size) + 96] = _5
    require _4 + (_5 << 7) + 32 <= return_data.size
    idx = 0
    s = _4 + 128
    t = ceil32(return_data.size) + 128
    while idx < _5:
        require return_data.size + -s + 96 >= 128
        _48 = mem[64]
        if mem[64] + 128 < mem[64] or mem[64] + 128 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + 128
        require mem[s] == mem[s + 24 len 8]
        mem[_48] = mem[s]
        require mem[s + 32] == mem[s + 56 len 8]
        mem[_48 + 32] = mem[s + 32]
        require mem[s + 64] == mem[s + 80 len 16]
        mem[_48 + 64] = mem[s + 64]
        require mem[s + 96] == mem[s + 112 len 16]
        mem[_48 + 96] = mem[s + 96]
        mem[t] = _48
        idx = idx + 1
        s = s + 128
        t = t + 32
        continue 
    _47 = mem[ceil32(return_data.size) + 96]
    idx = 0
    while idx < _47:
        if idx >= mem[ceil32(return_data.size) + 96]:
            revert with 0, 50
        if block.timestamp >= mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 56 len 8]:
            _92 = mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 96]
            _93 = mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 64]
            if mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 80 len 16] < mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 112 len 16]:
                revert with 0, 17
            if mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 80 len 16] - mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 112 len 16]:
                if idx >= mem[ceil32(return_data.size) + 96]:
                    revert with 0, 50
                mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 96] = mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 80 len 16]
                if 0 > !(uint128(_93) - uint128(_92)):
                    revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    mem[mem[64]] = 0x2f50bd7200000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = this.address
    mem[mem[64] + 36] = 0
    require ext_code.size(stor28)
    staticcall stor28.0x2f50bd72 with:
            gas gas_remaining wei
           args this.address, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _94 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _95 = mem[_94]
    require mem[_94] <= test266151307()
    require _94 + return_data.size > _94 + mem[_94] + 31
    _99 = mem[_94 + mem[_94]]
    if mem[_94 + mem[_94]] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[_94 + mem[_94]]) + 1 < 0 or _94 + ceil32(return_data.size) + ceil32(32 * mem[_94 + mem[_94]]) + 1 > test266151307():
        revert with 0, 65
    mem[64] = _94 + ceil32(return_data.size) + ceil32(32 * mem[_94 + mem[_94]]) + 1
    mem[_94 + ceil32(return_data.size)] = _99
    require _95 + (_99 << 7) + 32 <= return_data.size
    idx = 0
    s = _94 + _95 + 32
    t = _94 + ceil32(return_data.size) + 32
    while idx < _99:
        require _94 + return_data.size - s >= 128
        _122 = mem[64]
        if mem[64] + 128 < mem[64] or mem[64] + 128 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + 128
        require mem[s] == mem[s + 24 len 8]
        mem[_122] = mem[s]
        require mem[s + 32] == mem[s + 56 len 8]
        mem[_122 + 32] = mem[s + 32]
        require mem[s + 64] == mem[s + 80 len 16]
        mem[_122 + 64] = mem[s + 64]
        require mem[s + 96] == mem[s + 112 len 16]
        mem[_122 + 96] = mem[s + 96]
        mem[t] = _122
        idx = idx + 1
        s = s + 128
        t = t + 32
        continue 
    _121 = mem[_94 + ceil32(return_data.size)]
    idx = 0
    while idx < _121:
        if idx >= mem[_94 + ceil32(return_data.size)]:
            revert with 0, 50
        if block.timestamp >= mem[mem[(32 * idx) + _94 + ceil32(return_data.size) + 32] + 56 len 8]:
            _146 = mem[mem[(32 * idx) + _94 + ceil32(return_data.size) + 32] + 96]
            _147 = mem[mem[(32 * idx) + _94 + ceil32(return_data.size) + 32] + 64]
            if mem[mem[(32 * idx) + _94 + ceil32(return_data.size) + 32] + 80 len 16] < mem[mem[(32 * idx) + _94 + ceil32(return_data.size) + 32] + 112 len 16]:
                revert with 0, 17
            if mem[mem[(32 * idx) + _94 + ceil32(return_data.size) + 32] + 80 len 16] - mem[mem[(32 * idx) + _94 + ceil32(return_data.size) + 32] + 112 len 16]:
                if idx >= mem[_94 + ceil32(return_data.size)]:
                    revert with 0, 50
                mem[mem[(32 * idx) + _94 + ceil32(return_data.size) + 32] + 96] = mem[mem[(32 * idx) + _94 + ceil32(return_data.size) + 32] + 80 len 16]
                if 0 > !(uint128(_147) - uint128(_146)):
                    revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    mem[mem[64] + 4] = this.address
    require ext_code.size(rewardTokenAddress)
    staticcall rewardTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _148 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    return 0, 0, mem[_148], eth.balance(this.address)
}

function sub_add3dcf0(?) {
    require ext_code.size(stor27)
    call stor27.harvest(uint256 arg1) with:
         gas gas_remaining wei
        args uint256(stor29.field_0)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96] = 0x2f50bd7200000000000000000000000000000000000000000000000000000000
    mem[100] = this.address
    mem[132] = rewardTokenAddress
    require ext_code.size(stor28)
    staticcall stor28.0x2f50bd72 with:
            gas gas_remaining wei
           args this.address, rewardTokenAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _6 = mem[96 len 4], Mask(224, 32, this.address) >> 32
    require mem[96 len 4], Mask(224, 32, this.address) >> 32 <= test266151307()
    require return_data.size + 96 > mem[96 len 4], Mask(224, 32, this.address) >> 32 + 127
    _7 = mem[mem[96 len 4], Mask(224, 32, this.address) >> 32 + 96]
    if mem[mem[96 len 4], Mask(224, 32, this.address) >> 32 + 96] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[mem[96 len 4], Mask(224, 32, this.address) >> 32 + 96]) + 1 < 0 or ceil32(return_data.size) + ceil32(32 * mem[mem[96 len 4], Mask(224, 32, this.address) >> 32 + 96]) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[96 len 4], Mask(224, 32, this.address) >> 32 + 96]) + 97
    mem[ceil32(return_data.size) + 96] = _7
    require _6 + (_7 << 7) + 32 <= return_data.size
    idx = 0
    s = _6 + 128
    t = ceil32(return_data.size) + 128
    while idx < _7:
        require return_data.size + -s + 96 >= 128
        _48 = mem[64]
        if mem[64] + 128 < mem[64] or mem[64] + 128 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + 128
        require mem[s] == mem[s + 24 len 8]
        mem[_48] = mem[s]
        require mem[s + 32] == mem[s + 56 len 8]
        mem[_48 + 32] = mem[s + 32]
        require mem[s + 64] == mem[s + 80 len 16]
        mem[_48 + 64] = mem[s + 64]
        require mem[s + 96] == mem[s + 112 len 16]
        mem[_48 + 96] = mem[s + 96]
        mem[t] = _48
        idx = idx + 1
        s = s + 128
        t = t + 32
        continue 
    _47 = mem[ceil32(return_data.size) + 96]
    idx = 0
    while idx < _47:
        if idx >= mem[ceil32(return_data.size) + 96]:
            revert with 0, 50
        if block.timestamp >= mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 56 len 8]:
            _90 = mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 96]
            _91 = mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 64]
            if mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 80 len 16] < mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 112 len 16]:
                revert with 0, 17
            if mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 80 len 16] - mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 112 len 16]:
                if idx >= mem[ceil32(return_data.size) + 96]:
                    revert with 0, 50
                mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 96] = mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 80 len 16]
                if 0 > !(uint128(_91) - uint128(_90)):
                    revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    mem[mem[64]] = 0x2f50bd7200000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = this.address
    mem[mem[64] + 36] = 0
    require ext_code.size(stor28)
    staticcall stor28.0x2f50bd72 with:
            gas gas_remaining wei
           args this.address, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _92 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _93 = mem[_92]
    require mem[_92] <= test266151307()
    require _92 + return_data.size > _92 + mem[_92] + 31
    _97 = mem[_92 + mem[_92]]
    if mem[_92 + mem[_92]] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[_92 + mem[_92]]) + 1 < 0 or _92 + ceil32(return_data.size) + ceil32(32 * mem[_92 + mem[_92]]) + 1 > test266151307():
        revert with 0, 65
    mem[64] = _92 + ceil32(return_data.size) + ceil32(32 * mem[_92 + mem[_92]]) + 1
    mem[_92 + ceil32(return_data.size)] = _97
    require _93 + (_97 << 7) + 32 <= return_data.size
    idx = 0
    s = _92 + _93 + 32
    t = _92 + ceil32(return_data.size) + 32
    while idx < _97:
        require _92 + return_data.size - s >= 128
        _118 = mem[64]
        if mem[64] + 128 < mem[64] or mem[64] + 128 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + 128
        require mem[s] == mem[s + 24 len 8]
        mem[_118] = mem[s]
        require mem[s + 32] == mem[s + 56 len 8]
        mem[_118 + 32] = mem[s + 32]
        require mem[s + 64] == mem[s + 80 len 16]
        mem[_118 + 64] = mem[s + 64]
        require mem[s + 96] == mem[s + 112 len 16]
        mem[_118 + 96] = mem[s + 96]
        mem[t] = _118
        idx = idx + 1
        s = s + 128
        t = t + 32
        continue 
    _117 = mem[_92 + ceil32(return_data.size)]
    idx = 0
    while idx < _117:
        if idx >= mem[_92 + ceil32(return_data.size)]:
            revert with 0, 50
        if block.timestamp >= mem[mem[(32 * idx) + _92 + ceil32(return_data.size) + 32] + 56 len 8]:
            _140 = mem[mem[(32 * idx) + _92 + ceil32(return_data.size) + 32] + 96]
            _141 = mem[mem[(32 * idx) + _92 + ceil32(return_data.size) + 32] + 64]
            if mem[mem[(32 * idx) + _92 + ceil32(return_data.size) + 32] + 80 len 16] < mem[mem[(32 * idx) + _92 + ceil32(return_data.size) + 32] + 112 len 16]:
                revert with 0, 17
            if mem[mem[(32 * idx) + _92 + ceil32(return_data.size) + 32] + 80 len 16] - mem[mem[(32 * idx) + _92 + ceil32(return_data.size) + 32] + 112 len 16]:
                if idx >= mem[_92 + ceil32(return_data.size)]:
                    revert with 0, 50
                mem[mem[(32 * idx) + _92 + ceil32(return_data.size) + 32] + 96] = mem[mem[(32 * idx) + _92 + ceil32(return_data.size) + 32] + 80 len 16]
                if 0 > !(uint128(_141) - uint128(_140)):
                    revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    require ext_code.size(rewardTokenAddress)
    staticcall rewardTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function emergencyWithdraw() {
    if stor6 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor6 = 2
    mem[0] = msg.sender
    if totalSupply and stor25 > -1 / totalSupply:
        revert with 0, 17
    if not totalSupply * stor25:
        if stor25 < 0:
            revert with 0, '#>B'
        mem[96] = 0x1069f3b500000000000000000000000000000000000000000000000000000000
        mem[100] = uint256(stor29.field_0)
        mem[132] = this.address
        require ext_code.size(stor27)
        staticcall stor27.getUserInfo(uint256 arg1, address arg2) with:
                gas gas_remaining wei
               args uint256(stor29.field_0), this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 96
        require return_data.size >= 96
        _10 = mem[96 len 4], Mask(224, 0, stor29.field_32)
        require uint32(stor29.field_0), Mask(224, 32, this.address) >> 32 <= test266151307()
        require uint32(stor29.field_0), Mask(224, 32, this.address) >> 32 + 127 < return_data.size + 96
        _16 = mem[uint32(stor29.field_0), Mask(224, 32, this.address) >> 32 + 96]
        if mem[uint32(stor29.field_0), Mask(224, 32, this.address) >> 32 + 96] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[uint32(stor29.field_0), Mask(224, 32, this.address) >> 32 + 96]) + 1 < 0 or ceil32(return_data.size) + ceil32(32 * mem[uint32(stor29.field_0), Mask(224, 32, this.address) >> 32 + 96]) + 97 > test266151307():
            revert with 0, 65
        mem[64] = ceil32(return_data.size) + ceil32(32 * mem[uint32(stor29.field_0), Mask(224, 32, this.address) >> 32 + 96]) + 97
        mem[ceil32(return_data.size) + 96] = _16
        require uint32(stor29.field_0), Mask(224, 32, this.address) >> 32 + (32 * _16) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 128 len 32 * _16] = mem[uint32(stor29.field_0), Mask(224, 32, this.address) >> 32 + 128 len 32 * _16]
        _2864 = uint32(this.address), mem[164 len 28]
        require uint32(this.address), mem[164 len 28] <= test266151307()
        require uint32(this.address), mem[164 len 28] + 127 < return_data.size + 96
        _2866 = mem[uint32(this.address), mem[164 len 28] + 96]
        if mem[uint32(this.address), mem[164 len 28] + 96] > test266151307():
            revert with 0, 65
        _2868 = mem[64]
        if mem[64] + ceil32(32 * mem[uint32(this.address), mem[164 len 28] + 96]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[uint32(this.address), mem[164 len 28] + 96]) + 1 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + ceil32(32 * mem[uint32(this.address), mem[164 len 28] + 96]) + 1
        mem[_2868] = _2866
        require _2864 + (32 * _2866) + 32 <= return_data.size
        mem[_2868 + 32 len 32 * _2866] = mem[_2864 + 128 len 32 * _2866]
        require ext_code.size(stor27)
        if _10 < 0:
            call stor27.withdraw(uint256 arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args uint256(stor29.field_0), _10
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not msg.sender:
                revert with 0, 'ERC20: burn from the zero address'
            if paused:
                revert with 0, 'Pausable: paused'
            if balanceOf[address(msg.sender)] < balanceOf[msg.sender]:
                revert with 0, 'ERC20: burn amount exceeds balance'
            mem[0] = msg.sender
            mem[32] = 0
            balanceOf[address(msg.sender)] -= balanceOf[msg.sender]
            if totalSupply < balanceOf[msg.sender]:
                revert with 0, 17
            totalSupply -= balanceOf[msg.sender]
            emit Transfer(balanceOf[msg.sender], msg.sender, 0);
            userInfo[msg.sender].field_0 = 0
            userInfo[msg.sender].field_256 = 0
            if stor25 < 0:
                revert with 0, 17
            _5751 = mem[64]
            mem[mem[64] + 36] = msg.sender
            mem[mem[64] + 68] = 0
            _5757 = mem[64]
            mem[mem[64]] = 68
            mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
            mem[64] = mem[64] + 164
            mem[_5751 + 100] = 32
            mem[_5751 + 132] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(stor24):
                revert with 0, 'Address: call to non-contract'
            _5785 = mem[_5757]
            mem[_5751 + 164 len ceil32(mem[_5757])] = mem[_5757 + 32 len ceil32(mem[_5757])]
            if ceil32(_5785) > _5785:
                mem[_5785 + _5751 + 164] = 0
            call stor24 with:
                 gas gas_remaining wei
                args mem[_5751 + 168 len _5785 - 4]
            if not return_data.size:
                if not ext_call.success:
                    if mem[96 len 4], Mask(224, 0, stor29.field_32):
                        revert with memory
                          from 128
                           len mem[96 len 4], Mask(224, 0, stor29.field_32)
                    revert with 0, 'SafeERC20: low-level call failed'
                if mem[96 len 4], Mask(224, 0, stor29.field_32):
                    require mem[96 len 4], Mask(224, 0, stor29.field_32) >= 32
                    require uint32(stor29.field_0), Mask(224, 32, this.address) >> 32 == bool(uint32(stor29.field_0), Mask(224, 32, this.address) >> 32)
                    if not uint32(stor29.field_0), Mask(224, 32, this.address) >> 32:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                mem[_5751 + 200] = devaddr
                mem[_5751 + 232] = 0
                mem[_5751 + 164] = 68
                mem[_5751 + 196 len 4] = unknown_0xa9059cbb(?????)
                mem[_5751 + 264] = 32
                mem[_5751 + 296] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(stor24):
                    revert with 0, 'Address: call to non-contract'
                mem[_5751 + 328 len 96] = 0, devaddr, 0, 0
                mem[_5751 + 396] = 0
                call stor24 with:
                   funct Mask(32, 224, 0, devaddr, 0, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, 0, devaddr, 0, 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if mem[96 len 4], Mask(224, 0, stor29.field_32):
                            revert with memory
                              from 128
                               len mem[96 len 4], Mask(224, 0, stor29.field_32)
                        revert with 0, 'SafeERC20: low-level call failed'
                    if mem[96 len 4], Mask(224, 0, stor29.field_32):
                        require mem[96 len 4], Mask(224, 0, stor29.field_32) >= 32
                        require uint32(stor29.field_0), Mask(224, 32, this.address) >> 32 == bool(uint32(stor29.field_0), Mask(224, 32, this.address) >> 32)
                        if not uint32(stor29.field_0), Mask(224, 32, this.address) >> 32:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[_5751 + 360 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[_5751 + 360] == bool(mem[_5751 + 360])
                        if not mem[_5751 + 360]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[_5751 + 164] = return_data.size
                mem[_5751 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[_5751 + 196] == bool(mem[_5751 + 196])
                    if not mem[_5751 + 196]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                mem[_5751 + ceil32(return_data.size) + 201] = devaddr
                mem[_5751 + ceil32(return_data.size) + 233] = 0
                mem[_5751 + ceil32(return_data.size) + 165] = 68
                mem[_5751 + ceil32(return_data.size) + 197 len 4] = unknown_0xa9059cbb(?????)
                mem[_5751 + ceil32(return_data.size) + 265] = 32
                mem[_5751 + ceil32(return_data.size) + 297] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(stor24):
                    revert with 0, 'Address: call to non-contract'
                mem[_5751 + ceil32(return_data.size) + 329 len 96] = 0, devaddr, 0, 0
                mem[_5751 + ceil32(return_data.size) + 397] = 0
                call stor24 with:
                   funct Mask(32, 224, 0, devaddr, 0, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, 0, devaddr, 0, 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if mem[96 len 4], Mask(224, 0, stor29.field_32):
                            revert with memory
                              from 128
                               len mem[96 len 4], Mask(224, 0, stor29.field_32)
                        revert with 0, 'SafeERC20: low-level call failed'
                    if mem[96 len 4], Mask(224, 0, stor29.field_32):
                        require mem[96 len 4], Mask(224, 0, stor29.field_32) >= 32
                        require uint32(stor29.field_0), Mask(224, 32, this.address) >> 32 == bool(uint32(stor29.field_0), Mask(224, 32, this.address) >> 32)
                        if not uint32(stor29.field_0), Mask(224, 32, this.address) >> 32:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[_5751 + ceil32(return_data.size) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 
                                    'SafeERC20: low-level call failed',
                                    mem[_5751 + (2 * ceil32(return_data.size)) + 430 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[_5751 + ceil32(return_data.size) + 361] == bool(mem[_5751 + ceil32(return_data.size) + 361])
                        if not mem[_5751 + ceil32(return_data.size) + 361]:
                            revert with 0, 
                                        'SafeERC20: ERC20 operation did not succeed',
                                        mem[_5751 + (2 * ceil32(return_data.size)) + 462 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
        else:
            call stor27.withdraw(uint256 arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args uint256(stor29.field_0), 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not msg.sender:
                revert with 0, 'ERC20: burn from the zero address'
            if paused:
                revert with 0, 'Pausable: paused'
            if balanceOf[address(msg.sender)] < balanceOf[msg.sender]:
                revert with 0, 'ERC20: burn amount exceeds balance'
            mem[0] = msg.sender
            mem[32] = 0
            balanceOf[address(msg.sender)] -= balanceOf[msg.sender]
            if totalSupply < balanceOf[msg.sender]:
                revert with 0, 17
            totalSupply -= balanceOf[msg.sender]
            emit Transfer(balanceOf[msg.sender], msg.sender, 0);
            userInfo[msg.sender].field_0 = 0
            userInfo[msg.sender].field_256 = 0
            if stor25 < 0:
                revert with 0, 17
            _5752 = mem[64]
            mem[mem[64] + 36] = msg.sender
            mem[mem[64] + 68] = 0
            _5759 = mem[64]
            mem[mem[64]] = 68
            mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
            mem[64] = mem[64] + 164
            mem[_5752 + 100] = 32
            mem[_5752 + 132] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(stor24):
                revert with 0, 'Address: call to non-contract'
            _5787 = mem[_5759]
            mem[_5752 + 164 len ceil32(mem[_5759])] = mem[_5759 + 32 len ceil32(mem[_5759])]
            if ceil32(_5787) > _5787:
                mem[_5787 + _5752 + 164] = 0
            call stor24 with:
                 gas gas_remaining wei
                args mem[_5752 + 168 len _5787 - 4]
            if not return_data.size:
                if not ext_call.success:
                    if mem[96 len 4], Mask(224, 0, stor29.field_32):
                        revert with memory
                          from 128
                           len mem[96 len 4], Mask(224, 0, stor29.field_32)
                    revert with 0, 'SafeERC20: low-level call failed'
                if mem[96 len 4], Mask(224, 0, stor29.field_32):
                    require mem[96 len 4], Mask(224, 0, stor29.field_32) >= 32
                    require uint32(stor29.field_0), Mask(224, 32, this.address) >> 32 == bool(uint32(stor29.field_0), Mask(224, 32, this.address) >> 32)
                    if not uint32(stor29.field_0), Mask(224, 32, this.address) >> 32:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                mem[_5752 + 200] = devaddr
                mem[_5752 + 232] = 0
                mem[_5752 + 164] = 68
                mem[_5752 + 196 len 4] = unknown_0xa9059cbb(?????)
                mem[_5752 + 264] = 32
                mem[_5752 + 296] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(stor24):
                    revert with 0, 'Address: call to non-contract'
                mem[_5752 + 328 len 96] = 0, devaddr, 0, 0
                mem[_5752 + 396] = 0
                call stor24 with:
                   funct Mask(32, 224, 0, devaddr, 0, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, 0, devaddr, 0, 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if mem[96 len 4], Mask(224, 0, stor29.field_32):
                            revert with memory
                              from 128
                               len mem[96 len 4], Mask(224, 0, stor29.field_32)
                        revert with 0, 'SafeERC20: low-level call failed'
                    if mem[96 len 4], Mask(224, 0, stor29.field_32):
                        require mem[96 len 4], Mask(224, 0, stor29.field_32) >= 32
                        require uint32(stor29.field_0), Mask(224, 32, this.address) >> 32 == bool(uint32(stor29.field_0), Mask(224, 32, this.address) >> 32)
                        if not uint32(stor29.field_0), Mask(224, 32, this.address) >> 32:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[_5752 + 360 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[_5752 + 360] == bool(mem[_5752 + 360])
                        if not mem[_5752 + 360]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[_5752 + 164] = return_data.size
                mem[_5752 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[_5752 + 196] == bool(mem[_5752 + 196])
                    if not mem[_5752 + 196]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                mem[_5752 + ceil32(return_data.size) + 201] = devaddr
                mem[_5752 + ceil32(return_data.size) + 233] = 0
                mem[_5752 + ceil32(return_data.size) + 165] = 68
                mem[_5752 + ceil32(return_data.size) + 197 len 4] = unknown_0xa9059cbb(?????)
                mem[_5752 + ceil32(return_data.size) + 265] = 32
                mem[_5752 + ceil32(return_data.size) + 297] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(stor24):
                    revert with 0, 'Address: call to non-contract'
                mem[_5752 + ceil32(return_data.size) + 329 len 96] = 0, devaddr, 0, 0
                mem[_5752 + ceil32(return_data.size) + 397] = 0
                call stor24 with:
                   funct Mask(32, 224, 0, devaddr, 0, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, 0, devaddr, 0, 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if mem[96 len 4], Mask(224, 0, stor29.field_32):
                            revert with memory
                              from 128
                               len mem[96 len 4], Mask(224, 0, stor29.field_32)
                        revert with 0, 'SafeERC20: low-level call failed'
                    if mem[96 len 4], Mask(224, 0, stor29.field_32):
                        require mem[96 len 4], Mask(224, 0, stor29.field_32) >= 32
                        require uint32(stor29.field_0), Mask(224, 32, this.address) >> 32 == bool(uint32(stor29.field_0), Mask(224, 32, this.address) >> 32)
                        if not uint32(stor29.field_0), Mask(224, 32, this.address) >> 32:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[_5752 + ceil32(return_data.size) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 
                                    'SafeERC20: low-level call failed',
                                    mem[_5752 + (2 * ceil32(return_data.size)) + 430 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[_5752 + ceil32(return_data.size) + 361] == bool(mem[_5752 + ceil32(return_data.size) + 361])
                        if not mem[_5752 + ceil32(return_data.size) + 361]:
                            revert with 0, 
                                        'SafeERC20: ERC20 operation did not succeed',
                                        mem[_5752 + (2 * ceil32(return_data.size)) + 462 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
        emit EmergencyWithdraw(address arg1, uint256 arg2, uint256 arg3, uint256 arg4):
                               0,
                               msg.sender,
                               sub_3cd24362,
    else:
        if balanceOf[msg.sender] and stor25 > -1 / balanceOf[msg.sender]:
            revert with 0, 17
        if not totalSupply:
            revert with 0, 18
        if stor25 < balanceOf[msg.sender] * stor25 / totalSupply:
            revert with 0, '#>B'
        mem[96] = 0x1069f3b500000000000000000000000000000000000000000000000000000000
        mem[100] = uint256(stor29.field_0)
        mem[132] = this.address
        require ext_code.size(stor27)
        staticcall stor27.getUserInfo(uint256 arg1, address arg2) with:
                gas gas_remaining wei
               args uint256(stor29.field_0), this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 96
        require return_data.size >= 96
        _18 = mem[96 len 4], Mask(224, 0, stor29.field_32)
        require uint32(stor29.field_0), Mask(224, 32, this.address) >> 32 <= test266151307()
        require uint32(stor29.field_0), Mask(224, 32, this.address) >> 32 + 127 < return_data.size + 96
        _21 = mem[uint32(stor29.field_0), Mask(224, 32, this.address) >> 32 + 96]
        if mem[uint32(stor29.field_0), Mask(224, 32, this.address) >> 32 + 96] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[uint32(stor29.field_0), Mask(224, 32, this.address) >> 32 + 96]) + 1 < 0 or ceil32(return_data.size) + ceil32(32 * mem[uint32(stor29.field_0), Mask(224, 32, this.address) >> 32 + 96]) + 97 > test266151307():
            revert with 0, 65
        mem[64] = ceil32(return_data.size) + ceil32(32 * mem[uint32(stor29.field_0), Mask(224, 32, this.address) >> 32 + 96]) + 97
        mem[ceil32(return_data.size) + 96] = _21
        require uint32(stor29.field_0), Mask(224, 32, this.address) >> 32 + (32 * _21) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 128 len 32 * _21] = mem[uint32(stor29.field_0), Mask(224, 32, this.address) >> 32 + 128 len 32 * _21]
        _2863 = uint32(this.address), mem[164 len 28]
        require uint32(this.address), mem[164 len 28] <= test266151307()
        require uint32(this.address), mem[164 len 28] + 127 < return_data.size + 96
        _2865 = mem[uint32(this.address), mem[164 len 28] + 96]
        if mem[uint32(this.address), mem[164 len 28] + 96] > test266151307():
            revert with 0, 65
        _2867 = mem[64]
        if mem[64] + ceil32(32 * mem[uint32(this.address), mem[164 len 28] + 96]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[uint32(this.address), mem[164 len 28] + 96]) + 1 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + ceil32(32 * mem[uint32(this.address), mem[164 len 28] + 96]) + 1
        mem[_2867] = _2865
        require _2863 + (32 * _2865) + 32 <= return_data.size
        mem[_2867 + 32 len 32 * _2865] = mem[_2863 + 128 len 32 * _2865]
        require ext_code.size(stor27)
        if _18 < balanceOf[msg.sender] * stor25 / totalSupply:
            call stor27.withdraw(uint256 arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args uint256(stor29.field_0), _18
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not msg.sender:
                revert with 0, 'ERC20: burn from the zero address'
            if paused:
                revert with 0, 'Pausable: paused'
            if balanceOf[address(msg.sender)] < balanceOf[msg.sender]:
                revert with 0, 'ERC20: burn amount exceeds balance'
            mem[0] = msg.sender
            mem[32] = 0
            balanceOf[address(msg.sender)] -= balanceOf[msg.sender]
            if totalSupply < balanceOf[msg.sender]:
                revert with 0, 17
            totalSupply -= balanceOf[msg.sender]
            emit Transfer(balanceOf[msg.sender], msg.sender, 0);
            if balanceOf[msg.sender] * stor25 / totalSupply > 0x369d0369d0369d0369d0369d0369d0369d0369d0369d0369d0369d0369d0369:
                revert with 0, 17
            if balanceOf[msg.sender] * stor25 / totalSupply < 75 * balanceOf[msg.sender] * stor25 / totalSupply / 100:
                revert with 0, 17
            userInfo[msg.sender].field_0 = 0
            userInfo[msg.sender].field_256 = 0
            if stor25 < balanceOf[msg.sender] * stor25 / totalSupply:
                revert with 0, 17
            stor25 -= balanceOf[msg.sender] * stor25 / totalSupply
            _5749 = mem[64]
            mem[mem[64] + 36] = msg.sender
            mem[mem[64] + 68] = 75 * balanceOf[msg.sender] * stor25 / totalSupply / 100
            _5753 = mem[64]
            mem[mem[64]] = 68
            mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
            mem[64] = mem[64] + 164
            mem[_5749 + 100] = 32
            mem[_5749 + 132] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(stor24):
                revert with 0, 'Address: call to non-contract'
            _5781 = mem[_5753]
            mem[_5749 + 164 len ceil32(mem[_5753])] = mem[_5753 + 32 len ceil32(mem[_5753])]
            if ceil32(_5781) > _5781:
                mem[_5781 + _5749 + 164] = 0
            call stor24 with:
                 gas gas_remaining wei
                args mem[_5749 + 168 len _5781 - 4]
            if not return_data.size:
                if not ext_call.success:
                    if mem[96 len 4], Mask(224, 0, stor29.field_32):
                        revert with memory
                          from 128
                           len mem[96 len 4], Mask(224, 0, stor29.field_32)
                    revert with 0, 'SafeERC20: low-level call failed'
                if mem[96 len 4], Mask(224, 0, stor29.field_32):
                    require mem[96 len 4], Mask(224, 0, stor29.field_32) >= 32
                    require uint32(stor29.field_0), Mask(224, 32, this.address) >> 32 == bool(uint32(stor29.field_0), Mask(224, 32, this.address) >> 32)
                    if not uint32(stor29.field_0), Mask(224, 32, this.address) >> 32:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                mem[_5749 + 200] = devaddr
                mem[_5749 + 232] = (balanceOf[msg.sender] * stor25 / totalSupply) - (75 * balanceOf[msg.sender] * stor25 / totalSupply / 100)
                mem[_5749 + 164] = 68
                mem[_5749 + 196 len 4] = unknown_0xa9059cbb(?????)
                mem[_5749 + 264] = 32
                mem[_5749 + 296] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(stor24):
                    revert with 0, 'Address: call to non-contract'
                mem[_5749 + 328 len 96] = 0, devaddr, (balanceOf[msg.sender] * stor25 / totalSupply) - (75 * balanceOf[msg.sender] * stor25 / totalSupply / 100), 0
                mem[_5749 + 396] = 0
                call stor24 with:
                   funct Mask(32, 224, 0, devaddr, (balanceOf[msg.sender] * stor25 / totalSupply) - (75 * balanceOf[msg.sender] * stor25 / totalSupply / 100), 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, 0, devaddr, (balanceOf[msg.sender] * stor25 / totalSupply) - (75 * balanceOf[msg.sender] * stor25 / totalSupply / 100), 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if mem[96 len 4], Mask(224, 0, stor29.field_32):
                            revert with memory
                              from 128
                               len mem[96 len 4], Mask(224, 0, stor29.field_32)
                        revert with 0, 'SafeERC20: low-level call failed'
                    if mem[96 len 4], Mask(224, 0, stor29.field_32):
                        require mem[96 len 4], Mask(224, 0, stor29.field_32) >= 32
                        require uint32(stor29.field_0), Mask(224, 32, this.address) >> 32 == bool(uint32(stor29.field_0), Mask(224, 32, this.address) >> 32)
                        if not uint32(stor29.field_0), Mask(224, 32, this.address) >> 32:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[_5749 + 360 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[_5749 + 360] == bool(mem[_5749 + 360])
                        if not mem[_5749 + 360]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[_5749 + 164] = return_data.size
                mem[_5749 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[_5749 + 196] == bool(mem[_5749 + 196])
                    if not mem[_5749 + 196]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                mem[_5749 + ceil32(return_data.size) + 201] = devaddr
                mem[_5749 + ceil32(return_data.size) + 233] = (balanceOf[msg.sender] * stor25 / totalSupply) - (75 * balanceOf[msg.sender] * stor25 / totalSupply / 100)
                mem[_5749 + ceil32(return_data.size) + 165] = 68
                mem[_5749 + ceil32(return_data.size) + 197 len 4] = unknown_0xa9059cbb(?????)
                mem[_5749 + ceil32(return_data.size) + 265] = 32
                mem[_5749 + ceil32(return_data.size) + 297] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(stor24):
                    revert with 0, 'Address: call to non-contract'
                mem[_5749 + ceil32(return_data.size) + 329 len 96] = 0, devaddr, (balanceOf[msg.sender] * stor25 / totalSupply) - (75 * balanceOf[msg.sender] * stor25 / totalSupply / 100), 0
                mem[_5749 + ceil32(return_data.size) + 397] = 0
                call stor24 with:
                   funct Mask(32, 224, 0, devaddr, (balanceOf[msg.sender] * stor25 / totalSupply) - (75 * balanceOf[msg.sender] * stor25 / totalSupply / 100), 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, 0, devaddr, (balanceOf[msg.sender] * stor25 / totalSupply) - (75 * balanceOf[msg.sender] * stor25 / totalSupply / 100), 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if mem[96 len 4], Mask(224, 0, stor29.field_32):
                            revert with memory
                              from 128
                               len mem[96 len 4], Mask(224, 0, stor29.field_32)
                        revert with 0, 'SafeERC20: low-level call failed'
                    if mem[96 len 4], Mask(224, 0, stor29.field_32):
                        require mem[96 len 4], Mask(224, 0, stor29.field_32) >= 32
                        require uint32(stor29.field_0), Mask(224, 32, this.address) >> 32 == bool(uint32(stor29.field_0), Mask(224, 32, this.address) >> 32)
                        if not uint32(stor29.field_0), Mask(224, 32, this.address) >> 32:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[_5749 + ceil32(return_data.size) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 
                                    'SafeERC20: low-level call failed',
                                    mem[_5749 + (2 * ceil32(return_data.size)) + 430 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[_5749 + ceil32(return_data.size) + 361] == bool(mem[_5749 + ceil32(return_data.size) + 361])
                        if not mem[_5749 + ceil32(return_data.size) + 361]:
                            revert with 0, 
                                        'SafeERC20: ERC20 operation did not succeed',
                                        mem[_5749 + (2 * ceil32(return_data.size)) + 462 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
        else:
            call stor27.withdraw(uint256 arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args uint256(stor29.field_0), balanceOf[msg.sender] * stor25 / totalSupply
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not msg.sender:
                revert with 0, 'ERC20: burn from the zero address'
            if paused:
                revert with 0, 'Pausable: paused'
            if balanceOf[address(msg.sender)] < balanceOf[msg.sender]:
                revert with 0, 'ERC20: burn amount exceeds balance'
            mem[0] = msg.sender
            mem[32] = 0
            balanceOf[address(msg.sender)] -= balanceOf[msg.sender]
            if totalSupply < balanceOf[msg.sender]:
                revert with 0, 17
            totalSupply -= balanceOf[msg.sender]
            emit Transfer(balanceOf[msg.sender], msg.sender, 0);
            if balanceOf[msg.sender] * stor25 / totalSupply > 0x369d0369d0369d0369d0369d0369d0369d0369d0369d0369d0369d0369d0369:
                revert with 0, 17
            if balanceOf[msg.sender] * stor25 / totalSupply < 75 * balanceOf[msg.sender] * stor25 / totalSupply / 100:
                revert with 0, 17
            userInfo[msg.sender].field_0 = 0
            userInfo[msg.sender].field_256 = 0
            if stor25 < balanceOf[msg.sender] * stor25 / totalSupply:
                revert with 0, 17
            stor25 -= balanceOf[msg.sender] * stor25 / totalSupply
            _5750 = mem[64]
            mem[mem[64] + 36] = msg.sender
            mem[mem[64] + 68] = 75 * balanceOf[msg.sender] * stor25 / totalSupply / 100
            _5755 = mem[64]
            mem[mem[64]] = 68
            mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
            mem[64] = mem[64] + 164
            mem[_5750 + 100] = 32
            mem[_5750 + 132] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(stor24):
                revert with 0, 'Address: call to non-contract'
            _5783 = mem[_5755]
            mem[_5750 + 164 len ceil32(mem[_5755])] = mem[_5755 + 32 len ceil32(mem[_5755])]
            if ceil32(_5783) > _5783:
                mem[_5783 + _5750 + 164] = 0
            call stor24 with:
                 gas gas_remaining wei
                args mem[_5750 + 168 len _5783 - 4]
            if not return_data.size:
                if not ext_call.success:
                    if mem[96 len 4], Mask(224, 0, stor29.field_32):
                        revert with memory
                          from 128
                           len mem[96 len 4], Mask(224, 0, stor29.field_32)
                    revert with 0, 'SafeERC20: low-level call failed'
                if mem[96 len 4], Mask(224, 0, stor29.field_32):
                    require mem[96 len 4], Mask(224, 0, stor29.field_32) >= 32
                    require uint32(stor29.field_0), Mask(224, 32, this.address) >> 32 == bool(uint32(stor29.field_0), Mask(224, 32, this.address) >> 32)
                    if not uint32(stor29.field_0), Mask(224, 32, this.address) >> 32:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                mem[_5750 + 200] = devaddr
                mem[_5750 + 232] = (balanceOf[msg.sender] * stor25 / totalSupply) - (75 * balanceOf[msg.sender] * stor25 / totalSupply / 100)
                mem[_5750 + 164] = 68
                mem[_5750 + 196 len 4] = unknown_0xa9059cbb(?????)
                mem[_5750 + 264] = 32
                mem[_5750 + 296] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(stor24):
                    revert with 0, 'Address: call to non-contract'
                mem[_5750 + 328 len 96] = 0, devaddr, (balanceOf[msg.sender] * stor25 / totalSupply) - (75 * balanceOf[msg.sender] * stor25 / totalSupply / 100), 0
                mem[_5750 + 396] = 0
                call stor24 with:
                   funct Mask(32, 224, 0, devaddr, (balanceOf[msg.sender] * stor25 / totalSupply) - (75 * balanceOf[msg.sender] * stor25 / totalSupply / 100), 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, 0, devaddr, (balanceOf[msg.sender] * stor25 / totalSupply) - (75 * balanceOf[msg.sender] * stor25 / totalSupply / 100), 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if mem[96 len 4], Mask(224, 0, stor29.field_32):
                            revert with memory
                              from 128
                               len mem[96 len 4], Mask(224, 0, stor29.field_32)
                        revert with 0, 'SafeERC20: low-level call failed'
                    if mem[96 len 4], Mask(224, 0, stor29.field_32):
                        require mem[96 len 4], Mask(224, 0, stor29.field_32) >= 32
                        require uint32(stor29.field_0), Mask(224, 32, this.address) >> 32 == bool(uint32(stor29.field_0), Mask(224, 32, this.address) >> 32)
                        if not uint32(stor29.field_0), Mask(224, 32, this.address) >> 32:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[_5750 + 360 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[_5750 + 360] == bool(mem[_5750 + 360])
                        if not mem[_5750 + 360]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[_5750 + 164] = return_data.size
                mem[_5750 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[_5750 + 196] == bool(mem[_5750 + 196])
                    if not mem[_5750 + 196]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                mem[_5750 + ceil32(return_data.size) + 201] = devaddr
                mem[_5750 + ceil32(return_data.size) + 233] = (balanceOf[msg.sender] * stor25 / totalSupply) - (75 * balanceOf[msg.sender] * stor25 / totalSupply / 100)
                mem[_5750 + ceil32(return_data.size) + 165] = 68
                mem[_5750 + ceil32(return_data.size) + 197 len 4] = unknown_0xa9059cbb(?????)
                mem[_5750 + ceil32(return_data.size) + 265] = 32
                mem[_5750 + ceil32(return_data.size) + 297] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(stor24):
                    revert with 0, 'Address: call to non-contract'
                mem[_5750 + ceil32(return_data.size) + 329 len 96] = 0, devaddr, (balanceOf[msg.sender] * stor25 / totalSupply) - (75 * balanceOf[msg.sender] * stor25 / totalSupply / 100), 0
                mem[_5750 + ceil32(return_data.size) + 397] = 0
                call stor24 with:
                   funct Mask(32, 224, 0, devaddr, (balanceOf[msg.sender] * stor25 / totalSupply) - (75 * balanceOf[msg.sender] * stor25 / totalSupply / 100), 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, 0, devaddr, (balanceOf[msg.sender] * stor25 / totalSupply) - (75 * balanceOf[msg.sender] * stor25 / totalSupply / 100), 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if mem[96 len 4], Mask(224, 0, stor29.field_32):
                            revert with memory
                              from 128
                               len mem[96 len 4], Mask(224, 0, stor29.field_32)
                        revert with 0, 'SafeERC20: low-level call failed'
                    if mem[96 len 4], Mask(224, 0, stor29.field_32):
                        require mem[96 len 4], Mask(224, 0, stor29.field_32) >= 32
                        require uint32(stor29.field_0), Mask(224, 32, this.address) >> 32 == bool(uint32(stor29.field_0), Mask(224, 32, this.address) >> 32)
                        if not uint32(stor29.field_0), Mask(224, 32, this.address) >> 32:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[_5750 + ceil32(return_data.size) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 
                                    'SafeERC20: low-level call failed',
                                    mem[_5750 + (2 * ceil32(return_data.size)) + 430 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[_5750 + ceil32(return_data.size) + 361] == bool(mem[_5750 + ceil32(return_data.size) + 361])
                        if not mem[_5750 + ceil32(return_data.size) + 361]:
                            revert with 0, 
                                        'SafeERC20: ERC20 operation did not succeed',
                                        mem[_5750 + (2 * ceil32(return_data.size)) + 462 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
        emit EmergencyWithdraw(75 * balanceOf[msg.sender] * stor25 / totalSupply / 100, (balanceOf[msg.sender] * stor25 / totalSupply) - (75 * balanceOf[msg.sender] * stor25 / totalSupply / 100), msg.sender, sub_3cd24362);
    stor6 = 1
}



}
