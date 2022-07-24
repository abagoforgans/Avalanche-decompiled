contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#
const totalSupply = 1000000000 * 10^18

const decimals = 18


address owner;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
array of struct stor3;
array of struct stor4;
address ROUTERAddress;
address pairAddress;
address LP_TOKENAddress;
address marketingWalletAddress;
address rewardWalletAddress;
uint256 swapThreshold;
uint8 stor11;
uint8 stor11; offset 8
uint8 stor11; offset 16
uint8 stor11; offset 24
uint8 stor11; offset 32
uint256 buyTax;
uint256 sellTax;
uint256 sub_8124f7ac;
uint256 sub_3c322798;
uint256 stor16; offset 1
uint256 sub_15291cd4;
uint256 marketingShare;
uint256 stor18;
uint256 sub_fa03f797;
uint256 launchTime;
mapping of uint8 stor21;
mapping of uint8 stor22;
mapping of uint8 stor23;
uint8 stor24;

function swapThreshold() {
    return swapThreshold
}

function marketingShare() {
    return marketingShare
}

function sub_15291cd4(?) {
    return sub_15291cd4
}

function ROUTER() {
    return ROUTERAddress
}

function isWhitelisted(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor21[arg1])
}

function sub_3c322798(?) {
    return sub_3c322798
}

function buyTax() {
    return buyTax
}

function swapEnabled() {
    return bool(uint8(stor11.field_0))
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function marketingWallet() {
    return marketingWalletAddress
}

function launchTime() {
    return launchTime
}

function sub_8124f7ac(?) {
    return sub_8124f7ac
}

function getOwner() {
    return owner
}

function sub_9d892a60(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor22[arg1])
}

function pair() {
    return pairAddress
}

function LP_TOKEN() {
    return LP_TOKENAddress
}

function sellTax() {
    return sellTax
}

function sub_cdc0519f(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor23[arg1])
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function sub_fa03f797(?) {
    return sub_fa03f797
}

function rewardWallet() {
    return rewardWalletAddress
}

function removeSniperTax() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint8(stor11.field_16) = 0
}

function disableDumpProtection() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint8(stor11.field_8) = 0
    emit 0x47bd06dc 
}

function enableTrading() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint8(stor11.field_24) = 1
    launchTime = block.timestamp
    emit EnableTrading()
}

function sub_93e484bb(?) {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor24 = uint8(bool(arg1))
}

function setIsWhitelisted(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor21[address(arg1)] = uint8(arg2)
    emit 0x26742d25: arg1, arg2
}

function sub_ab261a40(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor22[address(arg1)] = uint8(bool(arg2))
    emit 0xed21431d: address(arg1), bool(arg2)
}

function recoverBNB() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call marketingWalletAddress with:
       value eth.balance(this.address) wei
         gas sub_fa03f797 wei
    if not ext_call.success:
        revert with 0, 'Tx failed'
    emit 0x8f1ea928: eth.balance(this.address)
}

function sub_c7e066ba(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 < 21000:
        revert with 0, 'Invalid gas parameter'
    if arg1 > 50000:
        revert with 0, 'Invalid gas parameter'
    emit 0x5f7d3624: arg1, sub_fa03f797
    sub_fa03f797 = arg1
}

function setIsMarketMaker(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if pairAddress == arg1:
        revert with 0, 'Can't modify pair'
    stor23[address(arg1)] = uint8(arg2)
    emit SetMarketMaker(arg1, arg2);
}

function setSwapBackSettings(bool arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg2 and 10^18 > -1 / arg2:
        revert with 0, 17
    uint8(stor11.field_0) = uint8(arg1)
    swapThreshold = 10^18 * arg2
    emit SetSwapBackSettings(arg1, arg2);
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

function setRewardWallet(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'New reward pool is the zero address'
    emit 0xe5be6987: address(arg1), rewardWalletAddress
    rewardWalletAddress = arg1
}

function setMarketingWallet(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'New marketing wallet is the zero address'
    emit 0x83e9b026: address(arg1), marketingWalletAddress
    marketingWalletAddress = arg1
}

function setShares(uint256 arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_3c322798 = arg1
    sub_15291cd4 = arg2
    marketingShare = arg3
    if arg1 > !arg2:
        revert with 0, 17
    if arg1 + arg2 > !arg3:
        revert with 0, 17
    stor18 = arg1 + arg2 + arg3
    emit SetShares(sub_3c322798, sub_15291cd4, marketingShare);
}

function setTaxes(uint256 arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > 1500:
        revert with 0, 'Too high taxes'
    if arg2 > 1500:
        revert with 0, 'Too high taxes'
    if arg3 > 1500:
        revert with 0, 'Too high taxes'
    buyTax = arg1
    sellTax = arg2
    sub_8124f7ac = arg3
    emit 0x1b647027: arg1, arg2, arg3
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

function sub_78f633af(?) {
    if 24 * 3600 > !launchTime:
        revert with 0, 17
    if launchTime + (24 * 3600) <= block.timestamp:
        return sellTax
    if launchTime + (24 * 3600) < block.timestamp:
        revert with 0, 17
    if sellTax and launchTime + -block.timestamp + (24 * 3600) > -1 / sellTax:
        revert with 0, 17
    if sellTax > !((24 * 3600 * sellTax) + (launchTime * sellTax) - (block.timestamp * sellTax) / 24 * 3600):
        revert with 0, 17
    return (sellTax + ((24 * 3600 * sellTax) + (launchTime * sellTax) - (block.timestamp * sellTax) / 24 * 3600))
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

function recoverERC20(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if this.address == arg1:
        revert with 0, 'Can't withdraw Step'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    emit RecoverERC20(ext_call.return_data[0], arg1);
}

function setRouter(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg1:
        ROUTERAddress = arg1
        if arg2:
            LP_TOKENAddress = arg2
        else:
            require ext_code.size(ROUTERAddress)
            staticcall ROUTERAddress.WETH() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            LP_TOKENAddress = ext_call.return_data[12 len 20]
        require ext_code.size(ROUTERAddress)
        staticcall ROUTERAddress.factory() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).createPair(address arg1, address arg2) with:
             gas gas_remaining wei
            args LP_TOKENAddress, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        pairAddress = ext_call.return_data[12 len 20]
        if not this.address:
            revert with 0, 'ERC20: approve from the zero address'
        if not ROUTERAddress:
            revert with 0, 'ERC20: approve to the zero address'
        allowance[address(this.address)][stor5] = -1
        emit Approval(-1, this.address, ROUTERAddress);
        stor23[stor6] = 1
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
            mem[ceil32(uint255(stor3.length) * 0.5) + (uint255(stor3.length) * 0.5) + 192] = 0
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
        mem[ceil32(stor3.length.field_1) + stor3.length.field_1 + 192] = 0
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
            mem[ceil32(uint255(stor4.length) * 0.5) + (uint255(stor4.length) * 0.5) + 192] = 0
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
        mem[ceil32(stor4.length.field_1) + stor4.length.field_1 + 192] = 0
    return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1)], mem[(2 * ceil32(stor4.length.field_1)) + 192 len 2 * ceil32(stor4.length.field_1)]), 
}

function triggerSwapBack() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint8(stor11.field_32) = 1
    mem[128] = this.address
    mem[160] = LP_TOKENAddress
    if swapThreshold and sub_15291cd4 > -1 / swapThreshold:
        revert with 0, 17
    if not stor18:
        revert with 0, 18
    if swapThreshold < swapThreshold * sub_15291cd4 / stor18 / 2:
        revert with 0, 17
    mem[192] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
    mem[196] = swapThreshold - (swapThreshold * sub_15291cd4 / stor18 / 2)
    mem[228] = 0
    mem[260] = 160
    mem[356] = 2
    idx = 0
    s = 388
    t = 128
    while idx < 2:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[292] = this.address
    mem[324] = block.timestamp
    require ext_code.size(ROUTERAddress)
    call ROUTERAddress.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args swapThreshold - (swapThreshold * sub_15291cd4 / stor18 / 2), 0, 160, address(this.address), block.timestamp, 2, mem[388 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    require mem[192 len 4], Mask(224, 32, swapThreshold - (swapThreshold * sub_15291cd4 / stor18 / 2)) >> 32 <= test266151307()
    require mem[192 len 4], Mask(224, 32, swapThreshold - (swapThreshold * sub_15291cd4 / stor18 / 2)) >> 32 + 223 < return_data.size + 192
    if mem[mem[192 len 4], Mask(224, 32, swapThreshold - (swapThreshold * sub_15291cd4 / stor18 / 2)) >> 32 + 192] > test266151307():
        revert with 0, 65
    if ceil32(return_data.size) + ceil32(32 * mem[mem[192 len 4], Mask(224, 32, swapThreshold - (swapThreshold * sub_15291cd4 / stor18 / 2)) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[mem[192 len 4], Mask(224, 32, swapThreshold - (swapThreshold * sub_15291cd4 / stor18 / 2)) >> 32 + 192]) + 1 < 0:
        revert with 0, 65
    require return_data.size >= mem[192 len 4], Mask(224, 32, swapThreshold - (swapThreshold * sub_15291cd4 / stor18 / 2)) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, swapThreshold - (swapThreshold * sub_15291cd4 / stor18 / 2)) >> 32 + 192]) + 32
    if eth.balance(this.address) < eth.balance(this.address):
        revert with 0, 17
    if stor18 < stor16:
        revert with 0, 17
    if False and sub_15291cd4 > 0:
        revert with 0, 17
    if not stor18 - stor16:
        revert with 0, 18
    if False and marketingShare > 0:
        revert with 0, 17
    if not stor18 - stor16:
        revert with 0, 18
    if False and sub_3c322798 > 0:
        revert with 0, 17
    if not stor18 - stor16:
        revert with 0, 18
    call marketingWalletAddress with:
       value 0 / stor18 - stor16 wei
         gas sub_fa03f797 wei
    if ext_call.success:
        emit 0x3f23532d: (0 / stor18 - stor16), marketingWalletAddress
    call rewardWalletAddress with:
       value 0 / stor18 - stor16 wei
         gas sub_fa03f797 wei
    if ext_call.success:
        emit 0xb9ad861b: (0 / stor18 - stor16), rewardWalletAddress
    if Mask(255, 1, swapThreshold * sub_15291cd4 / stor18):
        require ext_code.size(ROUTERAddress)
        call ROUTERAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
           value 0 / stor18 - stor16 / 2 wei
             gas gas_remaining wei
            args this.address, Mask(255, 1, swapThreshold * sub_15291cd4 / stor18), 0, 0, this.address, block.timestamp
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        emit AutoLiquidity(Mask(255, 1, 0 / stor18 - stor16), swapThreshold * sub_15291cd4 / stor18 / 2);
    uint8(stor11.field_32) = 0
    emit TriggerSwapBack()
}

function _fallback() payable {
    if calldata.size < 4:
        require not calldata.size
    if unknown_0x78f633af(?????) <= uint32(call.func_hash) >> 224:
        if unknown_0xa8aa1b31(?????) > uint32(call.func_hash) >> 224:
            if unknown_0x93e484bb(?????) <= uint32(call.func_hash) >> 224:
                if unknown_0x93e484bb(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require arg1 == bool(arg1)
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    stor24 = uint8(bool(arg1))
                else:
                    if unknown_0x95d89b41(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        if bool(stor4.length):
                            if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
                                revert with 0, 34
                            if bool(stor4.length):
                                if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
                                    revert with 0, 34
                                if Mask(256, -1, stor4.length):
                                    if 31 < uint255(stor4.length) * 0.5:
                                        mem[160] = uint256(stor4.field_0)
                                        idx = 160
                                        s = 0
                                        while (uint255(stor4.length) * 0.5) + 128 > idx:
                                            mem[idx + 32] = stor4[s].field_256
                                            idx = idx + 32
                                            s = s + 1
                                            continue 
                                        return Array(len=2 * Mask(256, -1, stor4.length), data=mem[160 len ceil32(uint255(stor4.length) * 0.5)])
                                    mem[160] = 256 * stor4.length.field_8
                            else:
                                if bool(stor4.length) == stor4.length.field_1 < 32:
                                    revert with 0, 34
                                if stor4.length.field_1:
                                    if 31 < stor4.length.field_1:
                                        mem[160] = uint256(stor4.field_0)
                                        idx = 160
                                        s = 0
                                        while stor4.length.field_1 + 128 > idx:
                                            mem[idx + 32] = stor4[s].field_256
                                            idx = idx + 32
                                            s = s + 1
                                            continue 
                                        return Array(len=2 * Mask(256, -1, stor4.length), data=mem[160 len ceil32(uint255(stor4.length) * 0.5)])
                                    mem[160] = 256 * stor4.length.field_8
                            mem[ceil32(uint255(stor4.length) * 0.5) + 224 len ceil32(uint255(stor4.length) * 0.5)] = mem[160 len ceil32(uint255(stor4.length) * 0.5)]
                            if ceil32(uint255(stor4.length) * 0.5) > uint255(stor4.length) * 0.5:
                                mem[ceil32(uint255(stor4.length) * 0.5) + (uint255(stor4.length) * 0.5) + 224] = 0
                            return Array(len=2 * Mask(256, -1, stor4.length), data=mem[160 len ceil32(uint255(stor4.length) * 0.5)], mem[(2 * ceil32(uint255(stor4.length) * 0.5)) + 224 len 2 * ceil32(uint255(stor4.length) * 0.5)]), 
                        if bool(stor4.length) == stor4.length.field_1 < 32:
                            revert with 0, 34
                        if bool(stor4.length):
                            if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
                                revert with 0, 34
                            if Mask(256, -1, stor4.length):
                                if 31 < uint255(stor4.length) * 0.5:
                                    mem[160] = uint256(stor4.field_0)
                                    idx = 160
                                    s = 0
                                    while (uint255(stor4.length) * 0.5) + 128 > idx:
                                        mem[idx + 32] = stor4[s].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    return Array(len=stor4.length % 128, data=mem[160 len ceil32(stor4.length.field_1)])
                                mem[160] = 256 * stor4.length.field_8
                        else:
                            if bool(stor4.length) == stor4.length.field_1 < 32:
                                revert with 0, 34
                            if stor4.length.field_1:
                                if 31 < stor4.length.field_1:
                                    mem[160] = uint256(stor4.field_0)
                                    idx = 160
                                    s = 0
                                    while stor4.length.field_1 + 128 > idx:
                                        mem[idx + 32] = stor4[s].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    return Array(len=stor4.length % 128, data=mem[160 len ceil32(stor4.length.field_1)])
                                mem[160] = 256 * stor4.length.field_8
                        mem[ceil32(stor4.length.field_1) + 224 len ceil32(stor4.length.field_1)] = mem[160 len ceil32(stor4.length.field_1)]
                        if ceil32(stor4.length.field_1) > stor4.length.field_1:
                            mem[ceil32(stor4.length.field_1) + stor4.length.field_1 + 224] = 0
                        return Array(len=stor4.length % 128, data=mem[160 len ceil32(stor4.length.field_1)], mem[(2 * ceil32(stor4.length.field_1)) + 224 len 2 * ceil32(stor4.length.field_1)]), 
                    if unknown_0x974f7a51(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 64
                        require arg1 == address(arg1)
                        require arg2 == bool(arg2)
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        if pairAddress == address(arg1):
                            revert with 0, 'Can't modify pair'
                        stor23[address(arg1)] = uint8(bool(arg2))
                        emit SetMarketMaker(address(arg1), bool(arg2));
                    else:
                        if unknown_0x9d892a60(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            require calldata.size - 4 >= 32
                            require arg1 == address(arg1)
                            return bool(stor22[arg1])
                        if uint32(call.func_hash) >> 224 != unknown_0xa0885e93(?????):
                            require unknown_0xa457c2d7(?????) == uint32(call.func_hash) >> 224
                            require not msg.value
                            require calldata.size - 4 >= 64
                            require arg1 == address(arg1)
                            if allowance[msg.sender][address(arg1)] < arg2:
                                revert with 0, 'ERC20: decreased allowance below zero'
                            if not msg.sender:
                                revert with 0, 'ERC20: approve from the zero address'
                            if not address(arg1):
                                revert with 0, 'ERC20: approve to the zero address'
                            allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] - arg2
                            emit Approval((allowance[msg.sender][address(arg1)] - arg2), msg.sender, address(arg1));
                            return 1
                        require not msg.value
                        require calldata.size - 4 >= 96
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        sub_3c322798 = arg1
                        sub_15291cd4 = arg2
                        marketingShare = arg3
                        if arg1 > !arg2:
                            revert with 0, 17
                        if arg1 + arg2 > !arg3:
                            revert with 0, 17
                        stor18 = arg1 + arg2 + arg3
                        emit SetShares(sub_3c322798, sub_15291cd4, marketingShare);
            else:
                if unknown_0x78f633af(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    if 24 * 3600 > !launchTime:
                        revert with 0, 17
                    if launchTime + (24 * 3600) <= block.timestamp:
                        return sellTax
                    if launchTime + (24 * 3600) < block.timestamp:
                        revert with 0, 17
                    if sellTax and launchTime + -block.timestamp + (24 * 3600) > -1 / sellTax:
                        revert with 0, 17
                    if sellTax > !((24 * 3600 * sellTax) + (launchTime * sellTax) - (block.timestamp * sellTax) / 24 * 3600):
                        revert with 0, 17
                    return (sellTax + ((24 * 3600 * sellTax) + (launchTime * sellTax) - (block.timestamp * sellTax) / 24 * 3600))
                if unknown_0x790ca413(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return launchTime
                if unknown_0x8124f7ac(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return sub_8124f7ac
                if uint32(call.func_hash) >> 224 != unknown_0x886f039a(?????):
                    if unknown_0x893d20e8(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return owner
                    require unknown_0x8a8c523c(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    uint8(stor11.field_24) = 1
                    launchTime = block.timestamp
                    emit EnableTrading()
                else:
                    require not msg.value
                    require calldata.size - 4 >= 64
                    require arg1 == address(arg1)
                    require arg2 == address(arg2)
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    if this.address == address(arg1):
                        revert with 0, 'Can't withdraw Step'
                    require ext_code.size(address(arg1))
                    staticcall address(arg1).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(arg1))
                    call address(arg1).0xa9059cbb with:
                         gas gas_remaining wei
                        args address(arg2), ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    emit RecoverERC20(ext_call.return_data[0], address(arg1));
        if unknown_0xcdc0519f(?????) <= uint32(call.func_hash) >> 224:
            if unknown_0xe9dae5ed(?????) > uint32(call.func_hash) >> 224:
                if unknown_0xcdc0519f(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require arg1 == address(arg1)
                    return bool(stor23[arg1])
                if unknown_0xdd62ed3e(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 64
                    require arg1 == address(arg1)
                    require arg2 == address(arg2)
                    return allowance[address(arg1)][address(arg2)]
                require unknown_0xdf20fd49(?????) == uint32(call.func_hash) >> 224
                require not msg.value
                require calldata.size - 4 >= 64
                require arg1 == bool(arg1)
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                if arg2 and 10^18 > -1 / arg2:
                    revert with 0, 17
                uint8(stor11.field_0) = uint8(bool(arg1))
                swapThreshold = 10^18 * arg2
                emit SetSwapBackSettings(bool(arg1), arg2);
            else:
                if uint32(call.func_hash) >> 224 != unknown_0xe9dae5ed(?????):
                    if uint32(call.func_hash) >> 224 != unknown_0xf2fde38b(?????):
                        if unknown_0xfa03f797(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            return sub_fa03f797
                        require unknown_0xfb75b2c7(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        return rewardWalletAddress
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require arg1 == address(arg1)
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    if not address(arg1):
                        revert with 0, 'Ownable: new owner is the zero address'
                    emit OwnershipTransferred(owner, address(arg1));
                    owner = address(arg1)
                else:
                    require not msg.value
                    require calldata.size - 4 >= 96
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    if arg1 > 1500:
                        revert with 0, 'Too high taxes'
                    if arg2 > 1500:
                        revert with 0, 'Too high taxes'
                    if arg3 > 1500:
                        revert with 0, 'Too high taxes'
                    buyTax = arg1
                    sellTax = arg2
                    sub_8124f7ac = arg3
                    emit 0x1b647027: arg1, arg2, arg3
        if unknown_0xa8aa1b31(?????) == uint32(call.func_hash) >> 224:
            require not msg.value
            return pairAddress
        if uint32(call.func_hash) >> 224 != unknown_0xa9059cbb(?????):
            if unknown_0xab261a40(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 64
                require arg1 == address(arg1)
                require arg2 == bool(arg2)
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                stor22[address(arg1)] = uint8(bool(arg2))
                emit 0xed21431d: address(arg1), bool(arg2)
            else:
                if unknown_0xbfd9041b(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return LP_TOKENAddress
                if uint32(call.func_hash) >> 224 != unknown_0xc7e066ba(?????):
                    require unknown_0xcc1776d3(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    return sellTax
                require not msg.value
                require calldata.size - 4 >= 32
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                if arg1 < 21000:
                    revert with 0, 'Invalid gas parameter'
                if arg1 > 50000:
                    revert with 0, 'Invalid gas parameter'
                emit 0x5f7d3624: arg1, sub_fa03f797
                sub_fa03f797 = arg1
        require not msg.value
        require calldata.size - 4 >= 64
        require arg1 == address(arg1)
        if stor21[address(msg.sender)]:
            if not msg.sender:
                revert with 0, 'ERC20: transfer from the zero address'
            if not address(arg1):
                revert with 0, 'ERC20: transfer to the zero address'
            if balanceOf[address(msg.sender)] < arg2:
                revert with 0, 'ERC20: transfer amount exceeds balance'
            balanceOf[address(msg.sender)] -= arg2
            if balanceOf[address(arg1)] > !arg2:
                revert with 0, 17
            balanceOf[address(arg1)] += arg2
            emit Transfer(arg2, msg.sender, address(arg1));
        else:
            if stor21[address(arg1)]:
                if not msg.sender:
                    revert with 0, 'ERC20: transfer from the zero address'
                if not address(arg1):
                    revert with 0, 'ERC20: transfer to the zero address'
                if balanceOf[address(msg.sender)] < arg2:
                    revert with 0, 'ERC20: transfer amount exceeds balance'
                balanceOf[address(msg.sender)] -= arg2
                if balanceOf[address(arg1)] > !arg2:
                    revert with 0, 17
                balanceOf[address(arg1)] += arg2
                emit Transfer(arg2, msg.sender, address(arg1));
            else:
                if uint8(stor11.field_32):
                    if not msg.sender:
                        revert with 0, 'ERC20: transfer from the zero address'
                    if not address(arg1):
                        revert with 0, 'ERC20: transfer to the zero address'
                    if balanceOf[address(msg.sender)] < arg2:
                        revert with 0, 'ERC20: transfer amount exceeds balance'
                    balanceOf[address(msg.sender)] -= arg2
                    if balanceOf[address(arg1)] > !arg2:
                        revert with 0, 17
                    balanceOf[address(arg1)] += arg2
                    emit Transfer(arg2, msg.sender, address(arg1));
                else:
                    if not uint8(stor11.field_24):
                        revert with 0, 'Trading is disabled'
                    if LP_TOKENAddress:
                        if stor24:
                            if stor23[address(arg1)]:
                                if uint8(stor11.field_0):
                                    mem[0] = this.address
                                    if balanceOf[this.address] >= swapThreshold:
                                        uint8(stor11.field_32) = 1
                                        mem[128] = 2
                                        mem[160] = this.address
                                        mem[192] = LP_TOKENAddress
                                        if swapThreshold and sub_15291cd4 > -1 / swapThreshold:
                                            revert with 0, 17
                                        if not stor18:
                                            revert with 0, 18
                                        if swapThreshold < swapThreshold * sub_15291cd4 / stor18 / 2:
                                            revert with 0, 17
                                        mem[224] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                                        mem[228] = swapThreshold - (swapThreshold * sub_15291cd4 / stor18 / 2)
                                        mem[260] = 0
                                        mem[292] = 160
                                        mem[388] = 2
                                        idx = 0
                                        s = 420
                                        t = 160
                                        while idx < 2:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[324] = this.address
                                        mem[356] = block.timestamp
                                        require ext_code.size(ROUTERAddress)
                                        call ROUTERAddress.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args swapThreshold - (swapThreshold * sub_15291cd4 / stor18 / 2), 0, 160, address(this.address), block.timestamp, 2, mem[420 len 64]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = ceil32(return_data.size) + 224
                                        require return_data.size >= 32
                                        require mem[224 len 4], Mask(224, 32, swapThreshold - (swapThreshold * sub_15291cd4 / stor18 / 2)) >> 32 <= test266151307()
                                        require mem[224 len 4], Mask(224, 32, swapThreshold - (swapThreshold * sub_15291cd4 / stor18 / 2)) >> 32 + 255 < return_data.size + 224
                                        if mem[mem[224 len 4], Mask(224, 32, swapThreshold - (swapThreshold * sub_15291cd4 / stor18 / 2)) >> 32 + 224] > test266151307():
                                            revert with 0, 65
                                        if ceil32(return_data.size) + ceil32(32 * mem[mem[224 len 4], Mask(224, 32, swapThreshold - (swapThreshold * sub_15291cd4 / stor18 / 2)) >> 32 + 224]) + 225 > test266151307() or ceil32(32 * mem[mem[224 len 4], Mask(224, 32, swapThreshold - (swapThreshold * sub_15291cd4 / stor18 / 2)) >> 32 + 224]) + 1 < 0:
                                            revert with 0, 65
                                        require return_data.size >= mem[224 len 4], Mask(224, 32, swapThreshold - (swapThreshold * sub_15291cd4 / stor18 / 2)) >> 32 + (32 * mem[mem[224 len 4], Mask(224, 32, swapThreshold - (swapThreshold * sub_15291cd4 / stor18 / 2)) >> 32 + 224]) + 32
                                        if eth.balance(this.address) < eth.balance(this.address):
                                            revert with 0, 17
                                        if stor18 < stor16:
                                            revert with 0, 17
                                        if False and sub_15291cd4 > 0:
                                            revert with 0, 17
                                        if not stor18 - stor16:
                                            revert with 0, 18
                                        if False and marketingShare > 0:
                                            revert with 0, 17
                                        if not stor18 - stor16:
                                            revert with 0, 18
                                        if False and sub_3c322798 > 0:
                                            revert with 0, 17
                                        if not stor18 - stor16:
                                            revert with 0, 18
                                        call marketingWalletAddress with:
                                           value 0 / stor18 - stor16 wei
                                             gas sub_fa03f797 wei
                                        if ext_call.success:
                                            emit 0x3f23532d: (0 / stor18 - stor16), marketingWalletAddress
                                        call rewardWalletAddress with:
                                           value 0 / stor18 - stor16 wei
                                             gas sub_fa03f797 wei
                                        if ext_call.success:
                                            emit 0xb9ad861b: (0 / stor18 - stor16), rewardWalletAddress
                                        if Mask(255, 1, swapThreshold * sub_15291cd4 / stor18):
                                            require ext_code.size(ROUTERAddress)
                                            call ROUTERAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                               value 0 / stor18 - stor16 / 2 wei
                                                 gas gas_remaining wei
                                                args this.address, Mask(255, 1, swapThreshold * sub_15291cd4 / stor18), 0, 0, this.address, block.timestamp
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 96
                                            emit AutoLiquidity(Mask(255, 1, 0 / stor18 - stor16), swapThreshold * sub_15291cd4 / stor18 / 2);
                                        uint8(stor11.field_32) = 0
                    if not arg2:
                        if not msg.sender:
                            revert with 0, 'ERC20: transfer from the zero address'
                        if not address(arg1):
                            revert with 0, 'ERC20: transfer to the zero address'
                        if balanceOf[address(msg.sender)] < arg2:
                            revert with 0, 'ERC20: transfer amount exceeds balance'
                        balanceOf[address(msg.sender)] -= arg2
                        if balanceOf[address(arg1)] > !arg2:
                            revert with 0, 17
                        balanceOf[address(arg1)] += arg2
                        emit Transfer(arg2, msg.sender, address(arg1));
                    else:
                        if uint8(stor11.field_16):
                            if arg2 and 9900 > -1 / arg2:
                                revert with 0, 17
                            if 9900 * arg2 / 10000:
                                if not msg.sender:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not this.address:
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if balanceOf[address(msg.sender)] < 9900 * arg2 / 10000:
                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                balanceOf[address(msg.sender)] -= 9900 * arg2 / 10000
                                if balanceOf[this.address] > !(9900 * arg2 / 10000):
                                    revert with 0, 17
                                balanceOf[this.address] += 9900 * arg2 / 10000
                                emit Transfer((9900 * arg2 / 10000), msg.sender, this.address);
                            if arg2 < 9900 * arg2 / 10000:
                                revert with 0, 17
                            if not msg.sender:
                                revert with 0, 'ERC20: transfer from the zero address'
                            if not address(arg1):
                                revert with 0, 'ERC20: transfer to the zero address'
                            if balanceOf[address(msg.sender)] < arg2 - (9900 * arg2 / 10000):
                                revert with 0, 'ERC20: transfer amount exceeds balance'
                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (9900 * arg2 / 10000)
                            if balanceOf[address(arg1)] > !(arg2 - (9900 * arg2 / 10000)):
                                revert with 0, 17
                            balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (9900 * arg2 / 10000)
                            emit Transfer((arg2 - (9900 * arg2 / 10000)), msg.sender, address(arg1));
                        else:
                            if stor22[address(arg1)]:
                                if arg2 and 0 > -1 / arg2:
                                    revert with 0, 17
                                if arg2 < 0:
                                    revert with 0, 17
                                if not msg.sender:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not address(arg1):
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[address(arg1)] > !arg2:
                                    revert with 0, 17
                                balanceOf[address(arg1)] += arg2
                                emit Transfer(arg2, msg.sender, address(arg1));
                            else:
                                if stor22[address(msg.sender)]:
                                    if arg2 and buyTax > -1 / arg2:
                                        revert with 0, 17
                                    if arg2 * buyTax / 10000:
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not this.address:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if balanceOf[address(msg.sender)] < arg2 * buyTax / 10000:
                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(msg.sender)] -= arg2 * buyTax / 10000
                                        if balanceOf[this.address] > !(arg2 * buyTax / 10000):
                                            revert with 0, 17
                                        balanceOf[this.address] += arg2 * buyTax / 10000
                                        emit Transfer((arg2 * buyTax / 10000), msg.sender, this.address);
                                    if arg2 < arg2 * buyTax / 10000:
                                        revert with 0, 17
                                    if not msg.sender:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not address(arg1):
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if balanceOf[address(msg.sender)] < arg2 - (arg2 * buyTax / 10000):
                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * buyTax / 10000)
                                    if balanceOf[address(arg1)] > !(arg2 - (arg2 * buyTax / 10000)):
                                        revert with 0, 17
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * buyTax / 10000)
                                    emit Transfer((arg2 - (arg2 * buyTax / 10000)), msg.sender, address(arg1));
                                else:
                                    if stor23[address(msg.sender)]:
                                        if arg2 and buyTax > -1 / arg2:
                                            revert with 0, 17
                                        if arg2 * buyTax / 10000:
                                            if not msg.sender:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not this.address:
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(msg.sender)] < arg2 * buyTax / 10000:
                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(msg.sender)] -= arg2 * buyTax / 10000
                                            if balanceOf[this.address] > !(arg2 * buyTax / 10000):
                                                revert with 0, 17
                                            balanceOf[this.address] += arg2 * buyTax / 10000
                                            emit Transfer((arg2 * buyTax / 10000), msg.sender, this.address);
                                        if arg2 < arg2 * buyTax / 10000:
                                            revert with 0, 17
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not address(arg1):
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if balanceOf[address(msg.sender)] < arg2 - (arg2 * buyTax / 10000):
                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * buyTax / 10000)
                                        if balanceOf[address(arg1)] > !(arg2 - (arg2 * buyTax / 10000)):
                                            revert with 0, 17
                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * buyTax / 10000)
                                        emit Transfer((arg2 - (arg2 * buyTax / 10000)), msg.sender, address(arg1));
                                    else:
                                        if not stor23[address(arg1)]:
                                            if arg2 and sub_8124f7ac > -1 / arg2:
                                                revert with 0, 17
                                            if arg2 * sub_8124f7ac / 10000:
                                                if not msg.sender:
                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                if not this.address:
                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                if balanceOf[address(msg.sender)] < arg2 * sub_8124f7ac / 10000:
                                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                                balanceOf[address(msg.sender)] -= arg2 * sub_8124f7ac / 10000
                                                if balanceOf[this.address] > !(arg2 * sub_8124f7ac / 10000):
                                                    revert with 0, 17
                                                balanceOf[this.address] += arg2 * sub_8124f7ac / 10000
                                                emit Transfer((arg2 * sub_8124f7ac / 10000), msg.sender, this.address);
                                            if arg2 < arg2 * sub_8124f7ac / 10000:
                                                revert with 0, 17
                                            if not msg.sender:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not address(arg1):
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(msg.sender)] < arg2 - (arg2 * sub_8124f7ac / 10000):
                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * sub_8124f7ac / 10000)
                                            if balanceOf[address(arg1)] > !(arg2 - (arg2 * sub_8124f7ac / 10000)):
                                                revert with 0, 17
                                            balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * sub_8124f7ac / 10000)
                                            emit Transfer((arg2 - (arg2 * sub_8124f7ac / 10000)), msg.sender, address(arg1));
                                        else:
                                            if not uint8(stor11.field_8):
                                                if arg2 and sellTax > -1 / arg2:
                                                    revert with 0, 17
                                                if arg2 * sellTax / 10000:
                                                    if not msg.sender:
                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                    if not this.address:
                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                    if balanceOf[address(msg.sender)] < arg2 * sellTax / 10000:
                                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                                    balanceOf[address(msg.sender)] -= arg2 * sellTax / 10000
                                                    if balanceOf[this.address] > !(arg2 * sellTax / 10000):
                                                        revert with 0, 17
                                                    balanceOf[this.address] += arg2 * sellTax / 10000
                                                    emit Transfer((arg2 * sellTax / 10000), msg.sender, this.address);
                                                if arg2 < arg2 * sellTax / 10000:
                                                    revert with 0, 17
                                                if not msg.sender:
                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                if not address(arg1):
                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                if balanceOf[address(msg.sender)] < arg2 - (arg2 * sellTax / 10000):
                                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * sellTax / 10000)
                                                if balanceOf[address(arg1)] > !(arg2 - (arg2 * sellTax / 10000)):
                                                    revert with 0, 17
                                                balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * sellTax / 10000)
                                                emit Transfer((arg2 - (arg2 * sellTax / 10000)), msg.sender, address(arg1));
                                            else:
                                                if 24 * 3600 > !launchTime:
                                                    revert with 0, 17
                                                if launchTime + (24 * 3600) <= block.timestamp:
                                                    if arg2 and sellTax > -1 / arg2:
                                                        revert with 0, 17
                                                    if arg2 * sellTax / 10000:
                                                        if not msg.sender:
                                                            revert with 0, 'ERC20: transfer from the zero address'
                                                        if not this.address:
                                                            revert with 0, 'ERC20: transfer to the zero address'
                                                        if balanceOf[address(msg.sender)] < arg2 * sellTax / 10000:
                                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                                        balanceOf[address(msg.sender)] -= arg2 * sellTax / 10000
                                                        if balanceOf[this.address] > !(arg2 * sellTax / 10000):
                                                            revert with 0, 17
                                                        balanceOf[this.address] += arg2 * sellTax / 10000
                                                        emit Transfer((arg2 * sellTax / 10000), msg.sender, this.address);
                                                    if arg2 < arg2 * sellTax / 10000:
                                                        revert with 0, 17
                                                    if not msg.sender:
                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                    if not address(arg1):
                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                    if balanceOf[address(msg.sender)] < arg2 - (arg2 * sellTax / 10000):
                                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * sellTax / 10000)
                                                    if balanceOf[address(arg1)] > !(arg2 - (arg2 * sellTax / 10000)):
                                                        revert with 0, 17
                                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * sellTax / 10000)
                                                    emit Transfer((arg2 - (arg2 * sellTax / 10000)), msg.sender, address(arg1));
                                                else:
                                                    if launchTime + (24 * 3600) < block.timestamp:
                                                        revert with 0, 17
                                                    if sellTax and launchTime + -block.timestamp + (24 * 3600) > -1 / sellTax:
                                                        revert with 0, 17
                                                    if sellTax > !((24 * 3600 * sellTax) + (launchTime * sellTax) - (block.timestamp * sellTax) / 24 * 3600):
                                                        revert with 0, 17
                                                    if arg2 and sellTax + ((24 * 3600 * sellTax) + (launchTime * sellTax) - (block.timestamp * sellTax) / 24 * 3600) > -1 / arg2:
                                                        revert with 0, 17
                                                    if (sellTax * arg2) + ((24 * 3600 * sellTax) + (launchTime * sellTax) - (block.timestamp * sellTax) / 24 * 3600 * arg2) / 10000:
                                                        if not msg.sender:
                                                            revert with 0, 'ERC20: transfer from the zero address'
                                                        if not this.address:
                                                            revert with 0, 'ERC20: transfer to the zero address'
                                                        if balanceOf[address(msg.sender)] < (sellTax * arg2) + ((24 * 3600 * sellTax) + (launchTime * sellTax) - (block.timestamp * sellTax) / 24 * 3600 * arg2) / 10000:
                                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                                        balanceOf[address(msg.sender)] -= (sellTax * arg2) + ((24 * 3600 * sellTax) + (launchTime * sellTax) - (block.timestamp * sellTax) / 24 * 3600 * arg2) / 10000
                                                        if balanceOf[this.address] > !((sellTax * arg2) + ((24 * 3600 * sellTax) + (launchTime * sellTax) - (block.timestamp * sellTax) / 24 * 3600 * arg2) / 10000):
                                                            revert with 0, 17
                                                        balanceOf[this.address] += (sellTax * arg2) + ((24 * 3600 * sellTax) + (launchTime * sellTax) - (block.timestamp * sellTax) / 24 * 3600 * arg2) / 10000
                                                        emit Transfer(((sellTax * arg2) + ((24 * 3600 * sellTax) + (launchTime * sellTax) - (block.timestamp * sellTax) / 24 * 3600 * arg2) / 10000), msg.sender, this.address);
                                                    if arg2 < (sellTax * arg2) + ((24 * 3600 * sellTax) + (launchTime * sellTax) - (block.timestamp * sellTax) / 24 * 3600 * arg2) / 10000:
                                                        revert with 0, 17
                                                    if not msg.sender:
                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                    if not address(arg1):
                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                    if balanceOf[address(msg.sender)] < arg2 - ((sellTax * arg2) + ((24 * 3600 * sellTax) + (launchTime * sellTax) - (block.timestamp * sellTax) / 24 * 3600 * arg2) / 10000):
                                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + ((sellTax * arg2) + ((24 * 3600 * sellTax) + (launchTime * sellTax) - (block.timestamp * sellTax) / 24 * 3600 * arg2) / 10000)
                                                    if balanceOf[address(arg1)] > !(arg2 - ((sellTax * arg2) + ((24 * 3600 * sellTax) + (launchTime * sellTax) - (block.timestamp * sellTax) / 24 * 3600 * arg2) / 10000)):
                                                        revert with 0, 17
                                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - ((sellTax * arg2) + ((24 * 3600 * sellTax) + (launchTime * sellTax) - (block.timestamp * sellTax) / 24 * 3600 * arg2) / 10000)
                                                    emit Transfer((arg2 - ((sellTax * arg2) + ((24 * 3600 * sellTax) + (launchTime * sellTax) - (block.timestamp * sellTax) / 24 * 3600 * arg2) / 10000)), msg.sender, address(arg1));
    else:
        if unknown_0x39509351(?????) <= uint32(call.func_hash) >> 224:
            if unknown_0x5958621e(?????) <= uint32(call.func_hash) >> 224:
                if unknown_0x5958621e(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require arg1 == address(arg1)
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    if not address(arg1):
                        revert with 0, 'New reward pool is the zero address'
                    emit 0xe5be6987: address(arg1), rewardWalletAddress
                    rewardWalletAddress = address(arg1)
                else:
                    if unknown_0x5d098b38(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require arg1 == address(arg1)
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        if not address(arg1):
                            revert with 0, 'New marketing wallet is the zero address'
                        emit 0x83e9b026: address(arg1), marketingWalletAddress
                        marketingWalletAddress = address(arg1)
                    else:
                        if uint32(call.func_hash) >> 224 != unknown_0x6bfdf8a0(?????):
                            if unknown_0x6ddd1713(?????) == uint32(call.func_hash) >> 224:
                                require not msg.value
                                return bool(uint8(stor11.field_0))
                            if uint32(call.func_hash) >> 224 != unknown_0x70a08231(?????):
                                require unknown_0x75f0a874(?????) == uint32(call.func_hash) >> 224
                                require not msg.value
                                return marketingWalletAddress
                            require not msg.value
                            require calldata.size - 4 >= 32
                            require arg1 == address(arg1)
                            return balanceOf[address(arg1)]
                        require not msg.value
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        call marketingWalletAddress with:
                           value eth.balance(this.address) wei
                             gas sub_fa03f797 wei
                        if not ext_call.success:
                            revert with 0, 'Tx failed'
                        emit 0x8f1ea928: eth.balance(this.address)
            else:
                if unknown_0x39509351(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 64
                    require arg1 == address(arg1)
                    if allowance[msg.sender][address(arg1)] > !arg2:
                        revert with 0, 17
                    if not msg.sender:
                        revert with 0, 'ERC20: approve from the zero address'
                    if not address(arg1):
                        revert with 0, 'ERC20: approve to the zero address'
                    allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] + arg2
                    emit Approval((allowance[msg.sender][address(arg1)] + arg2), msg.sender, address(arg1));
                    return 1
                if unknown_0x3af32abf(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require arg1 == address(arg1)
                    return bool(stor21[arg1])
                if unknown_0x3c322798(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return sub_3c322798
                if unknown_0x41d68b8f(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 64
                    require arg1 == address(arg1)
                    require arg2 == address(arg2)
                    if address(arg1):
                        ROUTERAddress = address(arg1)
                        if address(arg2):
                            LP_TOKENAddress = address(arg2)
                        else:
                            require ext_code.size(ROUTERAddress)
                            staticcall ROUTERAddress.WETH() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            LP_TOKENAddress = ext_call.return_data[12 len 20]
                        require ext_code.size(ROUTERAddress)
                        staticcall ROUTERAddress.factory() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).createPair(address arg1, address arg2) with:
                             gas gas_remaining wei
                            args LP_TOKENAddress, this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        pairAddress = ext_call.return_data[12 len 20]
                        if not this.address:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not ROUTERAddress:
                            revert with 0, 'ERC20: approve to the zero address'
                        allowance[address(this.address)][stor5] = -1
                        emit Approval(-1, this.address, ROUTERAddress);
                        stor23[stor6] = 1
                else:
                    if uint32(call.func_hash) >> 224 != unknown_0x456d401a(?????):
                        require unknown_0x4f7041a5(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        return buyTax
                    require not msg.value
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    uint8(stor11.field_32) = 1
                    mem[128] = 2
                    mem[160] = this.address
                    mem[192] = LP_TOKENAddress
                    if swapThreshold and sub_15291cd4 > -1 / swapThreshold:
                        revert with 0, 17
                    if not stor18:
                        revert with 0, 18
                    if swapThreshold < swapThreshold * sub_15291cd4 / stor18 / 2:
                        revert with 0, 17
                    mem[224] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                    mem[228] = swapThreshold - (swapThreshold * sub_15291cd4 / stor18 / 2)
                    mem[260] = 0
                    mem[292] = 160
                    mem[388] = 2
                    idx = 0
                    s = 420
                    t = 160
                    while idx < 2:
                        mem[s] = mem[t + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[324] = this.address
                    mem[356] = block.timestamp
                    require ext_code.size(ROUTERAddress)
                    call ROUTERAddress.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args swapThreshold - (swapThreshold * sub_15291cd4 / stor18 / 2), 0, 160, address(this.address), block.timestamp, 2, mem[420 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 224
                    require return_data.size >= 32
                    require mem[224 len 4], Mask(224, 32, swapThreshold - (swapThreshold * sub_15291cd4 / stor18 / 2)) >> 32 <= test266151307()
                    require mem[224 len 4], Mask(224, 32, swapThreshold - (swapThreshold * sub_15291cd4 / stor18 / 2)) >> 32 + 255 < return_data.size + 224
                    if mem[mem[224 len 4], Mask(224, 32, swapThreshold - (swapThreshold * sub_15291cd4 / stor18 / 2)) >> 32 + 224] > test266151307():
                        revert with 0, 65
                    if ceil32(return_data.size) + ceil32(32 * mem[mem[224 len 4], Mask(224, 32, swapThreshold - (swapThreshold * sub_15291cd4 / stor18 / 2)) >> 32 + 224]) + 225 > test266151307() or ceil32(32 * mem[mem[224 len 4], Mask(224, 32, swapThreshold - (swapThreshold * sub_15291cd4 / stor18 / 2)) >> 32 + 224]) + 1 < 0:
                        revert with 0, 65
                    require return_data.size >= mem[224 len 4], Mask(224, 32, swapThreshold - (swapThreshold * sub_15291cd4 / stor18 / 2)) >> 32 + (32 * mem[mem[224 len 4], Mask(224, 32, swapThreshold - (swapThreshold * sub_15291cd4 / stor18 / 2)) >> 32 + 224]) + 32
                    if eth.balance(this.address) < eth.balance(this.address):
                        revert with 0, 17
                    if stor18 < stor16:
                        revert with 0, 17
                    if False and sub_15291cd4 > 0:
                        revert with 0, 17
                    if not stor18 - stor16:
                        revert with 0, 18
                    if False and marketingShare > 0:
                        revert with 0, 17
                    if not stor18 - stor16:
                        revert with 0, 18
                    if False and sub_3c322798 > 0:
                        revert with 0, 17
                    if not stor18 - stor16:
                        revert with 0, 18
                    call marketingWalletAddress with:
                       value 0 / stor18 - stor16 wei
                         gas sub_fa03f797 wei
                    if ext_call.success:
                        emit 0x3f23532d: (0 / stor18 - stor16), marketingWalletAddress
                    call rewardWalletAddress with:
                       value 0 / stor18 - stor16 wei
                         gas sub_fa03f797 wei
                    if ext_call.success:
                        emit 0xb9ad861b: (0 / stor18 - stor16), rewardWalletAddress
                    if Mask(255, 1, swapThreshold * sub_15291cd4 / stor18):
                        require ext_code.size(ROUTERAddress)
                        call ROUTERAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                           value 0 / stor18 - stor16 / 2 wei
                             gas gas_remaining wei
                            args this.address, Mask(255, 1, swapThreshold * sub_15291cd4 / stor18), 0, 0, this.address, block.timestamp
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        emit AutoLiquidity(Mask(255, 1, 0 / stor18 - stor16), swapThreshold * sub_15291cd4 / stor18 / 2);
                    uint8(stor11.field_32) = 0
                    emit TriggerSwapBack()
        if unknown_0x17513587(?????) > uint32(call.func_hash) >> 224:
            if swapThreshold() == uint32(call.func_hash) >> 224:
                require not msg.value
                return swapThreshold
            if uint32(call.func_hash) >> 224 != name():
                if marketingShare() == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return marketingShare
                if approve(address arg1, uint256 arg2) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 64
                    require arg1 == address(arg1)
                    if not msg.sender:
                        revert with 0, 'ERC20: approve from the zero address'
                    if not address(arg1):
                        revert with 0, 'ERC20: approve to the zero address'
                    allowance[address(msg.sender)][address(arg1)] = arg2
                    emit Approval(arg2, msg.sender, address(arg1));
                    return 1
                if uint32(call.func_hash) >> 224 != setIsWhitelisted(address arg1, bool arg2):
                    require unknown_0x15291cd4(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    return sub_15291cd4
                require not msg.value
                require calldata.size - 4 >= 64
                require arg1 == address(arg1)
                require arg2 == bool(arg2)
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                stor21[address(arg1)] = uint8(bool(arg2))
                emit 0x26742d25: address(arg1), bool(arg2)
            require not msg.value
            if bool(stor3.length):
                if bool(stor3.length) == uint255(stor3.length) * 0.5 < 32:
                    revert with 0, 34
                if bool(stor3.length):
                    if bool(stor3.length) == uint255(stor3.length) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, stor3.length):
                        if 31 < uint255(stor3.length) * 0.5:
                            mem[160] = uint256(stor3.field_0)
                            idx = 160
                            s = 0
                            while (uint255(stor3.length) * 0.5) + 128 > idx:
                                mem[idx + 32] = stor3[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            return Array(len=2 * Mask(256, -1, stor3.length), data=mem[160 len ceil32(uint255(stor3.length) * 0.5)])
                        mem[160] = 256 * stor3.length.field_8
                else:
                    if bool(stor3.length) == stor3.length.field_1 < 32:
                        revert with 0, 34
                    if stor3.length.field_1:
                        if 31 < stor3.length.field_1:
                            mem[160] = uint256(stor3.field_0)
                            idx = 160
                            s = 0
                            while stor3.length.field_1 + 128 > idx:
                                mem[idx + 32] = stor3[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            return Array(len=2 * Mask(256, -1, stor3.length), data=mem[160 len ceil32(uint255(stor3.length) * 0.5)])
                        mem[160] = 256 * stor3.length.field_8
                mem[ceil32(uint255(stor3.length) * 0.5) + 224 len ceil32(uint255(stor3.length) * 0.5)] = mem[160 len ceil32(uint255(stor3.length) * 0.5)]
                if ceil32(uint255(stor3.length) * 0.5) > uint255(stor3.length) * 0.5:
                    mem[ceil32(uint255(stor3.length) * 0.5) + (uint255(stor3.length) * 0.5) + 224] = 0
                return Array(len=2 * Mask(256, -1, stor3.length), data=mem[160 len ceil32(uint255(stor3.length) * 0.5)], mem[(2 * ceil32(uint255(stor3.length) * 0.5)) + 224 len 2 * ceil32(uint255(stor3.length) * 0.5)]), 
            if bool(stor3.length) == stor3.length.field_1 < 32:
                revert with 0, 34
            if bool(stor3.length):
                if bool(stor3.length) == uint255(stor3.length) * 0.5 < 32:
                    revert with 0, 34
                if Mask(256, -1, stor3.length):
                    if 31 < uint255(stor3.length) * 0.5:
                        mem[160] = uint256(stor3.field_0)
                        idx = 160
                        s = 0
                        while (uint255(stor3.length) * 0.5) + 128 > idx:
                            mem[idx + 32] = stor3[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        return Array(len=stor3.length % 128, data=mem[160 len ceil32(stor3.length.field_1)])
                    mem[160] = 256 * stor3.length.field_8
            else:
                if bool(stor3.length) == stor3.length.field_1 < 32:
                    revert with 0, 34
                if stor3.length.field_1:
                    if 31 < stor3.length.field_1:
                        mem[160] = uint256(stor3.field_0)
                        idx = 160
                        s = 0
                        while stor3.length.field_1 + 128 > idx:
                            mem[idx + 32] = stor3[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        return Array(len=stor3.length % 128, data=mem[160 len ceil32(stor3.length.field_1)])
                    mem[160] = 256 * stor3.length.field_8
            mem[ceil32(stor3.length.field_1) + 224 len ceil32(stor3.length.field_1)] = mem[160 len ceil32(stor3.length.field_1)]
            if ceil32(stor3.length.field_1) > stor3.length.field_1:
                mem[ceil32(stor3.length.field_1) + stor3.length.field_1 + 224] = 0
            return Array(len=stor3.length % 128, data=mem[160 len ceil32(stor3.length.field_1)], mem[(2 * ceil32(stor3.length.field_1)) + 224 len 2 * ceil32(stor3.length.field_1)]), 
        if unknown_0x17513587(?????) == uint32(call.func_hash) >> 224:
            require not msg.value
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            uint8(stor11.field_16) = 0
        if unknown_0x18160ddd(?????) == uint32(call.func_hash) >> 224:
            require not msg.value
            return 1000000000 * 10^18
        if unknown_0x20ffb2d7(?????) == uint32(call.func_hash) >> 224:
            require not msg.value
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            uint8(stor11.field_8) = 0
            emit 0x47bd06dc 
        if uint32(call.func_hash) >> 224 != unknown_0x23b872dd(?????):
            if unknown_0x313ce567(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return 18
            require unknown_0x32fe7b26(?????) == uint32(call.func_hash) >> 224
            require not msg.value
            return ROUTERAddress
        require not msg.value
        require calldata.size - 4 >= 96
        require arg1 == address(arg1)
        require arg2 == address(arg2)
        if stor21[address(arg1)]:
            if not address(arg1):
                revert with 0, 'ERC20: transfer from the zero address'
            if not address(arg2):
                revert with 0, 'ERC20: transfer to the zero address'
            if balanceOf[address(arg1)] < arg3:
                revert with 0, 'ERC20: transfer amount exceeds balance'
            balanceOf[address(arg1)] -= arg3
            if balanceOf[address(arg2)] > !arg3:
                revert with 0, 17
            balanceOf[address(arg2)] += arg3
            emit Transfer(arg3, address(arg1), address(arg2));
        else:
            if stor21[address(arg2)]:
                if not address(arg1):
                    revert with 0, 'ERC20: transfer from the zero address'
                if not address(arg2):
                    revert with 0, 'ERC20: transfer to the zero address'
                if balanceOf[address(arg1)] < arg3:
                    revert with 0, 'ERC20: transfer amount exceeds balance'
                balanceOf[address(arg1)] -= arg3
                if balanceOf[address(arg2)] > !arg3:
                    revert with 0, 17
                balanceOf[address(arg2)] += arg3
                emit Transfer(arg3, address(arg1), address(arg2));
            else:
                if uint8(stor11.field_32):
                    if not address(arg1):
                        revert with 0, 'ERC20: transfer from the zero address'
                    if not address(arg2):
                        revert with 0, 'ERC20: transfer to the zero address'
                    if balanceOf[address(arg1)] < arg3:
                        revert with 0, 'ERC20: transfer amount exceeds balance'
                    balanceOf[address(arg1)] -= arg3
                    if balanceOf[address(arg2)] > !arg3:
                        revert with 0, 17
                    balanceOf[address(arg2)] += arg3
                    emit Transfer(arg3, address(arg1), address(arg2));
                else:
                    if not uint8(stor11.field_24):
                        revert with 0, 'Trading is disabled'
                    if LP_TOKENAddress:
                        if stor24:
                            if stor23[address(arg2)]:
                                if uint8(stor11.field_0):
                                    mem[0] = this.address
                                    if balanceOf[this.address] >= swapThreshold:
                                        uint8(stor11.field_32) = 1
                                        mem[128] = 2
                                        mem[160] = this.address
                                        mem[192] = LP_TOKENAddress
                                        if swapThreshold and sub_15291cd4 > -1 / swapThreshold:
                                            revert with 0, 17
                                        if not stor18:
                                            revert with 0, 18
                                        if swapThreshold < swapThreshold * sub_15291cd4 / stor18 / 2:
                                            revert with 0, 17
                                        mem[224] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                                        mem[228] = swapThreshold - (swapThreshold * sub_15291cd4 / stor18 / 2)
                                        mem[260] = 0
                                        mem[292] = 160
                                        mem[388] = 2
                                        idx = 0
                                        s = 420
                                        t = 160
                                        while idx < 2:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[324] = this.address
                                        mem[356] = block.timestamp
                                        require ext_code.size(ROUTERAddress)
                                        call ROUTERAddress.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args swapThreshold - (swapThreshold * sub_15291cd4 / stor18 / 2), 0, 160, address(this.address), block.timestamp, 2, mem[420 len 64]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = ceil32(return_data.size) + 224
                                        require return_data.size >= 32
                                        require mem[224 len 4], Mask(224, 32, swapThreshold - (swapThreshold * sub_15291cd4 / stor18 / 2)) >> 32 <= test266151307()
                                        require mem[224 len 4], Mask(224, 32, swapThreshold - (swapThreshold * sub_15291cd4 / stor18 / 2)) >> 32 + 255 < return_data.size + 224
                                        if mem[mem[224 len 4], Mask(224, 32, swapThreshold - (swapThreshold * sub_15291cd4 / stor18 / 2)) >> 32 + 224] > test266151307():
                                            revert with 0, 65
                                        if ceil32(return_data.size) + ceil32(32 * mem[mem[224 len 4], Mask(224, 32, swapThreshold - (swapThreshold * sub_15291cd4 / stor18 / 2)) >> 32 + 224]) + 225 > test266151307() or ceil32(32 * mem[mem[224 len 4], Mask(224, 32, swapThreshold - (swapThreshold * sub_15291cd4 / stor18 / 2)) >> 32 + 224]) + 1 < 0:
                                            revert with 0, 65
                                        require return_data.size >= mem[224 len 4], Mask(224, 32, swapThreshold - (swapThreshold * sub_15291cd4 / stor18 / 2)) >> 32 + (32 * mem[mem[224 len 4], Mask(224, 32, swapThreshold - (swapThreshold * sub_15291cd4 / stor18 / 2)) >> 32 + 224]) + 32
                                        if eth.balance(this.address) < eth.balance(this.address):
                                            revert with 0, 17
                                        if stor18 < stor16:
                                            revert with 0, 17
                                        if False and sub_15291cd4 > 0:
                                            revert with 0, 17
                                        if not stor18 - stor16:
                                            revert with 0, 18
                                        if False and marketingShare > 0:
                                            revert with 0, 17
                                        if not stor18 - stor16:
                                            revert with 0, 18
                                        if False and sub_3c322798 > 0:
                                            revert with 0, 17
                                        if not stor18 - stor16:
                                            revert with 0, 18
                                        call marketingWalletAddress with:
                                           value 0 / stor18 - stor16 wei
                                             gas sub_fa03f797 wei
                                        if ext_call.success:
                                            emit 0x3f23532d: (0 / stor18 - stor16), marketingWalletAddress
                                        call rewardWalletAddress with:
                                           value 0 / stor18 - stor16 wei
                                             gas sub_fa03f797 wei
                                        if ext_call.success:
                                            emit 0xb9ad861b: (0 / stor18 - stor16), rewardWalletAddress
                                        if Mask(255, 1, swapThreshold * sub_15291cd4 / stor18):
                                            require ext_code.size(ROUTERAddress)
                                            call ROUTERAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                               value 0 / stor18 - stor16 / 2 wei
                                                 gas gas_remaining wei
                                                args this.address, Mask(255, 1, swapThreshold * sub_15291cd4 / stor18), 0, 0, this.address, block.timestamp
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 96
                                            emit AutoLiquidity(Mask(255, 1, 0 / stor18 - stor16), swapThreshold * sub_15291cd4 / stor18 / 2);
                                        uint8(stor11.field_32) = 0
                    if not arg3:
                        if not address(arg1):
                            revert with 0, 'ERC20: transfer from the zero address'
                        if not address(arg2):
                            revert with 0, 'ERC20: transfer to the zero address'
                        if balanceOf[address(arg1)] < arg3:
                            revert with 0, 'ERC20: transfer amount exceeds balance'
                        balanceOf[address(arg1)] -= arg3
                        if balanceOf[address(arg2)] > !arg3:
                            revert with 0, 17
                        balanceOf[address(arg2)] += arg3
                        emit Transfer(arg3, address(arg1), address(arg2));
                    else:
                        if uint8(stor11.field_16):
                            if arg3 and 9900 > -1 / arg3:
                                revert with 0, 17
                            if 9900 * arg3 / 10000:
                                if not address(arg1):
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not this.address:
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if balanceOf[address(arg1)] < 9900 * arg3 / 10000:
                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                balanceOf[address(arg1)] -= 9900 * arg3 / 10000
                                if balanceOf[this.address] > !(9900 * arg3 / 10000):
                                    revert with 0, 17
                                balanceOf[this.address] += 9900 * arg3 / 10000
                                emit Transfer((9900 * arg3 / 10000), address(arg1), this.address);
                            if arg3 < 9900 * arg3 / 10000:
                                revert with 0, 17
                            if not address(arg1):
                                revert with 0, 'ERC20: transfer from the zero address'
                            if not address(arg2):
                                revert with 0, 'ERC20: transfer to the zero address'
                            if balanceOf[address(arg1)] < arg3 - (9900 * arg3 / 10000):
                                revert with 0, 'ERC20: transfer amount exceeds balance'
                            balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (9900 * arg3 / 10000)
                            if balanceOf[address(arg2)] > !(arg3 - (9900 * arg3 / 10000)):
                                revert with 0, 17
                            balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (9900 * arg3 / 10000)
                            emit Transfer((arg3 - (9900 * arg3 / 10000)), address(arg1), address(arg2));
                        else:
                            if stor22[address(arg2)]:
                                if arg3 and 0 > -1 / arg3:
                                    revert with 0, 17
                                if arg3 < 0:
                                    revert with 0, 17
                                if not address(arg1):
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not address(arg2):
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if balanceOf[address(arg1)] < arg3:
                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                balanceOf[address(arg1)] -= arg3
                                if balanceOf[address(arg2)] > !arg3:
                                    revert with 0, 17
                                balanceOf[address(arg2)] += arg3
                                emit Transfer(arg3, address(arg1), address(arg2));
                            else:
                                if stor22[address(arg1)]:
                                    if arg3 and buyTax > -1 / arg3:
                                        revert with 0, 17
                                    if arg3 * buyTax / 10000:
                                        if not address(arg1):
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not this.address:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if balanceOf[address(arg1)] < arg3 * buyTax / 10000:
                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(arg1)] -= arg3 * buyTax / 10000
                                        if balanceOf[this.address] > !(arg3 * buyTax / 10000):
                                            revert with 0, 17
                                        balanceOf[this.address] += arg3 * buyTax / 10000
                                        emit Transfer((arg3 * buyTax / 10000), address(arg1), this.address);
                                    if arg3 < arg3 * buyTax / 10000:
                                        revert with 0, 17
                                    if not address(arg1):
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not address(arg2):
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if balanceOf[address(arg1)] < arg3 - (arg3 * buyTax / 10000):
                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * buyTax / 10000)
                                    if balanceOf[address(arg2)] > !(arg3 - (arg3 * buyTax / 10000)):
                                        revert with 0, 17
                                    balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * buyTax / 10000)
                                    emit Transfer((arg3 - (arg3 * buyTax / 10000)), address(arg1), address(arg2));
                                else:
                                    if stor23[address(arg1)]:
                                        if arg3 and buyTax > -1 / arg3:
                                            revert with 0, 17
                                        if arg3 * buyTax / 10000:
                                            if not address(arg1):
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not this.address:
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(arg1)] < arg3 * buyTax / 10000:
                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(arg1)] -= arg3 * buyTax / 10000
                                            if balanceOf[this.address] > !(arg3 * buyTax / 10000):
                                                revert with 0, 17
                                            balanceOf[this.address] += arg3 * buyTax / 10000
                                            emit Transfer((arg3 * buyTax / 10000), address(arg1), this.address);
                                        if arg3 < arg3 * buyTax / 10000:
                                            revert with 0, 17
                                        if not address(arg1):
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not address(arg2):
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if balanceOf[address(arg1)] < arg3 - (arg3 * buyTax / 10000):
                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * buyTax / 10000)
                                        if balanceOf[address(arg2)] > !(arg3 - (arg3 * buyTax / 10000)):
                                            revert with 0, 17
                                        balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * buyTax / 10000)
                                        emit Transfer((arg3 - (arg3 * buyTax / 10000)), address(arg1), address(arg2));
                                    else:
                                        if not stor23[address(arg2)]:
                                            if arg3 and sub_8124f7ac > -1 / arg3:
                                                revert with 0, 17
                                            if arg3 * sub_8124f7ac / 10000:
                                                if not address(arg1):
                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                if not this.address:
                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                if balanceOf[address(arg1)] < arg3 * sub_8124f7ac / 10000:
                                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                                balanceOf[address(arg1)] -= arg3 * sub_8124f7ac / 10000
                                                if balanceOf[this.address] > !(arg3 * sub_8124f7ac / 10000):
                                                    revert with 0, 17
                                                balanceOf[this.address] += arg3 * sub_8124f7ac / 10000
                                                emit Transfer((arg3 * sub_8124f7ac / 10000), address(arg1), this.address);
                                            if arg3 < arg3 * sub_8124f7ac / 10000:
                                                revert with 0, 17
                                            if not address(arg1):
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not address(arg2):
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(arg1)] < arg3 - (arg3 * sub_8124f7ac / 10000):
                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * sub_8124f7ac / 10000)
                                            if balanceOf[address(arg2)] > !(arg3 - (arg3 * sub_8124f7ac / 10000)):
                                                revert with 0, 17
                                            balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * sub_8124f7ac / 10000)
                                            emit Transfer((arg3 - (arg3 * sub_8124f7ac / 10000)), address(arg1), address(arg2));
                                        else:
                                            if not uint8(stor11.field_8):
                                                if arg3 and sellTax > -1 / arg3:
                                                    revert with 0, 17
                                                if arg3 * sellTax / 10000:
                                                    if not address(arg1):
                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                    if not this.address:
                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                    if balanceOf[address(arg1)] < arg3 * sellTax / 10000:
                                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                                    balanceOf[address(arg1)] -= arg3 * sellTax / 10000
                                                    if balanceOf[this.address] > !(arg3 * sellTax / 10000):
                                                        revert with 0, 17
                                                    balanceOf[this.address] += arg3 * sellTax / 10000
                                                    emit Transfer((arg3 * sellTax / 10000), address(arg1), this.address);
                                                if arg3 < arg3 * sellTax / 10000:
                                                    revert with 0, 17
                                                if not address(arg1):
                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                if not address(arg2):
                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                if balanceOf[address(arg1)] < arg3 - (arg3 * sellTax / 10000):
                                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                                balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * sellTax / 10000)
                                                if balanceOf[address(arg2)] > !(arg3 - (arg3 * sellTax / 10000)):
                                                    revert with 0, 17
                                                balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * sellTax / 10000)
                                                emit Transfer((arg3 - (arg3 * sellTax / 10000)), address(arg1), address(arg2));
                                            else:
                                                if 24 * 3600 > !launchTime:
                                                    revert with 0, 17
                                                if launchTime + (24 * 3600) <= block.timestamp:
                                                    if arg3 and sellTax > -1 / arg3:
                                                        revert with 0, 17
                                                    if arg3 * sellTax / 10000:
                                                        if not address(arg1):
                                                            revert with 0, 'ERC20: transfer from the zero address'
                                                        if not this.address:
                                                            revert with 0, 'ERC20: transfer to the zero address'
                                                        if balanceOf[address(arg1)] < arg3 * sellTax / 10000:
                                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                                        balanceOf[address(arg1)] -= arg3 * sellTax / 10000
                                                        if balanceOf[this.address] > !(arg3 * sellTax / 10000):
                                                            revert with 0, 17
                                                        balanceOf[this.address] += arg3 * sellTax / 10000
                                                        emit Transfer((arg3 * sellTax / 10000), address(arg1), this.address);
                                                    if arg3 < arg3 * sellTax / 10000:
                                                        revert with 0, 17
                                                    if not address(arg1):
                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                    if not address(arg2):
                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                    if balanceOf[address(arg1)] < arg3 - (arg3 * sellTax / 10000):
                                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * sellTax / 10000)
                                                    if balanceOf[address(arg2)] > !(arg3 - (arg3 * sellTax / 10000)):
                                                        revert with 0, 17
                                                    balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * sellTax / 10000)
                                                    emit Transfer((arg3 - (arg3 * sellTax / 10000)), address(arg1), address(arg2));
                                                else:
                                                    if launchTime + (24 * 3600) < block.timestamp:
                                                        revert with 0, 17
                                                    if sellTax and launchTime + -block.timestamp + (24 * 3600) > -1 / sellTax:
                                                        revert with 0, 17
                                                    if sellTax > !((24 * 3600 * sellTax) + (launchTime * sellTax) - (block.timestamp * sellTax) / 24 * 3600):
                                                        revert with 0, 17
                                                    if arg3 and sellTax + ((24 * 3600 * sellTax) + (launchTime * sellTax) - (block.timestamp * sellTax) / 24 * 3600) > -1 / arg3:
                                                        revert with 0, 17
                                                    if (sellTax * arg3) + ((24 * 3600 * sellTax) + (launchTime * sellTax) - (block.timestamp * sellTax) / 24 * 3600 * arg3) / 10000:
                                                        if not address(arg1):
                                                            revert with 0, 'ERC20: transfer from the zero address'
                                                        if not this.address:
                                                            revert with 0, 'ERC20: transfer to the zero address'
                                                        if balanceOf[address(arg1)] < (sellTax * arg3) + ((24 * 3600 * sellTax) + (launchTime * sellTax) - (block.timestamp * sellTax) / 24 * 3600 * arg3) / 10000:
                                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                                        balanceOf[address(arg1)] -= (sellTax * arg3) + ((24 * 3600 * sellTax) + (launchTime * sellTax) - (block.timestamp * sellTax) / 24 * 3600 * arg3) / 10000
                                                        if balanceOf[this.address] > !((sellTax * arg3) + ((24 * 3600 * sellTax) + (launchTime * sellTax) - (block.timestamp * sellTax) / 24 * 3600 * arg3) / 10000):
                                                            revert with 0, 17
                                                        balanceOf[this.address] += (sellTax * arg3) + ((24 * 3600 * sellTax) + (launchTime * sellTax) - (block.timestamp * sellTax) / 24 * 3600 * arg3) / 10000
                                                        emit Transfer(((sellTax * arg3) + ((24 * 3600 * sellTax) + (launchTime * sellTax) - (block.timestamp * sellTax) / 24 * 3600 * arg3) / 10000), address(arg1), this.address);
                                                    if arg3 < (sellTax * arg3) + ((24 * 3600 * sellTax) + (launchTime * sellTax) - (block.timestamp * sellTax) / 24 * 3600 * arg3) / 10000:
                                                        revert with 0, 17
                                                    if not address(arg1):
                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                    if not address(arg2):
                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                    if balanceOf[address(arg1)] < arg3 - ((sellTax * arg3) + ((24 * 3600 * sellTax) + (launchTime * sellTax) - (block.timestamp * sellTax) / 24 * 3600 * arg3) / 10000):
                                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + ((sellTax * arg3) + ((24 * 3600 * sellTax) + (launchTime * sellTax) - (block.timestamp * sellTax) / 24 * 3600 * arg3) / 10000)
                                                    if balanceOf[address(arg2)] > !(arg3 - ((sellTax * arg3) + ((24 * 3600 * sellTax) + (launchTime * sellTax) - (block.timestamp * sellTax) / 24 * 3600 * arg3) / 10000)):
                                                        revert with 0, 17
                                                    balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - ((sellTax * arg3) + ((24 * 3600 * sellTax) + (launchTime * sellTax) - (block.timestamp * sellTax) / 24 * 3600 * arg3) / 10000)
                                                    emit Transfer((arg3 - ((sellTax * arg3) + ((24 * 3600 * sellTax) + (launchTime * sellTax) - (block.timestamp * sellTax) / 24 * 3600 * arg3) / 10000)), address(arg1), address(arg2));
        if allowance[address(arg1)][msg.sender] < arg3:
            revert with 0, 'ERC20: transfer amount exceeds allowance'
        if not address(arg1):
            revert with 0, 'ERC20: approve from the zero address'
        if not msg.sender:
            revert with 0, 'ERC20: approve to the zero address'
        allowance[address(arg1)][address(msg.sender)] = allowance[address(arg1)][msg.sender] - arg3
        emit Approval((allowance[address(arg1)][msg.sender] - arg3), address(arg1), msg.sender);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if stor21[address(msg.sender)]:
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
    else:
        if stor21[address(arg1)]:
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
        else:
            if uint8(stor11.field_32):
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
            else:
                if not uint8(stor11.field_24):
                    revert with 0, 'Trading is disabled'
                if not LP_TOKENAddress:
                    if not arg2:
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
                    else:
                        if uint8(stor11.field_16):
                            if arg2 and 9900 > -1 / arg2:
                                revert with 0, 17
                            if 9900 * arg2 / 10000:
                                if not msg.sender:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                if not this.address:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                if balanceOf[address(msg.sender)] < 9900 * arg2 / 10000:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                balanceOf[address(msg.sender)] -= 9900 * arg2 / 10000
                                if balanceOf[this.address] > !(9900 * arg2 / 10000):
                                    revert with 0, 17
                                balanceOf[this.address] += 9900 * arg2 / 10000
                                emit Transfer((9900 * arg2 / 10000), msg.sender, this.address);
                            if arg2 < 9900 * arg2 / 10000:
                                revert with 0, 17
                            if not msg.sender:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                            if not arg1:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                            if balanceOf[address(msg.sender)] < arg2 - (9900 * arg2 / 10000):
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (9900 * arg2 / 10000)
                            if balanceOf[arg1] > !(arg2 - (9900 * arg2 / 10000)):
                                revert with 0, 17
                            balanceOf[arg1] = balanceOf[arg1] + arg2 - (9900 * arg2 / 10000)
                            emit Transfer((arg2 - (9900 * arg2 / 10000)), msg.sender, arg1);
                        else:
                            if stor22[address(arg1)]:
                                if arg2 and 0 > -1 / arg2:
                                    revert with 0, 17
                                if arg2 < 0:
                                    revert with 0, 17
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
                            else:
                                if stor22[address(msg.sender)]:
                                    if arg2 and buyTax > -1 / arg2:
                                        revert with 0, 17
                                    if arg2 * buyTax / 10000:
                                        if not msg.sender:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                        if not this.address:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                        if balanceOf[address(msg.sender)] < arg2 * buyTax / 10000:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(msg.sender)] -= arg2 * buyTax / 10000
                                        if balanceOf[this.address] > !(arg2 * buyTax / 10000):
                                            revert with 0, 17
                                        balanceOf[this.address] += arg2 * buyTax / 10000
                                        emit Transfer((arg2 * buyTax / 10000), msg.sender, this.address);
                                    if arg2 < arg2 * buyTax / 10000:
                                        revert with 0, 17
                                    if not msg.sender:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                    if not arg1:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                    if balanceOf[address(msg.sender)] < arg2 - (arg2 * buyTax / 10000):
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * buyTax / 10000)
                                    if balanceOf[arg1] > !(arg2 - (arg2 * buyTax / 10000)):
                                        revert with 0, 17
                                    balanceOf[arg1] = balanceOf[arg1] + arg2 - (arg2 * buyTax / 10000)
                                    emit Transfer((arg2 - (arg2 * buyTax / 10000)), msg.sender, arg1);
                                else:
                                    if stor23[address(msg.sender)]:
                                        if arg2 and buyTax > -1 / arg2:
                                            revert with 0, 17
                                        if arg2 * buyTax / 10000:
                                            if not msg.sender:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                            if not this.address:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(msg.sender)] < arg2 * buyTax / 10000:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(msg.sender)] -= arg2 * buyTax / 10000
                                            if balanceOf[this.address] > !(arg2 * buyTax / 10000):
                                                revert with 0, 17
                                            balanceOf[this.address] += arg2 * buyTax / 10000
                                            emit Transfer((arg2 * buyTax / 10000), msg.sender, this.address);
                                        if arg2 < arg2 * buyTax / 10000:
                                            revert with 0, 17
                                        if not msg.sender:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                        if not arg1:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                        if balanceOf[address(msg.sender)] < arg2 - (arg2 * buyTax / 10000):
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * buyTax / 10000)
                                        if balanceOf[arg1] > !(arg2 - (arg2 * buyTax / 10000)):
                                            revert with 0, 17
                                        balanceOf[arg1] = balanceOf[arg1] + arg2 - (arg2 * buyTax / 10000)
                                        emit Transfer((arg2 - (arg2 * buyTax / 10000)), msg.sender, arg1);
                                    else:
                                        if not stor23[address(arg1)]:
                                            if arg2 and sub_8124f7ac > -1 / arg2:
                                                revert with 0, 17
                                            if arg2 * sub_8124f7ac / 10000:
                                                if not msg.sender:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                                if not this.address:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                                if balanceOf[address(msg.sender)] < arg2 * sub_8124f7ac / 10000:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                                balanceOf[address(msg.sender)] -= arg2 * sub_8124f7ac / 10000
                                                if balanceOf[this.address] > !(arg2 * sub_8124f7ac / 10000):
                                                    revert with 0, 17
                                                balanceOf[this.address] += arg2 * sub_8124f7ac / 10000
                                                emit Transfer((arg2 * sub_8124f7ac / 10000), msg.sender, this.address);
                                            if arg2 < arg2 * sub_8124f7ac / 10000:
                                                revert with 0, 17
                                            if not msg.sender:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                            if not arg1:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(msg.sender)] < arg2 - (arg2 * sub_8124f7ac / 10000):
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * sub_8124f7ac / 10000)
                                            if balanceOf[arg1] > !(arg2 - (arg2 * sub_8124f7ac / 10000)):
                                                revert with 0, 17
                                            balanceOf[arg1] = balanceOf[arg1] + arg2 - (arg2 * sub_8124f7ac / 10000)
                                            emit Transfer((arg2 - (arg2 * sub_8124f7ac / 10000)), msg.sender, arg1);
                                        else:
                                            if not uint8(stor11.field_8):
                                                if arg2 and sellTax > -1 / arg2:
                                                    revert with 0, 17
                                                if arg2 * sellTax / 10000:
                                                    if not msg.sender:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                                    if not this.address:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                                    if balanceOf[address(msg.sender)] < arg2 * sellTax / 10000:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                                    balanceOf[address(msg.sender)] -= arg2 * sellTax / 10000
                                                    if balanceOf[this.address] > !(arg2 * sellTax / 10000):
                                                        revert with 0, 17
                                                    balanceOf[this.address] += arg2 * sellTax / 10000
                                                    emit Transfer((arg2 * sellTax / 10000), msg.sender, this.address);
                                                if arg2 < arg2 * sellTax / 10000:
                                                    revert with 0, 17
                                                if not msg.sender:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                                if not arg1:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                                if balanceOf[address(msg.sender)] < arg2 - (arg2 * sellTax / 10000):
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * sellTax / 10000)
                                                if balanceOf[arg1] > !(arg2 - (arg2 * sellTax / 10000)):
                                                    revert with 0, 17
                                                balanceOf[arg1] = balanceOf[arg1] + arg2 - (arg2 * sellTax / 10000)
                                                emit Transfer((arg2 - (arg2 * sellTax / 10000)), msg.sender, arg1);
                                            else:
                                                if 24 * 3600 > !launchTime:
                                                    revert with 0, 17
                                                if launchTime + (24 * 3600) <= block.timestamp:
                                                    if arg2 and sellTax > -1 / arg2:
                                                        revert with 0, 17
                                                    if arg2 * sellTax / 10000:
                                                        if not msg.sender:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                                        if not this.address:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                                        if balanceOf[address(msg.sender)] < arg2 * sellTax / 10000:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                                        balanceOf[address(msg.sender)] -= arg2 * sellTax / 10000
                                                        if balanceOf[this.address] > !(arg2 * sellTax / 10000):
                                                            revert with 0, 17
                                                        balanceOf[this.address] += arg2 * sellTax / 10000
                                                        emit Transfer((arg2 * sellTax / 10000), msg.sender, this.address);
                                                    if arg2 < arg2 * sellTax / 10000:
                                                        revert with 0, 17
                                                    if not msg.sender:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                                    if not arg1:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                                    if balanceOf[address(msg.sender)] < arg2 - (arg2 * sellTax / 10000):
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * sellTax / 10000)
                                                    if balanceOf[arg1] > !(arg2 - (arg2 * sellTax / 10000)):
                                                        revert with 0, 17
                                                    balanceOf[arg1] = balanceOf[arg1] + arg2 - (arg2 * sellTax / 10000)
                                                    emit Transfer((arg2 - (arg2 * sellTax / 10000)), msg.sender, arg1);
                                                else:
                                                    if launchTime + (24 * 3600) < block.timestamp:
                                                        revert with 0, 17
                                                    if sellTax and launchTime + -block.timestamp + (24 * 3600) > -1 / sellTax:
                                                        revert with 0, 17
                                                    if sellTax > !((24 * 3600 * sellTax) + (launchTime * sellTax) - (block.timestamp * sellTax) / 24 * 3600):
                                                        revert with 0, 17
                                                    if arg2 and sellTax + ((24 * 3600 * sellTax) + (launchTime * sellTax) - (block.timestamp * sellTax) / 24 * 3600) > -1 / arg2:
                                                        revert with 0, 17
                                                    if (sellTax * arg2) + ((24 * 3600 * sellTax) + (launchTime * sellTax) - (block.timestamp * sellTax) / 24 * 3600 * arg2) / 10000:
                                                        if not msg.sender:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                                        if not this.address:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                                        if balanceOf[address(msg.sender)] < (sellTax * arg2) + ((24 * 3600 * sellTax) + (launchTime * sellTax) - (block.timestamp * sellTax) / 24 * 3600 * arg2) / 10000:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                                        balanceOf[address(msg.sender)] -= (sellTax * arg2) + ((24 * 3600 * sellTax) + (launchTime * sellTax) - (block.timestamp * sellTax) / 24 * 3600 * arg2) / 10000
                                                        if balanceOf[this.address] > !((sellTax * arg2) + ((24 * 3600 * sellTax) + (launchTime * sellTax) - (block.timestamp * sellTax) / 24 * 3600 * arg2) / 10000):
                                                            revert with 0, 17
                                                        balanceOf[this.address] += (sellTax * arg2) + ((24 * 3600 * sellTax) + (launchTime * sellTax) - (block.timestamp * sellTax) / 24 * 3600 * arg2) / 10000
                                                        emit Transfer(((sellTax * arg2) + ((24 * 3600 * sellTax) + (launchTime * sellTax) - (block.timestamp * sellTax) / 24 * 3600 * arg2) / 10000), msg.sender, this.address);
                                                    if arg2 < (sellTax * arg2) + ((24 * 3600 * sellTax) + (launchTime * sellTax) - (block.timestamp * sellTax) / 24 * 3600 * arg2) / 10000:
                                                        revert with 0, 17
                                                    if not msg.sender:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                                    if not arg1:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                                    if balanceOf[address(msg.sender)] < arg2 - ((sellTax * arg2) + ((24 * 3600 * sellTax) + (launchTime * sellTax) - (block.timestamp * sellTax) / 24 * 3600 * arg2) / 10000):
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + ((sellTax * arg2) + ((24 * 3600 * sellTax) + (launchTime * sellTax) - (block.timestamp * sellTax) / 24 * 3600 * arg2) / 10000)
                                                    if balanceOf[arg1] > !(arg2 - ((sellTax * arg2) + ((24 * 3600 * sellTax) + (launchTime * sellTax) - (block.timestamp * sellTax) / 24 * 3600 * arg2) / 10000)):
                                                        revert with 0, 17
                                                    balanceOf[arg1] = balanceOf[arg1] + arg2 - ((sellTax * arg2) + ((24 * 3600 * sellTax) + (launchTime * sellTax) - (block.timestamp * sellTax) / 24 * 3600 * arg2) / 10000)
                                                    emit Transfer((arg2 - ((sellTax * arg2) + ((24 * 3600 * sellTax) + (launchTime * sellTax) - (block.timestamp * sellTax) / 24 * 3600 * arg2) / 10000)), msg.sender, arg1);
                else:
                    if not stor24:
                        if not arg2:
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
                        else:
                            if uint8(stor11.field_16):
                                if arg2 and 9900 > -1 / arg2:
                                    revert with 0, 17
                                if 9900 * arg2 / 10000:
                                    if not msg.sender:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                    if not this.address:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                    if balanceOf[address(msg.sender)] < 9900 * arg2 / 10000:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                    balanceOf[address(msg.sender)] -= 9900 * arg2 / 10000
                                    if balanceOf[this.address] > !(9900 * arg2 / 10000):
                                        revert with 0, 17
                                    balanceOf[this.address] += 9900 * arg2 / 10000
                                    emit Transfer((9900 * arg2 / 10000), msg.sender, this.address);
                                if arg2 < 9900 * arg2 / 10000:
                                    revert with 0, 17
                                if not msg.sender:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                if not arg1:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                if balanceOf[address(msg.sender)] < arg2 - (9900 * arg2 / 10000):
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (9900 * arg2 / 10000)
                                if balanceOf[arg1] > !(arg2 - (9900 * arg2 / 10000)):
                                    revert with 0, 17
                                balanceOf[arg1] = balanceOf[arg1] + arg2 - (9900 * arg2 / 10000)
                                emit Transfer((arg2 - (9900 * arg2 / 10000)), msg.sender, arg1);
                            else:
                                if stor22[address(arg1)]:
                                    if arg2 and 0 > -1 / arg2:
                                        revert with 0, 17
                                    if arg2 < 0:
                                        revert with 0, 17
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
                                else:
                                    if stor22[address(msg.sender)]:
                                        if arg2 and buyTax > -1 / arg2:
                                            revert with 0, 17
                                        if arg2 * buyTax / 10000:
                                            if not msg.sender:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                            if not this.address:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(msg.sender)] < arg2 * buyTax / 10000:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(msg.sender)] -= arg2 * buyTax / 10000
                                            if balanceOf[this.address] > !(arg2 * buyTax / 10000):
                                                revert with 0, 17
                                            balanceOf[this.address] += arg2 * buyTax / 10000
                                            emit Transfer((arg2 * buyTax / 10000), msg.sender, this.address);
                                        if arg2 < arg2 * buyTax / 10000:
                                            revert with 0, 17
                                        if not msg.sender:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                        if not arg1:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                        if balanceOf[address(msg.sender)] < arg2 - (arg2 * buyTax / 10000):
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * buyTax / 10000)
                                        if balanceOf[arg1] > !(arg2 - (arg2 * buyTax / 10000)):
                                            revert with 0, 17
                                        balanceOf[arg1] = balanceOf[arg1] + arg2 - (arg2 * buyTax / 10000)
                                        emit Transfer((arg2 - (arg2 * buyTax / 10000)), msg.sender, arg1);
                                    else:
                                        if stor23[address(msg.sender)]:
                                            if arg2 and buyTax > -1 / arg2:
                                                revert with 0, 17
                                            if arg2 * buyTax / 10000:
                                                if not msg.sender:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                                if not this.address:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                                if balanceOf[address(msg.sender)] < arg2 * buyTax / 10000:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                                balanceOf[address(msg.sender)] -= arg2 * buyTax / 10000
                                                if balanceOf[this.address] > !(arg2 * buyTax / 10000):
                                                    revert with 0, 17
                                                balanceOf[this.address] += arg2 * buyTax / 10000
                                                emit Transfer((arg2 * buyTax / 10000), msg.sender, this.address);
                                            if arg2 < arg2 * buyTax / 10000:
                                                revert with 0, 17
                                            if not msg.sender:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                            if not arg1:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(msg.sender)] < arg2 - (arg2 * buyTax / 10000):
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * buyTax / 10000)
                                            if balanceOf[arg1] > !(arg2 - (arg2 * buyTax / 10000)):
                                                revert with 0, 17
                                            balanceOf[arg1] = balanceOf[arg1] + arg2 - (arg2 * buyTax / 10000)
                                            emit Transfer((arg2 - (arg2 * buyTax / 10000)), msg.sender, arg1);
                                        else:
                                            if not stor23[address(arg1)]:
                                                if arg2 and sub_8124f7ac > -1 / arg2:
                                                    revert with 0, 17
                                                if arg2 * sub_8124f7ac / 10000:
                                                    if not msg.sender:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                                    if not this.address:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                                    if balanceOf[address(msg.sender)] < arg2 * sub_8124f7ac / 10000:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                                    balanceOf[address(msg.sender)] -= arg2 * sub_8124f7ac / 10000
                                                    if balanceOf[this.address] > !(arg2 * sub_8124f7ac / 10000):
                                                        revert with 0, 17
                                                    balanceOf[this.address] += arg2 * sub_8124f7ac / 10000
                                                    emit Transfer((arg2 * sub_8124f7ac / 10000), msg.sender, this.address);
                                                if arg2 < arg2 * sub_8124f7ac / 10000:
                                                    revert with 0, 17
                                                if not msg.sender:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                                if not arg1:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                                if balanceOf[address(msg.sender)] < arg2 - (arg2 * sub_8124f7ac / 10000):
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * sub_8124f7ac / 10000)
                                                if balanceOf[arg1] > !(arg2 - (arg2 * sub_8124f7ac / 10000)):
                                                    revert with 0, 17
                                                balanceOf[arg1] = balanceOf[arg1] + arg2 - (arg2 * sub_8124f7ac / 10000)
                                                emit Transfer((arg2 - (arg2 * sub_8124f7ac / 10000)), msg.sender, arg1);
                                            else:
                                                if not uint8(stor11.field_8):
                                                    if arg2 and sellTax > -1 / arg2:
                                                        revert with 0, 17
                                                    if arg2 * sellTax / 10000:
                                                        if not msg.sender:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                                        if not this.address:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                                        if balanceOf[address(msg.sender)] < arg2 * sellTax / 10000:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                                        balanceOf[address(msg.sender)] -= arg2 * sellTax / 10000
                                                        if balanceOf[this.address] > !(arg2 * sellTax / 10000):
                                                            revert with 0, 17
                                                        balanceOf[this.address] += arg2 * sellTax / 10000
                                                        emit Transfer((arg2 * sellTax / 10000), msg.sender, this.address);
                                                    if arg2 < arg2 * sellTax / 10000:
                                                        revert with 0, 17
                                                    if not msg.sender:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                                    if not arg1:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                                    if balanceOf[address(msg.sender)] < arg2 - (arg2 * sellTax / 10000):
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * sellTax / 10000)
                                                    if balanceOf[arg1] > !(arg2 - (arg2 * sellTax / 10000)):
                                                        revert with 0, 17
                                                    balanceOf[arg1] = balanceOf[arg1] + arg2 - (arg2 * sellTax / 10000)
                                                    emit Transfer((arg2 - (arg2 * sellTax / 10000)), msg.sender, arg1);
                                                else:
                                                    if 24 * 3600 > !launchTime:
                                                        revert with 0, 17
                                                    if launchTime + (24 * 3600) <= block.timestamp:
                                                        if arg2 and sellTax > -1 / arg2:
                                                            revert with 0, 17
                                                        if arg2 * sellTax / 10000:
                                                            if not msg.sender:
                                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                                            if not this.address:
                                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                                            if balanceOf[address(msg.sender)] < arg2 * sellTax / 10000:
                                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                                            balanceOf[address(msg.sender)] -= arg2 * sellTax / 10000
                                                            if balanceOf[this.address] > !(arg2 * sellTax / 10000):
                                                                revert with 0, 17
                                                            balanceOf[this.address] += arg2 * sellTax / 10000
                                                            emit Transfer((arg2 * sellTax / 10000), msg.sender, this.address);
                                                        if arg2 < arg2 * sellTax / 10000:
                                                            revert with 0, 17
                                                        if not msg.sender:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                                        if not arg1:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                                        if balanceOf[address(msg.sender)] < arg2 - (arg2 * sellTax / 10000):
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * sellTax / 10000)
                                                        if balanceOf[arg1] > !(arg2 - (arg2 * sellTax / 10000)):
                                                            revert with 0, 17
                                                        balanceOf[arg1] = balanceOf[arg1] + arg2 - (arg2 * sellTax / 10000)
                                                        emit Transfer((arg2 - (arg2 * sellTax / 10000)), msg.sender, arg1);
                                                    else:
                                                        if launchTime + (24 * 3600) < block.timestamp:
                                                            revert with 0, 17
                                                        if sellTax and launchTime + -block.timestamp + (24 * 3600) > -1 / sellTax:
                                                            revert with 0, 17
                                                        if sellTax > !((24 * 3600 * sellTax) + (launchTime * sellTax) - (block.timestamp * sellTax) / 24 * 3600):
                                                            revert with 0, 17
                                                        if arg2 and sellTax + ((24 * 3600 * sellTax) + (launchTime * sellTax) - (block.timestamp * sellTax) / 24 * 3600) > -1 / arg2:
                                                            revert with 0, 17
                                                        if (sellTax * arg2) + ((24 * 3600 * sellTax) + (launchTime * sellTax) - (block.timestamp * sellTax) / 24 * 3600 * arg2) / 10000:
                                                            if not msg.sender:
                                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                                            if not this.address:
                                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                                            if balanceOf[address(msg.sender)] < (sellTax * arg2) + ((24 * 3600 * sellTax) + (launchTime * sellTax) - (block.timestamp * sellTax) / 24 * 3600 * arg2) / 10000:
                                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                                            balanceOf[address(msg.sender)] -= (sellTax * arg2) + ((24 * 3600 * sellTax) + (launchTime * sellTax) - (block.timestamp * sellTax) / 24 * 3600 * arg2) / 10000
                                                            if balanceOf[this.address] > !((sellTax * arg2) + ((24 * 3600 * sellTax) + (launchTime * sellTax) - (block.timestamp * sellTax) / 24 * 3600 * arg2) / 10000):
                                                                revert with 0, 17
                                                            balanceOf[this.address] += (sellTax * arg2) + ((24 * 3600 * sellTax) + (launchTime * sellTax) - (block.timestamp * sellTax) / 24 * 3600 * arg2) / 10000
                                                            emit Transfer(((sellTax * arg2) + ((24 * 3600 * sellTax) + (launchTime * sellTax) - (block.timestamp * sellTax) / 24 * 3600 * arg2) / 10000), msg.sender, this.address);
                                                        if arg2 < (sellTax * arg2) + ((24 * 3600 * sellTax) + (launchTime * sellTax) - (block.timestamp * sellTax) / 24 * 3600 * arg2) / 10000:
                                                            revert with 0, 17
                                                        if not msg.sender:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                                        if not arg1:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                                        if balanceOf[address(msg.sender)] < arg2 - ((sellTax * arg2) + ((24 * 3600 * sellTax) + (launchTime * sellTax) - (block.timestamp * sellTax) / 24 * 3600 * arg2) / 10000):
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + ((sellTax * arg2) + ((24 * 3600 * sellTax) + (launchTime * sellTax) - (block.timestamp * sellTax) / 24 * 3600 * arg2) / 10000)
                                                        if balanceOf[arg1] > !(arg2 - ((sellTax * arg2) + ((24 * 3600 * sellTax) + (launchTime * sellTax) - (block.timestamp * sellTax) / 24 * 3600 * arg2) / 10000)):
                                                            revert with 0, 17
                                                        balanceOf[arg1] = balanceOf[arg1] + arg2 - ((sellTax * arg2) + ((24 * 3600 * sellTax) + (launchTime * sellTax) - (block.timestamp * sellTax) / 24 * 3600 * arg2) / 10000)
                                                        emit Transfer((arg2 - ((sellTax * arg2) + ((24 * 3600 * sellTax) + (launchTime * sellTax) - (block.timestamp * sellTax) / 24 * 3600 * arg2) / 10000)), msg.sender, arg1);
                    else:
                        if not stor23[address(arg1)]:
                            if not arg2:
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
                            else:
                                if uint8(stor11.field_16):
                                    if arg2 and 9900 > -1 / arg2:
                                        revert with 0, 17
                                    if 9900 * arg2 / 10000:
                                        if not msg.sender:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                        if not this.address:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                        if balanceOf[address(msg.sender)] < 9900 * arg2 / 10000:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(msg.sender)] -= 9900 * arg2 / 10000
                                        if balanceOf[this.address] > !(9900 * arg2 / 10000):
                                            revert with 0, 17
                                        balanceOf[this.address] += 9900 * arg2 / 10000
                                        emit Transfer((9900 * arg2 / 10000), msg.sender, this.address);
                                    if arg2 < 9900 * arg2 / 10000:
                                        revert with 0, 17
                                    if not msg.sender:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                    if not arg1:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                    if balanceOf[address(msg.sender)] < arg2 - (9900 * arg2 / 10000):
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (9900 * arg2 / 10000)
                                    if balanceOf[arg1] > !(arg2 - (9900 * arg2 / 10000)):
                                        revert with 0, 17
                                    balanceOf[arg1] = balanceOf[arg1] + arg2 - (9900 * arg2 / 10000)
                                    emit Transfer((arg2 - (9900 * arg2 / 10000)), msg.sender, arg1);
                                else:
                                    if stor22[address(arg1)]:
                                        if arg2 and 0 > -1 / arg2:
                                            revert with 0, 17
                                        if arg2 < 0:
                                            revert with 0, 17
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
                                    else:
                                        if stor22[address(msg.sender)]:
                                            if arg2 and buyTax > -1 / arg2:
                                                revert with 0, 17
                                            if arg2 * buyTax / 10000:
                                                if not msg.sender:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                                if not this.address:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                                if balanceOf[address(msg.sender)] < arg2 * buyTax / 10000:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                                balanceOf[address(msg.sender)] -= arg2 * buyTax / 10000
                                                if balanceOf[this.address] > !(arg2 * buyTax / 10000):
                                                    revert with 0, 17
                                                balanceOf[this.address] += arg2 * buyTax / 10000
                                                emit Transfer((arg2 * buyTax / 10000), msg.sender, this.address);
                                            if arg2 < arg2 * buyTax / 10000:
                                                revert with 0, 17
                                            if not msg.sender:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                            if not arg1:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(msg.sender)] < arg2 - (arg2 * buyTax / 10000):
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * buyTax / 10000)
                                            if balanceOf[arg1] > !(arg2 - (arg2 * buyTax / 10000)):
                                                revert with 0, 17
                                            balanceOf[arg1] = balanceOf[arg1] + arg2 - (arg2 * buyTax / 10000)
                                            emit Transfer((arg2 - (arg2 * buyTax / 10000)), msg.sender, arg1);
                                        else:
                                            if stor23[address(msg.sender)]:
                                                if arg2 and buyTax > -1 / arg2:
                                                    revert with 0, 17
                                                if arg2 * buyTax / 10000:
                                                    if not msg.sender:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                                    if not this.address:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                                    if balanceOf[address(msg.sender)] < arg2 * buyTax / 10000:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                                    balanceOf[address(msg.sender)] -= arg2 * buyTax / 10000
                                                    if balanceOf[this.address] > !(arg2 * buyTax / 10000):
                                                        revert with 0, 17
                                                    balanceOf[this.address] += arg2 * buyTax / 10000
                                                    emit Transfer((arg2 * buyTax / 10000), msg.sender, this.address);
                                                if arg2 < arg2 * buyTax / 10000:
                                                    revert with 0, 17
                                                if not msg.sender:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                                if not arg1:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                                if balanceOf[address(msg.sender)] < arg2 - (arg2 * buyTax / 10000):
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * buyTax / 10000)
                                                if balanceOf[arg1] > !(arg2 - (arg2 * buyTax / 10000)):
                                                    revert with 0, 17
                                                balanceOf[arg1] = balanceOf[arg1] + arg2 - (arg2 * buyTax / 10000)
                                                emit Transfer((arg2 - (arg2 * buyTax / 10000)), msg.sender, arg1);
                                            else:
                                                if not stor23[address(arg1)]:
                                                    if arg2 and sub_8124f7ac > -1 / arg2:
                                                        revert with 0, 17
                                                    if arg2 * sub_8124f7ac / 10000:
                                                        if not msg.sender:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                                        if not this.address:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                                        if balanceOf[address(msg.sender)] < arg2 * sub_8124f7ac / 10000:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                                        balanceOf[address(msg.sender)] -= arg2 * sub_8124f7ac / 10000
                                                        if balanceOf[this.address] > !(arg2 * sub_8124f7ac / 10000):
                                                            revert with 0, 17
                                                        balanceOf[this.address] += arg2 * sub_8124f7ac / 10000
                                                        emit Transfer((arg2 * sub_8124f7ac / 10000), msg.sender, this.address);
                                                    if arg2 < arg2 * sub_8124f7ac / 10000:
                                                        revert with 0, 17
                                                    if not msg.sender:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                                    if not arg1:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                                    if balanceOf[address(msg.sender)] < arg2 - (arg2 * sub_8124f7ac / 10000):
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * sub_8124f7ac / 10000)
                                                    if balanceOf[arg1] > !(arg2 - (arg2 * sub_8124f7ac / 10000)):
                                                        revert with 0, 17
                                                    balanceOf[arg1] = balanceOf[arg1] + arg2 - (arg2 * sub_8124f7ac / 10000)
                                                    emit Transfer((arg2 - (arg2 * sub_8124f7ac / 10000)), msg.sender, arg1);
                                                else:
                                                    if not uint8(stor11.field_8):
                                                        if arg2 and sellTax > -1 / arg2:
                                                            revert with 0, 17
                                                        if arg2 * sellTax / 10000:
                                                            if not msg.sender:
                                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                                            if not this.address:
                                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                                            if balanceOf[address(msg.sender)] < arg2 * sellTax / 10000:
                                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                                            balanceOf[address(msg.sender)] -= arg2 * sellTax / 10000
                                                            if balanceOf[this.address] > !(arg2 * sellTax / 10000):
                                                                revert with 0, 17
                                                            balanceOf[this.address] += arg2 * sellTax / 10000
                                                            emit Transfer((arg2 * sellTax / 10000), msg.sender, this.address);
                                                        if arg2 < arg2 * sellTax / 10000:
                                                            revert with 0, 17
                                                        if not msg.sender:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                                        if not arg1:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                                        if balanceOf[address(msg.sender)] < arg2 - (arg2 * sellTax / 10000):
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * sellTax / 10000)
                                                        if balanceOf[arg1] > !(arg2 - (arg2 * sellTax / 10000)):
                                                            revert with 0, 17
                                                        balanceOf[arg1] = balanceOf[arg1] + arg2 - (arg2 * sellTax / 10000)
                                                        emit Transfer((arg2 - (arg2 * sellTax / 10000)), msg.sender, arg1);
                                                    else:
                                                        if 24 * 3600 > !launchTime:
                                                            revert with 0, 17
                                                        if launchTime + (24 * 3600) <= block.timestamp:
                                                            if arg2 and sellTax > -1 / arg2:
                                                                revert with 0, 17
                                                            if arg2 * sellTax / 10000:
                                                                if not msg.sender:
                                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                                                if not this.address:
                                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                                                if balanceOf[address(msg.sender)] < arg2 * sellTax / 10000:
                                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                                                balanceOf[address(msg.sender)] -= arg2 * sellTax / 10000
                                                                if balanceOf[this.address] > !(arg2 * sellTax / 10000):
                                                                    revert with 0, 17
                                                                balanceOf[this.address] += arg2 * sellTax / 10000
                                                                emit Transfer((arg2 * sellTax / 10000), msg.sender, this.address);
                                                            if arg2 < arg2 * sellTax / 10000:
                                                                revert with 0, 17
                                                            if not msg.sender:
                                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                                            if not arg1:
                                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                                            if balanceOf[address(msg.sender)] < arg2 - (arg2 * sellTax / 10000):
                                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * sellTax / 10000)
                                                            if balanceOf[arg1] > !(arg2 - (arg2 * sellTax / 10000)):
                                                                revert with 0, 17
                                                            balanceOf[arg1] = balanceOf[arg1] + arg2 - (arg2 * sellTax / 10000)
                                                            emit Transfer((arg2 - (arg2 * sellTax / 10000)), msg.sender, arg1);
                                                        else:
                                                            if launchTime + (24 * 3600) < block.timestamp:
                                                                revert with 0, 17
                                                            if sellTax and launchTime + -block.timestamp + (24 * 3600) > -1 / sellTax:
                                                                revert with 0, 17
                                                            if sellTax > !((24 * 3600 * sellTax) + (launchTime * sellTax) - (block.timestamp * sellTax) / 24 * 3600):
                                                                revert with 0, 17
                                                            if arg2 and sellTax + ((24 * 3600 * sellTax) + (launchTime * sellTax) - (block.timestamp * sellTax) / 24 * 3600) > -1 / arg2:
                                                                revert with 0, 17
                                                            if (sellTax * arg2) + ((24 * 3600 * sellTax) + (launchTime * sellTax) - (block.timestamp * sellTax) / 24 * 3600 * arg2) / 10000:
                                                                if not msg.sender:
                                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                                                if not this.address:
                                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                                                if balanceOf[address(msg.sender)] < (sellTax * arg2) + ((24 * 3600 * sellTax) + (launchTime * sellTax) - (block.timestamp * sellTax) / 24 * 3600 * arg2) / 10000:
                                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                                                balanceOf[address(msg.sender)] -= (sellTax * arg2) + ((24 * 3600 * sellTax) + (launchTime * sellTax) - (block.timestamp * sellTax) / 24 * 3600 * arg2) / 10000
                                                                if balanceOf[this.address] > !((sellTax * arg2) + ((24 * 3600 * sellTax) + (launchTime * sellTax) - (block.timestamp * sellTax) / 24 * 3600 * arg2) / 10000):
                                                                    revert with 0, 17
                                                                balanceOf[this.address] += (sellTax * arg2) + ((24 * 3600 * sellTax) + (launchTime * sellTax) - (block.timestamp * sellTax) / 24 * 3600 * arg2) / 10000
                                                                emit Transfer(((sellTax * arg2) + ((24 * 3600 * sellTax) + (launchTime * sellTax) - (block.timestamp * sellTax) / 24 * 3600 * arg2) / 10000), msg.sender, this.address);
                                                            if arg2 < (sellTax * arg2) + ((24 * 3600 * sellTax) + (launchTime * sellTax) - (block.timestamp * sellTax) / 24 * 3600 * arg2) / 10000:
                                                                revert with 0, 17
                                                            if not msg.sender:
                                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                                            if not arg1:
                                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                                            if balanceOf[address(msg.sender)] < arg2 - ((sellTax * arg2) + ((24 * 3600 * sellTax) + (launchTime * sellTax) - (block.timestamp * sellTax) / 24 * 3600 * arg2) / 10000):
                                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + ((sellTax * arg2) + ((24 * 3600 * sellTax) + (launchTime * sellTax) - (block.timestamp * sellTax) / 24 * 3600 * arg2) / 10000)
                                                            if balanceOf[arg1] > !(arg2 - ((sellTax * arg2) + ((24 * 3600 * sellTax) + (launchTime * sellTax) - (block.timestamp * sellTax) / 24 * 3600 * arg2) / 10000)):
                                                                revert with 0, 17
                                                            balanceOf[arg1] = balanceOf[arg1] + arg2 - ((sellTax * arg2) + ((24 * 3600 * sellTax) + (launchTime * sellTax) - (block.timestamp * sellTax) / 24 * 3600 * arg2) / 10000)
                                                            emit Transfer((arg2 - ((sellTax * arg2) + ((24 * 3600 * sellTax) + (launchTime * sellTax) - (block.timestamp * sellTax) / 24 * 3600 * arg2) / 10000)), msg.sender, arg1);
                        else:
                            if not uint8(stor11.field_0):
                                if not arg2:
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
                                else:
                                    if uint8(stor11.field_16):
                                        if arg2 and 9900 > -1 / arg2:
                                            revert with 0, 17
                                        if 9900 * arg2 / 10000:
                                            if not msg.sender:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                            if not this.address:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(msg.sender)] < 9900 * arg2 / 10000:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(msg.sender)] -= 9900 * arg2 / 10000
                                            if balanceOf[this.address] > !(9900 * arg2 / 10000):
                                                revert with 0, 17
                                            balanceOf[this.address] += 9900 * arg2 / 10000
                                            emit Transfer((9900 * arg2 / 10000), msg.sender, this.address);
                                        if arg2 < 9900 * arg2 / 10000:
                                            revert with 0, 17
                                        if not msg.sender:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                        if not arg1:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                        if balanceOf[address(msg.sender)] < arg2 - (9900 * arg2 / 10000):
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (9900 * arg2 / 10000)
                                        if balanceOf[arg1] > !(arg2 - (9900 * arg2 / 10000)):
                                            revert with 0, 17
                                        balanceOf[arg1] = balanceOf[arg1] + arg2 - (9900 * arg2 / 10000)
                                        emit Transfer((arg2 - (9900 * arg2 / 10000)), msg.sender, arg1);
                                    else:
                                        if stor22[address(arg1)]:
                                            if arg2 and 0 > -1 / arg2:
                                                revert with 0, 17
                                            if arg2 < 0:
                                                revert with 0, 17
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
                                        else:
                                            if stor22[address(msg.sender)]:
                                                if arg2 and buyTax > -1 / arg2:
                                                    revert with 0, 17
                                                if arg2 * buyTax / 10000:
                                                    if not msg.sender:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                                    if not this.address:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                                    if balanceOf[address(msg.sender)] < arg2 * buyTax / 10000:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                                    balanceOf[address(msg.sender)] -= arg2 * buyTax / 10000
                                                    if balanceOf[this.address] > !(arg2 * buyTax / 10000):
                                                        revert with 0, 17
                                                    balanceOf[this.address] += arg2 * buyTax / 10000
                                                    emit Transfer((arg2 * buyTax / 10000), msg.sender, this.address);
                                                if arg2 < arg2 * buyTax / 10000:
                                                    revert with 0, 17
                                                if not msg.sender:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                                if not arg1:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                                if balanceOf[address(msg.sender)] < arg2 - (arg2 * buyTax / 10000):
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * buyTax / 10000)
                                                if balanceOf[arg1] > !(arg2 - (arg2 * buyTax / 10000)):
                                                    revert with 0, 17
                                                balanceOf[arg1] = balanceOf[arg1] + arg2 - (arg2 * buyTax / 10000)
                                                emit Transfer((arg2 - (arg2 * buyTax / 10000)), msg.sender, arg1);
                                            else:
                                                if stor23[address(msg.sender)]:
                                                    if arg2 and buyTax > -1 / arg2:
                                                        revert with 0, 17
                                                    if arg2 * buyTax / 10000:
                                                        if not msg.sender:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                                        if not this.address:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                                        if balanceOf[address(msg.sender)] < arg2 * buyTax / 10000:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                                        balanceOf[address(msg.sender)] -= arg2 * buyTax / 10000
                                                        if balanceOf[this.address] > !(arg2 * buyTax / 10000):
                                                            revert with 0, 17
                                                        balanceOf[this.address] += arg2 * buyTax / 10000
                                                        emit Transfer((arg2 * buyTax / 10000), msg.sender, this.address);
                                                    if arg2 < arg2 * buyTax / 10000:
                                                        revert with 0, 17
                                                    if not msg.sender:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                                    if not arg1:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                                    if balanceOf[address(msg.sender)] < arg2 - (arg2 * buyTax / 10000):
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * buyTax / 10000)
                                                    if balanceOf[arg1] > !(arg2 - (arg2 * buyTax / 10000)):
                                                        revert with 0, 17
                                                    balanceOf[arg1] = balanceOf[arg1] + arg2 - (arg2 * buyTax / 10000)
                                                    emit Transfer((arg2 - (arg2 * buyTax / 10000)), msg.sender, arg1);
                                                else:
                                                    if not stor23[address(arg1)]:
                                                        if arg2 and sub_8124f7ac > -1 / arg2:
                                                            revert with 0, 17
                                                        if arg2 * sub_8124f7ac / 10000:
                                                            if not msg.sender:
                                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                                            if not this.address:
                                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                                            if balanceOf[address(msg.sender)] < arg2 * sub_8124f7ac / 10000:
                                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                                            balanceOf[address(msg.sender)] -= arg2 * sub_8124f7ac / 10000
                                                            if balanceOf[this.address] > !(arg2 * sub_8124f7ac / 10000):
                                                                revert with 0, 17
                                                            balanceOf[this.address] += arg2 * sub_8124f7ac / 10000
                                                            emit Transfer((arg2 * sub_8124f7ac / 10000), msg.sender, this.address);
                                                        if arg2 < arg2 * sub_8124f7ac / 10000:
                                                            revert with 0, 17
                                                        if not msg.sender:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                                        if not arg1:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                                        if balanceOf[address(msg.sender)] < arg2 - (arg2 * sub_8124f7ac / 10000):
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * sub_8124f7ac / 10000)
                                                        if balanceOf[arg1] > !(arg2 - (arg2 * sub_8124f7ac / 10000)):
                                                            revert with 0, 17
                                                        balanceOf[arg1] = balanceOf[arg1] + arg2 - (arg2 * sub_8124f7ac / 10000)
                                                        emit Transfer((arg2 - (arg2 * sub_8124f7ac / 10000)), msg.sender, arg1);
                                                    else:
                                                        if not uint8(stor11.field_8):
                                                            if arg2 and sellTax > -1 / arg2:
                                                                revert with 0, 17
                                                            if arg2 * sellTax / 10000:
                                                                if not msg.sender:
                                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                                                if not this.address:
                                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                                                if balanceOf[address(msg.sender)] < arg2 * sellTax / 10000:
                                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                                                balanceOf[address(msg.sender)] -= arg2 * sellTax / 10000
                                                                if balanceOf[this.address] > !(arg2 * sellTax / 10000):
                                                                    revert with 0, 17
                                                                balanceOf[this.address] += arg2 * sellTax / 10000
                                                                emit Transfer((arg2 * sellTax / 10000), msg.sender, this.address);
                                                            if arg2 < arg2 * sellTax / 10000:
                                                                revert with 0, 17
                                                            if not msg.sender:
                                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                                            if not arg1:
                                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                                            if balanceOf[address(msg.sender)] < arg2 - (arg2 * sellTax / 10000):
                                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * sellTax / 10000)
                                                            if balanceOf[arg1] > !(arg2 - (arg2 * sellTax / 10000)):
                                                                revert with 0, 17
                                                            balanceOf[arg1] = balanceOf[arg1] + arg2 - (arg2 * sellTax / 10000)
                                                            emit Transfer((arg2 - (arg2 * sellTax / 10000)), msg.sender, arg1);
                                                        else:
                                                            if 24 * 3600 > !launchTime:
                                                                revert with 0, 17
                                                            if launchTime + (24 * 3600) <= block.timestamp:
                                                                if arg2 and sellTax > -1 / arg2:
                                                                    revert with 0, 17
                                                                if arg2 * sellTax / 10000:
                                                                    if not msg.sender:
                                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                                                    if not this.address:
                                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                                                    if balanceOf[address(msg.sender)] < arg2 * sellTax / 10000:
                                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                                                    balanceOf[address(msg.sender)] -= arg2 * sellTax / 10000
                                                                    if balanceOf[this.address] > !(arg2 * sellTax / 10000):
                                                                        revert with 0, 17
                                                                    balanceOf[this.address] += arg2 * sellTax / 10000
                                                                    emit Transfer((arg2 * sellTax / 10000), msg.sender, this.address);
                                                                if arg2 < arg2 * sellTax / 10000:
                                                                    revert with 0, 17
                                                                if not msg.sender:
                                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                                                if not arg1:
                                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                                                if balanceOf[address(msg.sender)] < arg2 - (arg2 * sellTax / 10000):
                                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * sellTax / 10000)
                                                                if balanceOf[arg1] > !(arg2 - (arg2 * sellTax / 10000)):
                                                                    revert with 0, 17
                                                                balanceOf[arg1] = balanceOf[arg1] + arg2 - (arg2 * sellTax / 10000)
                                                                emit Transfer((arg2 - (arg2 * sellTax / 10000)), msg.sender, arg1);
                                                            else:
                                                                if launchTime + (24 * 3600) < block.timestamp:
                                                                    revert with 0, 17
                                                                if sellTax and launchTime + -block.timestamp + (24 * 3600) > -1 / sellTax:
                                                                    revert with 0, 17
                                                                if sellTax > !((24 * 3600 * sellTax) + (launchTime * sellTax) - (block.timestamp * sellTax) / 24 * 3600):
                                                                    revert with 0, 17
                                                                if arg2 and sellTax + ((24 * 3600 * sellTax) + (launchTime * sellTax) - (block.timestamp * sellTax) / 24 * 3600) > -1 / arg2:
                                                                    revert with 0, 17
                                                                if (sellTax * arg2) + ((24 * 3600 * sellTax) + (launchTime * sellTax) - (block.timestamp * sellTax) / 24 * 3600 * arg2) / 10000:
                                                                    if not msg.sender:
                                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                                                    if not this.address:
                                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                                                    if balanceOf[address(msg.sender)] < (sellTax * arg2) + ((24 * 3600 * sellTax) + (launchTime * sellTax) - (block.timestamp * sellTax) / 24 * 3600 * arg2) / 10000:
                                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                                                    balanceOf[address(msg.sender)] -= (sellTax * arg2) + ((24 * 3600 * sellTax) + (launchTime * sellTax) - (block.timestamp * sellTax) / 24 * 3600 * arg2) / 10000
                                                                    if balanceOf[this.address] > !((sellTax * arg2) + ((24 * 3600 * sellTax) + (launchTime * sellTax) - (block.timestamp * sellTax) / 24 * 3600 * arg2) / 10000):
                                                                        revert with 0, 17
                                                                    balanceOf[this.address] += (sellTax * arg2) + ((24 * 3600 * sellTax) + (launchTime * sellTax) - (block.timestamp * sellTax) / 24 * 3600 * arg2) / 10000
                                                                    emit Transfer(((sellTax * arg2) + ((24 * 3600 * sellTax) + (launchTime * sellTax) - (block.timestamp * sellTax) / 24 * 3600 * arg2) / 10000), msg.sender, this.address);
                                                                if arg2 < (sellTax * arg2) + ((24 * 3600 * sellTax) + (launchTime * sellTax) - (block.timestamp * sellTax) / 24 * 3600 * arg2) / 10000:
                                                                    revert with 0, 17
                                                                if not msg.sender:
                                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                                                if not arg1:
                                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                                                if balanceOf[address(msg.sender)] < arg2 - ((sellTax * arg2) + ((24 * 3600 * sellTax) + (launchTime * sellTax) - (block.timestamp * sellTax) / 24 * 3600 * arg2) / 10000):
                                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + ((sellTax * arg2) + ((24 * 3600 * sellTax) + (launchTime * sellTax) - (block.timestamp * sellTax) / 24 * 3600 * arg2) / 10000)
                                                                if balanceOf[arg1] > !(arg2 - ((sellTax * arg2) + ((24 * 3600 * sellTax) + (launchTime * sellTax) - (block.timestamp * sellTax) / 24 * 3600 * arg2) / 10000)):
                                                                    revert with 0, 17
                                                                balanceOf[arg1] = balanceOf[arg1] + arg2 - ((sellTax * arg2) + ((24 * 3600 * sellTax) + (launchTime * sellTax) - (block.timestamp * sellTax) / 24 * 3600 * arg2) / 10000)
                                                                emit Transfer((arg2 - ((sellTax * arg2) + ((24 * 3600 * sellTax) + (launchTime * sellTax) - (block.timestamp * sellTax) / 24 * 3600 * arg2) / 10000)), msg.sender, arg1);
                            else:
                                mem[0] = this.address
                                if balanceOf[this.address] < swapThreshold:
                                    if not arg2:
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
                                    else:
                                        if uint8(stor11.field_16):
                                            if arg2 and 9900 > -1 / arg2:
                                                revert with 0, 17
                                            if 9900 * arg2 / 10000:
                                                if not msg.sender:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                                if not this.address:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                                if balanceOf[address(msg.sender)] < 9900 * arg2 / 10000:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                                balanceOf[address(msg.sender)] -= 9900 * arg2 / 10000
                                                if balanceOf[this.address] > !(9900 * arg2 / 10000):
                                                    revert with 0, 17
                                                balanceOf[this.address] += 9900 * arg2 / 10000
                                                emit Transfer((9900 * arg2 / 10000), msg.sender, this.address);
                                            if arg2 < 9900 * arg2 / 10000:
                                                revert with 0, 17
                                            if not msg.sender:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                            if not arg1:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(msg.sender)] < arg2 - (9900 * arg2 / 10000):
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (9900 * arg2 / 10000)
                                            if balanceOf[arg1] > !(arg2 - (9900 * arg2 / 10000)):
                                                revert with 0, 17
                                            balanceOf[arg1] = balanceOf[arg1] + arg2 - (9900 * arg2 / 10000)
                                            emit Transfer((arg2 - (9900 * arg2 / 10000)), msg.sender, arg1);
                                        else:
                                            if stor22[address(arg1)]:
                                                if arg2 and 0 > -1 / arg2:
                                                    revert with 0, 17
                                                if arg2 < 0:
                                                    revert with 0, 17
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
                                            else:
                                                if stor22[address(msg.sender)]:
                                                    if arg2 and buyTax > -1 / arg2:
                                                        revert with 0, 17
                                                    if arg2 * buyTax / 10000:
                                                        if not msg.sender:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                                        if not this.address:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                                        if balanceOf[address(msg.sender)] < arg2 * buyTax / 10000:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                                        balanceOf[address(msg.sender)] -= arg2 * buyTax / 10000
                                                        if balanceOf[this.address] > !(arg2 * buyTax / 10000):
                                                            revert with 0, 17
                                                        balanceOf[this.address] += arg2 * buyTax / 10000
                                                        emit Transfer((arg2 * buyTax / 10000), msg.sender, this.address);
                                                    if arg2 < arg2 * buyTax / 10000:
                                                        revert with 0, 17
                                                    if not msg.sender:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                                    if not arg1:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                                    if balanceOf[address(msg.sender)] < arg2 - (arg2 * buyTax / 10000):
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * buyTax / 10000)
                                                    if balanceOf[arg1] > !(arg2 - (arg2 * buyTax / 10000)):
                                                        revert with 0, 17
                                                    balanceOf[arg1] = balanceOf[arg1] + arg2 - (arg2 * buyTax / 10000)
                                                    emit Transfer((arg2 - (arg2 * buyTax / 10000)), msg.sender, arg1);
                                                else:
                                                    if stor23[address(msg.sender)]:
                                                        if arg2 and buyTax > -1 / arg2:
                                                            revert with 0, 17
                                                        if arg2 * buyTax / 10000:
                                                            if not msg.sender:
                                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                                            if not this.address:
                                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                                            if balanceOf[address(msg.sender)] < arg2 * buyTax / 10000:
                                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                                            balanceOf[address(msg.sender)] -= arg2 * buyTax / 10000
                                                            if balanceOf[this.address] > !(arg2 * buyTax / 10000):
                                                                revert with 0, 17
                                                            balanceOf[this.address] += arg2 * buyTax / 10000
                                                            emit Transfer((arg2 * buyTax / 10000), msg.sender, this.address);
                                                        if arg2 < arg2 * buyTax / 10000:
                                                            revert with 0, 17
                                                        if not msg.sender:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                                        if not arg1:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                                        if balanceOf[address(msg.sender)] < arg2 - (arg2 * buyTax / 10000):
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * buyTax / 10000)
                                                        if balanceOf[arg1] > !(arg2 - (arg2 * buyTax / 10000)):
                                                            revert with 0, 17
                                                        balanceOf[arg1] = balanceOf[arg1] + arg2 - (arg2 * buyTax / 10000)
                                                        emit Transfer((arg2 - (arg2 * buyTax / 10000)), msg.sender, arg1);
                                                    else:
                                                        if not stor23[address(arg1)]:
                                                            if arg2 and sub_8124f7ac > -1 / arg2:
                                                                revert with 0, 17
                                                            if arg2 * sub_8124f7ac / 10000:
                                                                if not msg.sender:
                                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                                                if not this.address:
                                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                                                if balanceOf[address(msg.sender)] < arg2 * sub_8124f7ac / 10000:
                                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                                                balanceOf[address(msg.sender)] -= arg2 * sub_8124f7ac / 10000
                                                                if balanceOf[this.address] > !(arg2 * sub_8124f7ac / 10000):
                                                                    revert with 0, 17
                                                                balanceOf[this.address] += arg2 * sub_8124f7ac / 10000
                                                                emit Transfer((arg2 * sub_8124f7ac / 10000), msg.sender, this.address);
                                                            if arg2 < arg2 * sub_8124f7ac / 10000:
                                                                revert with 0, 17
                                                            if not msg.sender:
                                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                                            if not arg1:
                                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                                            if balanceOf[address(msg.sender)] < arg2 - (arg2 * sub_8124f7ac / 10000):
                                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * sub_8124f7ac / 10000)
                                                            if balanceOf[arg1] > !(arg2 - (arg2 * sub_8124f7ac / 10000)):
                                                                revert with 0, 17
                                                            balanceOf[arg1] = balanceOf[arg1] + arg2 - (arg2 * sub_8124f7ac / 10000)
                                                            emit Transfer((arg2 - (arg2 * sub_8124f7ac / 10000)), msg.sender, arg1);
                                                        else:
                                                            if not uint8(stor11.field_8):
                                                                if arg2 and sellTax > -1 / arg2:
                                                                    revert with 0, 17
                                                                if arg2 * sellTax / 10000:
                                                                    if not msg.sender:
                                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                                                    if not this.address:
                                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                                                    if balanceOf[address(msg.sender)] < arg2 * sellTax / 10000:
                                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                                                    balanceOf[address(msg.sender)] -= arg2 * sellTax / 10000
                                                                    if balanceOf[this.address] > !(arg2 * sellTax / 10000):
                                                                        revert with 0, 17
                                                                    balanceOf[this.address] += arg2 * sellTax / 10000
                                                                    emit Transfer((arg2 * sellTax / 10000), msg.sender, this.address);
                                                                if arg2 < arg2 * sellTax / 10000:
                                                                    revert with 0, 17
                                                                if not msg.sender:
                                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                                                if not arg1:
                                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                                                if balanceOf[address(msg.sender)] < arg2 - (arg2 * sellTax / 10000):
                                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * sellTax / 10000)
                                                                if balanceOf[arg1] > !(arg2 - (arg2 * sellTax / 10000)):
                                                                    revert with 0, 17
                                                                balanceOf[arg1] = balanceOf[arg1] + arg2 - (arg2 * sellTax / 10000)
                                                                emit Transfer((arg2 - (arg2 * sellTax / 10000)), msg.sender, arg1);
                                                            else:
                                                                if 24 * 3600 > !launchTime:
                                                                    revert with 0, 17
                                                                if launchTime + (24 * 3600) <= block.timestamp:
                                                                    if arg2 and sellTax > -1 / arg2:
                                                                        revert with 0, 17
                                                                    if arg2 * sellTax / 10000:
                                                                        if not msg.sender:
                                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                                                        if not this.address:
                                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                                                        if balanceOf[address(msg.sender)] < arg2 * sellTax / 10000:
                                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                                                        balanceOf[address(msg.sender)] -= arg2 * sellTax / 10000
                                                                        if balanceOf[this.address] > !(arg2 * sellTax / 10000):
                                                                            revert with 0, 17
                                                                        balanceOf[this.address] += arg2 * sellTax / 10000
                                                                        emit Transfer((arg2 * sellTax / 10000), msg.sender, this.address);
                                                                    if arg2 < arg2 * sellTax / 10000:
                                                                        revert with 0, 17
                                                                    if not msg.sender:
                                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                                                    if not arg1:
                                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                                                    if balanceOf[address(msg.sender)] < arg2 - (arg2 * sellTax / 10000):
                                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * sellTax / 10000)
                                                                    if balanceOf[arg1] > !(arg2 - (arg2 * sellTax / 10000)):
                                                                        revert with 0, 17
                                                                    balanceOf[arg1] = balanceOf[arg1] + arg2 - (arg2 * sellTax / 10000)
                                                                    emit Transfer((arg2 - (arg2 * sellTax / 10000)), msg.sender, arg1);
                                                                else:
                                                                    if launchTime + (24 * 3600) < block.timestamp:
                                                                        revert with 0, 17
                                                                    if sellTax and launchTime + -block.timestamp + (24 * 3600) > -1 / sellTax:
                                                                        revert with 0, 17
                                                                    if sellTax > !((24 * 3600 * sellTax) + (launchTime * sellTax) - (block.timestamp * sellTax) / 24 * 3600):
                                                                        revert with 0, 17
                                                                    if arg2 and sellTax + ((24 * 3600 * sellTax) + (launchTime * sellTax) - (block.timestamp * sellTax) / 24 * 3600) > -1 / arg2:
                                                                        revert with 0, 17
                                                                    if (sellTax * arg2) + ((24 * 3600 * sellTax) + (launchTime * sellTax) - (block.timestamp * sellTax) / 24 * 3600 * arg2) / 10000:
                                                                        if not msg.sender:
                                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                                                        if not this.address:
                                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                                                        if balanceOf[address(msg.sender)] < (sellTax * arg2) + ((24 * 3600 * sellTax) + (launchTime * sellTax) - (block.timestamp * sellTax) / 24 * 3600 * arg2) / 10000:
                                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                                                        balanceOf[address(msg.sender)] -= (sellTax * arg2) + ((24 * 3600 * sellTax) + (launchTime * sellTax) - (block.timestamp * sellTax) / 24 * 3600 * arg2) / 10000
                                                                        if balanceOf[this.address] > !((sellTax * arg2) + ((24 * 3600 * sellTax) + (launchTime * sellTax) - (block.timestamp * sellTax) / 24 * 3600 * arg2) / 10000):
                                                                            revert with 0, 17
                                                                        balanceOf[this.address] += (sellTax * arg2) + ((24 * 3600 * sellTax) + (launchTime * sellTax) - (block.timestamp * sellTax) / 24 * 3600 * arg2) / 10000
                                                                        emit Transfer(((sellTax * arg2) + ((24 * 3600 * sellTax) + (launchTime * sellTax) - (block.timestamp * sellTax) / 24 * 3600 * arg2) / 10000), msg.sender, this.address);
                                                                    if arg2 < (sellTax * arg2) + ((24 * 3600 * sellTax) + (launchTime * sellTax) - (block.timestamp * sellTax) / 24 * 3600 * arg2) / 10000:
                                                                        revert with 0, 17
                                                                    if not msg.sender:
                                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                                                    if not arg1:
                                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                                                    if balanceOf[address(msg.sender)] < arg2 - ((sellTax * arg2) + ((24 * 3600 * sellTax) + (launchTime * sellTax) - (block.timestamp * sellTax) / 24 * 3600 * arg2) / 10000):
                                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + ((sellTax * arg2) + ((24 * 3600 * sellTax) + (launchTime * sellTax) - (block.timestamp * sellTax) / 24 * 3600 * arg2) / 10000)
                                                                    if balanceOf[arg1] > !(arg2 - ((sellTax * arg2) + ((24 * 3600 * sellTax) + (launchTime * sellTax) - (block.timestamp * sellTax) / 24 * 3600 * arg2) / 10000)):
                                                                        revert with 0, 17
                                                                    balanceOf[arg1] = balanceOf[arg1] + arg2 - ((sellTax * arg2) + ((24 * 3600 * sellTax) + (launchTime * sellTax) - (block.timestamp * sellTax) / 24 * 3600 * arg2) / 10000)
                                                                    emit Transfer((arg2 - ((sellTax * arg2) + ((24 * 3600 * sellTax) + (launchTime * sellTax) - (block.timestamp * sellTax) / 24 * 3600 * arg2) / 10000)), msg.sender, arg1);
                                else:
                                    uint8(stor11.field_32) = 1
                                    mem[96] = 2
                                    mem[128] = this.address
                                    mem[160] = LP_TOKENAddress
                                    if swapThreshold and sub_15291cd4 > -1 / swapThreshold:
                                        revert with 0, 17
                                    if not stor18:
                                        revert with 0, 18
                                    if swapThreshold < swapThreshold * sub_15291cd4 / stor18 / 2:
                                        revert with 0, 17
                                    mem[192] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                                    mem[196] = swapThreshold - (swapThreshold * sub_15291cd4 / stor18 / 2)
                                    mem[228] = 0
                                    mem[260] = 160
                                    mem[356] = 2
                                    idx = 0
                                    s = 388
                                    t = 128
                                    while idx < 2:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[292] = this.address
                                    mem[324] = block.timestamp
                                    require ext_code.size(ROUTERAddress)
                                    call ROUTERAddress.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args swapThreshold - (swapThreshold * sub_15291cd4 / stor18 / 2), 0, 160, address(this.address), block.timestamp, 2, mem[388 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = ceil32(return_data.size) + 192
                                    require return_data.size >= 32
                                    require mem[192 len 4], Mask(224, 32, swapThreshold - (swapThreshold * sub_15291cd4 / stor18 / 2)) >> 32 <= test266151307()
                                    require mem[192 len 4], Mask(224, 32, swapThreshold - (swapThreshold * sub_15291cd4 / stor18 / 2)) >> 32 + 223 < return_data.size + 192
                                    if mem[mem[192 len 4], Mask(224, 32, swapThreshold - (swapThreshold * sub_15291cd4 / stor18 / 2)) >> 32 + 192] > test266151307():
                                        revert with 0, 65
                                    if ceil32(return_data.size) + ceil32(32 * mem[mem[192 len 4], Mask(224, 32, swapThreshold - (swapThreshold * sub_15291cd4 / stor18 / 2)) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[mem[192 len 4], Mask(224, 32, swapThreshold - (swapThreshold * sub_15291cd4 / stor18 / 2)) >> 32 + 192]) + 1 < 0:
                                        revert with 0, 65
                                    require return_data.size >= mem[192 len 4], Mask(224, 32, swapThreshold - (swapThreshold * sub_15291cd4 / stor18 / 2)) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, swapThreshold - (swapThreshold * sub_15291cd4 / stor18 / 2)) >> 32 + 192]) + 32
                                    if eth.balance(this.address) < eth.balance(this.address):
                                        revert with 0, 17
                                    if stor18 < stor16:
                                        revert with 0, 17
                                    if False and sub_15291cd4 > 0:
                                        revert with 0, 17
                                    if not stor18 - stor16:
                                        revert with 0, 18
                                    if False and marketingShare > 0:
                                        revert with 0, 17
                                    if not stor18 - stor16:
                                        revert with 0, 18
                                    if False and sub_3c322798 > 0:
                                        revert with 0, 17
                                    if not stor18 - stor16:
                                        revert with 0, 18
                                    call marketingWalletAddress with:
                                       value 0 / stor18 - stor16 wei
                                         gas sub_fa03f797 wei
                                    if ext_call.success:
                                        emit 0x3f23532d: (0 / stor18 - stor16), marketingWalletAddress
                                    call rewardWalletAddress with:
                                       value 0 / stor18 - stor16 wei
                                         gas sub_fa03f797 wei
                                    if ext_call.success:
                                        emit 0xb9ad861b: (0 / stor18 - stor16), rewardWalletAddress
                                    if Mask(255, 1, swapThreshold * sub_15291cd4 / stor18):
                                        require ext_code.size(ROUTERAddress)
                                        call ROUTERAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                           value 0 / stor18 - stor16 / 2 wei
                                             gas gas_remaining wei
                                            args this.address, Mask(255, 1, swapThreshold * sub_15291cd4 / stor18), 0, 0, this.address, block.timestamp
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 96
                                        emit AutoLiquidity(Mask(255, 1, 0 / stor18 - stor16), swapThreshold * sub_15291cd4 / stor18 / 2);
                                    uint8(stor11.field_32) = 0
                                    if not arg2:
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not arg1:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if balanceOf[address(msg.sender)] < arg2:
                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(msg.sender)] -= arg2
                                        if balanceOf[arg1] > !arg2:
                                            revert with 0, 17
                                        balanceOf[arg1] += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        if uint8(stor11.field_16):
                                            if arg2 and 9900 > -1 / arg2:
                                                revert with 0, 17
                                            if 9900 * arg2 / 10000:
                                                if not msg.sender:
                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                if not this.address:
                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                if balanceOf[address(msg.sender)] < 9900 * arg2 / 10000:
                                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                                balanceOf[address(msg.sender)] -= 9900 * arg2 / 10000
                                                if balanceOf[this.address] > !(9900 * arg2 / 10000):
                                                    revert with 0, 17
                                                balanceOf[this.address] += 9900 * arg2 / 10000
                                                emit Transfer((9900 * arg2 / 10000), msg.sender, this.address);
                                            if arg2 < 9900 * arg2 / 10000:
                                                revert with 0, 17
                                            if not msg.sender:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not arg1:
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(msg.sender)] < arg2 - (9900 * arg2 / 10000):
                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (9900 * arg2 / 10000)
                                            if balanceOf[arg1] > !(arg2 - (9900 * arg2 / 10000)):
                                                revert with 0, 17
                                            balanceOf[arg1] = balanceOf[arg1] + arg2 - (9900 * arg2 / 10000)
                                            emit Transfer((arg2 - (9900 * arg2 / 10000)), msg.sender, arg1);
                                        else:
                                            if stor22[address(arg1)]:
                                                if arg2 and 0 > -1 / arg2:
                                                    revert with 0, 17
                                                if arg2 < 0:
                                                    revert with 0, 17
                                                if not msg.sender:
                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                if not arg1:
                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                if balanceOf[address(msg.sender)] < arg2:
                                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                                balanceOf[address(msg.sender)] -= arg2
                                                if balanceOf[arg1] > !arg2:
                                                    revert with 0, 17
                                                balanceOf[arg1] += arg2
                                                emit Transfer(arg2, msg.sender, arg1);
                                            else:
                                                if stor22[address(msg.sender)]:
                                                    if arg2 and buyTax > -1 / arg2:
                                                        revert with 0, 17
                                                    if arg2 * buyTax / 10000:
                                                        if not msg.sender:
                                                            revert with 0, 'ERC20: transfer from the zero address'
                                                        if not this.address:
                                                            revert with 0, 'ERC20: transfer to the zero address'
                                                        if balanceOf[address(msg.sender)] < arg2 * buyTax / 10000:
                                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                                        balanceOf[address(msg.sender)] -= arg2 * buyTax / 10000
                                                        if balanceOf[this.address] > !(arg2 * buyTax / 10000):
                                                            revert with 0, 17
                                                        balanceOf[this.address] += arg2 * buyTax / 10000
                                                        emit Transfer((arg2 * buyTax / 10000), msg.sender, this.address);
                                                    if arg2 < arg2 * buyTax / 10000:
                                                        revert with 0, 17
                                                    if not msg.sender:
                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                    if not arg1:
                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                    if balanceOf[address(msg.sender)] < arg2 - (arg2 * buyTax / 10000):
                                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * buyTax / 10000)
                                                    if balanceOf[arg1] > !(arg2 - (arg2 * buyTax / 10000)):
                                                        revert with 0, 17
                                                    balanceOf[arg1] = balanceOf[arg1] + arg2 - (arg2 * buyTax / 10000)
                                                    emit Transfer((arg2 - (arg2 * buyTax / 10000)), msg.sender, arg1);
                                                else:
                                                    if stor23[address(msg.sender)]:
                                                        if arg2 and buyTax > -1 / arg2:
                                                            revert with 0, 17
                                                        if arg2 * buyTax / 10000:
                                                            if not msg.sender:
                                                                revert with 0, 'ERC20: transfer from the zero address'
                                                            if not this.address:
                                                                revert with 0, 'ERC20: transfer to the zero address'
                                                            if balanceOf[address(msg.sender)] < arg2 * buyTax / 10000:
                                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                                            balanceOf[address(msg.sender)] -= arg2 * buyTax / 10000
                                                            if balanceOf[this.address] > !(arg2 * buyTax / 10000):
                                                                revert with 0, 17
                                                            balanceOf[this.address] += arg2 * buyTax / 10000
                                                            emit Transfer((arg2 * buyTax / 10000), msg.sender, this.address);
                                                        if arg2 < arg2 * buyTax / 10000:
                                                            revert with 0, 17
                                                        if not msg.sender:
                                                            revert with 0, 'ERC20: transfer from the zero address'
                                                        if not arg1:
                                                            revert with 0, 'ERC20: transfer to the zero address'
                                                        if balanceOf[address(msg.sender)] < arg2 - (arg2 * buyTax / 10000):
                                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * buyTax / 10000)
                                                        if balanceOf[arg1] > !(arg2 - (arg2 * buyTax / 10000)):
                                                            revert with 0, 17
                                                        balanceOf[arg1] = balanceOf[arg1] + arg2 - (arg2 * buyTax / 10000)
                                                        emit Transfer((arg2 - (arg2 * buyTax / 10000)), msg.sender, arg1);
                                                    else:
                                                        if not stor23[address(arg1)]:
                                                            if arg2 and sub_8124f7ac > -1 / arg2:
                                                                revert with 0, 17
                                                            if arg2 * sub_8124f7ac / 10000:
                                                                if not msg.sender:
                                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                                if not this.address:
                                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                                if balanceOf[address(msg.sender)] < arg2 * sub_8124f7ac / 10000:
                                                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                                                balanceOf[address(msg.sender)] -= arg2 * sub_8124f7ac / 10000
                                                                if balanceOf[this.address] > !(arg2 * sub_8124f7ac / 10000):
                                                                    revert with 0, 17
                                                                balanceOf[this.address] += arg2 * sub_8124f7ac / 10000
                                                                emit Transfer((arg2 * sub_8124f7ac / 10000), msg.sender, this.address);
                                                            if arg2 < arg2 * sub_8124f7ac / 10000:
                                                                revert with 0, 17
                                                            if not msg.sender:
                                                                revert with 0, 'ERC20: transfer from the zero address'
                                                            if not arg1:
                                                                revert with 0, 'ERC20: transfer to the zero address'
                                                            if balanceOf[address(msg.sender)] < arg2 - (arg2 * sub_8124f7ac / 10000):
                                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * sub_8124f7ac / 10000)
                                                            if balanceOf[arg1] > !(arg2 - (arg2 * sub_8124f7ac / 10000)):
                                                                revert with 0, 17
                                                            balanceOf[arg1] = balanceOf[arg1] + arg2 - (arg2 * sub_8124f7ac / 10000)
                                                            emit Transfer((arg2 - (arg2 * sub_8124f7ac / 10000)), msg.sender, arg1);
                                                        else:
                                                            if not uint8(stor11.field_8):
                                                                if arg2 and sellTax > -1 / arg2:
                                                                    revert with 0, 17
                                                                if arg2 * sellTax / 10000:
                                                                    if not msg.sender:
                                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                                    if not this.address:
                                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                                    if balanceOf[address(msg.sender)] < arg2 * sellTax / 10000:
                                                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                                                    balanceOf[address(msg.sender)] -= arg2 * sellTax / 10000
                                                                    if balanceOf[this.address] > !(arg2 * sellTax / 10000):
                                                                        revert with 0, 17
                                                                    balanceOf[this.address] += arg2 * sellTax / 10000
                                                                    emit Transfer((arg2 * sellTax / 10000), msg.sender, this.address);
                                                                if arg2 < arg2 * sellTax / 10000:
                                                                    revert with 0, 17
                                                                if not msg.sender:
                                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                                if not arg1:
                                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                                if balanceOf[address(msg.sender)] < arg2 - (arg2 * sellTax / 10000):
                                                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * sellTax / 10000)
                                                                if balanceOf[arg1] > !(arg2 - (arg2 * sellTax / 10000)):
                                                                    revert with 0, 17
                                                                balanceOf[arg1] = balanceOf[arg1] + arg2 - (arg2 * sellTax / 10000)
                                                                emit Transfer((arg2 - (arg2 * sellTax / 10000)), msg.sender, arg1);
                                                            else:
                                                                if 24 * 3600 > !launchTime:
                                                                    revert with 0, 17
                                                                if launchTime + (24 * 3600) <= block.timestamp:
                                                                    if arg2 and sellTax > -1 / arg2:
                                                                        revert with 0, 17
                                                                    if arg2 * sellTax / 10000:
                                                                        if not msg.sender:
                                                                            revert with 0, 'ERC20: transfer from the zero address'
                                                                        if not this.address:
                                                                            revert with 0, 'ERC20: transfer to the zero address'
                                                                        if balanceOf[address(msg.sender)] < arg2 * sellTax / 10000:
                                                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                                                        balanceOf[address(msg.sender)] -= arg2 * sellTax / 10000
                                                                        if balanceOf[this.address] > !(arg2 * sellTax / 10000):
                                                                            revert with 0, 17
                                                                        balanceOf[this.address] += arg2 * sellTax / 10000
                                                                        emit Transfer((arg2 * sellTax / 10000), msg.sender, this.address);
                                                                    if arg2 < arg2 * sellTax / 10000:
                                                                        revert with 0, 17
                                                                    if not msg.sender:
                                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                                    if not arg1:
                                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                                    if balanceOf[address(msg.sender)] < arg2 - (arg2 * sellTax / 10000):
                                                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * sellTax / 10000)
                                                                    if balanceOf[arg1] > !(arg2 - (arg2 * sellTax / 10000)):
                                                                        revert with 0, 17
                                                                    balanceOf[arg1] = balanceOf[arg1] + arg2 - (arg2 * sellTax / 10000)
                                                                    emit Transfer((arg2 - (arg2 * sellTax / 10000)), msg.sender, arg1);
                                                                else:
                                                                    if launchTime + (24 * 3600) < block.timestamp:
                                                                        revert with 0, 17
                                                                    if sellTax and launchTime + -block.timestamp + (24 * 3600) > -1 / sellTax:
                                                                        revert with 0, 17
                                                                    if sellTax > !((24 * 3600 * sellTax) + (launchTime * sellTax) - (block.timestamp * sellTax) / 24 * 3600):
                                                                        revert with 0, 17
                                                                    if arg2 and sellTax + ((24 * 3600 * sellTax) + (launchTime * sellTax) - (block.timestamp * sellTax) / 24 * 3600) > -1 / arg2:
                                                                        revert with 0, 17
                                                                    if (sellTax * arg2) + ((24 * 3600 * sellTax) + (launchTime * sellTax) - (block.timestamp * sellTax) / 24 * 3600 * arg2) / 10000:
                                                                        if not msg.sender:
                                                                            revert with 0, 'ERC20: transfer from the zero address'
                                                                        if not this.address:
                                                                            revert with 0, 'ERC20: transfer to the zero address'
                                                                        if balanceOf[address(msg.sender)] < (sellTax * arg2) + ((24 * 3600 * sellTax) + (launchTime * sellTax) - (block.timestamp * sellTax) / 24 * 3600 * arg2) / 10000:
                                                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                                                        balanceOf[address(msg.sender)] -= (sellTax * arg2) + ((24 * 3600 * sellTax) + (launchTime * sellTax) - (block.timestamp * sellTax) / 24 * 3600 * arg2) / 10000
                                                                        if balanceOf[this.address] > !((sellTax * arg2) + ((24 * 3600 * sellTax) + (launchTime * sellTax) - (block.timestamp * sellTax) / 24 * 3600 * arg2) / 10000):
                                                                            revert with 0, 17
                                                                        balanceOf[this.address] += (sellTax * arg2) + ((24 * 3600 * sellTax) + (launchTime * sellTax) - (block.timestamp * sellTax) / 24 * 3600 * arg2) / 10000
                                                                        emit Transfer(((sellTax * arg2) + ((24 * 3600 * sellTax) + (launchTime * sellTax) - (block.timestamp * sellTax) / 24 * 3600 * arg2) / 10000), msg.sender, this.address);
                                                                    if arg2 < (sellTax * arg2) + ((24 * 3600 * sellTax) + (launchTime * sellTax) - (block.timestamp * sellTax) / 24 * 3600 * arg2) / 10000:
                                                                        revert with 0, 17
                                                                    if not msg.sender:
                                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                                    if not arg1:
                                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                                    if balanceOf[address(msg.sender)] < arg2 - ((sellTax * arg2) + ((24 * 3600 * sellTax) + (launchTime * sellTax) - (block.timestamp * sellTax) / 24 * 3600 * arg2) / 10000):
                                                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + ((sellTax * arg2) + ((24 * 3600 * sellTax) + (launchTime * sellTax) - (block.timestamp * sellTax) / 24 * 3600 * arg2) / 10000)
                                                                    if balanceOf[arg1] > !(arg2 - ((sellTax * arg2) + ((24 * 3600 * sellTax) + (launchTime * sellTax) - (block.timestamp * sellTax) / 24 * 3600 * arg2) / 10000)):
                                                                        revert with 0, 17
                                                                    balanceOf[arg1] = balanceOf[arg1] + arg2 - ((sellTax * arg2) + ((24 * 3600 * sellTax) + (launchTime * sellTax) - (block.timestamp * sellTax) / 24 * 3600 * arg2) / 10000)
                                                                    emit Transfer((arg2 - ((sellTax * arg2) + ((24 * 3600 * sellTax) + (launchTime * sellTax) - (block.timestamp * sellTax) / 24 * 3600 * arg2) / 10000)), msg.sender, arg1);
    return 1
}



}
