contract main {




// =====================  Runtime code  =====================


#
#  - finalize()
#
const version = 22


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
uint32 stor51;
address owner;
uint256 stor51;
address factoryAddress;
uint256 stor101;
address routerAddress;
address governanceAddress;
address tokenAddress;
uint256 startTime;
uint256 endTime;
uint256 stor107;
uint256 stor108;
uint256 sub_cbdbc1a7;
uint256 sub_a724bd30;
uint256 liquidityPercent;
array of struct sub_8020c5b0;
uint8 poolState;
uint8 sub_d084b4ff; offset 8
uint256 stor113; offset 8
uint256 sub_8b997b79;
uint256 sub_bcbc211b;
uint256 finishTime;
uint256 sub_4b79d1ad;
uint256 cycle;
uint256 cycleReleasePct;
uint256 totalVestedTokens;
uint256 stor121;
uint256 rate;
uint256 softCap;
uint256 sub_73d43ee4;
uint256 totalRaised;
uint256 totalClaimed;
uint256 totalRefunded;
uint256 stor128;
mapping of uint256 contributionOf;
mapping of uint256 claimedOf;
mapping of uint256 sub_2249742a;

function sub_2249742a(?) {
    require calldata.size - 4 >= 32
    return sub_2249742a[arg1]
}

function rate() {
    return rate
}

function endTime() {
    return endTime
}

function sub_4b79d1ad(?) {
    return sub_4b79d1ad
}

function totalVestedTokens() {
    return totalVestedTokens
}

function finishTime() {
    return finishTime
}

function governance() {
    return governanceAddress
}

function cycle() {
    return cycle
}

function poolState() {
    require poolState <= 2
    return poolState
}

function sub_73d43ee4(?) {
    return sub_73d43ee4
}

function startTime() {
    return startTime
}

function sub_8020c5b0(?) {
    return sub_8020c5b0[0 len sub_8020c5b0.length].field_0
}

function sub_8b997b79(?) {
    return sub_8b997b79
}

function owner() {
    return address(owner)
}

function softCap() {
    return softCap
}

function sub_a724bd30(?) {
    return sub_a724bd30
}

function liquidityPercent() {
    return liquidityPercent
}

function claimedOf(address arg1) {
    require calldata.size - 4 >= 32
    return claimedOf[arg1]
}

function sub_bcbc211b(?) {
    return sub_bcbc211b
}

function factory() {
    return address(factoryAddress)
}

function totalRaised() {
    return totalRaised
}

function sub_cbdbc1a7(?) {
    return sub_cbdbc1a7
}

function sub_d084b4ff(?) {
    return bool(sub_d084b4ff)
}

function cycleReleasePct() {
    return cycleReleasePct
}

function totalClaimed() {
    return totalClaimed
}

function contributionOf(address arg1) {
    require calldata.size - 4 >= 32
    return contributionOf[arg1]
}

function totalRefunded() {
    return totalRefunded
}

function router() {
    return routerAddress
}

function token() {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function tgeTime() {
    if finishTime != 0:
        if sub_8b997b79:
            return (finishTime + sub_bcbc211b)
        else:
            return 0
    else:
        return 0
}

function setGovernance(address arg1) {
    require calldata.size - 4 >= 32
    if governanceAddress != msg.sender:
        revert with 0, 'Only governance'
    governanceAddress = arg1
}

function renounceOwnership() {
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(address(owner), 0);
    address(owner) = 0
}

function updateCompletedKyc(bool arg1) {
    require calldata.size - 4 >= 32
    if governanceAddress != msg.sender:
        revert with 0, 'Only governance'
    stor113 = Mask(248, 0, arg1)
    emit KycUpdated(arg1, block.timestamp);
}

function getUpdatedState() {
    require poolState <= 2
    mem[128] = uint256(sub_8020c5b0.field_0)
    idx = 128
    s = 0
    while sub_8020c5b0.length + 96 > idx:
        mem[idx + 32] = sub_8020c5b0[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return totalRaised, 
           poolState,
           bool(sub_d084b4ff),
           sub_cbdbc1a7,
           Array(len=sub_8020c5b0.length, data=mem[128 len sub_8020c5b0.length])
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x4f776e61626c653a206e6577206f776e657220697320746865207a65726f2061646472657300,
                    mem[202 len 26]
    emit OwnershipTransferred(address(owner), arg1);
    address(owner) = arg1
}

function initializeVesting(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5) {
    require calldata.size - 4 >= 160
    if address(factoryAddress) != msg.sender:
        revert with 0, 'Only Pool Factory'
    if sub_8b997b79:
        revert with 0, 'Already initialized'
    if arg3 <= 0:
        revert with 0, 'Invalid vesting settings'
    if arg5 <= 0:
        revert with 0, 'Invalid vesting settings'
    if arg5 + arg3 < arg3:
        revert with 0, 'SafeMath: addition overflow'
    if arg5 + arg3 > 100:
        revert with 0, 'Invalid vesting settings'
    if arg1:
        if arg4 <= 0:
            revert with 0, 'Cycle cannot be 0'
    sub_8b997b79 = arg1
    sub_bcbc211b = arg2
    sub_4b79d1ad = arg3
    cycle = arg4
    cycleReleasePct = arg5
}

function sub_2a30ab1d(?) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    if address(owner) != msg.sender:
        if governanceAddress != msg.sender:
            revert with 0, 'Only operator'
    if arg1.length:
        sub_8020c5b0[].field_0 = Array(len=arg1.length, data=arg1[all])
    else:
        sub_8020c5b0.length = 0
        idx = 0
        while sub_8020c5b0.length + 31 / 32 > idx:
            sub_8020c5b0[idx].field_0 = 0
            idx = idx + 1
            continue 
    mem[ceil32(arg1.length) + 128] = block.timestamp
    emit PoolUpdated(uint256 rg1):
                     Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0),
                     mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)],
}

function sub_0c48f240(?) {
    require calldata.size - 4 >= 32
    if not mulmod(contributionOf[address(arg1)], rate, -1) - (rate * contributionOf[address(arg1)]) - (mulmod(contributionOf[address(arg1)], rate, -1) < rate * contributionOf[address(arg1)]):
        return (rate * contributionOf[address(arg1)] / 10^18)
    require 10^18 > mulmod(contributionOf[address(arg1)], rate, -1) - (rate * contributionOf[address(arg1)]) - (mulmod(contributionOf[address(arg1)], rate, -1) < rate * contributionOf[address(arg1)])
    return (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (rate * contributionOf[address(arg1)]) - mulmod(contributionOf[address(arg1)], rate, 10^18)) >> 18 or mulmod(contributionOf[address(arg1)], rate, -1) - (rate * contributionOf[address(arg1)]) - (mulmod(contributionOf[address(arg1)], rate, -1) < rate * contributionOf[address(arg1)]) - (mulmod(contributionOf[address(arg1)], rate, 10^18) > rate * contributionOf[address(arg1)]) << 238)
}

function emergencyWithdraw(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if governanceAddress != msg.sender:
        revert with 0, 'Only governance'
    if eth.balance(this.address) < arg2:
        revert with 0, 'Address: insufficient balance'
    call arg1 with:
       value arg2 wei
         gas gas_remaining wei
    if not return_data.size:
        if not ext_call.success:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        58,
                        0x64416464726573733a20756e61626c6520746f2073656e642076616c75652c20726563697069656e74206d617920686176652072657665727465,
                        mem[222 len 6]
    else:
        if not ext_call.success:
            revert with 0, 
                        32,
                        58,
                        0x64416464726573733a20756e61626c6520746f2073656e642076616c75652c20726563697069656e74206d617920686176652072657665727465,
                        mem[ceil32(return_data.size) + 223 len 6]
    ('bool', 'ext_call.success')
}

function liquidityBalance() {
    require ext_code.size(routerAddress)
    staticcall routerAddress.0xc45a0155 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(routerAddress)
    staticcall routerAddress.WETH() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
            gas gas_remaining wei
           args address(ext_call.return_data[0]), tokenAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[12 len 20]:
        return 0
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).balanceOf(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function contribute() payable {
    require poolState <= 2
    if poolState:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x30506f6f6c2069732065697468657220636f6d706c65746564206f722063616e63656c6c65,
                    mem[201 len 27]
    if block.timestamp < startTime:
        revert with 0, 'It's not time to buy'
    if block.timestamp >= endTime:
        revert with 0, 'It's not time to buy'
    if stor121 == 2:
        revert with 0, '0ReentrancyGuard: reentrant call'
    stor121 = 2
    if not msg.value:
        revert with 0, 'Cant contribute 0'
    if not contributionOf[msg.sender]:
        require ext_code.size(address(factoryAddress))
        call address(factoryAddress).0xe9aae536 with:
             gas gas_remaining wei
            args msg.sender, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    if msg.value + contributionOf[msg.sender] < contributionOf[msg.sender]:
        revert with 0, 'SafeMath: addition overflow'
    contributionOf[msg.sender] += msg.value
    if msg.value + totalRaised < totalRaised:
        revert with 0, 'SafeMath: addition overflow'
    totalRaised += msg.value
    emit Contributed(msg.value, msg.value + totalRaised, block.timestamp, msg.sender);
    stor121 = 1
}

function withdrawContribution() {
    if stor121 == 2:
        revert with 0, '0ReentrancyGuard: reentrant call'
    stor121 = 2
    require poolState <= 2
    if poolState:
        require poolState <= 2
        if poolState != 2:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        54,
                        0x6443616e6e6f7420776974686472617720636f6e747269627574696f6e206265636175736520706f6f6c20697320636f6d706c657465,
                        mem[218 len 10]
    else:
        if block.timestamp < endTime:
            revert with 0, 'Pool is still in progress'
        if totalRaised >= softCap:
            revert with 0, 'Soft cap reached'
    if sub_2249742a[msg.sender]:
        revert with 0, 'Already withdrawn contribution'
    sub_2249742a[msg.sender] = contributionOf[msg.sender]
    if contributionOf[msg.sender] + totalRefunded < totalRefunded:
        revert with 0, 'SafeMath: addition overflow'
    totalRefunded += contributionOf[msg.sender]
    contributionOf[msg.sender] = 0
    if eth.balance(this.address) < contributionOf[msg.sender]:
        revert with 0, 'Address: insufficient balance'
    call msg.sender with:
       value contributionOf[msg.sender] wei
         gas gas_remaining wei
    if not return_data.size:
        if not ext_call.success:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        58,
                        0x64416464726573733a20756e61626c6520746f2073656e642076616c75652c20726563697069656e74206d617920686176652072657665727465,
                        mem[222 len 6]
    else:
        if not ext_call.success:
            revert with 0, 
                        32,
                        58,
                        0x64416464726573733a20756e61626c6520746f2073656e642076616c75652c20726563697069656e74206d617920686176652072657665727465,
                        mem[ceil32(return_data.size) + 223 len 6]
    ('bool', 'ext_call.success')
    emit WithdrawnContribution(contributionOf[msg.sender], msg.sender);
    stor121 = 1
}

function cancel() {
    if address(owner) != msg.sender:
        if governanceAddress != msg.sender:
            revert with 0, 'Only operator'
    require poolState <= 2
    if poolState:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x73506f6f6c20776173206569746865722066696e6973686564206f722063616e63656c6c65,
                    mem[201 len 27]
    poolState = 2
    require ext_code.size(address(factoryAddress))
    call address(factoryAddress).0xbefaf8a6 with:
         gas gas_remaining wei
        args tokenAddress, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.balanceOf(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x64416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if not ext_code.size(tokenAddress):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor51), uint32(stor51), ext_call.return_data[0 len 28]
    call tokenAddress with:
       funct uint32(stor51)
         gas gas_remaining wei
        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with transfer(address rg1, uint256 rg2), Mask(224, 0, stor51), uint32(stor51), ext_call.return_data[0]
        if not transfer(address rg1, uint256 rg2), Mask(224, 0, stor51):
            revert with 0, 32, 42, 0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
    else:
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
    emit Cancelled(block.timestamp);
}

function emergencyWithdraw(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if governanceAddress != msg.sender:
        revert with 0, 'Only governance'
    require ext_code.size(routerAddress)
    staticcall routerAddress.0xc45a0155 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(routerAddress)
    staticcall routerAddress.WETH() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
            gas gas_remaining wei
           args address(ext_call.return_data[0]), tokenAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] == arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    58,
                    0x6443616e6e6f74207769746864726177206c69717569646974792e205573652077697468647261774c6971756964697479282920696e73746561,
                    mem[222 len 6]
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x64416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if not ext_code.size(arg1):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = transfer(address rg1, uint256 rg2), address(arg2) << 64, 0, Mask(224, 32, arg3) >> 32
    call arg1 with:
         gas gas_remaining wei
        args Mask(224, 32, arg3) << 224, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with transfer(address rg1, uint256 rg2), address(arg2) << 64, 0, arg3
        if not transfer(address rg1, uint256 rg2), address(arg2) << 64:
            revert with 0, 32, 42, 0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
    else:
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
}

function withdrawLiquidity() {
    if address(owner) != msg.sender:
        if governanceAddress != msg.sender:
            revert with 0, 'Only operator'
    require poolState <= 2
    if poolState != 1:
        revert with 0, 'Pool has not been finalized'
    if block.timestamp < sub_cbdbc1a7:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x774974206973206e6f742074696d6520746f20756e6c6f636b206c69717569646974,
                    mem[198 len 30]
    require ext_code.size(address(factoryAddress))
    call address(factoryAddress).0x93037672 with:
         gas gas_remaining wei
        args stor128
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor128 = 0
    require ext_code.size(routerAddress)
    staticcall routerAddress.0xc45a0155 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(routerAddress)
    staticcall routerAddress.WETH() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
            gas gas_remaining wei
           args address(ext_call.return_data[0]), tokenAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).balanceOf(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x64416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if not ext_code.size(address(ext_call.return_data[0])):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor51), uint32(stor51), ext_call.return_data[0 len 28]
    mem[324 len 0] = 0
    call address(ext_call.return_data[0]) with:
       funct uint32(stor51)
         gas gas_remaining wei
        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with transfer(address rg1, uint256 rg2), Mask(224, 0, stor51), uint32(stor51), ext_call.return_data[0]
        if not transfer(address rg1, uint256 rg2), Mask(224, 0, stor51):
            revert with 0, 32, 42, 0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
    else:
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
    emit LiquidityWithdrawn(ext_call.return_data[0], block.timestamp);
}

function sub_825b9033(?) {
    require calldata.size - 4 >= 416
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    if not uint8(stor0.field_8):
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0, 
                            32,
                            46,
                            0x74496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                            mem[ceil32(arg4.length) + 530 len 18]
        if not uint8(stor0.field_8):
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
    if address(factoryAddress):
        revert with 0, 'Pool: Forbidden'
    if not address(call.data[4]):
        revert with 0, 'Invalid owner address'
    if block.timestamp >= call.data[196]:
        revert with 0, 
                    32,
                    34,
                    0x7953746172742074696d652073686f756c6420626520696e20746865206675747572,
                    mem[ceil32(arg4.length) + 518 len 30]
    if call.data[196] >= call.data[228]:
        revert with 0, 32, 33, 0x65456e642074696d65206d7573742062652061667465722073746172742074696d, mem[ceil32(arg4.length) + 517 len 31]
    if 97 == chainid:
        if call.data[260] < 300:
            revert with 0, 
                        32,
                        70,
                        0x644c697175696469747920756e6c6f636b2074696d65206d757374206265206174206c65617374203330206461797320616674657220706f6f6c2069732066696e616c697a65,
                        mem[ceil32(arg4.length) + 554 len 26]
    else:
        if chainid != 3:
            if call.data[260] < 720 * 24 * 3600:
                revert with 0, 
                            32,
                            70,
                            0x644c697175696469747920756e6c6f636b2074696d65206d757374206265206174206c65617374203330206461797320616674657220706f6f6c2069732066696e616c697a65,
                            mem[ceil32(arg4.length) + 554 len 26]
        else:
            if call.data[260] < 300:
                revert with 0, 
                            32,
                            70,
                            0x644c697175696469747920756e6c6f636b2074696d65206d757374206265206174206c65617374203330206461797320616674657220706f6f6c2069732066696e616c697a65,
                            mem[ceil32(arg4.length) + 554 len 26]
    if 100 < call.data[292]:
        revert with 0, 
                    32,
                    51,
                    0x64496e76616c6964206665652073657474696e67732e204d7573742062652070657263656e74616765202830202d3e20313030,
                    mem[ceil32(arg4.length) + 535 len 13]
    if 100 < call.data[324]:
        revert with 0, 
                    32,
                    51,
                    0x64496e76616c6964206665652073657474696e67732e204d7573742062652070657263656e74616765202830202d3e20313030,
                    mem[ceil32(arg4.length) + 535 len 13]
    if arg3 < 51:
        revert with 0, 'Invalid liquidity percentage'
    if arg3 > 100:
        revert with 0, 'Invalid liquidity percentage'
    if arg2 <= 0:
        revert with 0, 
                    32,
                    43,
                    0xfe546f74616c2073656c6c696e6720616d6f756e74206d7573742062652067726561746572207468616e20,
                    mem[ceil32(arg4.length) + 527 len 21]
    if uint8(stor0.field_8):
        address(owner) = msg.sender
        emit OwnershipTransferred(0, msg.sender);
    else:
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0, 
                            32,
                            46,
                            0x74496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                            mem[ceil32(arg4.length) + 530 len 18]
        if uint8(stor0.field_8):
            address(owner) = msg.sender
            emit OwnershipTransferred(0, msg.sender);
        else:
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
            if ext_code.size(this.address):
                if uint8(stor0.field_0):
                    revert with 0, 
                                32,
                                46,
                                0x74496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                mem[ceil32(arg4.length) + 530 len 18]
            if uint8(stor0.field_8):
                address(owner) = msg.sender
                emit OwnershipTransferred(0, msg.sender);
            else:
                uint8(stor0.field_0) = 1
                uint8(stor0.field_8) = 1
                Mask(248, 0, stor0.field_8) = 0
                uint8(stor0.field_8) = 0
                if ext_code.size(this.address):
                    if uint8(stor0.field_0):
                        revert with 0, 
                                    32,
                                    46,
                                    0x74496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                    mem[ceil32(arg4.length) + 530 len 18]
                if uint8(stor0.field_8):
                    address(owner) = msg.sender
                    emit OwnershipTransferred(0, msg.sender);
                else:
                    uint8(stor0.field_0) = 1
                    uint8(stor0.field_8) = 1
                    Mask(248, 0, stor0.field_8) = 0
                    address(owner) = msg.sender
                    emit OwnershipTransferred(0, msg.sender);
                    uint8(stor0.field_8) = 0
                    uint8(stor0.field_8) = 0
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not address(call.data[4]):
        revert with 0, 
                    32,
                    38,
                    0x4f776e61626c653a206e6577206f776e657220697320746865207a65726f2061646472657300,
                    mem[ceil32(arg4.length) + 522 len 26]
    emit OwnershipTransferred(address(owner), address(call.data[4]));
    address(owner) = address(call.data[4])
    uint256(stor101) = msg.sender or Mask(96, 160, uint256(stor101))
    tokenAddress = address(call.data[36])
    routerAddress = address(call.data[68])
    governanceAddress = address(call.data[100])
    softCap = arg1
    sub_73d43ee4 = arg2
    startTime = call.data[196]
    endTime = call.data[228]
    sub_a724bd30 = call.data[260]
    stor107 = call.data[292]
    stor108 = call.data[324]
    liquidityPercent = arg3
    if arg4.length:
        sub_8020c5b0[].field_0 = Array(len=arg4.length, data=arg4[all])
    else:
        sub_8020c5b0.length = 0
        idx = 0
        while sub_8020c5b0.length + 31 / 32 > idx:
            sub_8020c5b0[idx].field_0 = 0
            idx = idx + 1
            continue 
    poolState = 0
    if not uint8(stor0.field_8):
        uint8(stor0.field_8) = 0
}

function claim() {
    if stor121 == 2:
        revert with 0, '0ReentrancyGuard: reentrant call'
    stor121 = 2
    require poolState <= 2
    if poolState != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x644f776e657220686173206e6f7420636c6f7365642074686520706f6f6c207965,
                    mem[197 len 31]
    if claimedOf[msg.sender]:
        revert with 0, 'Already claimed'
    if mulmod(contributionOf[address(msg.sender)], rate, -1) - (rate * contributionOf[address(msg.sender)]) - (mulmod(contributionOf[address(msg.sender)], rate, -1) < rate * contributionOf[address(msg.sender)]):
        require 10^18 > mulmod(contributionOf[address(msg.sender)], rate, -1) - (rate * contributionOf[address(msg.sender)]) - (mulmod(contributionOf[address(msg.sender)], rate, -1) < rate * contributionOf[address(msg.sender)])
        claimedOf[msg.sender] = 0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (rate * contributionOf[address(msg.sender)]) - mulmod(contributionOf[address(msg.sender)], rate, 10^18)) >> 18 or mulmod(contributionOf[address(msg.sender)], rate, -1) - (rate * contributionOf[address(msg.sender)]) - (mulmod(contributionOf[address(msg.sender)], rate, -1) < rate * contributionOf[address(msg.sender)]) - (mulmod(contributionOf[address(msg.sender)], rate, 10^18) > rate * contributionOf[address(msg.sender)]) << 238
        if (0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (rate * contributionOf[address(msg.sender)]) - mulmod(contributionOf[address(msg.sender)], rate, 10^18)) >> 18 or mulmod(contributionOf[address(msg.sender)], rate, -1) - (rate * contributionOf[address(msg.sender)]) - (mulmod(contributionOf[address(msg.sender)], rate, -1) < rate * contributionOf[address(msg.sender)]) - (mulmod(contributionOf[address(msg.sender)], rate, 10^18) > rate * contributionOf[address(msg.sender)]) << 238) + totalClaimed < totalClaimed:
            revert with 0, 'SafeMath: addition overflow'
        totalClaimed += 0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (rate * contributionOf[address(msg.sender)]) - mulmod(contributionOf[address(msg.sender)], rate, 10^18)) >> 18 or mulmod(contributionOf[address(msg.sender)], rate, -1) - (rate * contributionOf[address(msg.sender)]) - (mulmod(contributionOf[address(msg.sender)], rate, -1) < rate * contributionOf[address(msg.sender)]) - (mulmod(contributionOf[address(msg.sender)], rate, 10^18) > rate * contributionOf[address(msg.sender)]) << 238
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x64416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
        if not ext_code.size(tokenAddress):
            revert with 0, 'Address: call to non-contract'
        mem[260 len 64] = transfer(address rg1, uint256 rg2), msg.sender, Mask(224, 32, 0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (rate * contributionOf[address(msg.sender)]) - mulmod(contributionOf[address(msg.sender)], rate, 10^18)) >> 18 or mulmod(contributionOf[address(msg.sender)], rate, -1) - (rate * contributionOf[address(msg.sender)]) - (mulmod(contributionOf[address(msg.sender)], rate, -1) < rate * contributionOf[address(msg.sender)]) - (mulmod(contributionOf[address(msg.sender)], rate, 10^18) > rate * contributionOf[address(msg.sender)]) << 238) >> 32
        call tokenAddress with:
           funct uint32(msg.sender)
             gas gas_remaining wei
            args Mask(224, 32, 0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (rate * contributionOf[address(msg.sender)]) - mulmod(contributionOf[address(msg.sender)], rate, 10^18)) >> 18 or mulmod(contributionOf[address(msg.sender)], rate, -1) - (rate * contributionOf[address(msg.sender)]) - (mulmod(contributionOf[address(msg.sender)], rate, -1) < rate * contributionOf[address(msg.sender)]) - (mulmod(contributionOf[address(msg.sender)], rate, 10^18) > rate * contributionOf[address(msg.sender)]) << 238) << 224, mem[324 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with transfer(address rg1, uint256 rg2), 
                            msg.sender,
                            0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (rate * contributionOf[address(msg.sender)]) - mulmod(contributionOf[address(msg.sender)], rate, 10^18)) >> 18 or mulmod(contributionOf[address(msg.sender)], rate, -1) - (rate * contributionOf[address(msg.sender)]) - (mulmod(contributionOf[address(msg.sender)], rate, -1) < rate * contributionOf[address(msg.sender)]) - (mulmod(contributionOf[address(msg.sender)], rate, 10^18) > rate * contributionOf[address(msg.sender)]) << 238
            if not transfer(address rg1, uint256 rg2), Mask(224, 32, msg.sender) >> 32:
                revert with 0, 32, 42, 0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
        else:
            mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[292]:
                    revert with 0, 
                                32,
                                42,
                                0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 371 len 22]
        emit Claimed(0xaccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac10669 * Mask(238, 18, (rate * contributionOf[address(msg.sender)]) - mulmod(contributionOf[address(msg.sender)], rate, 10^18)) >> 18 or mulmod(contributionOf[address(msg.sender)], rate, -1) - (rate * contributionOf[address(msg.sender)]) - (mulmod(contributionOf[address(msg.sender)], rate, -1) < rate * contributionOf[address(msg.sender)]) - (mulmod(contributionOf[address(msg.sender)], rate, 10^18) > rate * contributionOf[address(msg.sender)]) << 238, totalClaimed, msg.sender);
    else:
        claimedOf[msg.sender] = rate * contributionOf[address(msg.sender)] / 10^18
        if (rate * contributionOf[address(msg.sender)] / 10^18) + totalClaimed < totalClaimed:
            revert with 0, 'SafeMath: addition overflow'
        totalClaimed += rate * contributionOf[address(msg.sender)] / 10^18
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x64416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
        if not ext_code.size(tokenAddress):
            revert with 0, 'Address: call to non-contract'
        mem[260 len 64] = transfer(address rg1, uint256 rg2), msg.sender, Mask(224, 32, rate * contributionOf[address(msg.sender)] / 10^18) >> 32
        mem[324 len 0] = 0
        call tokenAddress with:
           funct uint32(msg.sender)
             gas gas_remaining wei
            args Mask(224, 32, rate * contributionOf[address(msg.sender)] / 10^18) << 224, mem[324 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with transfer(address rg1, uint256 rg2), msg.sender, rate * contributionOf[address(msg.sender)] / 10^18
            if not transfer(address rg1, uint256 rg2), Mask(224, 32, msg.sender) >> 32:
                revert with 0, 32, 42, 0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
        else:
            mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[292]:
                    revert with 0, 
                                32,
                                42,
                                0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 371 len 22]
        emit Claimed(rate * contributionOf[address(msg.sender)] / 10^18, totalClaimed, msg.sender);
    stor121 = 1
}

function withdrawableTokens() {
    if 0 == sub_8b997b79:
        return 0
    if not mulmod(sub_8b997b79, sub_4b79d1ad, -1) - (sub_4b79d1ad * sub_8b997b79) - (mulmod(sub_8b997b79, sub_4b79d1ad, -1) < sub_4b79d1ad * sub_8b997b79):
        if not mulmod(sub_8b997b79, cycleReleasePct, -1) - (cycleReleasePct * sub_8b997b79) - (mulmod(sub_8b997b79, cycleReleasePct, -1) < cycleReleasePct * sub_8b997b79):
            if 0 == finishTime:
                return 0
            if not sub_8b997b79:
                return 0
            if not finishTime + sub_bcbc211b:
                return 0
            if block.timestamp < finishTime + sub_bcbc211b:
                return 0
            if not cycle:
                return 0
            if block.timestamp < finishTime + sub_bcbc211b:
                if 0 <= sub_8b997b79:
                    if totalVestedTokens > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return -totalVestedTokens
            else:
                if finishTime + sub_bcbc211b > block.timestamp:
                    revert with 0, 'SafeMath: subtraction overflow'
                if cycle <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require cycle
                if not block.timestamp - finishTime - sub_bcbc211b / cycle:
                    if sub_4b79d1ad * sub_8b997b79 / 100 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if sub_4b79d1ad * sub_8b997b79 / 100 <= sub_8b997b79:
                        if totalVestedTokens > sub_4b79d1ad * sub_8b997b79 / 100:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return ((sub_4b79d1ad * sub_8b997b79 / 100) - totalVestedTokens)
                else:
                    if cycleReleasePct * sub_8b997b79 / 100 * block.timestamp - finishTime - sub_bcbc211b / cycle / block.timestamp - finishTime - sub_bcbc211b / cycle != cycleReleasePct * sub_8b997b79 / 100:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if (sub_4b79d1ad * sub_8b997b79 / 100) + (cycleReleasePct * sub_8b997b79 / 100 * block.timestamp - finishTime - sub_bcbc211b / cycle) < cycleReleasePct * sub_8b997b79 / 100 * block.timestamp - finishTime - sub_bcbc211b / cycle:
                        revert with 0, 'SafeMath: addition overflow'
                    if (sub_4b79d1ad * sub_8b997b79 / 100) + (cycleReleasePct * sub_8b997b79 / 100 * block.timestamp - finishTime - sub_bcbc211b / cycle) <= sub_8b997b79:
                        if totalVestedTokens > (sub_4b79d1ad * sub_8b997b79 / 100) + (cycleReleasePct * sub_8b997b79 / 100 * block.timestamp - finishTime - sub_bcbc211b / cycle):
                            revert with 0, 'SafeMath: subtraction overflow'
                        return ((sub_4b79d1ad * sub_8b997b79 / 100) + (cycleReleasePct * sub_8b997b79 / 100 * block.timestamp - finishTime - sub_bcbc211b / cycle) - totalVestedTokens)
        else:
            require 100 > mulmod(sub_8b997b79, cycleReleasePct, -1) - (cycleReleasePct * sub_8b997b79) - (mulmod(sub_8b997b79, cycleReleasePct, -1) < cycleReleasePct * sub_8b997b79)
            if 0 == finishTime:
                return 0
            if not sub_8b997b79:
                return 0
            if not finishTime + sub_bcbc211b:
                return 0
            if block.timestamp < finishTime + sub_bcbc211b:
                return 0
            if not cycle:
                return 0
            if block.timestamp < finishTime + sub_bcbc211b:
                if 0 <= sub_8b997b79:
                    if totalVestedTokens > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return -totalVestedTokens
            else:
                if finishTime + sub_bcbc211b > block.timestamp:
                    revert with 0, 'SafeMath: subtraction overflow'
                if cycle <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require cycle
                if not block.timestamp - finishTime - sub_bcbc211b / cycle:
                    if sub_4b79d1ad * sub_8b997b79 / 100 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if sub_4b79d1ad * sub_8b997b79 / 100 <= sub_8b997b79:
                        if totalVestedTokens > sub_4b79d1ad * sub_8b997b79 / 100:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return ((sub_4b79d1ad * sub_8b997b79 / 100) - totalVestedTokens)
                else:
                    if 0x5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c29 * (cycleReleasePct * sub_8b997b79) - mulmod(sub_8b997b79, cycleReleasePct, 100) / 4 or mulmod(sub_8b997b79, cycleReleasePct, -1) - (cycleReleasePct * sub_8b997b79) - (mulmod(sub_8b997b79, cycleReleasePct, -1) < cycleReleasePct * sub_8b997b79) - (mulmod(sub_8b997b79, cycleReleasePct, 100) > cycleReleasePct * sub_8b997b79) << 254 * block.timestamp - finishTime - sub_bcbc211b / cycle / block.timestamp - finishTime - sub_bcbc211b / cycle != 0x5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c29 * (cycleReleasePct * sub_8b997b79) - mulmod(sub_8b997b79, cycleReleasePct, 100) / 4 or mulmod(sub_8b997b79, cycleReleasePct, -1) - (cycleReleasePct * sub_8b997b79) - (mulmod(sub_8b997b79, cycleReleasePct, -1) < cycleReleasePct * sub_8b997b79) - (mulmod(sub_8b997b79, cycleReleasePct, 100) > cycleReleasePct * sub_8b997b79) << 254:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if (sub_4b79d1ad * sub_8b997b79 / 100) + (0x5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c29 * (cycleReleasePct * sub_8b997b79) - mulmod(sub_8b997b79, cycleReleasePct, 100) / 4 or mulmod(sub_8b997b79, cycleReleasePct, -1) - (cycleReleasePct * sub_8b997b79) - (mulmod(sub_8b997b79, cycleReleasePct, -1) < cycleReleasePct * sub_8b997b79) - (mulmod(sub_8b997b79, cycleReleasePct, 100) > cycleReleasePct * sub_8b997b79) << 254 * block.timestamp - finishTime - sub_bcbc211b / cycle) < 0x5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c29 * (cycleReleasePct * sub_8b997b79) - mulmod(sub_8b997b79, cycleReleasePct, 100) / 4 or mulmod(sub_8b997b79, cycleReleasePct, -1) - (cycleReleasePct * sub_8b997b79) - (mulmod(sub_8b997b79, cycleReleasePct, -1) < cycleReleasePct * sub_8b997b79) - (mulmod(sub_8b997b79, cycleReleasePct, 100) > cycleReleasePct * sub_8b997b79) << 254 * block.timestamp - finishTime - sub_bcbc211b / cycle:
                        revert with 0, 'SafeMath: addition overflow'
                    if (sub_4b79d1ad * sub_8b997b79 / 100) + (0x5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c29 * (cycleReleasePct * sub_8b997b79) - mulmod(sub_8b997b79, cycleReleasePct, 100) / 4 or mulmod(sub_8b997b79, cycleReleasePct, -1) - (cycleReleasePct * sub_8b997b79) - (mulmod(sub_8b997b79, cycleReleasePct, -1) < cycleReleasePct * sub_8b997b79) - (mulmod(sub_8b997b79, cycleReleasePct, 100) > cycleReleasePct * sub_8b997b79) << 254 * block.timestamp - finishTime - sub_bcbc211b / cycle) <= sub_8b997b79:
                        if totalVestedTokens > (sub_4b79d1ad * sub_8b997b79 / 100) + (0x5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c29 * (cycleReleasePct * sub_8b997b79) - mulmod(sub_8b997b79, cycleReleasePct, 100) / 4 or mulmod(sub_8b997b79, cycleReleasePct, -1) - (cycleReleasePct * sub_8b997b79) - (mulmod(sub_8b997b79, cycleReleasePct, -1) < cycleReleasePct * sub_8b997b79) - (mulmod(sub_8b997b79, cycleReleasePct, 100) > cycleReleasePct * sub_8b997b79) << 254 * block.timestamp - finishTime - sub_bcbc211b / cycle):
                            revert with 0, 'SafeMath: subtraction overflow'
                        return ((sub_4b79d1ad * sub_8b997b79 / 100) + (0x5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c29 * (cycleReleasePct * sub_8b997b79) - mulmod(sub_8b997b79, cycleReleasePct, 100) / 4 or mulmod(sub_8b997b79, cycleReleasePct, -1) - (cycleReleasePct * sub_8b997b79) - (mulmod(sub_8b997b79, cycleReleasePct, -1) < cycleReleasePct * sub_8b997b79) - (mulmod(sub_8b997b79, cycleReleasePct, 100) > cycleReleasePct * sub_8b997b79) << 254 * block.timestamp - finishTime - sub_bcbc211b / cycle) - totalVestedTokens)
    else:
        require 100 > mulmod(sub_8b997b79, sub_4b79d1ad, -1) - (sub_4b79d1ad * sub_8b997b79) - (mulmod(sub_8b997b79, sub_4b79d1ad, -1) < sub_4b79d1ad * sub_8b997b79)
        if not mulmod(sub_8b997b79, cycleReleasePct, -1) - (cycleReleasePct * sub_8b997b79) - (mulmod(sub_8b997b79, cycleReleasePct, -1) < cycleReleasePct * sub_8b997b79):
            if 0 == finishTime:
                return 0
            if not sub_8b997b79:
                return 0
            if not finishTime + sub_bcbc211b:
                return 0
            if block.timestamp < finishTime + sub_bcbc211b:
                return 0
            if not cycle:
                return 0
            if block.timestamp < finishTime + sub_bcbc211b:
                if 0 <= sub_8b997b79:
                    if totalVestedTokens > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return -totalVestedTokens
            else:
                if finishTime + sub_bcbc211b > block.timestamp:
                    revert with 0, 'SafeMath: subtraction overflow'
                if cycle <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require cycle
                if not block.timestamp - finishTime - sub_bcbc211b / cycle:
                    if 0x5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c29 * (sub_4b79d1ad * sub_8b997b79) - mulmod(sub_8b997b79, sub_4b79d1ad, 100) / 4 or mulmod(sub_8b997b79, sub_4b79d1ad, -1) - (sub_4b79d1ad * sub_8b997b79) - (mulmod(sub_8b997b79, sub_4b79d1ad, -1) < sub_4b79d1ad * sub_8b997b79) - (mulmod(sub_8b997b79, sub_4b79d1ad, 100) > sub_4b79d1ad * sub_8b997b79) << 254 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if 0x5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c29 * (sub_4b79d1ad * sub_8b997b79) - mulmod(sub_8b997b79, sub_4b79d1ad, 100) / 4 or mulmod(sub_8b997b79, sub_4b79d1ad, -1) - (sub_4b79d1ad * sub_8b997b79) - (mulmod(sub_8b997b79, sub_4b79d1ad, -1) < sub_4b79d1ad * sub_8b997b79) - (mulmod(sub_8b997b79, sub_4b79d1ad, 100) > sub_4b79d1ad * sub_8b997b79) << 254 <= sub_8b997b79:
                        if totalVestedTokens > 0x5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c29 * (sub_4b79d1ad * sub_8b997b79) - mulmod(sub_8b997b79, sub_4b79d1ad, 100) / 4 or mulmod(sub_8b997b79, sub_4b79d1ad, -1) - (sub_4b79d1ad * sub_8b997b79) - (mulmod(sub_8b997b79, sub_4b79d1ad, -1) < sub_4b79d1ad * sub_8b997b79) - (mulmod(sub_8b997b79, sub_4b79d1ad, 100) > sub_4b79d1ad * sub_8b997b79) << 254:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return ((0x5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c29 * (sub_4b79d1ad * sub_8b997b79) - mulmod(sub_8b997b79, sub_4b79d1ad, 100) / 4 or mulmod(sub_8b997b79, sub_4b79d1ad, -1) - (sub_4b79d1ad * sub_8b997b79) - (mulmod(sub_8b997b79, sub_4b79d1ad, -1) < sub_4b79d1ad * sub_8b997b79) - (mulmod(sub_8b997b79, sub_4b79d1ad, 100) > sub_4b79d1ad * sub_8b997b79) << 254) - totalVestedTokens)
                else:
                    if cycleReleasePct * sub_8b997b79 / 100 * block.timestamp - finishTime - sub_bcbc211b / cycle / block.timestamp - finishTime - sub_bcbc211b / cycle != cycleReleasePct * sub_8b997b79 / 100:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if (0x5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c29 * (sub_4b79d1ad * sub_8b997b79) - mulmod(sub_8b997b79, sub_4b79d1ad, 100) / 4 or mulmod(sub_8b997b79, sub_4b79d1ad, -1) - (sub_4b79d1ad * sub_8b997b79) - (mulmod(sub_8b997b79, sub_4b79d1ad, -1) < sub_4b79d1ad * sub_8b997b79) - (mulmod(sub_8b997b79, sub_4b79d1ad, 100) > sub_4b79d1ad * sub_8b997b79) << 254) + (cycleReleasePct * sub_8b997b79 / 100 * block.timestamp - finishTime - sub_bcbc211b / cycle) < cycleReleasePct * sub_8b997b79 / 100 * block.timestamp - finishTime - sub_bcbc211b / cycle:
                        revert with 0, 'SafeMath: addition overflow'
                    if (0x5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c29 * (sub_4b79d1ad * sub_8b997b79) - mulmod(sub_8b997b79, sub_4b79d1ad, 100) / 4 or mulmod(sub_8b997b79, sub_4b79d1ad, -1) - (sub_4b79d1ad * sub_8b997b79) - (mulmod(sub_8b997b79, sub_4b79d1ad, -1) < sub_4b79d1ad * sub_8b997b79) - (mulmod(sub_8b997b79, sub_4b79d1ad, 100) > sub_4b79d1ad * sub_8b997b79) << 254) + (cycleReleasePct * sub_8b997b79 / 100 * block.timestamp - finishTime - sub_bcbc211b / cycle) <= sub_8b997b79:
                        if totalVestedTokens > (0x5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c29 * (sub_4b79d1ad * sub_8b997b79) - mulmod(sub_8b997b79, sub_4b79d1ad, 100) / 4 or mulmod(sub_8b997b79, sub_4b79d1ad, -1) - (sub_4b79d1ad * sub_8b997b79) - (mulmod(sub_8b997b79, sub_4b79d1ad, -1) < sub_4b79d1ad * sub_8b997b79) - (mulmod(sub_8b997b79, sub_4b79d1ad, 100) > sub_4b79d1ad * sub_8b997b79) << 254) + (cycleReleasePct * sub_8b997b79 / 100 * block.timestamp - finishTime - sub_bcbc211b / cycle):
                            revert with 0, 'SafeMath: subtraction overflow'
                        return ((0x5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c29 * (sub_4b79d1ad * sub_8b997b79) - mulmod(sub_8b997b79, sub_4b79d1ad, 100) / 4 or mulmod(sub_8b997b79, sub_4b79d1ad, -1) - (sub_4b79d1ad * sub_8b997b79) - (mulmod(sub_8b997b79, sub_4b79d1ad, -1) < sub_4b79d1ad * sub_8b997b79) - (mulmod(sub_8b997b79, sub_4b79d1ad, 100) > sub_4b79d1ad * sub_8b997b79) << 254) + (cycleReleasePct * sub_8b997b79 / 100 * block.timestamp - finishTime - sub_bcbc211b / cycle) - totalVestedTokens)
        else:
            require 100 > mulmod(sub_8b997b79, cycleReleasePct, -1) - (cycleReleasePct * sub_8b997b79) - (mulmod(sub_8b997b79, cycleReleasePct, -1) < cycleReleasePct * sub_8b997b79)
            if 0 == finishTime:
                return 0
            if not sub_8b997b79:
                return 0
            if not finishTime + sub_bcbc211b:
                return 0
            if block.timestamp < finishTime + sub_bcbc211b:
                return 0
            if not cycle:
                return 0
            if block.timestamp < finishTime + sub_bcbc211b:
                if 0 <= sub_8b997b79:
                    if totalVestedTokens > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return -totalVestedTokens
            else:
                if finishTime + sub_bcbc211b > block.timestamp:
                    revert with 0, 'SafeMath: subtraction overflow'
                if cycle <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require cycle
                if not block.timestamp - finishTime - sub_bcbc211b / cycle:
                    if 0x5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c29 * (sub_4b79d1ad * sub_8b997b79) - mulmod(sub_8b997b79, sub_4b79d1ad, 100) / 4 or mulmod(sub_8b997b79, sub_4b79d1ad, -1) - (sub_4b79d1ad * sub_8b997b79) - (mulmod(sub_8b997b79, sub_4b79d1ad, -1) < sub_4b79d1ad * sub_8b997b79) - (mulmod(sub_8b997b79, sub_4b79d1ad, 100) > sub_4b79d1ad * sub_8b997b79) << 254 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if 0x5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c29 * (sub_4b79d1ad * sub_8b997b79) - mulmod(sub_8b997b79, sub_4b79d1ad, 100) / 4 or mulmod(sub_8b997b79, sub_4b79d1ad, -1) - (sub_4b79d1ad * sub_8b997b79) - (mulmod(sub_8b997b79, sub_4b79d1ad, -1) < sub_4b79d1ad * sub_8b997b79) - (mulmod(sub_8b997b79, sub_4b79d1ad, 100) > sub_4b79d1ad * sub_8b997b79) << 254 <= sub_8b997b79:
                        if totalVestedTokens > 0x5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c29 * (sub_4b79d1ad * sub_8b997b79) - mulmod(sub_8b997b79, sub_4b79d1ad, 100) / 4 or mulmod(sub_8b997b79, sub_4b79d1ad, -1) - (sub_4b79d1ad * sub_8b997b79) - (mulmod(sub_8b997b79, sub_4b79d1ad, -1) < sub_4b79d1ad * sub_8b997b79) - (mulmod(sub_8b997b79, sub_4b79d1ad, 100) > sub_4b79d1ad * sub_8b997b79) << 254:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return ((0x5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c29 * (sub_4b79d1ad * sub_8b997b79) - mulmod(sub_8b997b79, sub_4b79d1ad, 100) / 4 or mulmod(sub_8b997b79, sub_4b79d1ad, -1) - (sub_4b79d1ad * sub_8b997b79) - (mulmod(sub_8b997b79, sub_4b79d1ad, -1) < sub_4b79d1ad * sub_8b997b79) - (mulmod(sub_8b997b79, sub_4b79d1ad, 100) > sub_4b79d1ad * sub_8b997b79) << 254) - totalVestedTokens)
                else:
                    if 0x5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c29 * (cycleReleasePct * sub_8b997b79) - mulmod(sub_8b997b79, cycleReleasePct, 100) / 4 or mulmod(sub_8b997b79, cycleReleasePct, -1) - (cycleReleasePct * sub_8b997b79) - (mulmod(sub_8b997b79, cycleReleasePct, -1) < cycleReleasePct * sub_8b997b79) - (mulmod(sub_8b997b79, cycleReleasePct, 100) > cycleReleasePct * sub_8b997b79) << 254 * block.timestamp - finishTime - sub_bcbc211b / cycle / block.timestamp - finishTime - sub_bcbc211b / cycle != 0x5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c29 * (cycleReleasePct * sub_8b997b79) - mulmod(sub_8b997b79, cycleReleasePct, 100) / 4 or mulmod(sub_8b997b79, cycleReleasePct, -1) - (cycleReleasePct * sub_8b997b79) - (mulmod(sub_8b997b79, cycleReleasePct, -1) < cycleReleasePct * sub_8b997b79) - (mulmod(sub_8b997b79, cycleReleasePct, 100) > cycleReleasePct * sub_8b997b79) << 254:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if (0x5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c29 * (sub_4b79d1ad * sub_8b997b79) - mulmod(sub_8b997b79, sub_4b79d1ad, 100) / 4 or mulmod(sub_8b997b79, sub_4b79d1ad, -1) - (sub_4b79d1ad * sub_8b997b79) - (mulmod(sub_8b997b79, sub_4b79d1ad, -1) < sub_4b79d1ad * sub_8b997b79) - (mulmod(sub_8b997b79, sub_4b79d1ad, 100) > sub_4b79d1ad * sub_8b997b79) << 254) + (0x5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c29 * (cycleReleasePct * sub_8b997b79) - mulmod(sub_8b997b79, cycleReleasePct, 100) / 4 or mulmod(sub_8b997b79, cycleReleasePct, -1) - (cycleReleasePct * sub_8b997b79) - (mulmod(sub_8b997b79, cycleReleasePct, -1) < cycleReleasePct * sub_8b997b79) - (mulmod(sub_8b997b79, cycleReleasePct, 100) > cycleReleasePct * sub_8b997b79) << 254 * block.timestamp - finishTime - sub_bcbc211b / cycle) < 0x5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c29 * (cycleReleasePct * sub_8b997b79) - mulmod(sub_8b997b79, cycleReleasePct, 100) / 4 or mulmod(sub_8b997b79, cycleReleasePct, -1) - (cycleReleasePct * sub_8b997b79) - (mulmod(sub_8b997b79, cycleReleasePct, -1) < cycleReleasePct * sub_8b997b79) - (mulmod(sub_8b997b79, cycleReleasePct, 100) > cycleReleasePct * sub_8b997b79) << 254 * block.timestamp - finishTime - sub_bcbc211b / cycle:
                        revert with 0, 'SafeMath: addition overflow'
                    if (0x5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c29 * (sub_4b79d1ad * sub_8b997b79) - mulmod(sub_8b997b79, sub_4b79d1ad, 100) / 4 or mulmod(sub_8b997b79, sub_4b79d1ad, -1) - (sub_4b79d1ad * sub_8b997b79) - (mulmod(sub_8b997b79, sub_4b79d1ad, -1) < sub_4b79d1ad * sub_8b997b79) - (mulmod(sub_8b997b79, sub_4b79d1ad, 100) > sub_4b79d1ad * sub_8b997b79) << 254) + (0x5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c29 * (cycleReleasePct * sub_8b997b79) - mulmod(sub_8b997b79, cycleReleasePct, 100) / 4 or mulmod(sub_8b997b79, cycleReleasePct, -1) - (cycleReleasePct * sub_8b997b79) - (mulmod(sub_8b997b79, cycleReleasePct, -1) < cycleReleasePct * sub_8b997b79) - (mulmod(sub_8b997b79, cycleReleasePct, 100) > cycleReleasePct * sub_8b997b79) << 254 * block.timestamp - finishTime - sub_bcbc211b / cycle) <= sub_8b997b79:
                        if totalVestedTokens > (0x5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c29 * (sub_4b79d1ad * sub_8b997b79) - mulmod(sub_8b997b79, sub_4b79d1ad, 100) / 4 or mulmod(sub_8b997b79, sub_4b79d1ad, -1) - (sub_4b79d1ad * sub_8b997b79) - (mulmod(sub_8b997b79, sub_4b79d1ad, -1) < sub_4b79d1ad * sub_8b997b79) - (mulmod(sub_8b997b79, sub_4b79d1ad, 100) > sub_4b79d1ad * sub_8b997b79) << 254) + (0x5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c29 * (cycleReleasePct * sub_8b997b79) - mulmod(sub_8b997b79, cycleReleasePct, 100) / 4 or mulmod(sub_8b997b79, cycleReleasePct, -1) - (cycleReleasePct * sub_8b997b79) - (mulmod(sub_8b997b79, cycleReleasePct, -1) < cycleReleasePct * sub_8b997b79) - (mulmod(sub_8b997b79, cycleReleasePct, 100) > cycleReleasePct * sub_8b997b79) << 254 * block.timestamp - finishTime - sub_bcbc211b / cycle):
                            revert with 0, 'SafeMath: subtraction overflow'
                        return ((0x5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c29 * (sub_4b79d1ad * sub_8b997b79) - mulmod(sub_8b997b79, sub_4b79d1ad, 100) / 4 or mulmod(sub_8b997b79, sub_4b79d1ad, -1) - (sub_4b79d1ad * sub_8b997b79) - (mulmod(sub_8b997b79, sub_4b79d1ad, -1) < sub_4b79d1ad * sub_8b997b79) - (mulmod(sub_8b997b79, sub_4b79d1ad, 100) > sub_4b79d1ad * sub_8b997b79) << 254) + (0x5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c29 * (cycleReleasePct * sub_8b997b79) - mulmod(sub_8b997b79, cycleReleasePct, 100) / 4 or mulmod(sub_8b997b79, cycleReleasePct, -1) - (cycleReleasePct * sub_8b997b79) - (mulmod(sub_8b997b79, cycleReleasePct, -1) < cycleReleasePct * sub_8b997b79) - (mulmod(sub_8b997b79, cycleReleasePct, 100) > cycleReleasePct * sub_8b997b79) << 254 * block.timestamp - finishTime - sub_bcbc211b / cycle) - totalVestedTokens)
    if totalVestedTokens > sub_8b997b79:
        revert with 0, 'SafeMath: subtraction overflow'
    return (sub_8b997b79 - totalVestedTokens)
}

function withdrawVestingToken() {
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if 0 == sub_8b997b79:
        if totalVestedTokens < totalVestedTokens:
            revert with 0, 'SafeMath: addition overflow'
        revert with 0, 'Invalid withdrawable amount'
    if not mulmod(sub_8b997b79, sub_4b79d1ad, -1) - (sub_4b79d1ad * sub_8b997b79) - (mulmod(sub_8b997b79, sub_4b79d1ad, -1) < sub_4b79d1ad * sub_8b997b79):
        if mulmod(sub_8b997b79, cycleReleasePct, -1) - (cycleReleasePct * sub_8b997b79) - (mulmod(sub_8b997b79, cycleReleasePct, -1) < cycleReleasePct * sub_8b997b79):
            require 100 > mulmod(sub_8b997b79, cycleReleasePct, -1) - (cycleReleasePct * sub_8b997b79) - (mulmod(sub_8b997b79, cycleReleasePct, -1) < cycleReleasePct * sub_8b997b79)
            if 0 == finishTime:
                if totalVestedTokens < totalVestedTokens:
                    revert with 0, 'SafeMath: addition overflow'
                revert with 0, 'Invalid withdrawable amount'
            if not sub_8b997b79:
                if totalVestedTokens < totalVestedTokens:
                    revert with 0, 'SafeMath: addition overflow'
                revert with 0, 'Invalid withdrawable amount'
            if not finishTime + sub_bcbc211b:
                if totalVestedTokens < totalVestedTokens:
                    revert with 0, 'SafeMath: addition overflow'
                revert with 0, 'Invalid withdrawable amount'
            if block.timestamp < finishTime + sub_bcbc211b:
                if totalVestedTokens < totalVestedTokens:
                    revert with 0, 'SafeMath: addition overflow'
                revert with 0, 'Invalid withdrawable amount'
            if not cycle:
                if totalVestedTokens < totalVestedTokens:
                    revert with 0, 'SafeMath: addition overflow'
                revert with 0, 'Invalid withdrawable amount'
            if block.timestamp < finishTime + sub_bcbc211b:
                if 0 > sub_8b997b79:
                    if totalVestedTokens > sub_8b997b79:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if sub_8b997b79 < totalVestedTokens:
                        revert with 0, 'SafeMath: addition overflow'
                    if sub_8b997b79 - totalVestedTokens <= 0:
                        revert with 0, 'Invalid withdrawable amount'
                    if sub_8b997b79 > sub_8b997b79:
                        revert with 0, 'Invalid withdrawable amount'
                    totalVestedTokens = sub_8b997b79
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x64416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                    if not ext_code.size(tokenAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[260 len 64] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor51), uint32(stor51), Mask(224, 32, sub_8b997b79 - totalVestedTokens) >> 32
                    call tokenAddress with:
                       funct uint32(stor51)
                         gas gas_remaining wei
                        args Mask(224, 32, sub_8b997b79 - totalVestedTokens) << 224, mem[324 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with transfer(address rg1, uint256 rg2), Mask(224, 0, stor51), uint32(stor51), sub_8b997b79 - totalVestedTokens
                        if not transfer(address rg1, uint256 rg2), Mask(224, 0, stor51):
                            revert with 0, 32, 42, 0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                    else:
                        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[292]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 371 len 22]
                    emit VestingTokenWithdrawn(sub_8b997b79 - totalVestedTokens, block.timestamp);
                else:
                    if totalVestedTokens > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 < totalVestedTokens:
                        revert with 0, 'SafeMath: addition overflow'
                    if -totalVestedTokens <= 0:
                        revert with 0, 'Invalid withdrawable amount'
                    if 0 > sub_8b997b79:
                        revert with 0, 'Invalid withdrawable amount'
                    totalVestedTokens = 0
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x64416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                    if not ext_code.size(tokenAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[260 len 64] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor51), uint32(stor51), Mask(224, 32, -totalVestedTokens) >> 32
                    mem[324 len 0] = 0
                    call tokenAddress with:
                       funct uint32(stor51)
                         gas gas_remaining wei
                        args Mask(224, 32, -totalVestedTokens) << 224, mem[324 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with transfer(address rg1, uint256 rg2), Mask(224, 0, stor51), uint32(stor51), -totalVestedTokens
                        if not transfer(address rg1, uint256 rg2), Mask(224, 0, stor51):
                            revert with 0, 32, 42, 0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                    else:
                        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[292]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 371 len 22]
                    emit VestingTokenWithdrawn(-totalVestedTokens, block.timestamp);
            else:
                if finishTime + sub_bcbc211b > block.timestamp:
                    revert with 0, 'SafeMath: subtraction overflow'
                if cycle <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require cycle
                if block.timestamp - finishTime - sub_bcbc211b / cycle:
                    if 0x5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c29 * (cycleReleasePct * sub_8b997b79) - mulmod(sub_8b997b79, cycleReleasePct, 100) / 4 or mulmod(sub_8b997b79, cycleReleasePct, -1) - (cycleReleasePct * sub_8b997b79) - (mulmod(sub_8b997b79, cycleReleasePct, -1) < cycleReleasePct * sub_8b997b79) - (mulmod(sub_8b997b79, cycleReleasePct, 100) > cycleReleasePct * sub_8b997b79) << 254 * block.timestamp - finishTime - sub_bcbc211b / cycle / block.timestamp - finishTime - sub_bcbc211b / cycle != 0x5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c29 * (cycleReleasePct * sub_8b997b79) - mulmod(sub_8b997b79, cycleReleasePct, 100) / 4 or mulmod(sub_8b997b79, cycleReleasePct, -1) - (cycleReleasePct * sub_8b997b79) - (mulmod(sub_8b997b79, cycleReleasePct, -1) < cycleReleasePct * sub_8b997b79) - (mulmod(sub_8b997b79, cycleReleasePct, 100) > cycleReleasePct * sub_8b997b79) << 254:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if (sub_4b79d1ad * sub_8b997b79 / 100) + (0x5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c29 * (cycleReleasePct * sub_8b997b79) - mulmod(sub_8b997b79, cycleReleasePct, 100) / 4 or mulmod(sub_8b997b79, cycleReleasePct, -1) - (cycleReleasePct * sub_8b997b79) - (mulmod(sub_8b997b79, cycleReleasePct, -1) < cycleReleasePct * sub_8b997b79) - (mulmod(sub_8b997b79, cycleReleasePct, 100) > cycleReleasePct * sub_8b997b79) << 254 * block.timestamp - finishTime - sub_bcbc211b / cycle) < 0x5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c29 * (cycleReleasePct * sub_8b997b79) - mulmod(sub_8b997b79, cycleReleasePct, 100) / 4 or mulmod(sub_8b997b79, cycleReleasePct, -1) - (cycleReleasePct * sub_8b997b79) - (mulmod(sub_8b997b79, cycleReleasePct, -1) < cycleReleasePct * sub_8b997b79) - (mulmod(sub_8b997b79, cycleReleasePct, 100) > cycleReleasePct * sub_8b997b79) << 254 * block.timestamp - finishTime - sub_bcbc211b / cycle:
                        revert with 0, 'SafeMath: addition overflow'
                    if (sub_4b79d1ad * sub_8b997b79 / 100) + (0x5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c29 * (cycleReleasePct * sub_8b997b79) - mulmod(sub_8b997b79, cycleReleasePct, 100) / 4 or mulmod(sub_8b997b79, cycleReleasePct, -1) - (cycleReleasePct * sub_8b997b79) - (mulmod(sub_8b997b79, cycleReleasePct, -1) < cycleReleasePct * sub_8b997b79) - (mulmod(sub_8b997b79, cycleReleasePct, 100) > cycleReleasePct * sub_8b997b79) << 254 * block.timestamp - finishTime - sub_bcbc211b / cycle) <= sub_8b997b79:
                        if totalVestedTokens > (sub_4b79d1ad * sub_8b997b79 / 100) + (0x5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c29 * (cycleReleasePct * sub_8b997b79) - mulmod(sub_8b997b79, cycleReleasePct, 100) / 4 or mulmod(sub_8b997b79, cycleReleasePct, -1) - (cycleReleasePct * sub_8b997b79) - (mulmod(sub_8b997b79, cycleReleasePct, -1) < cycleReleasePct * sub_8b997b79) - (mulmod(sub_8b997b79, cycleReleasePct, 100) > cycleReleasePct * sub_8b997b79) << 254 * block.timestamp - finishTime - sub_bcbc211b / cycle):
                            revert with 0, 'SafeMath: subtraction overflow'
                        if (sub_4b79d1ad * sub_8b997b79 / 100) + (0x5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c29 * (cycleReleasePct * sub_8b997b79) - mulmod(sub_8b997b79, cycleReleasePct, 100) / 4 or mulmod(sub_8b997b79, cycleReleasePct, -1) - (cycleReleasePct * sub_8b997b79) - (mulmod(sub_8b997b79, cycleReleasePct, -1) < cycleReleasePct * sub_8b997b79) - (mulmod(sub_8b997b79, cycleReleasePct, 100) > cycleReleasePct * sub_8b997b79) << 254 * block.timestamp - finishTime - sub_bcbc211b / cycle) < totalVestedTokens:
                            revert with 0, 'SafeMath: addition overflow'
                        if (sub_4b79d1ad * sub_8b997b79 / 100) + (0x5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c29 * (cycleReleasePct * sub_8b997b79) - mulmod(sub_8b997b79, cycleReleasePct, 100) / 4 or mulmod(sub_8b997b79, cycleReleasePct, -1) - (cycleReleasePct * sub_8b997b79) - (mulmod(sub_8b997b79, cycleReleasePct, -1) < cycleReleasePct * sub_8b997b79) - (mulmod(sub_8b997b79, cycleReleasePct, 100) > cycleReleasePct * sub_8b997b79) << 254 * block.timestamp - finishTime - sub_bcbc211b / cycle) - totalVestedTokens <= 0:
                            revert with 0, 'Invalid withdrawable amount'
                        if (sub_4b79d1ad * sub_8b997b79 / 100) + (0x5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c29 * (cycleReleasePct * sub_8b997b79) - mulmod(sub_8b997b79, cycleReleasePct, 100) / 4 or mulmod(sub_8b997b79, cycleReleasePct, -1) - (cycleReleasePct * sub_8b997b79) - (mulmod(sub_8b997b79, cycleReleasePct, -1) < cycleReleasePct * sub_8b997b79) - (mulmod(sub_8b997b79, cycleReleasePct, 100) > cycleReleasePct * sub_8b997b79) << 254 * block.timestamp - finishTime - sub_bcbc211b / cycle) > sub_8b997b79:
                            revert with 0, 'Invalid withdrawable amount'
                        totalVestedTokens = (sub_4b79d1ad * sub_8b997b79 / 100) + (0x5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c29 * (cycleReleasePct * sub_8b997b79) - mulmod(sub_8b997b79, cycleReleasePct, 100) / 4 or mulmod(sub_8b997b79, cycleReleasePct, -1) - (cycleReleasePct * sub_8b997b79) - (mulmod(sub_8b997b79, cycleReleasePct, -1) < cycleReleasePct * sub_8b997b79) - (mulmod(sub_8b997b79, cycleReleasePct, 100) > cycleReleasePct * sub_8b997b79) << 254 * block.timestamp - finishTime - sub_bcbc211b / cycle)
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x64416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                        if not ext_code.size(tokenAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[260 len 64] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor51), uint32(stor51), Mask(224, 32, (sub_4b79d1ad * sub_8b997b79 / 100) + (0x5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c29 * (cycleReleasePct * sub_8b997b79) - mulmod(sub_8b997b79, cycleReleasePct, 100) / 4 or mulmod(sub_8b997b79, cycleReleasePct, -1) - (cycleReleasePct * sub_8b997b79) - (mulmod(sub_8b997b79, cycleReleasePct, -1) < cycleReleasePct * sub_8b997b79) - (mulmod(sub_8b997b79, cycleReleasePct, 100) > cycleReleasePct * sub_8b997b79) << 254 * block.timestamp - finishTime - sub_bcbc211b / cycle) - totalVestedTokens) >> 32
                        call tokenAddress with:
                           funct uint32(stor51)
                             gas gas_remaining wei
                            args Mask(224, 32, (sub_4b79d1ad * sub_8b997b79 / 100) + (0x5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c29 * (cycleReleasePct * sub_8b997b79) - mulmod(sub_8b997b79, cycleReleasePct, 100) / 4 or mulmod(sub_8b997b79, cycleReleasePct, -1) - (cycleReleasePct * sub_8b997b79) - (mulmod(sub_8b997b79, cycleReleasePct, -1) < cycleReleasePct * sub_8b997b79) - (mulmod(sub_8b997b79, cycleReleasePct, 100) > cycleReleasePct * sub_8b997b79) << 254 * block.timestamp - finishTime - sub_bcbc211b / cycle) - totalVestedTokens) << 224, mem[324 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with transfer(address rg1, uint256 rg2), 
                                            Mask(224, 0, stor51),
                                            uint32(stor51),
                                            (sub_4b79d1ad * sub_8b997b79 / 100) + (0x5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c29 * (cycleReleasePct * sub_8b997b79) - mulmod(sub_8b997b79, cycleReleasePct, 100) / 4 or mulmod(sub_8b997b79, cycleReleasePct, -1) - (cycleReleasePct * sub_8b997b79) - (mulmod(sub_8b997b79, cycleReleasePct, -1) < cycleReleasePct * sub_8b997b79) - (mulmod(sub_8b997b79, cycleReleasePct, 100) > cycleReleasePct * sub_8b997b79) << 254 * block.timestamp - finishTime - sub_bcbc211b / cycle) - totalVestedTokens
                            if not transfer(address rg1, uint256 rg2), Mask(224, 0, stor51):
                                revert with 0, 32, 42, 0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                        else:
                            mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[292]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 371 len 22]
                        emit VestingTokenWithdrawn((sub_4b79d1ad * sub_8b997b79 / 100) + (0x5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c29 * (cycleReleasePct * sub_8b997b79) - mulmod(sub_8b997b79, cycleReleasePct, 100) / 4 or mulmod(sub_8b997b79, cycleReleasePct, -1) - (cycleReleasePct * sub_8b997b79) - (mulmod(sub_8b997b79, cycleReleasePct, -1) < cycleReleasePct * sub_8b997b79) - (mulmod(sub_8b997b79, cycleReleasePct, 100) > cycleReleasePct * sub_8b997b79) << 254 * block.timestamp - finishTime - sub_bcbc211b / cycle) - totalVestedTokens, block.timestamp);
                    else:
                        if totalVestedTokens > sub_8b997b79:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if sub_8b997b79 < totalVestedTokens:
                            revert with 0, 'SafeMath: addition overflow'
                        if sub_8b997b79 - totalVestedTokens <= 0:
                            revert with 0, 'Invalid withdrawable amount'
                        if sub_8b997b79 > sub_8b997b79:
                            revert with 0, 'Invalid withdrawable amount'
                        totalVestedTokens = sub_8b997b79
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x64416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                        if not ext_code.size(tokenAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[260 len 64] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor51), uint32(stor51), Mask(224, 32, sub_8b997b79 - totalVestedTokens) >> 32
                        call tokenAddress with:
                           funct uint32(stor51)
                             gas gas_remaining wei
                            args Mask(224, 32, sub_8b997b79 - totalVestedTokens) << 224, mem[324 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with transfer(address rg1, uint256 rg2), Mask(224, 0, stor51), uint32(stor51), sub_8b997b79 - totalVestedTokens
                            if not transfer(address rg1, uint256 rg2), Mask(224, 0, stor51):
                                revert with 0, 32, 42, 0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                        else:
                            mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[292]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 371 len 22]
                        emit VestingTokenWithdrawn(sub_8b997b79 - totalVestedTokens, block.timestamp);
                else:
                    if sub_4b79d1ad * sub_8b997b79 / 100 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if sub_4b79d1ad * sub_8b997b79 / 100 <= sub_8b997b79:
                        if totalVestedTokens > sub_4b79d1ad * sub_8b997b79 / 100:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if sub_4b79d1ad * sub_8b997b79 / 100 < totalVestedTokens:
                            revert with 0, 'SafeMath: addition overflow'
                        if (sub_4b79d1ad * sub_8b997b79 / 100) - totalVestedTokens <= 0:
                            revert with 0, 'Invalid withdrawable amount'
                        if sub_4b79d1ad * sub_8b997b79 / 100 > sub_8b997b79:
                            revert with 0, 'Invalid withdrawable amount'
                        totalVestedTokens = sub_4b79d1ad * sub_8b997b79 / 100
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x64416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                        if not ext_code.size(tokenAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[260 len 64] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor51), uint32(stor51), Mask(224, 32, (sub_4b79d1ad * sub_8b997b79 / 100) - totalVestedTokens) >> 32
                        call tokenAddress with:
                           funct uint32(stor51)
                             gas gas_remaining wei
                            args Mask(224, 32, (sub_4b79d1ad * sub_8b997b79 / 100) - totalVestedTokens) << 224, mem[324 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with transfer(address rg1, uint256 rg2), 
                                            Mask(224, 0, stor51),
                                            uint32(stor51),
                                            (sub_4b79d1ad * sub_8b997b79 / 100) - totalVestedTokens
                            if not transfer(address rg1, uint256 rg2), Mask(224, 0, stor51):
                                revert with 0, 32, 42, 0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                        else:
                            mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[292]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 371 len 22]
                        emit VestingTokenWithdrawn((sub_4b79d1ad * sub_8b997b79 / 100) - totalVestedTokens, block.timestamp);
                    else:
                        if totalVestedTokens > sub_8b997b79:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if sub_8b997b79 < totalVestedTokens:
                            revert with 0, 'SafeMath: addition overflow'
                        if sub_8b997b79 - totalVestedTokens <= 0:
                            revert with 0, 'Invalid withdrawable amount'
                        if sub_8b997b79 > sub_8b997b79:
                            revert with 0, 'Invalid withdrawable amount'
                        totalVestedTokens = sub_8b997b79
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x64416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                        if not ext_code.size(tokenAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[260 len 64] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor51), uint32(stor51), Mask(224, 32, sub_8b997b79 - totalVestedTokens) >> 32
                        mem[324 len 0] = 0
                        call tokenAddress with:
                           funct uint32(stor51)
                             gas gas_remaining wei
                            args Mask(224, 32, sub_8b997b79 - totalVestedTokens) << 224, mem[324 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with transfer(address rg1, uint256 rg2), Mask(224, 0, stor51), uint32(stor51), sub_8b997b79 - totalVestedTokens
                            if not transfer(address rg1, uint256 rg2), Mask(224, 0, stor51):
                                revert with 0, 32, 42, 0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                        else:
                            mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[292]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 371 len 22]
                        emit VestingTokenWithdrawn(sub_8b997b79 - totalVestedTokens, block.timestamp);
        else:
            if 0 == finishTime:
                if totalVestedTokens < totalVestedTokens:
                    revert with 0, 'SafeMath: addition overflow'
                revert with 0, 'Invalid withdrawable amount'
            if not sub_8b997b79:
                if totalVestedTokens < totalVestedTokens:
                    revert with 0, 'SafeMath: addition overflow'
                revert with 0, 'Invalid withdrawable amount'
            if not finishTime + sub_bcbc211b:
                if totalVestedTokens < totalVestedTokens:
                    revert with 0, 'SafeMath: addition overflow'
                revert with 0, 'Invalid withdrawable amount'
            if block.timestamp < finishTime + sub_bcbc211b:
                if totalVestedTokens < totalVestedTokens:
                    revert with 0, 'SafeMath: addition overflow'
                revert with 0, 'Invalid withdrawable amount'
            if not cycle:
                if totalVestedTokens < totalVestedTokens:
                    revert with 0, 'SafeMath: addition overflow'
                revert with 0, 'Invalid withdrawable amount'
            if block.timestamp < finishTime + sub_bcbc211b:
                if 0 > sub_8b997b79:
                    if totalVestedTokens > sub_8b997b79:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if sub_8b997b79 < totalVestedTokens:
                        revert with 0, 'SafeMath: addition overflow'
                    if sub_8b997b79 - totalVestedTokens <= 0:
                        revert with 0, 'Invalid withdrawable amount'
                    if sub_8b997b79 > sub_8b997b79:
                        revert with 0, 'Invalid withdrawable amount'
                    totalVestedTokens = sub_8b997b79
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x64416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                    if not ext_code.size(tokenAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[260 len 64] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor51), uint32(stor51), Mask(224, 32, sub_8b997b79 - totalVestedTokens) >> 32
                    call tokenAddress with:
                       funct uint32(stor51)
                         gas gas_remaining wei
                        args Mask(224, 32, sub_8b997b79 - totalVestedTokens) << 224, mem[324 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with transfer(address rg1, uint256 rg2), Mask(224, 0, stor51), uint32(stor51), sub_8b997b79 - totalVestedTokens
                        if not transfer(address rg1, uint256 rg2), Mask(224, 0, stor51):
                            revert with 0, 32, 42, 0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                    else:
                        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[292]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 371 len 22]
                    emit VestingTokenWithdrawn(sub_8b997b79 - totalVestedTokens, block.timestamp);
                else:
                    if totalVestedTokens > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 < totalVestedTokens:
                        revert with 0, 'SafeMath: addition overflow'
                    if -totalVestedTokens <= 0:
                        revert with 0, 'Invalid withdrawable amount'
                    if 0 > sub_8b997b79:
                        revert with 0, 'Invalid withdrawable amount'
                    totalVestedTokens = 0
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x64416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                    if not ext_code.size(tokenAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[260 len 64] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor51), uint32(stor51), Mask(224, 32, -totalVestedTokens) >> 32
                    mem[324 len 0] = 0
                    call tokenAddress with:
                       funct uint32(stor51)
                         gas gas_remaining wei
                        args Mask(224, 32, -totalVestedTokens) << 224, mem[324 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with transfer(address rg1, uint256 rg2), Mask(224, 0, stor51), uint32(stor51), -totalVestedTokens
                        if not transfer(address rg1, uint256 rg2), Mask(224, 0, stor51):
                            revert with 0, 32, 42, 0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                    else:
                        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[292]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 371 len 22]
                    emit VestingTokenWithdrawn(-totalVestedTokens, block.timestamp);
            else:
                if finishTime + sub_bcbc211b > block.timestamp:
                    revert with 0, 'SafeMath: subtraction overflow'
                if cycle <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require cycle
                if not block.timestamp - finishTime - sub_bcbc211b / cycle:
                    if sub_4b79d1ad * sub_8b997b79 / 100 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if sub_4b79d1ad * sub_8b997b79 / 100 <= sub_8b997b79:
                        if totalVestedTokens > sub_4b79d1ad * sub_8b997b79 / 100:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if sub_4b79d1ad * sub_8b997b79 / 100 < totalVestedTokens:
                            revert with 0, 'SafeMath: addition overflow'
                        if (sub_4b79d1ad * sub_8b997b79 / 100) - totalVestedTokens <= 0:
                            revert with 0, 'Invalid withdrawable amount'
                        if sub_4b79d1ad * sub_8b997b79 / 100 > sub_8b997b79:
                            revert with 0, 'Invalid withdrawable amount'
                        totalVestedTokens = sub_4b79d1ad * sub_8b997b79 / 100
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x64416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                        if not ext_code.size(tokenAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[260 len 64] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor51), uint32(stor51), Mask(224, 32, (sub_4b79d1ad * sub_8b997b79 / 100) - totalVestedTokens) >> 32
                        call tokenAddress with:
                           funct uint32(stor51)
                             gas gas_remaining wei
                            args Mask(224, 32, (sub_4b79d1ad * sub_8b997b79 / 100) - totalVestedTokens) << 224, mem[324 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with transfer(address rg1, uint256 rg2), 
                                            Mask(224, 0, stor51),
                                            uint32(stor51),
                                            (sub_4b79d1ad * sub_8b997b79 / 100) - totalVestedTokens
                            if not transfer(address rg1, uint256 rg2), Mask(224, 0, stor51):
                                revert with 0, 32, 42, 0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                        else:
                            mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[292]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 371 len 22]
                        emit VestingTokenWithdrawn((sub_4b79d1ad * sub_8b997b79 / 100) - totalVestedTokens, block.timestamp);
                    else:
                        if totalVestedTokens > sub_8b997b79:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if sub_8b997b79 < totalVestedTokens:
                            revert with 0, 'SafeMath: addition overflow'
                        if sub_8b997b79 - totalVestedTokens <= 0:
                            revert with 0, 'Invalid withdrawable amount'
                        if sub_8b997b79 > sub_8b997b79:
                            revert with 0, 'Invalid withdrawable amount'
                        totalVestedTokens = sub_8b997b79
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x64416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                        if not ext_code.size(tokenAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[260 len 64] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor51), uint32(stor51), Mask(224, 32, sub_8b997b79 - totalVestedTokens) >> 32
                        call tokenAddress with:
                           funct uint32(stor51)
                             gas gas_remaining wei
                            args Mask(224, 32, sub_8b997b79 - totalVestedTokens) << 224, mem[324 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with transfer(address rg1, uint256 rg2), Mask(224, 0, stor51), uint32(stor51), sub_8b997b79 - totalVestedTokens
                            if not transfer(address rg1, uint256 rg2), Mask(224, 0, stor51):
                                revert with 0, 32, 42, 0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                        else:
                            mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[292]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 371 len 22]
                        emit VestingTokenWithdrawn(sub_8b997b79 - totalVestedTokens, block.timestamp);
                else:
                    if cycleReleasePct * sub_8b997b79 / 100 * block.timestamp - finishTime - sub_bcbc211b / cycle / block.timestamp - finishTime - sub_bcbc211b / cycle != cycleReleasePct * sub_8b997b79 / 100:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if (sub_4b79d1ad * sub_8b997b79 / 100) + (cycleReleasePct * sub_8b997b79 / 100 * block.timestamp - finishTime - sub_bcbc211b / cycle) < cycleReleasePct * sub_8b997b79 / 100 * block.timestamp - finishTime - sub_bcbc211b / cycle:
                        revert with 0, 'SafeMath: addition overflow'
                    if (sub_4b79d1ad * sub_8b997b79 / 100) + (cycleReleasePct * sub_8b997b79 / 100 * block.timestamp - finishTime - sub_bcbc211b / cycle) <= sub_8b997b79:
                        if totalVestedTokens > (sub_4b79d1ad * sub_8b997b79 / 100) + (cycleReleasePct * sub_8b997b79 / 100 * block.timestamp - finishTime - sub_bcbc211b / cycle):
                            revert with 0, 'SafeMath: subtraction overflow'
                        if (sub_4b79d1ad * sub_8b997b79 / 100) + (cycleReleasePct * sub_8b997b79 / 100 * block.timestamp - finishTime - sub_bcbc211b / cycle) < totalVestedTokens:
                            revert with 0, 'SafeMath: addition overflow'
                        if (sub_4b79d1ad * sub_8b997b79 / 100) + (cycleReleasePct * sub_8b997b79 / 100 * block.timestamp - finishTime - sub_bcbc211b / cycle) - totalVestedTokens <= 0:
                            revert with 0, 'Invalid withdrawable amount'
                        if (sub_4b79d1ad * sub_8b997b79 / 100) + (cycleReleasePct * sub_8b997b79 / 100 * block.timestamp - finishTime - sub_bcbc211b / cycle) > sub_8b997b79:
                            revert with 0, 'Invalid withdrawable amount'
                        totalVestedTokens = (sub_4b79d1ad * sub_8b997b79 / 100) + (cycleReleasePct * sub_8b997b79 / 100 * block.timestamp - finishTime - sub_bcbc211b / cycle)
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x64416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                        if not ext_code.size(tokenAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[260 len 64] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor51), uint32(stor51), Mask(224, 32, (sub_4b79d1ad * sub_8b997b79 / 100) + (cycleReleasePct * sub_8b997b79 / 100 * block.timestamp - finishTime - sub_bcbc211b / cycle) - totalVestedTokens) >> 32
                        call tokenAddress with:
                           funct uint32(stor51)
                             gas gas_remaining wei
                            args Mask(224, 32, (sub_4b79d1ad * sub_8b997b79 / 100) + (cycleReleasePct * sub_8b997b79 / 100 * block.timestamp - finishTime - sub_bcbc211b / cycle) - totalVestedTokens) << 224, mem[324 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with transfer(address rg1, uint256 rg2), 
                                            Mask(224, 0, stor51),
                                            uint32(stor51),
                                            (sub_4b79d1ad * sub_8b997b79 / 100) + (cycleReleasePct * sub_8b997b79 / 100 * block.timestamp - finishTime - sub_bcbc211b / cycle) - totalVestedTokens
                            if not transfer(address rg1, uint256 rg2), Mask(224, 0, stor51):
                                revert with 0, 32, 42, 0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                        else:
                            mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[292]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 371 len 22]
                        emit VestingTokenWithdrawn((sub_4b79d1ad * sub_8b997b79 / 100) + (cycleReleasePct * sub_8b997b79 / 100 * block.timestamp - finishTime - sub_bcbc211b / cycle) - totalVestedTokens, block.timestamp);
                    else:
                        if totalVestedTokens > sub_8b997b79:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if sub_8b997b79 < totalVestedTokens:
                            revert with 0, 'SafeMath: addition overflow'
                        if sub_8b997b79 - totalVestedTokens <= 0:
                            revert with 0, 'Invalid withdrawable amount'
                        if sub_8b997b79 > sub_8b997b79:
                            revert with 0, 'Invalid withdrawable amount'
                        totalVestedTokens = sub_8b997b79
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x64416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                        if not ext_code.size(tokenAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[260 len 64] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor51), uint32(stor51), Mask(224, 32, sub_8b997b79 - totalVestedTokens) >> 32
                        mem[324 len 0] = 0
                        call tokenAddress with:
                           funct uint32(stor51)
                             gas gas_remaining wei
                            args Mask(224, 32, sub_8b997b79 - totalVestedTokens) << 224, mem[324 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with transfer(address rg1, uint256 rg2), Mask(224, 0, stor51), uint32(stor51), sub_8b997b79 - totalVestedTokens
                            if not transfer(address rg1, uint256 rg2), Mask(224, 0, stor51):
                                revert with 0, 32, 42, 0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                        else:
                            mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[292]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 371 len 22]
                        emit VestingTokenWithdrawn(sub_8b997b79 - totalVestedTokens, block.timestamp);
    else:
        require 100 > mulmod(sub_8b997b79, sub_4b79d1ad, -1) - (sub_4b79d1ad * sub_8b997b79) - (mulmod(sub_8b997b79, sub_4b79d1ad, -1) < sub_4b79d1ad * sub_8b997b79)
        if not mulmod(sub_8b997b79, cycleReleasePct, -1) - (cycleReleasePct * sub_8b997b79) - (mulmod(sub_8b997b79, cycleReleasePct, -1) < cycleReleasePct * sub_8b997b79):
            if 0 == finishTime:
                if totalVestedTokens < totalVestedTokens:
                    revert with 0, 'SafeMath: addition overflow'
                revert with 0, 'Invalid withdrawable amount'
            if not sub_8b997b79:
                if totalVestedTokens < totalVestedTokens:
                    revert with 0, 'SafeMath: addition overflow'
                revert with 0, 'Invalid withdrawable amount'
            if not finishTime + sub_bcbc211b:
                if totalVestedTokens < totalVestedTokens:
                    revert with 0, 'SafeMath: addition overflow'
                revert with 0, 'Invalid withdrawable amount'
            if block.timestamp < finishTime + sub_bcbc211b:
                if totalVestedTokens < totalVestedTokens:
                    revert with 0, 'SafeMath: addition overflow'
                revert with 0, 'Invalid withdrawable amount'
            if not cycle:
                if totalVestedTokens < totalVestedTokens:
                    revert with 0, 'SafeMath: addition overflow'
                revert with 0, 'Invalid withdrawable amount'
            if block.timestamp < finishTime + sub_bcbc211b:
                if 0 <= sub_8b997b79:
                    if totalVestedTokens > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 < totalVestedTokens:
                        revert with 0, 'SafeMath: addition overflow'
                    if -totalVestedTokens <= 0:
                        revert with 0, 'Invalid withdrawable amount'
                    if 0 > sub_8b997b79:
                        revert with 0, 'Invalid withdrawable amount'
                    totalVestedTokens = 0
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x64416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                    if not ext_code.size(tokenAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[260 len 64] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor51), uint32(stor51), Mask(224, 32, -totalVestedTokens) >> 32
                    mem[324 len 0] = 0
                    call tokenAddress with:
                       funct uint32(stor51)
                         gas gas_remaining wei
                        args Mask(224, 32, -totalVestedTokens) << 224, mem[324 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with transfer(address rg1, uint256 rg2), Mask(224, 0, stor51), uint32(stor51), -totalVestedTokens
                        if not transfer(address rg1, uint256 rg2), Mask(224, 0, stor51):
                            revert with 0, 32, 42, 0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                    else:
                        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[292]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 371 len 22]
                    emit VestingTokenWithdrawn(-totalVestedTokens, block.timestamp);
                else:
                    if totalVestedTokens > sub_8b997b79:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if sub_8b997b79 < totalVestedTokens:
                        revert with 0, 'SafeMath: addition overflow'
                    if sub_8b997b79 - totalVestedTokens <= 0:
                        revert with 0, 'Invalid withdrawable amount'
                    if sub_8b997b79 > sub_8b997b79:
                        revert with 0, 'Invalid withdrawable amount'
                    totalVestedTokens = sub_8b997b79
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x64416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                    if not ext_code.size(tokenAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[260 len 64] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor51), uint32(stor51), Mask(224, 32, sub_8b997b79 - totalVestedTokens) >> 32
                    mem[324 len 0] = 0
                    call tokenAddress with:
                       funct uint32(stor51)
                         gas gas_remaining wei
                        args Mask(224, 32, sub_8b997b79 - totalVestedTokens) << 224, mem[324 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with transfer(address rg1, uint256 rg2), Mask(224, 0, stor51), uint32(stor51), sub_8b997b79 - totalVestedTokens
                        if not transfer(address rg1, uint256 rg2), Mask(224, 0, stor51):
                            revert with 0, 32, 42, 0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                    else:
                        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[292]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 371 len 22]
                    emit VestingTokenWithdrawn(sub_8b997b79 - totalVestedTokens, block.timestamp);
            else:
                if finishTime + sub_bcbc211b > block.timestamp:
                    revert with 0, 'SafeMath: subtraction overflow'
                if cycle <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require cycle
                if not block.timestamp - finishTime - sub_bcbc211b / cycle:
                    if 0x5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c29 * (sub_4b79d1ad * sub_8b997b79) - mulmod(sub_8b997b79, sub_4b79d1ad, 100) / 4 or mulmod(sub_8b997b79, sub_4b79d1ad, -1) - (sub_4b79d1ad * sub_8b997b79) - (mulmod(sub_8b997b79, sub_4b79d1ad, -1) < sub_4b79d1ad * sub_8b997b79) - (mulmod(sub_8b997b79, sub_4b79d1ad, 100) > sub_4b79d1ad * sub_8b997b79) << 254 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if 0x5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c29 * (sub_4b79d1ad * sub_8b997b79) - mulmod(sub_8b997b79, sub_4b79d1ad, 100) / 4 or mulmod(sub_8b997b79, sub_4b79d1ad, -1) - (sub_4b79d1ad * sub_8b997b79) - (mulmod(sub_8b997b79, sub_4b79d1ad, -1) < sub_4b79d1ad * sub_8b997b79) - (mulmod(sub_8b997b79, sub_4b79d1ad, 100) > sub_4b79d1ad * sub_8b997b79) << 254 > sub_8b997b79:
                        if totalVestedTokens > sub_8b997b79:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if sub_8b997b79 < totalVestedTokens:
                            revert with 0, 'SafeMath: addition overflow'
                        if sub_8b997b79 - totalVestedTokens <= 0:
                            revert with 0, 'Invalid withdrawable amount'
                        if sub_8b997b79 > sub_8b997b79:
                            revert with 0, 'Invalid withdrawable amount'
                        totalVestedTokens = sub_8b997b79
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x64416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                        if not ext_code.size(tokenAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[260 len 64] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor51), uint32(stor51), Mask(224, 32, sub_8b997b79 - totalVestedTokens) >> 32
                        call tokenAddress with:
                           funct uint32(stor51)
                             gas gas_remaining wei
                            args Mask(224, 32, sub_8b997b79 - totalVestedTokens) << 224, mem[324 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with transfer(address rg1, uint256 rg2), Mask(224, 0, stor51), uint32(stor51), sub_8b997b79 - totalVestedTokens
                            if not transfer(address rg1, uint256 rg2), Mask(224, 0, stor51):
                                revert with 0, 32, 42, 0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                        else:
                            mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[292]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 371 len 22]
                        emit VestingTokenWithdrawn(sub_8b997b79 - totalVestedTokens, block.timestamp);
                    else:
                        if totalVestedTokens > 0x5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c29 * (sub_4b79d1ad * sub_8b997b79) - mulmod(sub_8b997b79, sub_4b79d1ad, 100) / 4 or mulmod(sub_8b997b79, sub_4b79d1ad, -1) - (sub_4b79d1ad * sub_8b997b79) - (mulmod(sub_8b997b79, sub_4b79d1ad, -1) < sub_4b79d1ad * sub_8b997b79) - (mulmod(sub_8b997b79, sub_4b79d1ad, 100) > sub_4b79d1ad * sub_8b997b79) << 254:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 0x5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c29 * (sub_4b79d1ad * sub_8b997b79) - mulmod(sub_8b997b79, sub_4b79d1ad, 100) / 4 or mulmod(sub_8b997b79, sub_4b79d1ad, -1) - (sub_4b79d1ad * sub_8b997b79) - (mulmod(sub_8b997b79, sub_4b79d1ad, -1) < sub_4b79d1ad * sub_8b997b79) - (mulmod(sub_8b997b79, sub_4b79d1ad, 100) > sub_4b79d1ad * sub_8b997b79) << 254 < totalVestedTokens:
                            revert with 0, 'SafeMath: addition overflow'
                        if (0x5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c29 * (sub_4b79d1ad * sub_8b997b79) - mulmod(sub_8b997b79, sub_4b79d1ad, 100) / 4 or mulmod(sub_8b997b79, sub_4b79d1ad, -1) - (sub_4b79d1ad * sub_8b997b79) - (mulmod(sub_8b997b79, sub_4b79d1ad, -1) < sub_4b79d1ad * sub_8b997b79) - (mulmod(sub_8b997b79, sub_4b79d1ad, 100) > sub_4b79d1ad * sub_8b997b79) << 254) - totalVestedTokens <= 0:
                            revert with 0, 'Invalid withdrawable amount'
                        if 0x5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c29 * (sub_4b79d1ad * sub_8b997b79) - mulmod(sub_8b997b79, sub_4b79d1ad, 100) / 4 or mulmod(sub_8b997b79, sub_4b79d1ad, -1) - (sub_4b79d1ad * sub_8b997b79) - (mulmod(sub_8b997b79, sub_4b79d1ad, -1) < sub_4b79d1ad * sub_8b997b79) - (mulmod(sub_8b997b79, sub_4b79d1ad, 100) > sub_4b79d1ad * sub_8b997b79) << 254 > sub_8b997b79:
                            revert with 0, 'Invalid withdrawable amount'
                        totalVestedTokens = 0x5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c29 * (sub_4b79d1ad * sub_8b997b79) - mulmod(sub_8b997b79, sub_4b79d1ad, 100) / 4 or mulmod(sub_8b997b79, sub_4b79d1ad, -1) - (sub_4b79d1ad * sub_8b997b79) - (mulmod(sub_8b997b79, sub_4b79d1ad, -1) < sub_4b79d1ad * sub_8b997b79) - (mulmod(sub_8b997b79, sub_4b79d1ad, 100) > sub_4b79d1ad * sub_8b997b79) << 254
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x64416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                        if not ext_code.size(tokenAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[260 len 64] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor51), uint32(stor51), Mask(224, 32, (0x5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c29 * (sub_4b79d1ad * sub_8b997b79) - mulmod(sub_8b997b79, sub_4b79d1ad, 100) / 4 or mulmod(sub_8b997b79, sub_4b79d1ad, -1) - (sub_4b79d1ad * sub_8b997b79) - (mulmod(sub_8b997b79, sub_4b79d1ad, -1) < sub_4b79d1ad * sub_8b997b79) - (mulmod(sub_8b997b79, sub_4b79d1ad, 100) > sub_4b79d1ad * sub_8b997b79) << 254) - totalVestedTokens) >> 32
                        mem[324 len 0] = 0
                        call tokenAddress with:
                           funct uint32(stor51)
                             gas gas_remaining wei
                            args Mask(224, 32, (0x5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c29 * (sub_4b79d1ad * sub_8b997b79) - mulmod(sub_8b997b79, sub_4b79d1ad, 100) / 4 or mulmod(sub_8b997b79, sub_4b79d1ad, -1) - (sub_4b79d1ad * sub_8b997b79) - (mulmod(sub_8b997b79, sub_4b79d1ad, -1) < sub_4b79d1ad * sub_8b997b79) - (mulmod(sub_8b997b79, sub_4b79d1ad, 100) > sub_4b79d1ad * sub_8b997b79) << 254) - totalVestedTokens) << 224, mem[324 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with transfer(address rg1, uint256 rg2), 
                                            Mask(224, 0, stor51),
                                            uint32(stor51),
                                            (0x5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c29 * (sub_4b79d1ad * sub_8b997b79) - mulmod(sub_8b997b79, sub_4b79d1ad, 100) / 4 or mulmod(sub_8b997b79, sub_4b79d1ad, -1) - (sub_4b79d1ad * sub_8b997b79) - (mulmod(sub_8b997b79, sub_4b79d1ad, -1) < sub_4b79d1ad * sub_8b997b79) - (mulmod(sub_8b997b79, sub_4b79d1ad, 100) > sub_4b79d1ad * sub_8b997b79) << 254) - totalVestedTokens
                            if not transfer(address rg1, uint256 rg2), Mask(224, 0, stor51):
                                revert with 0, 32, 42, 0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                        else:
                            mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[292]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 371 len 22]
                        emit VestingTokenWithdrawn((0x5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c29 * (sub_4b79d1ad * sub_8b997b79) - mulmod(sub_8b997b79, sub_4b79d1ad, 100) / 4 or mulmod(sub_8b997b79, sub_4b79d1ad, -1) - (sub_4b79d1ad * sub_8b997b79) - (mulmod(sub_8b997b79, sub_4b79d1ad, -1) < sub_4b79d1ad * sub_8b997b79) - (mulmod(sub_8b997b79, sub_4b79d1ad, 100) > sub_4b79d1ad * sub_8b997b79) << 254) - totalVestedTokens, block.timestamp);
                else:
                    if cycleReleasePct * sub_8b997b79 / 100 * block.timestamp - finishTime - sub_bcbc211b / cycle / block.timestamp - finishTime - sub_bcbc211b / cycle != cycleReleasePct * sub_8b997b79 / 100:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if (0x5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c29 * (sub_4b79d1ad * sub_8b997b79) - mulmod(sub_8b997b79, sub_4b79d1ad, 100) / 4 or mulmod(sub_8b997b79, sub_4b79d1ad, -1) - (sub_4b79d1ad * sub_8b997b79) - (mulmod(sub_8b997b79, sub_4b79d1ad, -1) < sub_4b79d1ad * sub_8b997b79) - (mulmod(sub_8b997b79, sub_4b79d1ad, 100) > sub_4b79d1ad * sub_8b997b79) << 254) + (cycleReleasePct * sub_8b997b79 / 100 * block.timestamp - finishTime - sub_bcbc211b / cycle) < cycleReleasePct * sub_8b997b79 / 100 * block.timestamp - finishTime - sub_bcbc211b / cycle:
                        revert with 0, 'SafeMath: addition overflow'
                    if (0x5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c29 * (sub_4b79d1ad * sub_8b997b79) - mulmod(sub_8b997b79, sub_4b79d1ad, 100) / 4 or mulmod(sub_8b997b79, sub_4b79d1ad, -1) - (sub_4b79d1ad * sub_8b997b79) - (mulmod(sub_8b997b79, sub_4b79d1ad, -1) < sub_4b79d1ad * sub_8b997b79) - (mulmod(sub_8b997b79, sub_4b79d1ad, 100) > sub_4b79d1ad * sub_8b997b79) << 254) + (cycleReleasePct * sub_8b997b79 / 100 * block.timestamp - finishTime - sub_bcbc211b / cycle) <= sub_8b997b79:
                        if totalVestedTokens > (0x5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c29 * (sub_4b79d1ad * sub_8b997b79) - mulmod(sub_8b997b79, sub_4b79d1ad, 100) / 4 or mulmod(sub_8b997b79, sub_4b79d1ad, -1) - (sub_4b79d1ad * sub_8b997b79) - (mulmod(sub_8b997b79, sub_4b79d1ad, -1) < sub_4b79d1ad * sub_8b997b79) - (mulmod(sub_8b997b79, sub_4b79d1ad, 100) > sub_4b79d1ad * sub_8b997b79) << 254) + (cycleReleasePct * sub_8b997b79 / 100 * block.timestamp - finishTime - sub_bcbc211b / cycle):
                            revert with 0, 'SafeMath: subtraction overflow'
                        if (0x5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c29 * (sub_4b79d1ad * sub_8b997b79) - mulmod(sub_8b997b79, sub_4b79d1ad, 100) / 4 or mulmod(sub_8b997b79, sub_4b79d1ad, -1) - (sub_4b79d1ad * sub_8b997b79) - (mulmod(sub_8b997b79, sub_4b79d1ad, -1) < sub_4b79d1ad * sub_8b997b79) - (mulmod(sub_8b997b79, sub_4b79d1ad, 100) > sub_4b79d1ad * sub_8b997b79) << 254) + (cycleReleasePct * sub_8b997b79 / 100 * block.timestamp - finishTime - sub_bcbc211b / cycle) < totalVestedTokens:
                            revert with 0, 'SafeMath: addition overflow'
                        if (0x5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c29 * (sub_4b79d1ad * sub_8b997b79) - mulmod(sub_8b997b79, sub_4b79d1ad, 100) / 4 or mulmod(sub_8b997b79, sub_4b79d1ad, -1) - (sub_4b79d1ad * sub_8b997b79) - (mulmod(sub_8b997b79, sub_4b79d1ad, -1) < sub_4b79d1ad * sub_8b997b79) - (mulmod(sub_8b997b79, sub_4b79d1ad, 100) > sub_4b79d1ad * sub_8b997b79) << 254) + (cycleReleasePct * sub_8b997b79 / 100 * block.timestamp - finishTime - sub_bcbc211b / cycle) - totalVestedTokens <= 0:
                            revert with 0, 'Invalid withdrawable amount'
                        if (0x5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c29 * (sub_4b79d1ad * sub_8b997b79) - mulmod(sub_8b997b79, sub_4b79d1ad, 100) / 4 or mulmod(sub_8b997b79, sub_4b79d1ad, -1) - (sub_4b79d1ad * sub_8b997b79) - (mulmod(sub_8b997b79, sub_4b79d1ad, -1) < sub_4b79d1ad * sub_8b997b79) - (mulmod(sub_8b997b79, sub_4b79d1ad, 100) > sub_4b79d1ad * sub_8b997b79) << 254) + (cycleReleasePct * sub_8b997b79 / 100 * block.timestamp - finishTime - sub_bcbc211b / cycle) > sub_8b997b79:
                            revert with 0, 'Invalid withdrawable amount'
                        totalVestedTokens = (0x5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c29 * (sub_4b79d1ad * sub_8b997b79) - mulmod(sub_8b997b79, sub_4b79d1ad, 100) / 4 or mulmod(sub_8b997b79, sub_4b79d1ad, -1) - (sub_4b79d1ad * sub_8b997b79) - (mulmod(sub_8b997b79, sub_4b79d1ad, -1) < sub_4b79d1ad * sub_8b997b79) - (mulmod(sub_8b997b79, sub_4b79d1ad, 100) > sub_4b79d1ad * sub_8b997b79) << 254) + (cycleReleasePct * sub_8b997b79 / 100 * block.timestamp - finishTime - sub_bcbc211b / cycle)
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x64416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                        if not ext_code.size(tokenAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[260 len 64] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor51), uint32(stor51), Mask(224, 32, (0x5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c29 * (sub_4b79d1ad * sub_8b997b79) - mulmod(sub_8b997b79, sub_4b79d1ad, 100) / 4 or mulmod(sub_8b997b79, sub_4b79d1ad, -1) - (sub_4b79d1ad * sub_8b997b79) - (mulmod(sub_8b997b79, sub_4b79d1ad, -1) < sub_4b79d1ad * sub_8b997b79) - (mulmod(sub_8b997b79, sub_4b79d1ad, 100) > sub_4b79d1ad * sub_8b997b79) << 254) + (cycleReleasePct * sub_8b997b79 / 100 * block.timestamp - finishTime - sub_bcbc211b / cycle) - totalVestedTokens) >> 32
                        mem[324 len 0] = 0
                        call tokenAddress with:
                           funct uint32(stor51)
                             gas gas_remaining wei
                            args Mask(224, 32, (0x5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c29 * (sub_4b79d1ad * sub_8b997b79) - mulmod(sub_8b997b79, sub_4b79d1ad, 100) / 4 or mulmod(sub_8b997b79, sub_4b79d1ad, -1) - (sub_4b79d1ad * sub_8b997b79) - (mulmod(sub_8b997b79, sub_4b79d1ad, -1) < sub_4b79d1ad * sub_8b997b79) - (mulmod(sub_8b997b79, sub_4b79d1ad, 100) > sub_4b79d1ad * sub_8b997b79) << 254) + (cycleReleasePct * sub_8b997b79 / 100 * block.timestamp - finishTime - sub_bcbc211b / cycle) - totalVestedTokens) << 224, mem[324 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with transfer(address rg1, uint256 rg2), 
                                            Mask(224, 0, stor51),
                                            uint32(stor51),
                                            (0x5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c29 * (sub_4b79d1ad * sub_8b997b79) - mulmod(sub_8b997b79, sub_4b79d1ad, 100) / 4 or mulmod(sub_8b997b79, sub_4b79d1ad, -1) - (sub_4b79d1ad * sub_8b997b79) - (mulmod(sub_8b997b79, sub_4b79d1ad, -1) < sub_4b79d1ad * sub_8b997b79) - (mulmod(sub_8b997b79, sub_4b79d1ad, 100) > sub_4b79d1ad * sub_8b997b79) << 254) + (cycleReleasePct * sub_8b997b79 / 100 * block.timestamp - finishTime - sub_bcbc211b / cycle) - totalVestedTokens
                            if not transfer(address rg1, uint256 rg2), Mask(224, 0, stor51):
                                revert with 0, 32, 42, 0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                        else:
                            mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[292]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 371 len 22]
                        emit VestingTokenWithdrawn((0x5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c29 * (sub_4b79d1ad * sub_8b997b79) - mulmod(sub_8b997b79, sub_4b79d1ad, 100) / 4 or mulmod(sub_8b997b79, sub_4b79d1ad, -1) - (sub_4b79d1ad * sub_8b997b79) - (mulmod(sub_8b997b79, sub_4b79d1ad, -1) < sub_4b79d1ad * sub_8b997b79) - (mulmod(sub_8b997b79, sub_4b79d1ad, 100) > sub_4b79d1ad * sub_8b997b79) << 254) + (cycleReleasePct * sub_8b997b79 / 100 * block.timestamp - finishTime - sub_bcbc211b / cycle) - totalVestedTokens, block.timestamp);
                    else:
                        if totalVestedTokens > sub_8b997b79:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if sub_8b997b79 < totalVestedTokens:
                            revert with 0, 'SafeMath: addition overflow'
                        if sub_8b997b79 - totalVestedTokens <= 0:
                            revert with 0, 'Invalid withdrawable amount'
                        if sub_8b997b79 > sub_8b997b79:
                            revert with 0, 'Invalid withdrawable amount'
                        totalVestedTokens = sub_8b997b79
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x64416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                        if not ext_code.size(tokenAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[260 len 64] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor51), uint32(stor51), Mask(224, 32, sub_8b997b79 - totalVestedTokens) >> 32
                        mem[324 len 0] = 0
                        call tokenAddress with:
                           funct uint32(stor51)
                             gas gas_remaining wei
                            args Mask(224, 32, sub_8b997b79 - totalVestedTokens) << 224, mem[324 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with transfer(address rg1, uint256 rg2), Mask(224, 0, stor51), uint32(stor51), sub_8b997b79 - totalVestedTokens
                            if not transfer(address rg1, uint256 rg2), Mask(224, 0, stor51):
                                revert with 0, 32, 42, 0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                        else:
                            mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[292]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 371 len 22]
                        emit VestingTokenWithdrawn(sub_8b997b79 - totalVestedTokens, block.timestamp);
        else:
            require 100 > mulmod(sub_8b997b79, cycleReleasePct, -1) - (cycleReleasePct * sub_8b997b79) - (mulmod(sub_8b997b79, cycleReleasePct, -1) < cycleReleasePct * sub_8b997b79)
            if 0 == finishTime:
                if totalVestedTokens < totalVestedTokens:
                    revert with 0, 'SafeMath: addition overflow'
                revert with 0, 'Invalid withdrawable amount'
            if not sub_8b997b79:
                if totalVestedTokens < totalVestedTokens:
                    revert with 0, 'SafeMath: addition overflow'
                revert with 0, 'Invalid withdrawable amount'
            if not finishTime + sub_bcbc211b:
                if totalVestedTokens < totalVestedTokens:
                    revert with 0, 'SafeMath: addition overflow'
                revert with 0, 'Invalid withdrawable amount'
            if block.timestamp < finishTime + sub_bcbc211b:
                if totalVestedTokens < totalVestedTokens:
                    revert with 0, 'SafeMath: addition overflow'
                revert with 0, 'Invalid withdrawable amount'
            if not cycle:
                if totalVestedTokens < totalVestedTokens:
                    revert with 0, 'SafeMath: addition overflow'
                revert with 0, 'Invalid withdrawable amount'
            if block.timestamp < finishTime + sub_bcbc211b:
                if 0 <= sub_8b997b79:
                    if totalVestedTokens > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 < totalVestedTokens:
                        revert with 0, 'SafeMath: addition overflow'
                    if -totalVestedTokens <= 0:
                        revert with 0, 'Invalid withdrawable amount'
                    if 0 > sub_8b997b79:
                        revert with 0, 'Invalid withdrawable amount'
                    totalVestedTokens = 0
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x64416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                    if not ext_code.size(tokenAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[260 len 64] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor51), uint32(stor51), Mask(224, 32, -totalVestedTokens) >> 32
                    call tokenAddress with:
                       funct uint32(stor51)
                         gas gas_remaining wei
                        args Mask(224, 32, -totalVestedTokens) << 224, mem[324 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with transfer(address rg1, uint256 rg2), Mask(224, 0, stor51), uint32(stor51), -totalVestedTokens
                        if not transfer(address rg1, uint256 rg2), Mask(224, 0, stor51):
                            revert with 0, 32, 42, 0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                    else:
                        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[292]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 371 len 22]
                    emit VestingTokenWithdrawn(-totalVestedTokens, block.timestamp);
                else:
                    if totalVestedTokens > sub_8b997b79:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if sub_8b997b79 < totalVestedTokens:
                        revert with 0, 'SafeMath: addition overflow'
                    if sub_8b997b79 - totalVestedTokens <= 0:
                        revert with 0, 'Invalid withdrawable amount'
                    if sub_8b997b79 > sub_8b997b79:
                        revert with 0, 'Invalid withdrawable amount'
                    totalVestedTokens = sub_8b997b79
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x64416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                    if not ext_code.size(tokenAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[260 len 64] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor51), uint32(stor51), Mask(224, 32, sub_8b997b79 - totalVestedTokens) >> 32
                    call tokenAddress with:
                       funct uint32(stor51)
                         gas gas_remaining wei
                        args Mask(224, 32, sub_8b997b79 - totalVestedTokens) << 224, mem[324 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with transfer(address rg1, uint256 rg2), Mask(224, 0, stor51), uint32(stor51), sub_8b997b79 - totalVestedTokens
                        if not transfer(address rg1, uint256 rg2), Mask(224, 0, stor51):
                            revert with 0, 32, 42, 0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                    else:
                        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[292]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 371 len 22]
                    emit VestingTokenWithdrawn(sub_8b997b79 - totalVestedTokens, block.timestamp);
            else:
                if finishTime + sub_bcbc211b > block.timestamp:
                    revert with 0, 'SafeMath: subtraction overflow'
                if cycle <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require cycle
                if not block.timestamp - finishTime - sub_bcbc211b / cycle:
                    if 0x5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c29 * (sub_4b79d1ad * sub_8b997b79) - mulmod(sub_8b997b79, sub_4b79d1ad, 100) / 4 or mulmod(sub_8b997b79, sub_4b79d1ad, -1) - (sub_4b79d1ad * sub_8b997b79) - (mulmod(sub_8b997b79, sub_4b79d1ad, -1) < sub_4b79d1ad * sub_8b997b79) - (mulmod(sub_8b997b79, sub_4b79d1ad, 100) > sub_4b79d1ad * sub_8b997b79) << 254 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if 0x5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c29 * (sub_4b79d1ad * sub_8b997b79) - mulmod(sub_8b997b79, sub_4b79d1ad, 100) / 4 or mulmod(sub_8b997b79, sub_4b79d1ad, -1) - (sub_4b79d1ad * sub_8b997b79) - (mulmod(sub_8b997b79, sub_4b79d1ad, -1) < sub_4b79d1ad * sub_8b997b79) - (mulmod(sub_8b997b79, sub_4b79d1ad, 100) > sub_4b79d1ad * sub_8b997b79) << 254 > sub_8b997b79:
                        if totalVestedTokens > sub_8b997b79:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if sub_8b997b79 < totalVestedTokens:
                            revert with 0, 'SafeMath: addition overflow'
                        if sub_8b997b79 - totalVestedTokens <= 0:
                            revert with 0, 'Invalid withdrawable amount'
                        if sub_8b997b79 > sub_8b997b79:
                            revert with 0, 'Invalid withdrawable amount'
                        totalVestedTokens = sub_8b997b79
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x64416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                        if not ext_code.size(tokenAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[260 len 64] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor51), uint32(stor51), Mask(224, 32, sub_8b997b79 - totalVestedTokens) >> 32
                        call tokenAddress with:
                           funct uint32(stor51)
                             gas gas_remaining wei
                            args Mask(224, 32, sub_8b997b79 - totalVestedTokens) << 224, mem[324 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with transfer(address rg1, uint256 rg2), Mask(224, 0, stor51), uint32(stor51), sub_8b997b79 - totalVestedTokens
                            if not transfer(address rg1, uint256 rg2), Mask(224, 0, stor51):
                                revert with 0, 32, 42, 0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                        else:
                            mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[292]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 371 len 22]
                        emit VestingTokenWithdrawn(sub_8b997b79 - totalVestedTokens, block.timestamp);
                    else:
                        if totalVestedTokens > 0x5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c29 * (sub_4b79d1ad * sub_8b997b79) - mulmod(sub_8b997b79, sub_4b79d1ad, 100) / 4 or mulmod(sub_8b997b79, sub_4b79d1ad, -1) - (sub_4b79d1ad * sub_8b997b79) - (mulmod(sub_8b997b79, sub_4b79d1ad, -1) < sub_4b79d1ad * sub_8b997b79) - (mulmod(sub_8b997b79, sub_4b79d1ad, 100) > sub_4b79d1ad * sub_8b997b79) << 254:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 0x5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c29 * (sub_4b79d1ad * sub_8b997b79) - mulmod(sub_8b997b79, sub_4b79d1ad, 100) / 4 or mulmod(sub_8b997b79, sub_4b79d1ad, -1) - (sub_4b79d1ad * sub_8b997b79) - (mulmod(sub_8b997b79, sub_4b79d1ad, -1) < sub_4b79d1ad * sub_8b997b79) - (mulmod(sub_8b997b79, sub_4b79d1ad, 100) > sub_4b79d1ad * sub_8b997b79) << 254 < totalVestedTokens:
                            revert with 0, 'SafeMath: addition overflow'
                        if (0x5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c29 * (sub_4b79d1ad * sub_8b997b79) - mulmod(sub_8b997b79, sub_4b79d1ad, 100) / 4 or mulmod(sub_8b997b79, sub_4b79d1ad, -1) - (sub_4b79d1ad * sub_8b997b79) - (mulmod(sub_8b997b79, sub_4b79d1ad, -1) < sub_4b79d1ad * sub_8b997b79) - (mulmod(sub_8b997b79, sub_4b79d1ad, 100) > sub_4b79d1ad * sub_8b997b79) << 254) - totalVestedTokens <= 0:
                            revert with 0, 'Invalid withdrawable amount'
                        if 0x5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c29 * (sub_4b79d1ad * sub_8b997b79) - mulmod(sub_8b997b79, sub_4b79d1ad, 100) / 4 or mulmod(sub_8b997b79, sub_4b79d1ad, -1) - (sub_4b79d1ad * sub_8b997b79) - (mulmod(sub_8b997b79, sub_4b79d1ad, -1) < sub_4b79d1ad * sub_8b997b79) - (mulmod(sub_8b997b79, sub_4b79d1ad, 100) > sub_4b79d1ad * sub_8b997b79) << 254 > sub_8b997b79:
                            revert with 0, 'Invalid withdrawable amount'
                        totalVestedTokens = 0x5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c29 * (sub_4b79d1ad * sub_8b997b79) - mulmod(sub_8b997b79, sub_4b79d1ad, 100) / 4 or mulmod(sub_8b997b79, sub_4b79d1ad, -1) - (sub_4b79d1ad * sub_8b997b79) - (mulmod(sub_8b997b79, sub_4b79d1ad, -1) < sub_4b79d1ad * sub_8b997b79) - (mulmod(sub_8b997b79, sub_4b79d1ad, 100) > sub_4b79d1ad * sub_8b997b79) << 254
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x64416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                        if not ext_code.size(tokenAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[260 len 64] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor51), uint32(stor51), Mask(224, 32, (0x5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c29 * (sub_4b79d1ad * sub_8b997b79) - mulmod(sub_8b997b79, sub_4b79d1ad, 100) / 4 or mulmod(sub_8b997b79, sub_4b79d1ad, -1) - (sub_4b79d1ad * sub_8b997b79) - (mulmod(sub_8b997b79, sub_4b79d1ad, -1) < sub_4b79d1ad * sub_8b997b79) - (mulmod(sub_8b997b79, sub_4b79d1ad, 100) > sub_4b79d1ad * sub_8b997b79) << 254) - totalVestedTokens) >> 32
                        mem[324 len 0] = 0
                        call tokenAddress with:
                           funct uint32(stor51)
                             gas gas_remaining wei
                            args Mask(224, 32, (0x5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c29 * (sub_4b79d1ad * sub_8b997b79) - mulmod(sub_8b997b79, sub_4b79d1ad, 100) / 4 or mulmod(sub_8b997b79, sub_4b79d1ad, -1) - (sub_4b79d1ad * sub_8b997b79) - (mulmod(sub_8b997b79, sub_4b79d1ad, -1) < sub_4b79d1ad * sub_8b997b79) - (mulmod(sub_8b997b79, sub_4b79d1ad, 100) > sub_4b79d1ad * sub_8b997b79) << 254) - totalVestedTokens) << 224, mem[324 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with transfer(address rg1, uint256 rg2), 
                                            Mask(224, 0, stor51),
                                            uint32(stor51),
                                            (0x5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c29 * (sub_4b79d1ad * sub_8b997b79) - mulmod(sub_8b997b79, sub_4b79d1ad, 100) / 4 or mulmod(sub_8b997b79, sub_4b79d1ad, -1) - (sub_4b79d1ad * sub_8b997b79) - (mulmod(sub_8b997b79, sub_4b79d1ad, -1) < sub_4b79d1ad * sub_8b997b79) - (mulmod(sub_8b997b79, sub_4b79d1ad, 100) > sub_4b79d1ad * sub_8b997b79) << 254) - totalVestedTokens
                            if not transfer(address rg1, uint256 rg2), Mask(224, 0, stor51):
                                revert with 0, 32, 42, 0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                        else:
                            mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[292]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 371 len 22]
                        emit VestingTokenWithdrawn((0x5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c29 * (sub_4b79d1ad * sub_8b997b79) - mulmod(sub_8b997b79, sub_4b79d1ad, 100) / 4 or mulmod(sub_8b997b79, sub_4b79d1ad, -1) - (sub_4b79d1ad * sub_8b997b79) - (mulmod(sub_8b997b79, sub_4b79d1ad, -1) < sub_4b79d1ad * sub_8b997b79) - (mulmod(sub_8b997b79, sub_4b79d1ad, 100) > sub_4b79d1ad * sub_8b997b79) << 254) - totalVestedTokens, block.timestamp);
                else:
                    if 0x5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c29 * (cycleReleasePct * sub_8b997b79) - mulmod(sub_8b997b79, cycleReleasePct, 100) / 4 or mulmod(sub_8b997b79, cycleReleasePct, -1) - (cycleReleasePct * sub_8b997b79) - (mulmod(sub_8b997b79, cycleReleasePct, -1) < cycleReleasePct * sub_8b997b79) - (mulmod(sub_8b997b79, cycleReleasePct, 100) > cycleReleasePct * sub_8b997b79) << 254 * block.timestamp - finishTime - sub_bcbc211b / cycle / block.timestamp - finishTime - sub_bcbc211b / cycle != 0x5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c29 * (cycleReleasePct * sub_8b997b79) - mulmod(sub_8b997b79, cycleReleasePct, 100) / 4 or mulmod(sub_8b997b79, cycleReleasePct, -1) - (cycleReleasePct * sub_8b997b79) - (mulmod(sub_8b997b79, cycleReleasePct, -1) < cycleReleasePct * sub_8b997b79) - (mulmod(sub_8b997b79, cycleReleasePct, 100) > cycleReleasePct * sub_8b997b79) << 254:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if (0x5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c29 * (sub_4b79d1ad * sub_8b997b79) - mulmod(sub_8b997b79, sub_4b79d1ad, 100) / 4 or mulmod(sub_8b997b79, sub_4b79d1ad, -1) - (sub_4b79d1ad * sub_8b997b79) - (mulmod(sub_8b997b79, sub_4b79d1ad, -1) < sub_4b79d1ad * sub_8b997b79) - (mulmod(sub_8b997b79, sub_4b79d1ad, 100) > sub_4b79d1ad * sub_8b997b79) << 254) + (0x5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c29 * (cycleReleasePct * sub_8b997b79) - mulmod(sub_8b997b79, cycleReleasePct, 100) / 4 or mulmod(sub_8b997b79, cycleReleasePct, -1) - (cycleReleasePct * sub_8b997b79) - (mulmod(sub_8b997b79, cycleReleasePct, -1) < cycleReleasePct * sub_8b997b79) - (mulmod(sub_8b997b79, cycleReleasePct, 100) > cycleReleasePct * sub_8b997b79) << 254 * block.timestamp - finishTime - sub_bcbc211b / cycle) < 0x5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c29 * (cycleReleasePct * sub_8b997b79) - mulmod(sub_8b997b79, cycleReleasePct, 100) / 4 or mulmod(sub_8b997b79, cycleReleasePct, -1) - (cycleReleasePct * sub_8b997b79) - (mulmod(sub_8b997b79, cycleReleasePct, -1) < cycleReleasePct * sub_8b997b79) - (mulmod(sub_8b997b79, cycleReleasePct, 100) > cycleReleasePct * sub_8b997b79) << 254 * block.timestamp - finishTime - sub_bcbc211b / cycle:
                        revert with 0, 'SafeMath: addition overflow'
                    if (0x5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c29 * (sub_4b79d1ad * sub_8b997b79) - mulmod(sub_8b997b79, sub_4b79d1ad, 100) / 4 or mulmod(sub_8b997b79, sub_4b79d1ad, -1) - (sub_4b79d1ad * sub_8b997b79) - (mulmod(sub_8b997b79, sub_4b79d1ad, -1) < sub_4b79d1ad * sub_8b997b79) - (mulmod(sub_8b997b79, sub_4b79d1ad, 100) > sub_4b79d1ad * sub_8b997b79) << 254) + (0x5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c29 * (cycleReleasePct * sub_8b997b79) - mulmod(sub_8b997b79, cycleReleasePct, 100) / 4 or mulmod(sub_8b997b79, cycleReleasePct, -1) - (cycleReleasePct * sub_8b997b79) - (mulmod(sub_8b997b79, cycleReleasePct, -1) < cycleReleasePct * sub_8b997b79) - (mulmod(sub_8b997b79, cycleReleasePct, 100) > cycleReleasePct * sub_8b997b79) << 254 * block.timestamp - finishTime - sub_bcbc211b / cycle) <= sub_8b997b79:
                        if totalVestedTokens > (0x5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c29 * (sub_4b79d1ad * sub_8b997b79) - mulmod(sub_8b997b79, sub_4b79d1ad, 100) / 4 or mulmod(sub_8b997b79, sub_4b79d1ad, -1) - (sub_4b79d1ad * sub_8b997b79) - (mulmod(sub_8b997b79, sub_4b79d1ad, -1) < sub_4b79d1ad * sub_8b997b79) - (mulmod(sub_8b997b79, sub_4b79d1ad, 100) > sub_4b79d1ad * sub_8b997b79) << 254) + (0x5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c29 * (cycleReleasePct * sub_8b997b79) - mulmod(sub_8b997b79, cycleReleasePct, 100) / 4 or mulmod(sub_8b997b79, cycleReleasePct, -1) - (cycleReleasePct * sub_8b997b79) - (mulmod(sub_8b997b79, cycleReleasePct, -1) < cycleReleasePct * sub_8b997b79) - (mulmod(sub_8b997b79, cycleReleasePct, 100) > cycleReleasePct * sub_8b997b79) << 254 * block.timestamp - finishTime - sub_bcbc211b / cycle):
                            revert with 0, 'SafeMath: subtraction overflow'
                        if (0x5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c29 * (sub_4b79d1ad * sub_8b997b79) - mulmod(sub_8b997b79, sub_4b79d1ad, 100) / 4 or mulmod(sub_8b997b79, sub_4b79d1ad, -1) - (sub_4b79d1ad * sub_8b997b79) - (mulmod(sub_8b997b79, sub_4b79d1ad, -1) < sub_4b79d1ad * sub_8b997b79) - (mulmod(sub_8b997b79, sub_4b79d1ad, 100) > sub_4b79d1ad * sub_8b997b79) << 254) + (0x5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c29 * (cycleReleasePct * sub_8b997b79) - mulmod(sub_8b997b79, cycleReleasePct, 100) / 4 or mulmod(sub_8b997b79, cycleReleasePct, -1) - (cycleReleasePct * sub_8b997b79) - (mulmod(sub_8b997b79, cycleReleasePct, -1) < cycleReleasePct * sub_8b997b79) - (mulmod(sub_8b997b79, cycleReleasePct, 100) > cycleReleasePct * sub_8b997b79) << 254 * block.timestamp - finishTime - sub_bcbc211b / cycle) < totalVestedTokens:
                            revert with 0, 'SafeMath: addition overflow'
                        if (0x5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c29 * (sub_4b79d1ad * sub_8b997b79) - mulmod(sub_8b997b79, sub_4b79d1ad, 100) / 4 or mulmod(sub_8b997b79, sub_4b79d1ad, -1) - (sub_4b79d1ad * sub_8b997b79) - (mulmod(sub_8b997b79, sub_4b79d1ad, -1) < sub_4b79d1ad * sub_8b997b79) - (mulmod(sub_8b997b79, sub_4b79d1ad, 100) > sub_4b79d1ad * sub_8b997b79) << 254) + (0x5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c29 * (cycleReleasePct * sub_8b997b79) - mulmod(sub_8b997b79, cycleReleasePct, 100) / 4 or mulmod(sub_8b997b79, cycleReleasePct, -1) - (cycleReleasePct * sub_8b997b79) - (mulmod(sub_8b997b79, cycleReleasePct, -1) < cycleReleasePct * sub_8b997b79) - (mulmod(sub_8b997b79, cycleReleasePct, 100) > cycleReleasePct * sub_8b997b79) << 254 * block.timestamp - finishTime - sub_bcbc211b / cycle) - totalVestedTokens <= 0:
                            revert with 0, 'Invalid withdrawable amount'
                        if (0x5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c29 * (sub_4b79d1ad * sub_8b997b79) - mulmod(sub_8b997b79, sub_4b79d1ad, 100) / 4 or mulmod(sub_8b997b79, sub_4b79d1ad, -1) - (sub_4b79d1ad * sub_8b997b79) - (mulmod(sub_8b997b79, sub_4b79d1ad, -1) < sub_4b79d1ad * sub_8b997b79) - (mulmod(sub_8b997b79, sub_4b79d1ad, 100) > sub_4b79d1ad * sub_8b997b79) << 254) + (0x5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c29 * (cycleReleasePct * sub_8b997b79) - mulmod(sub_8b997b79, cycleReleasePct, 100) / 4 or mulmod(sub_8b997b79, cycleReleasePct, -1) - (cycleReleasePct * sub_8b997b79) - (mulmod(sub_8b997b79, cycleReleasePct, -1) < cycleReleasePct * sub_8b997b79) - (mulmod(sub_8b997b79, cycleReleasePct, 100) > cycleReleasePct * sub_8b997b79) << 254 * block.timestamp - finishTime - sub_bcbc211b / cycle) > sub_8b997b79:
                            revert with 0, 'Invalid withdrawable amount'
                        totalVestedTokens = (0x5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c29 * (sub_4b79d1ad * sub_8b997b79) - mulmod(sub_8b997b79, sub_4b79d1ad, 100) / 4 or mulmod(sub_8b997b79, sub_4b79d1ad, -1) - (sub_4b79d1ad * sub_8b997b79) - (mulmod(sub_8b997b79, sub_4b79d1ad, -1) < sub_4b79d1ad * sub_8b997b79) - (mulmod(sub_8b997b79, sub_4b79d1ad, 100) > sub_4b79d1ad * sub_8b997b79) << 254) + (0x5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c29 * (cycleReleasePct * sub_8b997b79) - mulmod(sub_8b997b79, cycleReleasePct, 100) / 4 or mulmod(sub_8b997b79, cycleReleasePct, -1) - (cycleReleasePct * sub_8b997b79) - (mulmod(sub_8b997b79, cycleReleasePct, -1) < cycleReleasePct * sub_8b997b79) - (mulmod(sub_8b997b79, cycleReleasePct, 100) > cycleReleasePct * sub_8b997b79) << 254 * block.timestamp - finishTime - sub_bcbc211b / cycle)
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x64416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                        if not ext_code.size(tokenAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[260 len 64] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor51), uint32(stor51), Mask(224, 32, (0x5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c29 * (sub_4b79d1ad * sub_8b997b79) - mulmod(sub_8b997b79, sub_4b79d1ad, 100) / 4 or mulmod(sub_8b997b79, sub_4b79d1ad, -1) - (sub_4b79d1ad * sub_8b997b79) - (mulmod(sub_8b997b79, sub_4b79d1ad, -1) < sub_4b79d1ad * sub_8b997b79) - (mulmod(sub_8b997b79, sub_4b79d1ad, 100) > sub_4b79d1ad * sub_8b997b79) << 254) + (0x5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c29 * (cycleReleasePct * sub_8b997b79) - mulmod(sub_8b997b79, cycleReleasePct, 100) / 4 or mulmod(sub_8b997b79, cycleReleasePct, -1) - (cycleReleasePct * sub_8b997b79) - (mulmod(sub_8b997b79, cycleReleasePct, -1) < cycleReleasePct * sub_8b997b79) - (mulmod(sub_8b997b79, cycleReleasePct, 100) > cycleReleasePct * sub_8b997b79) << 254 * block.timestamp - finishTime - sub_bcbc211b / cycle) - totalVestedTokens) >> 32
                        mem[324 len 0] = 0
                        call tokenAddress with:
                           funct uint32(stor51)
                             gas gas_remaining wei
                            args Mask(224, 32, (0x5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c29 * (sub_4b79d1ad * sub_8b997b79) - mulmod(sub_8b997b79, sub_4b79d1ad, 100) / 4 or mulmod(sub_8b997b79, sub_4b79d1ad, -1) - (sub_4b79d1ad * sub_8b997b79) - (mulmod(sub_8b997b79, sub_4b79d1ad, -1) < sub_4b79d1ad * sub_8b997b79) - (mulmod(sub_8b997b79, sub_4b79d1ad, 100) > sub_4b79d1ad * sub_8b997b79) << 254) + (0x5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c29 * (cycleReleasePct * sub_8b997b79) - mulmod(sub_8b997b79, cycleReleasePct, 100) / 4 or mulmod(sub_8b997b79, cycleReleasePct, -1) - (cycleReleasePct * sub_8b997b79) - (mulmod(sub_8b997b79, cycleReleasePct, -1) < cycleReleasePct * sub_8b997b79) - (mulmod(sub_8b997b79, cycleReleasePct, 100) > cycleReleasePct * sub_8b997b79) << 254 * block.timestamp - finishTime - sub_bcbc211b / cycle) - totalVestedTokens) << 224, mem[324 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with transfer(address rg1, uint256 rg2), 
                                            Mask(224, 0, stor51),
                                            uint32(stor51),
                                            (0x5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c29 * (sub_4b79d1ad * sub_8b997b79) - mulmod(sub_8b997b79, sub_4b79d1ad, 100) / 4 or mulmod(sub_8b997b79, sub_4b79d1ad, -1) - (sub_4b79d1ad * sub_8b997b79) - (mulmod(sub_8b997b79, sub_4b79d1ad, -1) < sub_4b79d1ad * sub_8b997b79) - (mulmod(sub_8b997b79, sub_4b79d1ad, 100) > sub_4b79d1ad * sub_8b997b79) << 254) + (0x5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c29 * (cycleReleasePct * sub_8b997b79) - mulmod(sub_8b997b79, cycleReleasePct, 100) / 4 or mulmod(sub_8b997b79, cycleReleasePct, -1) - (cycleReleasePct * sub_8b997b79) - (mulmod(sub_8b997b79, cycleReleasePct, -1) < cycleReleasePct * sub_8b997b79) - (mulmod(sub_8b997b79, cycleReleasePct, 100) > cycleReleasePct * sub_8b997b79) << 254 * block.timestamp - finishTime - sub_bcbc211b / cycle) - totalVestedTokens
                            if not transfer(address rg1, uint256 rg2), Mask(224, 0, stor51):
                                revert with 0, 32, 42, 0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                        else:
                            mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[292]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 371 len 22]
                        emit VestingTokenWithdrawn((0x5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c29 * (sub_4b79d1ad * sub_8b997b79) - mulmod(sub_8b997b79, sub_4b79d1ad, 100) / 4 or mulmod(sub_8b997b79, sub_4b79d1ad, -1) - (sub_4b79d1ad * sub_8b997b79) - (mulmod(sub_8b997b79, sub_4b79d1ad, -1) < sub_4b79d1ad * sub_8b997b79) - (mulmod(sub_8b997b79, sub_4b79d1ad, 100) > sub_4b79d1ad * sub_8b997b79) << 254) + (0x5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c29 * (cycleReleasePct * sub_8b997b79) - mulmod(sub_8b997b79, cycleReleasePct, 100) / 4 or mulmod(sub_8b997b79, cycleReleasePct, -1) - (cycleReleasePct * sub_8b997b79) - (mulmod(sub_8b997b79, cycleReleasePct, -1) < cycleReleasePct * sub_8b997b79) - (mulmod(sub_8b997b79, cycleReleasePct, 100) > cycleReleasePct * sub_8b997b79) << 254 * block.timestamp - finishTime - sub_bcbc211b / cycle) - totalVestedTokens, block.timestamp);
                    else:
                        if totalVestedTokens > sub_8b997b79:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if sub_8b997b79 < totalVestedTokens:
                            revert with 0, 'SafeMath: addition overflow'
                        if sub_8b997b79 - totalVestedTokens <= 0:
                            revert with 0, 'Invalid withdrawable amount'
                        if sub_8b997b79 > sub_8b997b79:
                            revert with 0, 'Invalid withdrawable amount'
                        totalVestedTokens = sub_8b997b79
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x64416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                        if not ext_code.size(tokenAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[260 len 64] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor51), uint32(stor51), Mask(224, 32, sub_8b997b79 - totalVestedTokens) >> 32
                        mem[324 len 0] = 0
                        call tokenAddress with:
                           funct uint32(stor51)
                             gas gas_remaining wei
                            args Mask(224, 32, sub_8b997b79 - totalVestedTokens) << 224, mem[324 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with transfer(address rg1, uint256 rg2), Mask(224, 0, stor51), uint32(stor51), sub_8b997b79 - totalVestedTokens
                            if not transfer(address rg1, uint256 rg2), Mask(224, 0, stor51):
                                revert with 0, 32, 42, 0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                        else:
                            mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[292]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 371 len 22]
                        emit VestingTokenWithdrawn(sub_8b997b79 - totalVestedTokens, block.timestamp);
}



}
