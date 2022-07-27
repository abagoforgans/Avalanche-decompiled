contract main {




// =====================  Runtime code  =====================


#
#  - sub_f423f19a(?)
#
address owner;
uint256 sub_22145307;
address stor2;
mapping of uint8 stor3;
mapping of uint256 stor4;
mapping of uint256 stor5;
mapping of uint8 stor6;
mapping of struct sub_fcd0473b;
array of struct stor9;
mapping of struct stor10;
uint256 sub_4defdb9b;
uint256 sub_98493ce6;
uint256 sub_c553b94c;
address stor14;

function sub_22145307(?) {
    return sub_22145307
}

function sub_4defdb9b(?) {
    return sub_4defdb9b
}

function owner() {
    return owner
}

function sub_98493ce6(?) {
    return sub_98493ce6
}

function sub_c553b94c(?) {
    return sub_c553b94c
}

function sub_fcd0473b(?) {
    require calldata.size - 4 >= 32
    return sub_fcd0473b[arg1].field_0, 
           sub_fcd0473b[arg1].field_256,
           sub_fcd0473b[arg1].field_512,
           sub_fcd0473b[arg1].field_768,
           sub_fcd0473b[arg1].field_1024
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function updateFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_22145307 = arg1
}

function updateFeeReceiver(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor2 = arg1
}

function sub_db25787e(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if not stor5[address(arg1)][address(arg2)]:
        return 0
    return 1
}

function sub_91284c06(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_fcd0473b[arg1].field_1024 = 0
    emit CooldownStopped(sub_fcd0473b[arg1].field_256);
}

function sub_fbdff1df(?) {
    require calldata.size - 4 >= 32
    if bool(stor3[msg.sender]) != 1:
        revert with 0, 'Caller is not registered'
    if sub_fcd0473b[arg1].field_0 != msg.sender:
        revert with 0, 'This is not your token'
    stor6[arg1] = 1
}

function sub_e0977bcb(?) {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call stor2 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_900d74e1(?) {
    require calldata.size - 4 >= 32
    if bool(stor3[msg.sender]) != 1:
        revert with 0, 'Caller is not registered'
    if sub_fcd0473b[arg1].field_0 != msg.sender:
        revert with 0, 'This is not your token'
    sub_fcd0473b[arg1].field_1024 = 0
    emit CooldownStopped(sub_fcd0473b[arg1].field_256);
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

function startCooldown(uint256 arg1) {
    require calldata.size - 4 >= 32
    if bool(stor3[msg.sender]) != 1:
        revert with 0, 'Caller is not registered'
    if sub_fcd0473b[arg1].field_0 != msg.sender:
        revert with 0, 'This is not your token'
    if block.timestamp > !sub_c553b94c:
        revert with 0, 17
    sub_fcd0473b[arg1].field_1024 = block.timestamp + sub_c553b94c
    emit CooldownStarted(sub_fcd0473b[arg1].field_256, block.timestamp + sub_c553b94c);
}

function sub_9a78f75c(?) {
    require calldata.size - 4 >= 32
    if bool(stor3[msg.sender]) != 1:
        revert with 0, 'Caller is not registered'
    if sub_fcd0473b[arg1].field_0 != msg.sender:
        revert with 0, 'This is not your token'
    require ext_code.size(sub_fcd0473b[arg1].field_256)
    call sub_fcd0473b[arg1].field_256.0xa9059cbb with:
         gas gas_remaining wei
        args stor14, sub_fcd0473b[arg1].field_512
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    emit 0x46d2e691: sub_fcd0473b[arg1].field_256
}

function releaseToken(uint256 arg1) {
    require calldata.size - 4 >= 32
    if bool(stor3[msg.sender]) != 1:
        revert with 0, 'Caller is not registered'
    if sub_fcd0473b[arg1].field_0 != msg.sender:
        revert with 0, 'This is not your token'
    if sub_fcd0473b[arg1].field_1024 > block.timestamp:
        revert with 0, 'Must cooldown first'
    if not sub_fcd0473b[arg1].field_1024:
        revert with 0, 'Must cooldown first'
    require ext_code.size(sub_fcd0473b[arg1].field_256)
    call sub_fcd0473b[arg1].field_256.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, sub_fcd0473b[arg1].field_512
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    emit 0x547811ed: sub_fcd0473b[arg1].field_256, msg.sender
}

function sub_36c41121(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if stor9[address(arg1)].field_0:
        mem[128] = stor9[address(arg1)].field_0
        idx = 128
        s = 0
        while (32 * stor9[address(arg1)].field_0) + 96 > idx:
            mem[idx + 32] = stor9[address(arg1)][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        return Array(len=stor9[address(arg1)].field_0, data=mem[128 len 32 * stor9[address(arg1)].field_0])
    mem[(32 * stor9[address(arg1)].field_0) + 128] = 32
    mem[(32 * stor9[address(arg1)].field_0) + 160] = stor9[address(arg1)].field_0
    mem[(32 * stor9[address(arg1)].field_0) + 192 len 32 * stor9[address(arg1)].field_0] = mem[128 len 32 * stor9[address(arg1)].field_0]
    return memory
      from (32 * stor9[address(arg1)].field_0) + 128
       len (96 * stor9[address(arg1)].field_0) + 64
}

function addToken(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if bool(stor3[msg.sender]) != 1:
        revert with 0, 'Caller is not registered'
    mem[100] = msg.sender
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] and arg2 > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if sub_fcd0473b[stor5[msg.sender][address(arg1)]].field_512 > !(ext_call.return_data[0] * arg2 / 100):
        revert with 0, 17
    sub_fcd0473b[stor5[msg.sender][address(arg1)]].field_512 += ext_call.return_data[0] * arg2 / 100
    require ext_code.size(arg1)
    staticcall arg1.0x18160ddd with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if sub_fcd0473b[stor5[msg.sender][address(arg1)]].field_512 and ext_call.return_data[0] > -1 / sub_fcd0473b[stor5[msg.sender][address(arg1)]].field_512:
        revert with 0, 17
    sub_fcd0473b[stor5[msg.sender][address(arg1)]].field_768 = sub_fcd0473b[stor5[msg.sender][address(arg1)]].field_512 * ext_call.return_data[0] / 100
    mem[(2 * ceil32(return_data.size)) + 100] = msg.sender
    mem[(2 * ceil32(return_data.size)) + 132] = this.address
    require ext_code.size(arg1)
    staticcall arg1.0xdd62ed3e with:
            gas gas_remaining wei
           args msg.sender, this.address
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'Must approve locker first!'
    mem[(4 * ceil32(return_data.size)) + 132] = msg.sender
    mem[(4 * ceil32(return_data.size)) + 164] = this.address
    mem[(4 * ceil32(return_data.size)) + 196] = ext_call.return_data[0] * arg2 / 100
    mem[(4 * ceil32(return_data.size)) + 96] = 100
    mem[(4 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[(4 * ceil32(return_data.size)) + 128 len 4] = unknown_0x23b872dd(?????)
    mem[(4 * ceil32(return_data.size)) + 228] = 32
    mem[(4 * ceil32(return_data.size)) + 260] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(arg1):
        revert with 0, 'Address: call to non-contract'
    mem[(4 * ceil32(return_data.size)) + 292 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), ext_call.return_data[0] * arg2 / 100, 0
    mem[(4 * ceil32(return_data.size)) + 392] = 0
    call arg1 with:
       funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, address(this.address), ext_call.return_data[0] * arg2 / 100, 0) >> 224
         gas gas_remaining wei
        args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, address(this.address), ext_call.return_data[0] * arg2 / 100, 0) << 544)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require uint32(msg.sender), mem[132 len 28] == bool(uint32(msg.sender), mem[132 len 28])
            if not uint32(msg.sender), mem[132 len 28]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[(4 * ceil32(return_data.size)) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[(4 * ceil32(return_data.size)) + 324] == bool(mem[(4 * ceil32(return_data.size)) + 324])
            if not mem[(4 * ceil32(return_data.size)) + 324]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
}

function sub_4918f44e(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if msg.value < sub_22145307:
        revert with 0, 'Insufficient payment'
    if stor5[address(msg.sender)][address(arg1)]:
        revert with 0, 'This token is already locked'
    if not stor3[msg.sender]:
        stor3[msg.sender] = 1
        stor4[msg.sender] = sub_98493ce6
        if 1 > !sub_98493ce6:
            revert with 0, 17
        sub_98493ce6++
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x18160ddd with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 100] = msg.sender
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] and arg2 > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if ext_call.return_data[0] * arg2 / 100 and ext_call.return_data[0] > -1 / ext_call.return_data[0] * arg2 / 100:
        revert with 0, 17
    stor5[msg.sender][address(arg1)] = sub_4defdb9b
    if sub_fcd0473b[stor11].field_256:
        revert with 0, 'Token already locked'
    sub_fcd0473b[stor11].field_0 = msg.sender or Mask(96, 160, sub_fcd0473b[stor11].field_0)
    sub_fcd0473b[stor11].field_256 = address(arg1)
    sub_fcd0473b[stor11].field_512 = ext_call.return_data[0] * arg2 / 100
    sub_fcd0473b[stor11].field_768 = ext_call.return_data[0] * arg2 / 100 * ext_call.return_data[0] / 100
    sub_fcd0473b[stor11].field_1024 = 0
    stor9[msg.sender].field_0++
    stor9[msg.sender][stor9[msg.sender].field_0].field_0 = stor5[msg.sender][address(arg1)]
    stor10[stor5[msg.sender][address(arg1)]].field_0 = address(arg1)
    stor10[stor5[msg.sender][address(arg1)]].field_256 = stor5[msg.sender][address(arg1)]
    mem[(2 * ceil32(return_data.size)) + 100] = msg.sender
    mem[(2 * ceil32(return_data.size)) + 132] = this.address
    require ext_code.size(address(arg1))
    staticcall address(arg1).0xdd62ed3e with:
            gas gas_remaining wei
           args msg.sender, this.address
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'Must approve locker first!'
    mem[(4 * ceil32(return_data.size)) + 132] = msg.sender
    mem[(4 * ceil32(return_data.size)) + 164] = this.address
    mem[(4 * ceil32(return_data.size)) + 196] = ext_call.return_data[0] * arg2 / 100
    mem[(4 * ceil32(return_data.size)) + 96] = 100
    mem[(4 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[(4 * ceil32(return_data.size)) + 128 len 4] = unknown_0x23b872dd(?????)
    mem[(4 * ceil32(return_data.size)) + 228] = 32
    mem[(4 * ceil32(return_data.size)) + 260] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(address(arg1)):
        revert with 0, 'Address: call to non-contract'
    mem[(4 * ceil32(return_data.size)) + 292 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), ext_call.return_data[0] * arg2 / 100, 0
    mem[(4 * ceil32(return_data.size)) + 392] = 0
    call address(arg1) with:
       funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, address(this.address), ext_call.return_data[0] * arg2 / 100, 0) >> 224
         gas gas_remaining wei
        args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, address(this.address), ext_call.return_data[0] * arg2 / 100, 0) << 544)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require mem[128] == bool(mem[128])
            if not mem[128]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[(4 * ceil32(return_data.size)) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[(4 * ceil32(return_data.size)) + 324] == bool(mem[(4 * ceil32(return_data.size)) + 324])
            if not mem[(4 * ceil32(return_data.size)) + 324]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    call stor2 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if 1 > !sub_4defdb9b:
        revert with 0, 17
    sub_4defdb9b++
}



}
