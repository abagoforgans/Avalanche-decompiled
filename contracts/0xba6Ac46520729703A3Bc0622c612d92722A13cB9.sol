contract main {




// =====================  Runtime code  =====================


#
#  - claimRewards(uint256 arg1)
#  - sub_adb97050(?)
#
address owner;
uint256 totalRewardsPool;
uint256 startTimestamp;
address sub_9de2e1cbAddress;
address sub_9e7cfd49Address;
uint32 sub_0d2cb02a; offset 160
address sub_7e222661Address;
uint256 sub_dd10e6f8;
array of struct sub_19d96d9e;
array of struct sub_0bc2b269;
mapping of struct sub_69628952;
mapping of struct sub_55c12045;
mapping of uint256 sub_2217f165;
mapping of uint8 stor12;
mapping of uint8 sub_5c5eddee;
mapping of uint64 sub_27de4018;
mapping of uint8 sub_2ae0ec06;
mapping of uint256 sub_a402c1bf;
uint16 sub_f3a0e00d;
mapping of uint256 sub_8af72383;
mapping of uint256 sub_ca282433;
mapping of uint256 sub_14e31e4e;

function sub_0bc2b269(?) {
    require calldata.size - 4 >= 64
    require arg2 < sub_0bc2b269[arg1].field_0
    return sub_0bc2b269[arg1][arg2].field_0, sub_0bc2b269[arg1][arg2].field_256
}

function sub_0d2cb02a(?) {
    return sub_0d2cb02a
}

function sub_14e31e4e(?) {
    require calldata.size - 4 >= 32
    return sub_14e31e4e[arg1]
}

function sub_19d96d9e(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_19d96d9e.length
    return sub_19d96d9e[arg1].field_0, sub_19d96d9e[arg1].field_256
}

function sub_2217f165(?) {
    require calldata.size - 4 >= 32
    return sub_2217f165[arg1]
}

function sub_27de4018(?) {
    require calldata.size - 4 >= 32
    return sub_27de4018[address(arg1)]
}

function sub_2ae0ec06(?) {
    require calldata.size - 4 >= 32
    return sub_2ae0ec06[arg1]
}

function totalRewardsPool() {
    return totalRewardsPool
}

function sub_55c12045(?) {
    require calldata.size - 4 >= 32
    return sub_55c12045[arg1].field_512
}

function sub_5c5eddee(?) {
    require calldata.size - 4 >= 32
    return sub_5c5eddee[arg1]
}

function sub_69628952(?) {
    require calldata.size - 4 >= 32
    return sub_69628952[arg1].field_0, sub_69628952[arg1].field_256, sub_69628952[arg1].field_512
}

function tokenInfos(uint256 arg1) {
    require calldata.size - 4 >= 32
    return sub_55c12045[arg1].field_0, sub_55c12045[arg1].field_256, sub_55c12045[arg1].field_512, sub_55c12045[arg1].field_768
}

function sub_7e222661(?) {
    return sub_7e222661Address
}

function sub_8af72383(?) {
    require calldata.size - 4 >= 32
    return sub_8af72383[stor15[address(arg1)]]
}

function owner() {
    return owner
}

function sub_9de2e1cb(?) {
    return sub_9de2e1cbAddress
}

function sub_9e7cfd49(?) {
    return sub_9e7cfd49Address
}

function sub_a402c1bf(?) {
    require calldata.size - 4 >= 32
    return sub_a402c1bf[arg1]
}

function sub_ac524f3d(?) {
    require calldata.size - 4 >= 32
    return sub_27de4018[arg1]
}

function sub_ca282433(?) {
    require calldata.size - 4 >= 32
    return sub_ca282433[stor15[address(arg1)] - 1 << 248]
}

function sub_d44dfa18(?) {
    require calldata.size - 4 >= 32
    return sub_8af72383[arg1]
}

function sub_d8ebeb8a(?) {
    require calldata.size - 4 >= 32
    return bool(stor12[arg1])
}

function sub_dd10e6f8(?) {
    return sub_dd10e6f8
}

function startTimestamp() {
    return startTimestamp
}

function sub_e78ada3b(?) {
    require calldata.size - 4 >= 32
    return sub_ca282433[arg1]
}

function sub_eac44de3(?) {
    require calldata.size - 4 >= 32
    return sub_2ae0ec06[address(arg1)]
}

function sub_f3a0e00d(?) {
    return sub_f3a0e00d
}

function _fallback() payable {
  stop
}

function getCurrentCycle() {
    require block.timestamp >= startTimestamp
    require sub_0d2cb02a
    return ((block.timestamp - startTimestamp / sub_0d2cb02a) + 1)
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_8ee05396(?) {
    require calldata.size - 4 >= 32
    if sub_a402c1bf[address(arg1)] <= block.timestamp:
        return 0
    return (sub_a402c1bf[address(arg1)] - block.timestamp)
}

function getCurrentPeriod() {
    require block.timestamp >= startTimestamp
    require sub_0d2cb02a
    require (block.timestamp - startTimestamp / sub_0d2cb02a) + 1
    require sub_dd10e6f8
    return ((block.timestamp - startTimestamp / sub_0d2cb02a / sub_dd10e6f8) + 1)
}

function withdrawBalance() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_13ae9059(?) {
    require calldata.size - 4 >= 32
    if sub_a402c1bf[address(arg1)] >= block.timestamp:
        revert with 0, 'Upgrade in progress'
    sub_a402c1bf[address(arg1)] = block.timestamp + sub_14e31e4e[stor15[address(arg1)]]
    sub_2ae0ec06[address(arg1)] = uint8(sub_2ae0ec06[address(arg1)] + 1)
}

function sub_d4ea2253(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(sub_9e7cfd49Address)
    staticcall sub_9e7cfd49Address.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require sub_5c5eddee[address(arg1)] <= test266151307()
    # nil
}

function withdrawRewardsPool(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(sub_9de2e1cbAddress)
    call sub_9de2e1cbAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function tokenFallback(address arg1, uint256 arg2, bytes arg3) {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    require arg2 >= sub_8af72383[stor15[address(arg1)]]
    if sub_a402c1bf[address(arg1)] >= block.timestamp:
        revert with 0, 'Upgrade in progress'
    sub_a402c1bf[address(arg1)] = block.timestamp + sub_14e31e4e[stor15[address(arg1)]]
    sub_2ae0ec06[address(arg1)] = uint8(sub_2ae0ec06[address(arg1)] + 1)
}

function sub_6d658624(?) {
    require calldata.size - 4 >= 32
    require sub_a402c1bf[address(arg1)] > block.timestamp
    call this.address with:
       value sub_ca282433[stor15[address(arg1)] - 1 << 248] wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if sub_a402c1bf[address(arg1)] <= block.timestamp:
        sub_a402c1bf[address(arg1)] = block.timestamp
    else:
        sub_a402c1bf[address(arg1)] = block.timestamp + (sub_a402c1bf[address(arg1)] - block.timestamp / 2)
}

function sub_29d3bc3a(?) {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    if arg1.length < 8:
        revert with 0, 'toUint64_outOfBounds'
    require 8 <= arg1.length
    require arg1.length <= arg1.length
    require ext_code.size(sub_9e7cfd49Address)
    staticcall sub_9e7cfd49Address.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require sub_5c5eddee[address(msg.sender)] <= test266151307()
    # nil
}

function onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    require sub_9e7cfd49Address == msg.sender
    if arg4.length < 8:
        revert with 0, 'toUint64_outOfBounds'
    if arg4.length < 8:
        revert with 0, 'toUint64_outOfBounds'
    require 8 <= arg4.length
    require arg4.length <= arg4.length
    require ext_code.size(sub_9e7cfd49Address)
    staticcall sub_9e7cfd49Address.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require sub_5c5eddee[address(arg2)] <= test266151307()
    # nil
}

function sub_379c4413(?) {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg1
    require arg1 <= arg2
    if startTimestamp:
        require block.timestamp >= startTimestamp
        require sub_0d2cb02a
        require (block.timestamp - startTimestamp / sub_0d2cb02a) + 1
        require sub_dd10e6f8
        require arg1 >= (block.timestamp - startTimestamp / sub_0d2cb02a / sub_dd10e6f8) + 1
    idx = arg1
    while idx <= arg2:
        mem[0] = idx
        mem[32] = 11
        sub_2217f165[idx] += arg3
        idx = idx + 1
        continue 
    totalRewardsPool = totalRewardsPool + (arg3 * sub_dd10e6f8) + (arg2 * arg3 * sub_dd10e6f8) - (arg1 * arg3 * sub_dd10e6f8)
    require ext_code.size(sub_9de2e1cbAddress)
    call sub_9de2e1cbAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), (arg3 * sub_dd10e6f8) + (arg2 * arg3 * sub_dd10e6f8) - (arg1 * arg3 * sub_dd10e6f8)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    emit RewardsAdded(arg1, arg2, arg3);
}

function sub_0848adb1(?) {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg1
    require block.timestamp >= startTimestamp
    require sub_0d2cb02a
    require arg2 < (block.timestamp - startTimestamp / sub_0d2cb02a) + 1
    require not stor12[arg2]
    if arg3 == -1:
        if sub_19d96d9e.length:
            require 0 < sub_19d96d9e.length
            require arg2 < uint256(sub_19d96d9e.field_256)
    else:
        if arg3 < 0:
            revert with 0, 'NftStaking:wrongindexvalue'
        require arg3 < sub_19d96d9e.length
        require arg2 >= sub_19d96d9e[arg3].field_256
        if sub_19d96d9e.length != arg3 + 1:
            require arg3 + 1 < sub_19d96d9e.length
            require arg2 < sub_19d96d9e[arg3 + 1].field_256
        require not sub_19d96d9e[arg3].field_0
    require arg2
    require sub_dd10e6f8
    require sub_2217f165[(arg2 - 1 / stor6) + 1]
    stor12[arg2] = 1
    require ext_code.size(sub_9de2e1cbAddress)
    call sub_9de2e1cbAddress.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), sub_2217f165[(arg2 - 1 / stor6) + 1]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_205cec78(?) {
    require calldata.size - 4 >= 128
    require cd[4] <= 4294967296
    require cd[4] + 36 <= calldata.size
    require ('cd', 4).length <= 4294967296 and cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= 4294967296
    require cd[36] + 36 <= calldata.size
    require ('cd', 36).length <= 4294967296 and cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] <= 4294967296
    require cd[68] + 36 <= calldata.size
    require ('cd', 68).length <= 4294967296 and cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    require cd[100] <= 4294967296
    require cd[100] + 36 <= calldata.size
    require ('cd', 100).length <= 4294967296 and cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < ('cd', 4).length:
        require idx < ('cd', 36).length
        require idx < ('cd', 4).length
        sub_8af72383[cd[((32 * idx) + cd[4] + 36)] << 240] = cd[((32 * idx) + cd[36] + 36)]
        require idx < ('cd', 68).length
        require idx < ('cd', 4).length
        sub_14e31e4e[cd[((32 * idx) + cd[4] + 36)] << 240] = cd[((32 * idx) + cd[68] + 36)]
        require idx < ('cd', 100).length
        require idx < ('cd', 4).length
        mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 19
        sub_ca282433[cd[((32 * idx) + cd[4] + 36)] << 240] = cd[((32 * idx) + cd[100] + 36)]
        idx = idx + 1
        continue 
}



}
