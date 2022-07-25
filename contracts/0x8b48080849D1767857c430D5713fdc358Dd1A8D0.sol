contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - transfer(address arg1, uint256 arg2)
#
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
address owner; offset 8
mapping of uint8 stor3;
uint8 initialDistributionFinished; offset 160
uint8 swapEnabled; offset 168
uint8 autoRebase; offset 176
uint128 stor4; offset 176
uint128 stor4; offset 168
address pairContractAddress;
mapping of uint8 stor5;
mapping of uint8 stor6;
uint256 liquidityFee;
uint256 treasuryFee;
uint256 sub_9763eec4;
uint256 maintenanceFee;
uint256 sub_7ac82927;
uint256 sub_177c92bc;
uint256 sub_8102c570;
uint256 sub_e6fb2eb0;
uint256 totalBuyFee;
uint256 totalSellFee;
uint256 feeDenominator;
uint256 sub_0af08314;
uint256 sub_d7832b11;
uint256 sub_89375abf;
uint256 nextRebase;
address autoLiquidityReceiverAddress;
address sub_08b1fd8fAddress;
address sub_7d4b5017Address;
address sub_4448db52Address;
address stableCoinAddress;
uint256 stor27;
uint256 stor28;
address routerAddress;
address pairAddress;
uint256 stor31;
uint8 stor32;
uint256 totalSupply;
uint256 stor34;
mapping of uint256 stor35;
mapping of uint256 allowance;
mapping of uint8 stor41;
uint256 storCFB9;
uint256 storEC8F;

function maintenanceFee() {
    return maintenanceFee
}

function name() {
    return name[0 len name.length]
}

function sub_08b1fd8f(?) {
    return sub_08b1fd8fAddress
}

function sub_0af08314(?) {
    return sub_0af08314
}

function sub_177c92bc(?) {
    return sub_177c92bc
}

function feeDenominator() {
    return feeDenominator
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function sub_4448db52(?) {
    return sub_4448db52Address
}

function pairContract() {
    return pairContractAddress
}

function totalBuyFee() {
    return totalBuyFee
}

function swapEnabled() {
    return bool(swapEnabled)
}

function sub_7ac82927(?) {
    return sub_7ac82927
}

function sub_7d4b5017(?) {
    return sub_7d4b5017Address
}

function sub_8102c570(?) {
    return sub_8102c570
}

function sub_89375abf(?) {
    return sub_89375abf
}

function owner() {
    return owner
}

function autoRebase() {
    return bool(autoRebase)
}

function symbol() {
    return symbol[0 len symbol.length]
}

function sub_9763eec4(?) {
    return sub_9763eec4
}

function liquidityFee() {
    return liquidityFee
}

function stableCoin() {
    return stableCoinAddress
}

function totalSellFee() {
    return totalSellFee
}

function pair() {
    return pairAddress
}

function isMinter(address arg1) {
    require calldata.size - 4 >= 32
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x77526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    return bool(stor3[address(arg1)])
}

function nextRebase() {
    return nextRebase
}

function autoLiquidityReceiver() {
    return autoLiquidityReceiverAddress
}

function treasuryFee() {
    return treasuryFee
}

function initialDistributionFinished() {
    return bool(initialDistributionFinished)
}

function checkFeeExempt(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor6[address(arg1)])
}

function sub_d7832b11(?) {
    return sub_d7832b11
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function sub_e6fb2eb0(?) {
    return sub_e6fb2eb0
}

function router() {
    return routerAddress
}

function blacklist(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor41[arg1])
}

function _fallback() payable {
    revert
}

function isNotInSwap() {
    return not bool(stor32)
}

function isOwner() {
    return (msg.sender == owner)
}

function setInitialDistributionFinished() {
    require msg.sender == owner
    initialDistributionFinished = 1
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function sub_4cd9ddf2(?) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    sub_89375abf = arg1
}

function setNextRebase(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    nextRebase = arg1
}

function setLP(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    pairContractAddress = arg1
}

function checkSwapThreshold() {
    if not stor34:
        revert with 0, 'SafeMath: division by zero'
    return (stor31 / stor34)
}

function setFeeExempt(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    stor6[address(arg1)] = 1
}

function enableTransfer(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    stor5[address(arg1)] = 1
}

function sub_01b16827(?) {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    sub_0af08314 = arg1
    sub_d7832b11 = arg2
}

function sub_63eab10a(?) {
    if nextRebase > block.timestamp:
        return nextRebase <= block.timestamp
    return pairAddress != msg.sender
}

function setAutoRebase(bool arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    Mask(80, 0, stor4.field_176) = Mask(80, 0, arg1)
}

function updateBlacklist(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    stor41[address(arg1)] = uint8(arg2)
}

function setTargetLiquidity(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    stor27 = arg1
    stor28 = arg2
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    if not stor34:
        revert with 0, 'SafeMath: division by zero'
    return (stor35[address(arg1)] / stor34)
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function manualSync() {
    require ext_code.size(pairAddress)
    call pairAddress.sync() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setFeeReceivers(address arg1, address arg2, address arg3, address arg4) {
    require calldata.size - 4 >= 128
    require msg.sender == owner
    autoLiquidityReceiverAddress = arg1
    sub_08b1fd8fAddress = arg2
    sub_7d4b5017Address = arg3
    sub_4448db52Address = arg4
}

function swipe(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    call arg1 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not initialDistributionFinished:
        if owner != msg.sender:
            require stor5[msg.sender]
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function clearStuckBalance(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    call arg2 with:
       value eth.balance(this.address) * arg1 / 100 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function rescueToken(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function getCirculatingSupply() {
    if storCFB9 > 0xfffffffffffffffffffffffffffffffffffffffff7b713867cc9140a70000000:
        revert with 0, 'SafeMath: subtraction overflow'
    if storEC8F > -storCFB9 - 0x848ec798336ebf590000000:
        revert with 0, 'SafeMath: subtraction overflow'
    if not stor34:
        revert with 0, 'SafeMath: division by zero'
    return (-storCFB9 + -storEC8F - 0x848ec798336ebf590000000 / stor34)
}

function increaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not initialDistributionFinished:
        if owner != msg.sender:
            require stor5[msg.sender]
    if arg2 + allowance[msg.sender][address(arg1)] < allowance[msg.sender][address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    allowance[msg.sender][address(arg1)] += arg2
    emit Approval((arg2 + allowance[msg.sender][address(arg1)]), msg.sender, arg1);
    return 1
}

function addMinter(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x77526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    if stor3[address(arg1)]:
        revert with 0, 'Roles: account already has role'
    stor3[address(arg1)] = 1
    emit MinterAdded(arg1);
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not initialDistributionFinished:
        if owner != msg.sender:
            require stor5[msg.sender]
    if arg2 >= allowance[msg.sender][address(arg1)]:
        allowance[msg.sender][address(arg1)] = 0
    else:
        if arg2 > allowance[msg.sender][address(arg1)]:
            revert with 0, 'SafeMath: subtraction overflow'
        allowance[msg.sender][address(arg1)] -= arg2
    emit Approval(allowance[msg.sender][address(arg1)], msg.sender, arg1);
    return 1
}

function renounceMinter() {
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x77526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    if not stor3[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x65526f6c65733a206163636f756e7420646f6573206e6f74206861766520726f6c,
                    mem[197 len 31]
    stor3[address(msg.sender)] = 0
    emit MinterRemoved(msg.sender);
}

function removeMinter(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x77526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    if not stor3[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x65526f6c65733a206163636f756e7420646f6573206e6f74206861766520726f6c,
                    mem[197 len 31]
    stor3[address(arg1)] = 0
    emit MinterRemoved(arg1);
}

function setSwapBackSettings(bool arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require msg.sender == owner
    Mask(88, 0, stor4.field_168) = Mask(88, 0, arg1)
    if not arg3:
        revert with 0, 'SafeMath: division by zero'
    if not 0xfffffffffffffffffffffffffffffffffffffffff7b713867cc9140a70000000 / arg3:
        stor31 = 0
    else:
        if arg2 * 0xfffffffffffffffffffffffffffffffffffffffff7b713867cc9140a70000000 / arg3 / 0xfffffffffffffffffffffffffffffffffffffffff7b713867cc9140a70000000 / arg3 != arg2:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        stor31 = arg2 * 0xfffffffffffffffffffffffffffffffffffffffff7b713867cc9140a70000000 / arg3
}

function rebase(uint256 arg1, int256 arg2) {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    if stor32:
        revert with 0, 'Try again'
    if arg2:
        if arg2 >= 0:
            if arg2 + totalSupply < totalSupply:
                revert with 0, 'SafeMath: addition overflow'
            totalSupply += arg2
        else:
            if -arg2 > totalSupply:
                revert with 0, 'SafeMath: subtraction overflow'
            totalSupply += arg2
        if test266151307() < totalSupply:
            totalSupply = test266151307()
        if not totalSupply:
            revert with 0, 'SafeMath: division by zero'
        stor34 = 0xfffffffffffffffffffffffffffffffffffffffff7b713867cc9140a70000000 / totalSupply
        require ext_code.size(pairContractAddress)
        call pairContractAddress.sync() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    emit LogRebase(totalSupply, arg1);
    return totalSupply
}

function mint(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x77526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    if not stor3[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    48,
                    0x304d696e746572526f6c653a2063616c6c657220646f6573206e6f74206861766520746865204d696e74657220726f6c,
                    mem[212 len 16]
    if arg2 + totalSupply < totalSupply:
        revert with 0, 'SafeMath: addition overflow'
    totalSupply += arg2
    if test266151307() < arg2 + totalSupply:
        totalSupply = test266151307()
    if not totalSupply:
        revert with 0, 'SafeMath: division by zero'
    stor34 = 0xfffffffffffffffffffffffffffffffffffffffff7b713867cc9140a70000000 / totalSupply
    require ext_code.size(pairContractAddress)
    call pairContractAddress.sync() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if arg2 + stor35[address(arg1)] < stor35[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    stor35[address(arg1)] += arg2
}

function getLiquidityBacking(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor34:
        revert with 0, 'SafeMath: division by zero'
    if storCFB9 > 0xfffffffffffffffffffffffffffffffffffffffff7b713867cc9140a70000000:
        revert with 0, 'SafeMath: subtraction overflow'
    if storEC8F > -storCFB9 - 0x848ec798336ebf590000000:
        revert with 0, 'SafeMath: subtraction overflow'
    if not stor34:
        revert with 0, 'SafeMath: division by zero'
    if not stor35[stor30] / stor34:
        if arg1:
            if 0 / arg1:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
        if not -storCFB9 + -storEC8F - 0x848ec798336ebf590000000 / stor34:
            revert with 0, 'SafeMath: division by zero'
        return (0 / -storCFB9 + -storEC8F - 0x848ec798336ebf590000000 / stor34)
    if 2 * stor35[stor30] / stor34 / stor35[stor30] / stor34 != 2:
        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
    if not arg1:
        if not -storCFB9 + -storEC8F - 0x848ec798336ebf590000000 / stor34:
            revert with 0, 'SafeMath: division by zero'
        return (0 / -storCFB9 + -storEC8F - 0x848ec798336ebf590000000 / stor34)
    if 2 * stor35[stor30] / stor34 * arg1 / arg1 != 2 * stor35[stor30] / stor34:
        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
    if not -storCFB9 + -storEC8F - 0x848ec798336ebf590000000 / stor34:
        revert with 0, 'SafeMath: division by zero'
    return (2 * stor35[stor30] / stor34 * arg1 / -storCFB9 + -storEC8F - 0x848ec798336ebf590000000 / stor34)
}

function isOverLiquified(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not stor34:
        revert with 0, 'SafeMath: division by zero'
    if storCFB9 > 0xfffffffffffffffffffffffffffffffffffffffff7b713867cc9140a70000000:
        revert with 0, 'SafeMath: subtraction overflow'
    if storEC8F > -storCFB9 - 0x848ec798336ebf590000000:
        revert with 0, 'SafeMath: subtraction overflow'
    if not stor34:
        revert with 0, 'SafeMath: division by zero'
    if not stor35[stor30] / stor34:
        if arg2:
            if 0 / arg2:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
        if not -storCFB9 + -storEC8F - 0x848ec798336ebf590000000 / stor34:
            revert with 0, 'SafeMath: division by zero'
        return (0 / -storCFB9 + -storEC8F - 0x848ec798336ebf590000000 / stor34 > arg1)
    if 2 * stor35[stor30] / stor34 / stor35[stor30] / stor34 != 2:
        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
    if not arg2:
        if not -storCFB9 + -storEC8F - 0x848ec798336ebf590000000 / stor34:
            revert with 0, 'SafeMath: division by zero'
        return (0 / -storCFB9 + -storEC8F - 0x848ec798336ebf590000000 / stor34 > arg1)
    if 2 * stor35[stor30] / stor34 * arg2 / arg2 != 2 * stor35[stor30] / stor34:
        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
    if not -storCFB9 + -storEC8F - 0x848ec798336ebf590000000 / stor34:
        revert with 0, 'SafeMath: division by zero'
    return (2 * stor35[stor30] / stor34 * arg2 / -storCFB9 + -storEC8F - 0x848ec798336ebf590000000 / stor34 > arg1)
}

function setFees(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256 arg7, uint256 arg8, uint256 arg9) {
    require calldata.size - 4 >= 288
    require msg.sender == owner
    if arg3 + arg1 < arg1:
        revert with 0, 'SafeMath: addition overflow'
    if arg4 < 0:
        revert with 0, 'SafeMath: addition overflow'
    if arg2 < 0:
        revert with 0, 'SafeMath: addition overflow'
    if arg5 < 0:
        revert with 0, 'SafeMath: addition overflow'
    if arg6 < 0:
        revert with 0, 'SafeMath: addition overflow'
    if arg8 < 0:
        revert with 0, 'SafeMath: addition overflow'
    if arg7 < 0:
        revert with 0, 'SafeMath: addition overflow'
    if arg2 + arg4 + arg3 + arg1 > 10:
        revert with 0, 'exceeded max buy fees'
    if arg2 + arg4 + arg3 + arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x30746f74616c20627579206665652068617320746f206265206c6172676572207468616e20,
                    mem[201 len 27]
    if arg7 + arg8 + arg6 + arg5 + arg2 + arg4 + arg3 + arg1 > 20:
        revert with 0, 'exceeded max sell fees'
    if arg7 + arg8 + arg6 + arg5 + arg2 + arg4 + arg3 + arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x1218356fd05081bd1cd48291a9fbd5210648ebbe0a8e28fcc1c96ab198a217248f64701922 * 3600,
                    mem[202 len 26]
    liquidityFee = arg1
    sub_9763eec4 = arg2
    treasuryFee = arg3
    maintenanceFee = arg4
    sub_177c92bc = arg5
    sub_8102c570 = arg6
    sub_7ac82927 = arg7
    sub_e6fb2eb0 = arg8
    if arg3 + arg1 < arg1:
        revert with 0, 'SafeMath: addition overflow'
    if arg2 < 0:
        revert with 0, 'SafeMath: addition overflow'
    if arg4 < 0:
        revert with 0, 'SafeMath: addition overflow'
    totalBuyFee = arg4 + arg2 + arg3 + arg1
    if sub_177c92bc + totalBuyFee < totalBuyFee:
        revert with 0, 'SafeMath: addition overflow'
    if sub_8102c570 < 0:
        revert with 0, 'SafeMath: addition overflow'
    if sub_7ac82927 < 0:
        revert with 0, 'SafeMath: addition overflow'
    if sub_e6fb2eb0 < 0:
        revert with 0, 'SafeMath: addition overflow'
    totalSellFee = sub_e6fb2eb0 + sub_7ac82927 + sub_8102c570 + sub_177c92bc + totalBuyFee
    feeDenominator = arg9
}



}
