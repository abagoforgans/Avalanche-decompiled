contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - transfer(address arg1, uint256 arg2)
#
const contractBalance = eth.balance(this.address)


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
address owner; offset 8
uint256 stor2; offset 8
mapping of uint8 stor3;
bool stor4; offset 256
uint8 stor4; offset 160
uint8 stor4; offset 168
uint8 stor4; offset 176
uint128 stor4; offset 184
uint128 stor4; offset 176
uint128 stor4; offset 168
address pairContractAddress;
mapping of uint8 stor5;
array of address stor6;
mapping of uint8 stor7;
array of address stor8;
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
address sub_c8e3577cAddress;
address sub_1ddd0b8eAddress;
address sub_a386ee42Address;
address sub_dcd6a031Address;
uint256 sub_92258ec8;
uint256 sub_8ab6ffc7;
address routerAddress;
address pairAddress;
uint256 stor37;
uint8 stor38;
uint256 totalSupply;
uint256 stor40;
mapping of uint256 stor41;
array of address stor42;
uint256 stor43;
uint256 stor44;
uint256 stor45;
uint256 stor46;
mapping of uint256 allowance;
array of address stor48;
array of address stor49;
mapping of uint8 stor50;
array of address stor51;
array of address stor52;
uint256 stor16F9;
array of address stor31997345449574252472561286867836691613551392380036115619611668045310140188353;
array of uint256 stor52213819444675381639147681254626056830423117288915921314737099907771403542284;
array of address stor54162357306838052946262784645804667576881326266469069806704768084672581170501;
array of address stor59096367844407008987701667253466222311117155682558288019434885054153674758786;
uint256 storBC72;

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

function sub_1ddd0b8e(?) {
    return sub_1ddd0b8eAddress
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
    return bool(uint8(stor4.field_168))
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

function sub_8ab6ffc7(?) {
    return sub_8ab6ffc7
}

function owner() {
    return owner
}

function autoRebase() {
    return bool(uint8(stor4.field_176))
}

function sub_92258ec8(?) {
    return sub_92258ec8
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

function sub_a386ee42(?) {
    return sub_a386ee42Address
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
                    0xd2526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    return bool(stor3[address(arg1)])
}

function nextRebase() {
    return nextRebase
}

function sub_c8e3577c(?) {
    return sub_c8e3577cAddress
}

function autoLiquidityReceiver() {
    return autoLiquidityReceiverAddress
}

function treasuryFee() {
    return treasuryFee
}

function initialDistributionFinished() {
    return bool(uint8(stor4.field_160))
}

function checkFeeExempt(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor7[address(arg1)])
}

function sub_d7832b11(?) {
    return sub_d7832b11
}

function sub_dcd6a031(?) {
    return sub_dcd6a031Address
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
    return bool(stor50[arg1])
}

function _fallback() payable {
    revert
}

function isNotInSwap() {
    return not bool(stor38)
}

function isOwner() {
    return (msg.sender == owner)
}

function setInitialDistributionFinished() {
    require msg.sender == owner
    uint8(stor4.field_160) = 1
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
    if not stor40:
        revert with 0, 'SafeMath: division by zero'
    return (stor37 / stor40)
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

function sub_f7683f3d(?) {
    if not stor40:
        revert with 0, 'SafeMath: division by zero'
    return stor43 / stor40, stor44 / stor40, stor45, stor46
}

function setTargetLiquidity(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    sub_92258ec8 = arg1
    sub_8ab6ffc7 = arg2
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    if not stor40:
        revert with 0, 'SafeMath: division by zero'
    return (stor41[address(arg1)] / stor40)
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function setFeeExempt(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    stor7[address(arg1)] = 1
    stor8.length++
    address(stor8[stor8.length]) = arg1
}

function enableTransfer(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    stor5[address(arg1)] = 1
    stor6.length++
    address(stor6[stor6.length]) = arg1
}

function updateBlacklist(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    stor50[address(arg1)] = uint8(arg2)
    stor51.length++
    stor82A7[stor51.length] = arg1
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
    if stor16F9 > 0xfffffffffffffffffffffffffffffffffffffffffe2d6fffbc6a148440000000:
        revert with 0, 'SafeMath: subtraction overflow'
    if storBC72 > -stor16F9 - 564039457584007913129639936:
        revert with 0, 'SafeMath: subtraction overflow'
    if not stor40:
        revert with 0, 'SafeMath: division by zero'
    return (-stor16F9 + -storBC72 - 564039457584007913129639936 / stor40)
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not uint8(stor4.field_160):
        if owner != msg.sender:
            require stor5[msg.sender]
    allowance[msg.sender][address(arg1)] = arg2
    stor48.length++
    stor736F[stor48.length] = msg.sender or Mask(96, 160, stor736F[stor48.length])
    uint256(stor49[msg.sender])++
    address(stor49[msg.sender][uint256(stor49[msg.sender])]) = arg1
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function addMinter(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0xd2526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    if stor3[address(arg1)]:
        revert with 0, 'Roles: account already has role'
    stor3[address(arg1)] = 1
    emit MinterAdded(arg1);
    stor52.length++
    stor46BD[stor52.length] = arg1
}

function renounceMinter() {
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0xd2526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
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

function increaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not uint8(stor4.field_160):
        if owner != msg.sender:
            require stor5[msg.sender]
    stor48.length++
    stor736F[stor48.length] = msg.sender or Mask(96, 160, stor736F[stor48.length])
    uint256(stor49[msg.sender])++
    address(stor49[msg.sender][uint256(stor49[msg.sender])]) = arg1
    if arg2 + allowance[msg.sender][address(arg1)] < allowance[msg.sender][address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    allowance[msg.sender][address(arg1)] += arg2
    emit Approval((arg2 + allowance[msg.sender][address(arg1)]), msg.sender, arg1);
    return 1
}

function setSwapBackSettings(bool arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require msg.sender == owner
    Mask(88, 0, stor4.field_168) = Mask(88, 0, arg1)
    if not arg3:
        revert with 0, 'SafeMath: division by zero'
    if not 0xfffffffffffffffffffffffffffffffffffffffffe2d6fffbc6a148440000000 / arg3:
        stor37 = 0
    else:
        if arg2 * 0xfffffffffffffffffffffffffffffffffffffffffe2d6fffbc6a148440000000 / arg3 / 0xfffffffffffffffffffffffffffffffffffffffffe2d6fffbc6a148440000000 / arg3 != arg2:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        stor37 = arg2 * 0xfffffffffffffffffffffffffffffffffffffffffe2d6fffbc6a148440000000 / arg3
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not uint8(stor4.field_160):
        if owner != msg.sender:
            require stor5[msg.sender]
    stor48.length++
    stor736F[stor48.length] = msg.sender or Mask(96, 160, stor736F[stor48.length])
    uint256(stor49[msg.sender])++
    address(stor49[msg.sender][uint256(stor49[msg.sender])]) = arg1
    if arg2 >= allowance[msg.sender][address(arg1)]:
        allowance[msg.sender][address(arg1)] = 0
    else:
        if arg2 > allowance[msg.sender][address(arg1)]:
            revert with 0, 'SafeMath: subtraction overflow'
        allowance[msg.sender][address(arg1)] -= arg2
    emit Approval(allowance[msg.sender][address(arg1)], msg.sender, arg1);
    return 1
}

function rebase(uint256 arg1, int256 arg2) {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    if stor38:
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
        stor40 = 0xfffffffffffffffffffffffffffffffffffffffffe2d6fffbc6a148440000000 / totalSupply
        require ext_code.size(pairContractAddress)
        call pairContractAddress.sync() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    emit LogRebase(totalSupply, arg1);
    return totalSupply
}

function removeMinter(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0xd2526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    if not stor3[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x65526f6c65733a206163636f756e7420646f6573206e6f74206861766520726f6c,
                    mem[197 len 31]
    stor3[address(arg1)] = 0
    emit MinterRemoved(arg1);
    idx = 0
    while idx < stor52.length:
        mem[0] = 52
        if address(stor52[idx]) != arg1:
            idx = idx + 1
            continue 
        require stor52.length - 1 < stor52.length
        require idx < stor52.length
        address(stor52[idx]) = address(stor52[stor52.length])
        require stor52.length
        address(stor52[stor52.length]) = 0
        stor52.length--
    require stor52.length - 1 < stor52.length
    require 0 < stor52.length
    address(stor52) = address(stor52[stor52.length])
    require stor52.length
    address(stor52[stor52.length]) = 0
    stor52.length--
}

function mint(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0xd2526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
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
    stor40 = 0xfffffffffffffffffffffffffffffffffffffffffe2d6fffbc6a148440000000 / totalSupply
    require ext_code.size(pairContractAddress)
    call pairContractAddress.sync() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if arg2 + stor41[address(arg1)] < stor41[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    stor41[address(arg1)] += arg2
    stor42.length++
    stor77BE[stor42.length] = arg1
}

function getLiquidityBacking(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor40:
        revert with 0, 'SafeMath: division by zero'
    if stor16F9 > 0xfffffffffffffffffffffffffffffffffffffffffe2d6fffbc6a148440000000:
        revert with 0, 'SafeMath: subtraction overflow'
    if storBC72 > -stor16F9 - 564039457584007913129639936:
        revert with 0, 'SafeMath: subtraction overflow'
    if not stor40:
        revert with 0, 'SafeMath: division by zero'
    if not stor41[stor36] / stor40:
        if arg1:
            if 0 / arg1:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
        if not -stor16F9 + -storBC72 - 564039457584007913129639936 / stor40:
            revert with 0, 'SafeMath: division by zero'
        return (0 / -stor16F9 + -storBC72 - 564039457584007913129639936 / stor40)
    if 2 * stor41[stor36] / stor40 / stor41[stor36] / stor40 != 2:
        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
    if not arg1:
        if not -stor16F9 + -storBC72 - 564039457584007913129639936 / stor40:
            revert with 0, 'SafeMath: division by zero'
        return (0 / -stor16F9 + -storBC72 - 564039457584007913129639936 / stor40)
    if 2 * stor41[stor36] / stor40 * arg1 / arg1 != 2 * stor41[stor36] / stor40:
        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
    if not -stor16F9 + -storBC72 - 564039457584007913129639936 / stor40:
        revert with 0, 'SafeMath: division by zero'
    return (2 * stor41[stor36] / stor40 * arg1 / -stor16F9 + -storBC72 - 564039457584007913129639936 / stor40)
}

function isOverLiquified(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not stor40:
        revert with 0, 'SafeMath: division by zero'
    if stor16F9 > 0xfffffffffffffffffffffffffffffffffffffffffe2d6fffbc6a148440000000:
        revert with 0, 'SafeMath: subtraction overflow'
    if storBC72 > -stor16F9 - 564039457584007913129639936:
        revert with 0, 'SafeMath: subtraction overflow'
    if not stor40:
        revert with 0, 'SafeMath: division by zero'
    if not stor41[stor36] / stor40:
        if arg2:
            if 0 / arg2:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
        if not -stor16F9 + -storBC72 - 564039457584007913129639936 / stor40:
            revert with 0, 'SafeMath: division by zero'
        return (0 / -stor16F9 + -storBC72 - 564039457584007913129639936 / stor40 > arg1)
    if 2 * stor41[stor36] / stor40 / stor41[stor36] / stor40 != 2:
        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
    if not arg2:
        if not -stor16F9 + -storBC72 - 564039457584007913129639936 / stor40:
            revert with 0, 'SafeMath: division by zero'
        return (0 / -stor16F9 + -storBC72 - 564039457584007913129639936 / stor40 > arg1)
    if 2 * stor41[stor36] / stor40 * arg2 / arg2 != 2 * stor41[stor36] / stor40:
        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
    if not -stor16F9 + -storBC72 - 564039457584007913129639936 / stor40:
        revert with 0, 'SafeMath: division by zero'
    return (2 * stor41[stor36] / stor40 * arg2 / -stor16F9 + -storBC72 - 564039457584007913129639936 / stor40 > arg1)
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

function reset() {
    require msg.sender == owner
    uint8(stor4.field_168) = 1
    uint8(stor4.field_176) = 0
    Mask(72, 0, stor4.field_184) = 0
    stor4.field_256 % 1 = 0
    idx = 0
    while idx < stor6.length:
        mem[0] = address(stor6[idx])
        mem[32] = 5
        stor5[address(stor6[idx])] = 0
        idx = idx + 1
        continue 
    stor6.length = 0
    idx = 0
    while stor6.length > idx:
        uint256(stor6[idx]) = 0
        idx = idx + 1
        continue 
    liquidityFee = 3
    treasuryFee = 3
    sub_9763eec4 = 2
    maintenanceFee = 2
    sub_7ac82927 = 1
    sub_177c92bc = 2
    sub_8102c570 = 4
    sub_e6fb2eb0 = 3
    totalBuyFee = 10
    if sub_177c92bc + totalBuyFee < totalBuyFee:
        revert with 0, 'SafeMath: addition overflow'
    if sub_8102c570 < 0:
        revert with 0, 'SafeMath: addition overflow'
    if sub_7ac82927 < 0:
        revert with 0, 'SafeMath: addition overflow'
    if sub_e6fb2eb0 < 0:
        revert with 0, 'SafeMath: addition overflow'
    totalSellFee = sub_e6fb2eb0 + sub_7ac82927 + sub_8102c570 + sub_177c92bc + totalBuyFee
    feeDenominator = 100
    sub_0af08314 = 34203706
    sub_d7832b11 = 10^11
    sub_89375abf = 1800
    nextRebase = block.timestamp + 1800
    autoLiquidityReceiverAddress = sub_c8e3577cAddress
    sub_08b1fd8fAddress = sub_1ddd0b8eAddress
    sub_7d4b5017Address = sub_a386ee42Address
    sub_4448db52Address = sub_dcd6a031Address
    sub_92258ec8 = 50
    sub_8ab6ffc7 = 100
    stor37 = 0x68db8bac710cb295e9e1b089a027525460aa64c2f0c0aa63ae238dca2339c
    stor38 = 0
    totalSupply = 4000000000 * 10^18
    stor40 = 0x13ce9a36f23c0fc90eebd44c99eaa68fb9493e380a
    idx = 0
    while idx < stor42.length:
        mem[0] = address(stor42[idx])
        mem[32] = 41
        stor41[address(stor42[idx])] = 0
        idx = idx + 1
        continue 
    stor42.length = 0
    idx = 0
    while stor42.length > idx:
        uint256(stor42[idx]) = 0
        idx = idx + 1
        continue 
    stor41[stor25] = 0xfffffffffffffffffffffffffffffffffffffffffe2d6fffbc6a148440000000
    stor42.length++
    stor77BE[stor42.length] = sub_08b1fd8fAddress
    stor43 = 0
    stor44 = 0
    stor45 = 0
    stor46 = 0
    idx = 0
    while idx < stor48.length:
        s = 0
        while s < uint256(stor49[address(stor48[idx])]):
            require s < uint256(stor49[address(stor48[idx])])
            allowance[address(stor48[idx])][address(stor49[address(stor48[idx])][s])] = 0
            mem[0] = address(stor48[idx])
            mem[32] = 49
            s = s + 1
            continue 
        mem[32] = 49
        uint256(stor49[address(stor48[idx])]) = 0
        mem[0] = sha3(address(stor48[idx]), 49)
        s = sha3(sha3(address(stor48[s]), 49))
        while sha3(sha3(address(stor48[s]), 49)) + uint256(stor49[address(stor48[s])]) > s:
            stor[s] = 0
            s = s + 1
            continue 
        s = sha3(sha3(address(stor48[s]), 49)) + uint256(stor49[address(stor48[s])]) + 1
        continue 
    stor48.length = 0
    idx = 0
    while stor48.length > idx:
        uint256(stor48[idx]) = 0
        idx = idx + 1
        continue 
    allowance[this.address][stor35] = -1
    stor48.length++
    stor736F[stor48.length] = this.address or Mask(96, 160, stor736F[stor48.length])
    uint256(stor49[this.address])++
    address(stor49[this.address][uint256(stor49[this.address])]) = routerAddress
    pairContractAddress = pairAddress
    idx = 0
    while idx < stor51.length:
        mem[0] = address(stor51[idx])
        mem[32] = 50
        stor50[address(stor51[idx])] = 0
        idx = idx + 1
        continue 
    stor51.length = 0
    idx = 0
    while stor51.length > idx:
        uint256(stor51[idx]) = 0
        idx = idx + 1
        continue 
    uint8(stor4.field_160) = 0
    idx = 0
    while idx < stor8.length:
        mem[0] = address(stor8[idx])
        mem[32] = 7
        stor7[address(stor8[idx])] = 0
        idx = idx + 1
        continue 
    stor8.length = 0
    idx = 0
    while stor8.length > idx:
        uint256(stor8[idx]) = 0
        idx = idx + 1
        continue 
    stor7[stor25] = 1
    stor8.length++
    address(stor8[stor8.length]) = sub_08b1fd8fAddress
    stor7[this.address] = 1
    stor8.length++
    uint256(stor8[stor8.length]) = this.address or Mask(96, 160, uint256(stor8[stor8.length]))
    stor7[stor27] = 1
    stor8.length++
    address(stor8[stor8.length]) = sub_4448db52Address
    require sub_08b1fd8fAddress
    emit OwnershipTransferred(owner, sub_08b1fd8fAddress);
    stor2 = sub_08b1fd8fAddress
    emit Transfer(totalSupply, 0, sub_08b1fd8fAddress);
    idx = 0
    while idx < stor52.length:
        if not address(stor52[idx]):
            revert with 0, 32, 34, 0xd2526f6c65733a206163636f756e7420697320746865207a65726f20616464726573, mem[262 len 30]
        if not stor3[address(stor52[idx])]:
            revert with 0, 32, 33, 0x65526f6c65733a206163636f756e7420646f6573206e6f74206861766520726f6c, mem[261 len 31]
        mem[0] = address(stor52[idx])
        mem[32] = 3
        stor3[address(stor52[idx])] = 0
        emit MinterRemoved(address(stor52[idx]));
        idx = idx + 1
        continue 
    stor52.length = 0
    idx = 0
    while stor52.length > idx:
        uint256(stor52[idx]) = 0
        idx = idx + 1
        continue 
}



}
