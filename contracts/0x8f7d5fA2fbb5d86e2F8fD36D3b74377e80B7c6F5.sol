contract main {




// =====================  Runtime code  =====================


address owner;
array of uint256 stor1;
address sub_9de2e1cbAddress;
address sub_9e7cfd49Address;
address sub_7e222661Address;
mapping of struct tokenInfos;
mapping of uint64 nonce;
mapping of uint8 sub_5c5eddee;
mapping of uint8 sub_2ae0ec06;
mapping of uint256 sub_4e5c9bde;
uint16 sub_f3a0e00d;
array of struct stor11;
uint16 MAX_SLOTS;
mapping of uint256 sub_8af72383;
mapping of uint256 sub_ca282433;
mapping of uint256 sub_14e31e4e;
uint256 stor16;

function sub_14e31e4e(?) {
    require calldata.size - 4 >= 32
    return sub_14e31e4e[arg1]
}

function sub_2ae0ec06(?) {
    require calldata.size - 4 >= 32
    return sub_2ae0ec06[arg1]
}

function getNonce(address arg1) {
    require calldata.size - 4 >= 32
    return nonce[address(arg1)]
}

function sub_4e5c9bde(?) {
    require calldata.size - 4 >= 32
    return sub_4e5c9bde[address(arg1)]
}

function sub_5c5eddee(?) {
    require calldata.size - 4 >= 32
    return sub_5c5eddee[arg1]
}

function tokenInfos(uint256 arg1) {
    require calldata.size - 4 >= 32
    return tokenInfos[arg1].field_0
}

function sub_7e222661(?) {
    return sub_7e222661Address
}

function sub_8af72383(?) {
    require calldata.size - 4 >= 32
    return sub_8af72383[stor8[address(arg1)]]
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
    return sub_4e5c9bde[arg1]
}

function MAX_SLOTS() {
    return MAX_SLOTS
}

function sub_ca282433(?) {
    require calldata.size - 4 >= 32
    return sub_ca282433[stor8[address(arg1)] - 1 << 248]
}

function sub_d44dfa18(?) {
    require calldata.size - 4 >= 32
    return sub_8af72383[arg1]
}

function startTimestamp() {
    return stor1.length
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
    require block.timestamp >= stor1.length
    require stor16
    return ((block.timestamp - stor1.length / stor16) + 1)
}

function sub_5562fbe6(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    MAX_SLOTS = arg1
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_f3e185d9(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_9de2e1cbAddress = arg1
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

function sub_8ee05396(?) {
    require calldata.size - 4 >= 32
    require block.timestamp >= stor1.length
    require stor16
    if sub_4e5c9bde[address(arg1)] <= (block.timestamp - stor1.length / stor16) + 1:
        return 0
    return (sub_4e5c9bde[address(arg1)] + -(block.timestamp - stor1.length / stor16) - 1)
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

function sub_13ae9059(?) {
    require calldata.size - 4 >= 32
    require block.timestamp >= stor1.length
    require stor16
    if sub_4e5c9bde[address(arg1)] >= (block.timestamp - stor1.length / stor16) + 1:
        revert with 0, 'Upgrade in progress'
    require sub_2ae0ec06[address(arg1)] < MAX_SLOTS
    require block.timestamp >= stor1.length
    require stor16
    sub_4e5c9bde[address(arg1)] = (block.timestamp - stor1.length / stor16) + sub_14e31e4e[stor8[address(arg1)]] + 1
    sub_2ae0ec06[address(arg1)] = uint8(sub_2ae0ec06[address(arg1)] + 1)
}

function sub_6d658624(?) payable {
    require calldata.size - 4 >= 32
    require block.timestamp >= stor1.length
    require stor16
    require sub_4e5c9bde[address(arg1)] > (block.timestamp - stor1.length / stor16) + 1
    call this.address with:
       value sub_ca282433[stor8[address(arg1)] - 1 << 248] wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require block.timestamp >= stor1.length
    require stor16
    require block.timestamp >= stor1.length
    require stor16
    if sub_4e5c9bde[address(arg1)] <= (block.timestamp - stor1.length / stor16) + 1:
        sub_4e5c9bde[address(arg1)] = (block.timestamp - stor1.length / stor16) + 1
    else:
        sub_4e5c9bde[address(arg1)] = (block.timestamp - stor1.length / stor16) + (sub_4e5c9bde[address(arg1)] + -(block.timestamp - stor1.length / stor16) - 1 / 2) + 1
}

function tokenFallback(address arg1, uint256 arg2, bytes arg3) {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    require ext_code.size(sub_9de2e1cbAddress)
    call sub_9de2e1cbAddress.0x42966c68 with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require arg2 >= sub_8af72383[stor8[address(arg1)]]
    require block.timestamp >= stor1.length
    require stor16
    if sub_4e5c9bde[address(arg1)] >= (block.timestamp - stor1.length / stor16) + 1:
        revert with 0, 'Upgrade in progress'
    require sub_2ae0ec06[address(arg1)] < MAX_SLOTS
    require block.timestamp >= stor1.length
    require stor16
    sub_4e5c9bde[address(arg1)] = (block.timestamp - stor1.length / stor16) + sub_14e31e4e[stor8[address(arg1)]] + 1
    sub_2ae0ec06[address(arg1)] = uint8(sub_2ae0ec06[address(arg1)] + 1)
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
        mem[32] = 14
        sub_ca282433[cd[((32 * idx) + cd[4] + 36)] << 240] = cd[((32 * idx) + cd[100] + 36)]
        idx = idx + 1
        continue 
}

function sub_e190febc(?) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    if arg1.length < 32:
        revert with 0, 'toUint256_outOfBounds'
    require 32 <= arg1.length
    require arg1.length <= arg1.length
    mem[ceil32(arg1.length) + 260] = arg1.length - 32
    mem[ceil32(arg1.length) + 292 len arg1.length - 32] = call.data[arg1 + 68 len arg1.length - 32]
    mem[ceil32(arg1.length) + arg1.length + 260] = 0
    require ext_code.size(sub_7e222661Address)
    staticcall sub_7e222661Address.0xe3fa56e6 with:
            gas gas_remaining wei
           args mem[128], nonce[address(msg.sender)], msg.sender, 128, mem[ceil32(arg1.length) + 260 len floor32(arg1.length - 1) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require ext_code.size(sub_9de2e1cbAddress)
    call sub_9de2e1cbAddress.mint(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args msg.sender, mem[128]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    nonce[address(msg.sender)] = uint64(nonce[address(msg.sender)] + 1)
    require block.timestamp >= stor1.length
    require stor16
    emit RewardsClaimed(address rg1, uint256 rg2, uint256 rg3):
                        0,
                        Mask(224, 0, msg.sender),
                        mem[128],
                        (block.timestamp - stor1.length / stor16) + 1,
}

function onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    require sub_9e7cfd49Address == msg.sender
    tokenInfos[arg3].field_0 = arg2
    require block.timestamp >= stor1.length
    require stor16
    require block.timestamp >= stor1.length
    require stor16
    if sub_4e5c9bde[address(arg2)] <= (block.timestamp - stor1.length / stor16) + 1:
        if sub_5c5eddee[address(arg2)] >= uint8(sub_2ae0ec06[address(arg2)] + 1):
            revert with 0, 'noslots'
    else:
        if sub_5c5eddee[address(arg2)] >= sub_2ae0ec06[address(arg2)]:
            revert with 0, 'noslots'
    stor11[address(arg2)].field_0++
    stor11[address(arg2)][stor11[address(arg2)].field_0].field_0 = arg3
    sub_5c5eddee[address(arg2)] = uint8(sub_5c5eddee[address(arg2)] + 1)
    sub_f3a0e00d = uint16(sub_f3a0e00d + 1)
    if not stor11[address(arg2)].field_0:
        emit 0x3ddc376f: address(arg2), arg3, (block.timestamp - stor1.length / stor16) + 1, 128, stor11[address(arg2)].field_0
    else:
        mem[288] = stor11[address(arg2)].field_0
        idx = 288
        s = 0
        while (32 * stor11[address(arg2)].field_0) + 288 > idx + 32:
            mem[idx + 32] = stor11[address(arg2)][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        emit 0x3ddc376f: address(arg2), arg3, (block.timestamp - stor1.length / stor16) + 1, Array(len=stor11[address(arg2)].field_0, data=mem[288 len 32 * stor11[address(arg2)].field_0])
    return 0x150b7a0200000000000000000000000000000000000000000000000000000000
}

function sub_29d3bc3a(?) {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    require tokenInfos[arg1].field_0 == msg.sender
    tokenInfos[arg1].field_0 = 0
    tokenInfos[arg1].field_256 = 0
    require ext_code.size(sub_9e7cfd49Address)
    call sub_9e7cfd49Address.0x23b872dd with:
         gas gas_remaining wei
        args address(this.address), tokenInfos[arg1].field_0, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require block.timestamp >= stor1.length
    require stor16
    idx = 0
    while idx < sub_5c5eddee[stor5[arg1].field_0]:
        mem[0] = arg1
        mem[32] = 5
        if tokenInfos[arg1].field_0 != tokenInfos[arg1].field_0:
            idx = idx + 1
            continue 
        require sub_5c5eddee[stor5[arg1].field_0] - 1 < stor11[stor5[arg1].field_0].field_0
        require idx < stor11[stor5[arg1].field_0].field_0
        stor11[stor5[arg1].field_0][idx].field_0 = stor11[stor5[arg1].field_0][stor7[stor5[arg1].field_0]].field_0
        require stor11[stor5[arg1].field_0].field_0
        stor11[stor5[arg1].field_0][stor11[stor5[arg1].field_0].field_0].field_0 = 0
        stor11[stor5[arg1].field_0].field_0--
        sub_5c5eddee[stor5[arg1].field_0] = uint8(sub_5c5eddee[stor5[arg1].field_0] - 1)
        sub_f3a0e00d = uint16(sub_f3a0e00d - 1)
        if not stor11[stor5[arg1].field_0].field_0:
            emit 0x34be426d: tokenInfos[arg1].field_0, arg1, (block.timestamp - stor1.length / stor16) + 1, 128, stor11[stor5[arg1].field_0].field_0
        else:
            mem[320] = stor11[stor5[arg1].field_0].field_0
            idx = 320
            s = sha3(sha3(tokenInfos[arg1].field_0, 11))
            while (32 * stor11[stor5[arg1].field_0].field_0) + 320 > idx + 32:
                mem[idx + 32] = stor1[s]
                idx = idx + 32
                s = s + 1
                continue 
            emit 0x34be426d: tokenInfos[arg1].field_0, arg1, (block.timestamp - stor1.length / stor16) + 1, Array(len=stor11[stor5[arg1].field_0].field_0, data=mem[320 len 32 * stor11[stor5[arg1].field_0].field_0])
    require sub_5c5eddee[stor5[arg1].field_0] - 1 < stor11[stor5[arg1].field_0].field_0
    require 0 < stor11[stor5[arg1].field_0].field_0
    stor11[stor5[arg1].field_0].field_0 = stor11[stor5[arg1].field_0][stor7[stor5[arg1].field_0]].field_0
    require stor11[stor5[arg1].field_0].field_0
    stor11[stor5[arg1].field_0][stor11[stor5[arg1].field_0].field_0].field_0 = 0
    stor11[stor5[arg1].field_0].field_0--
    sub_5c5eddee[stor5[arg1].field_0] = uint8(sub_5c5eddee[stor5[arg1].field_0] - 1)
    sub_f3a0e00d = uint16(sub_f3a0e00d - 1)
    if not stor11[stor5[arg1].field_0].field_0:
        emit 0x34be426d: tokenInfos[arg1].field_0, arg1, (block.timestamp - stor1.length / stor16) + 1, 128, stor11[stor5[arg1].field_0].field_0
    else:
        mem[320] = stor11[stor5[arg1].field_0].field_0
        idx = 320
        s = 0
        while (32 * stor11[stor5[arg1].field_0].field_0) + 320 > idx + 32:
            mem[idx + 32] = stor11[stor5[arg1].field_0][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        emit 0x34be426d: tokenInfos[arg1].field_0, arg1, (block.timestamp - stor1.length / stor16) + 1, Array(len=stor11[stor5[arg1].field_0].field_0, data=mem[320 len 32 * stor11[stor5[arg1].field_0].field_0])
}



}
