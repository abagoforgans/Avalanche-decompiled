contract main {




// =====================  Runtime code  =====================


#
#  - refund(address arg1, address arg2, uint256 arg3)
#  - sub_8f4eff04(?)
#
address owner;
uint256 subscriptionFee;
uint256 FEE_DENOMINATOR;
mapping of uint256 sub_594e56e5;

function subscriptionFee() {
    return subscriptionFee
}

function sub_594e56e5(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    return sub_594e56e5[arg1][arg2]
}

function owner() {
    return owner
}

function FEE_DENOMINATOR() {
    return FEE_DENOMINATOR
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

function withdraw() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function changeSubscriptionFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > 1000:
        revert with 0, 'Max fee: 10%'
    subscriptionFee = arg1
}

function sub_dfaef726(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if sub_594e56e5[address(arg2)][address(arg1)] > -arg3 - 1:
        revert with 'NH{q', 17
    sub_594e56e5[address(arg2)][address(arg1)] += arg3
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

function sub_059bf79a(?) {
    if sub_594e56e5[address(msg.sender)][0] <= 0:
        revert with 0, 'Zero balance'
    if eth.balance(this.address) < sub_594e56e5[address(msg.sender)][0]:
        revert with 0, 'You can't withdraw right now.'
    sub_594e56e5[address(msg.sender)][0] = 0
    call msg.sender with:
       value sub_594e56e5[address(msg.sender)][0] wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'Failed to send Ether'
}

function sub_403cb045(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if sub_594e56e5[address(msg.sender)][address(arg1)] < arg3:
        revert with 0, 'Can't decrease more than have'
    if sub_594e56e5[address(arg2)][address(arg1)] < arg3:
        revert with 'NH{q', 17
    sub_594e56e5[address(arg2)][address(arg1)] -= arg3
}

function sub_4290e010(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if msg.value and subscriptionFee > -1 / msg.value:
        revert with 'NH{q', 17
    if not FEE_DENOMINATOR:
        revert with 'NH{q', 18
    if msg.value < msg.value * subscriptionFee / FEE_DENOMINATOR:
        revert with 'NH{q', 17
    if sub_594e56e5[address(arg1)][0] > -msg.value + (msg.value * subscriptionFee / FEE_DENOMINATOR) - 1:
        revert with 'NH{q', 17
    sub_594e56e5[address(arg1)][0] = sub_594e56e5[address(arg1)][0] + msg.value - (msg.value * subscriptionFee / FEE_DENOMINATOR)
}

function withdrawTo(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[100] = this.address
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < arg3:
        revert with 0, 'Not enough tokens'
    mem[ceil32(return_data.size) + 132] = arg2
    mem[ceil32(return_data.size) + 164] = arg3
    mem[ceil32(return_data.size) + 96] = 68
    mem[ceil32(return_data.size) + 132 len 28] = address(arg2) << 64
    mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
    mem[ceil32(return_data.size) + 196] = 32
    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if ext_code.size(arg1) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), address(arg2) << 64, 0, arg3, 0
    mem[ceil32(return_data.size) + 328] = 0
    call arg1 with:
       funct Mask(32, 224, unknown_0xa9059cbb(?????), address(arg2) << 64, 0, arg3, 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, unknown_0xa9059cbb(?????), address(arg2) << 64, 0, arg3, 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0] > 0:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0] > 0:
            require ext_call.return_data[0] >= 32
            require 0, mem[132 len 28] == bool(0, mem[132 len 28])
            if not 0, mem[132 len 28]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
            if not mem[ceil32(return_data.size) + 292]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
}

function sub_15337574(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if sub_594e56e5[address(msg.sender)][address(arg1)] <= 0:
        revert with 0, 'Zero balance'
    mem[100] = this.address
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < sub_594e56e5[address(msg.sender)][address(arg1)]:
        revert with 0, 'You can't withdraw right now.'
    sub_594e56e5[address(msg.sender)][address(arg1)] = 0
    mem[ceil32(return_data.size) + 132] = msg.sender
    mem[ceil32(return_data.size) + 164] = sub_594e56e5[address(msg.sender)][address(arg1)]
    mem[ceil32(return_data.size) + 96] = 68
    mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
    mem[ceil32(return_data.size) + 196] = 32
    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if ext_code.size(address(arg1)) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), msg.sender, sub_594e56e5[address(msg.sender)][address(arg1)], 0
    mem[ceil32(return_data.size) + 328] = 0
    call address(arg1) with:
       funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, sub_594e56e5[address(msg.sender)][address(arg1)], 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, sub_594e56e5[address(msg.sender)][address(arg1)], 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0] > 0:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0] > 0:
            require ext_call.return_data[0] >= 32
            require 0, mem[132 len 28] == bool(0, mem[132 len 28])
            if not 0, mem[132 len 28]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
            if not mem[ceil32(return_data.size) + 292]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
}



}
