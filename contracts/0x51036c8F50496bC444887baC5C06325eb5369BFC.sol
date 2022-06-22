contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - burn(uint256 arg1)
#  - transfer(address arg1, uint256 arg2)
#  - _fallback()
#
const decimals = 18


mapping of struct balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of struct stor3;
array of struct stor4;
address uniswapV2RouterAddress;
address uniswapV2PairAddress;
address sub_42583cf6Address;
address marketingAddress;
mapping of uint8 stor9;
uint8 stor10; offset 160
uint128 stor10; offset 160
address _owner;
uint256 sub_6a8d1f70;
uint256 sub_7bca74ce;
uint256 sub_65978b44;
uint256 sub_65e87d11;
uint256 stor16;
uint256 stor17; offset 1
uint256 stor17;
uint256 _maxWallet;
uint256 sub_99e5088a;
uint256 sub_b75b0ee1;
uint256 sub_b1ea00fb;
address sub_371548e2Address;
uint16 stor23;
address stor23; offset 16
address sub_c202a256Address;
mapping of uint8 stor24;
uint8 sub_4a537797;
mapping of uint8 stor26;
array of struct sub_9bc593bc;
uint8 stor28;
array of struct lockBoxStructs;
array of uint256 stor26616959624788145501257665028759500958019551560565664426117466910078421933505;
array of uint256 stor26616959624788145501257665028759500958019551560565664426117466910078421933506;
array of address stor26616959624788145501257665028759500958019551560565664426117466910078421933507;
array of uint256 stor49422300655976383518971161772042036479724517635858811238160587340303074464591;
array of uint256 stor49422300655976383518971161772042036479724517635858811238160587340303074464592;

function uniswapV2Router() {
    return uniswapV2RouterAddress
}

function totalSupply() {
    return totalSupply
}

function sub_371548e2(?) {
    return sub_371548e2Address
}

function sub_3b1306fd(?) {
    return sub_9bc593bc.length
}

function lockBoxStructs(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < lockBoxStructs.length
    return lockBoxStructs[arg1].field_0, lockBoxStructs[arg1].field_256
}

function sub_42583cf6(?) {
    return sub_42583cf6Address
}

function uniswapV2Pair() {
    return uniswapV2PairAddress
}

function sub_4a537797(?) {
    return bool(sub_4a537797)
}

function sub_5b97a7e7(?) {
    return bool(uint8(stor10.field_160))
}

function sub_65978b44(?) {
    return sub_65978b44
}

function sub_65e87d11(?) {
    return sub_65e87d11
}

function sub_6a8d1f70(?) {
    return sub_6a8d1f70
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)].field_0
}

function _isExcludedFromFee(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor9[arg1])
}

function sub_7bca74ce(?) {
    return sub_7bca74ce
}

function _maxWallet() {
    return _maxWallet
}

function sub_99e5088a(?) {
    return sub_99e5088a
}

function sub_9bc593bc(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_9bc593bc.length
    return sub_9bc593bc[arg1].field_0, sub_9bc593bc[arg1].field_256, sub_9bc593bc[arg1].field_512
}

function marketingAddress() {
    return marketingAddress
}

function sub_b1ea00fb(?) {
    return sub_b1ea00fb
}

function _owner() {
    return _owner
}

function sub_b75b0ee1(?) {
    return sub_b75b0ee1
}

function sub_c202a256(?) {
    return sub_c202a256Address
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function sub_ee79242a(?) {
    return balanceOf[stor7].field_0
}

function sub_054f7220(?) {
    require calldata.size - 4 >= 32
    if _owner != msg.sender:
        revert with 0, 'Call authorized only for owner'
    sub_6a8d1f70 = arg1
}

function sub_26900d42(?) {
    require calldata.size - 4 >= 32
    if _owner != msg.sender:
        revert with 0, 'Call authorized only for owner'
    sub_b1ea00fb = arg1
}

function sub_61fdefe4(?) {
    require calldata.size - 4 >= 32
    if _owner != msg.sender:
        revert with 0, 'Call authorized only for owner'
    sub_7bca74ce = arg1
}

function sub_beafd3ee(?) {
    require calldata.size - 4 >= 32
    if _owner != msg.sender:
        revert with 0, 'Call authorized only for owner'
    sub_65e87d11 = arg1
}

function sub_dc97b761(?) {
    require calldata.size - 4 >= 32
    if _owner != msg.sender:
        revert with 0, 'Call authorized only for owner'
    sub_99e5088a = arg1
}

function setMinSwapAmount(uint256 arg1) {
    require calldata.size - 4 >= 32
    if _owner != msg.sender:
        revert with 0, 'Call authorized only for owner'
    stor16 = arg1
}

function setFeeChest(uint256 arg1) {
    require calldata.size - 4 >= 32
    if _owner != msg.sender:
        revert with 0, 'Call authorized only for owner'
    sub_65978b44 = arg1
}

function setMaxWalletAmount(uint256 arg1) {
    require calldata.size - 4 >= 32
    if _owner != msg.sender:
        revert with 0, 'Call authorized only for owner'
    _maxWallet = arg1
}

function setMaxSwapAmount(uint256 arg1) {
    require calldata.size - 4 >= 32
    if _owner != msg.sender:
        revert with 0, 'Call authorized only for owner'
    uint256(stor17.field_0) = arg1
}

function changeOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if _owner != msg.sender:
        revert with 0, 'Call authorized only for owner'
    _owner = arg1
}

function sub_15317958(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if _owner != msg.sender:
        revert with 0, 'Call authorized only for owner'
    return eth.balance(arg1)
}

function addToPresale(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if _owner != msg.sender:
        revert with 0, 'Call authorized only for owner'
    stor26[address(arg1)] = 1
}

function sub_4d3eaf75(?) {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if _owner != msg.sender:
        revert with 0, 'Call authorized only for owner'
    sub_4a537797 = uint8(bool(arg1))
}

function sub_2d99812a(?) {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if _owner != msg.sender:
        revert with 0, 'Call authorized only for owner'
    Mask(96, 0, stor10.field_160) = Mask(96, 0, bool(arg1))
}

function sub_8eb94af2(?) {
    require calldata.size - 4 >= 64
    require arg1 == bool(arg1)
    require arg2 == address(arg2)
    if _owner != msg.sender:
        revert with 0, 'Call authorized only for owner'
    stor9[address(arg2)] = uint8(bool(arg1))
}

function sub_60a5faac(?) {
    require calldata.size - 4 >= 64
    require arg1 == bool(arg1)
    require arg2 == address(arg2)
    if _owner != msg.sender:
        revert with 0, 'Call authorized only for owner'
    stor24[address(arg2)] = uint8(bool(arg1))
}

function sub_6ab60482(?) {
    if _owner != msg.sender:
        revert with 0, 'Call authorized only for owner'
    call _owner with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'Failed to send Ether'
}

function getRemainingLockTime(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 >= lockBoxStructs.length:
        revert with 0, 50
    if lockBoxStructs[arg1].field_256 < block.timestamp:
        revert with 0, 17
    return (lockBoxStructs[arg1].field_256 - block.timestamp)
}

function sub_96024b58(?) {
    if stor28:
        return not bool(stor28)
    if sub_b75b0ee1 <= 0:
        return (sub_b75b0ee1 > 0)
    if sub_b1ea00fb > 0x444444444444444444444444444444444444444444444444444444444444444:
        revert with 0, 17
    if sub_b75b0ee1 > !(60 * sub_b1ea00fb):
        revert with 0, 17
    return (block.timestamp > sub_b75b0ee1 + (60 * sub_b1ea00fb))
}

function extendLockTime(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if _owner != msg.sender:
        revert with 0, 'Call authorized only for owner'
    if arg1 >= lockBoxStructs.length:
        revert with 0, 50
    if block.timestamp > !arg2:
        revert with 0, 17
    require block.timestamp + arg2 > lockBoxStructs[arg1].field_256
    if block.timestamp > !arg2:
        revert with 0, 17
    lockBoxStructs[arg1].field_256 = block.timestamp + arg2
    return 1
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

function sub_562d3544(?) {
    require calldata.size - 4 >= 64
    if _owner != msg.sender:
        revert with 0, 'Call authorized only for owner'
    require ext_code.size(uniswapV2PairAddress)
    call uniswapV2PairAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_call.return_data[0]
    if block.timestamp > !arg2:
        revert with 0, 17
    lockBoxStructs.length++
    stor6D44[stor29.length] = arg1
    stor6D44[stor29.length] = block.timestamp + arg2
    emit LogLockBoxDeposit(msg.sender, arg1, block.timestamp + arg2);
    return 1
}

function sub_ad1c3047(?) {
    require calldata.size - 4 >= 32
    if _owner != msg.sender:
        revert with 0, 'Call authorized only for owner'
    if arg1 >= lockBoxStructs.length:
        revert with 0, 50
    require lockBoxStructs[arg1].field_256 <= block.timestamp
    lockBoxStructs[arg1].field_0 = 0
    emit LogLockBoxWithdrawal(msg.sender, lockBoxStructs[arg1].field_0);
    require ext_code.size(uniswapV2PairAddress)
    call uniswapV2PairAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, lockBoxStructs[arg1].field_0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_call.return_data[0]
    return 1
}

function checkReward() {
    if not stor28:
        if sub_b75b0ee1 > 0:
            if sub_b1ea00fb > 0x444444444444444444444444444444444444444444444444444444444444444:
                revert with 0, 17
            if sub_b75b0ee1 > !(60 * sub_b1ea00fb):
                revert with 0, 17
            if block.timestamp > sub_b75b0ee1 + (60 * sub_b1ea00fb):
                sub_b75b0ee1 = 0
                if balanceOf[address(stor23.field_0)].field_0 > !balanceOf[stor7].field_0:
                    revert with 0, 17
                if balanceOf[address(stor23.field_0)].field_0 + balanceOf[stor7].field_0 < balanceOf[address(stor23.field_0)].field_0:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(stor23.field_0)].field_0 += balanceOf[stor7].field_0
                balanceOf[stor7].field_0 = 0
                sub_371548e2Address = sub_c202a256Address
                uint16(stor23.field_0) = 57005
                Mask(144, 0, stor23.field_16) = 0
                sub_9bc593bc.length++
                stor3AD8[stor27.length] = block.timestamp
                stor3AD8[stor27.length] = balanceOf[stor7].field_0
                stor3AD8[stor27.length] = sub_c202a256Address
}

function sub_8e819b41(?) payable {
    require calldata.size - 4 >= 32
    if _owner != msg.sender:
        revert with 0, 'Call authorized only for owner'
    if balanceOf[this.address].field_0 > !arg1:
        revert with 0, 17
    balanceOf[this.address].field_0 += arg1
    if balanceOf[msg.sender].field_0 < arg1:
        revert with 0, 17
    balanceOf[msg.sender].field_0 -= arg1
    if not this.address:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not uniswapV2RouterAddress:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(this.address)][stor5] = arg1
    emit Approval(arg1, this.address, uniswapV2RouterAddress);
    require ext_code.size(uniswapV2RouterAddress)
    call uniswapV2RouterAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
       value msg.value wei
         gas gas_remaining wei
        args 0, 0, arg1, 0, 0, address(msg.sender), block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
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

function swapAndLiquify() {
    if _owner != msg.sender:
        revert with 0, 'Call authorized only for owner'
    stor28 = 1
    if balanceOf[this.address].field_0 > stor16:
        if sub_7bca74ce > !sub_6a8d1f70:
            revert with 0, 17
        if sub_7bca74ce + sub_6a8d1f70 < sub_7bca74ce:
            revert with 0, 'SafeMath: addition overflow'
        if balanceOf[this.address].field_0 <= uint256(stor17.field_0):
            if not sub_7bca74ce + sub_6a8d1f70:
                if not balanceOf[this.address].field_0:
                    if 0 > balanceOf[this.address].field_0:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if balanceOf[this.address].field_0 < 0:
                        revert with 0, 17
                    if balanceOf[this.address].field_1 > balanceOf[this.address].field_0:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if balanceOf[this.address].field_0 < balanceOf[this.address].field_1:
                        revert with 0, 17
                    if 0 > !balanceOf[this.address].field_1:
                        revert with 0, 17
                    if balanceOf[this.address].field_1 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if not this.address:
                        revert with 0, 'ERC20: approve from the zero address'
                    if not uniswapV2RouterAddress:
                        revert with 0, 'ERC20: approve to the zero address'
                    allowance[address(this.address)][stor5] = balanceOf[this.address].field_1
                    emit Approval(balanceOf[this.address].field_1, this.address, uniswapV2RouterAddress);
                    mem[384] = this.address
                    require ext_code.size(uniswapV2RouterAddress)
                    staticcall uniswapV2RouterAddress.WAVAX() with:
                            gas gas_remaining wei
                    mem[448] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[416] = ext_call.return_data[12 len 20]
                    if 60 > !block.timestamp:
                        revert with 0, 17
                    mem[ceil32(return_data.size) + 448] = 0x762b156200000000000000000000000000000000000000000000000000000000
                    mem[ceil32(return_data.size) + 452] = balanceOf[this.address].field_1
                    idx = 0
                    s = ceil32(return_data.size) + 644
                    t = 384
                    while idx < 2:
                        mem[s] = mem[t + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(uniswapV2RouterAddress)
                    call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args 2 * Mask(256, -1, balanceOf[this.address].field_1), 0, 160, address(this.address), block.timestamp + 60, 2, mem[ceil32(return_data.size) + 644 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if 0 > !balanceOf[this.address].field_1:
                        revert with 0, 17
                    if balanceOf[this.address].field_1 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if not eth.balance(this.address):
                        if not balanceOf[this.address].field_1:
                            revert with 0, 'SafeMath: division by zero', 0
                        if not this.address:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not uniswapV2RouterAddress:
                            revert with 0, 'ERC20: approve to the zero address'
                        allowance[address(this.address)][stor5] = balanceOf[this.address].field_0 - balanceOf[this.address].field_1
                        emit Approval((balanceOf[this.address].field_0 - balanceOf[this.address].field_1), this.address, uniswapV2RouterAddress);
                        require ext_code.size(uniswapV2RouterAddress)
                        call uniswapV2RouterAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                           value 0 / balanceOf[this.address].field_1 wei
                             gas gas_remaining wei
                            args address(this.address), balanceOf[this.address].field_0 - balanceOf[this.address].field_1, 0, 0, _owner, block.timestamp
                    else:
                        if eth.balance(this.address) and balanceOf[this.address].field_1 > -1 / eth.balance(this.address):
                            revert with 0, 17
                        if not eth.balance(this.address):
                            revert with 0, 18
                        if eth.balance(this.address) * balanceOf[this.address].field_1 / eth.balance(this.address) != balanceOf[this.address].field_1:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not balanceOf[this.address].field_1:
                            revert with 0, 'SafeMath: division by zero', 0
                        if not this.address:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not uniswapV2RouterAddress:
                            revert with 0, 'ERC20: approve to the zero address'
                        allowance[address(this.address)][stor5] = balanceOf[this.address].field_0 - balanceOf[this.address].field_1
                        emit Approval((balanceOf[this.address].field_0 - balanceOf[this.address].field_1), this.address, uniswapV2RouterAddress);
                        require ext_code.size(uniswapV2RouterAddress)
                        call uniswapV2RouterAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                           value eth.balance(this.address) * balanceOf[this.address].field_1 / balanceOf[this.address].field_1 wei
                             gas gas_remaining wei
                            args address(this.address), balanceOf[this.address].field_0 - balanceOf[this.address].field_1, 0, 0, _owner, block.timestamp
                else:
                    if balanceOf[this.address].field_0 and sub_7bca74ce > -1 / balanceOf[this.address].field_0:
                        revert with 0, 17
                    if not balanceOf[this.address].field_0:
                        revert with 0, 18
                    if balanceOf[this.address].field_0 * sub_7bca74ce / balanceOf[this.address].field_0 != sub_7bca74ce:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                    if balanceOf[this.address].field_0 * sub_7bca74ce > balanceOf[this.address].field_0:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if balanceOf[this.address].field_0 < balanceOf[this.address].field_0 * sub_7bca74ce:
                        revert with 0, 17
                    if balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce) / 2 > balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce) < balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce) / 2:
                        revert with 0, 17
                    if balanceOf[this.address].field_0 * sub_7bca74ce > !(balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce) / 2):
                        revert with 0, 17
                    if (balanceOf[this.address].field_0 * sub_7bca74ce) + (balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce) / 2) < balanceOf[this.address].field_0 * sub_7bca74ce:
                        revert with 0, 'SafeMath: addition overflow'
                    if not this.address:
                        revert with 0, 'ERC20: approve from the zero address'
                    if not uniswapV2RouterAddress:
                        revert with 0, 'ERC20: approve to the zero address'
                    allowance[address(this.address)][stor5] = (balanceOf[this.address].field_0 * sub_7bca74ce) + (balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce) / 2)
                    emit Approval(((balanceOf[this.address].field_0 * sub_7bca74ce) + (balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce) / 2)), this.address, uniswapV2RouterAddress);
                    mem[384] = this.address
                    require ext_code.size(uniswapV2RouterAddress)
                    staticcall uniswapV2RouterAddress.WAVAX() with:
                            gas gas_remaining wei
                    mem[448] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[416] = ext_call.return_data[12 len 20]
                    if 60 > !block.timestamp:
                        revert with 0, 17
                    mem[ceil32(return_data.size) + 448] = 0x762b156200000000000000000000000000000000000000000000000000000000
                    mem[ceil32(return_data.size) + 452] = (balanceOf[this.address].field_0 * sub_7bca74ce) + (balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce) / 2)
                    idx = 0
                    s = ceil32(return_data.size) + 644
                    t = 384
                    while idx < 2:
                        mem[s] = mem[t + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(uniswapV2RouterAddress)
                    call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args (balanceOf[this.address].field_0 * sub_7bca74ce) + (balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce) / 2), 0, 160, address(this.address), block.timestamp + 60, 2, mem[ceil32(return_data.size) + 644 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if balanceOf[this.address].field_0 * sub_7bca74ce > !(balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce) / 2):
                        revert with 0, 17
                    if (balanceOf[this.address].field_0 * sub_7bca74ce) + (balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce) / 2) < balanceOf[this.address].field_0 * sub_7bca74ce:
                        revert with 0, 'SafeMath: addition overflow'
                    if not eth.balance(this.address):
                        if not (balanceOf[this.address].field_0 * sub_7bca74ce) + (balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce) / 2):
                            revert with 0, 'SafeMath: division by zero', 0
                        if not this.address:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not uniswapV2RouterAddress:
                            revert with 0, 'ERC20: approve to the zero address'
                        allowance[address(this.address)][stor5] = balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce) - (balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce) / 2)
                        emit Approval((balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce) - (balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce) / 2)), this.address, uniswapV2RouterAddress);
                        require ext_code.size(uniswapV2RouterAddress)
                        call uniswapV2RouterAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                           value 0 / (balanceOf[this.address].field_0 * sub_7bca74ce) + (balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce) / 2) wei
                             gas gas_remaining wei
                            args address(this.address), balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce) - (balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce) / 2), 0, 0, _owner, block.timestamp
                    else:
                        if eth.balance(this.address) and balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce) / 2 > -1 / eth.balance(this.address):
                            revert with 0, 17
                        if not eth.balance(this.address):
                            revert with 0, 18
                        if eth.balance(this.address) * balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce) / 2 / eth.balance(this.address) != balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce) / 2:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not (balanceOf[this.address].field_0 * sub_7bca74ce) + (balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce) / 2):
                            revert with 0, 'SafeMath: division by zero', 0
                        if not this.address:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not uniswapV2RouterAddress:
                            revert with 0, 'ERC20: approve to the zero address'
                        allowance[address(this.address)][stor5] = balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce) - (balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce) / 2)
                        emit Approval((balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce) - (balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce) / 2)), this.address, uniswapV2RouterAddress);
                        require ext_code.size(uniswapV2RouterAddress)
                        call uniswapV2RouterAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                           value eth.balance(this.address) * balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce) / 2 / (balanceOf[this.address].field_0 * sub_7bca74ce) + (balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce) / 2) wei
                             gas gas_remaining wei
                            args address(this.address), balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce) - (balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce) / 2), 0, 0, _owner, block.timestamp
            else:
                if not balanceOf[this.address].field_0:
                    if not sub_7bca74ce + sub_6a8d1f70:
                        revert with 0, 'SafeMath: division by zero', 0
                    if 0 / sub_7bca74ce + sub_6a8d1f70 > balanceOf[this.address].field_0:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if balanceOf[this.address].field_0 < 0 / sub_7bca74ce + sub_6a8d1f70:
                        revert with 0, 17
                    if balanceOf[this.address].field_0 - (0 / sub_7bca74ce + sub_6a8d1f70) / 2 > balanceOf[this.address].field_0 - (0 / sub_7bca74ce + sub_6a8d1f70):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if balanceOf[this.address].field_0 - (0 / sub_7bca74ce + sub_6a8d1f70) < balanceOf[this.address].field_0 - (0 / sub_7bca74ce + sub_6a8d1f70) / 2:
                        revert with 0, 17
                    if 0 / sub_7bca74ce + sub_6a8d1f70 > !(balanceOf[this.address].field_0 - (0 / sub_7bca74ce + sub_6a8d1f70) / 2):
                        revert with 0, 17
                    if (0 / sub_7bca74ce + sub_6a8d1f70) + (balanceOf[this.address].field_0 - (0 / sub_7bca74ce + sub_6a8d1f70) / 2) < 0 / sub_7bca74ce + sub_6a8d1f70:
                        revert with 0, 'SafeMath: addition overflow'
                    if not this.address:
                        revert with 0, 'ERC20: approve from the zero address'
                    if not uniswapV2RouterAddress:
                        revert with 0, 'ERC20: approve to the zero address'
                    allowance[address(this.address)][stor5] = (0 / sub_7bca74ce + sub_6a8d1f70) + (balanceOf[this.address].field_0 - (0 / sub_7bca74ce + sub_6a8d1f70) / 2)
                    emit Approval(((0 / sub_7bca74ce + sub_6a8d1f70) + (balanceOf[this.address].field_0 - (0 / sub_7bca74ce + sub_6a8d1f70) / 2)), this.address, uniswapV2RouterAddress);
                    mem[384] = this.address
                    require ext_code.size(uniswapV2RouterAddress)
                    staticcall uniswapV2RouterAddress.WAVAX() with:
                            gas gas_remaining wei
                    mem[448] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[416] = ext_call.return_data[12 len 20]
                    if 60 > !block.timestamp:
                        revert with 0, 17
                    mem[ceil32(return_data.size) + 448] = 0x762b156200000000000000000000000000000000000000000000000000000000
                    mem[ceil32(return_data.size) + 452] = (0 / sub_7bca74ce + sub_6a8d1f70) + (balanceOf[this.address].field_0 - (0 / sub_7bca74ce + sub_6a8d1f70) / 2)
                    idx = 0
                    s = ceil32(return_data.size) + 644
                    t = 384
                    while idx < 2:
                        mem[s] = mem[t + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(uniswapV2RouterAddress)
                    call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args (0 / sub_7bca74ce + sub_6a8d1f70) + (balanceOf[this.address].field_0 - (0 / sub_7bca74ce + sub_6a8d1f70) / 2), 0, 160, address(this.address), block.timestamp + 60, 2, mem[ceil32(return_data.size) + 644 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if 0 / sub_7bca74ce + sub_6a8d1f70 > !(balanceOf[this.address].field_0 - (0 / sub_7bca74ce + sub_6a8d1f70) / 2):
                        revert with 0, 17
                    if (0 / sub_7bca74ce + sub_6a8d1f70) + (balanceOf[this.address].field_0 - (0 / sub_7bca74ce + sub_6a8d1f70) / 2) < 0 / sub_7bca74ce + sub_6a8d1f70:
                        revert with 0, 'SafeMath: addition overflow'
                    if not eth.balance(this.address):
                        if not (0 / sub_7bca74ce + sub_6a8d1f70) + (balanceOf[this.address].field_0 - (0 / sub_7bca74ce + sub_6a8d1f70) / 2):
                            revert with 0, 'SafeMath: division by zero', 0
                        if not this.address:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not uniswapV2RouterAddress:
                            revert with 0, 'ERC20: approve to the zero address'
                        allowance[address(this.address)][stor5] = balanceOf[this.address].field_0 - (0 / sub_7bca74ce + sub_6a8d1f70) - (balanceOf[this.address].field_0 - (0 / sub_7bca74ce + sub_6a8d1f70) / 2)
                        emit Approval((balanceOf[this.address].field_0 - (0 / sub_7bca74ce + sub_6a8d1f70) - (balanceOf[this.address].field_0 - (0 / sub_7bca74ce + sub_6a8d1f70) / 2)), this.address, uniswapV2RouterAddress);
                        require ext_code.size(uniswapV2RouterAddress)
                        call uniswapV2RouterAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                           value 0 / (0 / sub_7bca74ce + sub_6a8d1f70) + (balanceOf[this.address].field_0 - (0 / sub_7bca74ce + sub_6a8d1f70) / 2) wei
                             gas gas_remaining wei
                            args address(this.address), balanceOf[this.address].field_0 - (0 / sub_7bca74ce + sub_6a8d1f70) - (balanceOf[this.address].field_0 - (0 / sub_7bca74ce + sub_6a8d1f70) / 2), 0, 0, _owner, block.timestamp
                    else:
                        if eth.balance(this.address) and balanceOf[this.address].field_0 - (0 / sub_7bca74ce + sub_6a8d1f70) / 2 > -1 / eth.balance(this.address):
                            revert with 0, 17
                        if not eth.balance(this.address):
                            revert with 0, 18
                        if eth.balance(this.address) * balanceOf[this.address].field_0 - (0 / sub_7bca74ce + sub_6a8d1f70) / 2 / eth.balance(this.address) != balanceOf[this.address].field_0 - (0 / sub_7bca74ce + sub_6a8d1f70) / 2:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not (0 / sub_7bca74ce + sub_6a8d1f70) + (balanceOf[this.address].field_0 - (0 / sub_7bca74ce + sub_6a8d1f70) / 2):
                            revert with 0, 'SafeMath: division by zero', 0
                        if not this.address:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not uniswapV2RouterAddress:
                            revert with 0, 'ERC20: approve to the zero address'
                        allowance[address(this.address)][stor5] = balanceOf[this.address].field_0 - (0 / sub_7bca74ce + sub_6a8d1f70) - (balanceOf[this.address].field_0 - (0 / sub_7bca74ce + sub_6a8d1f70) / 2)
                        emit Approval((balanceOf[this.address].field_0 - (0 / sub_7bca74ce + sub_6a8d1f70) - (balanceOf[this.address].field_0 - (0 / sub_7bca74ce + sub_6a8d1f70) / 2)), this.address, uniswapV2RouterAddress);
                        require ext_code.size(uniswapV2RouterAddress)
                        call uniswapV2RouterAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                           value eth.balance(this.address) * balanceOf[this.address].field_0 - (0 / sub_7bca74ce + sub_6a8d1f70) / 2 / (0 / sub_7bca74ce + sub_6a8d1f70) + (balanceOf[this.address].field_0 - (0 / sub_7bca74ce + sub_6a8d1f70) / 2) wei
                             gas gas_remaining wei
                            args address(this.address), balanceOf[this.address].field_0 - (0 / sub_7bca74ce + sub_6a8d1f70) - (balanceOf[this.address].field_0 - (0 / sub_7bca74ce + sub_6a8d1f70) / 2), 0, 0, _owner, block.timestamp
                else:
                    if balanceOf[this.address].field_0 and sub_7bca74ce > -1 / balanceOf[this.address].field_0:
                        revert with 0, 17
                    if not balanceOf[this.address].field_0:
                        revert with 0, 18
                    if balanceOf[this.address].field_0 * sub_7bca74ce / balanceOf[this.address].field_0 != sub_7bca74ce:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                    if not sub_7bca74ce + sub_6a8d1f70:
                        revert with 0, 'SafeMath: division by zero', 0
                    if balanceOf[this.address].field_0 * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70 > balanceOf[this.address].field_0:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if balanceOf[this.address].field_0 < balanceOf[this.address].field_0 * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70:
                        revert with 0, 17
                    if balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) / 2 > balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) < balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) / 2:
                        revert with 0, 17
                    if balanceOf[this.address].field_0 * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70 > !(balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) / 2):
                        revert with 0, 17
                    if (balanceOf[this.address].field_0 * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) + (balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) / 2) < balanceOf[this.address].field_0 * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70:
                        revert with 0, 'SafeMath: addition overflow'
                    if not this.address:
                        revert with 0, 'ERC20: approve from the zero address'
                    if not uniswapV2RouterAddress:
                        revert with 0, 'ERC20: approve to the zero address'
                    allowance[address(this.address)][stor5] = (balanceOf[this.address].field_0 * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) + (balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) / 2)
                    emit Approval(((balanceOf[this.address].field_0 * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) + (balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) / 2)), this.address, uniswapV2RouterAddress);
                    mem[384] = this.address
                    require ext_code.size(uniswapV2RouterAddress)
                    staticcall uniswapV2RouterAddress.WAVAX() with:
                            gas gas_remaining wei
                    mem[448] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[416] = ext_call.return_data[12 len 20]
                    if 60 > !block.timestamp:
                        revert with 0, 17
                    mem[ceil32(return_data.size) + 448] = 0x762b156200000000000000000000000000000000000000000000000000000000
                    mem[ceil32(return_data.size) + 452] = (balanceOf[this.address].field_0 * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) + (balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) / 2)
                    idx = 0
                    s = ceil32(return_data.size) + 644
                    t = 384
                    while idx < 2:
                        mem[s] = mem[t + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(uniswapV2RouterAddress)
                    call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args (balanceOf[this.address].field_0 * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) + (balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) / 2), 0, 160, address(this.address), block.timestamp + 60, 2, mem[ceil32(return_data.size) + 644 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if balanceOf[this.address].field_0 * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70 > !(balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) / 2):
                        revert with 0, 17
                    if (balanceOf[this.address].field_0 * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) + (balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) / 2) < balanceOf[this.address].field_0 * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70:
                        revert with 0, 'SafeMath: addition overflow'
                    if not eth.balance(this.address):
                        if not (balanceOf[this.address].field_0 * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) + (balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) / 2):
                            revert with 0, 'SafeMath: division by zero', 0
                        if not this.address:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not uniswapV2RouterAddress:
                            revert with 0, 'ERC20: approve to the zero address'
                        allowance[address(this.address)][stor5] = balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) - (balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) / 2)
                        emit Approval((balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) - (balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) / 2)), this.address, uniswapV2RouterAddress);
                        require ext_code.size(uniswapV2RouterAddress)
                        call uniswapV2RouterAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                           value 0 / (balanceOf[this.address].field_0 * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) + (balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) / 2) wei
                             gas gas_remaining wei
                            args address(this.address), balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) - (balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) / 2), 0, 0, _owner, block.timestamp
                    else:
                        if eth.balance(this.address) and balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) / 2 > -1 / eth.balance(this.address):
                            revert with 0, 17
                        if not eth.balance(this.address):
                            revert with 0, 18
                        if eth.balance(this.address) * balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) / 2 / eth.balance(this.address) != balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) / 2:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not (balanceOf[this.address].field_0 * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) + (balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) / 2):
                            revert with 0, 'SafeMath: division by zero', 0
                        if not this.address:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not uniswapV2RouterAddress:
                            revert with 0, 'ERC20: approve to the zero address'
                        allowance[address(this.address)][stor5] = balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) - (balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) / 2)
                        emit Approval((balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) - (balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) / 2)), this.address, uniswapV2RouterAddress);
                        require ext_code.size(uniswapV2RouterAddress)
                        call uniswapV2RouterAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                           value eth.balance(this.address) * balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) / 2 / (balanceOf[this.address].field_0 * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) + (balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) / 2) wei
                             gas gas_remaining wei
                            args address(this.address), balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) - (balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) / 2), 0, 0, _owner, block.timestamp
        else:
            if uint8(stor10.field_160):
                if not sub_7bca74ce + sub_6a8d1f70:
                    if not balanceOf[this.address].field_0:
                        if 0 > balanceOf[this.address].field_0:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if balanceOf[this.address].field_0 < 0:
                            revert with 0, 17
                        if balanceOf[this.address].field_1 > balanceOf[this.address].field_0:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if balanceOf[this.address].field_0 < balanceOf[this.address].field_1:
                            revert with 0, 17
                        if 0 > !balanceOf[this.address].field_1:
                            revert with 0, 17
                        if balanceOf[this.address].field_1 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if not this.address:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not uniswapV2RouterAddress:
                            revert with 0, 'ERC20: approve to the zero address'
                        allowance[address(this.address)][stor5] = balanceOf[this.address].field_1
                        emit Approval(balanceOf[this.address].field_1, this.address, uniswapV2RouterAddress);
                        mem[384] = this.address
                        require ext_code.size(uniswapV2RouterAddress)
                        staticcall uniswapV2RouterAddress.WAVAX() with:
                                gas gas_remaining wei
                        mem[448] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[416] = ext_call.return_data[12 len 20]
                        if 60 > !block.timestamp:
                            revert with 0, 17
                        mem[ceil32(return_data.size) + 448] = 0x762b156200000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 452] = balanceOf[this.address].field_1
                        idx = 0
                        s = ceil32(return_data.size) + 644
                        t = 384
                        while idx < 2:
                            mem[s] = mem[t + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(uniswapV2RouterAddress)
                        call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args 2 * Mask(256, -1, balanceOf[this.address].field_1), 0, 160, address(this.address), block.timestamp + 60, 2, mem[ceil32(return_data.size) + 644 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if 0 > !balanceOf[this.address].field_1:
                            revert with 0, 17
                        if balanceOf[this.address].field_1 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if not eth.balance(this.address):
                            if not balanceOf[this.address].field_1:
                                revert with 0, 'SafeMath: division by zero', 0
                            if not this.address:
                                revert with 0, 'ERC20: approve from the zero address'
                            if not uniswapV2RouterAddress:
                                revert with 0, 'ERC20: approve to the zero address'
                            allowance[address(this.address)][stor5] = balanceOf[this.address].field_0 - balanceOf[this.address].field_1
                            emit Approval((balanceOf[this.address].field_0 - balanceOf[this.address].field_1), this.address, uniswapV2RouterAddress);
                            require ext_code.size(uniswapV2RouterAddress)
                            call uniswapV2RouterAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                               value 0 / balanceOf[this.address].field_1 wei
                                 gas gas_remaining wei
                                args address(this.address), balanceOf[this.address].field_0 - balanceOf[this.address].field_1, 0, 0, _owner, block.timestamp
                        else:
                            if eth.balance(this.address) and balanceOf[this.address].field_1 > -1 / eth.balance(this.address):
                                revert with 0, 17
                            if not eth.balance(this.address):
                                revert with 0, 18
                            if eth.balance(this.address) * balanceOf[this.address].field_1 / eth.balance(this.address) != balanceOf[this.address].field_1:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if not balanceOf[this.address].field_1:
                                revert with 0, 'SafeMath: division by zero', 0
                            if not this.address:
                                revert with 0, 'ERC20: approve from the zero address'
                            if not uniswapV2RouterAddress:
                                revert with 0, 'ERC20: approve to the zero address'
                            allowance[address(this.address)][stor5] = balanceOf[this.address].field_0 - balanceOf[this.address].field_1
                            emit Approval((balanceOf[this.address].field_0 - balanceOf[this.address].field_1), this.address, uniswapV2RouterAddress);
                            require ext_code.size(uniswapV2RouterAddress)
                            call uniswapV2RouterAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                               value eth.balance(this.address) * balanceOf[this.address].field_1 / balanceOf[this.address].field_1 wei
                                 gas gas_remaining wei
                                args address(this.address), balanceOf[this.address].field_0 - balanceOf[this.address].field_1, 0, 0, _owner, block.timestamp
                    else:
                        if balanceOf[this.address].field_0 and sub_7bca74ce > -1 / balanceOf[this.address].field_0:
                            revert with 0, 17
                        if not balanceOf[this.address].field_0:
                            revert with 0, 18
                        if balanceOf[this.address].field_0 * sub_7bca74ce / balanceOf[this.address].field_0 != sub_7bca74ce:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                        if balanceOf[this.address].field_0 * sub_7bca74ce > balanceOf[this.address].field_0:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if balanceOf[this.address].field_0 < balanceOf[this.address].field_0 * sub_7bca74ce:
                            revert with 0, 17
                        if balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce) / 2 > balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce):
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce) < balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce) / 2:
                            revert with 0, 17
                        if balanceOf[this.address].field_0 * sub_7bca74ce > !(balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce) / 2):
                            revert with 0, 17
                        if (balanceOf[this.address].field_0 * sub_7bca74ce) + (balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce) / 2) < balanceOf[this.address].field_0 * sub_7bca74ce:
                            revert with 0, 'SafeMath: addition overflow'
                        if not this.address:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not uniswapV2RouterAddress:
                            revert with 0, 'ERC20: approve to the zero address'
                        allowance[address(this.address)][stor5] = (balanceOf[this.address].field_0 * sub_7bca74ce) + (balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce) / 2)
                        emit Approval(((balanceOf[this.address].field_0 * sub_7bca74ce) + (balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce) / 2)), this.address, uniswapV2RouterAddress);
                        mem[384] = this.address
                        require ext_code.size(uniswapV2RouterAddress)
                        staticcall uniswapV2RouterAddress.WAVAX() with:
                                gas gas_remaining wei
                        mem[448] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[416] = ext_call.return_data[12 len 20]
                        if 60 > !block.timestamp:
                            revert with 0, 17
                        mem[ceil32(return_data.size) + 448] = 0x762b156200000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 452] = (balanceOf[this.address].field_0 * sub_7bca74ce) + (balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce) / 2)
                        idx = 0
                        s = ceil32(return_data.size) + 644
                        t = 384
                        while idx < 2:
                            mem[s] = mem[t + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(uniswapV2RouterAddress)
                        call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args (balanceOf[this.address].field_0 * sub_7bca74ce) + (balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce) / 2), 0, 160, address(this.address), block.timestamp + 60, 2, mem[ceil32(return_data.size) + 644 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if balanceOf[this.address].field_0 * sub_7bca74ce > !(balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce) / 2):
                            revert with 0, 17
                        if (balanceOf[this.address].field_0 * sub_7bca74ce) + (balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce) / 2) < balanceOf[this.address].field_0 * sub_7bca74ce:
                            revert with 0, 'SafeMath: addition overflow'
                        if not eth.balance(this.address):
                            if not (balanceOf[this.address].field_0 * sub_7bca74ce) + (balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce) / 2):
                                revert with 0, 'SafeMath: division by zero', 0
                            if not this.address:
                                revert with 0, 'ERC20: approve from the zero address'
                            if not uniswapV2RouterAddress:
                                revert with 0, 'ERC20: approve to the zero address'
                            allowance[address(this.address)][stor5] = balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce) - (balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce) / 2)
                            emit Approval((balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce) - (balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce) / 2)), this.address, uniswapV2RouterAddress);
                            require ext_code.size(uniswapV2RouterAddress)
                            call uniswapV2RouterAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                               value 0 / (balanceOf[this.address].field_0 * sub_7bca74ce) + (balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce) / 2) wei
                                 gas gas_remaining wei
                                args address(this.address), balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce) - (balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce) / 2), 0, 0, _owner, block.timestamp
                        else:
                            if eth.balance(this.address) and balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce) / 2 > -1 / eth.balance(this.address):
                                revert with 0, 17
                            if not eth.balance(this.address):
                                revert with 0, 18
                            if eth.balance(this.address) * balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce) / 2 / eth.balance(this.address) != balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce) / 2:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if not (balanceOf[this.address].field_0 * sub_7bca74ce) + (balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce) / 2):
                                revert with 0, 'SafeMath: division by zero', 0
                            if not this.address:
                                revert with 0, 'ERC20: approve from the zero address'
                            if not uniswapV2RouterAddress:
                                revert with 0, 'ERC20: approve to the zero address'
                            allowance[address(this.address)][stor5] = balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce) - (balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce) / 2)
                            emit Approval((balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce) - (balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce) / 2)), this.address, uniswapV2RouterAddress);
                            require ext_code.size(uniswapV2RouterAddress)
                            call uniswapV2RouterAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                               value eth.balance(this.address) * balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce) / 2 / (balanceOf[this.address].field_0 * sub_7bca74ce) + (balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce) / 2) wei
                                 gas gas_remaining wei
                                args address(this.address), balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce) - (balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce) / 2), 0, 0, _owner, block.timestamp
                else:
                    if not balanceOf[this.address].field_0:
                        if not sub_7bca74ce + sub_6a8d1f70:
                            revert with 0, 'SafeMath: division by zero', 0
                        if 0 / sub_7bca74ce + sub_6a8d1f70 > balanceOf[this.address].field_0:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if balanceOf[this.address].field_0 < 0 / sub_7bca74ce + sub_6a8d1f70:
                            revert with 0, 17
                        if balanceOf[this.address].field_0 - (0 / sub_7bca74ce + sub_6a8d1f70) / 2 > balanceOf[this.address].field_0 - (0 / sub_7bca74ce + sub_6a8d1f70):
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if balanceOf[this.address].field_0 - (0 / sub_7bca74ce + sub_6a8d1f70) < balanceOf[this.address].field_0 - (0 / sub_7bca74ce + sub_6a8d1f70) / 2:
                            revert with 0, 17
                        if 0 / sub_7bca74ce + sub_6a8d1f70 > !(balanceOf[this.address].field_0 - (0 / sub_7bca74ce + sub_6a8d1f70) / 2):
                            revert with 0, 17
                        if (0 / sub_7bca74ce + sub_6a8d1f70) + (balanceOf[this.address].field_0 - (0 / sub_7bca74ce + sub_6a8d1f70) / 2) < 0 / sub_7bca74ce + sub_6a8d1f70:
                            revert with 0, 'SafeMath: addition overflow'
                        if not this.address:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not uniswapV2RouterAddress:
                            revert with 0, 'ERC20: approve to the zero address'
                        allowance[address(this.address)][stor5] = (0 / sub_7bca74ce + sub_6a8d1f70) + (balanceOf[this.address].field_0 - (0 / sub_7bca74ce + sub_6a8d1f70) / 2)
                        emit Approval(((0 / sub_7bca74ce + sub_6a8d1f70) + (balanceOf[this.address].field_0 - (0 / sub_7bca74ce + sub_6a8d1f70) / 2)), this.address, uniswapV2RouterAddress);
                        mem[384] = this.address
                        require ext_code.size(uniswapV2RouterAddress)
                        staticcall uniswapV2RouterAddress.WAVAX() with:
                                gas gas_remaining wei
                        mem[448] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[416] = ext_call.return_data[12 len 20]
                        if 60 > !block.timestamp:
                            revert with 0, 17
                        mem[ceil32(return_data.size) + 448] = 0x762b156200000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 452] = (0 / sub_7bca74ce + sub_6a8d1f70) + (balanceOf[this.address].field_0 - (0 / sub_7bca74ce + sub_6a8d1f70) / 2)
                        idx = 0
                        s = ceil32(return_data.size) + 644
                        t = 384
                        while idx < 2:
                            mem[s] = mem[t + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(uniswapV2RouterAddress)
                        call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args (0 / sub_7bca74ce + sub_6a8d1f70) + (balanceOf[this.address].field_0 - (0 / sub_7bca74ce + sub_6a8d1f70) / 2), 0, 160, address(this.address), block.timestamp + 60, 2, mem[ceil32(return_data.size) + 644 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if 0 / sub_7bca74ce + sub_6a8d1f70 > !(balanceOf[this.address].field_0 - (0 / sub_7bca74ce + sub_6a8d1f70) / 2):
                            revert with 0, 17
                        if (0 / sub_7bca74ce + sub_6a8d1f70) + (balanceOf[this.address].field_0 - (0 / sub_7bca74ce + sub_6a8d1f70) / 2) < 0 / sub_7bca74ce + sub_6a8d1f70:
                            revert with 0, 'SafeMath: addition overflow'
                        if not eth.balance(this.address):
                            if not (0 / sub_7bca74ce + sub_6a8d1f70) + (balanceOf[this.address].field_0 - (0 / sub_7bca74ce + sub_6a8d1f70) / 2):
                                revert with 0, 'SafeMath: division by zero', 0
                            if not this.address:
                                revert with 0, 'ERC20: approve from the zero address'
                            if not uniswapV2RouterAddress:
                                revert with 0, 'ERC20: approve to the zero address'
                            allowance[address(this.address)][stor5] = balanceOf[this.address].field_0 - (0 / sub_7bca74ce + sub_6a8d1f70) - (balanceOf[this.address].field_0 - (0 / sub_7bca74ce + sub_6a8d1f70) / 2)
                            emit Approval((balanceOf[this.address].field_0 - (0 / sub_7bca74ce + sub_6a8d1f70) - (balanceOf[this.address].field_0 - (0 / sub_7bca74ce + sub_6a8d1f70) / 2)), this.address, uniswapV2RouterAddress);
                            require ext_code.size(uniswapV2RouterAddress)
                            call uniswapV2RouterAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                               value 0 / (0 / sub_7bca74ce + sub_6a8d1f70) + (balanceOf[this.address].field_0 - (0 / sub_7bca74ce + sub_6a8d1f70) / 2) wei
                                 gas gas_remaining wei
                                args address(this.address), balanceOf[this.address].field_0 - (0 / sub_7bca74ce + sub_6a8d1f70) - (balanceOf[this.address].field_0 - (0 / sub_7bca74ce + sub_6a8d1f70) / 2), 0, 0, _owner, block.timestamp
                        else:
                            if eth.balance(this.address) and balanceOf[this.address].field_0 - (0 / sub_7bca74ce + sub_6a8d1f70) / 2 > -1 / eth.balance(this.address):
                                revert with 0, 17
                            if not eth.balance(this.address):
                                revert with 0, 18
                            if eth.balance(this.address) * balanceOf[this.address].field_0 - (0 / sub_7bca74ce + sub_6a8d1f70) / 2 / eth.balance(this.address) != balanceOf[this.address].field_0 - (0 / sub_7bca74ce + sub_6a8d1f70) / 2:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if not (0 / sub_7bca74ce + sub_6a8d1f70) + (balanceOf[this.address].field_0 - (0 / sub_7bca74ce + sub_6a8d1f70) / 2):
                                revert with 0, 'SafeMath: division by zero', 0
                            if not this.address:
                                revert with 0, 'ERC20: approve from the zero address'
                            if not uniswapV2RouterAddress:
                                revert with 0, 'ERC20: approve to the zero address'
                            allowance[address(this.address)][stor5] = balanceOf[this.address].field_0 - (0 / sub_7bca74ce + sub_6a8d1f70) - (balanceOf[this.address].field_0 - (0 / sub_7bca74ce + sub_6a8d1f70) / 2)
                            emit Approval((balanceOf[this.address].field_0 - (0 / sub_7bca74ce + sub_6a8d1f70) - (balanceOf[this.address].field_0 - (0 / sub_7bca74ce + sub_6a8d1f70) / 2)), this.address, uniswapV2RouterAddress);
                            require ext_code.size(uniswapV2RouterAddress)
                            call uniswapV2RouterAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                               value eth.balance(this.address) * balanceOf[this.address].field_0 - (0 / sub_7bca74ce + sub_6a8d1f70) / 2 / (0 / sub_7bca74ce + sub_6a8d1f70) + (balanceOf[this.address].field_0 - (0 / sub_7bca74ce + sub_6a8d1f70) / 2) wei
                                 gas gas_remaining wei
                                args address(this.address), balanceOf[this.address].field_0 - (0 / sub_7bca74ce + sub_6a8d1f70) - (balanceOf[this.address].field_0 - (0 / sub_7bca74ce + sub_6a8d1f70) / 2), 0, 0, _owner, block.timestamp
                    else:
                        if balanceOf[this.address].field_0 and sub_7bca74ce > -1 / balanceOf[this.address].field_0:
                            revert with 0, 17
                        if not balanceOf[this.address].field_0:
                            revert with 0, 18
                        if balanceOf[this.address].field_0 * sub_7bca74ce / balanceOf[this.address].field_0 != sub_7bca74ce:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                        if not sub_7bca74ce + sub_6a8d1f70:
                            revert with 0, 'SafeMath: division by zero', 0
                        if balanceOf[this.address].field_0 * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70 > balanceOf[this.address].field_0:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if balanceOf[this.address].field_0 < balanceOf[this.address].field_0 * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70:
                            revert with 0, 17
                        if balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) / 2 > balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70):
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) < balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) / 2:
                            revert with 0, 17
                        if balanceOf[this.address].field_0 * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70 > !(balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) / 2):
                            revert with 0, 17
                        if (balanceOf[this.address].field_0 * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) + (balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) / 2) < balanceOf[this.address].field_0 * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70:
                            revert with 0, 'SafeMath: addition overflow'
                        if not this.address:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not uniswapV2RouterAddress:
                            revert with 0, 'ERC20: approve to the zero address'
                        allowance[address(this.address)][stor5] = (balanceOf[this.address].field_0 * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) + (balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) / 2)
                        emit Approval(((balanceOf[this.address].field_0 * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) + (balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) / 2)), this.address, uniswapV2RouterAddress);
                        mem[384] = this.address
                        require ext_code.size(uniswapV2RouterAddress)
                        staticcall uniswapV2RouterAddress.WAVAX() with:
                                gas gas_remaining wei
                        mem[448] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[416] = ext_call.return_data[12 len 20]
                        if 60 > !block.timestamp:
                            revert with 0, 17
                        mem[ceil32(return_data.size) + 448] = 0x762b156200000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 452] = (balanceOf[this.address].field_0 * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) + (balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) / 2)
                        idx = 0
                        s = ceil32(return_data.size) + 644
                        t = 384
                        while idx < 2:
                            mem[s] = mem[t + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(uniswapV2RouterAddress)
                        call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args (balanceOf[this.address].field_0 * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) + (balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) / 2), 0, 160, address(this.address), block.timestamp + 60, 2, mem[ceil32(return_data.size) + 644 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if balanceOf[this.address].field_0 * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70 > !(balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) / 2):
                            revert with 0, 17
                        if (balanceOf[this.address].field_0 * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) + (balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) / 2) < balanceOf[this.address].field_0 * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70:
                            revert with 0, 'SafeMath: addition overflow'
                        if not eth.balance(this.address):
                            if not (balanceOf[this.address].field_0 * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) + (balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) / 2):
                                revert with 0, 'SafeMath: division by zero', 0
                            if not this.address:
                                revert with 0, 'ERC20: approve from the zero address'
                            if not uniswapV2RouterAddress:
                                revert with 0, 'ERC20: approve to the zero address'
                            allowance[address(this.address)][stor5] = balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) - (balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) / 2)
                            emit Approval((balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) - (balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) / 2)), this.address, uniswapV2RouterAddress);
                            require ext_code.size(uniswapV2RouterAddress)
                            call uniswapV2RouterAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                               value 0 / (balanceOf[this.address].field_0 * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) + (balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) / 2) wei
                                 gas gas_remaining wei
                                args address(this.address), balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) - (balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) / 2), 0, 0, _owner, block.timestamp
                        else:
                            if eth.balance(this.address) and balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) / 2 > -1 / eth.balance(this.address):
                                revert with 0, 17
                            if not eth.balance(this.address):
                                revert with 0, 18
                            if eth.balance(this.address) * balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) / 2 / eth.balance(this.address) != balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) / 2:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if not (balanceOf[this.address].field_0 * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) + (balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) / 2):
                                revert with 0, 'SafeMath: division by zero', 0
                            if not this.address:
                                revert with 0, 'ERC20: approve from the zero address'
                            if not uniswapV2RouterAddress:
                                revert with 0, 'ERC20: approve to the zero address'
                            allowance[address(this.address)][stor5] = balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) - (balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) / 2)
                            emit Approval((balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) - (balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) / 2)), this.address, uniswapV2RouterAddress);
                            require ext_code.size(uniswapV2RouterAddress)
                            call uniswapV2RouterAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                               value eth.balance(this.address) * balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) / 2 / (balanceOf[this.address].field_0 * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) + (balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) / 2) wei
                                 gas gas_remaining wei
                                args address(this.address), balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) - (balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) / 2), 0, 0, _owner, block.timestamp
            else:
                if not sub_7bca74ce + sub_6a8d1f70:
                    if not uint256(stor17.field_0):
                        if 0 > uint256(stor17.field_0):
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if uint256(stor17.field_0) < 0:
                            revert with 0, 17
                        if uint255(stor17.field_1) > uint256(stor17.field_0):
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if uint256(stor17.field_0) < uint255(stor17.field_1):
                            revert with 0, 17
                        if 0 > !uint255(stor17.field_1):
                            revert with 0, 17
                        if uint255(stor17.field_1) < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if not this.address:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not uniswapV2RouterAddress:
                            revert with 0, 'ERC20: approve to the zero address'
                        allowance[address(this.address)][stor5] = uint255(stor17.field_1)
                        emit Approval(uint255(stor17.field_1), this.address, uniswapV2RouterAddress);
                        mem[384] = this.address
                        require ext_code.size(uniswapV2RouterAddress)
                        staticcall uniswapV2RouterAddress.WAVAX() with:
                                gas gas_remaining wei
                        mem[448] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[416] = ext_call.return_data[12 len 20]
                        if 60 > !block.timestamp:
                            revert with 0, 17
                        mem[ceil32(return_data.size) + 448] = 0x762b156200000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 452] = uint255(stor17.field_1)
                        idx = 0
                        s = ceil32(return_data.size) + 644
                        t = 384
                        while idx < 2:
                            mem[s] = mem[t + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(uniswapV2RouterAddress)
                        call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args 2 * Mask(256, -1, uint255(stor17.field_1)), 0, 160, address(this.address), block.timestamp + 60, 2, mem[ceil32(return_data.size) + 644 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if 0 > !uint255(stor17.field_1):
                            revert with 0, 17
                        if uint255(stor17.field_1) < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if not eth.balance(this.address):
                            if not uint255(stor17.field_1):
                                revert with 0, 'SafeMath: division by zero', 0
                            if not this.address:
                                revert with 0, 'ERC20: approve from the zero address'
                            if not uniswapV2RouterAddress:
                                revert with 0, 'ERC20: approve to the zero address'
                            allowance[address(this.address)][stor5] = uint256(stor17.field_0) - uint255(stor17.field_1)
                            emit Approval((uint256(stor17.field_0) - uint255(stor17.field_1)), this.address, uniswapV2RouterAddress);
                            require ext_code.size(uniswapV2RouterAddress)
                            call uniswapV2RouterAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                               value 0 / uint255(stor17.field_1) wei
                                 gas gas_remaining wei
                                args address(this.address), uint256(stor17.field_0) - uint255(stor17.field_1), 0, 0, _owner, block.timestamp
                        else:
                            if eth.balance(this.address) and uint255(stor17.field_1) > -1 / eth.balance(this.address):
                                revert with 0, 17
                            if not eth.balance(this.address):
                                revert with 0, 18
                            if eth.balance(this.address) * uint255(stor17.field_1) / eth.balance(this.address) != uint255(stor17.field_1):
                                revert with 0, 'SafeMath: multiplication overflow'
                            if not uint255(stor17.field_1):
                                revert with 0, 'SafeMath: division by zero', 0
                            if not this.address:
                                revert with 0, 'ERC20: approve from the zero address'
                            if not uniswapV2RouterAddress:
                                revert with 0, 'ERC20: approve to the zero address'
                            allowance[address(this.address)][stor5] = uint256(stor17.field_0) - uint255(stor17.field_1)
                            emit Approval((uint256(stor17.field_0) - uint255(stor17.field_1)), this.address, uniswapV2RouterAddress);
                            require ext_code.size(uniswapV2RouterAddress)
                            call uniswapV2RouterAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                               value eth.balance(this.address) * uint255(stor17.field_1) / uint255(stor17.field_1) wei
                                 gas gas_remaining wei
                                args address(this.address), uint256(stor17.field_0) - uint255(stor17.field_1), 0, 0, _owner, block.timestamp
                    else:
                        if uint256(stor17.field_0) and sub_7bca74ce > -1 / uint256(stor17.field_0):
                            revert with 0, 17
                        if not uint256(stor17.field_0):
                            revert with 0, 18
                        if uint256(stor17.field_0) * sub_7bca74ce / uint256(stor17.field_0) != sub_7bca74ce:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                        if uint256(stor17.field_0) * sub_7bca74ce > uint256(stor17.field_0):
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if uint256(stor17.field_0) < uint256(stor17.field_0) * sub_7bca74ce:
                            revert with 0, 17
                        if uint256(stor17.field_0) - (uint256(stor17.field_0) * sub_7bca74ce) / 2 > uint256(stor17.field_0) - (uint256(stor17.field_0) * sub_7bca74ce):
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if uint256(stor17.field_0) - (uint256(stor17.field_0) * sub_7bca74ce) < uint256(stor17.field_0) - (uint256(stor17.field_0) * sub_7bca74ce) / 2:
                            revert with 0, 17
                        if uint256(stor17.field_0) * sub_7bca74ce > !(uint256(stor17.field_0) - (uint256(stor17.field_0) * sub_7bca74ce) / 2):
                            revert with 0, 17
                        if (uint256(stor17.field_0) * sub_7bca74ce) + (uint256(stor17.field_0) - (uint256(stor17.field_0) * sub_7bca74ce) / 2) < uint256(stor17.field_0) * sub_7bca74ce:
                            revert with 0, 'SafeMath: addition overflow'
                        if not this.address:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not uniswapV2RouterAddress:
                            revert with 0, 'ERC20: approve to the zero address'
                        allowance[address(this.address)][stor5] = (uint256(stor17.field_0) * sub_7bca74ce) + (uint256(stor17.field_0) - (uint256(stor17.field_0) * sub_7bca74ce) / 2)
                        emit Approval(((uint256(stor17.field_0) * sub_7bca74ce) + (uint256(stor17.field_0) - (uint256(stor17.field_0) * sub_7bca74ce) / 2)), this.address, uniswapV2RouterAddress);
                        mem[384] = this.address
                        require ext_code.size(uniswapV2RouterAddress)
                        staticcall uniswapV2RouterAddress.WAVAX() with:
                                gas gas_remaining wei
                        mem[448] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[416] = ext_call.return_data[12 len 20]
                        if 60 > !block.timestamp:
                            revert with 0, 17
                        mem[ceil32(return_data.size) + 448] = 0x762b156200000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 452] = (uint256(stor17.field_0) * sub_7bca74ce) + (uint256(stor17.field_0) - (uint256(stor17.field_0) * sub_7bca74ce) / 2)
                        idx = 0
                        s = ceil32(return_data.size) + 644
                        t = 384
                        while idx < 2:
                            mem[s] = mem[t + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(uniswapV2RouterAddress)
                        call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args (uint256(stor17.field_0) * sub_7bca74ce) + (uint256(stor17.field_0) - (uint256(stor17.field_0) * sub_7bca74ce) / 2), 0, 160, address(this.address), block.timestamp + 60, 2, mem[ceil32(return_data.size) + 644 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if uint256(stor17.field_0) * sub_7bca74ce > !(uint256(stor17.field_0) - (uint256(stor17.field_0) * sub_7bca74ce) / 2):
                            revert with 0, 17
                        if (uint256(stor17.field_0) * sub_7bca74ce) + (uint256(stor17.field_0) - (uint256(stor17.field_0) * sub_7bca74ce) / 2) < uint256(stor17.field_0) * sub_7bca74ce:
                            revert with 0, 'SafeMath: addition overflow'
                        if not eth.balance(this.address):
                            if not (uint256(stor17.field_0) * sub_7bca74ce) + (uint256(stor17.field_0) - (uint256(stor17.field_0) * sub_7bca74ce) / 2):
                                revert with 0, 'SafeMath: division by zero', 0
                            if not this.address:
                                revert with 0, 'ERC20: approve from the zero address'
                            if not uniswapV2RouterAddress:
                                revert with 0, 'ERC20: approve to the zero address'
                            allowance[address(this.address)][stor5] = uint256(stor17.field_0) - (uint256(stor17.field_0) * sub_7bca74ce) - (uint256(stor17.field_0) - (uint256(stor17.field_0) * sub_7bca74ce) / 2)
                            emit Approval((uint256(stor17.field_0) - (uint256(stor17.field_0) * sub_7bca74ce) - (uint256(stor17.field_0) - (uint256(stor17.field_0) * sub_7bca74ce) / 2)), this.address, uniswapV2RouterAddress);
                            require ext_code.size(uniswapV2RouterAddress)
                            call uniswapV2RouterAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                               value 0 / (uint256(stor17.field_0) * sub_7bca74ce) + (uint256(stor17.field_0) - (uint256(stor17.field_0) * sub_7bca74ce) / 2) wei
                                 gas gas_remaining wei
                                args address(this.address), uint256(stor17.field_0) - (uint256(stor17.field_0) * sub_7bca74ce) - (uint256(stor17.field_0) - (uint256(stor17.field_0) * sub_7bca74ce) / 2), 0, 0, _owner, block.timestamp
                        else:
                            if eth.balance(this.address) and uint256(stor17.field_0) - (uint256(stor17.field_0) * sub_7bca74ce) / 2 > -1 / eth.balance(this.address):
                                revert with 0, 17
                            if not eth.balance(this.address):
                                revert with 0, 18
                            if eth.balance(this.address) * uint256(stor17.field_0) - (uint256(stor17.field_0) * sub_7bca74ce) / 2 / eth.balance(this.address) != uint256(stor17.field_0) - (uint256(stor17.field_0) * sub_7bca74ce) / 2:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if not (uint256(stor17.field_0) * sub_7bca74ce) + (uint256(stor17.field_0) - (uint256(stor17.field_0) * sub_7bca74ce) / 2):
                                revert with 0, 'SafeMath: division by zero', 0
                            if not this.address:
                                revert with 0, 'ERC20: approve from the zero address'
                            if not uniswapV2RouterAddress:
                                revert with 0, 'ERC20: approve to the zero address'
                            allowance[address(this.address)][stor5] = uint256(stor17.field_0) - (uint256(stor17.field_0) * sub_7bca74ce) - (uint256(stor17.field_0) - (uint256(stor17.field_0) * sub_7bca74ce) / 2)
                            emit Approval((uint256(stor17.field_0) - (uint256(stor17.field_0) * sub_7bca74ce) - (uint256(stor17.field_0) - (uint256(stor17.field_0) * sub_7bca74ce) / 2)), this.address, uniswapV2RouterAddress);
                            require ext_code.size(uniswapV2RouterAddress)
                            call uniswapV2RouterAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                               value eth.balance(this.address) * uint256(stor17.field_0) - (uint256(stor17.field_0) * sub_7bca74ce) / 2 / (uint256(stor17.field_0) * sub_7bca74ce) + (uint256(stor17.field_0) - (uint256(stor17.field_0) * sub_7bca74ce) / 2) wei
                                 gas gas_remaining wei
                                args address(this.address), uint256(stor17.field_0) - (uint256(stor17.field_0) * sub_7bca74ce) - (uint256(stor17.field_0) - (uint256(stor17.field_0) * sub_7bca74ce) / 2), 0, 0, _owner, block.timestamp
                else:
                    if not uint256(stor17.field_0):
                        if not sub_7bca74ce + sub_6a8d1f70:
                            revert with 0, 'SafeMath: division by zero', 0
                        if 0 / sub_7bca74ce + sub_6a8d1f70 > uint256(stor17.field_0):
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if uint256(stor17.field_0) < 0 / sub_7bca74ce + sub_6a8d1f70:
                            revert with 0, 17
                        if uint256(stor17.field_0) - (0 / sub_7bca74ce + sub_6a8d1f70) / 2 > uint256(stor17.field_0) - (0 / sub_7bca74ce + sub_6a8d1f70):
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if uint256(stor17.field_0) - (0 / sub_7bca74ce + sub_6a8d1f70) < uint256(stor17.field_0) - (0 / sub_7bca74ce + sub_6a8d1f70) / 2:
                            revert with 0, 17
                        if 0 / sub_7bca74ce + sub_6a8d1f70 > !(uint256(stor17.field_0) - (0 / sub_7bca74ce + sub_6a8d1f70) / 2):
                            revert with 0, 17
                        if (0 / sub_7bca74ce + sub_6a8d1f70) + (uint256(stor17.field_0) - (0 / sub_7bca74ce + sub_6a8d1f70) / 2) < 0 / sub_7bca74ce + sub_6a8d1f70:
                            revert with 0, 'SafeMath: addition overflow'
                        if not this.address:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not uniswapV2RouterAddress:
                            revert with 0, 'ERC20: approve to the zero address'
                        allowance[address(this.address)][stor5] = (0 / sub_7bca74ce + sub_6a8d1f70) + (uint256(stor17.field_0) - (0 / sub_7bca74ce + sub_6a8d1f70) / 2)
                        emit Approval(((0 / sub_7bca74ce + sub_6a8d1f70) + (uint256(stor17.field_0) - (0 / sub_7bca74ce + sub_6a8d1f70) / 2)), this.address, uniswapV2RouterAddress);
                        mem[384] = this.address
                        require ext_code.size(uniswapV2RouterAddress)
                        staticcall uniswapV2RouterAddress.WAVAX() with:
                                gas gas_remaining wei
                        mem[448] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[416] = ext_call.return_data[12 len 20]
                        if 60 > !block.timestamp:
                            revert with 0, 17
                        mem[ceil32(return_data.size) + 448] = 0x762b156200000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 452] = (0 / sub_7bca74ce + sub_6a8d1f70) + (uint256(stor17.field_0) - (0 / sub_7bca74ce + sub_6a8d1f70) / 2)
                        idx = 0
                        s = ceil32(return_data.size) + 644
                        t = 384
                        while idx < 2:
                            mem[s] = mem[t + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(uniswapV2RouterAddress)
                        call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args (0 / sub_7bca74ce + sub_6a8d1f70) + (uint256(stor17.field_0) - (0 / sub_7bca74ce + sub_6a8d1f70) / 2), 0, 160, address(this.address), block.timestamp + 60, 2, mem[ceil32(return_data.size) + 644 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if 0 / sub_7bca74ce + sub_6a8d1f70 > !(uint256(stor17.field_0) - (0 / sub_7bca74ce + sub_6a8d1f70) / 2):
                            revert with 0, 17
                        if (0 / sub_7bca74ce + sub_6a8d1f70) + (uint256(stor17.field_0) - (0 / sub_7bca74ce + sub_6a8d1f70) / 2) < 0 / sub_7bca74ce + sub_6a8d1f70:
                            revert with 0, 'SafeMath: addition overflow'
                        if not eth.balance(this.address):
                            if not (0 / sub_7bca74ce + sub_6a8d1f70) + (uint256(stor17.field_0) - (0 / sub_7bca74ce + sub_6a8d1f70) / 2):
                                revert with 0, 'SafeMath: division by zero', 0
                            if not this.address:
                                revert with 0, 'ERC20: approve from the zero address'
                            if not uniswapV2RouterAddress:
                                revert with 0, 'ERC20: approve to the zero address'
                            allowance[address(this.address)][stor5] = uint256(stor17.field_0) - (0 / sub_7bca74ce + sub_6a8d1f70) - (uint256(stor17.field_0) - (0 / sub_7bca74ce + sub_6a8d1f70) / 2)
                            emit Approval((uint256(stor17.field_0) - (0 / sub_7bca74ce + sub_6a8d1f70) - (uint256(stor17.field_0) - (0 / sub_7bca74ce + sub_6a8d1f70) / 2)), this.address, uniswapV2RouterAddress);
                            require ext_code.size(uniswapV2RouterAddress)
                            call uniswapV2RouterAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                               value 0 / (0 / sub_7bca74ce + sub_6a8d1f70) + (uint256(stor17.field_0) - (0 / sub_7bca74ce + sub_6a8d1f70) / 2) wei
                                 gas gas_remaining wei
                                args address(this.address), uint256(stor17.field_0) - (0 / sub_7bca74ce + sub_6a8d1f70) - (uint256(stor17.field_0) - (0 / sub_7bca74ce + sub_6a8d1f70) / 2), 0, 0, _owner, block.timestamp
                        else:
                            if eth.balance(this.address) and uint256(stor17.field_0) - (0 / sub_7bca74ce + sub_6a8d1f70) / 2 > -1 / eth.balance(this.address):
                                revert with 0, 17
                            if not eth.balance(this.address):
                                revert with 0, 18
                            if eth.balance(this.address) * uint256(stor17.field_0) - (0 / sub_7bca74ce + sub_6a8d1f70) / 2 / eth.balance(this.address) != uint256(stor17.field_0) - (0 / sub_7bca74ce + sub_6a8d1f70) / 2:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if not (0 / sub_7bca74ce + sub_6a8d1f70) + (uint256(stor17.field_0) - (0 / sub_7bca74ce + sub_6a8d1f70) / 2):
                                revert with 0, 'SafeMath: division by zero', 0
                            if not this.address:
                                revert with 0, 'ERC20: approve from the zero address'
                            if not uniswapV2RouterAddress:
                                revert with 0, 'ERC20: approve to the zero address'
                            allowance[address(this.address)][stor5] = uint256(stor17.field_0) - (0 / sub_7bca74ce + sub_6a8d1f70) - (uint256(stor17.field_0) - (0 / sub_7bca74ce + sub_6a8d1f70) / 2)
                            emit Approval((uint256(stor17.field_0) - (0 / sub_7bca74ce + sub_6a8d1f70) - (uint256(stor17.field_0) - (0 / sub_7bca74ce + sub_6a8d1f70) / 2)), this.address, uniswapV2RouterAddress);
                            require ext_code.size(uniswapV2RouterAddress)
                            call uniswapV2RouterAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                               value eth.balance(this.address) * uint256(stor17.field_0) - (0 / sub_7bca74ce + sub_6a8d1f70) / 2 / (0 / sub_7bca74ce + sub_6a8d1f70) + (uint256(stor17.field_0) - (0 / sub_7bca74ce + sub_6a8d1f70) / 2) wei
                                 gas gas_remaining wei
                                args address(this.address), uint256(stor17.field_0) - (0 / sub_7bca74ce + sub_6a8d1f70) - (uint256(stor17.field_0) - (0 / sub_7bca74ce + sub_6a8d1f70) / 2), 0, 0, _owner, block.timestamp
                    else:
                        if uint256(stor17.field_0) and sub_7bca74ce > -1 / uint256(stor17.field_0):
                            revert with 0, 17
                        if not uint256(stor17.field_0):
                            revert with 0, 18
                        if uint256(stor17.field_0) * sub_7bca74ce / uint256(stor17.field_0) != sub_7bca74ce:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                        if not sub_7bca74ce + sub_6a8d1f70:
                            revert with 0, 'SafeMath: division by zero', 0
                        if uint256(stor17.field_0) * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70 > uint256(stor17.field_0):
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if uint256(stor17.field_0) < uint256(stor17.field_0) * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70:
                            revert with 0, 17
                        if uint256(stor17.field_0) - (uint256(stor17.field_0) * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) / 2 > uint256(stor17.field_0) - (uint256(stor17.field_0) * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70):
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if uint256(stor17.field_0) - (uint256(stor17.field_0) * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) < uint256(stor17.field_0) - (uint256(stor17.field_0) * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) / 2:
                            revert with 0, 17
                        if uint256(stor17.field_0) * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70 > !(uint256(stor17.field_0) - (uint256(stor17.field_0) * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) / 2):
                            revert with 0, 17
                        if (uint256(stor17.field_0) * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) + (uint256(stor17.field_0) - (uint256(stor17.field_0) * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) / 2) < uint256(stor17.field_0) * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70:
                            revert with 0, 'SafeMath: addition overflow'
                        if not this.address:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not uniswapV2RouterAddress:
                            revert with 0, 'ERC20: approve to the zero address'
                        allowance[address(this.address)][stor5] = (uint256(stor17.field_0) * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) + (uint256(stor17.field_0) - (uint256(stor17.field_0) * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) / 2)
                        emit Approval(((uint256(stor17.field_0) * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) + (uint256(stor17.field_0) - (uint256(stor17.field_0) * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) / 2)), this.address, uniswapV2RouterAddress);
                        mem[384] = this.address
                        require ext_code.size(uniswapV2RouterAddress)
                        staticcall uniswapV2RouterAddress.WAVAX() with:
                                gas gas_remaining wei
                        mem[448] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[416] = ext_call.return_data[12 len 20]
                        if 60 > !block.timestamp:
                            revert with 0, 17
                        mem[ceil32(return_data.size) + 448] = 0x762b156200000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 452] = (uint256(stor17.field_0) * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) + (uint256(stor17.field_0) - (uint256(stor17.field_0) * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) / 2)
                        idx = 0
                        s = ceil32(return_data.size) + 644
                        t = 384
                        while idx < 2:
                            mem[s] = mem[t + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(uniswapV2RouterAddress)
                        call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args (uint256(stor17.field_0) * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) + (uint256(stor17.field_0) - (uint256(stor17.field_0) * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) / 2), 0, 160, address(this.address), block.timestamp + 60, 2, mem[ceil32(return_data.size) + 644 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if uint256(stor17.field_0) * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70 > !(uint256(stor17.field_0) - (uint256(stor17.field_0) * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) / 2):
                            revert with 0, 17
                        if (uint256(stor17.field_0) * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) + (uint256(stor17.field_0) - (uint256(stor17.field_0) * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) / 2) < uint256(stor17.field_0) * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70:
                            revert with 0, 'SafeMath: addition overflow'
                        if not eth.balance(this.address):
                            if not (uint256(stor17.field_0) * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) + (uint256(stor17.field_0) - (uint256(stor17.field_0) * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) / 2):
                                revert with 0, 'SafeMath: division by zero', 0
                            if not this.address:
                                revert with 0, 'ERC20: approve from the zero address'
                            if not uniswapV2RouterAddress:
                                revert with 0, 'ERC20: approve to the zero address'
                            allowance[address(this.address)][stor5] = uint256(stor17.field_0) - (uint256(stor17.field_0) * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) - (uint256(stor17.field_0) - (uint256(stor17.field_0) * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) / 2)
                            emit Approval((uint256(stor17.field_0) - (uint256(stor17.field_0) * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) - (uint256(stor17.field_0) - (uint256(stor17.field_0) * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) / 2)), this.address, uniswapV2RouterAddress);
                            require ext_code.size(uniswapV2RouterAddress)
                            call uniswapV2RouterAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                               value 0 / (uint256(stor17.field_0) * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) + (uint256(stor17.field_0) - (uint256(stor17.field_0) * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) / 2) wei
                                 gas gas_remaining wei
                                args address(this.address), uint256(stor17.field_0) - (uint256(stor17.field_0) * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) - (uint256(stor17.field_0) - (uint256(stor17.field_0) * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) / 2), 0, 0, _owner, block.timestamp
                        else:
                            if eth.balance(this.address) and uint256(stor17.field_0) - (uint256(stor17.field_0) * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) / 2 > -1 / eth.balance(this.address):
                                revert with 0, 17
                            if not eth.balance(this.address):
                                revert with 0, 18
                            if eth.balance(this.address) * uint256(stor17.field_0) - (uint256(stor17.field_0) * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) / 2 / eth.balance(this.address) != uint256(stor17.field_0) - (uint256(stor17.field_0) * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) / 2:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if not (uint256(stor17.field_0) * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) + (uint256(stor17.field_0) - (uint256(stor17.field_0) * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) / 2):
                                revert with 0, 'SafeMath: division by zero', 0
                            if not this.address:
                                revert with 0, 'ERC20: approve from the zero address'
                            if not uniswapV2RouterAddress:
                                revert with 0, 'ERC20: approve to the zero address'
                            allowance[address(this.address)][stor5] = uint256(stor17.field_0) - (uint256(stor17.field_0) * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) - (uint256(stor17.field_0) - (uint256(stor17.field_0) * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) / 2)
                            emit Approval((uint256(stor17.field_0) - (uint256(stor17.field_0) * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) - (uint256(stor17.field_0) - (uint256(stor17.field_0) * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) / 2)), this.address, uniswapV2RouterAddress);
                            require ext_code.size(uniswapV2RouterAddress)
                            call uniswapV2RouterAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                               value eth.balance(this.address) * uint256(stor17.field_0) - (uint256(stor17.field_0) * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) / 2 / (uint256(stor17.field_0) * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) + (uint256(stor17.field_0) - (uint256(stor17.field_0) * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) / 2) wei
                                 gas gas_remaining wei
                                args address(this.address), uint256(stor17.field_0) - (uint256(stor17.field_0) * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) - (uint256(stor17.field_0) - (uint256(stor17.field_0) * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) / 2), 0, 0, _owner, block.timestamp
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        call marketingAddress with:
           value eth.balance(this.address) wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with 0, 'Failed to send Ether'
    else:
        if uint8(stor10.field_160):
            if sub_7bca74ce > !sub_6a8d1f70:
                revert with 0, 17
            if sub_7bca74ce + sub_6a8d1f70 < sub_7bca74ce:
                revert with 0, 'SafeMath: addition overflow'
            if balanceOf[this.address].field_0 <= uint256(stor17.field_0):
                if not sub_7bca74ce + sub_6a8d1f70:
                    if not balanceOf[this.address].field_0:
                        if 0 > balanceOf[this.address].field_0:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if balanceOf[this.address].field_0 < 0:
                            revert with 0, 17
                        if balanceOf[this.address].field_1 > balanceOf[this.address].field_0:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if balanceOf[this.address].field_0 < balanceOf[this.address].field_1:
                            revert with 0, 17
                        if 0 > !balanceOf[this.address].field_1:
                            revert with 0, 17
                        if balanceOf[this.address].field_1 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if not this.address:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not uniswapV2RouterAddress:
                            revert with 0, 'ERC20: approve to the zero address'
                        allowance[address(this.address)][stor5] = balanceOf[this.address].field_1
                        emit Approval(balanceOf[this.address].field_1, this.address, uniswapV2RouterAddress);
                        mem[384] = this.address
                        require ext_code.size(uniswapV2RouterAddress)
                        staticcall uniswapV2RouterAddress.WAVAX() with:
                                gas gas_remaining wei
                        mem[448] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[416] = ext_call.return_data[12 len 20]
                        if 60 > !block.timestamp:
                            revert with 0, 17
                        mem[ceil32(return_data.size) + 448] = 0x762b156200000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 452] = balanceOf[this.address].field_1
                        idx = 0
                        s = ceil32(return_data.size) + 644
                        t = 384
                        while idx < 2:
                            mem[s] = mem[t + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(uniswapV2RouterAddress)
                        call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args 2 * Mask(256, -1, balanceOf[this.address].field_1), 0, 160, address(this.address), block.timestamp + 60, 2, mem[ceil32(return_data.size) + 644 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if 0 > !balanceOf[this.address].field_1:
                            revert with 0, 17
                        if balanceOf[this.address].field_1 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if not eth.balance(this.address):
                            if not balanceOf[this.address].field_1:
                                revert with 0, 'SafeMath: division by zero', 0
                            if not this.address:
                                revert with 0, 'ERC20: approve from the zero address'
                            if not uniswapV2RouterAddress:
                                revert with 0, 'ERC20: approve to the zero address'
                            allowance[address(this.address)][stor5] = balanceOf[this.address].field_0 - balanceOf[this.address].field_1
                            emit Approval((balanceOf[this.address].field_0 - balanceOf[this.address].field_1), this.address, uniswapV2RouterAddress);
                            require ext_code.size(uniswapV2RouterAddress)
                            call uniswapV2RouterAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                               value 0 / balanceOf[this.address].field_1 wei
                                 gas gas_remaining wei
                                args address(this.address), balanceOf[this.address].field_0 - balanceOf[this.address].field_1, 0, 0, _owner, block.timestamp
                        else:
                            if eth.balance(this.address) and balanceOf[this.address].field_1 > -1 / eth.balance(this.address):
                                revert with 0, 17
                            if not eth.balance(this.address):
                                revert with 0, 18
                            if eth.balance(this.address) * balanceOf[this.address].field_1 / eth.balance(this.address) != balanceOf[this.address].field_1:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if not balanceOf[this.address].field_1:
                                revert with 0, 'SafeMath: division by zero', 0
                            if not this.address:
                                revert with 0, 'ERC20: approve from the zero address'
                            if not uniswapV2RouterAddress:
                                revert with 0, 'ERC20: approve to the zero address'
                            allowance[address(this.address)][stor5] = balanceOf[this.address].field_0 - balanceOf[this.address].field_1
                            emit Approval((balanceOf[this.address].field_0 - balanceOf[this.address].field_1), this.address, uniswapV2RouterAddress);
                            require ext_code.size(uniswapV2RouterAddress)
                            call uniswapV2RouterAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                               value eth.balance(this.address) * balanceOf[this.address].field_1 / balanceOf[this.address].field_1 wei
                                 gas gas_remaining wei
                                args address(this.address), balanceOf[this.address].field_0 - balanceOf[this.address].field_1, 0, 0, _owner, block.timestamp
                    else:
                        if balanceOf[this.address].field_0 and sub_7bca74ce > -1 / balanceOf[this.address].field_0:
                            revert with 0, 17
                        if not balanceOf[this.address].field_0:
                            revert with 0, 18
                        if balanceOf[this.address].field_0 * sub_7bca74ce / balanceOf[this.address].field_0 != sub_7bca74ce:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                        if balanceOf[this.address].field_0 * sub_7bca74ce > balanceOf[this.address].field_0:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if balanceOf[this.address].field_0 < balanceOf[this.address].field_0 * sub_7bca74ce:
                            revert with 0, 17
                        if balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce) / 2 > balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce):
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce) < balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce) / 2:
                            revert with 0, 17
                        if balanceOf[this.address].field_0 * sub_7bca74ce > !(balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce) / 2):
                            revert with 0, 17
                        if (balanceOf[this.address].field_0 * sub_7bca74ce) + (balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce) / 2) < balanceOf[this.address].field_0 * sub_7bca74ce:
                            revert with 0, 'SafeMath: addition overflow'
                        if not this.address:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not uniswapV2RouterAddress:
                            revert with 0, 'ERC20: approve to the zero address'
                        allowance[address(this.address)][stor5] = (balanceOf[this.address].field_0 * sub_7bca74ce) + (balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce) / 2)
                        emit Approval(((balanceOf[this.address].field_0 * sub_7bca74ce) + (balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce) / 2)), this.address, uniswapV2RouterAddress);
                        mem[384] = this.address
                        require ext_code.size(uniswapV2RouterAddress)
                        staticcall uniswapV2RouterAddress.WAVAX() with:
                                gas gas_remaining wei
                        mem[448] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[416] = ext_call.return_data[12 len 20]
                        if 60 > !block.timestamp:
                            revert with 0, 17
                        mem[ceil32(return_data.size) + 448] = 0x762b156200000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 452] = (balanceOf[this.address].field_0 * sub_7bca74ce) + (balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce) / 2)
                        idx = 0
                        s = ceil32(return_data.size) + 644
                        t = 384
                        while idx < 2:
                            mem[s] = mem[t + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(uniswapV2RouterAddress)
                        call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args (balanceOf[this.address].field_0 * sub_7bca74ce) + (balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce) / 2), 0, 160, address(this.address), block.timestamp + 60, 2, mem[ceil32(return_data.size) + 644 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if balanceOf[this.address].field_0 * sub_7bca74ce > !(balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce) / 2):
                            revert with 0, 17
                        if (balanceOf[this.address].field_0 * sub_7bca74ce) + (balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce) / 2) < balanceOf[this.address].field_0 * sub_7bca74ce:
                            revert with 0, 'SafeMath: addition overflow'
                        if not eth.balance(this.address):
                            if not (balanceOf[this.address].field_0 * sub_7bca74ce) + (balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce) / 2):
                                revert with 0, 'SafeMath: division by zero', 0
                            if not this.address:
                                revert with 0, 'ERC20: approve from the zero address'
                            if not uniswapV2RouterAddress:
                                revert with 0, 'ERC20: approve to the zero address'
                            allowance[address(this.address)][stor5] = balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce) - (balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce) / 2)
                            emit Approval((balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce) - (balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce) / 2)), this.address, uniswapV2RouterAddress);
                            require ext_code.size(uniswapV2RouterAddress)
                            call uniswapV2RouterAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                               value 0 / (balanceOf[this.address].field_0 * sub_7bca74ce) + (balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce) / 2) wei
                                 gas gas_remaining wei
                                args address(this.address), balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce) - (balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce) / 2), 0, 0, _owner, block.timestamp
                        else:
                            if eth.balance(this.address) and balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce) / 2 > -1 / eth.balance(this.address):
                                revert with 0, 17
                            if not eth.balance(this.address):
                                revert with 0, 18
                            if eth.balance(this.address) * balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce) / 2 / eth.balance(this.address) != balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce) / 2:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if not (balanceOf[this.address].field_0 * sub_7bca74ce) + (balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce) / 2):
                                revert with 0, 'SafeMath: division by zero', 0
                            if not this.address:
                                revert with 0, 'ERC20: approve from the zero address'
                            if not uniswapV2RouterAddress:
                                revert with 0, 'ERC20: approve to the zero address'
                            allowance[address(this.address)][stor5] = balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce) - (balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce) / 2)
                            emit Approval((balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce) - (balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce) / 2)), this.address, uniswapV2RouterAddress);
                            require ext_code.size(uniswapV2RouterAddress)
                            call uniswapV2RouterAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                               value eth.balance(this.address) * balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce) / 2 / (balanceOf[this.address].field_0 * sub_7bca74ce) + (balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce) / 2) wei
                                 gas gas_remaining wei
                                args address(this.address), balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce) - (balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce) / 2), 0, 0, _owner, block.timestamp
                else:
                    if not balanceOf[this.address].field_0:
                        if not sub_7bca74ce + sub_6a8d1f70:
                            revert with 0, 'SafeMath: division by zero', 0
                        if 0 / sub_7bca74ce + sub_6a8d1f70 > balanceOf[this.address].field_0:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if balanceOf[this.address].field_0 < 0 / sub_7bca74ce + sub_6a8d1f70:
                            revert with 0, 17
                        if balanceOf[this.address].field_0 - (0 / sub_7bca74ce + sub_6a8d1f70) / 2 > balanceOf[this.address].field_0 - (0 / sub_7bca74ce + sub_6a8d1f70):
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if balanceOf[this.address].field_0 - (0 / sub_7bca74ce + sub_6a8d1f70) < balanceOf[this.address].field_0 - (0 / sub_7bca74ce + sub_6a8d1f70) / 2:
                            revert with 0, 17
                        if 0 / sub_7bca74ce + sub_6a8d1f70 > !(balanceOf[this.address].field_0 - (0 / sub_7bca74ce + sub_6a8d1f70) / 2):
                            revert with 0, 17
                        if (0 / sub_7bca74ce + sub_6a8d1f70) + (balanceOf[this.address].field_0 - (0 / sub_7bca74ce + sub_6a8d1f70) / 2) < 0 / sub_7bca74ce + sub_6a8d1f70:
                            revert with 0, 'SafeMath: addition overflow'
                        if not this.address:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not uniswapV2RouterAddress:
                            revert with 0, 'ERC20: approve to the zero address'
                        allowance[address(this.address)][stor5] = (0 / sub_7bca74ce + sub_6a8d1f70) + (balanceOf[this.address].field_0 - (0 / sub_7bca74ce + sub_6a8d1f70) / 2)
                        emit Approval(((0 / sub_7bca74ce + sub_6a8d1f70) + (balanceOf[this.address].field_0 - (0 / sub_7bca74ce + sub_6a8d1f70) / 2)), this.address, uniswapV2RouterAddress);
                        mem[384] = this.address
                        require ext_code.size(uniswapV2RouterAddress)
                        staticcall uniswapV2RouterAddress.WAVAX() with:
                                gas gas_remaining wei
                        mem[448] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[416] = ext_call.return_data[12 len 20]
                        if 60 > !block.timestamp:
                            revert with 0, 17
                        mem[ceil32(return_data.size) + 448] = 0x762b156200000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 452] = (0 / sub_7bca74ce + sub_6a8d1f70) + (balanceOf[this.address].field_0 - (0 / sub_7bca74ce + sub_6a8d1f70) / 2)
                        idx = 0
                        s = ceil32(return_data.size) + 644
                        t = 384
                        while idx < 2:
                            mem[s] = mem[t + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(uniswapV2RouterAddress)
                        call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args (0 / sub_7bca74ce + sub_6a8d1f70) + (balanceOf[this.address].field_0 - (0 / sub_7bca74ce + sub_6a8d1f70) / 2), 0, 160, address(this.address), block.timestamp + 60, 2, mem[ceil32(return_data.size) + 644 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if 0 / sub_7bca74ce + sub_6a8d1f70 > !(balanceOf[this.address].field_0 - (0 / sub_7bca74ce + sub_6a8d1f70) / 2):
                            revert with 0, 17
                        if (0 / sub_7bca74ce + sub_6a8d1f70) + (balanceOf[this.address].field_0 - (0 / sub_7bca74ce + sub_6a8d1f70) / 2) < 0 / sub_7bca74ce + sub_6a8d1f70:
                            revert with 0, 'SafeMath: addition overflow'
                        if not eth.balance(this.address):
                            if not (0 / sub_7bca74ce + sub_6a8d1f70) + (balanceOf[this.address].field_0 - (0 / sub_7bca74ce + sub_6a8d1f70) / 2):
                                revert with 0, 'SafeMath: division by zero', 0
                            if not this.address:
                                revert with 0, 'ERC20: approve from the zero address'
                            if not uniswapV2RouterAddress:
                                revert with 0, 'ERC20: approve to the zero address'
                            allowance[address(this.address)][stor5] = balanceOf[this.address].field_0 - (0 / sub_7bca74ce + sub_6a8d1f70) - (balanceOf[this.address].field_0 - (0 / sub_7bca74ce + sub_6a8d1f70) / 2)
                            emit Approval((balanceOf[this.address].field_0 - (0 / sub_7bca74ce + sub_6a8d1f70) - (balanceOf[this.address].field_0 - (0 / sub_7bca74ce + sub_6a8d1f70) / 2)), this.address, uniswapV2RouterAddress);
                            require ext_code.size(uniswapV2RouterAddress)
                            call uniswapV2RouterAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                               value 0 / (0 / sub_7bca74ce + sub_6a8d1f70) + (balanceOf[this.address].field_0 - (0 / sub_7bca74ce + sub_6a8d1f70) / 2) wei
                                 gas gas_remaining wei
                                args address(this.address), balanceOf[this.address].field_0 - (0 / sub_7bca74ce + sub_6a8d1f70) - (balanceOf[this.address].field_0 - (0 / sub_7bca74ce + sub_6a8d1f70) / 2), 0, 0, _owner, block.timestamp
                        else:
                            if eth.balance(this.address) and balanceOf[this.address].field_0 - (0 / sub_7bca74ce + sub_6a8d1f70) / 2 > -1 / eth.balance(this.address):
                                revert with 0, 17
                            if not eth.balance(this.address):
                                revert with 0, 18
                            if eth.balance(this.address) * balanceOf[this.address].field_0 - (0 / sub_7bca74ce + sub_6a8d1f70) / 2 / eth.balance(this.address) != balanceOf[this.address].field_0 - (0 / sub_7bca74ce + sub_6a8d1f70) / 2:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if not (0 / sub_7bca74ce + sub_6a8d1f70) + (balanceOf[this.address].field_0 - (0 / sub_7bca74ce + sub_6a8d1f70) / 2):
                                revert with 0, 'SafeMath: division by zero', 0
                            if not this.address:
                                revert with 0, 'ERC20: approve from the zero address'
                            if not uniswapV2RouterAddress:
                                revert with 0, 'ERC20: approve to the zero address'
                            allowance[address(this.address)][stor5] = balanceOf[this.address].field_0 - (0 / sub_7bca74ce + sub_6a8d1f70) - (balanceOf[this.address].field_0 - (0 / sub_7bca74ce + sub_6a8d1f70) / 2)
                            emit Approval((balanceOf[this.address].field_0 - (0 / sub_7bca74ce + sub_6a8d1f70) - (balanceOf[this.address].field_0 - (0 / sub_7bca74ce + sub_6a8d1f70) / 2)), this.address, uniswapV2RouterAddress);
                            require ext_code.size(uniswapV2RouterAddress)
                            call uniswapV2RouterAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                               value eth.balance(this.address) * balanceOf[this.address].field_0 - (0 / sub_7bca74ce + sub_6a8d1f70) / 2 / (0 / sub_7bca74ce + sub_6a8d1f70) + (balanceOf[this.address].field_0 - (0 / sub_7bca74ce + sub_6a8d1f70) / 2) wei
                                 gas gas_remaining wei
                                args address(this.address), balanceOf[this.address].field_0 - (0 / sub_7bca74ce + sub_6a8d1f70) - (balanceOf[this.address].field_0 - (0 / sub_7bca74ce + sub_6a8d1f70) / 2), 0, 0, _owner, block.timestamp
                    else:
                        if balanceOf[this.address].field_0 and sub_7bca74ce > -1 / balanceOf[this.address].field_0:
                            revert with 0, 17
                        if not balanceOf[this.address].field_0:
                            revert with 0, 18
                        if balanceOf[this.address].field_0 * sub_7bca74ce / balanceOf[this.address].field_0 != sub_7bca74ce:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                        if not sub_7bca74ce + sub_6a8d1f70:
                            revert with 0, 'SafeMath: division by zero', 0
                        if balanceOf[this.address].field_0 * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70 > balanceOf[this.address].field_0:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if balanceOf[this.address].field_0 < balanceOf[this.address].field_0 * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70:
                            revert with 0, 17
                        if balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) / 2 > balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70):
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) < balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) / 2:
                            revert with 0, 17
                        if balanceOf[this.address].field_0 * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70 > !(balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) / 2):
                            revert with 0, 17
                        if (balanceOf[this.address].field_0 * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) + (balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) / 2) < balanceOf[this.address].field_0 * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70:
                            revert with 0, 'SafeMath: addition overflow'
                        if not this.address:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not uniswapV2RouterAddress:
                            revert with 0, 'ERC20: approve to the zero address'
                        allowance[address(this.address)][stor5] = (balanceOf[this.address].field_0 * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) + (balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) / 2)
                        emit Approval(((balanceOf[this.address].field_0 * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) + (balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) / 2)), this.address, uniswapV2RouterAddress);
                        mem[384] = this.address
                        require ext_code.size(uniswapV2RouterAddress)
                        staticcall uniswapV2RouterAddress.WAVAX() with:
                                gas gas_remaining wei
                        mem[448] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[416] = ext_call.return_data[12 len 20]
                        if 60 > !block.timestamp:
                            revert with 0, 17
                        mem[ceil32(return_data.size) + 448] = 0x762b156200000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 452] = (balanceOf[this.address].field_0 * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) + (balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) / 2)
                        idx = 0
                        s = ceil32(return_data.size) + 644
                        t = 384
                        while idx < 2:
                            mem[s] = mem[t + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(uniswapV2RouterAddress)
                        call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args (balanceOf[this.address].field_0 * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) + (balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) / 2), 0, 160, address(this.address), block.timestamp + 60, 2, mem[ceil32(return_data.size) + 644 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if balanceOf[this.address].field_0 * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70 > !(balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) / 2):
                            revert with 0, 17
                        if (balanceOf[this.address].field_0 * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) + (balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) / 2) < balanceOf[this.address].field_0 * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70:
                            revert with 0, 'SafeMath: addition overflow'
                        if not eth.balance(this.address):
                            if not (balanceOf[this.address].field_0 * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) + (balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) / 2):
                                revert with 0, 'SafeMath: division by zero', 0
                            if not this.address:
                                revert with 0, 'ERC20: approve from the zero address'
                            if not uniswapV2RouterAddress:
                                revert with 0, 'ERC20: approve to the zero address'
                            allowance[address(this.address)][stor5] = balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) - (balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) / 2)
                            emit Approval((balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) - (balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) / 2)), this.address, uniswapV2RouterAddress);
                            require ext_code.size(uniswapV2RouterAddress)
                            call uniswapV2RouterAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                               value 0 / (balanceOf[this.address].field_0 * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) + (balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) / 2) wei
                                 gas gas_remaining wei
                                args address(this.address), balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) - (balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) / 2), 0, 0, _owner, block.timestamp
                        else:
                            if eth.balance(this.address) and balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) / 2 > -1 / eth.balance(this.address):
                                revert with 0, 17
                            if not eth.balance(this.address):
                                revert with 0, 18
                            if eth.balance(this.address) * balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) / 2 / eth.balance(this.address) != balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) / 2:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if not (balanceOf[this.address].field_0 * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) + (balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) / 2):
                                revert with 0, 'SafeMath: division by zero', 0
                            if not this.address:
                                revert with 0, 'ERC20: approve from the zero address'
                            if not uniswapV2RouterAddress:
                                revert with 0, 'ERC20: approve to the zero address'
                            allowance[address(this.address)][stor5] = balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) - (balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) / 2)
                            emit Approval((balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) - (balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) / 2)), this.address, uniswapV2RouterAddress);
                            require ext_code.size(uniswapV2RouterAddress)
                            call uniswapV2RouterAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                               value eth.balance(this.address) * balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) / 2 / (balanceOf[this.address].field_0 * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) + (balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) / 2) wei
                                 gas gas_remaining wei
                                args address(this.address), balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) - (balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) / 2), 0, 0, _owner, block.timestamp
            else:
                if uint8(stor10.field_160):
                    if not sub_7bca74ce + sub_6a8d1f70:
                        if not balanceOf[this.address].field_0:
                            if 0 > balanceOf[this.address].field_0:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if balanceOf[this.address].field_0 < 0:
                                revert with 0, 17
                            if balanceOf[this.address].field_1 > balanceOf[this.address].field_0:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if balanceOf[this.address].field_0 < balanceOf[this.address].field_1:
                                revert with 0, 17
                            if 0 > !balanceOf[this.address].field_1:
                                revert with 0, 17
                            if balanceOf[this.address].field_1 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if not this.address:
                                revert with 0, 'ERC20: approve from the zero address'
                            if not uniswapV2RouterAddress:
                                revert with 0, 'ERC20: approve to the zero address'
                            allowance[address(this.address)][stor5] = balanceOf[this.address].field_1
                            emit Approval(balanceOf[this.address].field_1, this.address, uniswapV2RouterAddress);
                            mem[384] = this.address
                            require ext_code.size(uniswapV2RouterAddress)
                            staticcall uniswapV2RouterAddress.WAVAX() with:
                                    gas gas_remaining wei
                            mem[448] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[416] = ext_call.return_data[12 len 20]
                            if 60 > !block.timestamp:
                                revert with 0, 17
                            mem[ceil32(return_data.size) + 448] = 0x762b156200000000000000000000000000000000000000000000000000000000
                            mem[ceil32(return_data.size) + 452] = balanceOf[this.address].field_1
                            idx = 0
                            s = ceil32(return_data.size) + 644
                            t = 384
                            while idx < 2:
                                mem[s] = mem[t + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(uniswapV2RouterAddress)
                            call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args 2 * Mask(256, -1, balanceOf[this.address].field_1), 0, 160, address(this.address), block.timestamp + 60, 2, mem[ceil32(return_data.size) + 644 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if 0 > !balanceOf[this.address].field_1:
                                revert with 0, 17
                            if balanceOf[this.address].field_1 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if not eth.balance(this.address):
                                if not balanceOf[this.address].field_1:
                                    revert with 0, 'SafeMath: division by zero', 0
                                if not this.address:
                                    revert with 0, 'ERC20: approve from the zero address'
                                if not uniswapV2RouterAddress:
                                    revert with 0, 'ERC20: approve to the zero address'
                                allowance[address(this.address)][stor5] = balanceOf[this.address].field_0 - balanceOf[this.address].field_1
                                emit Approval((balanceOf[this.address].field_0 - balanceOf[this.address].field_1), this.address, uniswapV2RouterAddress);
                                require ext_code.size(uniswapV2RouterAddress)
                                call uniswapV2RouterAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                   value 0 / balanceOf[this.address].field_1 wei
                                     gas gas_remaining wei
                                    args address(this.address), balanceOf[this.address].field_0 - balanceOf[this.address].field_1, 0, 0, _owner, block.timestamp
                            else:
                                if eth.balance(this.address) and balanceOf[this.address].field_1 > -1 / eth.balance(this.address):
                                    revert with 0, 17
                                if not eth.balance(this.address):
                                    revert with 0, 18
                                if eth.balance(this.address) * balanceOf[this.address].field_1 / eth.balance(this.address) != balanceOf[this.address].field_1:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if not balanceOf[this.address].field_1:
                                    revert with 0, 'SafeMath: division by zero', 0
                                if not this.address:
                                    revert with 0, 'ERC20: approve from the zero address'
                                if not uniswapV2RouterAddress:
                                    revert with 0, 'ERC20: approve to the zero address'
                                allowance[address(this.address)][stor5] = balanceOf[this.address].field_0 - balanceOf[this.address].field_1
                                emit Approval((balanceOf[this.address].field_0 - balanceOf[this.address].field_1), this.address, uniswapV2RouterAddress);
                                require ext_code.size(uniswapV2RouterAddress)
                                call uniswapV2RouterAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                   value eth.balance(this.address) * balanceOf[this.address].field_1 / balanceOf[this.address].field_1 wei
                                     gas gas_remaining wei
                                    args address(this.address), balanceOf[this.address].field_0 - balanceOf[this.address].field_1, 0, 0, _owner, block.timestamp
                        else:
                            if balanceOf[this.address].field_0 and sub_7bca74ce > -1 / balanceOf[this.address].field_0:
                                revert with 0, 17
                            if not balanceOf[this.address].field_0:
                                revert with 0, 18
                            if balanceOf[this.address].field_0 * sub_7bca74ce / balanceOf[this.address].field_0 != sub_7bca74ce:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                            if balanceOf[this.address].field_0 * sub_7bca74ce > balanceOf[this.address].field_0:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if balanceOf[this.address].field_0 < balanceOf[this.address].field_0 * sub_7bca74ce:
                                revert with 0, 17
                            if balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce) / 2 > balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce):
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce) < balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce) / 2:
                                revert with 0, 17
                            if balanceOf[this.address].field_0 * sub_7bca74ce > !(balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce) / 2):
                                revert with 0, 17
                            if (balanceOf[this.address].field_0 * sub_7bca74ce) + (balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce) / 2) < balanceOf[this.address].field_0 * sub_7bca74ce:
                                revert with 0, 'SafeMath: addition overflow'
                            if not this.address:
                                revert with 0, 'ERC20: approve from the zero address'
                            if not uniswapV2RouterAddress:
                                revert with 0, 'ERC20: approve to the zero address'
                            allowance[address(this.address)][stor5] = (balanceOf[this.address].field_0 * sub_7bca74ce) + (balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce) / 2)
                            emit Approval(((balanceOf[this.address].field_0 * sub_7bca74ce) + (balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce) / 2)), this.address, uniswapV2RouterAddress);
                            mem[384] = this.address
                            require ext_code.size(uniswapV2RouterAddress)
                            staticcall uniswapV2RouterAddress.WAVAX() with:
                                    gas gas_remaining wei
                            mem[448] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[416] = ext_call.return_data[12 len 20]
                            if 60 > !block.timestamp:
                                revert with 0, 17
                            mem[ceil32(return_data.size) + 448] = 0x762b156200000000000000000000000000000000000000000000000000000000
                            mem[ceil32(return_data.size) + 452] = (balanceOf[this.address].field_0 * sub_7bca74ce) + (balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce) / 2)
                            idx = 0
                            s = ceil32(return_data.size) + 644
                            t = 384
                            while idx < 2:
                                mem[s] = mem[t + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(uniswapV2RouterAddress)
                            call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args (balanceOf[this.address].field_0 * sub_7bca74ce) + (balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce) / 2), 0, 160, address(this.address), block.timestamp + 60, 2, mem[ceil32(return_data.size) + 644 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if balanceOf[this.address].field_0 * sub_7bca74ce > !(balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce) / 2):
                                revert with 0, 17
                            if (balanceOf[this.address].field_0 * sub_7bca74ce) + (balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce) / 2) < balanceOf[this.address].field_0 * sub_7bca74ce:
                                revert with 0, 'SafeMath: addition overflow'
                            if not eth.balance(this.address):
                                if not (balanceOf[this.address].field_0 * sub_7bca74ce) + (balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce) / 2):
                                    revert with 0, 'SafeMath: division by zero', 0
                                if not this.address:
                                    revert with 0, 'ERC20: approve from the zero address'
                                if not uniswapV2RouterAddress:
                                    revert with 0, 'ERC20: approve to the zero address'
                                allowance[address(this.address)][stor5] = balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce) - (balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce) / 2)
                                emit Approval((balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce) - (balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce) / 2)), this.address, uniswapV2RouterAddress);
                                require ext_code.size(uniswapV2RouterAddress)
                                call uniswapV2RouterAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                   value 0 / (balanceOf[this.address].field_0 * sub_7bca74ce) + (balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce) / 2) wei
                                     gas gas_remaining wei
                                    args address(this.address), balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce) - (balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce) / 2), 0, 0, _owner, block.timestamp
                            else:
                                if eth.balance(this.address) and balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce) / 2 > -1 / eth.balance(this.address):
                                    revert with 0, 17
                                if not eth.balance(this.address):
                                    revert with 0, 18
                                if eth.balance(this.address) * balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce) / 2 / eth.balance(this.address) != balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce) / 2:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if not (balanceOf[this.address].field_0 * sub_7bca74ce) + (balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce) / 2):
                                    revert with 0, 'SafeMath: division by zero', 0
                                if not this.address:
                                    revert with 0, 'ERC20: approve from the zero address'
                                if not uniswapV2RouterAddress:
                                    revert with 0, 'ERC20: approve to the zero address'
                                allowance[address(this.address)][stor5] = balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce) - (balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce) / 2)
                                emit Approval((balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce) - (balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce) / 2)), this.address, uniswapV2RouterAddress);
                                require ext_code.size(uniswapV2RouterAddress)
                                call uniswapV2RouterAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                   value eth.balance(this.address) * balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce) / 2 / (balanceOf[this.address].field_0 * sub_7bca74ce) + (balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce) / 2) wei
                                     gas gas_remaining wei
                                    args address(this.address), balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce) - (balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce) / 2), 0, 0, _owner, block.timestamp
                    else:
                        if not balanceOf[this.address].field_0:
                            if not sub_7bca74ce + sub_6a8d1f70:
                                revert with 0, 'SafeMath: division by zero', 0
                            if 0 / sub_7bca74ce + sub_6a8d1f70 > balanceOf[this.address].field_0:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if balanceOf[this.address].field_0 < 0 / sub_7bca74ce + sub_6a8d1f70:
                                revert with 0, 17
                            if balanceOf[this.address].field_0 - (0 / sub_7bca74ce + sub_6a8d1f70) / 2 > balanceOf[this.address].field_0 - (0 / sub_7bca74ce + sub_6a8d1f70):
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if balanceOf[this.address].field_0 - (0 / sub_7bca74ce + sub_6a8d1f70) < balanceOf[this.address].field_0 - (0 / sub_7bca74ce + sub_6a8d1f70) / 2:
                                revert with 0, 17
                            if 0 / sub_7bca74ce + sub_6a8d1f70 > !(balanceOf[this.address].field_0 - (0 / sub_7bca74ce + sub_6a8d1f70) / 2):
                                revert with 0, 17
                            if (0 / sub_7bca74ce + sub_6a8d1f70) + (balanceOf[this.address].field_0 - (0 / sub_7bca74ce + sub_6a8d1f70) / 2) < 0 / sub_7bca74ce + sub_6a8d1f70:
                                revert with 0, 'SafeMath: addition overflow'
                            if not this.address:
                                revert with 0, 'ERC20: approve from the zero address'
                            if not uniswapV2RouterAddress:
                                revert with 0, 'ERC20: approve to the zero address'
                            allowance[address(this.address)][stor5] = (0 / sub_7bca74ce + sub_6a8d1f70) + (balanceOf[this.address].field_0 - (0 / sub_7bca74ce + sub_6a8d1f70) / 2)
                            emit Approval(((0 / sub_7bca74ce + sub_6a8d1f70) + (balanceOf[this.address].field_0 - (0 / sub_7bca74ce + sub_6a8d1f70) / 2)), this.address, uniswapV2RouterAddress);
                            mem[384] = this.address
                            require ext_code.size(uniswapV2RouterAddress)
                            staticcall uniswapV2RouterAddress.WAVAX() with:
                                    gas gas_remaining wei
                            mem[448] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[416] = ext_call.return_data[12 len 20]
                            if 60 > !block.timestamp:
                                revert with 0, 17
                            mem[ceil32(return_data.size) + 448] = 0x762b156200000000000000000000000000000000000000000000000000000000
                            mem[ceil32(return_data.size) + 452] = (0 / sub_7bca74ce + sub_6a8d1f70) + (balanceOf[this.address].field_0 - (0 / sub_7bca74ce + sub_6a8d1f70) / 2)
                            idx = 0
                            s = ceil32(return_data.size) + 644
                            t = 384
                            while idx < 2:
                                mem[s] = mem[t + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(uniswapV2RouterAddress)
                            call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args (0 / sub_7bca74ce + sub_6a8d1f70) + (balanceOf[this.address].field_0 - (0 / sub_7bca74ce + sub_6a8d1f70) / 2), 0, 160, address(this.address), block.timestamp + 60, 2, mem[ceil32(return_data.size) + 644 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if 0 / sub_7bca74ce + sub_6a8d1f70 > !(balanceOf[this.address].field_0 - (0 / sub_7bca74ce + sub_6a8d1f70) / 2):
                                revert with 0, 17
                            if (0 / sub_7bca74ce + sub_6a8d1f70) + (balanceOf[this.address].field_0 - (0 / sub_7bca74ce + sub_6a8d1f70) / 2) < 0 / sub_7bca74ce + sub_6a8d1f70:
                                revert with 0, 'SafeMath: addition overflow'
                            if not eth.balance(this.address):
                                if not (0 / sub_7bca74ce + sub_6a8d1f70) + (balanceOf[this.address].field_0 - (0 / sub_7bca74ce + sub_6a8d1f70) / 2):
                                    revert with 0, 'SafeMath: division by zero', 0
                                if not this.address:
                                    revert with 0, 'ERC20: approve from the zero address'
                                if not uniswapV2RouterAddress:
                                    revert with 0, 'ERC20: approve to the zero address'
                                allowance[address(this.address)][stor5] = balanceOf[this.address].field_0 - (0 / sub_7bca74ce + sub_6a8d1f70) - (balanceOf[this.address].field_0 - (0 / sub_7bca74ce + sub_6a8d1f70) / 2)
                                emit Approval((balanceOf[this.address].field_0 - (0 / sub_7bca74ce + sub_6a8d1f70) - (balanceOf[this.address].field_0 - (0 / sub_7bca74ce + sub_6a8d1f70) / 2)), this.address, uniswapV2RouterAddress);
                                require ext_code.size(uniswapV2RouterAddress)
                                call uniswapV2RouterAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                   value 0 / (0 / sub_7bca74ce + sub_6a8d1f70) + (balanceOf[this.address].field_0 - (0 / sub_7bca74ce + sub_6a8d1f70) / 2) wei
                                     gas gas_remaining wei
                                    args address(this.address), balanceOf[this.address].field_0 - (0 / sub_7bca74ce + sub_6a8d1f70) - (balanceOf[this.address].field_0 - (0 / sub_7bca74ce + sub_6a8d1f70) / 2), 0, 0, _owner, block.timestamp
                            else:
                                if eth.balance(this.address) and balanceOf[this.address].field_0 - (0 / sub_7bca74ce + sub_6a8d1f70) / 2 > -1 / eth.balance(this.address):
                                    revert with 0, 17
                                if not eth.balance(this.address):
                                    revert with 0, 18
                                if eth.balance(this.address) * balanceOf[this.address].field_0 - (0 / sub_7bca74ce + sub_6a8d1f70) / 2 / eth.balance(this.address) != balanceOf[this.address].field_0 - (0 / sub_7bca74ce + sub_6a8d1f70) / 2:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if not (0 / sub_7bca74ce + sub_6a8d1f70) + (balanceOf[this.address].field_0 - (0 / sub_7bca74ce + sub_6a8d1f70) / 2):
                                    revert with 0, 'SafeMath: division by zero', 0
                                if not this.address:
                                    revert with 0, 'ERC20: approve from the zero address'
                                if not uniswapV2RouterAddress:
                                    revert with 0, 'ERC20: approve to the zero address'
                                allowance[address(this.address)][stor5] = balanceOf[this.address].field_0 - (0 / sub_7bca74ce + sub_6a8d1f70) - (balanceOf[this.address].field_0 - (0 / sub_7bca74ce + sub_6a8d1f70) / 2)
                                emit Approval((balanceOf[this.address].field_0 - (0 / sub_7bca74ce + sub_6a8d1f70) - (balanceOf[this.address].field_0 - (0 / sub_7bca74ce + sub_6a8d1f70) / 2)), this.address, uniswapV2RouterAddress);
                                require ext_code.size(uniswapV2RouterAddress)
                                call uniswapV2RouterAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                   value eth.balance(this.address) * balanceOf[this.address].field_0 - (0 / sub_7bca74ce + sub_6a8d1f70) / 2 / (0 / sub_7bca74ce + sub_6a8d1f70) + (balanceOf[this.address].field_0 - (0 / sub_7bca74ce + sub_6a8d1f70) / 2) wei
                                     gas gas_remaining wei
                                    args address(this.address), balanceOf[this.address].field_0 - (0 / sub_7bca74ce + sub_6a8d1f70) - (balanceOf[this.address].field_0 - (0 / sub_7bca74ce + sub_6a8d1f70) / 2), 0, 0, _owner, block.timestamp
                        else:
                            if balanceOf[this.address].field_0 and sub_7bca74ce > -1 / balanceOf[this.address].field_0:
                                revert with 0, 17
                            if not balanceOf[this.address].field_0:
                                revert with 0, 18
                            if balanceOf[this.address].field_0 * sub_7bca74ce / balanceOf[this.address].field_0 != sub_7bca74ce:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                            if not sub_7bca74ce + sub_6a8d1f70:
                                revert with 0, 'SafeMath: division by zero', 0
                            if balanceOf[this.address].field_0 * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70 > balanceOf[this.address].field_0:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if balanceOf[this.address].field_0 < balanceOf[this.address].field_0 * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70:
                                revert with 0, 17
                            if balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) / 2 > balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70):
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) < balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) / 2:
                                revert with 0, 17
                            if balanceOf[this.address].field_0 * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70 > !(balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) / 2):
                                revert with 0, 17
                            if (balanceOf[this.address].field_0 * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) + (balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) / 2) < balanceOf[this.address].field_0 * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70:
                                revert with 0, 'SafeMath: addition overflow'
                            if not this.address:
                                revert with 0, 'ERC20: approve from the zero address'
                            if not uniswapV2RouterAddress:
                                revert with 0, 'ERC20: approve to the zero address'
                            allowance[address(this.address)][stor5] = (balanceOf[this.address].field_0 * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) + (balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) / 2)
                            emit Approval(((balanceOf[this.address].field_0 * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) + (balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) / 2)), this.address, uniswapV2RouterAddress);
                            mem[384] = this.address
                            require ext_code.size(uniswapV2RouterAddress)
                            staticcall uniswapV2RouterAddress.WAVAX() with:
                                    gas gas_remaining wei
                            mem[448] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[416] = ext_call.return_data[12 len 20]
                            if 60 > !block.timestamp:
                                revert with 0, 17
                            mem[ceil32(return_data.size) + 448] = 0x762b156200000000000000000000000000000000000000000000000000000000
                            mem[ceil32(return_data.size) + 452] = (balanceOf[this.address].field_0 * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) + (balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) / 2)
                            idx = 0
                            s = ceil32(return_data.size) + 644
                            t = 384
                            while idx < 2:
                                mem[s] = mem[t + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(uniswapV2RouterAddress)
                            call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args (balanceOf[this.address].field_0 * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) + (balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) / 2), 0, 160, address(this.address), block.timestamp + 60, 2, mem[ceil32(return_data.size) + 644 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if balanceOf[this.address].field_0 * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70 > !(balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) / 2):
                                revert with 0, 17
                            if (balanceOf[this.address].field_0 * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) + (balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) / 2) < balanceOf[this.address].field_0 * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70:
                                revert with 0, 'SafeMath: addition overflow'
                            if not eth.balance(this.address):
                                if not (balanceOf[this.address].field_0 * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) + (balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) / 2):
                                    revert with 0, 'SafeMath: division by zero', 0
                                if not this.address:
                                    revert with 0, 'ERC20: approve from the zero address'
                                if not uniswapV2RouterAddress:
                                    revert with 0, 'ERC20: approve to the zero address'
                                allowance[address(this.address)][stor5] = balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) - (balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) / 2)
                                emit Approval((balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) - (balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) / 2)), this.address, uniswapV2RouterAddress);
                                require ext_code.size(uniswapV2RouterAddress)
                                call uniswapV2RouterAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                   value 0 / (balanceOf[this.address].field_0 * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) + (balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) / 2) wei
                                     gas gas_remaining wei
                                    args address(this.address), balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) - (balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) / 2), 0, 0, _owner, block.timestamp
                            else:
                                if eth.balance(this.address) and balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) / 2 > -1 / eth.balance(this.address):
                                    revert with 0, 17
                                if not eth.balance(this.address):
                                    revert with 0, 18
                                if eth.balance(this.address) * balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) / 2 / eth.balance(this.address) != balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) / 2:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if not (balanceOf[this.address].field_0 * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) + (balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) / 2):
                                    revert with 0, 'SafeMath: division by zero', 0
                                if not this.address:
                                    revert with 0, 'ERC20: approve from the zero address'
                                if not uniswapV2RouterAddress:
                                    revert with 0, 'ERC20: approve to the zero address'
                                allowance[address(this.address)][stor5] = balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) - (balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) / 2)
                                emit Approval((balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) - (balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) / 2)), this.address, uniswapV2RouterAddress);
                                require ext_code.size(uniswapV2RouterAddress)
                                call uniswapV2RouterAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                   value eth.balance(this.address) * balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) / 2 / (balanceOf[this.address].field_0 * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) + (balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) / 2) wei
                                     gas gas_remaining wei
                                    args address(this.address), balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) - (balanceOf[this.address].field_0 - (balanceOf[this.address].field_0 * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) / 2), 0, 0, _owner, block.timestamp
                else:
                    if not sub_7bca74ce + sub_6a8d1f70:
                        if not uint256(stor17.field_0):
                            if 0 > uint256(stor17.field_0):
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if uint256(stor17.field_0) < 0:
                                revert with 0, 17
                            if uint255(stor17.field_1) > uint256(stor17.field_0):
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if uint256(stor17.field_0) < uint255(stor17.field_1):
                                revert with 0, 17
                            if 0 > !uint255(stor17.field_1):
                                revert with 0, 17
                            if uint255(stor17.field_1) < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if not this.address:
                                revert with 0, 'ERC20: approve from the zero address'
                            if not uniswapV2RouterAddress:
                                revert with 0, 'ERC20: approve to the zero address'
                            allowance[address(this.address)][stor5] = uint255(stor17.field_1)
                            emit Approval(uint255(stor17.field_1), this.address, uniswapV2RouterAddress);
                            mem[384] = this.address
                            require ext_code.size(uniswapV2RouterAddress)
                            staticcall uniswapV2RouterAddress.WAVAX() with:
                                    gas gas_remaining wei
                            mem[448] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[416] = ext_call.return_data[12 len 20]
                            if 60 > !block.timestamp:
                                revert with 0, 17
                            mem[ceil32(return_data.size) + 448] = 0x762b156200000000000000000000000000000000000000000000000000000000
                            mem[ceil32(return_data.size) + 452] = uint255(stor17.field_1)
                            idx = 0
                            s = ceil32(return_data.size) + 644
                            t = 384
                            while idx < 2:
                                mem[s] = mem[t + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(uniswapV2RouterAddress)
                            call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args 2 * Mask(256, -1, uint255(stor17.field_1)), 0, 160, address(this.address), block.timestamp + 60, 2, mem[ceil32(return_data.size) + 644 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if 0 > !uint255(stor17.field_1):
                                revert with 0, 17
                            if uint255(stor17.field_1) < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if not eth.balance(this.address):
                                if not uint255(stor17.field_1):
                                    revert with 0, 'SafeMath: division by zero', 0
                                if not this.address:
                                    revert with 0, 'ERC20: approve from the zero address'
                                if not uniswapV2RouterAddress:
                                    revert with 0, 'ERC20: approve to the zero address'
                                allowance[address(this.address)][stor5] = uint256(stor17.field_0) - uint255(stor17.field_1)
                                emit Approval((uint256(stor17.field_0) - uint255(stor17.field_1)), this.address, uniswapV2RouterAddress);
                                require ext_code.size(uniswapV2RouterAddress)
                                call uniswapV2RouterAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                   value 0 / uint255(stor17.field_1) wei
                                     gas gas_remaining wei
                                    args address(this.address), uint256(stor17.field_0) - uint255(stor17.field_1), 0, 0, _owner, block.timestamp
                            else:
                                if eth.balance(this.address) and uint255(stor17.field_1) > -1 / eth.balance(this.address):
                                    revert with 0, 17
                                if not eth.balance(this.address):
                                    revert with 0, 18
                                if eth.balance(this.address) * uint255(stor17.field_1) / eth.balance(this.address) != uint255(stor17.field_1):
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if not uint255(stor17.field_1):
                                    revert with 0, 'SafeMath: division by zero', 0
                                if not this.address:
                                    revert with 0, 'ERC20: approve from the zero address'
                                if not uniswapV2RouterAddress:
                                    revert with 0, 'ERC20: approve to the zero address'
                                allowance[address(this.address)][stor5] = uint256(stor17.field_0) - uint255(stor17.field_1)
                                emit Approval((uint256(stor17.field_0) - uint255(stor17.field_1)), this.address, uniswapV2RouterAddress);
                                require ext_code.size(uniswapV2RouterAddress)
                                call uniswapV2RouterAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                   value eth.balance(this.address) * uint255(stor17.field_1) / uint255(stor17.field_1) wei
                                     gas gas_remaining wei
                                    args address(this.address), uint256(stor17.field_0) - uint255(stor17.field_1), 0, 0, _owner, block.timestamp
                        else:
                            if uint256(stor17.field_0) and sub_7bca74ce > -1 / uint256(stor17.field_0):
                                revert with 0, 17
                            if not uint256(stor17.field_0):
                                revert with 0, 18
                            if uint256(stor17.field_0) * sub_7bca74ce / uint256(stor17.field_0) != sub_7bca74ce:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                            if uint256(stor17.field_0) * sub_7bca74ce > uint256(stor17.field_0):
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if uint256(stor17.field_0) < uint256(stor17.field_0) * sub_7bca74ce:
                                revert with 0, 17
                            if uint256(stor17.field_0) - (uint256(stor17.field_0) * sub_7bca74ce) / 2 > uint256(stor17.field_0) - (uint256(stor17.field_0) * sub_7bca74ce):
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if uint256(stor17.field_0) - (uint256(stor17.field_0) * sub_7bca74ce) < uint256(stor17.field_0) - (uint256(stor17.field_0) * sub_7bca74ce) / 2:
                                revert with 0, 17
                            if uint256(stor17.field_0) * sub_7bca74ce > !(uint256(stor17.field_0) - (uint256(stor17.field_0) * sub_7bca74ce) / 2):
                                revert with 0, 17
                            if (uint256(stor17.field_0) * sub_7bca74ce) + (uint256(stor17.field_0) - (uint256(stor17.field_0) * sub_7bca74ce) / 2) < uint256(stor17.field_0) * sub_7bca74ce:
                                revert with 0, 'SafeMath: addition overflow'
                            if not this.address:
                                revert with 0, 'ERC20: approve from the zero address'
                            if not uniswapV2RouterAddress:
                                revert with 0, 'ERC20: approve to the zero address'
                            allowance[address(this.address)][stor5] = (uint256(stor17.field_0) * sub_7bca74ce) + (uint256(stor17.field_0) - (uint256(stor17.field_0) * sub_7bca74ce) / 2)
                            emit Approval(((uint256(stor17.field_0) * sub_7bca74ce) + (uint256(stor17.field_0) - (uint256(stor17.field_0) * sub_7bca74ce) / 2)), this.address, uniswapV2RouterAddress);
                            mem[384] = this.address
                            require ext_code.size(uniswapV2RouterAddress)
                            staticcall uniswapV2RouterAddress.WAVAX() with:
                                    gas gas_remaining wei
                            mem[448] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[416] = ext_call.return_data[12 len 20]
                            if 60 > !block.timestamp:
                                revert with 0, 17
                            mem[ceil32(return_data.size) + 448] = 0x762b156200000000000000000000000000000000000000000000000000000000
                            mem[ceil32(return_data.size) + 452] = (uint256(stor17.field_0) * sub_7bca74ce) + (uint256(stor17.field_0) - (uint256(stor17.field_0) * sub_7bca74ce) / 2)
                            idx = 0
                            s = ceil32(return_data.size) + 644
                            t = 384
                            while idx < 2:
                                mem[s] = mem[t + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(uniswapV2RouterAddress)
                            call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args (uint256(stor17.field_0) * sub_7bca74ce) + (uint256(stor17.field_0) - (uint256(stor17.field_0) * sub_7bca74ce) / 2), 0, 160, address(this.address), block.timestamp + 60, 2, mem[ceil32(return_data.size) + 644 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if uint256(stor17.field_0) * sub_7bca74ce > !(uint256(stor17.field_0) - (uint256(stor17.field_0) * sub_7bca74ce) / 2):
                                revert with 0, 17
                            if (uint256(stor17.field_0) * sub_7bca74ce) + (uint256(stor17.field_0) - (uint256(stor17.field_0) * sub_7bca74ce) / 2) < uint256(stor17.field_0) * sub_7bca74ce:
                                revert with 0, 'SafeMath: addition overflow'
                            if not eth.balance(this.address):
                                if not (uint256(stor17.field_0) * sub_7bca74ce) + (uint256(stor17.field_0) - (uint256(stor17.field_0) * sub_7bca74ce) / 2):
                                    revert with 0, 'SafeMath: division by zero', 0
                                if not this.address:
                                    revert with 0, 'ERC20: approve from the zero address'
                                if not uniswapV2RouterAddress:
                                    revert with 0, 'ERC20: approve to the zero address'
                                allowance[address(this.address)][stor5] = uint256(stor17.field_0) - (uint256(stor17.field_0) * sub_7bca74ce) - (uint256(stor17.field_0) - (uint256(stor17.field_0) * sub_7bca74ce) / 2)
                                emit Approval((uint256(stor17.field_0) - (uint256(stor17.field_0) * sub_7bca74ce) - (uint256(stor17.field_0) - (uint256(stor17.field_0) * sub_7bca74ce) / 2)), this.address, uniswapV2RouterAddress);
                                require ext_code.size(uniswapV2RouterAddress)
                                call uniswapV2RouterAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                   value 0 / (uint256(stor17.field_0) * sub_7bca74ce) + (uint256(stor17.field_0) - (uint256(stor17.field_0) * sub_7bca74ce) / 2) wei
                                     gas gas_remaining wei
                                    args address(this.address), uint256(stor17.field_0) - (uint256(stor17.field_0) * sub_7bca74ce) - (uint256(stor17.field_0) - (uint256(stor17.field_0) * sub_7bca74ce) / 2), 0, 0, _owner, block.timestamp
                            else:
                                if eth.balance(this.address) and uint256(stor17.field_0) - (uint256(stor17.field_0) * sub_7bca74ce) / 2 > -1 / eth.balance(this.address):
                                    revert with 0, 17
                                if not eth.balance(this.address):
                                    revert with 0, 18
                                if eth.balance(this.address) * uint256(stor17.field_0) - (uint256(stor17.field_0) * sub_7bca74ce) / 2 / eth.balance(this.address) != uint256(stor17.field_0) - (uint256(stor17.field_0) * sub_7bca74ce) / 2:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if not (uint256(stor17.field_0) * sub_7bca74ce) + (uint256(stor17.field_0) - (uint256(stor17.field_0) * sub_7bca74ce) / 2):
                                    revert with 0, 'SafeMath: division by zero', 0
                                if not this.address:
                                    revert with 0, 'ERC20: approve from the zero address'
                                if not uniswapV2RouterAddress:
                                    revert with 0, 'ERC20: approve to the zero address'
                                allowance[address(this.address)][stor5] = uint256(stor17.field_0) - (uint256(stor17.field_0) * sub_7bca74ce) - (uint256(stor17.field_0) - (uint256(stor17.field_0) * sub_7bca74ce) / 2)
                                emit Approval((uint256(stor17.field_0) - (uint256(stor17.field_0) * sub_7bca74ce) - (uint256(stor17.field_0) - (uint256(stor17.field_0) * sub_7bca74ce) / 2)), this.address, uniswapV2RouterAddress);
                                require ext_code.size(uniswapV2RouterAddress)
                                call uniswapV2RouterAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                   value eth.balance(this.address) * uint256(stor17.field_0) - (uint256(stor17.field_0) * sub_7bca74ce) / 2 / (uint256(stor17.field_0) * sub_7bca74ce) + (uint256(stor17.field_0) - (uint256(stor17.field_0) * sub_7bca74ce) / 2) wei
                                     gas gas_remaining wei
                                    args address(this.address), uint256(stor17.field_0) - (uint256(stor17.field_0) * sub_7bca74ce) - (uint256(stor17.field_0) - (uint256(stor17.field_0) * sub_7bca74ce) / 2), 0, 0, _owner, block.timestamp
                    else:
                        if not uint256(stor17.field_0):
                            if not sub_7bca74ce + sub_6a8d1f70:
                                revert with 0, 'SafeMath: division by zero', 0
                            if 0 / sub_7bca74ce + sub_6a8d1f70 > uint256(stor17.field_0):
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if uint256(stor17.field_0) < 0 / sub_7bca74ce + sub_6a8d1f70:
                                revert with 0, 17
                            if uint256(stor17.field_0) - (0 / sub_7bca74ce + sub_6a8d1f70) / 2 > uint256(stor17.field_0) - (0 / sub_7bca74ce + sub_6a8d1f70):
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if uint256(stor17.field_0) - (0 / sub_7bca74ce + sub_6a8d1f70) < uint256(stor17.field_0) - (0 / sub_7bca74ce + sub_6a8d1f70) / 2:
                                revert with 0, 17
                            if 0 / sub_7bca74ce + sub_6a8d1f70 > !(uint256(stor17.field_0) - (0 / sub_7bca74ce + sub_6a8d1f70) / 2):
                                revert with 0, 17
                            if (0 / sub_7bca74ce + sub_6a8d1f70) + (uint256(stor17.field_0) - (0 / sub_7bca74ce + sub_6a8d1f70) / 2) < 0 / sub_7bca74ce + sub_6a8d1f70:
                                revert with 0, 'SafeMath: addition overflow'
                            if not this.address:
                                revert with 0, 'ERC20: approve from the zero address'
                            if not uniswapV2RouterAddress:
                                revert with 0, 'ERC20: approve to the zero address'
                            allowance[address(this.address)][stor5] = (0 / sub_7bca74ce + sub_6a8d1f70) + (uint256(stor17.field_0) - (0 / sub_7bca74ce + sub_6a8d1f70) / 2)
                            emit Approval(((0 / sub_7bca74ce + sub_6a8d1f70) + (uint256(stor17.field_0) - (0 / sub_7bca74ce + sub_6a8d1f70) / 2)), this.address, uniswapV2RouterAddress);
                            mem[384] = this.address
                            require ext_code.size(uniswapV2RouterAddress)
                            staticcall uniswapV2RouterAddress.WAVAX() with:
                                    gas gas_remaining wei
                            mem[448] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[416] = ext_call.return_data[12 len 20]
                            if 60 > !block.timestamp:
                                revert with 0, 17
                            mem[ceil32(return_data.size) + 448] = 0x762b156200000000000000000000000000000000000000000000000000000000
                            mem[ceil32(return_data.size) + 452] = (0 / sub_7bca74ce + sub_6a8d1f70) + (uint256(stor17.field_0) - (0 / sub_7bca74ce + sub_6a8d1f70) / 2)
                            idx = 0
                            s = ceil32(return_data.size) + 644
                            t = 384
                            while idx < 2:
                                mem[s] = mem[t + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(uniswapV2RouterAddress)
                            call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args (0 / sub_7bca74ce + sub_6a8d1f70) + (uint256(stor17.field_0) - (0 / sub_7bca74ce + sub_6a8d1f70) / 2), 0, 160, address(this.address), block.timestamp + 60, 2, mem[ceil32(return_data.size) + 644 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if 0 / sub_7bca74ce + sub_6a8d1f70 > !(uint256(stor17.field_0) - (0 / sub_7bca74ce + sub_6a8d1f70) / 2):
                                revert with 0, 17
                            if (0 / sub_7bca74ce + sub_6a8d1f70) + (uint256(stor17.field_0) - (0 / sub_7bca74ce + sub_6a8d1f70) / 2) < 0 / sub_7bca74ce + sub_6a8d1f70:
                                revert with 0, 'SafeMath: addition overflow'
                            if not eth.balance(this.address):
                                if not (0 / sub_7bca74ce + sub_6a8d1f70) + (uint256(stor17.field_0) - (0 / sub_7bca74ce + sub_6a8d1f70) / 2):
                                    revert with 0, 'SafeMath: division by zero', 0
                                if not this.address:
                                    revert with 0, 'ERC20: approve from the zero address'
                                if not uniswapV2RouterAddress:
                                    revert with 0, 'ERC20: approve to the zero address'
                                allowance[address(this.address)][stor5] = uint256(stor17.field_0) - (0 / sub_7bca74ce + sub_6a8d1f70) - (uint256(stor17.field_0) - (0 / sub_7bca74ce + sub_6a8d1f70) / 2)
                                emit Approval((uint256(stor17.field_0) - (0 / sub_7bca74ce + sub_6a8d1f70) - (uint256(stor17.field_0) - (0 / sub_7bca74ce + sub_6a8d1f70) / 2)), this.address, uniswapV2RouterAddress);
                                require ext_code.size(uniswapV2RouterAddress)
                                call uniswapV2RouterAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                   value 0 / (0 / sub_7bca74ce + sub_6a8d1f70) + (uint256(stor17.field_0) - (0 / sub_7bca74ce + sub_6a8d1f70) / 2) wei
                                     gas gas_remaining wei
                                    args address(this.address), uint256(stor17.field_0) - (0 / sub_7bca74ce + sub_6a8d1f70) - (uint256(stor17.field_0) - (0 / sub_7bca74ce + sub_6a8d1f70) / 2), 0, 0, _owner, block.timestamp
                            else:
                                if eth.balance(this.address) and uint256(stor17.field_0) - (0 / sub_7bca74ce + sub_6a8d1f70) / 2 > -1 / eth.balance(this.address):
                                    revert with 0, 17
                                if not eth.balance(this.address):
                                    revert with 0, 18
                                if eth.balance(this.address) * uint256(stor17.field_0) - (0 / sub_7bca74ce + sub_6a8d1f70) / 2 / eth.balance(this.address) != uint256(stor17.field_0) - (0 / sub_7bca74ce + sub_6a8d1f70) / 2:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if not (0 / sub_7bca74ce + sub_6a8d1f70) + (uint256(stor17.field_0) - (0 / sub_7bca74ce + sub_6a8d1f70) / 2):
                                    revert with 0, 'SafeMath: division by zero', 0
                                if not this.address:
                                    revert with 0, 'ERC20: approve from the zero address'
                                if not uniswapV2RouterAddress:
                                    revert with 0, 'ERC20: approve to the zero address'
                                allowance[address(this.address)][stor5] = uint256(stor17.field_0) - (0 / sub_7bca74ce + sub_6a8d1f70) - (uint256(stor17.field_0) - (0 / sub_7bca74ce + sub_6a8d1f70) / 2)
                                emit Approval((uint256(stor17.field_0) - (0 / sub_7bca74ce + sub_6a8d1f70) - (uint256(stor17.field_0) - (0 / sub_7bca74ce + sub_6a8d1f70) / 2)), this.address, uniswapV2RouterAddress);
                                require ext_code.size(uniswapV2RouterAddress)
                                call uniswapV2RouterAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                   value eth.balance(this.address) * uint256(stor17.field_0) - (0 / sub_7bca74ce + sub_6a8d1f70) / 2 / (0 / sub_7bca74ce + sub_6a8d1f70) + (uint256(stor17.field_0) - (0 / sub_7bca74ce + sub_6a8d1f70) / 2) wei
                                     gas gas_remaining wei
                                    args address(this.address), uint256(stor17.field_0) - (0 / sub_7bca74ce + sub_6a8d1f70) - (uint256(stor17.field_0) - (0 / sub_7bca74ce + sub_6a8d1f70) / 2), 0, 0, _owner, block.timestamp
                        else:
                            if uint256(stor17.field_0) and sub_7bca74ce > -1 / uint256(stor17.field_0):
                                revert with 0, 17
                            if not uint256(stor17.field_0):
                                revert with 0, 18
                            if uint256(stor17.field_0) * sub_7bca74ce / uint256(stor17.field_0) != sub_7bca74ce:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                            if not sub_7bca74ce + sub_6a8d1f70:
                                revert with 0, 'SafeMath: division by zero', 0
                            if uint256(stor17.field_0) * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70 > uint256(stor17.field_0):
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if uint256(stor17.field_0) < uint256(stor17.field_0) * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70:
                                revert with 0, 17
                            if uint256(stor17.field_0) - (uint256(stor17.field_0) * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) / 2 > uint256(stor17.field_0) - (uint256(stor17.field_0) * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70):
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if uint256(stor17.field_0) - (uint256(stor17.field_0) * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) < uint256(stor17.field_0) - (uint256(stor17.field_0) * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) / 2:
                                revert with 0, 17
                            if uint256(stor17.field_0) * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70 > !(uint256(stor17.field_0) - (uint256(stor17.field_0) * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) / 2):
                                revert with 0, 17
                            if (uint256(stor17.field_0) * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) + (uint256(stor17.field_0) - (uint256(stor17.field_0) * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) / 2) < uint256(stor17.field_0) * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70:
                                revert with 0, 'SafeMath: addition overflow'
                            if not this.address:
                                revert with 0, 'ERC20: approve from the zero address'
                            if not uniswapV2RouterAddress:
                                revert with 0, 'ERC20: approve to the zero address'
                            allowance[address(this.address)][stor5] = (uint256(stor17.field_0) * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) + (uint256(stor17.field_0) - (uint256(stor17.field_0) * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) / 2)
                            emit Approval(((uint256(stor17.field_0) * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) + (uint256(stor17.field_0) - (uint256(stor17.field_0) * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) / 2)), this.address, uniswapV2RouterAddress);
                            mem[384] = this.address
                            require ext_code.size(uniswapV2RouterAddress)
                            staticcall uniswapV2RouterAddress.WAVAX() with:
                                    gas gas_remaining wei
                            mem[448] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[416] = ext_call.return_data[12 len 20]
                            if 60 > !block.timestamp:
                                revert with 0, 17
                            mem[ceil32(return_data.size) + 448] = 0x762b156200000000000000000000000000000000000000000000000000000000
                            mem[ceil32(return_data.size) + 452] = (uint256(stor17.field_0) * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) + (uint256(stor17.field_0) - (uint256(stor17.field_0) * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) / 2)
                            idx = 0
                            s = ceil32(return_data.size) + 644
                            t = 384
                            while idx < 2:
                                mem[s] = mem[t + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(uniswapV2RouterAddress)
                            call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args (uint256(stor17.field_0) * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) + (uint256(stor17.field_0) - (uint256(stor17.field_0) * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) / 2), 0, 160, address(this.address), block.timestamp + 60, 2, mem[ceil32(return_data.size) + 644 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if uint256(stor17.field_0) * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70 > !(uint256(stor17.field_0) - (uint256(stor17.field_0) * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) / 2):
                                revert with 0, 17
                            if (uint256(stor17.field_0) * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) + (uint256(stor17.field_0) - (uint256(stor17.field_0) * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) / 2) < uint256(stor17.field_0) * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70:
                                revert with 0, 'SafeMath: addition overflow'
                            if not eth.balance(this.address):
                                if not (uint256(stor17.field_0) * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) + (uint256(stor17.field_0) - (uint256(stor17.field_0) * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) / 2):
                                    revert with 0, 'SafeMath: division by zero', 0
                                if not this.address:
                                    revert with 0, 'ERC20: approve from the zero address'
                                if not uniswapV2RouterAddress:
                                    revert with 0, 'ERC20: approve to the zero address'
                                allowance[address(this.address)][stor5] = uint256(stor17.field_0) - (uint256(stor17.field_0) * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) - (uint256(stor17.field_0) - (uint256(stor17.field_0) * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) / 2)
                                emit Approval((uint256(stor17.field_0) - (uint256(stor17.field_0) * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) - (uint256(stor17.field_0) - (uint256(stor17.field_0) * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) / 2)), this.address, uniswapV2RouterAddress);
                                require ext_code.size(uniswapV2RouterAddress)
                                call uniswapV2RouterAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                   value 0 / (uint256(stor17.field_0) * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) + (uint256(stor17.field_0) - (uint256(stor17.field_0) * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) / 2) wei
                                     gas gas_remaining wei
                                    args address(this.address), uint256(stor17.field_0) - (uint256(stor17.field_0) * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) - (uint256(stor17.field_0) - (uint256(stor17.field_0) * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) / 2), 0, 0, _owner, block.timestamp
                            else:
                                if eth.balance(this.address) and uint256(stor17.field_0) - (uint256(stor17.field_0) * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) / 2 > -1 / eth.balance(this.address):
                                    revert with 0, 17
                                if not eth.balance(this.address):
                                    revert with 0, 18
                                if eth.balance(this.address) * uint256(stor17.field_0) - (uint256(stor17.field_0) * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) / 2 / eth.balance(this.address) != uint256(stor17.field_0) - (uint256(stor17.field_0) * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) / 2:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if not (uint256(stor17.field_0) * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) + (uint256(stor17.field_0) - (uint256(stor17.field_0) * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) / 2):
                                    revert with 0, 'SafeMath: division by zero', 0
                                if not this.address:
                                    revert with 0, 'ERC20: approve from the zero address'
                                if not uniswapV2RouterAddress:
                                    revert with 0, 'ERC20: approve to the zero address'
                                allowance[address(this.address)][stor5] = uint256(stor17.field_0) - (uint256(stor17.field_0) * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) - (uint256(stor17.field_0) - (uint256(stor17.field_0) * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) / 2)
                                emit Approval((uint256(stor17.field_0) - (uint256(stor17.field_0) * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) - (uint256(stor17.field_0) - (uint256(stor17.field_0) * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) / 2)), this.address, uniswapV2RouterAddress);
                                require ext_code.size(uniswapV2RouterAddress)
                                call uniswapV2RouterAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                   value eth.balance(this.address) * uint256(stor17.field_0) - (uint256(stor17.field_0) * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) / 2 / (uint256(stor17.field_0) * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) + (uint256(stor17.field_0) - (uint256(stor17.field_0) * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) / 2) wei
                                     gas gas_remaining wei
                                    args address(this.address), uint256(stor17.field_0) - (uint256(stor17.field_0) * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) - (uint256(stor17.field_0) - (uint256(stor17.field_0) * sub_7bca74ce / sub_7bca74ce + sub_6a8d1f70) / 2), 0, 0, _owner, block.timestamp
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            call marketingAddress with:
               value eth.balance(this.address) wei
                 gas gas_remaining wei
            if not ext_call.success:
                revert with 0, 'Failed to send Ether'
    stor28 = 0
}



}
