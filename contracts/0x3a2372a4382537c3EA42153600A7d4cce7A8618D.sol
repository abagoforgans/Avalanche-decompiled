contract main {




// =====================  Runtime code  =====================


#
#  - sub_6c56da63(?)
#  - sub_89d66909(?)
#
uint8 stor0;
uint8 stor0; offset 8
address stor0;
address signerAddress; offset 16
uint256 stor0; offset 8
address sub_6c1049faAddress;
address fundOwner;
address sub_2780e33aAddress;
uint256 sub_3546a8bb;
uint256 sub_218f3c2e;
uint256 sub_184e37a2;
uint256 sub_c01bec77;
uint256 sub_26ab0384;
mapping of uint256 sub_baa09bb7;
mapping of uint256 sub_bde6e52e;
mapping of uint256 sub_f86da5af;
uint256 platformReward;
uint256 pendingWithdrawal;
uint256 sub_e46de344;

function sub_184e37a2(?) {
    return sub_184e37a2
}

function sub_218f3c2e(?) {
    return sub_218f3c2e
}

function signer() {
    return signerAddress
}

function sub_26ab0384(?) {
    return sub_26ab0384
}

function sub_2780e33a(?) {
    return sub_2780e33aAddress
}

function sub_3546a8bb(?) {
    return sub_3546a8bb
}

function sub_6c1049fa(?) {
    return sub_6c1049faAddress
}

function fundOwner() {
    return fundOwner
}

function pendingWithdrawal() {
    return pendingWithdrawal
}

function sub_baa09bb7(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_baa09bb7[arg1]
}

function sub_bde6e52e(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_bde6e52e[arg1]
}

function sub_c01bec77(?) {
    return sub_c01bec77
}

function sub_e46de344(?) {
    return sub_e46de344
}

function sub_f86da5af(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_f86da5af[arg1]
}

function platformReward() {
    return platformReward
}

function _fallback() payable {
    revert
}

function sub_205fe376(?) payable {
    if sub_e46de344 != msg.value:
        revert with 0, 'Not enough amount to pay fee'
    call sub_6c1049faAddress with:
       value msg.value wei
         gas gas_remaining wei
    if not return_data.size:
        if not ext_call.success:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Failed to forward fee to platform address'
    else:
        if not ext_call.success:
            revert with 0, 'Failed to forward fee to platform address'
    ('bool', 'ext_call.success')
    sub_bde6e52e[address(msg.sender)] = 1
    emit 0x33307a25: msg.sender
}

function initialize(address arg1, address arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, uint256 arg7, uint256 arg8, uint256 arg9, uint256 arg10) {
    require calldata.size - 4 >= 320
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    require arg6 == arg6
    require arg7 == arg7
    require arg8 == arg8
    require arg9 == arg9
    require arg10 == arg10
    if not uint8(stor0.field_8):
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
        if not uint8(stor0.field_8):
            Mask(248, 0, stor0.field_8) = 1
            uint8(stor0.field_0) = 1
    signerAddress = arg1
    sub_6c1049faAddress = arg2
    fundOwner = arg3
    sub_2780e33aAddress = arg4
    sub_184e37a2 = arg5
    sub_c01bec77 = arg6
    sub_26ab0384 = arg7
    sub_3546a8bb = arg8
    if arg8 > -arg9 - 1:
        revert with 'NH{q', 17
    sub_218f3c2e = arg8 + arg9
    sub_e46de344 = arg10
    emit 0x6d6045b9: sub_184e37a2, sub_c01bec77, sub_26ab0384, sub_3546a8bb, sub_218f3c2e, fundOwner, sub_2780e33aAddress
    if not uint8(stor0.field_8):
        Mask(248, 0, stor0.field_8) = 0
}

function sub_f085561a(?) {
    if fundOwner != msg.sender:
        revert with 0, 'Caller is not the fund owner'
    if block.timestamp <= sub_218f3c2e:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Hasn't been allowed to withdraw yet'
    mem[100] = this.address
    require ext_code.size(sub_2780e33aAddress)
    staticcall sub_2780e33aAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[ceil32(return_data.size) + 132] = msg.sender
    mem[ceil32(return_data.size) + 164] = ext_call.return_data[0]
    mem[ceil32(return_data.size) + 96] = 68
    mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
    mem[ceil32(return_data.size) + 196] = 32
    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if ext_code.size(sub_2780e33aAddress) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], 0
    mem[ceil32(return_data.size) + 328] = 0
    call sub_2780e33aAddress with:
       funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], 0) << 288)
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
    emit 0xd844f1a0: msg.sender, ext_call.return_data[0]
}

function sub_dabb47c2(?) {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(arg1.length) + 128 > test266151307() or ceil32(arg1.length) + 128 < 96:
        revert with 'NH{q', 65
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require arg2 == address(arg2)
    if sub_3546a8bb <= block.timestamp:
        revert with 0, 'Quest has been expired'
    if sub_baa09bb7[address(msg.sender)]:
        revert with 0, 'Already finished quest'
    mem[ceil32(arg1.length) + 128] = 0x2fa4982f00000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg1.length) + 324 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    if ceil32(arg1.length) > arg1.length:
        mem[ceil32(arg1.length) + arg1.length + 324] = 0
    require ext_code.size(0x7899298d8a26db8ea131205d0e0ec527b8c45a53)
    delegate 0x7899298d8a26db8ea131205d0e0ec527b8c45a53.0x0 with:
         gas gas_remaining wei
        args Array(len=arg1.length, data=arg1[all]), address(stor0.field_0), msg.sender, address(this.address), address(arg2)
    mem[ceil32(arg1.length) + 128] = delegate.return_data[0]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 0, delegate.return_data[4 len 28] == bool(0, delegate.return_data[4 len 28])
    if not 0, delegate.return_data[4 len 28]:
        revert with 0, 'Data does not match'
    if sub_bde6e52e[address(arg2)] and sub_c01bec77 > -1 / sub_bde6e52e[address(arg2)]:
        revert with 'NH{q', 17
    sub_baa09bb7[address(msg.sender)] = 1
    if sub_f86da5af[address(arg2)] > (-1 * sub_bde6e52e[address(arg2)] * sub_c01bec77) - 1:
        revert with 'NH{q', 17
    sub_f86da5af[address(arg2)] += sub_bde6e52e[address(arg2)] * sub_c01bec77
    if 1 < sub_bde6e52e[address(arg2)]:
        revert with 'NH{q', 17
    if -sub_bde6e52e[address(arg2)] + 1 and sub_bde6e52e[address(arg2)] * sub_c01bec77 > -1 / -sub_bde6e52e[address(arg2)] + 1:
        revert with 'NH{q', 17
    if sub_26ab0384 > (-1 * sub_bde6e52e[address(arg2)] * sub_c01bec77) + (sub_bde6e52e[address(arg2)] * sub_bde6e52e[address(arg2)] * sub_c01bec77) - 1:
        revert with 'NH{q', 17
    if platformReward > -sub_26ab0384 + (-1 * sub_bde6e52e[address(arg2)] * sub_c01bec77) + (sub_bde6e52e[address(arg2)] * sub_bde6e52e[address(arg2)] * sub_c01bec77) - 1:
        revert with 'NH{q', 17
    platformReward = platformReward + sub_26ab0384 + (sub_bde6e52e[address(arg2)] * sub_c01bec77) - (sub_bde6e52e[address(arg2)] * sub_bde6e52e[address(arg2)] * sub_c01bec77)
    if sub_bde6e52e[address(arg2)] * sub_c01bec77 > -sub_26ab0384 - 1:
        revert with 'NH{q', 17
    if pendingWithdrawal > (-1 * sub_bde6e52e[address(arg2)] * sub_c01bec77) + -sub_26ab0384 - 1:
        revert with 'NH{q', 17
    pendingWithdrawal = pendingWithdrawal + (sub_bde6e52e[address(arg2)] * sub_c01bec77) + sub_26ab0384
    require ext_code.size(sub_2780e33aAddress)
    staticcall sub_2780e33aAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[ceil32(arg1.length) + ceil32(return_data.size) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if pendingWithdrawal > -sub_184e37a2 - 1:
        revert with 'NH{q', 17
    if pendingWithdrawal + sub_184e37a2 > ext_call.return_data[0]:
        revert with 0, 'Out of reward fund'
    mem[ceil32(arg1.length) + (2 * ceil32(return_data.size)) + 128] = 68
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if ext_code.size(sub_2780e33aAddress) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(arg1.length) + (2 * ceil32(return_data.size)) + 292 len 96] = unknown_0xa9059cbb(?????), msg.sender, sub_184e37a2, 0
    call sub_2780e33aAddress with:
       funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, sub_184e37a2, 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, sub_184e37a2, 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if arg1.length > 0:
                revert with arg1[all]
            revert with 0, 'SafeERC20: low-level call failed'
        if arg1.length > 0:
            require arg1.length >= 32
            require mem[128] == bool(mem[128])
            if not mem[128]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[ceil32(arg1.length) + (2 * ceil32(return_data.size)) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            require mem[ceil32(arg1.length) + (2 * ceil32(return_data.size)) + 324] == bool(mem[ceil32(arg1.length) + (2 * ceil32(return_data.size)) + 324])
            if not mem[ceil32(arg1.length) + (2 * ceil32(return_data.size)) + 324]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    emit 0x544132ce: sub_184e37a2, sub_bde6e52e[address(arg2)] * sub_c01bec77, sub_26ab0384, msg.sender, address(arg2)
}



}
