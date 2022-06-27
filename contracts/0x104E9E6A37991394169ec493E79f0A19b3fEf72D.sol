contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - transfer(address arg1, uint256 arg2)
#  - _fallback()
#
const name = '', 0

const decimals = 9

const symbol = '', 0


address owner;
address stor2;
address stor3;
uint256 totalSupply;
uint256 _maxWalletSize;
uint256 sub_4b867e38;
uint256 sub_4fde32f2;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint8 stor10;
mapping of address sub_35650d92;
mapping of uint256 sub_91471ad6;
mapping of uint256 sub_de405884;
mapping of uint8 stor14;
mapping of uint8 stor15;
uint256 totalInfected;
uint256 stor20;
uint256 stor21;
uint256 stor22;
uint256 stor23;
uint256 stor30;
uint256 sub_a847aebb;
address stor32;
address stor33;
address routerAddress;
uint8 swapEnabled; offset 160
uint128 stor35; offset 160
address pairAddress;
uint256 swapThreshold;
uint256 lastSwapTime;
uint256 sub_b5bb3466;
uint256 sub_21dd92c0;
mapping of uint256 sub_7d0495d6;
mapping of uint256 stor42;
mapping of uint256 sub_9eef38de;
uint256 sub_e0d0e746;
uint256 sub_50f0c86d;
uint256 sub_ca6d108d;
uint256 sub_77c605a4;
uint256 sub_802fc3fa;
address sub_dd4655d7Address;

function totalInfected() {
    return totalInfected
}

function swapThreshold() {
    return swapThreshold
}

function lastSwapTime() {
    return lastSwapTime
}

function totalSupply() {
    return totalSupply
}

function sub_21dd92c0(?) {
    return sub_21dd92c0
}

function sub_35650d92(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return address(sub_35650d92[arg1])
}

function sub_4b867e38(?) {
    return sub_4b867e38
}

function sub_4fde32f2(?) {
    return sub_4fde32f2
}

function sub_50f0c86d(?) {
    return sub_50f0c86d
}

function swapEnabled() {
    return bool(swapEnabled)
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function sub_77c605a4(?) {
    return sub_77c605a4
}

function sub_7d0495d6(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_7d0495d6[arg1]
}

function sub_802fc3fa(?) {
    return sub_802fc3fa
}

function getOwner() {
    return owner
}

function _maxWalletSize() {
    return _maxWalletSize
}

function sub_91471ad6(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_91471ad6[arg1]
}

function sub_9eef38de(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_9eef38de[arg1]
}

function sub_a847aebb(?) {
    return sub_a847aebb
}

function pair() {
    return pairAddress
}

function sub_b5bb3466(?) {
    return sub_b5bb3466
}

function sub_ca6d108d(?) {
    return sub_ca6d108d
}

function sub_dd4655d7(?) {
    return sub_dd4655d7Address
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function sub_de405884(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_de405884[arg1]
}

function sub_e0d0e746(?) {
    return sub_e0d0e746
}

function sub_e6565546(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor14[arg1])
}

function router() {
    return routerAddress
}

function isBlacklisted(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor15[arg1])
}

function isOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return (owner == arg1)
}

function sub_6679ff33(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, '!OWNER'
    sub_a847aebb = arg1
}

function sub_d3dc9584(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, '!OWNER'
    require arg1 <= 10^9
    sub_4b867e38 = arg1
}

function sub_3a4f42fe(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, '!OWNER'
    sub_9eef38de[address(arg1)] = arg2
}

function approveMax(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    allowance[msg.sender][address(arg1)] = -1
    emit Approval(-1, msg.sender, arg1);
    return 1
}

function setMaxWallet(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, '!OWNER'
    require arg1 >= totalSupply / 1000
    _maxWalletSize = arg1
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, '!OWNER'
    owner = arg1
    emit OwnershipTransferred(arg1);
}

function blacklist(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, '!OWNER'
    stor15[address(arg1)] = uint8(arg2)
}

function setFeeReceiver(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, '!OWNER'
    stor32 = arg1
    stor33 = arg2
}

function setIsFeeExempt(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, '!OWNER'
    stor10[address(arg1)] = uint8(arg2)
}

function setSwapBackSettings(bool arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, '!OWNER'
    Mask(96, 0, stor35.field_160) = Mask(96, 0, arg1)
    swapThreshold = arg2
}

function sub_745d67d0(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, '!OWNER'
    if arg1 > 0x444444444444444444444444444444444444444444444444444444444444444:
        revert with 0, 17
    sub_b5bb3466 = 60 * arg1
}

function manualSend() {
    if owner != msg.sender:
        revert with 0, '!OWNER'
    call stor32 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function getCirculatingSupply() {
    if balanceOf[stor2] > totalSupply:
        revert with 0, 'Math : subtraction overflow', 0
    if totalSupply < balanceOf[stor2]:
        revert with 0, 17
    if balanceOf[stor3] > totalSupply - balanceOf[stor2]:
        revert with 0, 'Math : subtraction overflow', 0
    if totalSupply - balanceOf[stor2] < balanceOf[stor3]:
        revert with 0, 17
    return (totalSupply - balanceOf[stor2] - balanceOf[stor3])
}

function setFees(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4) {
    require calldata.size - 4 >= 128
    if owner != msg.sender:
        revert with 0, '!OWNER'
    stor20 = arg1
    stor21 = arg2
    stor22 = arg3
    if arg1 > !arg2:
        revert with 0, 17
    if arg1 + arg2 < arg1:
        revert with 0, 'Math : addition overflow'
    if arg1 + arg2 > !arg3:
        revert with 0, 17
    if arg3 < 0:
        revert with 0, 'Math : addition overflow'
    stor23 = arg1 + arg2 + arg3
    stor30 = arg4
}

function transferForeignToken(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, '!OWNER'
    if this.address == arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Can't let you take all native token'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    call stor32 with:
       value ext_call.return_data[0] wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_aa119398(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if sub_4fde32f2 > balanceOf[msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'You need at least 100 000 tokens to infect someone.'
    if stor42[msg.sender] > !sub_21dd92c0:
        revert with 0, 17
    if stor42[msg.sender] + sub_21dd92c0 < sub_7d0495d6[msg.sender]:
        revert with 0, 17
    if stor42[msg.sender] + sub_21dd92c0 - sub_7d0495d6[msg.sender] >= block.timestamp:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Wait before next infection or upgrade virus transmission.'
    stor14[address(arg1)] = 1
    uint256(sub_35650d92[address(arg1)]) = msg.sender or Mask(96, 160, uint256(sub_35650d92[address(arg1)]))
    stor42[msg.sender] = block.timestamp
    if sub_91471ad6[msg.sender] > -2:
        revert with 0, 17
    if sub_91471ad6[msg.sender] + 1 < sub_91471ad6[msg.sender]:
        revert with 0, 'Math : addition overflow'
    sub_91471ad6[msg.sender]++
    if 1 > !totalInfected:
        revert with 0, 17
    totalInfected++
    return 1
}

function getLiquidityBacking(uint256 arg1) {
    require calldata.size - 4 >= 32
    if balanceOf[stor2] > totalSupply:
        revert with 0, 'Math : subtraction overflow', 0
    if totalSupply < balanceOf[stor2]:
        revert with 0, 17
    if balanceOf[stor3] > totalSupply - balanceOf[stor2]:
        revert with 0, 'Math : subtraction overflow', 0
    if totalSupply - balanceOf[stor2] < balanceOf[stor3]:
        revert with 0, 17
    if not balanceOf[address(stor35.field_0)]:
        if arg1:
            if arg1 and 0 > -1 / arg1:
                revert with 0, 17
            if not arg1:
                revert with 0, 18
            if 0 / arg1:
                revert with 0, 'Math : multiplication overflow'
        if not totalSupply - balanceOf[stor2] - balanceOf[stor3]:
            revert with 0, 'Math : division by zero', 0
        return (0 / totalSupply - balanceOf[stor2] - balanceOf[stor3])
    if balanceOf[address(stor35.field_0)] and 2 > -1 / balanceOf[address(stor35.field_0)]:
        revert with 0, 17
    if not balanceOf[address(stor35.field_0)]:
        revert with 0, 18
    if 2 * balanceOf[address(stor35.field_0)] / balanceOf[address(stor35.field_0)] != 2:
        revert with 0, 'Math : multiplication overflow'
    if not arg1:
        if not totalSupply - balanceOf[stor2] - balanceOf[stor3]:
            revert with 0, 'Math : division by zero', 0
        return (0 / totalSupply - balanceOf[stor2] - balanceOf[stor3])
    if arg1 and 2 * balanceOf[address(stor35.field_0)] > -1 / arg1:
        revert with 0, 17
    if not arg1:
        revert with 0, 18
    if arg1 * 2 * balanceOf[address(stor35.field_0)] / arg1 != 2 * balanceOf[address(stor35.field_0)]:
        revert with 0, 'Math : multiplication overflow'
    if not totalSupply - balanceOf[stor2] - balanceOf[stor3]:
        revert with 0, 'Math : division by zero', 0
    return (arg1 * 2 * balanceOf[address(stor35.field_0)] / totalSupply - balanceOf[stor2] - balanceOf[stor3])
}

function isOverLiquified(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if balanceOf[stor2] > totalSupply:
        revert with 0, 'Math : subtraction overflow', 0
    if totalSupply < balanceOf[stor2]:
        revert with 0, 17
    if balanceOf[stor3] > totalSupply - balanceOf[stor2]:
        revert with 0, 'Math : subtraction overflow', 0
    if totalSupply - balanceOf[stor2] < balanceOf[stor3]:
        revert with 0, 17
    if not balanceOf[address(stor35.field_0)]:
        if arg2:
            if arg2 and 0 > -1 / arg2:
                revert with 0, 17
            if not arg2:
                revert with 0, 18
            if 0 / arg2:
                revert with 0, 'Math : multiplication overflow'
        if not totalSupply - balanceOf[stor2] - balanceOf[stor3]:
            revert with 0, 'Math : division by zero', 0
        return (0 / totalSupply - balanceOf[stor2] - balanceOf[stor3] > arg1)
    if balanceOf[address(stor35.field_0)] and 2 > -1 / balanceOf[address(stor35.field_0)]:
        revert with 0, 17
    if not balanceOf[address(stor35.field_0)]:
        revert with 0, 18
    if 2 * balanceOf[address(stor35.field_0)] / balanceOf[address(stor35.field_0)] != 2:
        revert with 0, 'Math : multiplication overflow'
    if not arg2:
        if not totalSupply - balanceOf[stor2] - balanceOf[stor3]:
            revert with 0, 'Math : division by zero', 0
        return (0 / totalSupply - balanceOf[stor2] - balanceOf[stor3] > arg1)
    if arg2 and 2 * balanceOf[address(stor35.field_0)] > -1 / arg2:
        revert with 0, 17
    if not arg2:
        revert with 0, 18
    if arg2 * 2 * balanceOf[address(stor35.field_0)] / arg2 != 2 * balanceOf[address(stor35.field_0)]:
        revert with 0, 'Math : multiplication overflow'
    if not totalSupply - balanceOf[stor2] - balanceOf[stor3]:
        revert with 0, 'Math : division by zero', 0
    return (arg2 * 2 * balanceOf[address(stor35.field_0)] / totalSupply - balanceOf[stor2] - balanceOf[stor3] > arg1)
}

function sub_bcb79d32(?) {
    if sub_4fde32f2 > balanceOf[msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'You need at least 100 000 tokens to upgrade virus transmission'
    if balanceOf[msg.sender] < sub_e0d0e746:
        if balanceOf[msg.sender] < sub_50f0c86d:
            if balanceOf[msg.sender] < sub_ca6d108d:
                if balanceOf[msg.sender] < sub_77c605a4:
                    if balanceOf[msg.sender] >= sub_802fc3fa:
                        if 240 == sub_7d0495d6[msg.sender]:
                            if balanceOf[msg.sender] < sub_802fc3fa:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            'You need at least 1 000 000 tokens to upgrade virus transmission.'
                            if sub_802fc3fa > balanceOf[address(msg.sender)]:
                                revert with 0, 'Insufficient Balance', 0
                            if balanceOf[address(msg.sender)] < sub_802fc3fa:
                                revert with 0, 17
                            balanceOf[address(msg.sender)] -= sub_802fc3fa
                            if balanceOf[stor49] > !sub_802fc3fa:
                                revert with 0, 17
                            if balanceOf[stor49] + sub_802fc3fa < balanceOf[stor49]:
                                revert with 0, 'Math : addition overflow'
                            balanceOf[stor49] += sub_802fc3fa
                            emit Transfer(sub_802fc3fa, msg.sender, sub_dd4655d7Address);
                            if sub_7d0495d6[msg.sender] > -31:
                                revert with 0, 17
                            sub_7d0495d6[msg.sender] += 30
                else:
                    if 180 == sub_7d0495d6[msg.sender]:
                        if balanceOf[msg.sender] < sub_77c605a4:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        'You need at least 800 000 tokens to upgrade virus transmission.'
                        if sub_77c605a4 > balanceOf[address(msg.sender)]:
                            revert with 0, 'Insufficient Balance', 0
                        if balanceOf[address(msg.sender)] < sub_77c605a4:
                            revert with 0, 17
                        balanceOf[address(msg.sender)] -= sub_77c605a4
                        if balanceOf[stor49] > !sub_77c605a4:
                            revert with 0, 17
                        if balanceOf[stor49] + sub_77c605a4 < balanceOf[stor49]:
                            revert with 0, 'Math : addition overflow'
                        balanceOf[stor49] += sub_77c605a4
                        emit Transfer(sub_77c605a4, msg.sender, sub_dd4655d7Address);
                        if sub_7d0495d6[msg.sender] > -61:
                            revert with 0, 17
                        sub_7d0495d6[msg.sender] += 60
                    else:
                        if balanceOf[msg.sender] >= sub_802fc3fa:
                            if 240 == sub_7d0495d6[msg.sender]:
                                if balanceOf[msg.sender] < sub_802fc3fa:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                'You need at least 1 000 000 tokens to upgrade virus transmission.'
                                if sub_802fc3fa > balanceOf[address(msg.sender)]:
                                    revert with 0, 'Insufficient Balance', 0
                                if balanceOf[address(msg.sender)] < sub_802fc3fa:
                                    revert with 0, 17
                                balanceOf[address(msg.sender)] -= sub_802fc3fa
                                if balanceOf[stor49] > !sub_802fc3fa:
                                    revert with 0, 17
                                if balanceOf[stor49] + sub_802fc3fa < balanceOf[stor49]:
                                    revert with 0, 'Math : addition overflow'
                                balanceOf[stor49] += sub_802fc3fa
                                emit Transfer(sub_802fc3fa, msg.sender, sub_dd4655d7Address);
                                if sub_7d0495d6[msg.sender] > -31:
                                    revert with 0, 17
                                sub_7d0495d6[msg.sender] += 30
            else:
                if 120 == sub_7d0495d6[msg.sender]:
                    if balanceOf[msg.sender] < sub_ca6d108d:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    'You need at least 600 000 tokens to upgrade virus transmission.'
                    if sub_ca6d108d > balanceOf[address(msg.sender)]:
                        revert with 0, 'Insufficient Balance', 0
                    if balanceOf[address(msg.sender)] < sub_ca6d108d:
                        revert with 0, 17
                    balanceOf[address(msg.sender)] -= sub_ca6d108d
                    if balanceOf[stor49] > !sub_ca6d108d:
                        revert with 0, 17
                    if balanceOf[stor49] + sub_ca6d108d < balanceOf[stor49]:
                        revert with 0, 'Math : addition overflow'
                    balanceOf[stor49] += sub_ca6d108d
                    emit Transfer(sub_ca6d108d, msg.sender, sub_dd4655d7Address);
                    if sub_7d0495d6[msg.sender] > -61:
                        revert with 0, 17
                    sub_7d0495d6[msg.sender] += 60
                else:
                    if balanceOf[msg.sender] < sub_77c605a4:
                        if balanceOf[msg.sender] >= sub_802fc3fa:
                            if 240 == sub_7d0495d6[msg.sender]:
                                if balanceOf[msg.sender] < sub_802fc3fa:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                'You need at least 1 000 000 tokens to upgrade virus transmission.'
                                if sub_802fc3fa > balanceOf[address(msg.sender)]:
                                    revert with 0, 'Insufficient Balance', 0
                                if balanceOf[address(msg.sender)] < sub_802fc3fa:
                                    revert with 0, 17
                                balanceOf[address(msg.sender)] -= sub_802fc3fa
                                if balanceOf[stor49] > !sub_802fc3fa:
                                    revert with 0, 17
                                if balanceOf[stor49] + sub_802fc3fa < balanceOf[stor49]:
                                    revert with 0, 'Math : addition overflow'
                                balanceOf[stor49] += sub_802fc3fa
                                emit Transfer(sub_802fc3fa, msg.sender, sub_dd4655d7Address);
                                if sub_7d0495d6[msg.sender] > -31:
                                    revert with 0, 17
                                sub_7d0495d6[msg.sender] += 30
                    else:
                        if 180 == sub_7d0495d6[msg.sender]:
                            if balanceOf[msg.sender] < sub_77c605a4:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            'You need at least 800 000 tokens to upgrade virus transmission.'
                            if sub_77c605a4 > balanceOf[address(msg.sender)]:
                                revert with 0, 'Insufficient Balance', 0
                            if balanceOf[address(msg.sender)] < sub_77c605a4:
                                revert with 0, 17
                            balanceOf[address(msg.sender)] -= sub_77c605a4
                            if balanceOf[stor49] > !sub_77c605a4:
                                revert with 0, 17
                            if balanceOf[stor49] + sub_77c605a4 < balanceOf[stor49]:
                                revert with 0, 'Math : addition overflow'
                            balanceOf[stor49] += sub_77c605a4
                            emit Transfer(sub_77c605a4, msg.sender, sub_dd4655d7Address);
                            if sub_7d0495d6[msg.sender] > -61:
                                revert with 0, 17
                            sub_7d0495d6[msg.sender] += 60
                        else:
                            if balanceOf[msg.sender] >= sub_802fc3fa:
                                if 240 == sub_7d0495d6[msg.sender]:
                                    if balanceOf[msg.sender] < sub_802fc3fa:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    'You need at least 1 000 000 tokens to upgrade virus transmission.'
                                    if sub_802fc3fa > balanceOf[address(msg.sender)]:
                                        revert with 0, 'Insufficient Balance', 0
                                    if balanceOf[address(msg.sender)] < sub_802fc3fa:
                                        revert with 0, 17
                                    balanceOf[address(msg.sender)] -= sub_802fc3fa
                                    if balanceOf[stor49] > !sub_802fc3fa:
                                        revert with 0, 17
                                    if balanceOf[stor49] + sub_802fc3fa < balanceOf[stor49]:
                                        revert with 0, 'Math : addition overflow'
                                    balanceOf[stor49] += sub_802fc3fa
                                    emit Transfer(sub_802fc3fa, msg.sender, sub_dd4655d7Address);
                                    if sub_7d0495d6[msg.sender] > -31:
                                        revert with 0, 17
                                    sub_7d0495d6[msg.sender] += 30
        else:
            if 60 == sub_7d0495d6[msg.sender]:
                if balanceOf[msg.sender] < sub_50f0c86d:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                'You need at least 400 000 tokens to upgrade virus transmission.'
                if sub_50f0c86d > balanceOf[address(msg.sender)]:
                    revert with 0, 'Insufficient Balance', 0
                if balanceOf[address(msg.sender)] < sub_50f0c86d:
                    revert with 0, 17
                balanceOf[address(msg.sender)] -= sub_50f0c86d
                if balanceOf[stor49] > !sub_50f0c86d:
                    revert with 0, 17
                if balanceOf[stor49] + sub_50f0c86d < balanceOf[stor49]:
                    revert with 0, 'Math : addition overflow'
                balanceOf[stor49] += sub_50f0c86d
                emit Transfer(sub_50f0c86d, msg.sender, sub_dd4655d7Address);
                if sub_7d0495d6[msg.sender] > -61:
                    revert with 0, 17
                sub_7d0495d6[msg.sender] += 60
            else:
                if balanceOf[msg.sender] < sub_ca6d108d:
                    if balanceOf[msg.sender] < sub_77c605a4:
                        if balanceOf[msg.sender] >= sub_802fc3fa:
                            if 240 == sub_7d0495d6[msg.sender]:
                                if balanceOf[msg.sender] < sub_802fc3fa:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                'You need at least 1 000 000 tokens to upgrade virus transmission.'
                                if sub_802fc3fa > balanceOf[address(msg.sender)]:
                                    revert with 0, 'Insufficient Balance', 0
                                if balanceOf[address(msg.sender)] < sub_802fc3fa:
                                    revert with 0, 17
                                balanceOf[address(msg.sender)] -= sub_802fc3fa
                                if balanceOf[stor49] > !sub_802fc3fa:
                                    revert with 0, 17
                                if balanceOf[stor49] + sub_802fc3fa < balanceOf[stor49]:
                                    revert with 0, 'Math : addition overflow'
                                balanceOf[stor49] += sub_802fc3fa
                                emit Transfer(sub_802fc3fa, msg.sender, sub_dd4655d7Address);
                                if sub_7d0495d6[msg.sender] > -31:
                                    revert with 0, 17
                                sub_7d0495d6[msg.sender] += 30
                    else:
                        if 180 == sub_7d0495d6[msg.sender]:
                            if balanceOf[msg.sender] < sub_77c605a4:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            'You need at least 800 000 tokens to upgrade virus transmission.'
                            if sub_77c605a4 > balanceOf[address(msg.sender)]:
                                revert with 0, 'Insufficient Balance', 0
                            if balanceOf[address(msg.sender)] < sub_77c605a4:
                                revert with 0, 17
                            balanceOf[address(msg.sender)] -= sub_77c605a4
                            if balanceOf[stor49] > !sub_77c605a4:
                                revert with 0, 17
                            if balanceOf[stor49] + sub_77c605a4 < balanceOf[stor49]:
                                revert with 0, 'Math : addition overflow'
                            balanceOf[stor49] += sub_77c605a4
                            emit Transfer(sub_77c605a4, msg.sender, sub_dd4655d7Address);
                            if sub_7d0495d6[msg.sender] > -61:
                                revert with 0, 17
                            sub_7d0495d6[msg.sender] += 60
                        else:
                            if balanceOf[msg.sender] >= sub_802fc3fa:
                                if 240 == sub_7d0495d6[msg.sender]:
                                    if balanceOf[msg.sender] < sub_802fc3fa:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    'You need at least 1 000 000 tokens to upgrade virus transmission.'
                                    if sub_802fc3fa > balanceOf[address(msg.sender)]:
                                        revert with 0, 'Insufficient Balance', 0
                                    if balanceOf[address(msg.sender)] < sub_802fc3fa:
                                        revert with 0, 17
                                    balanceOf[address(msg.sender)] -= sub_802fc3fa
                                    if balanceOf[stor49] > !sub_802fc3fa:
                                        revert with 0, 17
                                    if balanceOf[stor49] + sub_802fc3fa < balanceOf[stor49]:
                                        revert with 0, 'Math : addition overflow'
                                    balanceOf[stor49] += sub_802fc3fa
                                    emit Transfer(sub_802fc3fa, msg.sender, sub_dd4655d7Address);
                                    if sub_7d0495d6[msg.sender] > -31:
                                        revert with 0, 17
                                    sub_7d0495d6[msg.sender] += 30
                else:
                    if 120 == sub_7d0495d6[msg.sender]:
                        if balanceOf[msg.sender] < sub_ca6d108d:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        'You need at least 600 000 tokens to upgrade virus transmission.'
                        if sub_ca6d108d > balanceOf[address(msg.sender)]:
                            revert with 0, 'Insufficient Balance', 0
                        if balanceOf[address(msg.sender)] < sub_ca6d108d:
                            revert with 0, 17
                        balanceOf[address(msg.sender)] -= sub_ca6d108d
                        if balanceOf[stor49] > !sub_ca6d108d:
                            revert with 0, 17
                        if balanceOf[stor49] + sub_ca6d108d < balanceOf[stor49]:
                            revert with 0, 'Math : addition overflow'
                        balanceOf[stor49] += sub_ca6d108d
                        emit Transfer(sub_ca6d108d, msg.sender, sub_dd4655d7Address);
                        if sub_7d0495d6[msg.sender] > -61:
                            revert with 0, 17
                        sub_7d0495d6[msg.sender] += 60
                    else:
                        if balanceOf[msg.sender] < sub_77c605a4:
                            if balanceOf[msg.sender] >= sub_802fc3fa:
                                if 240 == sub_7d0495d6[msg.sender]:
                                    if balanceOf[msg.sender] < sub_802fc3fa:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    'You need at least 1 000 000 tokens to upgrade virus transmission.'
                                    if sub_802fc3fa > balanceOf[address(msg.sender)]:
                                        revert with 0, 'Insufficient Balance', 0
                                    if balanceOf[address(msg.sender)] < sub_802fc3fa:
                                        revert with 0, 17
                                    balanceOf[address(msg.sender)] -= sub_802fc3fa
                                    if balanceOf[stor49] > !sub_802fc3fa:
                                        revert with 0, 17
                                    if balanceOf[stor49] + sub_802fc3fa < balanceOf[stor49]:
                                        revert with 0, 'Math : addition overflow'
                                    balanceOf[stor49] += sub_802fc3fa
                                    emit Transfer(sub_802fc3fa, msg.sender, sub_dd4655d7Address);
                                    if sub_7d0495d6[msg.sender] > -31:
                                        revert with 0, 17
                                    sub_7d0495d6[msg.sender] += 30
                        else:
                            if 180 == sub_7d0495d6[msg.sender]:
                                if balanceOf[msg.sender] < sub_77c605a4:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                'You need at least 800 000 tokens to upgrade virus transmission.'
                                if sub_77c605a4 > balanceOf[address(msg.sender)]:
                                    revert with 0, 'Insufficient Balance', 0
                                if balanceOf[address(msg.sender)] < sub_77c605a4:
                                    revert with 0, 17
                                balanceOf[address(msg.sender)] -= sub_77c605a4
                                if balanceOf[stor49] > !sub_77c605a4:
                                    revert with 0, 17
                                if balanceOf[stor49] + sub_77c605a4 < balanceOf[stor49]:
                                    revert with 0, 'Math : addition overflow'
                                balanceOf[stor49] += sub_77c605a4
                                emit Transfer(sub_77c605a4, msg.sender, sub_dd4655d7Address);
                                if sub_7d0495d6[msg.sender] > -61:
                                    revert with 0, 17
                                sub_7d0495d6[msg.sender] += 60
                            else:
                                if balanceOf[msg.sender] >= sub_802fc3fa:
                                    if 240 == sub_7d0495d6[msg.sender]:
                                        if balanceOf[msg.sender] < sub_802fc3fa:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        'You need at least 1 000 000 tokens to upgrade virus transmission.'
                                        if sub_802fc3fa > balanceOf[address(msg.sender)]:
                                            revert with 0, 'Insufficient Balance', 0
                                        if balanceOf[address(msg.sender)] < sub_802fc3fa:
                                            revert with 0, 17
                                        balanceOf[address(msg.sender)] -= sub_802fc3fa
                                        if balanceOf[stor49] > !sub_802fc3fa:
                                            revert with 0, 17
                                        if balanceOf[stor49] + sub_802fc3fa < balanceOf[stor49]:
                                            revert with 0, 'Math : addition overflow'
                                        balanceOf[stor49] += sub_802fc3fa
                                        emit Transfer(sub_802fc3fa, msg.sender, sub_dd4655d7Address);
                                        if sub_7d0495d6[msg.sender] > -31:
                                            revert with 0, 17
                                        sub_7d0495d6[msg.sender] += 30
    else:
        if not sub_7d0495d6[msg.sender]:
            if balanceOf[msg.sender] < sub_e0d0e746:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            'You need at least 200 000 tokens to upgrade virus transmission.'
            if sub_e0d0e746 > balanceOf[address(msg.sender)]:
                revert with 0, 'Insufficient Balance', 0
            if balanceOf[address(msg.sender)] < sub_e0d0e746:
                revert with 0, 17
            balanceOf[address(msg.sender)] -= sub_e0d0e746
            if balanceOf[stor49] > !sub_e0d0e746:
                revert with 0, 17
            if balanceOf[stor49] + sub_e0d0e746 < balanceOf[stor49]:
                revert with 0, 'Math : addition overflow'
            balanceOf[stor49] += sub_e0d0e746
            emit Transfer(sub_e0d0e746, msg.sender, sub_dd4655d7Address);
            if sub_7d0495d6[msg.sender] > -61:
                revert with 0, 17
            sub_7d0495d6[msg.sender] += 60
        else:
            if balanceOf[msg.sender] < sub_50f0c86d:
                if balanceOf[msg.sender] < sub_ca6d108d:
                    if balanceOf[msg.sender] < sub_77c605a4:
                        if balanceOf[msg.sender] >= sub_802fc3fa:
                            if 240 == sub_7d0495d6[msg.sender]:
                                if balanceOf[msg.sender] < sub_802fc3fa:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                'You need at least 1 000 000 tokens to upgrade virus transmission.'
                                if sub_802fc3fa > balanceOf[address(msg.sender)]:
                                    revert with 0, 'Insufficient Balance', 0
                                if balanceOf[address(msg.sender)] < sub_802fc3fa:
                                    revert with 0, 17
                                balanceOf[address(msg.sender)] -= sub_802fc3fa
                                if balanceOf[stor49] > !sub_802fc3fa:
                                    revert with 0, 17
                                if balanceOf[stor49] + sub_802fc3fa < balanceOf[stor49]:
                                    revert with 0, 'Math : addition overflow'
                                balanceOf[stor49] += sub_802fc3fa
                                emit Transfer(sub_802fc3fa, msg.sender, sub_dd4655d7Address);
                                if sub_7d0495d6[msg.sender] > -31:
                                    revert with 0, 17
                                sub_7d0495d6[msg.sender] += 30
                    else:
                        if 180 == sub_7d0495d6[msg.sender]:
                            if balanceOf[msg.sender] < sub_77c605a4:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            'You need at least 800 000 tokens to upgrade virus transmission.'
                            if sub_77c605a4 > balanceOf[address(msg.sender)]:
                                revert with 0, 'Insufficient Balance', 0
                            if balanceOf[address(msg.sender)] < sub_77c605a4:
                                revert with 0, 17
                            balanceOf[address(msg.sender)] -= sub_77c605a4
                            if balanceOf[stor49] > !sub_77c605a4:
                                revert with 0, 17
                            if balanceOf[stor49] + sub_77c605a4 < balanceOf[stor49]:
                                revert with 0, 'Math : addition overflow'
                            balanceOf[stor49] += sub_77c605a4
                            emit Transfer(sub_77c605a4, msg.sender, sub_dd4655d7Address);
                            if sub_7d0495d6[msg.sender] > -61:
                                revert with 0, 17
                            sub_7d0495d6[msg.sender] += 60
                        else:
                            if balanceOf[msg.sender] >= sub_802fc3fa:
                                if 240 == sub_7d0495d6[msg.sender]:
                                    if balanceOf[msg.sender] < sub_802fc3fa:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    'You need at least 1 000 000 tokens to upgrade virus transmission.'
                                    if sub_802fc3fa > balanceOf[address(msg.sender)]:
                                        revert with 0, 'Insufficient Balance', 0
                                    if balanceOf[address(msg.sender)] < sub_802fc3fa:
                                        revert with 0, 17
                                    balanceOf[address(msg.sender)] -= sub_802fc3fa
                                    if balanceOf[stor49] > !sub_802fc3fa:
                                        revert with 0, 17
                                    if balanceOf[stor49] + sub_802fc3fa < balanceOf[stor49]:
                                        revert with 0, 'Math : addition overflow'
                                    balanceOf[stor49] += sub_802fc3fa
                                    emit Transfer(sub_802fc3fa, msg.sender, sub_dd4655d7Address);
                                    if sub_7d0495d6[msg.sender] > -31:
                                        revert with 0, 17
                                    sub_7d0495d6[msg.sender] += 30
                else:
                    if 120 == sub_7d0495d6[msg.sender]:
                        if balanceOf[msg.sender] < sub_ca6d108d:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        'You need at least 600 000 tokens to upgrade virus transmission.'
                        if sub_ca6d108d > balanceOf[address(msg.sender)]:
                            revert with 0, 'Insufficient Balance', 0
                        if balanceOf[address(msg.sender)] < sub_ca6d108d:
                            revert with 0, 17
                        balanceOf[address(msg.sender)] -= sub_ca6d108d
                        if balanceOf[stor49] > !sub_ca6d108d:
                            revert with 0, 17
                        if balanceOf[stor49] + sub_ca6d108d < balanceOf[stor49]:
                            revert with 0, 'Math : addition overflow'
                        balanceOf[stor49] += sub_ca6d108d
                        emit Transfer(sub_ca6d108d, msg.sender, sub_dd4655d7Address);
                        if sub_7d0495d6[msg.sender] > -61:
                            revert with 0, 17
                        sub_7d0495d6[msg.sender] += 60
                    else:
                        if balanceOf[msg.sender] < sub_77c605a4:
                            if balanceOf[msg.sender] >= sub_802fc3fa:
                                if 240 == sub_7d0495d6[msg.sender]:
                                    if balanceOf[msg.sender] < sub_802fc3fa:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    'You need at least 1 000 000 tokens to upgrade virus transmission.'
                                    if sub_802fc3fa > balanceOf[address(msg.sender)]:
                                        revert with 0, 'Insufficient Balance', 0
                                    if balanceOf[address(msg.sender)] < sub_802fc3fa:
                                        revert with 0, 17
                                    balanceOf[address(msg.sender)] -= sub_802fc3fa
                                    if balanceOf[stor49] > !sub_802fc3fa:
                                        revert with 0, 17
                                    if balanceOf[stor49] + sub_802fc3fa < balanceOf[stor49]:
                                        revert with 0, 'Math : addition overflow'
                                    balanceOf[stor49] += sub_802fc3fa
                                    emit Transfer(sub_802fc3fa, msg.sender, sub_dd4655d7Address);
                                    if sub_7d0495d6[msg.sender] > -31:
                                        revert with 0, 17
                                    sub_7d0495d6[msg.sender] += 30
                        else:
                            if 180 == sub_7d0495d6[msg.sender]:
                                if balanceOf[msg.sender] < sub_77c605a4:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                'You need at least 800 000 tokens to upgrade virus transmission.'
                                if sub_77c605a4 > balanceOf[address(msg.sender)]:
                                    revert with 0, 'Insufficient Balance', 0
                                if balanceOf[address(msg.sender)] < sub_77c605a4:
                                    revert with 0, 17
                                balanceOf[address(msg.sender)] -= sub_77c605a4
                                if balanceOf[stor49] > !sub_77c605a4:
                                    revert with 0, 17
                                if balanceOf[stor49] + sub_77c605a4 < balanceOf[stor49]:
                                    revert with 0, 'Math : addition overflow'
                                balanceOf[stor49] += sub_77c605a4
                                emit Transfer(sub_77c605a4, msg.sender, sub_dd4655d7Address);
                                if sub_7d0495d6[msg.sender] > -61:
                                    revert with 0, 17
                                sub_7d0495d6[msg.sender] += 60
                            else:
                                if balanceOf[msg.sender] >= sub_802fc3fa:
                                    if 240 == sub_7d0495d6[msg.sender]:
                                        if balanceOf[msg.sender] < sub_802fc3fa:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        'You need at least 1 000 000 tokens to upgrade virus transmission.'
                                        if sub_802fc3fa > balanceOf[address(msg.sender)]:
                                            revert with 0, 'Insufficient Balance', 0
                                        if balanceOf[address(msg.sender)] < sub_802fc3fa:
                                            revert with 0, 17
                                        balanceOf[address(msg.sender)] -= sub_802fc3fa
                                        if balanceOf[stor49] > !sub_802fc3fa:
                                            revert with 0, 17
                                        if balanceOf[stor49] + sub_802fc3fa < balanceOf[stor49]:
                                            revert with 0, 'Math : addition overflow'
                                        balanceOf[stor49] += sub_802fc3fa
                                        emit Transfer(sub_802fc3fa, msg.sender, sub_dd4655d7Address);
                                        if sub_7d0495d6[msg.sender] > -31:
                                            revert with 0, 17
                                        sub_7d0495d6[msg.sender] += 30
            else:
                if 60 == sub_7d0495d6[msg.sender]:
                    if balanceOf[msg.sender] < sub_50f0c86d:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    'You need at least 400 000 tokens to upgrade virus transmission.'
                    if sub_50f0c86d > balanceOf[address(msg.sender)]:
                        revert with 0, 'Insufficient Balance', 0
                    if balanceOf[address(msg.sender)] < sub_50f0c86d:
                        revert with 0, 17
                    balanceOf[address(msg.sender)] -= sub_50f0c86d
                    if balanceOf[stor49] > !sub_50f0c86d:
                        revert with 0, 17
                    if balanceOf[stor49] + sub_50f0c86d < balanceOf[stor49]:
                        revert with 0, 'Math : addition overflow'
                    balanceOf[stor49] += sub_50f0c86d
                    emit Transfer(sub_50f0c86d, msg.sender, sub_dd4655d7Address);
                    if sub_7d0495d6[msg.sender] > -61:
                        revert with 0, 17
                    sub_7d0495d6[msg.sender] += 60
                else:
                    if balanceOf[msg.sender] < sub_ca6d108d:
                        if balanceOf[msg.sender] < sub_77c605a4:
                            if balanceOf[msg.sender] >= sub_802fc3fa:
                                if 240 == sub_7d0495d6[msg.sender]:
                                    if balanceOf[msg.sender] < sub_802fc3fa:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    'You need at least 1 000 000 tokens to upgrade virus transmission.'
                                    if sub_802fc3fa > balanceOf[address(msg.sender)]:
                                        revert with 0, 'Insufficient Balance', 0
                                    if balanceOf[address(msg.sender)] < sub_802fc3fa:
                                        revert with 0, 17
                                    balanceOf[address(msg.sender)] -= sub_802fc3fa
                                    if balanceOf[stor49] > !sub_802fc3fa:
                                        revert with 0, 17
                                    if balanceOf[stor49] + sub_802fc3fa < balanceOf[stor49]:
                                        revert with 0, 'Math : addition overflow'
                                    balanceOf[stor49] += sub_802fc3fa
                                    emit Transfer(sub_802fc3fa, msg.sender, sub_dd4655d7Address);
                                    if sub_7d0495d6[msg.sender] > -31:
                                        revert with 0, 17
                                    sub_7d0495d6[msg.sender] += 30
                        else:
                            if 180 == sub_7d0495d6[msg.sender]:
                                if balanceOf[msg.sender] < sub_77c605a4:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                'You need at least 800 000 tokens to upgrade virus transmission.'
                                if sub_77c605a4 > balanceOf[address(msg.sender)]:
                                    revert with 0, 'Insufficient Balance', 0
                                if balanceOf[address(msg.sender)] < sub_77c605a4:
                                    revert with 0, 17
                                balanceOf[address(msg.sender)] -= sub_77c605a4
                                if balanceOf[stor49] > !sub_77c605a4:
                                    revert with 0, 17
                                if balanceOf[stor49] + sub_77c605a4 < balanceOf[stor49]:
                                    revert with 0, 'Math : addition overflow'
                                balanceOf[stor49] += sub_77c605a4
                                emit Transfer(sub_77c605a4, msg.sender, sub_dd4655d7Address);
                                if sub_7d0495d6[msg.sender] > -61:
                                    revert with 0, 17
                                sub_7d0495d6[msg.sender] += 60
                            else:
                                if balanceOf[msg.sender] >= sub_802fc3fa:
                                    if 240 == sub_7d0495d6[msg.sender]:
                                        if balanceOf[msg.sender] < sub_802fc3fa:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        'You need at least 1 000 000 tokens to upgrade virus transmission.'
                                        if sub_802fc3fa > balanceOf[address(msg.sender)]:
                                            revert with 0, 'Insufficient Balance', 0
                                        if balanceOf[address(msg.sender)] < sub_802fc3fa:
                                            revert with 0, 17
                                        balanceOf[address(msg.sender)] -= sub_802fc3fa
                                        if balanceOf[stor49] > !sub_802fc3fa:
                                            revert with 0, 17
                                        if balanceOf[stor49] + sub_802fc3fa < balanceOf[stor49]:
                                            revert with 0, 'Math : addition overflow'
                                        balanceOf[stor49] += sub_802fc3fa
                                        emit Transfer(sub_802fc3fa, msg.sender, sub_dd4655d7Address);
                                        if sub_7d0495d6[msg.sender] > -31:
                                            revert with 0, 17
                                        sub_7d0495d6[msg.sender] += 30
                    else:
                        if 120 == sub_7d0495d6[msg.sender]:
                            if balanceOf[msg.sender] < sub_ca6d108d:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            'You need at least 600 000 tokens to upgrade virus transmission.'
                            if sub_ca6d108d > balanceOf[address(msg.sender)]:
                                revert with 0, 'Insufficient Balance', 0
                            if balanceOf[address(msg.sender)] < sub_ca6d108d:
                                revert with 0, 17
                            balanceOf[address(msg.sender)] -= sub_ca6d108d
                            if balanceOf[stor49] > !sub_ca6d108d:
                                revert with 0, 17
                            if balanceOf[stor49] + sub_ca6d108d < balanceOf[stor49]:
                                revert with 0, 'Math : addition overflow'
                            balanceOf[stor49] += sub_ca6d108d
                            emit Transfer(sub_ca6d108d, msg.sender, sub_dd4655d7Address);
                            if sub_7d0495d6[msg.sender] > -61:
                                revert with 0, 17
                            sub_7d0495d6[msg.sender] += 60
                        else:
                            if balanceOf[msg.sender] < sub_77c605a4:
                                if balanceOf[msg.sender] >= sub_802fc3fa:
                                    if 240 == sub_7d0495d6[msg.sender]:
                                        if balanceOf[msg.sender] < sub_802fc3fa:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        'You need at least 1 000 000 tokens to upgrade virus transmission.'
                                        if sub_802fc3fa > balanceOf[address(msg.sender)]:
                                            revert with 0, 'Insufficient Balance', 0
                                        if balanceOf[address(msg.sender)] < sub_802fc3fa:
                                            revert with 0, 17
                                        balanceOf[address(msg.sender)] -= sub_802fc3fa
                                        if balanceOf[stor49] > !sub_802fc3fa:
                                            revert with 0, 17
                                        if balanceOf[stor49] + sub_802fc3fa < balanceOf[stor49]:
                                            revert with 0, 'Math : addition overflow'
                                        balanceOf[stor49] += sub_802fc3fa
                                        emit Transfer(sub_802fc3fa, msg.sender, sub_dd4655d7Address);
                                        if sub_7d0495d6[msg.sender] > -31:
                                            revert with 0, 17
                                        sub_7d0495d6[msg.sender] += 30
                            else:
                                if 180 == sub_7d0495d6[msg.sender]:
                                    if balanceOf[msg.sender] < sub_77c605a4:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    'You need at least 800 000 tokens to upgrade virus transmission.'
                                    if sub_77c605a4 > balanceOf[address(msg.sender)]:
                                        revert with 0, 'Insufficient Balance', 0
                                    if balanceOf[address(msg.sender)] < sub_77c605a4:
                                        revert with 0, 17
                                    balanceOf[address(msg.sender)] -= sub_77c605a4
                                    if balanceOf[stor49] > !sub_77c605a4:
                                        revert with 0, 17
                                    if balanceOf[stor49] + sub_77c605a4 < balanceOf[stor49]:
                                        revert with 0, 'Math : addition overflow'
                                    balanceOf[stor49] += sub_77c605a4
                                    emit Transfer(sub_77c605a4, msg.sender, sub_dd4655d7Address);
                                    if sub_7d0495d6[msg.sender] > -61:
                                        revert with 0, 17
                                    sub_7d0495d6[msg.sender] += 60
                                else:
                                    if balanceOf[msg.sender] >= sub_802fc3fa:
                                        if 240 == sub_7d0495d6[msg.sender]:
                                            if balanceOf[msg.sender] < sub_802fc3fa:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            'You need at least 1 000 000 tokens to upgrade virus transmission.'
                                            if sub_802fc3fa > balanceOf[address(msg.sender)]:
                                                revert with 0, 'Insufficient Balance', 0
                                            if balanceOf[address(msg.sender)] < sub_802fc3fa:
                                                revert with 0, 17
                                            balanceOf[address(msg.sender)] -= sub_802fc3fa
                                            if balanceOf[stor49] > !sub_802fc3fa:
                                                revert with 0, 17
                                            if balanceOf[stor49] + sub_802fc3fa < balanceOf[stor49]:
                                                revert with 0, 'Math : addition overflow'
                                            balanceOf[stor49] += sub_802fc3fa
                                            emit Transfer(sub_802fc3fa, msg.sender, sub_dd4655d7Address);
                                            if sub_7d0495d6[msg.sender] > -31:
                                                revert with 0, 17
                                            sub_7d0495d6[msg.sender] += 30
    return 1
}

function sub_721f7883(?) {
    if sub_4fde32f2 > balanceOf[msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    59,
                    'You need at least 100 000 tokens',
                    0xfe20746f20757067726164652076697275732073796d70746f6d732e00000000
    if balanceOf[msg.sender] < sub_e0d0e746:
        if balanceOf[msg.sender] < sub_50f0c86d:
            if balanceOf[msg.sender] < sub_ca6d108d:
                if balanceOf[msg.sender] < sub_77c605a4:
                    if balanceOf[msg.sender] >= sub_802fc3fa:
                        if 4 == sub_9eef38de[msg.sender]:
                            if balanceOf[msg.sender] < sub_802fc3fa:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            'You need at least 1 000 000 tokens to upgrade virus symptoms.'
                            if sub_802fc3fa > balanceOf[address(msg.sender)]:
                                revert with 0, 'Insufficient Balance', 0
                            if balanceOf[address(msg.sender)] < sub_802fc3fa:
                                revert with 0, 17
                            balanceOf[address(msg.sender)] -= sub_802fc3fa
                            if balanceOf[stor49] > !sub_802fc3fa:
                                revert with 0, 17
                            if balanceOf[stor49] + sub_802fc3fa < balanceOf[stor49]:
                                revert with 0, 'Math : addition overflow'
                            balanceOf[stor49] += sub_802fc3fa
                            emit Transfer(sub_802fc3fa, msg.sender, sub_dd4655d7Address);
                            if sub_9eef38de[msg.sender] > -2:
                                revert with 0, 17
                            sub_9eef38de[msg.sender]++
                else:
                    if 3 == sub_9eef38de[msg.sender]:
                        if balanceOf[msg.sender] < sub_77c605a4:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        59,
                                        'You need at least 800 000 tokens',
                                        0xfe20746f20757067726164652076697275732073796d70746f6d732e00000000
                        if sub_77c605a4 > balanceOf[address(msg.sender)]:
                            revert with 0, 'Insufficient Balance', 0
                        if balanceOf[address(msg.sender)] < sub_77c605a4:
                            revert with 0, 17
                        balanceOf[address(msg.sender)] -= sub_77c605a4
                        if balanceOf[stor49] > !sub_77c605a4:
                            revert with 0, 17
                        if balanceOf[stor49] + sub_77c605a4 < balanceOf[stor49]:
                            revert with 0, 'Math : addition overflow'
                        balanceOf[stor49] += sub_77c605a4
                        emit Transfer(sub_77c605a4, msg.sender, sub_dd4655d7Address);
                        if sub_9eef38de[msg.sender] > -2:
                            revert with 0, 17
                        sub_9eef38de[msg.sender]++
                    else:
                        if balanceOf[msg.sender] >= sub_802fc3fa:
                            if 4 == sub_9eef38de[msg.sender]:
                                if balanceOf[msg.sender] < sub_802fc3fa:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                'You need at least 1 000 000 tokens to upgrade virus symptoms.'
                                if sub_802fc3fa > balanceOf[address(msg.sender)]:
                                    revert with 0, 'Insufficient Balance', 0
                                if balanceOf[address(msg.sender)] < sub_802fc3fa:
                                    revert with 0, 17
                                balanceOf[address(msg.sender)] -= sub_802fc3fa
                                if balanceOf[stor49] > !sub_802fc3fa:
                                    revert with 0, 17
                                if balanceOf[stor49] + sub_802fc3fa < balanceOf[stor49]:
                                    revert with 0, 'Math : addition overflow'
                                balanceOf[stor49] += sub_802fc3fa
                                emit Transfer(sub_802fc3fa, msg.sender, sub_dd4655d7Address);
                                if sub_9eef38de[msg.sender] > -2:
                                    revert with 0, 17
                                sub_9eef38de[msg.sender]++
            else:
                if 2 == sub_9eef38de[msg.sender]:
                    if balanceOf[msg.sender] < sub_ca6d108d:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    59,
                                    'You need at least 600 000 tokens',
                                    0xfe20746f20757067726164652076697275732073796d70746f6d732e00000000
                    if sub_ca6d108d > balanceOf[address(msg.sender)]:
                        revert with 0, 'Insufficient Balance', 0
                    if balanceOf[address(msg.sender)] < sub_ca6d108d:
                        revert with 0, 17
                    balanceOf[address(msg.sender)] -= sub_ca6d108d
                    if balanceOf[stor49] > !sub_ca6d108d:
                        revert with 0, 17
                    if balanceOf[stor49] + sub_ca6d108d < balanceOf[stor49]:
                        revert with 0, 'Math : addition overflow'
                    balanceOf[stor49] += sub_ca6d108d
                    emit Transfer(sub_ca6d108d, msg.sender, sub_dd4655d7Address);
                    if sub_9eef38de[msg.sender] > -2:
                        revert with 0, 17
                    sub_9eef38de[msg.sender]++
                else:
                    if balanceOf[msg.sender] < sub_77c605a4:
                        if balanceOf[msg.sender] >= sub_802fc3fa:
                            if 4 == sub_9eef38de[msg.sender]:
                                if balanceOf[msg.sender] < sub_802fc3fa:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                'You need at least 1 000 000 tokens to upgrade virus symptoms.'
                                if sub_802fc3fa > balanceOf[address(msg.sender)]:
                                    revert with 0, 'Insufficient Balance', 0
                                if balanceOf[address(msg.sender)] < sub_802fc3fa:
                                    revert with 0, 17
                                balanceOf[address(msg.sender)] -= sub_802fc3fa
                                if balanceOf[stor49] > !sub_802fc3fa:
                                    revert with 0, 17
                                if balanceOf[stor49] + sub_802fc3fa < balanceOf[stor49]:
                                    revert with 0, 'Math : addition overflow'
                                balanceOf[stor49] += sub_802fc3fa
                                emit Transfer(sub_802fc3fa, msg.sender, sub_dd4655d7Address);
                                if sub_9eef38de[msg.sender] > -2:
                                    revert with 0, 17
                                sub_9eef38de[msg.sender]++
                    else:
                        if 3 == sub_9eef38de[msg.sender]:
                            if balanceOf[msg.sender] < sub_77c605a4:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            59,
                                            'You need at least 800 000 tokens',
                                            0xfe20746f20757067726164652076697275732073796d70746f6d732e00000000
                            if sub_77c605a4 > balanceOf[address(msg.sender)]:
                                revert with 0, 'Insufficient Balance', 0
                            if balanceOf[address(msg.sender)] < sub_77c605a4:
                                revert with 0, 17
                            balanceOf[address(msg.sender)] -= sub_77c605a4
                            if balanceOf[stor49] > !sub_77c605a4:
                                revert with 0, 17
                            if balanceOf[stor49] + sub_77c605a4 < balanceOf[stor49]:
                                revert with 0, 'Math : addition overflow'
                            balanceOf[stor49] += sub_77c605a4
                            emit Transfer(sub_77c605a4, msg.sender, sub_dd4655d7Address);
                            if sub_9eef38de[msg.sender] > -2:
                                revert with 0, 17
                            sub_9eef38de[msg.sender]++
                        else:
                            if balanceOf[msg.sender] >= sub_802fc3fa:
                                if 4 == sub_9eef38de[msg.sender]:
                                    if balanceOf[msg.sender] < sub_802fc3fa:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    'You need at least 1 000 000 tokens to upgrade virus symptoms.'
                                    if sub_802fc3fa > balanceOf[address(msg.sender)]:
                                        revert with 0, 'Insufficient Balance', 0
                                    if balanceOf[address(msg.sender)] < sub_802fc3fa:
                                        revert with 0, 17
                                    balanceOf[address(msg.sender)] -= sub_802fc3fa
                                    if balanceOf[stor49] > !sub_802fc3fa:
                                        revert with 0, 17
                                    if balanceOf[stor49] + sub_802fc3fa < balanceOf[stor49]:
                                        revert with 0, 'Math : addition overflow'
                                    balanceOf[stor49] += sub_802fc3fa
                                    emit Transfer(sub_802fc3fa, msg.sender, sub_dd4655d7Address);
                                    if sub_9eef38de[msg.sender] > -2:
                                        revert with 0, 17
                                    sub_9eef38de[msg.sender]++
        else:
            if 1 == sub_9eef38de[msg.sender]:
                if balanceOf[msg.sender] < sub_50f0c86d:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                59,
                                'You need at least 400 000 tokens',
                                0xfe20746f20757067726164652076697275732073796d70746f6d732e00000000
                if sub_50f0c86d > balanceOf[address(msg.sender)]:
                    revert with 0, 'Insufficient Balance', 0
                if balanceOf[address(msg.sender)] < sub_50f0c86d:
                    revert with 0, 17
                balanceOf[address(msg.sender)] -= sub_50f0c86d
                if balanceOf[stor49] > !sub_50f0c86d:
                    revert with 0, 17
                if balanceOf[stor49] + sub_50f0c86d < balanceOf[stor49]:
                    revert with 0, 'Math : addition overflow'
                balanceOf[stor49] += sub_50f0c86d
                emit Transfer(sub_50f0c86d, msg.sender, sub_dd4655d7Address);
                if sub_9eef38de[msg.sender] > -2:
                    revert with 0, 17
                sub_9eef38de[msg.sender]++
            else:
                if balanceOf[msg.sender] < sub_ca6d108d:
                    if balanceOf[msg.sender] < sub_77c605a4:
                        if balanceOf[msg.sender] >= sub_802fc3fa:
                            if 4 == sub_9eef38de[msg.sender]:
                                if balanceOf[msg.sender] < sub_802fc3fa:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                'You need at least 1 000 000 tokens to upgrade virus symptoms.'
                                if sub_802fc3fa > balanceOf[address(msg.sender)]:
                                    revert with 0, 'Insufficient Balance', 0
                                if balanceOf[address(msg.sender)] < sub_802fc3fa:
                                    revert with 0, 17
                                balanceOf[address(msg.sender)] -= sub_802fc3fa
                                if balanceOf[stor49] > !sub_802fc3fa:
                                    revert with 0, 17
                                if balanceOf[stor49] + sub_802fc3fa < balanceOf[stor49]:
                                    revert with 0, 'Math : addition overflow'
                                balanceOf[stor49] += sub_802fc3fa
                                emit Transfer(sub_802fc3fa, msg.sender, sub_dd4655d7Address);
                                if sub_9eef38de[msg.sender] > -2:
                                    revert with 0, 17
                                sub_9eef38de[msg.sender]++
                    else:
                        if 3 == sub_9eef38de[msg.sender]:
                            if balanceOf[msg.sender] < sub_77c605a4:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            59,
                                            'You need at least 800 000 tokens',
                                            0xfe20746f20757067726164652076697275732073796d70746f6d732e00000000
                            if sub_77c605a4 > balanceOf[address(msg.sender)]:
                                revert with 0, 'Insufficient Balance', 0
                            if balanceOf[address(msg.sender)] < sub_77c605a4:
                                revert with 0, 17
                            balanceOf[address(msg.sender)] -= sub_77c605a4
                            if balanceOf[stor49] > !sub_77c605a4:
                                revert with 0, 17
                            if balanceOf[stor49] + sub_77c605a4 < balanceOf[stor49]:
                                revert with 0, 'Math : addition overflow'
                            balanceOf[stor49] += sub_77c605a4
                            emit Transfer(sub_77c605a4, msg.sender, sub_dd4655d7Address);
                            if sub_9eef38de[msg.sender] > -2:
                                revert with 0, 17
                            sub_9eef38de[msg.sender]++
                        else:
                            if balanceOf[msg.sender] >= sub_802fc3fa:
                                if 4 == sub_9eef38de[msg.sender]:
                                    if balanceOf[msg.sender] < sub_802fc3fa:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    'You need at least 1 000 000 tokens to upgrade virus symptoms.'
                                    if sub_802fc3fa > balanceOf[address(msg.sender)]:
                                        revert with 0, 'Insufficient Balance', 0
                                    if balanceOf[address(msg.sender)] < sub_802fc3fa:
                                        revert with 0, 17
                                    balanceOf[address(msg.sender)] -= sub_802fc3fa
                                    if balanceOf[stor49] > !sub_802fc3fa:
                                        revert with 0, 17
                                    if balanceOf[stor49] + sub_802fc3fa < balanceOf[stor49]:
                                        revert with 0, 'Math : addition overflow'
                                    balanceOf[stor49] += sub_802fc3fa
                                    emit Transfer(sub_802fc3fa, msg.sender, sub_dd4655d7Address);
                                    if sub_9eef38de[msg.sender] > -2:
                                        revert with 0, 17
                                    sub_9eef38de[msg.sender]++
                else:
                    if 2 == sub_9eef38de[msg.sender]:
                        if balanceOf[msg.sender] < sub_ca6d108d:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        59,
                                        'You need at least 600 000 tokens',
                                        0xfe20746f20757067726164652076697275732073796d70746f6d732e00000000
                        if sub_ca6d108d > balanceOf[address(msg.sender)]:
                            revert with 0, 'Insufficient Balance', 0
                        if balanceOf[address(msg.sender)] < sub_ca6d108d:
                            revert with 0, 17
                        balanceOf[address(msg.sender)] -= sub_ca6d108d
                        if balanceOf[stor49] > !sub_ca6d108d:
                            revert with 0, 17
                        if balanceOf[stor49] + sub_ca6d108d < balanceOf[stor49]:
                            revert with 0, 'Math : addition overflow'
                        balanceOf[stor49] += sub_ca6d108d
                        emit Transfer(sub_ca6d108d, msg.sender, sub_dd4655d7Address);
                        if sub_9eef38de[msg.sender] > -2:
                            revert with 0, 17
                        sub_9eef38de[msg.sender]++
                    else:
                        if balanceOf[msg.sender] < sub_77c605a4:
                            if balanceOf[msg.sender] >= sub_802fc3fa:
                                if 4 == sub_9eef38de[msg.sender]:
                                    if balanceOf[msg.sender] < sub_802fc3fa:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    'You need at least 1 000 000 tokens to upgrade virus symptoms.'
                                    if sub_802fc3fa > balanceOf[address(msg.sender)]:
                                        revert with 0, 'Insufficient Balance', 0
                                    if balanceOf[address(msg.sender)] < sub_802fc3fa:
                                        revert with 0, 17
                                    balanceOf[address(msg.sender)] -= sub_802fc3fa
                                    if balanceOf[stor49] > !sub_802fc3fa:
                                        revert with 0, 17
                                    if balanceOf[stor49] + sub_802fc3fa < balanceOf[stor49]:
                                        revert with 0, 'Math : addition overflow'
                                    balanceOf[stor49] += sub_802fc3fa
                                    emit Transfer(sub_802fc3fa, msg.sender, sub_dd4655d7Address);
                                    if sub_9eef38de[msg.sender] > -2:
                                        revert with 0, 17
                                    sub_9eef38de[msg.sender]++
                        else:
                            if 3 == sub_9eef38de[msg.sender]:
                                if balanceOf[msg.sender] < sub_77c605a4:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                59,
                                                'You need at least 800 000 tokens',
                                                0xfe20746f20757067726164652076697275732073796d70746f6d732e00000000
                                if sub_77c605a4 > balanceOf[address(msg.sender)]:
                                    revert with 0, 'Insufficient Balance', 0
                                if balanceOf[address(msg.sender)] < sub_77c605a4:
                                    revert with 0, 17
                                balanceOf[address(msg.sender)] -= sub_77c605a4
                                if balanceOf[stor49] > !sub_77c605a4:
                                    revert with 0, 17
                                if balanceOf[stor49] + sub_77c605a4 < balanceOf[stor49]:
                                    revert with 0, 'Math : addition overflow'
                                balanceOf[stor49] += sub_77c605a4
                                emit Transfer(sub_77c605a4, msg.sender, sub_dd4655d7Address);
                                if sub_9eef38de[msg.sender] > -2:
                                    revert with 0, 17
                                sub_9eef38de[msg.sender]++
                            else:
                                if balanceOf[msg.sender] >= sub_802fc3fa:
                                    if 4 == sub_9eef38de[msg.sender]:
                                        if balanceOf[msg.sender] < sub_802fc3fa:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        'You need at least 1 000 000 tokens to upgrade virus symptoms.'
                                        if sub_802fc3fa > balanceOf[address(msg.sender)]:
                                            revert with 0, 'Insufficient Balance', 0
                                        if balanceOf[address(msg.sender)] < sub_802fc3fa:
                                            revert with 0, 17
                                        balanceOf[address(msg.sender)] -= sub_802fc3fa
                                        if balanceOf[stor49] > !sub_802fc3fa:
                                            revert with 0, 17
                                        if balanceOf[stor49] + sub_802fc3fa < balanceOf[stor49]:
                                            revert with 0, 'Math : addition overflow'
                                        balanceOf[stor49] += sub_802fc3fa
                                        emit Transfer(sub_802fc3fa, msg.sender, sub_dd4655d7Address);
                                        if sub_9eef38de[msg.sender] > -2:
                                            revert with 0, 17
                                        sub_9eef38de[msg.sender]++
    else:
        if not sub_9eef38de[msg.sender]:
            if balanceOf[msg.sender] < sub_e0d0e746:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            59,
                            'You need at least 200 000 tokens',
                            0xfe20746f20757067726164652076697275732073796d70746f6d732e00000000
            if sub_e0d0e746 > balanceOf[address(msg.sender)]:
                revert with 0, 'Insufficient Balance', 0
            if balanceOf[address(msg.sender)] < sub_e0d0e746:
                revert with 0, 17
            balanceOf[address(msg.sender)] -= sub_e0d0e746
            if balanceOf[stor49] > !sub_e0d0e746:
                revert with 0, 17
            if balanceOf[stor49] + sub_e0d0e746 < balanceOf[stor49]:
                revert with 0, 'Math : addition overflow'
            balanceOf[stor49] += sub_e0d0e746
            emit Transfer(sub_e0d0e746, msg.sender, sub_dd4655d7Address);
            if sub_9eef38de[msg.sender] > -2:
                revert with 0, 17
            sub_9eef38de[msg.sender]++
        else:
            if balanceOf[msg.sender] < sub_50f0c86d:
                if balanceOf[msg.sender] < sub_ca6d108d:
                    if balanceOf[msg.sender] < sub_77c605a4:
                        if balanceOf[msg.sender] >= sub_802fc3fa:
                            if 4 == sub_9eef38de[msg.sender]:
                                if balanceOf[msg.sender] < sub_802fc3fa:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                'You need at least 1 000 000 tokens to upgrade virus symptoms.'
                                if sub_802fc3fa > balanceOf[address(msg.sender)]:
                                    revert with 0, 'Insufficient Balance', 0
                                if balanceOf[address(msg.sender)] < sub_802fc3fa:
                                    revert with 0, 17
                                balanceOf[address(msg.sender)] -= sub_802fc3fa
                                if balanceOf[stor49] > !sub_802fc3fa:
                                    revert with 0, 17
                                if balanceOf[stor49] + sub_802fc3fa < balanceOf[stor49]:
                                    revert with 0, 'Math : addition overflow'
                                balanceOf[stor49] += sub_802fc3fa
                                emit Transfer(sub_802fc3fa, msg.sender, sub_dd4655d7Address);
                                if sub_9eef38de[msg.sender] > -2:
                                    revert with 0, 17
                                sub_9eef38de[msg.sender]++
                    else:
                        if 3 == sub_9eef38de[msg.sender]:
                            if balanceOf[msg.sender] < sub_77c605a4:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            59,
                                            'You need at least 800 000 tokens',
                                            0xfe20746f20757067726164652076697275732073796d70746f6d732e00000000
                            if sub_77c605a4 > balanceOf[address(msg.sender)]:
                                revert with 0, 'Insufficient Balance', 0
                            if balanceOf[address(msg.sender)] < sub_77c605a4:
                                revert with 0, 17
                            balanceOf[address(msg.sender)] -= sub_77c605a4
                            if balanceOf[stor49] > !sub_77c605a4:
                                revert with 0, 17
                            if balanceOf[stor49] + sub_77c605a4 < balanceOf[stor49]:
                                revert with 0, 'Math : addition overflow'
                            balanceOf[stor49] += sub_77c605a4
                            emit Transfer(sub_77c605a4, msg.sender, sub_dd4655d7Address);
                            if sub_9eef38de[msg.sender] > -2:
                                revert with 0, 17
                            sub_9eef38de[msg.sender]++
                        else:
                            if balanceOf[msg.sender] >= sub_802fc3fa:
                                if 4 == sub_9eef38de[msg.sender]:
                                    if balanceOf[msg.sender] < sub_802fc3fa:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    'You need at least 1 000 000 tokens to upgrade virus symptoms.'
                                    if sub_802fc3fa > balanceOf[address(msg.sender)]:
                                        revert with 0, 'Insufficient Balance', 0
                                    if balanceOf[address(msg.sender)] < sub_802fc3fa:
                                        revert with 0, 17
                                    balanceOf[address(msg.sender)] -= sub_802fc3fa
                                    if balanceOf[stor49] > !sub_802fc3fa:
                                        revert with 0, 17
                                    if balanceOf[stor49] + sub_802fc3fa < balanceOf[stor49]:
                                        revert with 0, 'Math : addition overflow'
                                    balanceOf[stor49] += sub_802fc3fa
                                    emit Transfer(sub_802fc3fa, msg.sender, sub_dd4655d7Address);
                                    if sub_9eef38de[msg.sender] > -2:
                                        revert with 0, 17
                                    sub_9eef38de[msg.sender]++
                else:
                    if 2 == sub_9eef38de[msg.sender]:
                        if balanceOf[msg.sender] < sub_ca6d108d:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        59,
                                        'You need at least 600 000 tokens',
                                        0xfe20746f20757067726164652076697275732073796d70746f6d732e00000000
                        if sub_ca6d108d > balanceOf[address(msg.sender)]:
                            revert with 0, 'Insufficient Balance', 0
                        if balanceOf[address(msg.sender)] < sub_ca6d108d:
                            revert with 0, 17
                        balanceOf[address(msg.sender)] -= sub_ca6d108d
                        if balanceOf[stor49] > !sub_ca6d108d:
                            revert with 0, 17
                        if balanceOf[stor49] + sub_ca6d108d < balanceOf[stor49]:
                            revert with 0, 'Math : addition overflow'
                        balanceOf[stor49] += sub_ca6d108d
                        emit Transfer(sub_ca6d108d, msg.sender, sub_dd4655d7Address);
                        if sub_9eef38de[msg.sender] > -2:
                            revert with 0, 17
                        sub_9eef38de[msg.sender]++
                    else:
                        if balanceOf[msg.sender] < sub_77c605a4:
                            if balanceOf[msg.sender] >= sub_802fc3fa:
                                if 4 == sub_9eef38de[msg.sender]:
                                    if balanceOf[msg.sender] < sub_802fc3fa:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    'You need at least 1 000 000 tokens to upgrade virus symptoms.'
                                    if sub_802fc3fa > balanceOf[address(msg.sender)]:
                                        revert with 0, 'Insufficient Balance', 0
                                    if balanceOf[address(msg.sender)] < sub_802fc3fa:
                                        revert with 0, 17
                                    balanceOf[address(msg.sender)] -= sub_802fc3fa
                                    if balanceOf[stor49] > !sub_802fc3fa:
                                        revert with 0, 17
                                    if balanceOf[stor49] + sub_802fc3fa < balanceOf[stor49]:
                                        revert with 0, 'Math : addition overflow'
                                    balanceOf[stor49] += sub_802fc3fa
                                    emit Transfer(sub_802fc3fa, msg.sender, sub_dd4655d7Address);
                                    if sub_9eef38de[msg.sender] > -2:
                                        revert with 0, 17
                                    sub_9eef38de[msg.sender]++
                        else:
                            if 3 == sub_9eef38de[msg.sender]:
                                if balanceOf[msg.sender] < sub_77c605a4:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                59,
                                                'You need at least 800 000 tokens',
                                                0xfe20746f20757067726164652076697275732073796d70746f6d732e00000000
                                if sub_77c605a4 > balanceOf[address(msg.sender)]:
                                    revert with 0, 'Insufficient Balance', 0
                                if balanceOf[address(msg.sender)] < sub_77c605a4:
                                    revert with 0, 17
                                balanceOf[address(msg.sender)] -= sub_77c605a4
                                if balanceOf[stor49] > !sub_77c605a4:
                                    revert with 0, 17
                                if balanceOf[stor49] + sub_77c605a4 < balanceOf[stor49]:
                                    revert with 0, 'Math : addition overflow'
                                balanceOf[stor49] += sub_77c605a4
                                emit Transfer(sub_77c605a4, msg.sender, sub_dd4655d7Address);
                                if sub_9eef38de[msg.sender] > -2:
                                    revert with 0, 17
                                sub_9eef38de[msg.sender]++
                            else:
                                if balanceOf[msg.sender] >= sub_802fc3fa:
                                    if 4 == sub_9eef38de[msg.sender]:
                                        if balanceOf[msg.sender] < sub_802fc3fa:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        'You need at least 1 000 000 tokens to upgrade virus symptoms.'
                                        if sub_802fc3fa > balanceOf[address(msg.sender)]:
                                            revert with 0, 'Insufficient Balance', 0
                                        if balanceOf[address(msg.sender)] < sub_802fc3fa:
                                            revert with 0, 17
                                        balanceOf[address(msg.sender)] -= sub_802fc3fa
                                        if balanceOf[stor49] > !sub_802fc3fa:
                                            revert with 0, 17
                                        if balanceOf[stor49] + sub_802fc3fa < balanceOf[stor49]:
                                            revert with 0, 'Math : addition overflow'
                                        balanceOf[stor49] += sub_802fc3fa
                                        emit Transfer(sub_802fc3fa, msg.sender, sub_dd4655d7Address);
                                        if sub_9eef38de[msg.sender] > -2:
                                            revert with 0, 17
                                        sub_9eef38de[msg.sender]++
            else:
                if 1 == sub_9eef38de[msg.sender]:
                    if balanceOf[msg.sender] < sub_50f0c86d:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    59,
                                    'You need at least 400 000 tokens',
                                    0xfe20746f20757067726164652076697275732073796d70746f6d732e00000000
                    if sub_50f0c86d > balanceOf[address(msg.sender)]:
                        revert with 0, 'Insufficient Balance', 0
                    if balanceOf[address(msg.sender)] < sub_50f0c86d:
                        revert with 0, 17
                    balanceOf[address(msg.sender)] -= sub_50f0c86d
                    if balanceOf[stor49] > !sub_50f0c86d:
                        revert with 0, 17
                    if balanceOf[stor49] + sub_50f0c86d < balanceOf[stor49]:
                        revert with 0, 'Math : addition overflow'
                    balanceOf[stor49] += sub_50f0c86d
                    emit Transfer(sub_50f0c86d, msg.sender, sub_dd4655d7Address);
                    if sub_9eef38de[msg.sender] > -2:
                        revert with 0, 17
                    sub_9eef38de[msg.sender]++
                else:
                    if balanceOf[msg.sender] < sub_ca6d108d:
                        if balanceOf[msg.sender] < sub_77c605a4:
                            if balanceOf[msg.sender] >= sub_802fc3fa:
                                if 4 == sub_9eef38de[msg.sender]:
                                    if balanceOf[msg.sender] < sub_802fc3fa:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    'You need at least 1 000 000 tokens to upgrade virus symptoms.'
                                    if sub_802fc3fa > balanceOf[address(msg.sender)]:
                                        revert with 0, 'Insufficient Balance', 0
                                    if balanceOf[address(msg.sender)] < sub_802fc3fa:
                                        revert with 0, 17
                                    balanceOf[address(msg.sender)] -= sub_802fc3fa
                                    if balanceOf[stor49] > !sub_802fc3fa:
                                        revert with 0, 17
                                    if balanceOf[stor49] + sub_802fc3fa < balanceOf[stor49]:
                                        revert with 0, 'Math : addition overflow'
                                    balanceOf[stor49] += sub_802fc3fa
                                    emit Transfer(sub_802fc3fa, msg.sender, sub_dd4655d7Address);
                                    if sub_9eef38de[msg.sender] > -2:
                                        revert with 0, 17
                                    sub_9eef38de[msg.sender]++
                        else:
                            if 3 == sub_9eef38de[msg.sender]:
                                if balanceOf[msg.sender] < sub_77c605a4:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                59,
                                                'You need at least 800 000 tokens',
                                                0xfe20746f20757067726164652076697275732073796d70746f6d732e00000000
                                if sub_77c605a4 > balanceOf[address(msg.sender)]:
                                    revert with 0, 'Insufficient Balance', 0
                                if balanceOf[address(msg.sender)] < sub_77c605a4:
                                    revert with 0, 17
                                balanceOf[address(msg.sender)] -= sub_77c605a4
                                if balanceOf[stor49] > !sub_77c605a4:
                                    revert with 0, 17
                                if balanceOf[stor49] + sub_77c605a4 < balanceOf[stor49]:
                                    revert with 0, 'Math : addition overflow'
                                balanceOf[stor49] += sub_77c605a4
                                emit Transfer(sub_77c605a4, msg.sender, sub_dd4655d7Address);
                                if sub_9eef38de[msg.sender] > -2:
                                    revert with 0, 17
                                sub_9eef38de[msg.sender]++
                            else:
                                if balanceOf[msg.sender] >= sub_802fc3fa:
                                    if 4 == sub_9eef38de[msg.sender]:
                                        if balanceOf[msg.sender] < sub_802fc3fa:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        'You need at least 1 000 000 tokens to upgrade virus symptoms.'
                                        if sub_802fc3fa > balanceOf[address(msg.sender)]:
                                            revert with 0, 'Insufficient Balance', 0
                                        if balanceOf[address(msg.sender)] < sub_802fc3fa:
                                            revert with 0, 17
                                        balanceOf[address(msg.sender)] -= sub_802fc3fa
                                        if balanceOf[stor49] > !sub_802fc3fa:
                                            revert with 0, 17
                                        if balanceOf[stor49] + sub_802fc3fa < balanceOf[stor49]:
                                            revert with 0, 'Math : addition overflow'
                                        balanceOf[stor49] += sub_802fc3fa
                                        emit Transfer(sub_802fc3fa, msg.sender, sub_dd4655d7Address);
                                        if sub_9eef38de[msg.sender] > -2:
                                            revert with 0, 17
                                        sub_9eef38de[msg.sender]++
                    else:
                        if 2 == sub_9eef38de[msg.sender]:
                            if balanceOf[msg.sender] < sub_ca6d108d:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            59,
                                            'You need at least 600 000 tokens',
                                            0xfe20746f20757067726164652076697275732073796d70746f6d732e00000000
                            if sub_ca6d108d > balanceOf[address(msg.sender)]:
                                revert with 0, 'Insufficient Balance', 0
                            if balanceOf[address(msg.sender)] < sub_ca6d108d:
                                revert with 0, 17
                            balanceOf[address(msg.sender)] -= sub_ca6d108d
                            if balanceOf[stor49] > !sub_ca6d108d:
                                revert with 0, 17
                            if balanceOf[stor49] + sub_ca6d108d < balanceOf[stor49]:
                                revert with 0, 'Math : addition overflow'
                            balanceOf[stor49] += sub_ca6d108d
                            emit Transfer(sub_ca6d108d, msg.sender, sub_dd4655d7Address);
                            if sub_9eef38de[msg.sender] > -2:
                                revert with 0, 17
                            sub_9eef38de[msg.sender]++
                        else:
                            if balanceOf[msg.sender] < sub_77c605a4:
                                if balanceOf[msg.sender] >= sub_802fc3fa:
                                    if 4 == sub_9eef38de[msg.sender]:
                                        if balanceOf[msg.sender] < sub_802fc3fa:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        'You need at least 1 000 000 tokens to upgrade virus symptoms.'
                                        if sub_802fc3fa > balanceOf[address(msg.sender)]:
                                            revert with 0, 'Insufficient Balance', 0
                                        if balanceOf[address(msg.sender)] < sub_802fc3fa:
                                            revert with 0, 17
                                        balanceOf[address(msg.sender)] -= sub_802fc3fa
                                        if balanceOf[stor49] > !sub_802fc3fa:
                                            revert with 0, 17
                                        if balanceOf[stor49] + sub_802fc3fa < balanceOf[stor49]:
                                            revert with 0, 'Math : addition overflow'
                                        balanceOf[stor49] += sub_802fc3fa
                                        emit Transfer(sub_802fc3fa, msg.sender, sub_dd4655d7Address);
                                        if sub_9eef38de[msg.sender] > -2:
                                            revert with 0, 17
                                        sub_9eef38de[msg.sender]++
                            else:
                                if 3 == sub_9eef38de[msg.sender]:
                                    if balanceOf[msg.sender] < sub_77c605a4:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    59,
                                                    'You need at least 800 000 tokens',
                                                    0xfe20746f20757067726164652076697275732073796d70746f6d732e00000000
                                    if sub_77c605a4 > balanceOf[address(msg.sender)]:
                                        revert with 0, 'Insufficient Balance', 0
                                    if balanceOf[address(msg.sender)] < sub_77c605a4:
                                        revert with 0, 17
                                    balanceOf[address(msg.sender)] -= sub_77c605a4
                                    if balanceOf[stor49] > !sub_77c605a4:
                                        revert with 0, 17
                                    if balanceOf[stor49] + sub_77c605a4 < balanceOf[stor49]:
                                        revert with 0, 'Math : addition overflow'
                                    balanceOf[stor49] += sub_77c605a4
                                    emit Transfer(sub_77c605a4, msg.sender, sub_dd4655d7Address);
                                    if sub_9eef38de[msg.sender] > -2:
                                        revert with 0, 17
                                    sub_9eef38de[msg.sender]++
                                else:
                                    if balanceOf[msg.sender] >= sub_802fc3fa:
                                        if 4 == sub_9eef38de[msg.sender]:
                                            if balanceOf[msg.sender] < sub_802fc3fa:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            'You need at least 1 000 000 tokens to upgrade virus symptoms.'
                                            if sub_802fc3fa > balanceOf[address(msg.sender)]:
                                                revert with 0, 'Insufficient Balance', 0
                                            if balanceOf[address(msg.sender)] < sub_802fc3fa:
                                                revert with 0, 17
                                            balanceOf[address(msg.sender)] -= sub_802fc3fa
                                            if balanceOf[stor49] > !sub_802fc3fa:
                                                revert with 0, 17
                                            if balanceOf[stor49] + sub_802fc3fa < balanceOf[stor49]:
                                                revert with 0, 'Math : addition overflow'
                                            balanceOf[stor49] += sub_802fc3fa
                                            emit Transfer(sub_802fc3fa, msg.sender, sub_dd4655d7Address);
                                            if sub_9eef38de[msg.sender] > -2:
                                                revert with 0, 17
                                            sub_9eef38de[msg.sender]++
    return 1
}



}
