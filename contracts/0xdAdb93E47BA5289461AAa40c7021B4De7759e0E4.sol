contract main {




// =====================  Runtime code  =====================


const sub_05c3af1f(?) = block.timestamp


mapping of uint8 stor0;
address tokenAddress;
array of struct sub_6b17995a;
mapping of struct investors;
mapping of uint8 stor4;
array of struct sub_a5c637f0;
uint256 sub_23c6d665;

function sub_23c6d665(?) {
    return sub_23c6d665
}

function sub_6b17995a(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < sub_6b17995a.length
    return sub_6b17995a[arg1].field_0, 
           sub_6b17995a[arg1].field_256,
           sub_6b17995a[arg1].field_512,
           bool(sub_6b17995a[arg1].field_768)
}

function investors(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return investors[arg1].field_0, investors[arg1].field_256, bool(investors[arg1].field_512)
}

function sub_a5c637f0(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg2 < sub_a5c637f0[arg1].field_0
    return sub_a5c637f0[arg1][arg2].field_0, 
           sub_a5c637f0[arg1][arg2].field_256,
           sub_a5c637f0[arg1][arg2].field_512,
           sub_a5c637f0[arg1][arg2].field_768,
           sub_a5c637f0[arg1][arg2].field_1024,
           sub_a5c637f0[arg1][arg2].field_1280,
           sub_a5c637f0[arg1][arg2].field_1536,
           sub_a5c637f0[arg1][arg2].field_1792
}

function hasStaked(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor4[arg1])
}

function sub_e63f503d(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_a5c637f0[address(arg1)].field_0
}

function isManager(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor0[address(arg1)])
}

function token() {
    return tokenAddress
}

function managers(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor0[arg1])
}

function _fallback() payable {
    revert
}

function sub_76d6ad08(?) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg2 and 24 * 3600 > -1 / arg2:
        revert with 'NH{q', 17
    if arg1 > (-86400 * arg2) - 1:
        revert with 'NH{q', 17
    return block.timestamp >= arg1 + (24 * 3600 * arg2)
}

function setManager(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor0[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only Manager can call this function.'
    stor0[address(arg1)] = 1
    emit 0xbd4b4e12: arg1
}

function unsetManager(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor0[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only Manager can call this function.'
    require stor0[address(arg1)]
    stor0[address(arg1)] = 0
}

function sub_9edc1a4e(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not stor0[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only Manager can call this function.'
    sub_6b17995a.length++
    sub_6b17995a[sub_6b17995a.length].field_0 = sub_6b17995a.length
    sub_6b17995a[sub_6b17995a.length].field_256 = arg1
    sub_6b17995a[sub_6b17995a.length].field_512 = arg2
    sub_6b17995a[sub_6b17995a.length].field_768 = 1
    emit 0x9643f61d: sub_6b17995a.length, arg1, arg2, 1
}

function sub_fb35f30c(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor0[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only Manager can call this function.'
    idx = 0
    while idx < sub_6b17995a.length:
        mem[0] = 2
        if sub_6b17995a[idx].field_0 == arg1:
            if idx >= sub_6b17995a.length:
                revert with 'NH{q', 50
            mem[0] = 2
            sub_6b17995a[idx].field_768 = not bool(sub_6b17995a[idx].field_768) or Mask(248, 8, sub_6b17995a[idx].field_768)
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_92a117eb(?) {
    mem[64] = (32 * sub_6b17995a.length) + 128
    mem[96] = sub_6b17995a.length
    s = 128
    idx = 0
    while idx < sub_6b17995a.length:
        mem[0] = 2
        _13 = mem[64]
        mem[64] = mem[64] + 128
        mem[_13] = sub_6b17995a[idx].field_0
        mem[_13 + 32] = sub_6b17995a[idx].field_256
        mem[_13 + 64] = sub_6b17995a[idx].field_512
        mem[_13 + 96] = bool(sub_6b17995a[idx].field_768)
        mem[s] = _13
        s = s + 32
        idx = idx + 1
        continue 
    _14 = mem[64]
    mem[mem[64]] = 32
    _15 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _15:
        _22 = mem[s]
        mem[t] = mem[mem[s]]
        mem[t + 32] = mem[_22 + 32]
        mem[t + 64] = mem[_22 + 64]
        mem[t + 96] = bool(mem[_22 + 96])
        idx = idx + 1
        s = s + 32
        t = t + 128
        continue 
    return memory
      from mem[64]
       len _14 + (128 * _15) + -mem[64] + 64
}

function sub_739f892e(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not stor0[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only Manager can call this function.'
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    emit 0x4290c2aa: address(arg1), ext_call.return_data[0]
    call address(arg1) with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with 0, 'Failed to send ether'
    emit 0x136ca9f2: address(arg1), eth.balance(this.address)
}

function sub_154b6b3a(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    mem[0] = address(arg1)
    mem[32] = 5
    mem[64] = (32 * sub_a5c637f0[address(arg1)].field_0) + 128
    mem[96] = sub_a5c637f0[address(arg1)].field_0
    s = 128
    idx = 0
    while idx < sub_a5c637f0[address(arg1)].field_0:
        mem[0] = sha3(address(arg1), 5)
        _18 = mem[64]
        mem[64] = mem[64] + 256
        mem[_18] = sub_a5c637f0[address(arg1)][idx].field_0
        mem[_18 + 32] = sub_a5c637f0[address(arg1)][idx].field_256
        mem[_18 + 64] = sub_a5c637f0[address(arg1)][idx].field_512
        mem[_18 + 96] = sub_a5c637f0[address(arg1)][idx].field_768
        mem[_18 + 128] = sub_a5c637f0[address(arg1)][idx].field_1024
        mem[_18 + 160] = sub_a5c637f0[address(arg1)][idx].field_1280
        mem[_18 + 192] = sub_a5c637f0[address(arg1)][idx].field_1536
        mem[_18 + 224] = sub_a5c637f0[address(arg1)][idx].field_1792
        mem[s] = _18
        s = s + 32
        idx = idx + 1
        continue 
    _19 = mem[64]
    mem[mem[64]] = 32
    _20 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _20:
        _31 = mem[s]
        mem[t] = mem[mem[s]]
        mem[t + 32] = mem[_31 + 32]
        mem[t + 64] = mem[_31 + 76 len 20]
        mem[t + 96] = mem[_31 + 96]
        mem[t + 128] = mem[_31 + 128]
        mem[t + 160] = mem[_31 + 160]
        mem[t + 192] = mem[_31 + 192]
        mem[t + 224] = mem[_31 + 224]
        idx = idx + 1
        s = s + 32
        t = t + 256
        continue 
    return memory
      from mem[64]
       len _19 + (256 * _20) + -mem[64] + 64
}

function sub_87fe0784(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 >= sub_a5c637f0[address(msg.sender)].field_0:
        revert with 'NH{q', 50
    if sub_a5c637f0[address(msg.sender)][arg1].field_1792:
        revert with 0, 'Stake has already been completed'
    if sub_a5c637f0[address(msg.sender)][arg1].field_512 != msg.sender:
        revert with 0, 'Not Your Stake'
    if sub_a5c637f0[address(msg.sender)][arg1].field_1536 and 24 * 3600 > -1 / sub_a5c637f0[address(msg.sender)][arg1].field_1536:
        revert with 'NH{q', 17
    if sub_a5c637f0[address(msg.sender)][arg1].field_1280 > (-86400 * sub_a5c637f0[address(msg.sender)][arg1].field_1536) - 1:
        revert with 'NH{q', 17
    if block.timestamp < sub_a5c637f0[address(msg.sender)][arg1].field_1280 + (24 * 3600 * sub_a5c637f0[address(msg.sender)][arg1].field_1536):
        revert with 0, 'Days have not expired yet'
    if sub_a5c637f0[address(msg.sender)][arg1].field_768 > -sub_a5c637f0[address(msg.sender)][arg1].field_1024 - 1:
        revert with 'NH{q', 17
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, sub_a5c637f0[address(msg.sender)][arg1].field_768 + sub_a5c637f0[address(msg.sender)][arg1].field_1024
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    sub_a5c637f0[address(msg.sender)][arg1].field_1792 = 1
    if sub_23c6d665 < sub_a5c637f0[address(msg.sender)][arg1].field_768 + sub_a5c637f0[address(msg.sender)][arg1].field_1024:
        revert with 'NH{q', 17
    sub_23c6d665 = sub_23c6d665 - sub_a5c637f0[address(msg.sender)][arg1].field_768 - sub_a5c637f0[address(msg.sender)][arg1].field_1024
    if not investors[address(msg.sender)].field_512:
        revert with 0, 'Investor does not exist!'
    if investors[address(msg.sender)].field_256 < sub_a5c637f0[address(msg.sender)][arg1].field_768 + sub_a5c637f0[address(msg.sender)][arg1].field_1024:
        revert with 0, 'Not enough balance'
    if investors[address(msg.sender)].field_256 < sub_a5c637f0[address(msg.sender)][arg1].field_768 + sub_a5c637f0[address(msg.sender)][arg1].field_1024:
        revert with 'NH{q', 17
    investors[address(msg.sender)].field_0 = msg.sender
    investors[address(msg.sender)].field_256 = investors[address(msg.sender)].field_256 - sub_a5c637f0[address(msg.sender)][arg1].field_768 - sub_a5c637f0[address(msg.sender)][arg1].field_1024
    investors[address(msg.sender)].field_512 = 1
    emit WithdrawEvent(msg.sender, sub_a5c637f0[address(msg.sender)][arg1].field_768 + sub_a5c637f0[address(msg.sender)][arg1].field_1024);
}

function stakeTokens(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg1 <= 0:
        revert with 0, 'Amount can not be 0'
    if arg2 >= sub_6b17995a.length:
        revert with 'NH{q', 50
    if arg1 / 100 and sub_6b17995a[arg2].field_512 > -1 / arg1 / 100:
        revert with 'NH{q', 17
    if arg1 / 100 * sub_6b17995a[arg2].field_512 / 365 and sub_6b17995a[arg2].field_256 > -1 / arg1 / 100 * sub_6b17995a[arg2].field_512 / 365:
        revert with 'NH{q', 17
    if arg1 > (-1 * arg1 / 100 * sub_6b17995a[arg2].field_512 / 365 * sub_6b17995a[arg2].field_256) - 1:
        revert with 'NH{q', 17
    if not sub_6b17995a[arg2].field_768:
        revert with 0, 'Stake plan is not active for use'
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < sub_23c6d665:
        revert with 'NH{q', 17
    if ext_call.return_data[0] - sub_23c6d665 <= arg1 + (arg1 / 100 * sub_6b17995a[arg2].field_512 / 365 * sub_6b17995a[arg2].field_256):
        revert with 0, 'Not enough tokens on Plant Starter to ensure reward. Please try again in a while.'
    require ext_code.size(tokenAddress)
    call tokenAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    sub_a5c637f0[address(msg.sender)].field_0++
    sub_a5c637f0[address(msg.sender)][sub_a5c637f0[address(msg.sender)].field_0].field_0 = sub_a5c637f0[address(msg.sender)].field_0
    sub_a5c637f0[address(msg.sender)][sub_a5c637f0[address(msg.sender)].field_0].field_256 = arg2
    sub_a5c637f0[address(msg.sender)][sub_a5c637f0[address(msg.sender)].field_0].field_512 = msg.sender
    sub_a5c637f0[address(msg.sender)][sub_a5c637f0[address(msg.sender)].field_0].field_768 = arg1
    sub_a5c637f0[address(msg.sender)][sub_a5c637f0[address(msg.sender)].field_0].field_1024 = arg1 / 100 * sub_6b17995a[arg2].field_512 / 365 * sub_6b17995a[arg2].field_256
    sub_a5c637f0[address(msg.sender)][sub_a5c637f0[address(msg.sender)].field_0].field_1280 = block.timestamp
    sub_a5c637f0[address(msg.sender)][sub_a5c637f0[address(msg.sender)].field_0].field_1536 = sub_6b17995a[arg2].field_256
    sub_a5c637f0[address(msg.sender)][sub_a5c637f0[address(msg.sender)].field_0].field_1792 = 0
    if not investors[address(msg.sender)].field_512:
        investors[address(msg.sender)].field_0 = msg.sender
        investors[address(msg.sender)].field_256 = arg1 + (arg1 / 100 * sub_6b17995a[arg2].field_512 / 365 * sub_6b17995a[arg2].field_256)
    else:
        if arg1 + (arg1 / 100 * sub_6b17995a[arg2].field_512 / 365 * sub_6b17995a[arg2].field_256) > -investors[address(msg.sender)].field_256 - 1:
            revert with 'NH{q', 17
        investors[address(msg.sender)].field_0 = msg.sender
        investors[address(msg.sender)].field_256 = arg1 + (arg1 / 100 * sub_6b17995a[arg2].field_512 / 365 * sub_6b17995a[arg2].field_256) + investors[address(msg.sender)].field_256
    investors[address(msg.sender)].field_512 = 1
    emit 0x5f41f00e: msg.sender, arg1 + (arg1 / 100 * sub_6b17995a[arg2].field_512 / 365 * sub_6b17995a[arg2].field_256)
    if sub_23c6d665 > -arg1 + (-1 * arg1 / 100 * sub_6b17995a[arg2].field_512 / 365 * sub_6b17995a[arg2].field_256) - 1:
        revert with 'NH{q', 17
    sub_23c6d665 = sub_23c6d665 + arg1 + (arg1 / 100 * sub_6b17995a[arg2].field_512 / 365 * sub_6b17995a[arg2].field_256)
    stor4[address(msg.sender)] = 1
}



}
