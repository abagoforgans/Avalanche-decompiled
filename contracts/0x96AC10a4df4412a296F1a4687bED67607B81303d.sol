contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - transfer(address arg1, uint256 arg2)
#  - _fallback()
#
const name = 'Ukraine Inu', 0

const InitialSupply = 10^17

const decimals = 9

const _decimals = 9

const Dead = 57005

const symbol = 'Ukrainu', 0

const _symbol = 'Ukrainu', 0

const UniswapRouter = 0x60ae616a2155ee3d9a68541ba4544862310933d4

const _name = 'Ukraine Inu', 0


address owner;
mapping of uint256 _balances;
mapping of struct _allowances;
mapping of uint256 sub_fb272987;
array of struct stor4;
mapping of uint256 stor5;
array of struct stor6;
mapping of uint256 stor7;
mapping of uint8 stor8;
uint8 stor9;
uint256 stor10;
uint8 stor11;
uint8 balanceLimitDivider; offset 24
uint16 buyLimitDivider; offset 8
uint16 sellLimitDivider; offset 32
uint16 maxSellLockTime; offset 48
mapping of uint8 stor12;
uint256 _circulatingSupply;
uint256 balanceLimit;
uint256 sellLimit;
uint256 buyLimit;
uint8 _buyTax;
uint8 _sellTax; offset 8
uint8 sub_17391e49; offset 16
uint8 sub_382e329a; offset 24
uint8 sub_2d882863; offset 32
uint8 sub_f9cfadf1; offset 40
uint8 sub_9bac4a95; offset 48
uint8 stor17; offset 64
uint8 stor17; offset 72
address sub_05691ec8Address; offset 80
uint256 stor17; offset 72
uint256 stor17; offset 56
uint256 stor17; offset 40
uint256 stor17; offset 24
address sub_2a24e064Address;
address sub_954ea665Address;
uint256 totalTokenSwapGenerated;
uint256 totalPayouts;
uint8 marketingShare;
uint8 sub_78af89df; offset 8
uint8 sub_7796ff37; offset 16
uint256 marketingBalance;
uint256 sub_15638c68;
uint256 treasuryBalance;
uint256 totalLPETH;
uint8 stor27;
uint8 sellLockDisabled; offset 8
uint256 stor27; offset 8
uint256 sellLockTime;
uint8 manualConversion;
uint8 tradingEnabled; offset 8
address stor29; offset 16
uint256 stor29; offset 8

function _allowances(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return _allowances[arg1][arg2].field_0
}

function sub_05691ec8(?) {
    return sub_05691ec8Address
}

function marketingShare() {
    return marketingShare
}

function SellLimitDivider() {
    return sellLimitDivider
}

function sub_15638c68(?) {
    return sub_15638c68
}

function sub_17391e49(?) {
    return sub_17391e49
}

function totalSupply() {
    return _circulatingSupply
}

function BuyLimitDivider() {
    return buyLimitDivider
}

function sub_2a24e064(?) {
    return sub_2a24e064Address
}

function sub_2d882863(?) {
    return sub_2d882863
}

function BalanceLimitDivider() {
    return balanceLimitDivider
}

function treasuryBalance() {
    return treasuryBalance
}

function MaxSellLockTime() {
    return maxSellLockTime
}

function sub_382e329a(?) {
    return sub_382e329a
}

function totalLPETH() {
    return totalLPETH
}

function totalPayouts() {
    return totalPayouts
}

function _buyTax() {
    return _buyTax
}

function sub_476f6018(?) {
    return sellLockTime
}

function totalTokenSwapGenerated() {
    return totalTokenSwapGenerated
}

function tradingEnabled() {
    return bool(tradingEnabled)
}

function sellLimit() {
    return sellLimit
}

function buyLimit() {
    return buyLimit
}

function marketingBalance() {
    return marketingBalance
}

function _balances(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return _balances[arg1]
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return _balances[address(arg1)]
}

function balanceLimit() {
    return balanceLimit
}

function sub_7796ff37(?) {
    return sub_7796ff37
}

function sub_78af89df(?) {
    return sub_78af89df
}

function manualConversion() {
    return bool(manualConversion)
}

function sellLockDisabled() {
    return bool(sellLockDisabled)
}

function getOwner() {
    return owner
}

function owner() {
    return owner
}

function sub_954ea665(?) {
    return sub_954ea665Address
}

function sub_9bac4a95(?) {
    return sub_9bac4a95
}

function _blacklist(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor8[arg1])
}

function _circulatingSupply() {
    return _circulatingSupply
}

function sub_ab0b364c(?) {
    return bool(uint8(stor17.field_72))
}

function _sellTax() {
    return _sellTax
}

function sub_d65af4f2(?) {
    return bool(uint8(stor17.field_64))
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return _allowances[address(arg1)][address(arg2)].field_0
}

function sellLockTime() {
    return sellLockTime
}

function sub_f9cfadf1(?) {
    return sub_f9cfadf1
}

function sub_fb272987(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_fb272987[arg1]
}

function sub_51a1ad48(?) {
    if owner != msg.sender:
        if not stor12[address(msg.sender)]:
            revert with 0, 'Caller not in Team'
    selfdestruct(msg.sender)
}

function sub_9322e41f(?) {
    return balanceLimit / 10^9, sellLimit / 10^9
}

function sub_3733077f(?) {
    return _buyTax, _buyTax, _buyTax, _buyTax, _buyTax, _buyTax, sub_17391e49
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_9b0846df(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if not stor12[address(msg.sender)]:
            revert with 0, 'Caller not in Team'
    stor10 = arg1
}

function UTILIY_SetSellLockTime(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if not stor12[address(msg.sender)]:
            revert with 0, 'Caller not in Team'
    sellLockTime = arg1
}

function sub_93a89081(?) {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if owner != msg.sender:
        if not stor12[address(msg.sender)]:
            revert with 0, 'Caller not in Team'
    stor9 = uint8(bool(arg1))
}

function sub_d8b5f46a(?) {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if owner != msg.sender:
        if not stor12[address(msg.sender)]:
            revert with 0, 'Caller not in Team'
    stor11 = uint8(bool(arg1))
}

function sub_0918a715(?) {
    require calldata.size - 4 >= 32
    require arg1 == uint8(arg1)
    if owner != msg.sender:
        if not stor12[address(msg.sender)]:
            revert with 0, 'Caller not in Team'
    sub_7796ff37 = uint8(arg1)
}

function sub_30d453d6(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        if not stor12[address(msg.sender)]:
            revert with 0, 'Caller not in Team'
    stor8[address(arg1)] = 0
}

function sub_529ff1f2(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        if not stor12[address(msg.sender)]:
            revert with 0, 'Caller not in Team'
    stor8[address(arg1)] = 1
}

function sub_c0cb2dcd(?) {
    require calldata.size - 4 >= 32
    require arg1 == uint8(arg1)
    if owner != msg.sender:
        if not stor12[address(msg.sender)]:
            revert with 0, 'Caller not in Team'
    sub_78af89df = uint8(arg1)
}

function sub_1e7231ad(?) {
    require calldata.size - 4 >= 32
    require arg1 == uint8(arg1)
    if owner != msg.sender:
        if not stor12[address(msg.sender)]:
            revert with 0, 'Caller not in Team'
    marketingShare = uint8(arg1)
}

function sub_8063f869(?) {
    require calldata.size - 4 >= 32
    require arg1 == uint16(arg1)
    if owner != msg.sender:
        if not stor12[address(msg.sender)]:
            revert with 0, 'Caller not in Team'
    maxSellLockTime = uint16(arg1)
}

function sub_7c7986d6(?) {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if owner != msg.sender:
        if not stor12[address(msg.sender)]:
            revert with 0, 'Caller not in Team'
    manualConversion = uint8(bool(arg1))
}

function sub_25b6b759(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        if not stor12[address(msg.sender)]:
            revert with 0, 'Caller not in Team'
    sub_05691ec8Address = address(arg1)
}

function sub_f9e01b51(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        if not stor12[address(msg.sender)]:
            revert with 0, 'Caller not in Team'
    address(stor29.field_16) = address(arg1)
}

function sub_19f36232(?) {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if owner != msg.sender:
        if not stor12[address(msg.sender)]:
            revert with 0, 'Caller not in Team'
    Mask(248, 0, stor29.field_8) = Mask(248, 0, bool(arg1))
}

function sub_239be26e(?) {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if owner != msg.sender:
        if not stor12[address(msg.sender)]:
            revert with 0, 'Caller not in Team'
    Mask(248, 0, stor27.field_8) = Mask(248, 0, bool(arg1))
}

function sub_044bbd66(?) {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if owner != msg.sender:
        if not stor12[address(msg.sender)]:
            revert with 0, 'Caller not in Team'
    Mask(184, 0, stor17.field_72) = Mask(184, 0, bool(arg1))
}

function sub_dd1be9be(?) {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if owner != msg.sender:
        if not stor12[address(msg.sender)]:
            revert with 0, 'Caller not in Team'
    Mask(200, 0, stor17.field_56) = Mask(200, 0, bool(arg1))
}

function sub_6adc8634(?) {
    if owner != msg.sender:
        if not stor12[address(msg.sender)]:
            revert with 0, 'Caller not in Team'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    require ext_call.success
}

function sub_02368428(?) {
    if owner != msg.sender:
        if not stor12[address(msg.sender)]:
            revert with 0, 'Caller not in Team'
    if 8760 * 24 * 3600 > !block.timestamp:
        revert with 0, 17
    sub_fb272987[msg.sender] = block.timestamp + (8760 * 24 * 3600)
}

function sub_561e7b53(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if owner != msg.sender:
        if not stor12[address(msg.sender)]:
            revert with 0, 'Caller not in Team'
    stor8[address(arg1)] = uint8(bool(arg2))
}

function sub_050eb716(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if owner != msg.sender:
        if not stor12[address(msg.sender)]:
            revert with 0, 'Caller not in Team'
    stor12[address(arg1)] = uint8(bool(arg2))
}

function sub_af4fad44(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if sub_fb272987[address(arg1)] <= block.timestamp:
        return 0
    if sub_fb272987[address(arg1)] < block.timestamp:
        revert with 0, 17
    return (sub_fb272987[address(arg1)] - block.timestamp)
}

function sub_07c8c2be(?) {
    if owner != msg.sender:
        if not stor12[address(msg.sender)]:
            revert with 0, 'Caller not in Team'
    sub_15638c68 = 0
    call msg.sender with:
       value sub_15638c68 wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'withdraw failed'
}

function sub_536d8c5f(?) {
    if owner != msg.sender:
        if not stor12[address(msg.sender)]:
            revert with 0, 'Caller not in Team'
    treasuryBalance = 0
    call msg.sender with:
       value treasuryBalance wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'withdraw failed'
}

function sub_d72e08d1(?) {
    if owner != msg.sender:
        if not stor12[address(msg.sender)]:
            revert with 0, 'Caller not in Team'
    marketingBalance = 0
    call msg.sender with:
       value marketingBalance wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'withdraw failed'
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not msg.sender:
        revert with 0, 'Approve from zero'
    if not arg1:
        revert with 0, 'Approve to zero'
    _allowances[address(msg.sender)][address(arg1)].field_0 = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function sub_7db03b81(?) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        if not stor12[address(msg.sender)]:
            revert with 0, 'Caller not in Team'
    if arg1 and 10^9 > -1 / arg1:
        revert with 0, 17
    if arg2 and 10^9 > -1 / arg2:
        revert with 0, 17
    balanceLimit = 10^9 * arg1
    sellLimit = 10^9 * arg2
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_273cb39d(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        if not stor12[address(msg.sender)]:
            revert with 0, 'Caller not in Team'
    if not stor5[address(arg1)]:
        stor4.length++
        stor4[stor4.length].field_0 = address(arg1)
        stor4[stor4.length].field_160 = 0
        stor5[address(arg1)] = stor4.length
}

function sub_b150bdff(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        if not stor12[address(msg.sender)]:
            revert with 0, 'Caller not in Team'
    if not stor7[address(arg1)]:
        stor6.length++
        stor6[stor6.length].field_0 = address(arg1)
        stor6[stor6.length].field_160 = 0
        stor7[address(arg1)] = stor6.length
}

function sub_94e3a27c(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if not stor12[address(msg.sender)]:
            revert with 0, 'Caller not in Team'
    require arg1 <= _balances[this.address]
    if _balances[this.address] < arg1:
        revert with 0, 17
    _balances[this.address] -= arg1
    if _circulatingSupply < arg1:
        revert with 0, 17
    _circulatingSupply -= arg1
    emit 0xfeddf252: arg1, this.address, 57005
}

function sub_44516f2b(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        if not stor12[address(msg.sender)]:
            revert with 0, 'Caller not in Team'
    _balances[address(arg1)] = 0
    if _balances[this.address] > !_balances[address(arg1)]:
        revert with 0, 17
    _balances[this.address] += _balances[address(arg1)]
    emit 0xfeddf252: _balances[address(arg1)], address(arg1), this.address
}

function increaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if _allowances[msg.sender][address(arg1)].field_0 > !arg2:
        revert with 0, 17
    if not msg.sender:
        revert with 0, 'Approve from zero'
    if not arg1:
        revert with 0, 'Approve to zero'
    _allowances[address(msg.sender)][address(arg1)].field_0 = _allowances[msg.sender][address(arg1)].field_0 + arg2
    emit Approval((_allowances[msg.sender][address(arg1)].field_0 + arg2), msg.sender, arg1);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if _allowances[msg.sender][address(arg1)].field_0 < arg2:
        revert with 0, '<0 allowance'
    if not msg.sender:
        revert with 0, 'Approve from zero'
    if not arg1:
        revert with 0, 'Approve to zero'
    _allowances[address(msg.sender)][address(arg1)].field_0 = _allowances[msg.sender][address(arg1)].field_0 - arg2
    emit Approval((_allowances[msg.sender][address(arg1)].field_0 - arg2), msg.sender, arg1);
    return 1
}

function sub_d31323cb(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if owner != msg.sender:
        if not stor12[address(msg.sender)]:
            revert with 0, 'Caller not in Team'
    if arg2 > _balances[address(arg1)]:
        revert with 0, 'Not enough tokens'
    if arg2 and 10^9 > -1 / arg2:
        revert with 0, 17
    if _balances[address(arg1)] < 10^9 * arg2:
        revert with 0, 17
    _balances[address(arg1)] += -1 * 10^9 * arg2
    if arg2 and 10^9 > -1 / arg2:
        revert with 0, 17
    if _balances[this.address] > !(10^9 * arg2):
        revert with 0, 17
    _balances[this.address] += 10^9 * arg2
    if arg2 and 10^9 > -1 / arg2:
        revert with 0, 17
    emit 0xfeddf252: (10^9 * arg2), address(arg1), this.address
}

function sub_27a9de0e(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        if not stor12[address(msg.sender)]:
            revert with 0, 'Caller not in Team'
    if stor5[address(arg1)]:
        if stor5[address(arg1)] < 1:
            revert with 0, 17
        if stor4.length < 1:
            revert with 0, 17
        if stor4.length - 1 >= stor4.length:
            revert with 0, 50
        if stor5[address(arg1)] - 1 >= stor4.length:
            revert with 0, 50
        stor4[stor5[address(arg1)]].field_0 = stor4[stor4.length].field_0
        stor5[stor4[stor4.length].field_0] = stor5[address(arg1)]
        if not stor4.length:
            revert with 0, 49
        stor4[stor4.length].field_0 = 0
        stor4.length--
        stor5[address(arg1)] = 0
}

function sub_3d6be5ad(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        if not stor12[address(msg.sender)]:
            revert with 0, 'Caller not in Team'
    if stor7[address(arg1)]:
        if stor7[address(arg1)] < 1:
            revert with 0, 17
        if stor6.length < 1:
            revert with 0, 17
        if stor6.length - 1 >= stor6.length:
            revert with 0, 50
        if stor7[address(arg1)] - 1 >= stor6.length:
            revert with 0, 50
        stor6[stor7[address(arg1)]].field_0 = stor6[stor6.length].field_0
        stor7[stor6[stor6.length].field_0] = stor7[address(arg1)]
        if not stor6.length:
            revert with 0, 49
        stor6[stor6.length].field_0 = 0
        stor6.length--
        stor7[address(arg1)] = 0
}

function sub_8031aa26(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        if not stor12[address(msg.sender)]:
            revert with 0, 'Caller not in Team'
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'No tokens in our balance'
    require ext_code.size(address(arg1))
    call address(arg1).0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_d1e3928a(?) {
    require calldata.size - 4 >= 224
    require arg1 == uint8(arg1)
    require arg2 == uint8(arg2)
    require arg3 == uint8(arg3)
    require arg4 == uint8(arg4)
    require arg5 == uint8(arg5)
    require arg6 == uint8(arg6)
    require arg7 == uint8(arg7)
    if owner != msg.sender:
        if not stor12[address(msg.sender)]:
            revert with 0, 'Caller not in Team'
    if uint8(arg1) > -uint8(arg2) + 255:
        revert with 0, 17
    if uint8(uint8(arg2) + uint8(arg1)) > -uint8(arg3) + 255:
        revert with 0, 17
    if uint8(uint8(arg3) + uint8(uint8(arg2) + uint8(arg1))) > -uint8(arg4) + 255:
        revert with 0, 17
    if uint8(uint8(arg4) + uint8(uint8(arg3) + uint8(uint8(arg2) + uint8(arg1)))) != 100:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'burn+liq+marketing needs to equal 100%'
    _buyTax = uint8(arg5)
    _sellTax = uint8(arg6)
    sub_17391e49 = uint8(arg7)
    Mask(232, 0, stor17.field_24) = 0
    sub_382e329a = uint8(arg3)
    sub_2d882863 = uint8(arg4)
    Mask(216, 0, stor17.field_40) = 0
    sub_f9cfadf1 = uint8(arg2)
    sub_9bac4a95 = uint8(arg1)
}

function sub_9365d118(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if not stor12[address(msg.sender)]:
            revert with 0, 'Caller not in Team'
    if arg1 > 0x44b82fa09b5a52cb98b405447c4a98187eebb22f008d5d64f9c394ae9:
        revert with 0, 17
    uint8(stor27.field_0) = 1
    if sub_382e329a > -sub_2d882863 + 255:
        revert with 0, 17
    if stor10 <= 10^9 * arg1:
        if _balances[this.address] >= stor10:
            if uint8(sub_2d882863 + sub_382e329a):
                if stor10 and sub_382e329a > -1 / stor10:
                    revert with 0, 17
                if not uint8(sub_2d882863 + sub_382e329a):
                    revert with 0, 18
                if stor10 and sub_2d882863 > -1 / stor10:
                    revert with 0, 17
                if not uint8(sub_2d882863 + sub_382e329a):
                    revert with 0, 18
                if stor10 and sub_9bac4a95 > -1 / stor10:
                    revert with 0, 17
                if not uint8(sub_2d882863 + sub_382e329a):
                    revert with 0, 18
                if stor10 and sub_f9cfadf1 > -1 / stor10:
                    revert with 0, 17
                if not uint8(sub_2d882863 + sub_382e329a):
                    revert with 0, 18
                if stor10 * sub_382e329a / uint8(sub_2d882863 + sub_382e329a) < stor10 * sub_382e329a / uint8(sub_2d882863 + sub_382e329a) / 2:
                    revert with 0, 17
                if (stor10 * sub_382e329a / uint8(sub_2d882863 + sub_382e329a)) - (stor10 * sub_382e329a / uint8(sub_2d882863 + sub_382e329a) / 2) > !(stor10 * sub_2d882863 / uint8(sub_2d882863 + sub_382e329a)):
                    revert with 0, 17
                if (stor10 * sub_382e329a / uint8(sub_2d882863 + sub_382e329a)) - (stor10 * sub_382e329a / uint8(sub_2d882863 + sub_382e329a) / 2) + (stor10 * sub_2d882863 / uint8(sub_2d882863 + sub_382e329a)) > !(stor10 * sub_f9cfadf1 / uint8(sub_2d882863 + sub_382e329a)):
                    revert with 0, 17
                if (stor10 * sub_382e329a / uint8(sub_2d882863 + sub_382e329a)) - (stor10 * sub_382e329a / uint8(sub_2d882863 + sub_382e329a) / 2) + (stor10 * sub_2d882863 / uint8(sub_2d882863 + sub_382e329a)) + (stor10 * sub_f9cfadf1 / uint8(sub_2d882863 + sub_382e329a)) > !(stor10 * sub_9bac4a95 / uint8(sub_2d882863 + sub_382e329a)):
                    revert with 0, 17
                if not this.address:
                    revert with 0, 'Approve from zero'
                if not sub_954ea665Address:
                    revert with 0, 'Approve to zero'
                _allowances[address(this.address)][stor19].field_0 = (stor10 * sub_382e329a / uint8(sub_2d882863 + sub_382e329a)) - (stor10 * sub_382e329a / uint8(sub_2d882863 + sub_382e329a) / 2) + (stor10 * sub_2d882863 / uint8(sub_2d882863 + sub_382e329a)) + (stor10 * sub_f9cfadf1 / uint8(sub_2d882863 + sub_382e329a)) + (stor10 * sub_9bac4a95 / uint8(sub_2d882863 + sub_382e329a))
                emit Approval(((stor10 * sub_382e329a / uint8(sub_2d882863 + sub_382e329a)) - (stor10 * sub_382e329a / uint8(sub_2d882863 + sub_382e329a) / 2) + (stor10 * sub_2d882863 / uint8(sub_2d882863 + sub_382e329a)) + (stor10 * sub_f9cfadf1 / uint8(sub_2d882863 + sub_382e329a)) + (stor10 * sub_9bac4a95 / uint8(sub_2d882863 + sub_382e329a))), this.address, sub_954ea665Address);
                mem[128] = this.address
                mem[160] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                mem[192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                mem[196] = (stor10 * sub_382e329a / uint8(sub_2d882863 + sub_382e329a)) - (stor10 * sub_382e329a / uint8(sub_2d882863 + sub_382e329a) / 2) + (stor10 * sub_2d882863 / uint8(sub_2d882863 + sub_382e329a)) + (stor10 * sub_f9cfadf1 / uint8(sub_2d882863 + sub_382e329a)) + (stor10 * sub_9bac4a95 / uint8(sub_2d882863 + sub_382e329a))
                idx = 0
                s = 388
                t = 128
                while idx < 2:
                    mem[s] = mem[t + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(sub_954ea665Address)
                call sub_954ea665Address.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args (stor10 * sub_382e329a / uint8(sub_2d882863 + sub_382e329a)) - (stor10 * sub_382e329a / uint8(sub_2d882863 + sub_382e329a) / 2) + (stor10 * sub_2d882863 / uint8(sub_2d882863 + sub_382e329a)) + (stor10 * sub_f9cfadf1 / uint8(sub_2d882863 + sub_382e329a)) + (stor10 * sub_9bac4a95 / uint8(sub_2d882863 + sub_382e329a)), 0, 160, address(this.address), block.timestamp, 2, mem[388 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if eth.balance(this.address) < eth.balance(this.address):
                    revert with 0, 17
                if False and (stor10 * sub_382e329a / uint8(sub_2d882863 + sub_382e329a)) - (stor10 * sub_382e329a / uint8(sub_2d882863 + sub_382e329a) / 2) > 0:
                    revert with 0, 17
                if not (stor10 * sub_382e329a / uint8(sub_2d882863 + sub_382e329a)) - (stor10 * sub_382e329a / uint8(sub_2d882863 + sub_382e329a) / 2) + (stor10 * sub_2d882863 / uint8(sub_2d882863 + sub_382e329a)) + (stor10 * sub_f9cfadf1 / uint8(sub_2d882863 + sub_382e329a)) + (stor10 * sub_9bac4a95 / uint8(sub_2d882863 + sub_382e329a)):
                    revert with 0, 18
                if totalLPETH > !(0 / (stor10 * sub_382e329a / uint8(sub_2d882863 + sub_382e329a)) - (stor10 * sub_382e329a / uint8(sub_2d882863 + sub_382e329a) / 2) + (stor10 * sub_2d882863 / uint8(sub_2d882863 + sub_382e329a)) + (stor10 * sub_f9cfadf1 / uint8(sub_2d882863 + sub_382e329a)) + (stor10 * sub_9bac4a95 / uint8(sub_2d882863 + sub_382e329a))):
                    revert with 0, 17
                totalLPETH += 0 / (stor10 * sub_382e329a / uint8(sub_2d882863 + sub_382e329a)) - (stor10 * sub_382e329a / uint8(sub_2d882863 + sub_382e329a) / 2) + (stor10 * sub_2d882863 / uint8(sub_2d882863 + sub_382e329a)) + (stor10 * sub_f9cfadf1 / uint8(sub_2d882863 + sub_382e329a)) + (stor10 * sub_9bac4a95 / uint8(sub_2d882863 + sub_382e329a))
                if not this.address:
                    revert with 0, 'Approve from zero'
                if not sub_954ea665Address:
                    revert with 0, 'Approve to zero'
                _allowances[address(this.address)][stor19].field_0 = stor10 * sub_382e329a / uint8(sub_2d882863 + sub_382e329a) / 2
                _allowances[address(this.address)][stor19].field_255 = 0
                emit Approval((stor10 * sub_382e329a / uint8(sub_2d882863 + sub_382e329a) / 2), this.address, sub_954ea665Address);
                require ext_code.size(sub_954ea665Address)
                call sub_954ea665Address.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                   value 0 / (stor10 * sub_382e329a / uint8(sub_2d882863 + sub_382e329a)) - (stor10 * sub_382e329a / uint8(sub_2d882863 + sub_382e329a) / 2) + (stor10 * sub_2d882863 / uint8(sub_2d882863 + sub_382e329a)) + (stor10 * sub_f9cfadf1 / uint8(sub_2d882863 + sub_382e329a)) + (stor10 * sub_9bac4a95 / uint8(sub_2d882863 + sub_382e329a)) wei
                     gas gas_remaining wei
                    args this.address, Mask(255, 1, stor10 * sub_382e329a / uint8(sub_2d882863 + sub_382e329a)), 0, 0, this.address, block.timestamp
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                if eth.balance(this.address) < eth.balance(this.address):
                    revert with 0, 17
                if False and marketingShare > 0:
                    revert with 0, 17
                if False and sub_7796ff37 > 0:
                    revert with 0, 17
                if False and sub_78af89df > 0:
                    revert with 0, 17
                if marketingBalance > -1:
                    revert with 0, 17
                if treasuryBalance > -1:
                    revert with 0, 17
                if sub_15638c68 > -1:
                    revert with 0, 17
    else:
        if not stor11:
            if _balances[this.address] >= stor10:
                if uint8(sub_2d882863 + sub_382e329a):
                    if stor10 and sub_382e329a > -1 / stor10:
                        revert with 0, 17
                    if not uint8(sub_2d882863 + sub_382e329a):
                        revert with 0, 18
                    if stor10 and sub_2d882863 > -1 / stor10:
                        revert with 0, 17
                    if not uint8(sub_2d882863 + sub_382e329a):
                        revert with 0, 18
                    if stor10 and sub_9bac4a95 > -1 / stor10:
                        revert with 0, 17
                    if not uint8(sub_2d882863 + sub_382e329a):
                        revert with 0, 18
                    if stor10 and sub_f9cfadf1 > -1 / stor10:
                        revert with 0, 17
                    if not uint8(sub_2d882863 + sub_382e329a):
                        revert with 0, 18
                    if stor10 * sub_382e329a / uint8(sub_2d882863 + sub_382e329a) < stor10 * sub_382e329a / uint8(sub_2d882863 + sub_382e329a) / 2:
                        revert with 0, 17
                    if (stor10 * sub_382e329a / uint8(sub_2d882863 + sub_382e329a)) - (stor10 * sub_382e329a / uint8(sub_2d882863 + sub_382e329a) / 2) > !(stor10 * sub_2d882863 / uint8(sub_2d882863 + sub_382e329a)):
                        revert with 0, 17
                    if (stor10 * sub_382e329a / uint8(sub_2d882863 + sub_382e329a)) - (stor10 * sub_382e329a / uint8(sub_2d882863 + sub_382e329a) / 2) + (stor10 * sub_2d882863 / uint8(sub_2d882863 + sub_382e329a)) > !(stor10 * sub_f9cfadf1 / uint8(sub_2d882863 + sub_382e329a)):
                        revert with 0, 17
                    if (stor10 * sub_382e329a / uint8(sub_2d882863 + sub_382e329a)) - (stor10 * sub_382e329a / uint8(sub_2d882863 + sub_382e329a) / 2) + (stor10 * sub_2d882863 / uint8(sub_2d882863 + sub_382e329a)) + (stor10 * sub_f9cfadf1 / uint8(sub_2d882863 + sub_382e329a)) > !(stor10 * sub_9bac4a95 / uint8(sub_2d882863 + sub_382e329a)):
                        revert with 0, 17
                    if not this.address:
                        revert with 0, 'Approve from zero'
                    if not sub_954ea665Address:
                        revert with 0, 'Approve to zero'
                    _allowances[address(this.address)][stor19].field_0 = (stor10 * sub_382e329a / uint8(sub_2d882863 + sub_382e329a)) - (stor10 * sub_382e329a / uint8(sub_2d882863 + sub_382e329a) / 2) + (stor10 * sub_2d882863 / uint8(sub_2d882863 + sub_382e329a)) + (stor10 * sub_f9cfadf1 / uint8(sub_2d882863 + sub_382e329a)) + (stor10 * sub_9bac4a95 / uint8(sub_2d882863 + sub_382e329a))
                    emit Approval(((stor10 * sub_382e329a / uint8(sub_2d882863 + sub_382e329a)) - (stor10 * sub_382e329a / uint8(sub_2d882863 + sub_382e329a) / 2) + (stor10 * sub_2d882863 / uint8(sub_2d882863 + sub_382e329a)) + (stor10 * sub_f9cfadf1 / uint8(sub_2d882863 + sub_382e329a)) + (stor10 * sub_9bac4a95 / uint8(sub_2d882863 + sub_382e329a))), this.address, sub_954ea665Address);
                    mem[128] = this.address
                    mem[160] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                    mem[192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                    mem[196] = (stor10 * sub_382e329a / uint8(sub_2d882863 + sub_382e329a)) - (stor10 * sub_382e329a / uint8(sub_2d882863 + sub_382e329a) / 2) + (stor10 * sub_2d882863 / uint8(sub_2d882863 + sub_382e329a)) + (stor10 * sub_f9cfadf1 / uint8(sub_2d882863 + sub_382e329a)) + (stor10 * sub_9bac4a95 / uint8(sub_2d882863 + sub_382e329a))
                    idx = 0
                    s = 388
                    t = 128
                    while idx < 2:
                        mem[s] = mem[t + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(sub_954ea665Address)
                    call sub_954ea665Address.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args (stor10 * sub_382e329a / uint8(sub_2d882863 + sub_382e329a)) - (stor10 * sub_382e329a / uint8(sub_2d882863 + sub_382e329a) / 2) + (stor10 * sub_2d882863 / uint8(sub_2d882863 + sub_382e329a)) + (stor10 * sub_f9cfadf1 / uint8(sub_2d882863 + sub_382e329a)) + (stor10 * sub_9bac4a95 / uint8(sub_2d882863 + sub_382e329a)), 0, 160, address(this.address), block.timestamp, 2, mem[388 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if eth.balance(this.address) < eth.balance(this.address):
                        revert with 0, 17
                    if False and (stor10 * sub_382e329a / uint8(sub_2d882863 + sub_382e329a)) - (stor10 * sub_382e329a / uint8(sub_2d882863 + sub_382e329a) / 2) > 0:
                        revert with 0, 17
                    if not (stor10 * sub_382e329a / uint8(sub_2d882863 + sub_382e329a)) - (stor10 * sub_382e329a / uint8(sub_2d882863 + sub_382e329a) / 2) + (stor10 * sub_2d882863 / uint8(sub_2d882863 + sub_382e329a)) + (stor10 * sub_f9cfadf1 / uint8(sub_2d882863 + sub_382e329a)) + (stor10 * sub_9bac4a95 / uint8(sub_2d882863 + sub_382e329a)):
                        revert with 0, 18
                    if totalLPETH > !(0 / (stor10 * sub_382e329a / uint8(sub_2d882863 + sub_382e329a)) - (stor10 * sub_382e329a / uint8(sub_2d882863 + sub_382e329a) / 2) + (stor10 * sub_2d882863 / uint8(sub_2d882863 + sub_382e329a)) + (stor10 * sub_f9cfadf1 / uint8(sub_2d882863 + sub_382e329a)) + (stor10 * sub_9bac4a95 / uint8(sub_2d882863 + sub_382e329a))):
                        revert with 0, 17
                    totalLPETH += 0 / (stor10 * sub_382e329a / uint8(sub_2d882863 + sub_382e329a)) - (stor10 * sub_382e329a / uint8(sub_2d882863 + sub_382e329a) / 2) + (stor10 * sub_2d882863 / uint8(sub_2d882863 + sub_382e329a)) + (stor10 * sub_f9cfadf1 / uint8(sub_2d882863 + sub_382e329a)) + (stor10 * sub_9bac4a95 / uint8(sub_2d882863 + sub_382e329a))
                    if not this.address:
                        revert with 0, 'Approve from zero'
                    if not sub_954ea665Address:
                        revert with 0, 'Approve to zero'
                    _allowances[address(this.address)][stor19].field_0 = stor10 * sub_382e329a / uint8(sub_2d882863 + sub_382e329a) / 2
                    _allowances[address(this.address)][stor19].field_255 = 0
                    emit Approval((stor10 * sub_382e329a / uint8(sub_2d882863 + sub_382e329a) / 2), this.address, sub_954ea665Address);
                    require ext_code.size(sub_954ea665Address)
                    call sub_954ea665Address.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                       value 0 / (stor10 * sub_382e329a / uint8(sub_2d882863 + sub_382e329a)) - (stor10 * sub_382e329a / uint8(sub_2d882863 + sub_382e329a) / 2) + (stor10 * sub_2d882863 / uint8(sub_2d882863 + sub_382e329a)) + (stor10 * sub_f9cfadf1 / uint8(sub_2d882863 + sub_382e329a)) + (stor10 * sub_9bac4a95 / uint8(sub_2d882863 + sub_382e329a)) wei
                         gas gas_remaining wei
                        args this.address, Mask(255, 1, stor10 * sub_382e329a / uint8(sub_2d882863 + sub_382e329a)), 0, 0, this.address, block.timestamp
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    if eth.balance(this.address) < eth.balance(this.address):
                        revert with 0, 17
                    if False and marketingShare > 0:
                        revert with 0, 17
                    if False and sub_7796ff37 > 0:
                        revert with 0, 17
                    if False and sub_78af89df > 0:
                        revert with 0, 17
                    if marketingBalance > -1:
                        revert with 0, 17
                    if treasuryBalance > -1:
                        revert with 0, 17
                    if sub_15638c68 > -1:
                        revert with 0, 17
        else:
            if _balances[this.address] >= 10^9 * arg1:
                if uint8(sub_2d882863 + sub_382e329a):
                    if 10^9 * arg1 and sub_382e329a > -1 / 10^9 * arg1:
                        revert with 0, 17
                    if not uint8(sub_2d882863 + sub_382e329a):
                        revert with 0, 18
                    if 10^9 * arg1 and sub_2d882863 > -1 / 10^9 * arg1:
                        revert with 0, 17
                    if not uint8(sub_2d882863 + sub_382e329a):
                        revert with 0, 18
                    if 10^9 * arg1 and sub_9bac4a95 > -1 / 10^9 * arg1:
                        revert with 0, 17
                    if not uint8(sub_2d882863 + sub_382e329a):
                        revert with 0, 18
                    if 10^9 * arg1 and sub_f9cfadf1 > -1 / 10^9 * arg1:
                        revert with 0, 17
                    if not uint8(sub_2d882863 + sub_382e329a):
                        revert with 0, 18
                    if 10^9 * arg1 * sub_382e329a / uint8(sub_2d882863 + sub_382e329a) < 10^9 * arg1 * sub_382e329a / uint8(sub_2d882863 + sub_382e329a) / 2:
                        revert with 0, 17
                    if (10^9 * arg1 * sub_382e329a / uint8(sub_2d882863 + sub_382e329a)) - (10^9 * arg1 * sub_382e329a / uint8(sub_2d882863 + sub_382e329a) / 2) > !(10^9 * arg1 * sub_2d882863 / uint8(sub_2d882863 + sub_382e329a)):
                        revert with 0, 17
                    if (10^9 * arg1 * sub_382e329a / uint8(sub_2d882863 + sub_382e329a)) - (10^9 * arg1 * sub_382e329a / uint8(sub_2d882863 + sub_382e329a) / 2) + (10^9 * arg1 * sub_2d882863 / uint8(sub_2d882863 + sub_382e329a)) > !(10^9 * arg1 * sub_f9cfadf1 / uint8(sub_2d882863 + sub_382e329a)):
                        revert with 0, 17
                    if (10^9 * arg1 * sub_382e329a / uint8(sub_2d882863 + sub_382e329a)) - (10^9 * arg1 * sub_382e329a / uint8(sub_2d882863 + sub_382e329a) / 2) + (10^9 * arg1 * sub_2d882863 / uint8(sub_2d882863 + sub_382e329a)) + (10^9 * arg1 * sub_f9cfadf1 / uint8(sub_2d882863 + sub_382e329a)) > !(10^9 * arg1 * sub_9bac4a95 / uint8(sub_2d882863 + sub_382e329a)):
                        revert with 0, 17
                    if not this.address:
                        revert with 0, 'Approve from zero'
                    if not sub_954ea665Address:
                        revert with 0, 'Approve to zero'
                    _allowances[address(this.address)][stor19].field_0 = (10^9 * arg1 * sub_382e329a / uint8(sub_2d882863 + sub_382e329a)) - (10^9 * arg1 * sub_382e329a / uint8(sub_2d882863 + sub_382e329a) / 2) + (10^9 * arg1 * sub_2d882863 / uint8(sub_2d882863 + sub_382e329a)) + (10^9 * arg1 * sub_f9cfadf1 / uint8(sub_2d882863 + sub_382e329a)) + (10^9 * arg1 * sub_9bac4a95 / uint8(sub_2d882863 + sub_382e329a))
                    emit Approval(((10^9 * arg1 * sub_382e329a / uint8(sub_2d882863 + sub_382e329a)) - (10^9 * arg1 * sub_382e329a / uint8(sub_2d882863 + sub_382e329a) / 2) + (10^9 * arg1 * sub_2d882863 / uint8(sub_2d882863 + sub_382e329a)) + (10^9 * arg1 * sub_f9cfadf1 / uint8(sub_2d882863 + sub_382e329a)) + (10^9 * arg1 * sub_9bac4a95 / uint8(sub_2d882863 + sub_382e329a))), this.address, sub_954ea665Address);
                    mem[128] = this.address
                    mem[160] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                    mem[192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                    mem[196] = (10^9 * arg1 * sub_382e329a / uint8(sub_2d882863 + sub_382e329a)) - (10^9 * arg1 * sub_382e329a / uint8(sub_2d882863 + sub_382e329a) / 2) + (10^9 * arg1 * sub_2d882863 / uint8(sub_2d882863 + sub_382e329a)) + (10^9 * arg1 * sub_f9cfadf1 / uint8(sub_2d882863 + sub_382e329a)) + (10^9 * arg1 * sub_9bac4a95 / uint8(sub_2d882863 + sub_382e329a))
                    idx = 0
                    s = 388
                    t = 128
                    while idx < 2:
                        mem[s] = mem[t + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(sub_954ea665Address)
                    call sub_954ea665Address.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args (10^9 * arg1 * sub_382e329a / uint8(sub_2d882863 + sub_382e329a)) - (10^9 * arg1 * sub_382e329a / uint8(sub_2d882863 + sub_382e329a) / 2) + (10^9 * arg1 * sub_2d882863 / uint8(sub_2d882863 + sub_382e329a)) + (10^9 * arg1 * sub_f9cfadf1 / uint8(sub_2d882863 + sub_382e329a)) + (10^9 * arg1 * sub_9bac4a95 / uint8(sub_2d882863 + sub_382e329a)), 0, 160, address(this.address), block.timestamp, 2, mem[388 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if eth.balance(this.address) < eth.balance(this.address):
                        revert with 0, 17
                    if False and (10^9 * arg1 * sub_382e329a / uint8(sub_2d882863 + sub_382e329a)) - (10^9 * arg1 * sub_382e329a / uint8(sub_2d882863 + sub_382e329a) / 2) > 0:
                        revert with 0, 17
                    if not (10^9 * arg1 * sub_382e329a / uint8(sub_2d882863 + sub_382e329a)) - (10^9 * arg1 * sub_382e329a / uint8(sub_2d882863 + sub_382e329a) / 2) + (10^9 * arg1 * sub_2d882863 / uint8(sub_2d882863 + sub_382e329a)) + (10^9 * arg1 * sub_f9cfadf1 / uint8(sub_2d882863 + sub_382e329a)) + (10^9 * arg1 * sub_9bac4a95 / uint8(sub_2d882863 + sub_382e329a)):
                        revert with 0, 18
                    if totalLPETH > !(0 / (10^9 * arg1 * sub_382e329a / uint8(sub_2d882863 + sub_382e329a)) - (10^9 * arg1 * sub_382e329a / uint8(sub_2d882863 + sub_382e329a) / 2) + (10^9 * arg1 * sub_2d882863 / uint8(sub_2d882863 + sub_382e329a)) + (10^9 * arg1 * sub_f9cfadf1 / uint8(sub_2d882863 + sub_382e329a)) + (10^9 * arg1 * sub_9bac4a95 / uint8(sub_2d882863 + sub_382e329a))):
                        revert with 0, 17
                    totalLPETH += 0 / (10^9 * arg1 * sub_382e329a / uint8(sub_2d882863 + sub_382e329a)) - (10^9 * arg1 * sub_382e329a / uint8(sub_2d882863 + sub_382e329a) / 2) + (10^9 * arg1 * sub_2d882863 / uint8(sub_2d882863 + sub_382e329a)) + (10^9 * arg1 * sub_f9cfadf1 / uint8(sub_2d882863 + sub_382e329a)) + (10^9 * arg1 * sub_9bac4a95 / uint8(sub_2d882863 + sub_382e329a))
                    if not this.address:
                        revert with 0, 'Approve from zero'
                    if not sub_954ea665Address:
                        revert with 0, 'Approve to zero'
                    _allowances[address(this.address)][stor19].field_0 = 10^9 * arg1 * sub_382e329a / uint8(sub_2d882863 + sub_382e329a) / 2
                    _allowances[address(this.address)][stor19].field_255 = 0
                    emit Approval((10^9 * arg1 * sub_382e329a / uint8(sub_2d882863 + sub_382e329a) / 2), this.address, sub_954ea665Address);
                    require ext_code.size(sub_954ea665Address)
                    call sub_954ea665Address.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                       value 0 / (10^9 * arg1 * sub_382e329a / uint8(sub_2d882863 + sub_382e329a)) - (10^9 * arg1 * sub_382e329a / uint8(sub_2d882863 + sub_382e329a) / 2) + (10^9 * arg1 * sub_2d882863 / uint8(sub_2d882863 + sub_382e329a)) + (10^9 * arg1 * sub_f9cfadf1 / uint8(sub_2d882863 + sub_382e329a)) + (10^9 * arg1 * sub_9bac4a95 / uint8(sub_2d882863 + sub_382e329a)) wei
                         gas gas_remaining wei
                        args this.address, Mask(255, 1, 10^9 * arg1 * sub_382e329a / uint8(sub_2d882863 + sub_382e329a)), 0, 0, this.address, block.timestamp
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    if eth.balance(this.address) < eth.balance(this.address):
                        revert with 0, 17
                    if False and marketingShare > 0:
                        revert with 0, 17
                    if False and sub_7796ff37 > 0:
                        revert with 0, 17
                    if False and sub_78af89df > 0:
                        revert with 0, 17
                    if marketingBalance > -1:
                        revert with 0, 17
                    if treasuryBalance > -1:
                        revert with 0, 17
                    if sub_15638c68 > -1:
                        revert with 0, 17
    uint8(stor27.field_0) = 0
}



}
