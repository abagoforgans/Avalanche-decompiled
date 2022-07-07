contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - sub_480738ad(?)
#  - cashoutAll()
#  - transfer(address arg1, uint256 arg2)
#  - sub_c82b84bb(?)
#  - _fallback()
#
const name = '', 0

const decimals = 18

const symbol = '', 0


address owner;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
address nodeRewardManagementAddress;
address uniswapV2RouterAddress;
address uniswapV2PairAddress;
address deadWalletAddress;
uint256 rewardsFee;
uint256 liquidityPoolFee;
uint256 devFee;
uint256 totalFees;
uint256 buyFee;
uint256 sellFee;
uint256 marketingFee;
uint256 sub_4d005dcd;
uint256 sub_fa2e1249;
uint256 sub_839400f0;
uint256 sub_3db9ca35;
address uniV2RouterAddress;
address stor20;
address stor21;
address marketingPoolAddress;
address distributionPoolAddress;
address devPoolAddress;
address autoLiquidityReceiverAddress;
uint256 cashoutFee;
mapping of uint8 stor27;
uint16 stor28;
uint256 stor28; offset 16
uint256 startTime;
uint256 interval;
mapping of uint8 stor31;
mapping of uint8 stor32;
mapping of uint256 sub_6d29ab70;
mapping of uint256 sub_6d79210f;

function totalFees() {
    return totalFees
}

function uniswapV2Router() {
    return uniswapV2RouterAddress
}

function totalSupply() {
    return totalSupply
}

function _isBlacklisted(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor31[arg1])
}

function sellFee() {
    return sellFee
}

function rewardsFee() {
    return rewardsFee
}

function sub_3db9ca35(?) {
    return sub_3db9ca35
}

function buyFee() {
    return buyFee
}

function uniswapV2Pair() {
    return uniswapV2PairAddress
}

function sub_4d005dcd(?) {
    return sub_4d005dcd
}

function liquidityPoolFee() {
    return liquidityPoolFee
}

function devFee() {
    return devFee
}

function nodeRewardManagement() {
    return nodeRewardManagementAddress
}

function marketingFee() {
    return marketingFee
}

function sub_6d29ab70(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_6d29ab70[arg1]
}

function sub_6d79210f(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_6d79210f[arg1]
}

function cashoutFee() {
    return cashoutFee
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function startTime() {
    return startTime
}

function sub_839400f0(?) {
    return sub_839400f0
}

function deadWallet() {
    return deadWalletAddress
}

function getOwner() {
    return owner
}

function owner() {
    return owner
}

function interval() {
    return interval
}

function uniV2Router() {
    return uniV2RouterAddress
}

function devPool() {
    return devPoolAddress
}

function automatedMarketMakerPairs(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor32[arg1])
}

function marketingPool() {
    return marketingPoolAddress
}

function distributionPool() {
    return distributionPoolAddress
}

function autoLiquidityReceiver() {
    return autoLiquidityReceiverAddress
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function sub_fa2e1249(?) {
    return sub_fa2e1249
}

function updateInterval(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    interval = arg1
}

function sub_454b0cd0(?) {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    sub_839400f0 = arg1
    sub_3db9ca35 = arg2
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'OWN'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function shouldTakeFee(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return not bool(stor27[address(arg1)])
}

function approveMax(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    allowance[msg.sender][address(arg1)] = -1
    emit Approval(-1, msg.sender, arg1);
    return 1
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function blacklistMalicious(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require msg.sender == owner
    stor31[address(arg1)] = uint8(arg2)
}

function sub_2e9d1d49(?) {
    require calldata.size - 4 >= 64
    require arg1 == bool(arg1)
    require arg2 == bool(arg2)
    require msg.sender == owner
    uint16(stor28.field_0) = uint16(bool(arg1))
    Mask(240, 0, stor28.field_16) = 0
}

function sub_901da89e(?) {
    require msg.sender == owner
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'OWN'
    if not arg1:
        revert with 0, 'OWN'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function publiDistriRewards() {
    require ext_code.size(nodeRewardManagementAddress)
    call nodeRewardManagementAddress.0x88fe6553 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
}

function sub_f9c9fdf5(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require msg.sender == owner
    devPoolAddress = address(arg1)
    distributionPoolAddress = address(arg2)
    marketingPoolAddress = address(arg3)
}

function getGasDistri() {
    require ext_code.size(nodeRewardManagementAddress)
    staticcall nodeRewardManagementAddress.0xdec14726 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function getDistriCount() {
    require ext_code.size(nodeRewardManagementAddress)
    staticcall nodeRewardManagementAddress.0xfb10d6fb with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function getTotalRewardStaked() {
    require ext_code.size(nodeRewardManagementAddress)
    staticcall nodeRewardManagementAddress.0x8a327eaa with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function getTotalNodesCreated() {
    require ext_code.size(nodeRewardManagementAddress)
    staticcall nodeRewardManagementAddress.0xb8527aef with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_c1f96b3b(?) {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    require ext_code.size(nodeRewardManagementAddress)
    call nodeRewardManagementAddress.0xea55e24e with:
         gas gas_remaining wei
        args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function changeGasDistri(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require ext_code.size(nodeRewardManagementAddress)
    call nodeRewardManagementAddress.0xef9bb988 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function changeAutoDistri(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == owner
    require ext_code.size(nodeRewardManagementAddress)
    call nodeRewardManagementAddress.0xdab0882a with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_a52a8678(?) {
    require calldata.size - 4 >= 32
    require arg1 == uint8(arg1)
    require msg.sender == owner
    require ext_code.size(nodeRewardManagementAddress)
    call nodeRewardManagementAddress.0x4e09a5f6 with:
         gas gas_remaining wei
        args uint8(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_baf8879e(?) {
    require calldata.size - 4 >= 32
    require arg1 == uint8(arg1)
    require msg.sender == owner
    require ext_code.size(nodeRewardManagementAddress)
    call nodeRewardManagementAddress.0x58e1cd45 with:
         gas gas_remaining wei
        args uint8(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function getCirculatingSupply() {
    if balanceOf[stor20] > totalSupply:
        revert with 0, '', 0
    if totalSupply < balanceOf[stor20]:
        revert with 0, 17
    if balanceOf[stor21] > totalSupply - balanceOf[stor20]:
        revert with 0, '', 0
    if totalSupply - balanceOf[stor20] < balanceOf[stor21]:
        revert with 0, 17
    return (totalSupply - balanceOf[stor20] - balanceOf[stor21])
}

function getAutoDistri() {
    require ext_code.size(nodeRewardManagementAddress)
    staticcall nodeRewardManagementAddress.0x85c44d9d with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    return bool(ext_call.return_data[0])
}

function sub_9922b4c9(?) {
    require calldata.size - 4 >= 224
    require arg1 == uint8(arg1)
    require msg.sender == owner
    require ext_code.size(nodeRewardManagementAddress)
    call nodeRewardManagementAddress.0x9867ae29 with:
         gas gas_remaining wei
        args 0, 0, arg2, arg3, arg4, arg5, arg6, arg7
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function distributeRewards() {
    require msg.sender == owner
    require ext_code.size(nodeRewardManagementAddress)
    call nodeRewardManagementAddress.0x88fe6553 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    return ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64]
}

function getNodeNumberOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(nodeRewardManagementAddress)
    staticcall nodeRewardManagementAddress.0x4491a7e4 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_ada1a6a8(?) {
    require calldata.size - 4 >= 32
    require arg1 == uint8(arg1)
    require ext_code.size(nodeRewardManagementAddress)
    staticcall nodeRewardManagementAddress.0x9d3c20ba with:
            gas gas_remaining wei
           args msg.sender, uint8(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_4d2e5119(?) {
    require calldata.size - 4 >= 32
    require arg1 == uint8(arg1)
    require ext_code.size(nodeRewardManagementAddress)
    staticcall nodeRewardManagementAddress.0x3add38de with:
            gas gas_remaining wei
           args arg1 << 248, balanceOf[address(msg.sender)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function getRewardAmountOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'OWN'
    require ext_code.size(nodeRewardManagementAddress)
    staticcall nodeRewardManagementAddress.0x619a635e with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_149d5660(?) {
    require ext_code.size(nodeRewardManagementAddress)
    staticcall nodeRewardManagementAddress.0x7c942fa6 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require 191 < return_data.size + 160
    if not bool(ceil32(return_data.size) + 224 <= test266151307()):
        revert with 0, 65
    require 64 <= return_data.size
    return ext_call.return_data[0 len 64]
}

function sub_466f6311(?) {
    if balanceOf[address(msg.sender)] > !sub_6d29ab70[msg.sender]:
        revert with 0, 17
    require ext_code.size(nodeRewardManagementAddress)
    staticcall nodeRewardManagementAddress.0x6591f30a with:
            gas gas_remaining wei
           args msg.sender, balanceOf[address(msg.sender)] + sub_6d29ab70[msg.sender]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function updateFees(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256 arg7) {
    require calldata.size - 4 >= 224
    require msg.sender == owner
    rewardsFee = arg3
    liquidityPoolFee = arg1
    devFee = arg2
    cashoutFee = arg4
    if arg3 > !arg1:
        revert with 0, 17
    if arg3 + arg1 < arg3:
        revert with 0, 'AOF'
    if arg3 + arg1 > !arg2:
        revert with 0, 17
    if arg2 < 0:
        revert with 0, 'AOF'
    totalFees = arg3 + arg1 + arg2
    buyFee = arg6
    sellFee = arg7
    marketingFee = arg5
    if liquidityPoolFee > !arg5:
        revert with 0, 17
    if liquidityPoolFee + arg5 < liquidityPoolFee:
        revert with 0, 'AOF'
    sub_4d005dcd = liquidityPoolFee + arg5
}

function getRewardAmount() {
    if not msg.sender:
        revert with 0, 'S0'
    require ext_code.size(nodeRewardManagementAddress)
    staticcall nodeRewardManagementAddress.0x41ac82b0 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, '0N'
    require ext_code.size(nodeRewardManagementAddress)
    staticcall nodeRewardManagementAddress.0x619a635e with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function types() {
    mem[96] = 0xb2e853e300000000000000000000000000000000000000000000000000000000
    require ext_code.size(nodeRewardManagementAddress)
    staticcall nodeRewardManagementAddress.0xb2e853e3 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _4 = mem[96]
    require mem[96] <= test266151307()
    require return_data.size + 96 > mem[96] + 127
    _5 = mem[mem[96] + 96]
    if mem[mem[96] + 96] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[mem[96] + 96]) + 1 < 0 or ceil32(return_data.size) + ceil32(32 * mem[mem[96] + 96]) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[96] + 96]) + 97
    mem[ceil32(return_data.size) + 96] = _5
    require _4 + (32 * _5) + 32 <= return_data.size
    s = _4 + 128
    t = ceil32(return_data.size) + 128
    idx = 0
    while idx < _5:
        require mem[s] == mem[s + 31 len 1]
        mem[t] = mem[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    _13 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = _5
    idx = 0
    s = mem[64] + 64
    t = ceil32(return_data.size) + 128
    while idx < _5:
        mem[s] = mem[t + 31 len 1]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len _13 + (32 * _5) + -mem[64] + 64
}

function sub_24efe66a(?) {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(32 * ('cd', 4).length) + 97
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] <= test266151307()
        require cd[4] + cd[s] + 67 < calldata.size
        if cd[(cd[4] + cd[s] + 36)] > test266151307():
            revert with 0, 65
        _18 = mem[64]
        if mem[64] + ceil32(32 * cd[(cd[4] + cd[s] + 36)]) + 1 < mem[64] or mem[64] + ceil32(32 * cd[(cd[4] + cd[s] + 36)]) + 1 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + ceil32(32 * cd[(cd[4] + cd[s] + 36)]) + 1
        mem[_18] = cd[(cd[4] + cd[s] + 36)]
        require cd[4] + cd[s] + (32 * cd[(cd[4] + cd[s] + 36)]) + 68 <= calldata.size
        u = cd[4] + cd[s] + 68
        v = _18 + 32
        w = 0
        while w < cd[(cd[4] + cd[s] + 36)]:
            require cd[u] == uint8(cd[u])
            mem[v] = cd[u]
            u = u + 32
            v = v + 32
            w = w + 1
            continue 
        mem[t] = _18
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    _19 = mem[64]
    if mem[64] + ceil32(32 * ('cd', 36).length) + 1 < mem[64] or mem[64] + ceil32(32 * ('cd', 36).length) + 1 > test266151307():
        revert with 0, 65
    mem[64] = mem[64] + ceil32(32 * ('cd', 36).length) + 1
    mem[_19] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = _19 + 32
    while idx < ('cd', 36).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require msg.sender == owner
    require mem[96] == ('cd', 36).length
    idx = 0
    while idx < ('cd', 36).length:
        if idx < mem[96]:
            if var52003 >= mem[mem[(32 * idx) + 128]]:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            if idx < ('cd', 36).length:
                if idx < mem[96]:
                    _110 = mem[(32 * idx) + 128]
                    _111 = mem[mem[(32 * idx) + 128]]
                    t = mem[(32 * idx) + _19 + 32]
                    s = var56005
                    while s < _111:
                        _112 = mem[(32 * s) + _110 + 32]
                        mem[mem[64]] = 0x37696eec00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = address(t)
                        mem[mem[64] + 36] = uint8(_112)
                        require ext_code.size(nodeRewardManagementAddress)
                        call nodeRewardManagementAddress.0x37696eec with:
                             gas gas_remaining wei
                            args address(t), uint8(_112)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if s == -1:
                            revert with 0, 17
                        if idx >= mem[96]:
                            revert with 0, 50
                        if s + 1 >= mem[mem[(32 * idx) + 128]]:
                            if idx == -1:
                                revert with 0, 17
                            _110 = mem[(32 * idx + 1) + 128]
                            _111 = mem[mem[(32 * idx + 1) + 128]]
                            idx = idx + 1
                            continue 
                        if idx >= mem[_19]:
                            revert with 0, 50
                        if idx >= mem[96]:
                            revert with 0, 50
                        _110 = mem[(32 * idx) + 128]
                        _111 = mem[mem[(32 * idx) + 128]]
                        t = mem[(32 * idx) + _19 + 32]
                        s = s + 1
                        continue 
        revert with 0, 50
}



}
