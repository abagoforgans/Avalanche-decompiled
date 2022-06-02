contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#
const totalSupply = 1000 * 10^18

const decimals = 6


address owner;
mapping of uint8 stor1;
address WAVAXAddress;
address routerAddress;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
array of struct stor6;
array of struct stor7;
address routerAddress;
address pairAddress;
uint256 _maxTxAmount;
uint256 _maxWallet;
mapping of uint8 stor12;
mapping of uint8 stor13;
mapping of uint8 stor14;
mapping of uint8 stor15;
uint256 stor16; offset 1
uint256 liquidityFee;
uint256 buybackFee;
uint256 reflectionFee;
uint256 marketingFee;
uint256 totalFee;
uint256 feeDenominator;
address autoLiquidityReceiverAddress;
address marketingFeeReceiverAddress;
uint256 stor24;
uint256 stor25;
address distributorAddress;
address distributorAddress;
uint256 stor28;
uint256 swapThreshold;
uint8 stor30;

function swapThreshold() {
    return swapThreshold
}

function feeDenominator() {
    return feeDenominator
}

function totalFee() {
    return totalFee
}

function routerAddress() {
    return routerAddress
}

function buybackFee() {
    return buybackFee
}

function marketingFee() {
    return marketingFee
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function WAVAX() {
    return WAVAXAddress
}

function _maxTxAmount() {
    return _maxTxAmount
}

function _maxWallet() {
    return _maxWallet
}

function reflectionFee() {
    return reflectionFee
}

function getOwner() {
    return owner
}

function liquidityFee() {
    return liquidityFee
}

function distributorAddress() {
    return distributorAddress
}

function pair() {
    return pairAddress
}

function distributor() {
    return distributorAddress
}

function autoLiquidityReceiver() {
    return autoLiquidityReceiverAddress
}

function sub_cfb5c78d(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    return bool(stor15[address(arg1)])
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function marketingFeeReceiver() {
    return marketingFeeReceiverAddress
}

function router() {
    return routerAddress
}

function isAuthorized(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor1[address(arg1)])
}

function _fallback() payable {
    revert
}

function isOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return (arg1 == owner)
}

function authorize(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, '!OWNER'
    stor1[address(arg1)] = 1
}

function unauthorize(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, '!OWNER'
    stor1[address(arg1)] = 0
}

function setTxLimit(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    require arg1 >= 10^18
    _maxTxAmount = arg1
}

function setMaxWallet(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    require arg1 >= 10^18
    _maxWallet = arg1
}

function approveMax(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    allowance[address(msg.sender)][address(arg1)] = 1000 * 10^18
    emit Approval(1000 * 10^18, msg.sender, arg1);
    return 1
}

function setDistributorSettings(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    require arg1 < 750000
    stor28 = arg1
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, '!OWNER'
    owner = arg1
    stor1[address(arg1)] = 1
    emit OwnershipTransferred(arg1);
}

function sub_bb74c1a2(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor15[address(arg1)] = uint8(bool(arg2))
}

function setIsFeeExempt(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor12[address(arg1)] = uint8(arg2)
}

function setIsTxLimitExempt(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor13[address(arg1)] = uint8(arg2)
}

function getLiquidityBacking(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if balanceOf[stor9] and 2 > -1 / balanceOf[stor9]:
        revert with 'NH{q', 17
    if arg1 and 2 * balanceOf[stor9] > -1 / arg1:
        revert with 'NH{q', 17
    return (arg1 * 2 * balanceOf[stor9] / 1000 * 10^18)
}

function isOverLiquified(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if balanceOf[stor9] and 2 > -1 / balanceOf[stor9]:
        revert with 'NH{q', 17
    if arg2 and 2 * balanceOf[stor9] > -1 / arg2:
        revert with 'NH{q', 17
    return (arg2 * 2 * balanceOf[stor9] / 1000 * 10^18 > arg1)
}

function setIsDividendExempt(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    require arg1 != this.address
    require arg1 != pairAddress
    stor14[address(arg1)] = uint8(arg2)
    require ext_code.size(distributorAddress)
    if not arg2:
        call distributorAddress.setShare(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), balanceOf[address(arg1)]
    else:
        call distributorAddress.setShare(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function name() {
    if bool(stor6.length):
        if bool(stor6.length) == stor6.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor6.length):
            if bool(stor6.length) == stor6.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor6.length.field_1:
                if 31 < stor6.length.field_1:
                    mem[128] = uint256(stor6.field_0)
                    idx = 128
                    s = 0
                    while stor6.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor6[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor6.length.field_1), data=mem[128 len ceil32(stor6.length.field_1)])
                mem[128] = 256 * stor6.length.field_8
        else:
            if bool(stor6.length) == stor6.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor6.length.field_1:
                if 31 < stor6.length.field_1:
                    mem[128] = uint256(stor6.field_0)
                    idx = 128
                    s = 0
                    while stor6.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor6[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor6.length.field_1), data=mem[128 len ceil32(stor6.length.field_1)])
                mem[128] = 256 * stor6.length.field_8
        mem[ceil32(stor6.length.field_1) + 192 len ceil32(stor6.length.field_1)] = mem[128 len ceil32(stor6.length.field_1)]
        if ceil32(stor6.length.field_1) > stor6.length.field_1:
            mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor6.length.field_1), data=mem[128 len ceil32(stor6.length.field_1)], mem[(2 * ceil32(stor6.length.field_1)) + 192 len 2 * ceil32(stor6.length.field_1)]), 
    if bool(stor6.length) == stor6.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor6.length):
        if bool(stor6.length) == stor6.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor6.length.field_1:
            if 31 < stor6.length.field_1:
                mem[128] = uint256(stor6.field_0)
                idx = 128
                s = 0
                while stor6.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor6[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor6.length % 128, data=mem[128 len ceil32(stor6.length.field_1)])
            mem[128] = 256 * stor6.length.field_8
    else:
        if bool(stor6.length) == stor6.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor6.length.field_1:
            if 31 < stor6.length.field_1:
                mem[128] = uint256(stor6.field_0)
                idx = 128
                s = 0
                while stor6.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor6[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor6.length % 128, data=mem[128 len ceil32(stor6.length.field_1)])
            mem[128] = 256 * stor6.length.field_8
    mem[ceil32(stor6.length.field_1) + 192 len ceil32(stor6.length.field_1)] = mem[128 len ceil32(stor6.length.field_1)]
    if ceil32(stor6.length.field_1) > stor6.length.field_1:
        mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + 192] = 0
    return Array(len=stor6.length % 128, data=mem[128 len ceil32(stor6.length.field_1)], mem[(2 * ceil32(stor6.length.field_1)) + 192 len 2 * ceil32(stor6.length.field_1)]), 
}

function symbol() {
    if bool(stor7.length):
        if bool(stor7.length) == stor7.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor7.length):
            if bool(stor7.length) == stor7.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor7.length.field_1:
                if 31 < stor7.length.field_1:
                    mem[128] = uint256(stor7.field_0)
                    idx = 128
                    s = 0
                    while stor7.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor7[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor7.length.field_1), data=mem[128 len ceil32(stor7.length.field_1)])
                mem[128] = 256 * stor7.length.field_8
        else:
            if bool(stor7.length) == stor7.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor7.length.field_1:
                if 31 < stor7.length.field_1:
                    mem[128] = uint256(stor7.field_0)
                    idx = 128
                    s = 0
                    while stor7.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor7[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor7.length.field_1), data=mem[128 len ceil32(stor7.length.field_1)])
                mem[128] = 256 * stor7.length.field_8
        mem[ceil32(stor7.length.field_1) + 192 len ceil32(stor7.length.field_1)] = mem[128 len ceil32(stor7.length.field_1)]
        if ceil32(stor7.length.field_1) > stor7.length.field_1:
            mem[ceil32(stor7.length.field_1) + stor7.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor7.length.field_1), data=mem[128 len ceil32(stor7.length.field_1)], mem[(2 * ceil32(stor7.length.field_1)) + 192 len 2 * ceil32(stor7.length.field_1)]), 
    if bool(stor7.length) == stor7.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor7.length):
        if bool(stor7.length) == stor7.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor7.length.field_1:
            if 31 < stor7.length.field_1:
                mem[128] = uint256(stor7.field_0)
                idx = 128
                s = 0
                while stor7.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor7[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor7.length % 128, data=mem[128 len ceil32(stor7.length.field_1)])
            mem[128] = 256 * stor7.length.field_8
    else:
        if bool(stor7.length) == stor7.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor7.length.field_1:
            if 31 < stor7.length.field_1:
                mem[128] = uint256(stor7.field_0)
                idx = 128
                s = 0
                while stor7.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor7[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor7.length % 128, data=mem[128 len ceil32(stor7.length.field_1)])
            mem[128] = 256 * stor7.length.field_8
    mem[ceil32(stor7.length.field_1) + 192 len ceil32(stor7.length.field_1)] = mem[128 len ceil32(stor7.length.field_1)]
    if ceil32(stor7.length.field_1) > stor7.length.field_1:
        mem[ceil32(stor7.length.field_1) + stor7.length.field_1 + 192] = 0
    return Array(len=stor7.length % 128, data=mem[128 len ceil32(stor7.length.field_1)], mem[(2 * ceil32(stor7.length.field_1)) + 192 len 2 * ceil32(stor7.length.field_1)]), 
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if stor30:
        if arg2 > balanceOf[address(msg.sender)]:
            revert with 0, 'Insufficient Balance', 0
        balanceOf[address(msg.sender)] -= arg2
        if balanceOf[address(arg1)] > -arg2 - 1:
            revert with 'NH{q', 17
        balanceOf[address(arg1)] += arg2
    else:
        if arg2 > _maxTxAmount:
            if not stor13[address(msg.sender)]:
                revert with 0, 'TX Limit Exceeded'
        if arg1 == pairAddress:
            if arg1 != pairAddress:
                if not stor15[address(arg1)]:
                    if balanceOf[address(arg1)] > -arg2 - 1:
                        revert with 'NH{q', 17
                    if balanceOf[address(arg1)] + arg2 >= _maxWallet:
                        revert with 0, 'Max wallet has been triggered'
        else:
            if arg1 != routerAddress:
                if not stor15[address(arg1)]:
                    if balanceOf[address(arg1)] > -arg2 - 1:
                        revert with 'NH{q', 17
                    if balanceOf[address(arg1)] + arg2 >= _maxWallet:
                        revert with 0, 'Max wallet has been triggered'
        if stor12[address(msg.sender)]:
            if pairAddress != msg.sender:
                if not stor30:
                    if balanceOf[address(this.address)] > 0:
                        stor30 = 1
                        if balanceOf[stor9] and 2 > -1 / balanceOf[stor9]:
                            revert with 'NH{q', 17
                        if stor25 and 2 * balanceOf[stor9] > -1 / stor25:
                            revert with 'NH{q', 17
                        if stor25 * 2 * balanceOf[stor9] / 1000 * 10^18 > stor24:
                            if balanceOf[address(this.address)] and 0 > -1 / balanceOf[address(this.address)]:
                                revert with 'NH{q', 17
                            if not totalFee:
                                revert with 'NH{q', 18
                            if balanceOf[address(this.address)] < 0 / totalFee / 2:
                                revert with 'NH{q', 17
                            mem[128] = this.address
                            mem[160] = WAVAXAddress
                            mem[192] = 0x762b156200000000000000000000000000000000000000000000000000000000
                            mem[196] = balanceOf[address(this.address)] - (0 / totalFee / 2)
                            idx = 0
                            s = 128
                            t = 388
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(routerAddress)
                            call routerAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args balanceOf[address(this.address)] - (0 / totalFee / 2), 0, 160, address(this.address), block.timestamp, 2, mem[388 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if eth.balance(this.address) < eth.balance(this.address):
                                revert with 'NH{q', 17
                            if totalFee < liquidityFee:
                                revert with 'NH{q', 17
                            if totalFee - liquidityFee > -1:
                                revert with 'NH{q', 17
                            if False and reflectionFee > 0:
                                revert with 'NH{q', 17
                            if not totalFee - liquidityFee:
                                revert with 'NH{q', 18
                            require ext_code.size(distributorAddress)
                            call distributorAddress.0xd0e30db0 with:
                               value 0 / totalFee - liquidityFee wei
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if False and marketingFee > 0:
                                revert with 'NH{q', 17
                            if not totalFee - liquidityFee:
                                revert with 'NH{q', 18
                            call marketingFeeReceiverAddress with:
                               value 0 / totalFee - liquidityFee wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if 0 / totalFee / 2 > 0:
                                if not totalFee - liquidityFee:
                                    revert with 'NH{q', 18
                                require ext_code.size(routerAddress)
                                call routerAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                   value 0 / totalFee - liquidityFee / 2 wei
                                     gas gas_remaining wei
                                    args address(this.address), Mask(255, 1, 0 / totalFee), 0, 0, autoLiquidityReceiverAddress, block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 96
                                require ext_call.return_data[0] == ext_call.return_data[0]
                                require ext_call.return_data[32] == ext_call.return_data[32]
                                require ext_call.return_data[64] == ext_call.return_data[64]
                                emit AutoLiquify(Mask(255, 1, 0 / totalFee - liquidityFee), 0 / totalFee / 2);
                        else:
                            if balanceOf[address(this.address)] and liquidityFee > -1 / balanceOf[address(this.address)]:
                                revert with 'NH{q', 17
                            if not totalFee:
                                revert with 'NH{q', 18
                            if balanceOf[address(this.address)] < balanceOf[address(this.address)] * liquidityFee / totalFee / 2:
                                revert with 'NH{q', 17
                            mem[128] = this.address
                            mem[160] = WAVAXAddress
                            mem[192] = 0x762b156200000000000000000000000000000000000000000000000000000000
                            mem[196] = balanceOf[address(this.address)] - (balanceOf[address(this.address)] * liquidityFee / totalFee / 2)
                            idx = 0
                            s = 128
                            t = 388
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(routerAddress)
                            call routerAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args balanceOf[address(this.address)] - (balanceOf[address(this.address)] * liquidityFee / totalFee / 2), 0, 160, address(this.address), block.timestamp, 2, mem[388 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if eth.balance(this.address) < eth.balance(this.address):
                                revert with 'NH{q', 17
                            if totalFee < liquidityFee:
                                revert with 'NH{q', 17
                            if totalFee - liquidityFee > -stor16 - 1:
                                revert with 'NH{q', 17
                            if False and reflectionFee > 0:
                                revert with 'NH{q', 17
                            if not totalFee - liquidityFee + stor16:
                                revert with 'NH{q', 18
                            require ext_code.size(distributorAddress)
                            call distributorAddress.0xd0e30db0 with:
                               value 0 / totalFee - liquidityFee + stor16 wei
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if False and marketingFee > 0:
                                revert with 'NH{q', 17
                            if not totalFee - liquidityFee + stor16:
                                revert with 'NH{q', 18
                            call marketingFeeReceiverAddress with:
                               value 0 / totalFee - liquidityFee + stor16 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if balanceOf[address(this.address)] * liquidityFee / totalFee / 2 > 0:
                                if False and liquidityFee > 0:
                                    revert with 'NH{q', 17
                                if not totalFee - liquidityFee + stor16:
                                    revert with 'NH{q', 18
                                require ext_code.size(routerAddress)
                                call routerAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                   value 0 / totalFee - liquidityFee + stor16 / 2 wei
                                     gas gas_remaining wei
                                    args address(this.address), Mask(255, 1, balanceOf[address(this.address)] * liquidityFee / totalFee), 0, 0, autoLiquidityReceiverAddress, block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 96
                                require ext_call.return_data[0] == ext_call.return_data[0]
                                require ext_call.return_data[32] == ext_call.return_data[32]
                                require ext_call.return_data[64] == ext_call.return_data[64]
                                emit AutoLiquify(Mask(255, 1, 0 / totalFee - liquidityFee + stor16), balanceOf[address(this.address)] * liquidityFee / totalFee / 2);
                        stor30 = 0
            if arg2 > balanceOf[address(msg.sender)]:
                revert with 0, 'Insufficient Balance', 0
            balanceOf[address(msg.sender)] -= arg2
            if balanceOf[address(arg1)] > -arg2 - 1:
                revert with 'NH{q', 17
            balanceOf[address(arg1)] += arg2
            require ext_code.size(distributorAddress)
            if not stor14[address(msg.sender)]:
                call distributorAddress.setShare(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args msg.sender, balanceOf[address(msg.sender)]
            if not stor14[address(arg1)]:
                call distributorAddress.setShare(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(arg1), balanceOf[address(arg1)]
            call distributorAddress.process(uint256 arg1) with:
                 gas gas_remaining wei
                args stor28
            emit Transfer(arg2, msg.sender, arg1);
        else:
            if arg2 and totalFee > -1 / arg2:
                revert with 'NH{q', 17
            if not feeDenominator:
                revert with 'NH{q', 18
            if balanceOf[address(this.address)] > -(arg2 * totalFee / feeDenominator) - 1:
                revert with 'NH{q', 17
            balanceOf[address(this.address)] += arg2 * totalFee / feeDenominator
            emit Transfer((arg2 * totalFee / feeDenominator), msg.sender, this.address);
            if arg2 < arg2 * totalFee / feeDenominator:
                revert with 'NH{q', 17
            if pairAddress != msg.sender:
                if not stor30:
                    if balanceOf[address(this.address)] > 0:
                        stor30 = 1
                        if balanceOf[stor9] and 2 > -1 / balanceOf[stor9]:
                            revert with 'NH{q', 17
                        if stor25 and 2 * balanceOf[stor9] > -1 / stor25:
                            revert with 'NH{q', 17
                        if stor25 * 2 * balanceOf[stor9] / 1000 * 10^18 > stor24:
                            if balanceOf[address(this.address)] and 0 > -1 / balanceOf[address(this.address)]:
                                revert with 'NH{q', 17
                            if not totalFee:
                                revert with 'NH{q', 18
                            if balanceOf[address(this.address)] < 0 / totalFee / 2:
                                revert with 'NH{q', 17
                            mem[128] = this.address
                            mem[160] = WAVAXAddress
                            mem[192] = 0x762b156200000000000000000000000000000000000000000000000000000000
                            mem[196] = balanceOf[address(this.address)] - (0 / totalFee / 2)
                            idx = 0
                            s = 128
                            t = 388
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(routerAddress)
                            call routerAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args balanceOf[address(this.address)] - (0 / totalFee / 2), 0, 160, address(this.address), block.timestamp, 2, mem[388 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if eth.balance(this.address) < eth.balance(this.address):
                                revert with 'NH{q', 17
                            if totalFee < liquidityFee:
                                revert with 'NH{q', 17
                            if totalFee - liquidityFee > -1:
                                revert with 'NH{q', 17
                            if False and reflectionFee > 0:
                                revert with 'NH{q', 17
                            if not totalFee - liquidityFee:
                                revert with 'NH{q', 18
                            require ext_code.size(distributorAddress)
                            call distributorAddress.0xd0e30db0 with:
                               value 0 / totalFee - liquidityFee wei
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if False and marketingFee > 0:
                                revert with 'NH{q', 17
                            if not totalFee - liquidityFee:
                                revert with 'NH{q', 18
                            call marketingFeeReceiverAddress with:
                               value 0 / totalFee - liquidityFee wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if 0 / totalFee / 2 > 0:
                                if not totalFee - liquidityFee:
                                    revert with 'NH{q', 18
                                require ext_code.size(routerAddress)
                                call routerAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                   value 0 / totalFee - liquidityFee / 2 wei
                                     gas gas_remaining wei
                                    args address(this.address), Mask(255, 1, 0 / totalFee), 0, 0, autoLiquidityReceiverAddress, block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 96
                                require ext_call.return_data[0] == ext_call.return_data[0]
                                require ext_call.return_data[32] == ext_call.return_data[32]
                                require ext_call.return_data[64] == ext_call.return_data[64]
                                emit AutoLiquify(Mask(255, 1, 0 / totalFee - liquidityFee), 0 / totalFee / 2);
                        else:
                            if balanceOf[address(this.address)] and liquidityFee > -1 / balanceOf[address(this.address)]:
                                revert with 'NH{q', 17
                            if not totalFee:
                                revert with 'NH{q', 18
                            if balanceOf[address(this.address)] < balanceOf[address(this.address)] * liquidityFee / totalFee / 2:
                                revert with 'NH{q', 17
                            mem[128] = this.address
                            mem[160] = WAVAXAddress
                            mem[192] = 0x762b156200000000000000000000000000000000000000000000000000000000
                            mem[196] = balanceOf[address(this.address)] - (balanceOf[address(this.address)] * liquidityFee / totalFee / 2)
                            idx = 0
                            s = 128
                            t = 388
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(routerAddress)
                            call routerAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args balanceOf[address(this.address)] - (balanceOf[address(this.address)] * liquidityFee / totalFee / 2), 0, 160, address(this.address), block.timestamp, 2, mem[388 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if eth.balance(this.address) < eth.balance(this.address):
                                revert with 'NH{q', 17
                            if totalFee < liquidityFee:
                                revert with 'NH{q', 17
                            if totalFee - liquidityFee > -stor16 - 1:
                                revert with 'NH{q', 17
                            if False and reflectionFee > 0:
                                revert with 'NH{q', 17
                            if not totalFee - liquidityFee + stor16:
                                revert with 'NH{q', 18
                            require ext_code.size(distributorAddress)
                            call distributorAddress.0xd0e30db0 with:
                               value 0 / totalFee - liquidityFee + stor16 wei
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if False and marketingFee > 0:
                                revert with 'NH{q', 17
                            if not totalFee - liquidityFee + stor16:
                                revert with 'NH{q', 18
                            call marketingFeeReceiverAddress with:
                               value 0 / totalFee - liquidityFee + stor16 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if balanceOf[address(this.address)] * liquidityFee / totalFee / 2 > 0:
                                if False and liquidityFee > 0:
                                    revert with 'NH{q', 17
                                if not totalFee - liquidityFee + stor16:
                                    revert with 'NH{q', 18
                                require ext_code.size(routerAddress)
                                call routerAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                   value 0 / totalFee - liquidityFee + stor16 / 2 wei
                                     gas gas_remaining wei
                                    args address(this.address), Mask(255, 1, balanceOf[address(this.address)] * liquidityFee / totalFee), 0, 0, autoLiquidityReceiverAddress, block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 96
                                require ext_call.return_data[0] == ext_call.return_data[0]
                                require ext_call.return_data[32] == ext_call.return_data[32]
                                require ext_call.return_data[64] == ext_call.return_data[64]
                                emit AutoLiquify(Mask(255, 1, 0 / totalFee - liquidityFee + stor16), balanceOf[address(this.address)] * liquidityFee / totalFee / 2);
                        stor30 = 0
            if arg2 > balanceOf[address(msg.sender)]:
                revert with 0, 'Insufficient Balance', 0
            balanceOf[address(msg.sender)] -= arg2
            if balanceOf[address(arg1)] > -arg2 + (arg2 * totalFee / feeDenominator) - 1:
                revert with 'NH{q', 17
            balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * totalFee / feeDenominator)
            require ext_code.size(distributorAddress)
            if not stor14[address(msg.sender)]:
                call distributorAddress.setShare(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args msg.sender, balanceOf[address(msg.sender)]
            if not stor14[address(arg1)]:
                call distributorAddress.setShare(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(arg1), balanceOf[address(arg1)]
            call distributorAddress.process(uint256 arg1) with:
                 gas gas_remaining wei
                args stor28
            emit Transfer((arg2 - (arg2 * totalFee / feeDenominator)), msg.sender, arg1);
    return 1
}



}
