contract main {




// =====================  Runtime code  =====================


address owner;
array of struct stor1;
address mimAddress;
address daiAddress;
address sub_11dc99b3Address;
uint256 sub_38771754;
uint256 sub_b17253e6;
uint256 sub_e230fbe7;
uint256 sub_7bb501ec;
uint256 saleDuration;
uint256 sub_49a433a2;
uint256 sub_93c7c04e;
uint256 startingPrice;
uint256 sub_bc4c3bb3;
uint256 sub_8b65be08;
uint256 totalInvestors;
uint8 stor16;
uint8 stor16; offset 8
mapping of struct sub_f703f36f;
array of address investorList;

function sub_11dc99b3(?) {
    return sub_11dc99b3Address
}

function investorList(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < investorList.length
    return investorList[arg1]
}

function totalInvestors() {
    return totalInvestors
}

function daiAddress() {
    return daiAddress
}

function saleDuration() {
    return saleDuration
}

function sub_38771754(?) {
    return sub_38771754
}

function sub_49a433a2(?) {
    return sub_49a433a2
}

function saleEnabled() {
    return bool(uint8(stor16.field_0))
}

function sub_7bb501ec(?) {
    return sub_7bb501ec
}

function sub_8b65be08(?) {
    return sub_8b65be08
}

function owner() {
    return owner
}

function sub_93c7c04e(?) {
    return sub_93c7c04e
}

function sub_b17253e6(?) {
    return sub_b17253e6
}

function finalized() {
    return bool(uint8(stor16.field_8))
}

function sub_bc4c3bb3(?) {
    return sub_bc4c3bb3
}

function mimAddress() {
    return mimAddress
}

function startingPrice() {
    return startingPrice
}

function sub_e230fbe7(?) {
    return sub_e230fbe7
}

function sub_f703f36f(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_f703f36f[arg1].field_0, 
           sub_f703f36f[arg1].field_256,
           sub_f703f36f[arg1].field_512,
           bool(sub_f703f36f[arg1].field_1024)
}

function _fallback() payable {
    revert
}

function hasSaleEnded() {
    if sub_7bb501ec > -saleDuration - 1:
        revert with 'NH{q', 17
    return (block.timestamp > sub_7bb501ec + saleDuration)
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function enableSale() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint8(stor16.field_0) = 1
    emit 0x20b56eb5: 1, block.timestamp
}

function disableSale() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint8(stor16.field_0) = 0
    emit 0x20b56eb5: 0, block.timestamp
}

function sub_e18f407b(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_e230fbe7 = arg1
}

function sub_9f4f5358(?) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_38771754 = arg2
    sub_b17253e6 = arg1
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

function changeStartTime(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 <= block.timestamp:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Start time must be in the future.'
    sub_7bb501ec = arg1
    if arg1 > -saleDuration - 1:
        revert with 'NH{q', 17
    sub_49a433a2 = arg1 + saleDuration
}

function sub_26a18e67(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(address(arg1))
    call address(arg1).0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Failed to transfer Tokens from Contract to Treasury'
}

function invest(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg2 != mimAddress:
        if arg2 != daiAddress:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Token Not Supported By Launch Allocator'
    if sub_7bb501ec > -saleDuration - 1:
        revert with 'NH{q', 17
    if block.timestamp > sub_7bb501ec + saleDuration:
        revert with 0, 'Sale period has ended'
    if not uint8(stor16.field_0):
        revert with 0, 'Sale is not enabled yet'
    if block.timestamp < sub_7bb501ec:
        revert with 0, 'Sale has not started yet'
    if arg1 < sub_b17253e6:
        revert with 0, 'Invest amount too small'
    if sub_e230fbe7 > -(sub_e230fbe7 / 10000) - 1:
        revert with 'NH{q', 17
    if sub_bc4c3bb3 > -arg1 - 1:
        revert with 'NH{q', 17
    if sub_bc4c3bb3 + arg1 > sub_e230fbe7 + (sub_e230fbe7 / 10000):
        revert with 0, 'Maximum Investments reached'
    if sub_f703f36f[address(msg.sender)].field_1024:
        revert with 0, 'Commitment Already Made'
    if sub_f703f36f[address(msg.sender)].field_0 > -arg1 - 1:
        revert with 'NH{q', 17
    if sub_f703f36f[address(msg.sender)].field_0 + arg1 > sub_38771754:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Max individual investment reached'
    require ext_code.size(arg2)
    call arg2.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Failed to transfer Token to Treasury'
    if not sub_f703f36f[address(msg.sender)].field_0:
        if totalInvestors > -2:
            revert with 'NH{q', 17
        totalInvestors++
        investorList.length++
        investorList[investorList.length] = msg.sender
    if sub_f703f36f[address(msg.sender)].field_512 > -arg1 - 1:
        revert with 'NH{q', 17
    sub_f703f36f[address(msg.sender)].field_512 += arg1
    if sub_f703f36f[address(msg.sender)].field_0 > -arg1 - 1:
        revert with 'NH{q', 17
    sub_f703f36f[address(msg.sender)].field_0 += arg1
    if sub_bc4c3bb3 > -arg1 - 1:
        revert with 'NH{q', 17
    sub_bc4c3bb3 += arg1
    if not startingPrice:
        revert with 'NH{q', 18
    if arg1 / startingPrice and 10^18 > -1 / arg1 / startingPrice:
        revert with 'NH{q', 17
    require ext_code.size(sub_11dc99b3Address)
    call sub_11dc99b3Address.issue(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, 10^18 * arg1 / startingPrice
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x3a4841c3: msg.sender, 10^18 * arg1 / startingPrice
    emit Invest(msg.sender, arg1, sub_bc4c3bb3, startingPrice);
}

function name() {
    if bool(stor1.length):
        if bool(stor1.length) == stor1.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor1.length):
            if bool(stor1.length) == stor1.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor1.length.field_1:
                if 31 < stor1.length.field_1:
                    mem[128] = uint256(stor1.field_0)
                    idx = 128
                    s = 0
                    while stor1.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor1[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor1.length.field_1), data=mem[128 len ceil32(stor1.length.field_1)])
                mem[128] = 256 * stor1.length.field_8
        else:
            if bool(stor1.length) == stor1.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor1.length.field_1:
                if 31 < stor1.length.field_1:
                    mem[128] = uint256(stor1.field_0)
                    idx = 128
                    s = 0
                    while stor1.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor1[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor1.length.field_1), data=mem[128 len ceil32(stor1.length.field_1)])
                mem[128] = 256 * stor1.length.field_8
        mem[ceil32(stor1.length.field_1) + 192 len ceil32(stor1.length.field_1)] = mem[128 len ceil32(stor1.length.field_1)]
        if ceil32(stor1.length.field_1) > stor1.length.field_1:
            mem[ceil32(stor1.length.field_1) + stor1.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor1.length.field_1), data=mem[128 len ceil32(stor1.length.field_1)], mem[(2 * ceil32(stor1.length.field_1)) + 192 len 2 * ceil32(stor1.length.field_1)]), 
    if bool(stor1.length) == stor1.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor1.length):
        if bool(stor1.length) == stor1.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor1.length.field_1:
            if 31 < stor1.length.field_1:
                mem[128] = uint256(stor1.field_0)
                idx = 128
                s = 0
                while stor1.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor1[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1)])
            mem[128] = 256 * stor1.length.field_8
    else:
        if bool(stor1.length) == stor1.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor1.length.field_1:
            if 31 < stor1.length.field_1:
                mem[128] = uint256(stor1.field_0)
                idx = 128
                s = 0
                while stor1.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor1[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1)])
            mem[128] = 256 * stor1.length.field_8
    mem[ceil32(stor1.length.field_1) + 192 len ceil32(stor1.length.field_1)] = mem[128 len ceil32(stor1.length.field_1)]
    if ceil32(stor1.length.field_1) > stor1.length.field_1:
        mem[ceil32(stor1.length.field_1) + stor1.length.field_1 + 192] = 0
    return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1)], mem[(2 * ceil32(stor1.length.field_1)) + 192 len 2 * ceil32(stor1.length.field_1)]), 
}



}
