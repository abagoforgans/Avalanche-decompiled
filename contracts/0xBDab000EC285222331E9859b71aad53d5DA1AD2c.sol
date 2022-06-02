contract main {




// =====================  Runtime code  =====================


uint256 totalShares;
uint256 totalReleased;
mapping of uint256 shares;
mapping of uint256 released;
array of address payee;
mapping of uint256 totalReleased;
mapping of uint256 released;
mapping of uint256 sub_3e5c3e00;
mapping of struct stor9;

function totalShares() {
    return totalShares
}

function sub_3e5c3e00(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_3e5c3e00[address(arg1)]
}

function released(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return released[address(arg1)][address(arg2)]
}

function payee(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 >= payee.length:
        revert with 'NH{q', 50
    return payee[arg1]
}

function released(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return released[address(arg1)]
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

function _fallback() payable {
    revert
}

function sub_509f2a42(?) payable {
    require ext_code.size(0xd036414fa2bcbb802691491e323bff1348c5f4ba)
    call 0xd036414fa2bcbb802691491e323bff1348c5f4ba.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, 0x79aee3e23b525997fd582d0987717ac9cbd610a7, 1000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_bd19626d(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg2.length)) + 97 > test266151307() or ceil32(ceil32(arg2.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg2 + arg2.length + 36 <= calldata.size
    if sub_3e5c3e00[address(arg1)] < 1000:
        revert with 0, 'ERC20: Didn't send enough'
    if stor9[address(arg1)].field_0:
        if stor9[address(arg1)].field_0 == stor9[address(arg1)].field_1 < 32:
            revert with 'NH{q', 34
        if arg2.length:
            stor9[address(arg1)][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor9[address(arg1)].field_0 = 0
            idx = 0
            while stor9[address(arg1)].field_1 + 31 / 32 > idx:
                stor9[address(arg1)][idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if stor9[address(arg1)].field_0 == stor9[address(arg1)].field_1 < 32:
            revert with 'NH{q', 34
        if arg2.length:
            stor9[address(arg1)][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor9[address(arg1)].field_0 = 0
            idx = 0
            while stor9[address(arg1)].field_1 + 31 / 32 > idx:
                stor9[address(arg1)][idx].field_0 = 0
                idx = idx + 1
                continue 
}

function release(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if shares[address(arg1)] <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'PaymentSplitter: account has no shares'
    if eth.balance(this.address) > -totalReleased - 1:
        revert with 'NH{q', 17
    if eth.balance(this.address) + totalReleased and shares[address(arg1)] > -1 / eth.balance(this.address) + totalReleased:
        revert with 'NH{q', 17
    if not totalShares:
        revert with 'NH{q', 18
    if (eth.balance(this.address) * shares[address(arg1)]) + (totalReleased * shares[address(arg1)]) / totalShares < released[address(arg1)]:
        revert with 'NH{q', 17
    if not ((eth.balance(this.address) * shares[address(arg1)]) + (totalReleased * shares[address(arg1)]) / totalShares) - released[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'PaymentSplitter: account is not due payment'
    if released[address(arg1)] > -((eth.balance(this.address) * shares[address(arg1)]) + (totalReleased * shares[address(arg1)]) / totalShares) + released[address(arg1)] - 1:
        revert with 'NH{q', 17
    released[address(arg1)] = (eth.balance(this.address) * shares[address(arg1)]) + (totalReleased * shares[address(arg1)]) / totalShares
    if totalReleased > -((eth.balance(this.address) * shares[address(arg1)]) + (totalReleased * shares[address(arg1)]) / totalShares) + released[address(arg1)] - 1:
        revert with 'NH{q', 17
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

function sub_0de905d0(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if stor9[address(arg1)].field_0:
        if stor9[address(arg1)].field_0 == stor9[address(arg1)].field_1 < 32:
            revert with 'NH{q', 34
        if stor9[address(arg1)].field_0:
            if stor9[address(arg1)].field_0 == stor9[address(arg1)].field_1 < 32:
                revert with 'NH{q', 34
            if stor9[address(arg1)].field_1:
                if 31 < stor9[address(arg1)].field_1:
                    mem[128] = stor9[address(arg1)].field_0
                    idx = 128
                    s = 0
                    while stor9[address(arg1)].field_1 + 96 > idx:
                        mem[idx + 32] = stor9[address(arg1)][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor9[address(arg1)].field_1), data=mem[128 len ceil32(stor9[address(arg1)].field_1)])
                mem[128] = 256 * stor9[address(arg1)].field_8
        else:
            if stor9[address(arg1)].field_0 == stor9[address(arg1)].field_1 < 32:
                revert with 'NH{q', 34
            if stor9[address(arg1)].field_1:
                if 31 < stor9[address(arg1)].field_1:
                    mem[128] = stor9[address(arg1)].field_0
                    idx = 128
                    s = 0
                    while stor9[address(arg1)].field_1 + 96 > idx:
                        mem[idx + 32] = stor9[address(arg1)][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor9[address(arg1)].field_1), data=mem[128 len ceil32(stor9[address(arg1)].field_1)])
                mem[128] = 256 * stor9[address(arg1)].field_8
        mem[ceil32(stor9[address(arg1)].field_1) + 192 len ceil32(stor9[address(arg1)].field_1)] = mem[128 len ceil32(stor9[address(arg1)].field_1)]
        if ceil32(stor9[address(arg1)].field_1) > stor9[address(arg1)].field_1:
            mem[ceil32(stor9[address(arg1)].field_1) + stor9[address(arg1)].field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor9[address(arg1)].field_1), data=mem[128 len ceil32(stor9[address(arg1)].field_1)], mem[(2 * ceil32(stor9[address(arg1)].field_1)) + 192 len 2 * ceil32(stor9[address(arg1)].field_1)]), 
    if stor9[address(arg1)].field_0 == stor9[address(arg1)].field_1 < 32:
        revert with 'NH{q', 34
    if stor9[address(arg1)].field_0:
        if stor9[address(arg1)].field_0 == stor9[address(arg1)].field_1 < 32:
            revert with 'NH{q', 34
        if stor9[address(arg1)].field_1:
            if 31 < stor9[address(arg1)].field_1:
                mem[128] = stor9[address(arg1)].field_0
                idx = 128
                s = 0
                while stor9[address(arg1)].field_1 + 96 > idx:
                    mem[idx + 32] = stor9[address(arg1)][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor9[address(arg1)].field_0, data=mem[128 len ceil32(stor9[address(arg1)].field_1)])
            mem[128] = 256 * stor9[address(arg1)].field_8
    else:
        if stor9[address(arg1)].field_0 == stor9[address(arg1)].field_1 < 32:
            revert with 'NH{q', 34
        if stor9[address(arg1)].field_1:
            if 31 < stor9[address(arg1)].field_1:
                mem[128] = stor9[address(arg1)].field_0
                idx = 128
                s = 0
                while stor9[address(arg1)].field_1 + 96 > idx:
                    mem[idx + 32] = stor9[address(arg1)][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor9[address(arg1)].field_0, data=mem[128 len ceil32(stor9[address(arg1)].field_1)])
            mem[128] = 256 * stor9[address(arg1)].field_8
    mem[ceil32(stor9[address(arg1)].field_1) + 192 len ceil32(stor9[address(arg1)].field_1)] = mem[128 len ceil32(stor9[address(arg1)].field_1)]
    if ceil32(stor9[address(arg1)].field_1) > stor9[address(arg1)].field_1:
        mem[ceil32(stor9[address(arg1)].field_1) + stor9[address(arg1)].field_1 + 192] = 0
    return Array(len=stor9[address(arg1)].field_0, data=mem[128 len ceil32(stor9[address(arg1)].field_1)], mem[(2 * ceil32(stor9[address(arg1)].field_1)) + 192 len 2 * ceil32(stor9[address(arg1)].field_1)]), 
}

function release(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if shares[address(arg2)] <= 0:
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
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] > -totalReleased[address(arg1)] - 1:
        revert with 'NH{q', 17
    if ext_call.return_data[0] + totalReleased[address(arg1)] and shares[address(arg2)] > -1 / ext_call.return_data[0] + totalReleased[address(arg1)]:
        revert with 'NH{q', 17
    if not totalShares:
        revert with 'NH{q', 18
    if (ext_call.return_data[0] * shares[address(arg2)]) + (totalReleased[address(arg1)] * shares[address(arg2)]) / totalShares < released[address(arg1)][address(arg2)]:
        revert with 'NH{q', 17
    if not ((ext_call.return_data[0] * shares[address(arg2)]) + (totalReleased[address(arg1)] * shares[address(arg2)]) / totalShares) - released[address(arg1)][address(arg2)]:
        revert with 0, 'PaymentSplitter: account is not due payment'
    if released[address(arg1)][address(arg2)] > -((ext_call.return_data[0] * shares[address(arg2)]) + (totalReleased[address(arg1)] * shares[address(arg2)]) / totalShares) + released[address(arg1)][address(arg2)] - 1:
        revert with 'NH{q', 17
    released[address(arg1)][address(arg2)] = (ext_call.return_data[0] * shares[address(arg2)]) + (totalReleased[address(arg1)] * shares[address(arg2)]) / totalShares
    if totalReleased[address(arg1)] > -((ext_call.return_data[0] * shares[address(arg2)]) + (totalReleased[address(arg1)] * shares[address(arg2)]) / totalShares) + released[address(arg1)][address(arg2)] - 1:
        revert with 'NH{q', 17
    totalReleased[address(arg1)] = totalReleased[address(arg1)] + ((ext_call.return_data[0] * shares[address(arg2)]) + (totalReleased[address(arg1)] * shares[address(arg2)]) / totalShares) - released[address(arg1)][address(arg2)]
    mem[ceil32(return_data.size) + 132] = arg2
    mem[ceil32(return_data.size) + 164] = ((ext_call.return_data[0] * shares[address(arg2)]) + (totalReleased[address(arg1)] * shares[address(arg2)]) / totalShares) - released[address(arg1)][address(arg2)]
    mem[ceil32(return_data.size) + 96] = 68
    mem[ceil32(return_data.size) + 132 len 28] = address(arg2) << 64
    mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
    mem[ceil32(return_data.size) + 196] = 32
    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if ext_code.size(arg1) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), address(arg2) << 64, 0, ((ext_call.return_data[0] * shares[address(arg2)]) + (totalReleased[address(arg1)] * shares[address(arg2)]) / totalShares) - released[address(arg1)][address(arg2)], 0
    mem[ceil32(return_data.size) + 328] = 0
    call arg1 with:
       funct Mask(32, 224, unknown_0xa9059cbb(?????), address(arg2) << 64, 0, ((ext_call.return_data[0] * shares[address(arg2)]) + (totalReleased[address(arg1)] * shares[address(arg2)]) / totalShares) - released[address(arg1)][address(arg2)], 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, unknown_0xa9059cbb(?????), address(arg2) << 64, 0, ((ext_call.return_data[0] * shares[address(arg2)]) + (totalReleased[address(arg1)] * shares[address(arg2)]) / totalShares) - released[address(arg1)][address(arg2)], 0) << 288)
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
    emit ERC20PaymentReleased(address(arg2), ((ext_call.return_data[0] * shares[address(arg2)]) + (totalReleased[address(arg1)] * shares[address(arg2)]) / totalShares) - released[address(arg1)][address(arg2)], arg1);
}



}
