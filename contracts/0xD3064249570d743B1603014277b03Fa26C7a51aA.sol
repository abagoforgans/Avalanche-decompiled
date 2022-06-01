contract main {




// =====================  Runtime code  =====================


address sub_d8e8251eAddress;
address owner;
address sub_dcc4b5f6Address;
address sub_a45250deAddress;
address poolAddress;
uint256 max_price;

function pool() {
    return poolAddress
}

function max_price() {
    return max_price
}

function owner() {
    return owner
}

function sub_a45250de(?) {
    return sub_a45250deAddress
}

function sub_d8e8251e(?) {
    return sub_d8e8251eAddress
}

function sub_dcc4b5f6(?) {
    return sub_dcc4b5f6Address
}

function _fallback() payable {
    revert
}

function setPool(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Account not admin.'
    poolAddress = arg1
}

function setMaxPrice(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Account not admin.'
    max_price = arg1
}

function setRouter(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Account not admin.'
    sub_d8e8251eAddress = arg1
}

function setTokenIn(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Account not admin.'
    sub_dcc4b5f6Address = arg1
}

function setTokenOut(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Account not admin.'
    sub_a45250deAddress = arg1
}

function sub_5a34d64b(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Account not admin.'
    call owner with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function spam() {
    mem[100] = poolAddress
    require ext_code.size(sub_dcc4b5f6Address)
    staticcall sub_dcc4b5f6Address.0x70a08231 with:
            gas gas_remaining wei
           args poolAddress
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require 0 < ext_call.return_data[0]
    mem[ceil32(return_data.size) + 100] = poolAddress
    require ext_code.size(sub_a45250deAddress)
    staticcall sub_a45250deAddress.0x70a08231 with:
            gas gas_remaining wei
           args poolAddress
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if max_price and ext_call.return_data[0] > -1 / max_price:
        revert with 'NH{q', 17
    if max_price * ext_call.return_data[0] / 10^18 < ext_call.return_data[0]:
        revert with 'NH{q', 17
    if eth.balance(this.address) >= (max_price * ext_call.return_data[0] / 10^18) - ext_call.return_data[0]:
        require 0 < (max_price * ext_call.return_data[0] / 10^18) - ext_call.return_data[0]
        if not max_price:
            revert with 'NH{q', 18
        if (max_price * ext_call.return_data[0] / 10^18) - ext_call.return_data[0] / max_price / 10^18 / 100 > 0x369d0369d0369d0369d0369d0369d0369d0369d0369d0369d0369d0369d0369:
            revert with 'NH{q', 17
        mem[(2 * ceil32(return_data.size)) + 128] = sub_dcc4b5f6Address
        mem[(2 * ceil32(return_data.size)) + 160] = sub_a45250deAddress
        mem[(2 * ceil32(return_data.size)) + 192] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
        mem[(2 * ceil32(return_data.size)) + 196] = 75 * (max_price * ext_call.return_data[0] / 10^18) - ext_call.return_data[0] / max_price / 10^18 / 100
        mem[(2 * ceil32(return_data.size)) + 228] = 128
        mem[(2 * ceil32(return_data.size)) + 324] = 2
        idx = 0
        s = (2 * ceil32(return_data.size)) + 128
        t = (2 * ceil32(return_data.size)) + 356
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(2 * ceil32(return_data.size)) + 260] = owner
        mem[(2 * ceil32(return_data.size)) + 292] = block.timestamp
        require ext_code.size(sub_d8e8251eAddress)
        call sub_d8e8251eAddress.swapExactAVAXForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
           value (max_price * ext_call.return_data[0] / 10^18) - ext_call.return_data[0] wei
             gas gas_remaining wei
            args 75 * (max_price * ext_call.return_data[0] / 10^18) - ext_call.return_data[0] / max_price / 10^18 / 100, Array(len=2, data=mem[(2 * ceil32(return_data.size)) + 356 len 64]), owner, block.timestamp
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(2 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (4 * ceil32(return_data.size)) + 192
        require return_data.size >= 32
        _39 = mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 75 * (max_price * ext_call.return_data[0] / 10^18) - ext_call.return_data[0] / max_price / 10^18 / 100) >> 32
        require mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 75 * (max_price * ext_call.return_data[0] / 10^18) - ext_call.return_data[0] / max_price / 10^18 / 100) >> 32 <= test266151307()
        require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 75 * (max_price * ext_call.return_data[0] / 10^18) - ext_call.return_data[0] / max_price / 10^18 / 100) >> 32 + 223 < (2 * ceil32(return_data.size)) + return_data.size + 192
        _41 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 75 * (max_price * ext_call.return_data[0] / 10^18) - ext_call.return_data[0] / max_price / 10^18 / 100) >> 32 + 192]
        if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 75 * (max_price * ext_call.return_data[0] / 10^18) - ext_call.return_data[0] / max_price / 10^18 / 100) >> 32 + 192] > test266151307():
            revert with 'NH{q', 65
        if (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 75 * (max_price * ext_call.return_data[0] / 10^18) - ext_call.return_data[0] / max_price / 10^18 / 100) >> 32 + 192]) + 193 > test266151307() or floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 75 * (max_price * ext_call.return_data[0] / 10^18) - ext_call.return_data[0] / max_price / 10^18 / 100) >> 32 + 192]) + 1 < 0:
            revert with 'NH{q', 65
        mem[(4 * ceil32(return_data.size)) + 192] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 75 * (max_price * ext_call.return_data[0] / 10^18) - ext_call.return_data[0] / max_price / 10^18 / 100) >> 32 + 192]
        require _39 + (32 * _41) + 32 <= return_data.size
        idx = 0
        s = (2 * ceil32(return_data.size)) + _39 + 224
        t = (4 * ceil32(return_data.size)) + 224
        while idx < _41:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
    else:
        require 0 < eth.balance(this.address)
        if not max_price:
            revert with 'NH{q', 18
        if eth.balance(this.address) / max_price / 10^18 / 100 > 0x369d0369d0369d0369d0369d0369d0369d0369d0369d0369d0369d0369d0369:
            revert with 'NH{q', 17
        mem[(2 * ceil32(return_data.size)) + 128] = sub_dcc4b5f6Address
        mem[(2 * ceil32(return_data.size)) + 160] = sub_a45250deAddress
        mem[(2 * ceil32(return_data.size)) + 192] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
        mem[(2 * ceil32(return_data.size)) + 196] = 75 * eth.balance(this.address) / max_price / 10^18 / 100
        mem[(2 * ceil32(return_data.size)) + 228] = 128
        mem[(2 * ceil32(return_data.size)) + 324] = 2
        idx = 0
        s = (2 * ceil32(return_data.size)) + 128
        t = (2 * ceil32(return_data.size)) + 356
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(2 * ceil32(return_data.size)) + 260] = owner
        mem[(2 * ceil32(return_data.size)) + 292] = block.timestamp
        require ext_code.size(sub_d8e8251eAddress)
        call sub_d8e8251eAddress.swapExactAVAXForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
           value eth.balance(this.address) wei
             gas gas_remaining wei
            args 75 * eth.balance(this.address) / max_price / 10^18 / 100, Array(len=2, data=mem[(2 * ceil32(return_data.size)) + 356 len 64]), owner, block.timestamp
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(2 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (4 * ceil32(return_data.size)) + 192
        require return_data.size >= 32
        _40 = mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 75 * eth.balance(this.address) / max_price / 10^18 / 100) >> 32
        require mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 75 * eth.balance(this.address) / max_price / 10^18 / 100) >> 32 <= test266151307()
        require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 75 * eth.balance(this.address) / max_price / 10^18 / 100) >> 32 + 223 < (2 * ceil32(return_data.size)) + return_data.size + 192
        _42 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 75 * eth.balance(this.address) / max_price / 10^18 / 100) >> 32 + 192]
        if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 75 * eth.balance(this.address) / max_price / 10^18 / 100) >> 32 + 192] > test266151307():
            revert with 'NH{q', 65
        if (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 75 * eth.balance(this.address) / max_price / 10^18 / 100) >> 32 + 192]) + 193 > test266151307() or floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 75 * eth.balance(this.address) / max_price / 10^18 / 100) >> 32 + 192]) + 1 < 0:
            revert with 'NH{q', 65
        mem[(4 * ceil32(return_data.size)) + 192] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 75 * eth.balance(this.address) / max_price / 10^18 / 100) >> 32 + 192]
        require _40 + (32 * _42) + 32 <= return_data.size
        idx = 0
        s = (2 * ceil32(return_data.size)) + _40 + 224
        t = (4 * ceil32(return_data.size)) + 224
        while idx < _42:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
}



}
