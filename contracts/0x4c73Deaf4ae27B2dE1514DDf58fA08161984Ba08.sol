contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - transfer(address arg1, uint256 arg2)
#  - sub_ec29f4e9(?)
#  - _fallback()
#
const decimals = 18


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of struct stor3;
array of struct stor4;
address owner;
uint8 stor7; offset 160
address stor7;
uint256 stor8;
address stor9;
uint256 stor11;
uint256 stor12;
uint256 stor13;
mapping of uint8 stor14;
mapping of uint8 stor15;
mapping of uint8 stor16;
uint256 stor17;
mapping of uint8 stor18;
uint256 stor19;
uint256 sub_5b683e66;
uint256 sub_0866e0e9;
uint256 sub_b579b294;
mapping of uint256 sub_e4441f0a;
uint256 stor24;
uint256 stor25;
uint256 stor26;
uint256 sub_89a5c691;
uint8 swapAll;
mapping of uint256 sub_90677833;
mapping of struct sub_963bafa0;
uint8 sub_b485430b;
address stor31; offset 8
address stor32;
address dividendTrackerAddress;
mapping of uint256 lastTransfer;
uint256 sub_7c4b492e;
uint256 sub_e3402c67;
uint256 sub_d2971059;
uint256 stor39;
mapping of struct stor40;
array of uint256 sub_b1fdb11b;

function sub_0866e0e9(?) {
    return sub_0866e0e9
}

function totalSupply() {
    return totalSupply
}

function dividendTracker() {
    return dividendTrackerAddress
}

function isBot(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor16[arg1])
}

function swapAll() {
    return bool(swapAll)
}

function sub_4297a7ca(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor18[arg1])
}

function lastTransfer(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return lastTransfer[arg1]
}

function sub_5b683e66(?) {
    return sub_5b683e66
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function sub_7c4b492e(?) {
    return sub_7c4b492e
}

function sub_89a5c691(?) {
    return sub_89a5c691
}

function owner() {
    return owner
}

function isExcludeFromFee(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor15[arg1])
}

function sub_90677833(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_90677833[arg1]
}

function sub_963bafa0(?) {
    require calldata.size - 4 >= 32
    require arg1 == uint8(arg1)
    return sub_963bafa0[arg1].field_0, sub_963bafa0[arg1].field_256, sub_963bafa0[arg1].field_512
}

function sub_b1fdb11b(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_b1fdb11b[address(arg1)]
}

function sub_b485430b(?) {
    return sub_b485430b
}

function sub_b579b294(?) {
    return sub_b579b294
}

function sub_d2971059(?) {
    return sub_d2971059
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function sub_e3402c67(?) {
    return sub_e3402c67
}

function sub_e4441f0a(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_e4441f0a[arg1]
}

function sub_66cc7026(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor11 = arg1
}

function sub_8aaa9389(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor17 = arg1
}

function sub_ba762ddd(?) {
    if balanceOf[address(this.address)] < sub_7c4b492e:
        revert with 0, 17
    return (balanceOf[address(this.address)] - sub_7c4b492e)
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_1c08bc5d(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_e3402c67 = arg1
}

function setMinContractTokensToSwap(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_89a5c691 = arg1
}

function setSwapAll(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    swapAll = uint8(arg1)
}

function sub_d539be5f(?) {
    require calldata.size - 4 >= 32
    require arg1 == uint8(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_b485430b = uint8(arg1)
}

function sub_16838013(?) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_0866e0e9 = arg1
    if arg2 and 60 > -1 / arg2:
        revert with 0, 17
    sub_b579b294 = 60 * arg2
}

function sub_e5fc10ed(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor18[address(arg1)] = uint8(bool(arg2))
}

function setWalletAddress(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor31 = arg1
    stor32 = arg2
}

function setExcludeFromFee(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor15[address(arg1)] = uint8(arg2)
}

function getTotalDividendsDistributed() {
    staticcall dividendTrackerAddress.totalDividendsDistributed() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function getNumberOfDividendTokenHolders() {
    staticcall dividendTrackerAddress.getNumberOfTokenHolders() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function setTaxes(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5) {
    require calldata.size - 4 >= 160
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg1 <= 10
    require sub_5b683e66 <= 5
    stor19 = arg1
    sub_5b683e66 = arg2
    stor24 = arg3
    stor25 = arg4
    stor26 = arg5
}

function dividendTokenBalanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    staticcall dividendTrackerAddress.0x70a08231 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function withdrawableDividendOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    staticcall dividendTrackerAddress.0xa8b9d240 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function getAccount(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    staticcall dividendTrackerAddress.0xfbcbc0f1 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    return ext_call.return_data[0], ext_call.return_data[32], balanceOf[address(arg1)]
}

function sub_a2923a0f(?) {
    require calldata.size - 4 >= 128
    require arg1 == uint8(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg2 and 60 > -1 / arg2:
        revert with 0, 17
    sub_963bafa0[arg1 << 248].field_0 = 60 * arg2
    if arg3 and 60 > -1 / arg3:
        revert with 0, 17
    sub_963bafa0[arg1 << 248].field_256 = 60 * arg3
    sub_963bafa0[arg1 << 248].field_512 = arg4
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

function sub_8954fb4a(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(dividendTrackerAddress)
    if not arg2:
        call dividendTrackerAddress.0x18c18adb with:
             gas gas_remaining wei
            args address(arg1), balanceOf[address(arg1)]
    else:
        call dividendTrackerAddress.excludeFromDividends(address arg1) with:
             gas gas_remaining wei
            args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
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

function sub_b652ef3b(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    idx = 1
    while uint8(idx) <= sub_b485430b:
        mem[0] = address(arg1)
        mem[32] = 29
        if sub_90677833[address(arg1)] > !sub_963bafa0[idx << 248].field_0:
            revert with 0, 17
        if sub_90677833[address(arg1)] + sub_963bafa0[idx << 248].field_0 <= block.timestamp:
            mem[0] = address(arg1)
            mem[32] = 29
            if sub_90677833[address(arg1)] > !sub_963bafa0[idx << 248].field_256:
                revert with 0, 17
            if sub_90677833[address(arg1)] + sub_963bafa0[idx << 248].field_256 >= block.timestamp:
                return sub_963bafa0[idx << 248].field_512
        if uint8(idx) == 255:
            revert with 0, 17
        idx = uint8(idx) + 1
        continue 
    return sub_5b683e66
}

function claim() {
    staticcall dividendTrackerAddress.0xa8b9d240 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'GODL: Claimer has no withdrawable dividend'
    call dividendTrackerAddress.0x52b5f81d with:
         gas gas_remaining wei
        args msg.sender, msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        stor39++
        stor40[stor39].field_0 = ext_call.return_data[0]
        stor40[stor39].field_256 = 0
        stor40[stor39].field_512 = block.timestamp
        sub_b1fdb11b[address(msg.sender)]++
        sub_b1fdb11b[address(msg.sender)][sub_b1fdb11b[address(msg.sender)]] = stor39
        emit DividendClaimed(ext_call.return_data[0], 0, msg.sender);
}

function setBots(address[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < arg1.length:
        require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
        if address(cd[((32 * idx) + arg1 + 36)]) != stor9:
            if idx >= arg1.length:
                revert with 0, 50
            require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
            if address(cd[((32 * idx) + arg1 + 36)]) != address(stor7.field_0):
                if idx >= arg1.length:
                    revert with 0, 50
                require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
                mem[0] = address(cd[((32 * idx) + arg1 + 36)])
                mem[32] = 16
                stor16[address(cd[((32 * idx) + arg1 + 36)])] = 1
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function manualSwap() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if balanceOf[address(this.address)] < sub_7c4b492e:
        revert with 0, 17
    mem[128] = this.address
    staticcall address(stor7.field_0).WAVAX() with:
            gas gas_remaining wei
    mem[192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[160] = ext_call.return_data[12 len 20]
    if not this.address:
        revert with 0, 'ERC20: approve from the zero address'
    if not address(stor7.field_0):
        revert with 0, 'ERC20: approve to the zero address'
    allowance[address(this.address)][address(stor7.field_0)] = balanceOf[address(this.address)] - sub_7c4b492e
    emit Approval((balanceOf[address(this.address)] - sub_7c4b492e), this.address, address(stor7.field_0));
    mem[ceil32(return_data.size) + 192] = 0x762b156200000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 196] = balanceOf[address(this.address)] - sub_7c4b492e
    idx = 0
    s = 128
    t = ceil32(return_data.size) + 388
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(address(stor7.field_0))
    call address(stor7.field_0).swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args balanceOf[address(this.address)] - sub_7c4b492e, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if eth.balance(this.address) < eth.balance(this.address):
        revert with 0, 17
    emit SwapTokensForEth(balanceOf[address(this.address)] - sub_7c4b492e, 0);
}

function manualSend() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if eth.balance(this.address) < sub_d2971059:
        revert with 0, 17
    if 100 < stor24:
        revert with 0, 17
    if eth.balance(this.address) - sub_d2971059 and stor25 > -1 / eth.balance(this.address) - sub_d2971059:
        revert with 0, 17
    if not -stor24 + 100:
        revert with 0, 18
    if 100 < stor24:
        revert with 0, 17
    if eth.balance(this.address) - sub_d2971059 and stor26 > -1 / eth.balance(this.address) - sub_d2971059:
        revert with 0, 17
    if not -stor24 + 100:
        revert with 0, 18
    if eth.balance(this.address) - sub_d2971059 < (eth.balance(this.address) * stor25) - (sub_d2971059 * stor25) / -stor24 + 100:
        revert with 0, 17
    if eth.balance(this.address) - sub_d2971059 - ((eth.balance(this.address) * stor25) - (sub_d2971059 * stor25) / -stor24 + 100) < (eth.balance(this.address) * stor26) - (sub_d2971059 * stor26) / -stor24 + 100:
        revert with 0, 17
    if (eth.balance(this.address) * stor25) - (sub_d2971059 * stor25) / -stor24 + 100 > !(eth.balance(this.address) - sub_d2971059 - ((eth.balance(this.address) * stor25) - (sub_d2971059 * stor25) / -stor24 + 100) - ((eth.balance(this.address) * stor26) - (sub_d2971059 * stor26) / -stor24 + 100)):
        revert with 0, 17
    if eth.balance(this.address) - sub_d2971059 - ((eth.balance(this.address) * stor26) - (sub_d2971059 * stor26) / -stor24 + 100):
        call stor31 with:
           value eth.balance(this.address) - sub_d2971059 - ((eth.balance(this.address) * stor26) - (sub_d2971059 * stor26) / -stor24 + 100) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    if (eth.balance(this.address) * stor26) - (sub_d2971059 * stor26) / -stor24 + 100:
        call stor32 with:
           value (eth.balance(this.address) * stor26) - (sub_d2971059 * stor26) / -stor24 + 100 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    emit DistributeFees(eth.balance(this.address) - sub_d2971059 - ((eth.balance(this.address) * stor26) - (sub_d2971059 * stor26) / -stor24 + 100), (eth.balance(this.address) * stor26) - (sub_d2971059 * stor26) / -stor24 + 100);
}

function reinvest() {
    staticcall dividendTrackerAddress.0xa8b9d240 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'GODL: Claimer has no withdrawable dividend'
    mem[ceil32(return_data.size) + 100] = msg.sender
    mem[ceil32(return_data.size) + 132] = this.address
    call dividendTrackerAddress.0x52b5f81d with:
         gas gas_remaining wei
        args msg.sender, this.address
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        staticcall address(stor7.field_0).WAVAX() with:
                gas gas_remaining wei
        mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[(2 * ceil32(return_data.size)) + 128] = ext_call.return_data[12 len 20]
        mem[(2 * ceil32(return_data.size)) + 160] = this.address
        mem[(4 * ceil32(return_data.size)) + 192] = 0xc57559dd00000000000000000000000000000000000000000000000000000000
        mem[(4 * ceil32(return_data.size)) + 196] = 0
        idx = 0
        s = (2 * ceil32(return_data.size)) + 128
        t = (4 * ceil32(return_data.size)) + 356
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(address(stor7.field_0))
        call address(stor7.field_0).swapExactAVAXForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
           value ext_call.return_data[0] wei
             gas gas_remaining wei
            args 0, 128, msg.sender, block.timestamp, 2, mem[(4 * ceil32(return_data.size)) + 356 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if balanceOf[address(this.address)] < balanceOf[address(this.address)]:
            revert with 0, 17
        emit 0x2d5c8efb: ext_call.return_data[0], 0
        if ext_call.return_data[0]:
            stor39++
            stor40[stor39].field_0 = ext_call.return_data[0]
            stor40[stor39].field_256 = 0
            stor40[stor39].field_512 = block.timestamp
            sub_b1fdb11b[address(msg.sender)]++
            sub_b1fdb11b[address(msg.sender)][sub_b1fdb11b[address(msg.sender)]] = stor39
            emit DividendClaimed(ext_call.return_data[0], 0, msg.sender);
}

function openTrading(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if uint8(stor7.field_160):
        revert with 0, 'GODL: Trading is already open'
    if arg1 <= block.timestamp:
        revert with 0, 'GODL: Invalid timestamp'
    staticcall address(stor7.field_0).factory() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    staticcall address(stor7.field_0).WAVAX() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    call address(ext_call.return_data[0]).createPair(address arg1, address arg2) with:
         gas gas_remaining wei
        args address(this.address), address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    stor9 = ext_call.return_data[12 len 20]
    stor14[ext_call.return_data[12 len 20]] = 1
    require ext_code.size(dividendTrackerAddress)
    call dividendTrackerAddress.excludeFromDividends(address arg1) with:
         gas gas_remaining wei
        args stor9
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if not this.address:
        revert with 0, 'ERC20: approve from the zero address'
    if not address(stor7.field_0):
        revert with 0, 'ERC20: approve to the zero address'
    allowance[address(this.address)][address(stor7.field_0)] = balanceOf[address(this.address)]
    emit Approval(balanceOf[address(this.address)], this.address, address(stor7.field_0));
    call address(stor7.field_0).addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
        args address(this.address), balanceOf[address(this.address)], 0, 0, owner, block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    emit AddLiquidity(balanceOf[address(this.address)], eth.balance(this.address));
    call stor9.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(stor7.field_0), -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    uint8(stor7.field_160) = 1
    stor12 = arg1
    if arg2 and 60 > -1 / arg2:
        revert with 0, 17
    if arg1 > !(60 * arg2):
        revert with 0, 17
    stor13 = arg1 + (60 * arg2)
    stor8 = block.number
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



}
