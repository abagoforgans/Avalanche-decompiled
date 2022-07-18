contract main {




// =====================  Runtime code  =====================


uint256 totalShares;
uint256 totalReleased;
mapping of uint256 shares;
mapping of uint256 released;
array of address payee;
mapping of uint256 totalReleased;
mapping of uint256 released;

function totalShares() {
    return totalShares
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

function sub_743358fc(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
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
    call address(arg1) with:
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

function releaseAll() payable {
    mem[64] = 96
    require not msg.value
    idx = 0
    while idx < payee.length:
        if shares[stor4[idx]] <= 0:
            revert with 0, 'PaymentSplitter: account has no shares'
        if eth.balance(this.address) > -totalReleased - 1:
            revert with 'NH{q', 17
        if eth.balance(this.address) + totalReleased and shares[stor4[idx]] > -1 / eth.balance(this.address) + totalReleased:
            revert with 'NH{q', 17
        if not totalShares:
            revert with 'NH{q', 18
        if (eth.balance(this.address) * shares[stor4[idx]]) + (totalReleased * shares[stor4[idx]]) / totalShares < released[stor4[idx]]:
            revert with 'NH{q', 17
        if not ((eth.balance(this.address) * shares[stor4[idx]]) + (totalReleased * shares[stor4[idx]]) / totalShares) - released[stor4[idx]]:
            revert with 0, 'PaymentSplitter: account is not due payment'
        mem[0] = payee[idx]
        mem[32] = 3
        if released[stor4[idx]] > -((eth.balance(this.address) * shares[stor4[idx]]) + (totalReleased * shares[stor4[idx]]) / totalShares) + released[stor4[idx]] - 1:
            revert with 'NH{q', 17
        released[stor4[idx]] = (eth.balance(this.address) * shares[stor4[idx]]) + (totalReleased * shares[stor4[idx]]) / totalShares
        if totalReleased > -((eth.balance(this.address) * shares[stor4[idx]]) + (totalReleased * shares[stor4[idx]]) / totalShares) + released[stor4[idx]] - 1:
            revert with 'NH{q', 17
        totalReleased = totalReleased + ((eth.balance(this.address) * shares[stor4[idx]]) + (totalReleased * shares[stor4[idx]]) / totalShares) - released[stor4[idx]]
        if eth.balance(this.address) < ((eth.balance(this.address) * shares[stor4[idx]]) + (totalReleased * shares[stor4[idx]]) / totalShares) - released[stor4[idx]]:
            revert with 0, 'Address: insufficient balance'
        call payee[idx] with:
           value ((eth.balance(this.address) * shares[stor4[idx]]) + (totalReleased * shares[stor4[idx]]) / totalShares) - released[stor4[idx]] wei
             gas gas_remaining wei
        if return_data.size:
            _36 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_36] = return_data.size
            mem[_36 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'Address: unable to send value, recipient may have reverted'
        mem[mem[64]] = payee[idx]
        mem[mem[64] + 32] = ((eth.balance(this.address) * shares[stor4[idx]]) + (totalReleased * shares[stor4[idx]]) / totalShares) - released[stor4[idx]]
        emit PaymentReleased(payee[idx], ((eth.balance(this.address) * shares[stor4[idx]]) + (totalReleased * shares[stor4[idx]]) / totalShares) - released[stor4[idx]]);
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
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
    mem[ceil32(return_data.size) + 128 len 4] = transfer(address arg1, uint256 arg2)
    mem[ceil32(return_data.size) + 196] = 32
    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if ext_code.size(arg1) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 260 len 96] = transfer(address arg1, uint256 arg2), address(arg2) << 64, 0, ((ext_call.return_data[0] * shares[address(arg2)]) + (totalReleased[address(arg1)] * shares[address(arg2)]) / totalShares) - released[address(arg1)][address(arg2)], 0
    mem[ceil32(return_data.size) + 328] = 0
    call arg1 with:
       funct Mask(32, 224, transfer(address arg1, uint256 arg2), address(arg2) << 64, 0, ((ext_call.return_data[0] * shares[address(arg2)]) + (totalReleased[address(arg1)] * shares[address(arg2)]) / totalShares) - released[address(arg1)][address(arg2)], 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, transfer(address arg1, uint256 arg2), address(arg2) << 64, 0, ((ext_call.return_data[0] * shares[address(arg2)]) + (totalReleased[address(arg1)] * shares[address(arg2)]) / totalShares) - released[address(arg1)][address(arg2)], 0) << 288)
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

function sub_af4dd833(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    idx = 0
    while idx < payee.length:
        if shares[stor4[idx]] <= 0:
            revert with 0, 'PaymentSplitter: account has no shares'
        mem[0] = address(arg1)
        mem[32] = 5
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(arg1))
        staticcall address(arg1).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _104 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _105 = mem[_104]
        require mem[_104] == mem[_104]
        if mem[_104] > -totalReleased[address(arg1)] - 1:
            revert with 'NH{q', 17
        if mem[_104] + totalReleased[address(arg1)] and shares[stor4[idx]] > -1 / mem[_104] + totalReleased[address(arg1)]:
            revert with 'NH{q', 17
        if not totalShares:
            revert with 'NH{q', 18
        if (mem[_104] * shares[stor4[idx]]) + (totalReleased[address(arg1)] * shares[stor4[idx]]) / totalShares < released[address(arg1)][stor4[idx]]:
            revert with 'NH{q', 17
        if not ((mem[_104] * shares[stor4[idx]]) + (totalReleased[address(arg1)] * shares[stor4[idx]]) / totalShares) - released[address(arg1)][stor4[idx]]:
            revert with 0, 'PaymentSplitter: account is not due payment'
        if released[address(arg1)][stor4[idx]] > -((mem[_104] * shares[stor4[idx]]) + (totalReleased[address(arg1)] * shares[stor4[idx]]) / totalShares) + released[address(arg1)][stor4[idx]] - 1:
            revert with 'NH{q', 17
        released[address(arg1)][stor4[idx]] = (mem[_104] * shares[stor4[idx]]) + (totalReleased[address(arg1)] * shares[stor4[idx]]) / totalShares
        mem[0] = address(arg1)
        mem[32] = 5
        if totalReleased[address(arg1)] > -((_105 * shares[stor4[idx]]) + (totalReleased[address(arg1)] * shares[stor4[idx]]) / totalShares) + released[address(arg1)][stor4[idx]] - 1:
            revert with 'NH{q', 17
        totalReleased[address(arg1)] = totalReleased[address(arg1)] + ((_105 * shares[stor4[idx]]) + (totalReleased[address(arg1)] * shares[stor4[idx]]) / totalShares) - released[address(arg1)][stor4[idx]]
        _114 = mem[64]
        mem[mem[64] + 36] = payee[idx]
        mem[mem[64] + 68] = ((_105 * shares[stor4[idx]]) + (totalReleased[address(arg1)] * shares[stor4[idx]]) / totalShares) - released[address(arg1)][stor4[idx]]
        _115 = mem[64]
        mem[mem[64]] = 68
        mem[64] = mem[64] + 100
        mem[_115 + 32] = mem[_115 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
        mem[64] = _114 + 164
        mem[_114 + 100] = 32
        mem[_114 + 132] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if ext_code.size(address(arg1)) <= 0:
            revert with 0, 'Address: call to non-contract'
        _121 = mem[_115]
        s = 0
        while s < _121:
            mem[_114 + s + 164] = mem[_115 + s + 32]
            s = s + 32
            continue 
        if ceil32(_121) > _121:
            mem[_114 + _121 + 164] = 0
        call address(arg1).mem[_114 + 164 len 4] with:
             gas gas_remaining wei
            args mem[_114 + 168 len _121 - 4]
        if not return_data.size:
            if not ext_call.success:
                if mem[96] > 0:
                    revert with memory
                      from 128
                       len mem[96]
                mem[_114 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_114 + 168] = 32
                idx = 0
                while idx < 32:
                    mem[_114 + idx + 232] = mem[_114 + idx + 132]
                    idx = idx + 32
                    continue 
                revert with 0, 32, 32, mem[_114 + 232]
            if mem[96] > 0:
                require mem[96] >= 32
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            mem[_114 + 164] = payee[idx]
            mem[_114 + 196] = ((_105 * shares[stor4[idx]]) + (totalReleased[address(arg1)] * shares[stor4[idx]]) / totalShares) - released[address(arg1)][stor4[idx]]
        else:
            mem[64] = _114 + ceil32(return_data.size) + 165
            mem[_114 + 164] = return_data.size
            mem[_114 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_114 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_114 + ceil32(return_data.size) + 169] = 32
                idx = 0
                while idx < 32:
                    mem[_114 + ceil32(return_data.size) + idx + 233] = mem[_114 + idx + 132]
                    idx = idx + 32
                    continue 
                revert with 0, 32, 32, mem[_114 + ceil32(return_data.size) + 233]
            if return_data.size > 0:
                require return_data.size >= 32
                require mem[_114 + 196] == bool(mem[_114 + 196])
                if not mem[_114 + 196]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            mem[_114 + ceil32(return_data.size) + 165] = payee[idx]
            mem[_114 + ceil32(return_data.size) + 197] = ((_105 * shares[stor4[idx]]) + (totalReleased[address(arg1)] * shares[stor4[idx]]) / totalShares) - released[address(arg1)][stor4[idx]]
        emit ERC20PaymentReleased(payee[idx], ((_105 * shares[stor4[idx]]) + (totalReleased[address(arg1)] * shares[stor4[idx]]) / totalShares) - released[address(arg1)][stor4[idx]], address(arg1));
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}



}
