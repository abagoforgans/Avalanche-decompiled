contract main {




// =====================  Runtime code  =====================


#
#  - sub_0eef1c14(?)
#
address owner;
uint256 totalShares;
uint256 totalReleased;
mapping of uint256 shares;
mapping of uint256 released;
array of address payee;
mapping of uint256 totalReleased;
mapping of uint256 released;
uint256 stor8;
address nodeRewardManagementAddress;
address tokenAddress;
address routerAddress;
uint8 sub_9ee8e198; offset 160
uint8 sub_6ede0f71; offset 168
uint8 liquidityPoolFee; offset 176
uint8 sub_f81f21a3; offset 184
uint8 stor12; offset 192
uint8 stor12; offset 200
uint64 stor12; offset 200
address reservePoolAddress;
uint256 swapTokensAmount;
mapping of uint8 stor14;
mapping of uint8 stor15;

function reservePool() {
    return reservePoolAddress
}

function sub_1732cded(?) {
    return bool(uint8(stor12.field_192))
}

function totalShares() {
    return totalShares
}

function released(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return released[address(arg1)][address(arg2)]
}

function liquidityPoolFee() {
    return liquidityPoolFee
}

function swapTokensAmount() {
    return swapTokensAmount
}

function swapLiquify() {
    return bool(uint8(stor12.field_200))
}

function nodeRewardManagement() {
    return nodeRewardManagementAddress
}

function sub_6ede0f71(?) {
    return sub_6ede0f71
}

function payee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 >= payee.length:
        revert with 0, 50
    return payee[arg1]
}

function owner() {
    return owner
}

function released(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return released[address(arg1)]
}

function sub_9ee8e198(?) {
    return sub_9ee8e198
}

function isExcluded(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor15[address(arg1)])
}

function shares(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return shares[address(arg1)]
}

function totalReleased(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return totalReleased[address(arg1)]
}

function totalReleased() {
    return totalReleased
}

function sub_f81f21a3(?) {
    return sub_f81f21a3
}

function router() {
    return routerAddress
}

function token() {
    return tokenAddress
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_b2a9c0c0(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    swapTokensAmount = arg1
}

function sub_3807922b(?) {
    require calldata.size - 4 >= 32
    require arg1 == uint8(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_9ee8e198 = uint8(arg1)
}

function sub_862ba273(?) {
    require calldata.size - 4 >= 32
    require arg1 == uint8(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_f81f21a3 = uint8(arg1)
}

function sub_9c57520f(?) {
    require calldata.size - 4 >= 32
    require arg1 == uint8(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_6ede0f71 = uint8(arg1)
}

function sub_a0393ea2(?) {
    require calldata.size - 4 >= 32
    require arg1 == uint8(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_9ee8e198 = uint8(arg1)
}

function setLiquiditFee(uint8 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    liquidityPoolFee = arg1
}

function sub_09747716(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    tokenAddress = address(arg1)
}

function sub_5e16d371(?) {
    require calldata.size - 4 >= 32
    require arg1 == uint8(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    liquidityPoolFee = uint8(arg1)
}

function sub_153f7cd0(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    reservePoolAddress = address(arg1)
}

function sub_8918ccd8(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    nodeRewardManagementAddress = address(arg1)
}

function changeSwapLiquify(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor12.field_200 % 72057594037927936 = arg1 % 72057594037927936
}

function sub_7636794e(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor14[address(arg1)] = uint8(bool(arg2))
}

function sub_46140045(?) {
    require ext_code.size(nodeRewardManagementAddress)
    staticcall nodeRewardManagementAddress.0xcf33fce6 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function getTotalRewardStaked() {
    require ext_code.size(nodeRewardManagementAddress)
    staticcall nodeRewardManagementAddress.0xecaa6b19 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function getTotalNodesCreated() {
    require ext_code.size(nodeRewardManagementAddress)
    staticcall nodeRewardManagementAddress.totalNodesCreated() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function sub_97af68dd(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(nodeRewardManagementAddress)
    call nodeRewardManagementAddress.0x97af68dd with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_dace0767(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(nodeRewardManagementAddress)
    call nodeRewardManagementAddress.0xdace0767 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_a63a40db(?) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(nodeRewardManagementAddress)
    call nodeRewardManagementAddress.0xa63a40db with:
         gas gas_remaining wei
        args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_c73b8331(?) {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(nodeRewardManagementAddress)
    call nodeRewardManagementAddress.0xc73b8331 with:
         gas gas_remaining wei
        args arg1, arg2, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_862aad22(?) {
    require ext_code.size(nodeRewardManagementAddress)
    staticcall nodeRewardManagementAddress.0x862aad22 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    return bool(ext_call.return_data[0])
}

function sub_41bc0312(?) {
    require calldata.size - 4 >= 32
    require arg1 == uint8(arg1)
    require ext_code.size(nodeRewardManagementAddress)
    staticcall nodeRewardManagementAddress.0x7a56cdf2 with:
            gas gas_remaining wei
           args uint8(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_7f8786ca(?) {
    require calldata.size - 4 >= 32
    require arg1 == uint8(arg1)
    require ext_code.size(nodeRewardManagementAddress)
    staticcall nodeRewardManagementAddress.0x8047b37c with:
            gas gas_remaining wei
           args uint8(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function getNodeNumberOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(nodeRewardManagementAddress)
    staticcall nodeRewardManagementAddress.0xf74c9934 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function getRewardAmountOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(nodeRewardManagementAddress)
    staticcall nodeRewardManagementAddress.0xb96392c1 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_3bb25ad4(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if routerAddress == address(arg1):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TKN: The router already has that address'
    emit UpdateRouter(address(arg1), routerAddress);
    routerAddress = address(arg1)
}

function sub_4305235d(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require ext_code.size(nodeRewardManagementAddress)
    staticcall nodeRewardManagementAddress.0x4305235d with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_467fd438(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require ext_code.size(nodeRewardManagementAddress)
    staticcall nodeRewardManagementAddress.0x467fd438 with:
            gas gas_remaining wei
           args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_bf0027b6(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require ext_code.size(nodeRewardManagementAddress)
    staticcall nodeRewardManagementAddress.0xbf0027b6 with:
            gas gas_remaining wei
           args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_e929faf1(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require ext_code.size(nodeRewardManagementAddress)
    staticcall nodeRewardManagementAddress.0xe929faf1 with:
            gas gas_remaining wei
           args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_fed92f6a(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require ext_code.size(nodeRewardManagementAddress)
    staticcall nodeRewardManagementAddress.0xfed92f6a with:
            gas gas_remaining wei
           args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function exclude(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg2 == bool(stor15[address(arg1)]):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TKN: _account is already the value of 'excluded''
    stor15[address(arg1)] = uint8(arg2)
    emit 0x3192caa2: arg2, arg1
}

function isNodeOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(nodeRewardManagementAddress)
    staticcall nodeRewardManagementAddress.0x15f7aaab with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    return bool(ext_call.return_data[0])
}

function sub_3a18af1a(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require ext_code.size(nodeRewardManagementAddress)
    staticcall nodeRewardManagementAddress.0x3a18af1a with:
            gas gas_remaining wei
           args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    return bool(ext_call.return_data[0])
}

function getRewardAmount() {
    if not msg.sender:
        revert with 0, 'SENDER CAN'T BE ZERO'
    require ext_code.size(nodeRewardManagementAddress)
    staticcall nodeRewardManagementAddress.0x15f7aaab with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'NO NODE OWNER'
    require ext_code.size(nodeRewardManagementAddress)
    staticcall nodeRewardManagementAddress.0xb96392c1 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_4c40f265(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg2.length)) + 97 < 96 or ceil32(ceil32(arg2.length)) + 97 > test266151307():
        revert with 0, 65
    require arg2 + arg2.length + 36 <= calldata.size
    require arg3 == uint8(arg3)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg2.length <= 3:
        revert with 0, 'NODE CREATION: NAME SIZE INVALID'
    if arg2.length >= 32:
        revert with 0, 'NODE CREATION: NAME SIZE INVALID'
    if not address(arg1):
        revert with 0, 'NODE CREATION:  creation from the zero address'
    if stor14[address(arg1)]:
        revert with 0, 'NODE CREATION: Malicious address'
    require ext_code.size(nodeRewardManagementAddress)
    call nodeRewardManagementAddress.0x90219732 with:
         gas gas_remaining wei
        args address(arg1), 96, uint8(arg3), arg2.length, arg2[all], 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit 0x33b56213: ext_call.return_data[0], address(arg1), uint8(arg3)
}

function sub_5828583a(?) {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[36] == uint8(cd[36])
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[ceil32(32 * ('cd', 4).length) + 97] = 0xe89ca2f00000000000000000000000000000000000000000000000000000000
    mem[ceil32(32 * ('cd', 4).length) + 101] = 64
    idx = 0
    s = 128
    t = ceil32(32 * ('cd', 4).length) + 197
    while idx < ('cd', 4).length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(nodeRewardManagementAddress)
    call nodeRewardManagementAddress.0xe89ca2f with:
         gas gas_remaining wei
        args Array(len=('cd', 4).length, data=mem[ceil32(32 * ('cd', 4).length) + 197 len 32 * ('cd', 4).length]), uint8(cd[36])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_49c6bed9(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[ceil32(32 * ('cd', 4).length) + 97] = 0x49c6bed900000000000000000000000000000000000000000000000000000000
    mem[ceil32(32 * ('cd', 4).length) + 101] = 32
    mem[ceil32(32 * ('cd', 4).length) + 133] = ('cd', 4).length
    idx = 0
    s = 128
    t = ceil32(32 * ('cd', 4).length) + 165
    while idx < ('cd', 4).length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(nodeRewardManagementAddress)
    call nodeRewardManagementAddress.0x49c6bed9 with:
         gas gas_remaining wei
        args Array(len=('cd', 4).length, data=mem[ceil32(32 * ('cd', 4).length) + 165 len 32 * ('cd', 4).length])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_0488e267(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    mem[96] = 0x488e26700000000000000000000000000000000000000000000000000000000
    mem[100] = address(arg1)
    mem[132] = arg2
    require ext_code.size(nodeRewardManagementAddress)
    staticcall nodeRewardManagementAddress.0x488e267 with:
            gas gas_remaining wei
           args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _4 = mem[96 len 4], address(arg1) << 64
    require mem[96 len 4], address(arg1) << 64 <= test266151307()
    require return_data.size + 96 > mem[96 len 4], address(arg1) << 64 + 127
    _5 = mem[mem[96 len 4], address(arg1) << 64 + 96]
    if mem[mem[96 len 4], address(arg1) << 64 + 96] > test266151307():
        revert with 0, 65
    if ceil32(ceil32(mem[mem[96 len 4], address(arg1) << 64 + 96])) + 1 < 0 or ceil32(return_data.size) + ceil32(ceil32(mem[mem[96 len 4], address(arg1) << 64 + 96])) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(ceil32(mem[mem[96 len 4], address(arg1) << 64 + 96])) + 97
    mem[ceil32(return_data.size) + 96] = _5
    require _4 + _5 + 32 <= return_data.size
    mem[ceil32(return_data.size) + 128 len ceil32(_5)] = mem[_4 + 128 len ceil32(_5)]
    if ceil32(_5) > _5:
        mem[ceil32(return_data.size) + _5 + 128] = 0
    mem[mem[64]] = 32
    mem[mem[64] + 32] = _5
    mem[mem[64] + 64 len ceil32(_5)] = mem[ceil32(return_data.size) + 128 len ceil32(_5)]
    if ceil32(_5) > _5:
        mem[mem[64] + _5 + 64] = 0
    return Array(len=_5, data=mem[mem[64] + 64 len ceil32(_5)])
}

function sub_a3876124(?) {
    require calldata.size - 4 >= 32
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
        if mem[64] + ceil32(ceil32(cd[(cd[4] + cd[s] + 36)])) + 1 < mem[64] or mem[64] + ceil32(ceil32(cd[(cd[4] + cd[s] + 36)])) + 1 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + ceil32(ceil32(cd[(cd[4] + cd[s] + 36)])) + 1
        mem[_18] = cd[(cd[4] + cd[s] + 36)]
        require cd[4] + cd[s] + cd[(cd[4] + cd[s] + 36)] + 68 <= calldata.size
        mem[_18 + 32 len cd[(cd[4] + cd[s] + 36)]] = call.data[cd[4] + cd[s] + 68 len cd[(cd[4] + cd[s] + 36)]]
        mem[_18 + cd[(cd[4] + cd[s] + 36)] + 32] = 0
        mem[t] = _18
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    _11 = mem[64]
    mem[mem[64]] = 0xa387612400000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = 32
    _13 = mem[96]
    mem[mem[64] + 36] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 68
    u = mem[64] + (32 * mem[96]) + 68
    while idx < _13:
        mem[t] = u + -_11 - 68
        _20 = mem[s]
        _22 = mem[mem[s]]
        mem[u] = mem[mem[s]]
        v = 0
        while v < _22:
            mem[v + u + 32] = mem[v + _20 + 32]
            v = v + 32
            continue 
        if ceil32(_22) > _22:
            mem[u + _22 + 32] = 0
        idx = idx + 1
        s = s + 32
        t = t + 32
        u = ceil32(_22) + u + 32
        continue 
    require ext_code.size(nodeRewardManagementAddress)
    call nodeRewardManagementAddress.mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len u + -mem[64] - 4]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function release(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not shares[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'PaymentSplitter: account has no shares'
    if eth.balance(this.address) > !totalReleased:
        revert with 0, 17
    if eth.balance(this.address) + totalReleased and shares[address(arg1)] > -1 / eth.balance(this.address) + totalReleased:
        revert with 0, 17
    if not totalShares:
        revert with 0, 18
    if (eth.balance(this.address) * shares[address(arg1)]) + (totalReleased * shares[address(arg1)]) / totalShares < released[address(arg1)]:
        revert with 0, 17
    if not ((eth.balance(this.address) * shares[address(arg1)]) + (totalReleased * shares[address(arg1)]) / totalShares) - released[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'PaymentSplitter: account is not due payment'
    if released[address(arg1)] > !(((eth.balance(this.address) * shares[address(arg1)]) + (totalReleased * shares[address(arg1)]) / totalShares) - released[address(arg1)]):
        revert with 0, 17
    released[address(arg1)] = (eth.balance(this.address) * shares[address(arg1)]) + (totalReleased * shares[address(arg1)]) / totalShares
    if totalReleased > !(((eth.balance(this.address) * shares[address(arg1)]) + (totalReleased * shares[address(arg1)]) / totalShares) - released[address(arg1)]):
        revert with 0, 17
    totalReleased = totalReleased + ((eth.balance(this.address) * shares[address(arg1)]) + (totalReleased * shares[address(arg1)]) / totalShares) - released[address(arg1)]
    if eth.balance(this.address) < ((eth.balance(this.address) * shares[address(arg1)]) + (totalReleased * shares[address(arg1)]) / totalShares) - released[address(arg1)]:
        revert with 0, 'Address: insufficient balance'
    call arg1 with:
       value ((eth.balance(this.address) * shares[address(arg1)]) + (totalReleased * shares[address(arg1)]) / totalShares) - released[address(arg1)] wei
         gas gas_remaining wei
    if not return_data.size:
        if not ext_call.success:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'Address: unable to send value, recipient may have reverted'
    else:
        if not ext_call.success:
            revert with 0, 'Address: unable to send value, recipient may have reverted'
    ('bool', 'ext_call.success')
    emit PaymentReleased(address(arg1), ((eth.balance(this.address) * shares[address(arg1)]) + (totalReleased * shares[address(arg1)]) / totalShares) - released[address(arg1)]);
}

function release(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not shares[address(arg2)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'PaymentSplitter: account has no shares'
    mem[100] = this.address
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > !totalReleased[address(arg1)]:
        revert with 0, 17
    if ext_call.return_data[0] + totalReleased[address(arg1)] and shares[address(arg2)] > -1 / ext_call.return_data[0] + totalReleased[address(arg1)]:
        revert with 0, 17
    if not totalShares:
        revert with 0, 18
    if (ext_call.return_data[0] * shares[address(arg2)]) + (totalReleased[address(arg1)] * shares[address(arg2)]) / totalShares < released[address(arg1)][address(arg2)]:
        revert with 0, 17
    if not ((ext_call.return_data[0] * shares[address(arg2)]) + (totalReleased[address(arg1)] * shares[address(arg2)]) / totalShares) - released[address(arg1)][address(arg2)]:
        revert with 0, 'PaymentSplitter: account is not due payment'
    if released[address(arg1)][address(arg2)] > !(((ext_call.return_data[0] * shares[address(arg2)]) + (totalReleased[address(arg1)] * shares[address(arg2)]) / totalShares) - released[address(arg1)][address(arg2)]):
        revert with 0, 17
    released[address(arg1)][address(arg2)] = (ext_call.return_data[0] * shares[address(arg2)]) + (totalReleased[address(arg1)] * shares[address(arg2)]) / totalShares
    if totalReleased[address(arg1)] > !(((ext_call.return_data[0] * shares[address(arg2)]) + (totalReleased[address(arg1)] * shares[address(arg2)]) / totalShares) - released[address(arg1)][address(arg2)]):
        revert with 0, 17
    totalReleased[address(arg1)] = totalReleased[address(arg1)] + ((ext_call.return_data[0] * shares[address(arg2)]) + (totalReleased[address(arg1)] * shares[address(arg2)]) / totalShares) - released[address(arg1)][address(arg2)]
    mem[ceil32(return_data.size) + 132] = arg2
    mem[ceil32(return_data.size) + 164] = ((ext_call.return_data[0] * shares[address(arg2)]) + (totalReleased[address(arg1)] * shares[address(arg2)]) / totalShares) - released[address(arg1)][address(arg2)]
    mem[ceil32(return_data.size) + 96] = 68
    mem[ceil32(return_data.size) + 132 len 28] = address(arg2) << 64
    mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
    mem[ceil32(return_data.size) + 196] = 32
    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
    if not ext_code.size(arg1):
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), address(arg2) << 64, 0, ((ext_call.return_data[0] * shares[address(arg2)]) + (totalReleased[address(arg1)] * shares[address(arg2)]) / totalShares) - released[address(arg1)][address(arg2)], 0
    mem[ceil32(return_data.size) + 328] = 0
    call arg1 with:
       funct Mask(32, 224, unknown_0xa9059cbb(?????), address(arg2) << 64, 0, ((ext_call.return_data[0] * shares[address(arg2)]) + (totalReleased[address(arg1)] * shares[address(arg2)]) / totalShares) - released[address(arg1)][address(arg2)], 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, unknown_0xa9059cbb(?????), address(arg2) << 64, 0, ((ext_call.return_data[0] * shares[address(arg2)]) + (totalReleased[address(arg1)] * shares[address(arg2)]) / totalShares) - released[address(arg1)][address(arg2)], 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
            if not uint32(this.address), mem[132 len 28]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
            if not mem[ceil32(return_data.size) + 292]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    emit ERC20PaymentReleased(address(arg2), ((ext_call.return_data[0] * shares[address(arg2)]) + (totalReleased[address(arg1)] * shares[address(arg2)]) / totalShares) - released[address(arg1)][address(arg2)], arg1);
}

function cashoutAll() {
    if stor8 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor8 = 2
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'CSHT:  creation from the zero address'
    if stor14[address(msg.sender)]:
        revert with 0, 'CSHT: Malicious address'
    require ext_code.size(nodeRewardManagementAddress)
    staticcall nodeRewardManagementAddress.0xb96392c1 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'CSHT: You don't have enough reward to cash out'
    if not uint8(stor12.field_200):
        require ext_code.size(nodeRewardManagementAddress)
        call nodeRewardManagementAddress.0xfde38516 with:
             gas gas_remaining wei
            args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(tokenAddress)
        call tokenAddress.0x23b872dd with:
             gas gas_remaining wei
            args reservePoolAddress, msg.sender, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        emit 0x2f692895: block.timestamp, ext_call.return_data[0], msg.sender
    else:
        if not sub_f81f21a3:
            if ext_call.return_data[0] < 0:
                revert with 0, 17
            require ext_code.size(nodeRewardManagementAddress)
            call nodeRewardManagementAddress.0xfde38516 with:
                 gas gas_remaining wei
                args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(tokenAddress)
            call tokenAddress.0x23b872dd with:
                 gas gas_remaining wei
                args reservePoolAddress, msg.sender, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            emit 0x2f692895: block.timestamp, ext_call.return_data[0], msg.sender
        else:
            if ext_call.return_data[0] and sub_f81f21a3 > -1 / ext_call.return_data[0]:
                revert with 0, 17
            mem[ceil32(return_data.size) + 128] = tokenAddress
            require ext_code.size(routerAddress)
            staticcall routerAddress.0x73b295c2 with:
                    gas gas_remaining wei
            mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            mem[ceil32(return_data.size) + 160] = ext_call.return_data[12 len 20]
            mem[(2 * ceil32(return_data.size)) + 196] = routerAddress
            mem[(2 * ceil32(return_data.size)) + 228] = ext_call.return_data[0] * sub_f81f21a3 / 100
            require ext_code.size(tokenAddress)
            call tokenAddress.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args mem[(2 * ceil32(return_data.size)) + 196 len ceil32(return_data.size) + 64]
            mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            mem[(4 * ceil32(return_data.size)) + 192] = 0x762b156200000000000000000000000000000000000000000000000000000000
            mem[(4 * ceil32(return_data.size)) + 196] = ext_call.return_data[0] * sub_f81f21a3 / 100
            idx = 0
            s = ceil32(return_data.size) + 128
            t = (4 * ceil32(return_data.size)) + 388
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(routerAddress)
            call routerAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args ext_call.return_data[0] * sub_f81f21a3 / 100, 0, 160, address(this.address), block.timestamp, 2, mem[(4 * ceil32(return_data.size)) + 388 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if ext_call.return_data[0] < ext_call.return_data[0] * sub_f81f21a3 / 100:
                revert with 0, 17
            require ext_code.size(nodeRewardManagementAddress)
            call nodeRewardManagementAddress.0xfde38516 with:
                 gas gas_remaining wei
                args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(tokenAddress)
            call tokenAddress.0x23b872dd with:
                 gas gas_remaining wei
                args reservePoolAddress, msg.sender, ext_call.return_data[0] - (ext_call.return_data[0] * sub_f81f21a3 / 100)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            emit 0x2f692895: block.timestamp, ext_call.return_data[0] - (ext_call.return_data[0] * sub_f81f21a3 / 100), msg.sender
    stor8 = 1
}

function sub_d5818ae3(?) {
    require calldata.size - 4 >= 32
    if stor8 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor8 = 2
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'CSHT:  creation from the zero address'
    if stor14[address(msg.sender)]:
        revert with 0, 'CSHT: Malicious address'
    mem[132] = arg1
    require ext_code.size(nodeRewardManagementAddress)
    staticcall nodeRewardManagementAddress.0xb0e7dfc0 with:
            gas gas_remaining wei
           args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'CSHT: You don't have enough reward to cash out'
    if not uint8(stor12.field_200):
        require ext_code.size(nodeRewardManagementAddress)
        call nodeRewardManagementAddress.cashoutNodeReward(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args msg.sender, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(tokenAddress)
        call tokenAddress.0x23b872dd with:
             gas gas_remaining wei
            args reservePoolAddress, msg.sender, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        emit 0xc5651e1e: block.timestamp, ext_call.return_data[0], msg.sender
    else:
        if not sub_f81f21a3:
            if ext_call.return_data[0] < 0:
                revert with 0, 17
            require ext_code.size(nodeRewardManagementAddress)
            call nodeRewardManagementAddress.cashoutNodeReward(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args msg.sender, arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(tokenAddress)
            call tokenAddress.0x23b872dd with:
                 gas gas_remaining wei
                args reservePoolAddress, msg.sender, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            emit 0xc5651e1e: block.timestamp, ext_call.return_data[0], msg.sender
        else:
            if ext_call.return_data[0] and sub_f81f21a3 > -1 / ext_call.return_data[0]:
                revert with 0, 17
            mem[ceil32(return_data.size) + 128] = tokenAddress
            require ext_code.size(routerAddress)
            staticcall routerAddress.0x73b295c2 with:
                    gas gas_remaining wei
            mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            mem[ceil32(return_data.size) + 160] = ext_call.return_data[12 len 20]
            mem[(2 * ceil32(return_data.size)) + 196] = routerAddress
            mem[(2 * ceil32(return_data.size)) + 228] = ext_call.return_data[0] * sub_f81f21a3 / 100
            require ext_code.size(tokenAddress)
            call tokenAddress.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args mem[(2 * ceil32(return_data.size)) + 196 len ceil32(return_data.size) + 64]
            mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            mem[(4 * ceil32(return_data.size)) + 192] = 0x762b156200000000000000000000000000000000000000000000000000000000
            mem[(4 * ceil32(return_data.size)) + 196] = ext_call.return_data[0] * sub_f81f21a3 / 100
            idx = 0
            s = ceil32(return_data.size) + 128
            t = (4 * ceil32(return_data.size)) + 388
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(routerAddress)
            call routerAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args ext_call.return_data[0] * sub_f81f21a3 / 100, 0, 160, address(this.address), block.timestamp, 2, mem[(4 * ceil32(return_data.size)) + 388 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if ext_call.return_data[0] < ext_call.return_data[0] * sub_f81f21a3 / 100:
                revert with 0, 17
            require ext_code.size(nodeRewardManagementAddress)
            call nodeRewardManagementAddress.cashoutNodeReward(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args msg.sender, arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(tokenAddress)
            call tokenAddress.0x23b872dd with:
                 gas gas_remaining wei
                args reservePoolAddress, msg.sender, ext_call.return_data[0] - (ext_call.return_data[0] * sub_f81f21a3 / 100)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            emit 0xc5651e1e: block.timestamp, ext_call.return_data[0] - (ext_call.return_data[0] * sub_f81f21a3 / 100), msg.sender
    stor8 = 1
}

function cashoutReward(uint256 arg1) {
    require calldata.size - 4 >= 32
    if stor8 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor8 = 2
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'CSHT:  creation from the zero address'
    if stor14[address(msg.sender)]:
        revert with 0, 'CSHT: Malicious address'
    mem[132] = arg1
    require ext_code.size(nodeRewardManagementAddress)
    staticcall nodeRewardManagementAddress.0xfed92f6a with:
            gas gas_remaining wei
           args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'CSHT: You don't have enough reward to cash out'
    if not uint8(stor12.field_200):
        require ext_code.size(nodeRewardManagementAddress)
        call nodeRewardManagementAddress.cashoutNodeReward(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args msg.sender, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(tokenAddress)
        call tokenAddress.0x23b872dd with:
             gas gas_remaining wei
            args reservePoolAddress, msg.sender, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        emit 0xc5651e1e: block.timestamp, ext_call.return_data[0], msg.sender
    else:
        if not sub_f81f21a3:
            if ext_call.return_data[0] < 0:
                revert with 0, 17
            require ext_code.size(nodeRewardManagementAddress)
            call nodeRewardManagementAddress.cashoutNodeReward(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args msg.sender, arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(tokenAddress)
            call tokenAddress.0x23b872dd with:
                 gas gas_remaining wei
                args reservePoolAddress, msg.sender, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            emit 0xc5651e1e: block.timestamp, ext_call.return_data[0], msg.sender
        else:
            if ext_call.return_data[0] and sub_f81f21a3 > -1 / ext_call.return_data[0]:
                revert with 0, 17
            mem[ceil32(return_data.size) + 128] = tokenAddress
            require ext_code.size(routerAddress)
            staticcall routerAddress.0x73b295c2 with:
                    gas gas_remaining wei
            mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            mem[ceil32(return_data.size) + 160] = ext_call.return_data[12 len 20]
            mem[(2 * ceil32(return_data.size)) + 196] = routerAddress
            mem[(2 * ceil32(return_data.size)) + 228] = ext_call.return_data[0] * sub_f81f21a3 / 100
            require ext_code.size(tokenAddress)
            call tokenAddress.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args mem[(2 * ceil32(return_data.size)) + 196 len ceil32(return_data.size) + 64]
            mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            mem[(4 * ceil32(return_data.size)) + 192] = 0x762b156200000000000000000000000000000000000000000000000000000000
            mem[(4 * ceil32(return_data.size)) + 196] = ext_call.return_data[0] * sub_f81f21a3 / 100
            idx = 0
            s = ceil32(return_data.size) + 128
            t = (4 * ceil32(return_data.size)) + 388
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(routerAddress)
            call routerAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args ext_call.return_data[0] * sub_f81f21a3 / 100, 0, 160, address(this.address), block.timestamp, 2, mem[(4 * ceil32(return_data.size)) + 388 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if ext_call.return_data[0] < ext_call.return_data[0] * sub_f81f21a3 / 100:
                revert with 0, 17
            require ext_code.size(nodeRewardManagementAddress)
            call nodeRewardManagementAddress.cashoutNodeReward(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args msg.sender, arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(tokenAddress)
            call tokenAddress.0x23b872dd with:
                 gas gas_remaining wei
                args reservePoolAddress, msg.sender, ext_call.return_data[0] - (ext_call.return_data[0] * sub_f81f21a3 / 100)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            emit 0xc5651e1e: block.timestamp, ext_call.return_data[0] - (ext_call.return_data[0] * sub_f81f21a3 / 100), msg.sender
    stor8 = 1
}

function _fallback() payable {
    if calldata.size < 4:
        require not calldata.size
        emit PaymentReceived(msg.sender, msg.value);
    else:
        if unknown_0x7636794e(?????) <= uint32(call.func_hash) >> 224:
            if unknown_0xb7e225cb(?????) > uint32(call.func_hash) >> 224:
                if unknown_0x8da5cb5b(?????) > uint32(call.func_hash) >> 224:
                    if unknown_0x862aad22(?????) <= uint32(call.func_hash) >> 224:
                        if unknown_0x862aad22(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            require ext_code.size(nodeRewardManagementAddress)
                            staticcall nodeRewardManagementAddress.0x862aad22 with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            return bool(ext_call.return_data[0])
                        if unknown_0x862ba273(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            require calldata.size - 4 >= 32
                            require cd[4] == uint8(cd[4])
                            if owner != msg.sender:
                                revert with 0, 'Ownable: caller is not the owner'
                            sub_f81f21a3 = uint8(cd[4])
                        else:
                            if uint32(call.func_hash) >> 224 != unknown_0x8918ccd8(?????):
                                require unknown_0x8b83209b(?????) == uint32(call.func_hash) >> 224
                                require not msg.value
                                require calldata.size - 4 >= 32
                                if cd[4] >= payee.length:
                                    revert with 0, 50
                                return payee[cd[4]]
                            require not msg.value
                            require calldata.size - 4 >= 32
                            require cd[4] == address(cd[4])
                            if owner != msg.sender:
                                revert with 0, 'Ownable: caller is not the owner'
                            nodeRewardManagementAddress = address(cd[4])
                    if unknown_0x7636794e(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 64
                        require cd[4] == address(cd[4])
                        require cd[36] == bool(cd[36])
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        stor14[address(cd[4])] = uint8(bool(cd[36]))
                    if unknown_0x7647b90d(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 64
                        require cd[4] == address(cd[4])
                        require cd[36] == bool(cd[36])
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        if bool(cd[36]) == bool(stor15[address(cd[4])]):
                            revert with 0, 'TKN: _account is already the value of 'excluded''
                        stor15[address(cd[4])] = uint8(bool(cd[36]))
                        emit 0x3192caa2: bool(cd[36]), address(cd[4])
                    if uint32(call.func_hash) >> 224 != unknown_0x7f8786ca(?????):
                        require unknown_0x823349b3(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        require ext_code.size(nodeRewardManagementAddress)
                        staticcall nodeRewardManagementAddress.totalNodesCreated() with:
                                gas gas_remaining wei
                    else:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require cd[4] == uint8(cd[4])
                        require ext_code.size(nodeRewardManagementAddress)
                        staticcall nodeRewardManagementAddress.0x8047b37c with:
                                gas gas_remaining wei
                               args uint8(cd[4])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    return ext_call.return_data[0]
                if unknown_0x9ee8e198(?????) > uint32(call.func_hash) >> 224:
                    if unknown_0x8da5cb5b(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return owner
                    if unknown_0x97af68dd(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        require ext_code.size(nodeRewardManagementAddress)
                        call nodeRewardManagementAddress.0x97af68dd with:
                             gas gas_remaining wei
                            args cd[4]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if unknown_0x9852595c(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            require calldata.size - 4 >= 32
                            require cd[4] == address(cd[4])
                            return released[address(cd[4])]
                        require unknown_0x9c57520f(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require cd[4] == uint8(cd[4])
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        sub_6ede0f71 = uint8(cd[4])
                else:
                    if unknown_0x9ee8e198(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return sub_9ee8e198
                    if unknown_0xa0393ea2(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require cd[4] == uint8(cd[4])
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        sub_9ee8e198 = uint8(cd[4])
                    else:
                        if uint32(call.func_hash) >> 224 != unknown_0xa3876124(?????):
                            if uint32(call.func_hash) >> 224 != unknown_0xa63a40db(?????):
                                require unknown_0xb2a9c0c0(?????) == uint32(call.func_hash) >> 224
                                require not msg.value
                                require calldata.size - 4 >= 32
                                if owner != msg.sender:
                                    revert with 0, 'Ownable: caller is not the owner'
                                swapTokensAmount = cd[4]
                            else:
                                require not msg.value
                                require calldata.size - 4 >= 64
                                if owner != msg.sender:
                                    revert with 0, 'Ownable: caller is not the owner'
                                require ext_code.size(nodeRewardManagementAddress)
                                call nodeRewardManagementAddress.0xa63a40db with:
                                     gas gas_remaining wei
                                    args cd[4], cd[36]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require not msg.value
                            require calldata.size - 4 >= 32
                            require cd[4] <= test266151307()
                            require cd[4] + 35 < calldata.size
                            if ('cd', 4).length > test266151307():
                                revert with 0, 65
                            if ceil32(32 * ('cd', 4).length) + 129 < 128 or ceil32(32 * ('cd', 4).length) + 129 > test266151307():
                                revert with 0, 65
                            mem[64] = ceil32(32 * ('cd', 4).length) + 129
                            mem[128] = ('cd', 4).length
                            require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
                            idx = 0
                            s = cd[4] + 36
                            t = 160
                            while idx < ('cd', 4).length:
                                require cd[s] <= test266151307()
                                require cd[4] + cd[s] + 67 < calldata.size
                                if cd[(cd[4] + cd[s] + 36)] > test266151307():
                                    revert with 0, 65
                                _805 = mem[64]
                                if mem[64] + ceil32(ceil32(cd[(cd[4] + cd[s] + 36)])) + 1 < mem[64] or mem[64] + ceil32(ceil32(cd[(cd[4] + cd[s] + 36)])) + 1 > test266151307():
                                    revert with 0, 65
                                mem[64] = mem[64] + ceil32(ceil32(cd[(cd[4] + cd[s] + 36)])) + 1
                                mem[_805] = cd[(cd[4] + cd[s] + 36)]
                                require cd[4] + cd[s] + cd[(cd[4] + cd[s] + 36)] + 68 <= calldata.size
                                mem[_805 + 32 len cd[(cd[4] + cd[s] + 36)]] = call.data[cd[4] + cd[s] + 68 len cd[(cd[4] + cd[s] + 36)]]
                                mem[_805 + cd[(cd[4] + cd[s] + 36)] + 32] = 0
                                mem[t] = _805
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            if owner != msg.sender:
                                revert with 0, 'Ownable: caller is not the owner'
                            _763 = mem[64]
                            mem[mem[64]] = 0xa387612400000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            _775 = mem[128]
                            mem[mem[64] + 36] = mem[128]
                            idx = 0
                            s = 160
                            t = mem[64] + 68
                            u = mem[64] + (32 * _775) + 68
                            while idx < _775:
                                mem[t] = u + -_763 - 68
                                _1053 = mem[s]
                                _1055 = mem[mem[s]]
                                mem[u] = mem[mem[s]]
                                v = 0
                                while v < _1055:
                                    mem[v + u + 32] = mem[v + _1053 + 32]
                                    v = v + 32
                                    continue 
                                if ceil32(_1055) > _1055:
                                    mem[u + _1055 + 32] = 0
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                u = ceil32(_1055) + u + 32
                                continue 
                            require ext_code.size(nodeRewardManagementAddress)
                            call nodeRewardManagementAddress.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len u + -mem[64] - 4]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
            else:
                if unknown_0xdace0767(?????) <= uint32(call.func_hash) >> 224:
                    if unknown_0xf74c9934(?????) > uint32(call.func_hash) >> 224:
                        if unknown_0xdace0767(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            require calldata.size - 4 >= 32
                            if owner != msg.sender:
                                revert with 0, 'Ownable: caller is not the owner'
                            require ext_code.size(nodeRewardManagementAddress)
                            call nodeRewardManagementAddress.0xdace0767 with:
                                 gas gas_remaining wei
                                args cd[4]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if unknown_0xe33b7de3(?????) == uint32(call.func_hash) >> 224:
                                require not msg.value
                                return totalReleased
                            if unknown_0xe929faf1(?????) == uint32(call.func_hash) >> 224:
                                require not msg.value
                                require calldata.size - 4 >= 64
                                require cd[4] == address(cd[4])
                                require ext_code.size(nodeRewardManagementAddress)
                                staticcall nodeRewardManagementAddress.0xe929faf1 with:
                                        gas gas_remaining wei
                                       args address(cd[4]), cd[36]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                return ext_call.return_data[0]
                            require unknown_0xf2fde38b(?????) == uint32(call.func_hash) >> 224
                            require not msg.value
                            require calldata.size - 4 >= 32
                            require cd[4] == address(cd[4])
                            if owner != msg.sender:
                                revert with 0, 'Ownable: caller is not the owner'
                            if not address(cd[4]):
                                revert with 0, 'Ownable: new owner is the zero address'
                            owner = address(cd[4])
                            emit OwnershipTransferred(owner, address(cd[4]));
                    if unknown_0xf74c9934(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require cd[4] == address(cd[4])
                        require ext_code.size(nodeRewardManagementAddress)
                        staticcall nodeRewardManagementAddress.0xf74c9934 with:
                                gas gas_remaining wei
                               args address(cd[4])
                    else:
                        if unknown_0xf81f21a3(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            return sub_f81f21a3
                        if unknown_0xf887ea40(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            return routerAddress
                        if unknown_0xfc0c546a(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            return tokenAddress
                        require unknown_0xfed92f6a(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        require calldata.size - 4 >= 64
                        require cd[4] == address(cd[4])
                        require ext_code.size(nodeRewardManagementAddress)
                        staticcall nodeRewardManagementAddress.0xfed92f6a with:
                                gas gas_remaining wei
                               args address(cd[4]), cd[36]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    return ext_call.return_data[0]
                if unknown_0xcba0e996(?????) > uint32(call.func_hash) >> 224:
                    if unknown_0xb7e225cb(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require cd[4] == uint8(cd[4])
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        liquidityPoolFee = uint8(cd[4])
                    else:
                        if unknown_0xb96392c1(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            require calldata.size - 4 >= 32
                            require cd[4] == address(cd[4])
                            require ext_code.size(nodeRewardManagementAddress)
                            staticcall nodeRewardManagementAddress.0xb96392c1 with:
                                    gas gas_remaining wei
                                   args address(cd[4])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            return ext_call.return_data[0]
                        if unknown_0xbf0027b6(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            require calldata.size - 4 >= 64
                            require cd[4] == address(cd[4])
                            require ext_code.size(nodeRewardManagementAddress)
                            staticcall nodeRewardManagementAddress.0xbf0027b6 with:
                                    gas gas_remaining wei
                                   args address(cd[4]), cd[36]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            return ext_call.return_data[0]
                        require unknown_0xc73b8331(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        require calldata.size - 4 >= 96
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        require ext_code.size(nodeRewardManagementAddress)
                        call nodeRewardManagementAddress.0xc73b8331 with:
                             gas gas_remaining wei
                            args cd[4], cd[36], cd[68]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                else:
                    if unknown_0xcba0e996(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require cd[4] == address(cd[4])
                        return bool(stor15[address(cd[4])])
                    if unknown_0xce7c2ac2(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require cd[4] == address(cd[4])
                        return shares[address(cd[4])]
                    if uint32(call.func_hash) >> 224 != unknown_0xd5818ae3(?????):
                        require unknown_0xd79779b2(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require cd[4] == address(cd[4])
                        return totalReleased[address(cd[4])]
                    require not msg.value
                    require calldata.size - 4 >= 32
                    if stor8 == 2:
                        revert with 0, 'ReentrancyGuard: reentrant call'
                    stor8 = 2
                    if not msg.sender:
                        revert with 0, 'CSHT:  creation from the zero address'
                    if stor14[address(msg.sender)]:
                        revert with 0, 'CSHT: Malicious address'
                    mem[164] = cd[4]
                    require ext_code.size(nodeRewardManagementAddress)
                    staticcall nodeRewardManagementAddress.0xb0e7dfc0 with:
                            gas gas_remaining wei
                           args msg.sender, cd[4]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] <= 0:
                        revert with 0, 'CSHT: You don't have enough reward to cash out'
                    if not uint8(stor12.field_200):
                        require ext_code.size(nodeRewardManagementAddress)
                        call nodeRewardManagementAddress.cashoutNodeReward(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args msg.sender, cd[4]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x23b872dd with:
                             gas gas_remaining wei
                            args reservePoolAddress, msg.sender, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        emit 0xc5651e1e: block.timestamp, ext_call.return_data[0], msg.sender
                    else:
                        if not sub_f81f21a3:
                            if ext_call.return_data[0] < 0:
                                revert with 0, 17
                            require ext_code.size(nodeRewardManagementAddress)
                            call nodeRewardManagementAddress.cashoutNodeReward(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args msg.sender, cd[4]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args reservePoolAddress, msg.sender, ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            emit 0xc5651e1e: block.timestamp, ext_call.return_data[0], msg.sender
                        else:
                            if ext_call.return_data[0] and sub_f81f21a3 > -1 / ext_call.return_data[0]:
                                revert with 0, 17
                            mem[ceil32(return_data.size) + 160] = tokenAddress
                            require ext_code.size(routerAddress)
                            staticcall routerAddress.0x73b295c2 with:
                                    gas gas_remaining wei
                            mem[ceil32(return_data.size) + 224] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[ceil32(return_data.size) + 192] = ext_call.return_data[12 len 20]
                            mem[(2 * ceil32(return_data.size)) + 228] = routerAddress
                            mem[(2 * ceil32(return_data.size)) + 260] = ext_call.return_data[0] * sub_f81f21a3 / 100
                            require ext_code.size(tokenAddress)
                            call tokenAddress.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args mem[(2 * ceil32(return_data.size)) + 228 len ceil32(return_data.size) + 64]
                            mem[(2 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            mem[(4 * ceil32(return_data.size)) + 224] = 0x762b156200000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + 228] = ext_call.return_data[0] * sub_f81f21a3 / 100
                            idx = 0
                            s = ceil32(return_data.size) + 160
                            t = (4 * ceil32(return_data.size)) + 420
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(routerAddress)
                            call routerAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0] * sub_f81f21a3 / 100, 0, 160, address(this.address), block.timestamp, 2, mem[(4 * ceil32(return_data.size)) + 420 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if ext_call.return_data[0] < ext_call.return_data[0] * sub_f81f21a3 / 100:
                                revert with 0, 17
                            require ext_code.size(nodeRewardManagementAddress)
                            call nodeRewardManagementAddress.cashoutNodeReward(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args msg.sender, cd[4]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args reservePoolAddress, msg.sender, ext_call.return_data[0] - (ext_call.return_data[0] * sub_f81f21a3 / 100)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            emit 0xc5651e1e: block.timestamp, ext_call.return_data[0] - (ext_call.return_data[0] * sub_f81f21a3 / 100), msg.sender
                    stor8 = 1
        else:
            if unknown_0x46140045(?????) <= uint32(call.func_hash) >> 224:
                if unknown_0x5828583a(?????) > uint32(call.func_hash) >> 224:
                    if unknown_0x4c40f265(?????) > uint32(call.func_hash) >> 224:
                        if unknown_0x46140045(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            require ext_code.size(nodeRewardManagementAddress)
                            staticcall nodeRewardManagementAddress.0xcf33fce6 with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            return ext_call.return_data[0]
                        if unknown_0x467fd438(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            require calldata.size - 4 >= 64
                            require cd[4] == address(cd[4])
                            require ext_code.size(nodeRewardManagementAddress)
                            staticcall nodeRewardManagementAddress.0x467fd438 with:
                                    gas gas_remaining wei
                                   args address(cd[4]), cd[36]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            return ext_call.return_data[0]
                        if uint32(call.func_hash) >> 224 != unknown_0x48b75044(?????):
                            require unknown_0x49c6bed9(?????) == uint32(call.func_hash) >> 224
                            require not msg.value
                            require calldata.size - 4 >= 32
                            require cd[4] <= test266151307()
                            require cd[4] + 35 < calldata.size
                            if ('cd', 4).length > test266151307():
                                revert with 0, 65
                            if ceil32(32 * ('cd', 4).length) + 129 < 128 or ceil32(32 * ('cd', 4).length) + 129 > test266151307():
                                revert with 0, 65
                            mem[128] = ('cd', 4).length
                            require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
                            idx = 0
                            s = cd[4] + 36
                            t = 160
                            while idx < ('cd', 4).length:
                                require cd[s] == address(cd[s])
                                mem[t] = cd[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            if owner != msg.sender:
                                revert with 0, 'Ownable: caller is not the owner'
                            mem[ceil32(32 * ('cd', 4).length) + 129] = 0x49c6bed900000000000000000000000000000000000000000000000000000000
                            mem[ceil32(32 * ('cd', 4).length) + 133] = 32
                            mem[ceil32(32 * ('cd', 4).length) + 165] = ('cd', 4).length
                            idx = 0
                            s = 160
                            t = ceil32(32 * ('cd', 4).length) + 197
                            while idx < ('cd', 4).length:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(nodeRewardManagementAddress)
                            call nodeRewardManagementAddress.0x49c6bed9 with:
                                 gas gas_remaining wei
                                args Array(len=('cd', 4).length, data=mem[ceil32(32 * ('cd', 4).length) + 197 len 32 * ('cd', 4).length])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require not msg.value
                            require calldata.size - 4 >= 64
                            require cd[4] == address(cd[4])
                            require cd[36] == address(cd[36])
                            if not shares[address(cd[36])]:
                                revert with 0, 'PaymentSplitter: account has no shares'
                            mem[132] = this.address
                            require ext_code.size(address(cd[4]))
                            staticcall address(cd[4]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[128] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] > !totalReleased[address(cd[4])]:
                                revert with 0, 17
                            if ext_call.return_data[0] + totalReleased[address(cd[4])] and shares[address(cd[36])] > -1 / ext_call.return_data[0] + totalReleased[address(cd[4])]:
                                revert with 0, 17
                            if not totalShares:
                                revert with 0, 18
                            if (ext_call.return_data[0] * shares[address(cd[36])]) + (totalReleased[address(cd[4])] * shares[address(cd[36])]) / totalShares < released[address(cd[4])][address(cd[36])]:
                                revert with 0, 17
                            if not ((ext_call.return_data[0] * shares[address(cd[36])]) + (totalReleased[address(cd[4])] * shares[address(cd[36])]) / totalShares) - released[address(cd[4])][address(cd[36])]:
                                revert with 0, 'PaymentSplitter: account is not due payment'
                            if released[address(cd[4])][address(cd[36])] > !(((ext_call.return_data[0] * shares[address(cd[36])]) + (totalReleased[address(cd[4])] * shares[address(cd[36])]) / totalShares) - released[address(cd[4])][address(cd[36])]):
                                revert with 0, 17
                            released[address(cd[4])][address(cd[36])] = (ext_call.return_data[0] * shares[address(cd[36])]) + (totalReleased[address(cd[4])] * shares[address(cd[36])]) / totalShares
                            if totalReleased[address(cd[4])] > !(((ext_call.return_data[0] * shares[address(cd[36])]) + (totalReleased[address(cd[4])] * shares[address(cd[36])]) / totalShares) - released[address(cd[4])][address(cd[36])]):
                                revert with 0, 17
                            totalReleased[address(cd[4])] = totalReleased[address(cd[4])] + ((ext_call.return_data[0] * shares[address(cd[36])]) + (totalReleased[address(cd[4])] * shares[address(cd[36])]) / totalShares) - released[address(cd[4])][address(cd[36])]
                            mem[ceil32(return_data.size) + 164] = address(cd[36])
                            mem[ceil32(return_data.size) + 196] = ((ext_call.return_data[0] * shares[address(cd[36])]) + (totalReleased[address(cd[4])] * shares[address(cd[36])]) / totalShares) - released[address(cd[4])][address(cd[36])]
                            mem[ceil32(return_data.size) + 128] = 68
                            mem[ceil32(return_data.size) + 164 len 28] = address(cd[36]) << 64
                            mem[ceil32(return_data.size) + 160 len 4] = unknown_0xa9059cbb(?????)
                            mem[ceil32(return_data.size) + 228] = 32
                            mem[ceil32(return_data.size) + 260] = 'SafeERC20: low-level call failed'
                            if not ext_code.size(address(cd[4])):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 292 len 96] = unknown_0xa9059cbb(?????), address(cd[36]) << 64, 0, ((ext_call.return_data[0] * shares[address(cd[36])]) + (totalReleased[address(cd[4])] * shares[address(cd[36])]) / totalShares) - released[address(cd[4])][address(cd[36])], 0
                            mem[ceil32(return_data.size) + 360] = 0
                            call address(cd[4]) with:
                               funct Mask(32, 224, unknown_0xa9059cbb(?????), address(cd[36]) << 64, 0, ((ext_call.return_data[0] * shares[address(cd[36])]) + (totalReleased[address(cd[4])] * shares[address(cd[36])]) / totalShares) - released[address(cd[4])][address(cd[36])], 0) >> 224
                                 gas gas_remaining wei
                                args (Mask(512, -288, unknown_0xa9059cbb(?????), address(cd[36]) << 64, 0, ((ext_call.return_data[0] * shares[address(cd[36])]) + (totalReleased[address(cd[4])] * shares[address(cd[36])]) / totalShares) - released[address(cd[4])][address(cd[36])], 0) << 288)
                            if not return_data.size:
                                if not ext_call.success:
                                    if mem[96]:
                                        revert with memory
                                          from 128
                                           len mem[96]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if mem[96]:
                                    require mem[96] >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            else:
                                mem[ceil32(return_data.size) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[ceil32(return_data.size) + 324] == bool(mem[ceil32(return_data.size) + 324])
                                    if not mem[ceil32(return_data.size) + 324]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            emit ERC20PaymentReleased(address(cd[36]), ((ext_call.return_data[0] * shares[address(cd[36])]) + (totalReleased[address(cd[4])] * shares[address(cd[36])]) / totalShares) - released[address(cd[4])][address(cd[36])], address(cd[4]));
                    else:
                        if unknown_0x4c40f265(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            require calldata.size - 4 >= 96
                            require cd[4] == address(cd[4])
                            require cd[36] <= test266151307()
                            require cd[36] + 35 < calldata.size
                            if ('cd', 36).length > test266151307():
                                revert with 0, 65
                            if ceil32(ceil32(('cd', 36).length)) + 129 < 128 or ceil32(ceil32(('cd', 36).length)) + 129 > test266151307():
                                revert with 0, 65
                            require cd[36] + ('cd', 36).length + 36 <= calldata.size
                            require cd[68] == uint8(cd[68])
                            if owner != msg.sender:
                                revert with 0, 'Ownable: caller is not the owner'
                            if ('cd', 36).length <= 3:
                                revert with 0, 'NODE CREATION: NAME SIZE INVALID'
                            if ('cd', 36).length >= 32:
                                revert with 0, 'NODE CREATION: NAME SIZE INVALID'
                            if not address(cd[4]):
                                revert with 0, 'NODE CREATION:  creation from the zero address'
                            if stor14[address(cd[4])]:
                                revert with 0, 'NODE CREATION: Malicious address'
                            require ext_code.size(nodeRewardManagementAddress)
                            call nodeRewardManagementAddress.0x90219732 with:
                                 gas gas_remaining wei
                                args address(cd[4]), 96, uint8(cd[68]), ('cd', 36).length, call.data[cd[36] + 36 len ('cd', 36).length], 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            emit 0x33b56213: ext_call.return_data[0], address(cd[4]), uint8(cd[68])
                        else:
                            if unknown_0x4dc9b819(?????) == uint32(call.func_hash) >> 224:
                                require not msg.value
                                require ext_code.size(nodeRewardManagementAddress)
                                staticcall nodeRewardManagementAddress.0xecaa6b19 with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                return ext_call.return_data[0]
                            if uint32(call.func_hash) >> 224 != unknown_0x54557973(?????):
                                require unknown_0x54f12f1f(?????) == uint32(call.func_hash) >> 224
                                require not msg.value
                                return liquidityPoolFee
                            require not msg.value
                            if stor8 == 2:
                                revert with 0, 'ReentrancyGuard: reentrant call'
                            stor8 = 2
                            if not msg.sender:
                                revert with 0, 'CSHT:  creation from the zero address'
                            if stor14[address(msg.sender)]:
                                revert with 0, 'CSHT: Malicious address'
                            require ext_code.size(nodeRewardManagementAddress)
                            staticcall nodeRewardManagementAddress.0xb96392c1 with:
                                    gas gas_remaining wei
                                   args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'CSHT: You don't have enough reward to cash out'
                            if not uint8(stor12.field_200):
                                require ext_code.size(nodeRewardManagementAddress)
                                call nodeRewardManagementAddress.0xfde38516 with:
                                     gas gas_remaining wei
                                    args msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x23b872dd with:
                                     gas gas_remaining wei
                                    args reservePoolAddress, msg.sender, ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                emit 0x2f692895: block.timestamp, ext_call.return_data[0], msg.sender
                            else:
                                if not sub_f81f21a3:
                                    if ext_call.return_data[0] < 0:
                                        revert with 0, 17
                                    require ext_code.size(nodeRewardManagementAddress)
                                    call nodeRewardManagementAddress.0xfde38516 with:
                                         gas gas_remaining wei
                                        args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args reservePoolAddress, msg.sender, ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    emit 0x2f692895: block.timestamp, ext_call.return_data[0], msg.sender
                                else:
                                    if ext_call.return_data[0] and sub_f81f21a3 > -1 / ext_call.return_data[0]:
                                        revert with 0, 17
                                    mem[ceil32(return_data.size) + 160] = tokenAddress
                                    require ext_code.size(routerAddress)
                                    staticcall routerAddress.0x73b295c2 with:
                                            gas gas_remaining wei
                                    mem[ceil32(return_data.size) + 224] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[ceil32(return_data.size) + 192] = ext_call.return_data[12 len 20]
                                    mem[(2 * ceil32(return_data.size)) + 228] = routerAddress
                                    mem[(2 * ceil32(return_data.size)) + 260] = ext_call.return_data[0] * sub_f81f21a3 / 100
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args mem[(2 * ceil32(return_data.size)) + 228 len ceil32(return_data.size) + 64]
                                    mem[(2 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    mem[(4 * ceil32(return_data.size)) + 224] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                    mem[(4 * ceil32(return_data.size)) + 228] = ext_call.return_data[0] * sub_f81f21a3 / 100
                                    idx = 0
                                    s = ceil32(return_data.size) + 160
                                    t = (4 * ceil32(return_data.size)) + 420
                                    while idx < 2:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(routerAddress)
                                    call routerAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0] * sub_f81f21a3 / 100, 0, 160, address(this.address), block.timestamp, 2, mem[(4 * ceil32(return_data.size)) + 420 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if ext_call.return_data[0] < ext_call.return_data[0] * sub_f81f21a3 / 100:
                                        revert with 0, 17
                                    require ext_code.size(nodeRewardManagementAddress)
                                    call nodeRewardManagementAddress.0xfde38516 with:
                                         gas gas_remaining wei
                                        args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args reservePoolAddress, msg.sender, ext_call.return_data[0] - (ext_call.return_data[0] * sub_f81f21a3 / 100)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    emit 0x2f692895: block.timestamp, ext_call.return_data[0] - (ext_call.return_data[0] * sub_f81f21a3 / 100), msg.sender
                            stor8 = 1
                else:
                    if unknown_0x5f8593a1(?????) > uint32(call.func_hash) >> 224:
                        if uint32(call.func_hash) >> 224 != unknown_0x5828583a(?????):
                            if unknown_0x583bd7a6(?????) == uint32(call.func_hash) >> 224:
                                require not msg.value
                                require calldata.size - 4 >= 32
                                require cd[4] == bool(cd[4])
                                if owner != msg.sender:
                                    revert with 0, 'Ownable: caller is not the owner'
                                stor12.field_200 % 72057594037927936 = bool(cd[4]) % 72057594037927936
                            else:
                                if uint32(call.func_hash) >> 224 != unknown_0x5e16d371(?????):
                                    require unknown_0x5f1c3182(?????) == uint32(call.func_hash) >> 224
                                    require not msg.value
                                    return swapTokensAmount
                                require not msg.value
                                require calldata.size - 4 >= 32
                                require cd[4] == uint8(cd[4])
                                if owner != msg.sender:
                                    revert with 0, 'Ownable: caller is not the owner'
                                liquidityPoolFee = uint8(cd[4])
                        else:
                            require not msg.value
                            require calldata.size - 4 >= 64
                            require cd[4] <= test266151307()
                            require cd[4] + 35 < calldata.size
                            if ('cd', 4).length > test266151307():
                                revert with 0, 65
                            if ceil32(32 * ('cd', 4).length) + 129 < 128 or ceil32(32 * ('cd', 4).length) + 129 > test266151307():
                                revert with 0, 65
                            mem[128] = ('cd', 4).length
                            require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
                            idx = 0
                            s = cd[4] + 36
                            t = 160
                            while idx < ('cd', 4).length:
                                require cd[s] == address(cd[s])
                                mem[t] = cd[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require cd[36] == uint8(cd[36])
                            if owner != msg.sender:
                                revert with 0, 'Ownable: caller is not the owner'
                            mem[ceil32(32 * ('cd', 4).length) + 129] = 0xe89ca2f00000000000000000000000000000000000000000000000000000000
                            mem[ceil32(32 * ('cd', 4).length) + 133] = 64
                            idx = 0
                            s = 160
                            t = ceil32(32 * ('cd', 4).length) + 229
                            while idx < ('cd', 4).length:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(nodeRewardManagementAddress)
                            call nodeRewardManagementAddress.0xe89ca2f with:
                                 gas gas_remaining wei
                                args Array(len=('cd', 4).length, data=mem[ceil32(32 * ('cd', 4).length) + 229 len 32 * ('cd', 4).length]), uint8(cd[36])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if unknown_0x5f8593a1(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            return bool(uint8(stor12.field_200))
                        if uint32(call.func_hash) >> 224 != unknown_0x65bfe430(?????):
                            if unknown_0x697e2f8e(?????) == uint32(call.func_hash) >> 224:
                                require not msg.value
                                return nodeRewardManagementAddress
                            if unknown_0x6ede0f71(?????) == uint32(call.func_hash) >> 224:
                                require not msg.value
                                return sub_6ede0f71
                            require unknown_0x715018a6(?????) == uint32(call.func_hash) >> 224
                            require not msg.value
                            if owner != msg.sender:
                                revert with 0, 'Ownable: caller is not the owner'
                            owner = 0
                            emit OwnershipTransferred(owner, 0);
                        else:
                            require not msg.value
                            require calldata.size - 4 >= 32
                            if stor8 == 2:
                                revert with 0, 'ReentrancyGuard: reentrant call'
                            stor8 = 2
                            if not msg.sender:
                                revert with 0, 'CSHT:  creation from the zero address'
                            if stor14[address(msg.sender)]:
                                revert with 0, 'CSHT: Malicious address'
                            mem[164] = cd[4]
                            require ext_code.size(nodeRewardManagementAddress)
                            staticcall nodeRewardManagementAddress.0xfed92f6a with:
                                    gas gas_remaining wei
                                   args msg.sender, cd[4]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'CSHT: You don't have enough reward to cash out'
                            if not uint8(stor12.field_200):
                                require ext_code.size(nodeRewardManagementAddress)
                                call nodeRewardManagementAddress.cashoutNodeReward(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, cd[4]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x23b872dd with:
                                     gas gas_remaining wei
                                    args reservePoolAddress, msg.sender, ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                emit 0xc5651e1e: block.timestamp, ext_call.return_data[0], msg.sender
                            else:
                                if not sub_f81f21a3:
                                    if ext_call.return_data[0] < 0:
                                        revert with 0, 17
                                    require ext_code.size(nodeRewardManagementAddress)
                                    call nodeRewardManagementAddress.cashoutNodeReward(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, cd[4]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args reservePoolAddress, msg.sender, ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    emit 0xc5651e1e: block.timestamp, ext_call.return_data[0], msg.sender
                                else:
                                    if ext_call.return_data[0] and sub_f81f21a3 > -1 / ext_call.return_data[0]:
                                        revert with 0, 17
                                    mem[ceil32(return_data.size) + 160] = tokenAddress
                                    require ext_code.size(routerAddress)
                                    staticcall routerAddress.0x73b295c2 with:
                                            gas gas_remaining wei
                                    mem[ceil32(return_data.size) + 224] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[ceil32(return_data.size) + 192] = ext_call.return_data[12 len 20]
                                    mem[(2 * ceil32(return_data.size)) + 228] = routerAddress
                                    mem[(2 * ceil32(return_data.size)) + 260] = ext_call.return_data[0] * sub_f81f21a3 / 100
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args mem[(2 * ceil32(return_data.size)) + 228 len ceil32(return_data.size) + 64]
                                    mem[(2 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    mem[(4 * ceil32(return_data.size)) + 224] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                    mem[(4 * ceil32(return_data.size)) + 228] = ext_call.return_data[0] * sub_f81f21a3 / 100
                                    idx = 0
                                    s = ceil32(return_data.size) + 160
                                    t = (4 * ceil32(return_data.size)) + 420
                                    while idx < 2:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(routerAddress)
                                    call routerAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0] * sub_f81f21a3 / 100, 0, 160, address(this.address), block.timestamp, 2, mem[(4 * ceil32(return_data.size)) + 420 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if ext_call.return_data[0] < ext_call.return_data[0] * sub_f81f21a3 / 100:
                                        revert with 0, 17
                                    require ext_code.size(nodeRewardManagementAddress)
                                    call nodeRewardManagementAddress.cashoutNodeReward(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, cd[4]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args reservePoolAddress, msg.sender, ext_call.return_data[0] - (ext_call.return_data[0] * sub_f81f21a3 / 100)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    emit 0xc5651e1e: block.timestamp, ext_call.return_data[0] - (ext_call.return_data[0] * sub_f81f21a3 / 100), msg.sender
                            stor8 = 1
            else:
                if unknown_0x19165587(?????) <= uint32(call.func_hash) >> 224:
                    if unknown_0x3bb25ad4(?????) <= uint32(call.func_hash) >> 224:
                        if unknown_0x3bb25ad4(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            require calldata.size - 4 >= 32
                            require cd[4] == address(cd[4])
                            if owner != msg.sender:
                                revert with 0, 'Ownable: caller is not the owner'
                            if routerAddress == address(cd[4]):
                                revert with 0, 'TKN: The router already has that address'
                            emit UpdateRouter(address(cd[4]), routerAddress);
                            routerAddress = address(cd[4])
                        if unknown_0x406072a9(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            require calldata.size - 4 >= 64
                            require cd[4] == address(cd[4])
                            require cd[36] == address(cd[36])
                            return released[address(cd[4])][address(cd[36])]
                        if unknown_0x41bc0312(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            require calldata.size - 4 >= 32
                            require cd[4] == uint8(cd[4])
                            require ext_code.size(nodeRewardManagementAddress)
                            staticcall nodeRewardManagementAddress.0x7a56cdf2 with:
                                    gas gas_remaining wei
                                   args uint8(cd[4])
                        else:
                            require unknown_0x4305235d(?????) == uint32(call.func_hash) >> 224
                            require not msg.value
                            require calldata.size - 4 >= 32
                            require cd[4] == address(cd[4])
                            require ext_code.size(nodeRewardManagementAddress)
                            staticcall nodeRewardManagementAddress.0x4305235d with:
                                    gas gas_remaining wei
                                   args address(cd[4])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        return ext_call.return_data[0]
                    if uint32(call.func_hash) >> 224 != unknown_0x19165587(?????):
                        if unknown_0x3807922b(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            require calldata.size - 4 >= 32
                            require cd[4] == uint8(cd[4])
                            if owner != msg.sender:
                                revert with 0, 'Ownable: caller is not the owner'
                            sub_9ee8e198 = uint8(cd[4])
                        if uint32(call.func_hash) >> 224 != unknown_0x3a18af1a(?????):
                            require unknown_0x3a98ef39(?????) == uint32(call.func_hash) >> 224
                            require not msg.value
                            return totalShares
                        require not msg.value
                        require calldata.size - 4 >= 64
                        require cd[4] == address(cd[4])
                        require ext_code.size(nodeRewardManagementAddress)
                        staticcall nodeRewardManagementAddress.0x3a18af1a with:
                                gas gas_remaining wei
                               args address(cd[4]), cd[36]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        return bool(ext_call.return_data[0])
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require cd[4] == address(cd[4])
                    if not shares[address(cd[4])]:
                        revert with 0, 'PaymentSplitter: account has no shares'
                    if eth.balance(this.address) > !totalReleased:
                        revert with 0, 17
                    if eth.balance(this.address) + totalReleased and shares[address(cd[4])] > -1 / eth.balance(this.address) + totalReleased:
                        revert with 0, 17
                    if not totalShares:
                        revert with 0, 18
                    if (eth.balance(this.address) * shares[address(cd[4])]) + (totalReleased * shares[address(cd[4])]) / totalShares < released[address(cd[4])]:
                        revert with 0, 17
                    if not ((eth.balance(this.address) * shares[address(cd[4])]) + (totalReleased * shares[address(cd[4])]) / totalShares) - released[address(cd[4])]:
                        revert with 0, 'PaymentSplitter: account is not due payment'
                    if released[address(cd[4])] > !(((eth.balance(this.address) * shares[address(cd[4])]) + (totalReleased * shares[address(cd[4])]) / totalShares) - released[address(cd[4])]):
                        revert with 0, 17
                    released[address(cd[4])] = (eth.balance(this.address) * shares[address(cd[4])]) + (totalReleased * shares[address(cd[4])]) / totalShares
                    if totalReleased > !(((eth.balance(this.address) * shares[address(cd[4])]) + (totalReleased * shares[address(cd[4])]) / totalShares) - released[address(cd[4])]):
                        revert with 0, 17
                    totalReleased = totalReleased + ((eth.balance(this.address) * shares[address(cd[4])]) + (totalReleased * shares[address(cd[4])]) / totalShares) - released[address(cd[4])]
                    if eth.balance(this.address) < ((eth.balance(this.address) * shares[address(cd[4])]) + (totalReleased * shares[address(cd[4])]) / totalShares) - released[address(cd[4])]:
                        revert with 0, 'Address: insufficient balance'
                    call address(cd[4]) with:
                       value ((eth.balance(this.address) * shares[address(cd[4])]) + (totalReleased * shares[address(cd[4])]) / totalShares) - released[address(cd[4])] wei
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with 0, 'Address: unable to send value, recipient may have reverted'
                    emit PaymentReleased(address(cd[4]), ((eth.balance(this.address) * shares[address(cd[4])]) + (totalReleased * shares[address(cd[4])]) / totalShares) - released[address(cd[4])]);
                else:
                    if unknown_0x0eef1c14(?????) > uint32(call.func_hash) >> 224:
                        if reservePool() == uint32(call.func_hash) >> 224:
                            require not msg.value
                            return reservePoolAddress
                        if uint32(call.func_hash) >> 224 != unknown_0x0488e267(?????):
                            if unknown_0x09747716(?????) == uint32(call.func_hash) >> 224:
                                require not msg.value
                                require calldata.size - 4 >= 32
                                require cd[4] == address(cd[4])
                                if owner != msg.sender:
                                    revert with 0, 'Ownable: caller is not the owner'
                                tokenAddress = address(cd[4])
                            require getRewardAmount() == uint32(call.func_hash) >> 224
                            require not msg.value
                            if not msg.sender:
                                revert with 0, 'SENDER CAN'T BE ZERO'
                            require ext_code.size(nodeRewardManagementAddress)
                            staticcall nodeRewardManagementAddress.0x15f7aaab with:
                                    gas gas_remaining wei
                                   args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            if not ext_call.return_data[0]:
                                revert with 0, 'NO NODE OWNER'
                            require ext_code.size(nodeRewardManagementAddress)
                            staticcall nodeRewardManagementAddress.0xb96392c1 with:
                                    gas gas_remaining wei
                                   args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            return ext_call.return_data[0]
                        require not msg.value
                        require calldata.size - 4 >= 64
                        require cd[4] == address(cd[4])
                        mem[128] = 0x488e26700000000000000000000000000000000000000000000000000000000
                        mem[132] = address(cd[4])
                        mem[164] = cd[36]
                        require ext_code.size(nodeRewardManagementAddress)
                        staticcall nodeRewardManagementAddress.0x488e267 with:
                                gas gas_remaining wei
                               args address(cd[4]), cd[36]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + 128
                        require return_data.size >= 32
                        _226 = mem[128 len 4], address(cd[4]) << 64
                        require mem[128 len 4], address(cd[4]) << 64 <= test266151307()
                        require return_data.size + 128 > mem[128 len 4], address(cd[4]) << 64 + 159
                        _251 = mem[mem[128 len 4], address(cd[4]) << 64 + 128]
                        if mem[mem[128 len 4], address(cd[4]) << 64 + 128] > test266151307():
                            revert with 0, 65
                        if ceil32(ceil32(mem[mem[128 len 4], address(cd[4]) << 64 + 128])) + 1 < 0 or ceil32(return_data.size) + ceil32(ceil32(mem[mem[128 len 4], address(cd[4]) << 64 + 128])) + 129 > test266151307():
                            revert with 0, 65
                        mem[64] = ceil32(return_data.size) + ceil32(ceil32(mem[mem[128 len 4], address(cd[4]) << 64 + 128])) + 129
                        mem[ceil32(return_data.size) + 128] = mem[mem[128 len 4], address(cd[4]) << 64 + 128]
                        require _226 + _251 + 32 <= return_data.size
                        mem[ceil32(return_data.size) + 160 len ceil32(_251)] = mem[_226 + 160 len ceil32(_251)]
                        if ceil32(_251) <= _251:
                            _765 = mem[64]
                            mem[mem[64]] = 32
                            mem[mem[64] + 32] = _251
                            mem[mem[64] + 64 len ceil32(_251)] = mem[ceil32(return_data.size) + 160 len ceil32(_251)]
                            if ceil32(_251) <= _251:
                                return Array(len=_251, data=mem[mem[64] + 64 len ceil32(_251)])
                            mem[mem[64] + _251 + 64] = 0
                            return memory
                              from mem[64]
                               len ceil32(_251) + _765 + -mem[64] + 64
                        mem[ceil32(return_data.size) + _251 + 160] = 0
                        _776 = mem[64]
                        mem[mem[64]] = 32
                        mem[mem[64] + 32] = _251
                        mem[mem[64] + 64 len ceil32(_251)] = mem[ceil32(return_data.size) + 160 len ceil32(_251)]
                        if ceil32(_251) <= _251:
                            return Array(len=_251, data=mem[mem[64] + 64 len ceil32(_251)])
                        mem[mem[64] + _251 + 64] = 0
                        return memory
                          from mem[64]
                           len ceil32(_251) + _776 + -mem[64] + 64
                    if uint32(call.func_hash) >> 224 != unknown_0x0eef1c14(?????):
                        if unknown_0x153f7cd0(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            require calldata.size - 4 >= 32
                            require cd[4] == address(cd[4])
                            if owner != msg.sender:
                                revert with 0, 'Ownable: caller is not the owner'
                            reservePoolAddress = address(cd[4])
                        if uint32(call.func_hash) >> 224 != unknown_0x15f7aaab(?????):
                            require unknown_0x1732cded(?????) == uint32(call.func_hash) >> 224
                            require not msg.value
                            return bool(uint8(stor12.field_192))
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require cd[4] == address(cd[4])
                        require ext_code.size(nodeRewardManagementAddress)
                        staticcall nodeRewardManagementAddress.0x15f7aaab with:
                                gas gas_remaining wei
                               args address(cd[4])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        return bool(ext_call.return_data[0])
                    require not msg.value
                    require calldata.size - 4 >= 64
                    require cd[4] <= test266151307()
                    require cd[4] + 35 < calldata.size
                    if ('cd', 4).length > test266151307():
                        revert with 0, 65
                    if ceil32(ceil32(('cd', 4).length)) + 129 < 128 or ceil32(ceil32(('cd', 4).length)) + 129 > test266151307():
                        revert with 0, 65
                    require cd[4] + ('cd', 4).length + 36 <= calldata.size
                    require cd[36] == uint8(cd[36])
                    if stor8 == 2:
                        revert with 0, 'ReentrancyGuard: reentrant call'
                    stor8 = 2
                    if 3 >= ('cd', 4).length:
                        revert with 0, 'NODE CREATION: NAME SIZE INVALID'
                    if ('cd', 4).length >= 32:
                        revert with 0, 'NODE CREATION: NAME SIZE INVALID'
                    if not msg.sender:
                        revert with 0, 'NODE CREATION:  creation from the zero address'
                    if stor14[address(msg.sender)]:
                        revert with 0, 'NODE CREATION: Malicious address'
                    require ext_code.size(nodeRewardManagementAddress)
                    staticcall nodeRewardManagementAddress.0x7a56cdf2 with:
                            gas gas_remaining wei
                           args uint8(cd[36])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0, 'PRICE CANNOT BE ZERO'
                    mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + 133] = msg.sender
                    require ext_code.size(tokenAddress)
                    staticcall tokenAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args msg.sender
                    mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + 129] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'NODE CREATION: Balance too low for creation.'
                    mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 133] = this.address
                    require ext_code.size(tokenAddress)
                    staticcall tokenAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 129] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < swapTokensAmount:
                        require ext_code.size(nodeRewardManagementAddress)
                        call nodeRewardManagementAddress.0x90219732 with:
                             gas gas_remaining wei
                            args msg.sender, Array(len=('cd', 4).length, data=call.data[cd[4] + 36 len ('cd', 4).length]), uint8(cd[36])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, this.address, ext_call.return_data[0]
                    else:
                        if not uint8(stor12.field_200):
                            require ext_code.size(nodeRewardManagementAddress)
                            call nodeRewardManagementAddress.0x90219732 with:
                                 gas gas_remaining wei
                                args msg.sender, Array(len=('cd', 4).length, data=call.data[cd[4] + 36 len ('cd', 4).length]), uint8(cd[36])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, ext_call.return_data[0]
                        else:
                            if uint8(stor12.field_192):
                                require ext_code.size(nodeRewardManagementAddress)
                                call nodeRewardManagementAddress.0x90219732 with:
                                     gas gas_remaining wei
                                    args msg.sender, Array(len=('cd', 4).length, data=call.data[cd[4] + 36 len ('cd', 4).length]), uint8(cd[36])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, this.address, ext_call.return_data[0]
                            else:
                                if owner == msg.sender:
                                    require ext_code.size(nodeRewardManagementAddress)
                                    call nodeRewardManagementAddress.0x90219732 with:
                                         gas gas_remaining wei
                                        args msg.sender, Array(len=('cd', 4).length, data=call.data[cd[4] + 36 len ('cd', 4).length]), uint8(cd[36])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, this.address, ext_call.return_data[0]
                                else:
                                    uint8(stor12.field_192) = 1
                                    if ext_call.return_data[0] and 0 or sub_9ee8e198 > -1 / ext_call.return_data[0]:
                                        revert with 0, 17
                                    if ext_call.return_data[0] * 0 or sub_9ee8e198 / 100 and sub_6ede0f71 > -1 / ext_call.return_data[0] * 0 or sub_9ee8e198 / 100:
                                        revert with 0, 17
                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 161] = tokenAddress
                                    require ext_code.size(routerAddress)
                                    staticcall routerAddress.0x73b295c2 with:
                                            gas gas_remaining wei
                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 225] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 193] = ext_call.return_data[12 len 20]
                                    mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 261] = ext_call.return_data[0] * 0 or sub_9ee8e198 / 100 * sub_6ede0f71 / 100
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args routerAddress, ext_call.return_data[0] * 0 or sub_9ee8e198 / 100 * sub_6ede0f71 / 100, mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 293 len 9 * ceil32(return_data.size)]
                                    mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 225] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 225] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 229] = ext_call.return_data[0] * 0 or sub_9ee8e198 / 100 * sub_6ede0f71 / 100
                                    mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 293] = 160
                                    mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 389] = 2
                                    idx = 0
                                    s = ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 161
                                    t = ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 421
                                    while idx < 2:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 325] = this.address
                                    mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 357] = block.timestamp
                                    require ext_code.size(routerAddress)
                                    call routerAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0] * 0 or sub_9ee8e198 / 100 * sub_6ede0f71 / 100, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 421 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if ext_call.return_data[0] * 0 or sub_9ee8e198 / 100 < ext_call.return_data[0] * 0 or sub_9ee8e198 / 100 * sub_6ede0f71 / 100:
                                        revert with 0, 17
                                    mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 229] = reservePoolAddress
                                    mem[ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 261] = (ext_call.return_data[0] * 0 or sub_9ee8e198 / 100) - (ext_call.return_data[0] * 0 or sub_9ee8e198 / 100 * sub_6ede0f71 / 100)
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args reservePoolAddress, (ext_call.return_data[0] * 0 or sub_9ee8e198 / 100) - (ext_call.return_data[0] * 0 or sub_9ee8e198 / 100 * sub_6ede0f71 / 100)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    if ext_call.return_data[0] and liquidityPoolFee > -1 / ext_call.return_data[0]:
                                        revert with 0, 17
                                    if ext_call.return_data[0] * liquidityPoolFee / 100 < ext_call.return_data[0] * liquidityPoolFee / 100 / 2:
                                        revert with 0, 17
                                    mem[ceil32(ceil32(('cd', 4).length)) + (10 * ceil32(return_data.size)) + 257] = tokenAddress
                                    require ext_code.size(routerAddress)
                                    staticcall routerAddress.0x73b295c2 with:
                                            gas gas_remaining wei
                                    mem[ceil32(ceil32(('cd', 4).length)) + (10 * ceil32(return_data.size)) + 321] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[ceil32(ceil32(('cd', 4).length)) + (10 * ceil32(return_data.size)) + 289] = ext_call.return_data[12 len 20]
                                    mem[ceil32(ceil32(('cd', 4).length)) + (11 * ceil32(return_data.size)) + 325] = routerAddress
                                    mem[ceil32(ceil32(('cd', 4).length)) + (11 * ceil32(return_data.size)) + 357] = ext_call.return_data[0] * liquidityPoolFee / 100 / 2
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args routerAddress, ext_call.return_data[0] * liquidityPoolFee / 100 / 2
                                    mem[ceil32(ceil32(('cd', 4).length)) + (11 * ceil32(return_data.size)) + 321] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    mem[ceil32(ceil32(('cd', 4).length)) + (13 * ceil32(return_data.size)) + 321] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(ceil32(('cd', 4).length)) + (13 * ceil32(return_data.size)) + 325] = ext_call.return_data[0] * liquidityPoolFee / 100 / 2
                                    mem[ceil32(ceil32(('cd', 4).length)) + (13 * ceil32(return_data.size)) + 389] = 160
                                    mem[ceil32(ceil32(('cd', 4).length)) + (13 * ceil32(return_data.size)) + 485] = 2
                                    idx = 0
                                    s = ceil32(ceil32(('cd', 4).length)) + (10 * ceil32(return_data.size)) + 257
                                    t = ceil32(ceil32(('cd', 4).length)) + (13 * ceil32(return_data.size)) + 517
                                    while idx < 2:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[ceil32(ceil32(('cd', 4).length)) + (13 * ceil32(return_data.size)) + 421] = this.address
                                    mem[ceil32(ceil32(('cd', 4).length)) + (13 * ceil32(return_data.size)) + 453] = block.timestamp
                                    require ext_code.size(routerAddress)
                                    call routerAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args Mask(255, 1, ext_call.return_data[0] * liquidityPoolFee / 100), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(ceil32(('cd', 4).length)) + (13 * ceil32(return_data.size)) + 517 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if eth.balance(this.address) < eth.balance(this.address):
                                        revert with 0, 17
                                    mem[ceil32(ceil32(('cd', 4).length)) + (13 * ceil32(return_data.size)) + 325] = routerAddress
                                    mem[ceil32(ceil32(('cd', 4).length)) + (13 * ceil32(return_data.size)) + 357] = (ext_call.return_data[0] * liquidityPoolFee / 100) - (ext_call.return_data[0] * liquidityPoolFee / 100 / 2)
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args routerAddress, (ext_call.return_data[0] * liquidityPoolFee / 100) - (ext_call.return_data[0] * liquidityPoolFee / 100 / 2), mem[ceil32(ceil32(('cd', 4).length)) + (13 * ceil32(return_data.size)) + 389 len 5 * ceil32(return_data.size)]
                                    mem[ceil32(ceil32(('cd', 4).length)) + (13 * ceil32(return_data.size)) + 321] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    mem[ceil32(ceil32(('cd', 4).length)) + (15 * ceil32(return_data.size)) + 389] = 0
                                    mem[ceil32(ceil32(('cd', 4).length)) + (15 * ceil32(return_data.size)) + 421] = 0
                                    mem[ceil32(ceil32(('cd', 4).length)) + (15 * ceil32(return_data.size)) + 453] = 0
                                    mem[ceil32(ceil32(('cd', 4).length)) + (15 * ceil32(return_data.size)) + 485] = block.timestamp
                                    require ext_code.size(routerAddress)
                                    call routerAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                         gas gas_remaining wei
                                        args tokenAddress, (ext_call.return_data[0] * liquidityPoolFee / 100) - (ext_call.return_data[0] * liquidityPoolFee / 100 / 2), 0, 0, 0, block.timestamp, mem[ceil32(ceil32(('cd', 4).length)) + (15 * ceil32(return_data.size)) + 517 len 9 * ceil32(return_data.size)]
                                    mem[ceil32(ceil32(('cd', 4).length)) + (15 * ceil32(return_data.size)) + 321 len 96] = ext_call.return_data[0 len 96]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 96
                                    mem[ceil32(ceil32(('cd', 4).length)) + (16 * ceil32(return_data.size)) + 321] = ext_call.return_data[0] * liquidityPoolFee / 100 / 2
                                    mem[ceil32(ceil32(('cd', 4).length)) + (16 * ceil32(return_data.size)) + 353] = 0
                                    mem[ceil32(ceil32(('cd', 4).length)) + (16 * ceil32(return_data.size)) + 385] = (ext_call.return_data[0] * liquidityPoolFee / 100) - (ext_call.return_data[0] * liquidityPoolFee / 100 / 2)
                                    emit SwapAndLiquify(uint256 arg1, uint256 arg2, uint256 arg3):
                                                        mem[ceil32(ceil32(('cd', 4).length)) + (16 * ceil32(return_data.size)) + 321 len ceil32(return_data.size) + 96],
                                    mem[ceil32(ceil32(('cd', 4).length)) + (16 * ceil32(return_data.size)) + 325] = this.address
                                    require ext_code.size(tokenAddress)
                                    staticcall tokenAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[ceil32(ceil32(('cd', 4).length)) + (17 * ceil32(return_data.size)) + 353] = tokenAddress
                                    require ext_code.size(routerAddress)
                                    staticcall routerAddress.0x73b295c2 with:
                                            gas gas_remaining wei
                                    mem[ceil32(ceil32(('cd', 4).length)) + (17 * ceil32(return_data.size)) + 417] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[ceil32(ceil32(('cd', 4).length)) + (17 * ceil32(return_data.size)) + 385] = ext_call.return_data[12 len 20]
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args routerAddress, ext_call.return_data[0]
                                    mem[ceil32(ceil32(('cd', 4).length)) + (18 * ceil32(return_data.size)) + 417] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    mem[ceil32(ceil32(('cd', 4).length)) + (20 * ceil32(return_data.size)) + 417] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(ceil32(('cd', 4).length)) + (20 * ceil32(return_data.size)) + 421] = ext_call.return_data[0]
                                    mem[ceil32(ceil32(('cd', 4).length)) + (20 * ceil32(return_data.size)) + 581] = 2
                                    idx = 0
                                    s = ceil32(ceil32(('cd', 4).length)) + (17 * ceil32(return_data.size)) + 353
                                    t = ceil32(ceil32(('cd', 4).length)) + (20 * ceil32(return_data.size)) + 613
                                    while idx < 2:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[ceil32(ceil32(('cd', 4).length)) + (20 * ceil32(return_data.size)) + 549] = block.timestamp
                                    require ext_code.size(routerAddress)
                                    call routerAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(ceil32(('cd', 4).length)) + (20 * ceil32(return_data.size)) + 613 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    uint8(stor12.field_192) = 0
                                    mem[ceil32(ceil32(('cd', 4).length)) + (20 * ceil32(return_data.size)) + 517] = ('cd', 4).length
                                    mem[ceil32(ceil32(('cd', 4).length)) + (20 * ceil32(return_data.size)) + 549 len ceil32(('cd', 4).length)] = call.data[cd[4] + 36 len ('cd', 4).length], ext_call.return_data[('cd', 4).length + -ceil32(ceil32(('cd', 4).length)) + 31 len ceil32(('cd', 4).length) - ('cd', 4).length]
                                    if ceil32(('cd', 4).length) > ('cd', 4).length:
                                        mem[ceil32(ceil32(('cd', 4).length)) + (20 * ceil32(return_data.size)) + ('cd', 4).length + 549] = 0
                                    require ext_code.size(nodeRewardManagementAddress)
                                    call nodeRewardManagementAddress.0x90219732 with:
                                         gas gas_remaining wei
                                        args msg.sender, Array(len=('cd', 4).length, data=mem[ceil32(ceil32(('cd', 4).length)) + (20 * ceil32(return_data.size)) + 549 len (5 * ceil32(return_data.size)) + ceil32(('cd', 4).length)]), uint8(cd[36])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, this.address, ext_call.return_data[0], mem[ceil32(ceil32(('cd', 4).length)) + (22 * ceil32(return_data.size)) + 517 len 9 * ceil32(return_data.size)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    emit 0x33b56213: ext_call.return_data[0], msg.sender, uint8(cd[36])
                    stor8 = 1
}



}
