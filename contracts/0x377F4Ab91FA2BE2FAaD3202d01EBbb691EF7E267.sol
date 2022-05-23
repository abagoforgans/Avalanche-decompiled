contract main {




// =====================  Runtime code  =====================


address owner;
address stor2;
address stor4;
address stor5;
address stor6;

function owner() {
    return owner
}

function _fallback() payable {
  stop
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
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
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

function sub_938aaefb(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(stor4)
    staticcall stor4.getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(arg1), address(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    return ext_call.return_data[12 len 20]
}

function withdrawErc20(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Transfer failed'
}

function sub_62093d2e(?) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg2:
        if arg1 and 1000 > -1 / arg1:
            revert with 'NH{q', 17
        if arg3 and 1000 > -1 / arg3:
            revert with 'NH{q', 17
        if 1000 * arg1 and 100000 > -1 / 1000 * arg1:
            revert with 'NH{q', 17
        if not 1000 * arg3 / 10^18:
            revert with 'NH{q', 18
        if 100 * 10^6 * arg1 / 1000 * arg3 / 10^18 and 10^18 > -1 / 100 * 10^6 * arg1 / 1000 * arg3 / 10^18:
            revert with 'NH{q', 17
        if 10^18 * 100 * 10^6 * arg1 / 1000 * arg3 / 10^18 and arg4 > -1 / 10^18 * 100 * 10^6 * arg1 / 1000 * arg3 / 10^18:
            revert with 'NH{q', 17
        return 100 * 10^6 * arg1 / 1000 * arg3 / 10^18, 10^18 * 100 * 10^6 * arg1 / 1000 * arg3 / 10^18 * arg4 / 1000 / 100000
    if bool(bool(arg2 < 78)) or bool(bool(arg2 < 32)):
        if 10^arg2 > -1:
            revert with 'NH{q', 17
        if arg1 and 1000 > -1 / arg1:
            revert with 'NH{q', 17
        if not 10^arg2:
            revert with 'NH{q', 18
        if arg3 and 1000 > -1 / arg3:
            revert with 'NH{q', 17
        if 1000 * arg1 / 10^arg2 and 100000 > -1 / 1000 * arg1 / 10^arg2:
            revert with 'NH{q', 17
        if not 1000 * arg3 / 10^18:
            revert with 'NH{q', 18
        if 100000 * 1000 * arg1 / 10^arg2 / 1000 * arg3 / 10^18 and 10^18 > -1 / 100000 * 1000 * arg1 / 10^arg2 / 1000 * arg3 / 10^18:
            revert with 'NH{q', 17
        if 10^18 * 100000 * 1000 * arg1 / 10^arg2 / 1000 * arg3 / 10^18 and arg4 > -1 / 10^18 * 100000 * 1000 * arg1 / 10^arg2 / 1000 * arg3 / 10^18:
            revert with 'NH{q', 17
        return 100000 * 1000 * arg1 / 10^arg2 / 1000 * arg3 / 10^18, 
               10^18 * 100000 * 1000 * arg1 / 10^arg2 / 1000 * arg3 / 10^18 * arg4 / 1000 / 100000
    s = 10
    t = 1
    idx = arg2
    while idx > 1:
        if s > -1 / s:
            revert with 'NH{q', 17
        if not bool(idx):
            s = s * s
            t = t
            idx = uint255(idx) * 0.5
            continue 
        s = s * s
        t = t * s
        idx = uint255(idx) * 0.5
        continue 
    if t > -1 / s:
        revert with 'NH{q', 17
    if arg1 and 1000 > -1 / arg1:
        revert with 'NH{q', 17
    if not t * s:
        revert with 'NH{q', 18
    if arg3 and 1000 > -1 / arg3:
        revert with 'NH{q', 17
    if 1000 * arg1 / t * s and 100000 > -1 / 1000 * arg1 / t * s:
        revert with 'NH{q', 17
    if not 1000 * arg3 / 10^18:
        revert with 'NH{q', 18
    if 100000 * 1000 * arg1 / t * s / 1000 * arg3 / 10^18 and 10^18 > -1 / 100000 * 1000 * arg1 / t * s / 1000 * arg3 / 10^18:
        revert with 'NH{q', 17
    if 10^18 * 100000 * 1000 * arg1 / t * s / 1000 * arg3 / 10^18 and arg4 > -1 / 10^18 * 100000 * 1000 * arg1 / t * s / 1000 * arg3 / 10^18:
        revert with 'NH{q', 17
    return 100000 * 1000 * arg1 / t * s / 1000 * arg3 / 10^18, 
           10^18 * 100000 * 1000 * arg1 / t * s / 1000 * arg3 / 10^18 * arg4 / 1000 / 100000
}

function sub_4c36f864(?) {
    require calldata.size - 4 >= 192
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg3 == address(arg3)
    require arg4 == arg4
    require arg5 == arg5
    require arg6 == arg6
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(stor4)
    staticcall stor4.getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(arg1), stor2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if not arg2:
        require ext_code.size(address(arg1))
        staticcall address(arg1).0x70a08231 with:
                gas gas_remaining wei
               args address(ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] and 1000 > -1 / ext_call.return_data[0]:
            revert with 'NH{q', 17
        require ext_code.size(stor6)
        staticcall stor6.0x70a08231 with:
                gas gas_remaining wei
               args address(ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] and 1000 > -1 / ext_call.return_data[0]:
            revert with 'NH{q', 17
        if 1000 * ext_call.return_data[0] and 100000 > -1 / 1000 * ext_call.return_data[0]:
            revert with 'NH{q', 17
        if not 1000 * ext_call.return_data[0] / 10^18:
            revert with 'NH{q', 18
        if 100 * 10^6 * ext_call.return_data[0] / 1000 * ext_call.return_data[0] / 10^18 and 10^18 > -1 / 100 * 10^6 * ext_call.return_data[0] / 1000 * ext_call.return_data[0] / 10^18:
            revert with 'NH{q', 17
        if 10^18 * 100 * 10^6 * ext_call.return_data[0] / 1000 * ext_call.return_data[0] / 10^18 and arg5 > -1 / 10^18 * 100 * 10^6 * ext_call.return_data[0] / 1000 * ext_call.return_data[0] / 10^18:
            revert with 'NH{q', 17
        return 100 * 10^6 * ext_call.return_data[0] / 1000 * ext_call.return_data[0] / 10^18, 
               10^18 * 100 * 10^6 * ext_call.return_data[0] / 1000 * ext_call.return_data[0] / 10^18 * arg5 / 1000 / 100000,
               1000 * ext_call.return_data[0] / 10^18
    if bool(bool(arg2 < 78)) or bool(bool(arg2 < 32)):
        if 10^arg2 > -1:
            revert with 'NH{q', 17
        require ext_code.size(address(arg1))
        staticcall address(arg1).0x70a08231 with:
                gas gas_remaining wei
               args address(ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] and 1000 > -1 / ext_call.return_data[0]:
            revert with 'NH{q', 17
        if not 10^arg2:
            revert with 'NH{q', 18
        require ext_code.size(stor6)
        staticcall stor6.0x70a08231 with:
                gas gas_remaining wei
               args address(ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] and 1000 > -1 / ext_call.return_data[0]:
            revert with 'NH{q', 17
        if 1000 * ext_call.return_data[0] / 10^arg2 and 100000 > -1 / 1000 * ext_call.return_data[0] / 10^arg2:
            revert with 'NH{q', 17
        if not 1000 * ext_call.return_data[0] / 10^18:
            revert with 'NH{q', 18
        if 100000 * 1000 * ext_call.return_data[0] / 10^arg2 / 1000 * ext_call.return_data[0] / 10^18 and 10^18 > -1 / 100000 * 1000 * ext_call.return_data[0] / 10^arg2 / 1000 * ext_call.return_data[0] / 10^18:
            revert with 'NH{q', 17
        if 10^18 * 100000 * 1000 * ext_call.return_data[0] / 10^arg2 / 1000 * ext_call.return_data[0] / 10^18 and arg5 > -1 / 10^18 * 100000 * 1000 * ext_call.return_data[0] / 10^arg2 / 1000 * ext_call.return_data[0] / 10^18:
            revert with 'NH{q', 17
        return 100000 * 1000 * ext_call.return_data[0] / 10^arg2 / 1000 * ext_call.return_data[0] / 10^18, 
               10^18 * 100000 * 1000 * ext_call.return_data[0] / 10^arg2 / 1000 * ext_call.return_data[0] / 10^18 * arg5 / 1000 / 100000,
               1000 * ext_call.return_data[0] / 10^18
    s = 10
    t = 1
    idx = arg2
    while idx > 1:
        if s > -1 / s:
            revert with 'NH{q', 17
        if not bool(idx):
            s = s * s
            t = t
            idx = uint255(idx) * 0.5
            continue 
        s = s * s
        t = t * s
        idx = uint255(idx) * 0.5
        continue 
    if t > -1 / s:
        revert with 'NH{q', 17
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] and 1000 > -1 / ext_call.return_data[0]:
        revert with 'NH{q', 17
    if not t * s:
        revert with 'NH{q', 18
    require ext_code.size(stor6)
    staticcall stor6.0x70a08231 with:
            gas gas_remaining wei
           args address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] and 1000 > -1 / ext_call.return_data[0]:
        revert with 'NH{q', 17
    if 1000 * ext_call.return_data[0] / t * s and 100000 > -1 / 1000 * ext_call.return_data[0] / t * s:
        revert with 'NH{q', 17
    if not 1000 * ext_call.return_data[0] / 10^18:
        revert with 'NH{q', 18
    if 100000 * 1000 * ext_call.return_data[0] / t * s / 1000 * ext_call.return_data[0] / 10^18 and 10^18 > -1 / 100000 * 1000 * ext_call.return_data[0] / t * s / 1000 * ext_call.return_data[0] / 10^18:
        revert with 'NH{q', 17
    if 10^18 * 100000 * 1000 * ext_call.return_data[0] / t * s / 1000 * ext_call.return_data[0] / 10^18 and arg5 > -1 / 10^18 * 100000 * 1000 * ext_call.return_data[0] / t * s / 1000 * ext_call.return_data[0] / 10^18:
        revert with 'NH{q', 17
    return 100000 * 1000 * ext_call.return_data[0] / t * s / 1000 * ext_call.return_data[0] / 10^18, 
           10^18 * 100000 * 1000 * ext_call.return_data[0] / t * s / 1000 * ext_call.return_data[0] / 10^18 * arg5 / 1000 / 100000,
           1000 * ext_call.return_data[0] / 10^18
}

function sub_7dde0fc2(?) payable {
    require calldata.size - 4 >= 192
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg3 == address(arg3)
    require arg4 == arg4
    require arg5 == arg5
    require arg6 == arg6
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[132] = stor2
    require ext_code.size(stor4)
    staticcall stor4.getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(arg1), stor2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if not arg2:
        mem[ceil32(return_data.size) + 100] = address(ext_call.return_data[0])
        require ext_code.size(address(arg1))
        staticcall address(arg1).0x70a08231 with:
                gas gas_remaining wei
               args address(ext_call.return_data[0])
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] and 1000 > -1 / ext_call.return_data[0]:
            revert with 'NH{q', 17
        if 1000 * ext_call.return_data[0] > 0:
            mem[(2 * ceil32(return_data.size)) + 100] = address(ext_call.return_data[0])
            require ext_code.size(stor6)
            staticcall stor6.0x70a08231 with:
                    gas gas_remaining wei
                   args address(ext_call.return_data[0])
            mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] and 1000 > -1 / ext_call.return_data[0]:
                revert with 'NH{q', 17
            if 1000 * ext_call.return_data[0] / 10^18 > 0:
                if 1000 * ext_call.return_data[0] and 100000 > -1 / 1000 * ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if not 1000 * ext_call.return_data[0] / 10^18:
                    revert with 'NH{q', 18
                if not arg6:
                    if 100 * 10^6 * ext_call.return_data[0] / 1000 * ext_call.return_data[0] / 10^18 and msg.value > -1 / 100 * 10^6 * ext_call.return_data[0] / 1000 * ext_call.return_data[0] / 10^18:
                        revert with 'NH{q', 17
                    if 100 * 10^6 * ext_call.return_data[0] / 1000 * ext_call.return_data[0] / 10^18 * msg.value and arg5 > -1 / 100 * 10^6 * ext_call.return_data[0] / 1000 * ext_call.return_data[0] / 10^18 * msg.value:
                        revert with 'NH{q', 17
                    if 100 * 10^6 * ext_call.return_data[0] / 1000 * ext_call.return_data[0] / 10^18 * msg.value * arg5 / 1000 / 100000 > 0:
                        mem[(4 * ceil32(return_data.size)) + 128] = stor2
                        mem[(4 * ceil32(return_data.size)) + 160] = address(arg1)
                        mem[(4 * ceil32(return_data.size)) + 192] = 0x8a657e6700000000000000000000000000000000000000000000000000000000
                        mem[(4 * ceil32(return_data.size)) + 196] = 100 * 10^6 * ext_call.return_data[0] / 1000 * ext_call.return_data[0] / 10^18 * msg.value * arg5 / 1000 / 100000
                        mem[(4 * ceil32(return_data.size)) + 228] = 128
                        mem[(4 * ceil32(return_data.size)) + 324] = 2
                        idx = 0
                        s = (4 * ceil32(return_data.size)) + 128
                        t = (4 * ceil32(return_data.size)) + 356
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[(4 * ceil32(return_data.size)) + 260] = address(arg3)
                        mem[(4 * ceil32(return_data.size)) + 292] = arg4
                        require ext_code.size(stor5)
                        call stor5.swapAVAXForExactTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                           value msg.value wei
                             gas gas_remaining wei
                            args 100 * 10^6 * ext_call.return_data[0] / 1000 * ext_call.return_data[0] / 10^18 * msg.value * arg5 / 1000 / 100000, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 356 len 64]), address(arg3), arg4
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(4 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (6 * ceil32(return_data.size)) + 192
                        require return_data.size >= 32
                        _133 = mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 100 * 10^6 * ext_call.return_data[0] / 1000 * ext_call.return_data[0] / 10^18 * msg.value * arg5 / 1000 / 100000) >> 32
                        require mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 100 * 10^6 * ext_call.return_data[0] / 1000 * ext_call.return_data[0] / 10^18 * msg.value * arg5 / 1000 / 100000) >> 32 <= test266151307()
                        require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 100 * 10^6 * ext_call.return_data[0] / 1000 * ext_call.return_data[0] / 10^18 * msg.value * arg5 / 1000 / 100000) >> 32 + 223 < (4 * ceil32(return_data.size)) + return_data.size + 192
                        _139 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 100 * 10^6 * ext_call.return_data[0] / 1000 * ext_call.return_data[0] / 10^18 * msg.value * arg5 / 1000 / 100000) >> 32 + 192]
                        if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 100 * 10^6 * ext_call.return_data[0] / 1000 * ext_call.return_data[0] / 10^18 * msg.value * arg5 / 1000 / 100000) >> 32 + 192] > test266151307():
                            revert with 'NH{q', 65
                        if (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 100 * 10^6 * ext_call.return_data[0] / 1000 * ext_call.return_data[0] / 10^18 * msg.value * arg5 / 1000 / 100000) >> 32 + 192]) + 193 > test266151307() or floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 100 * 10^6 * ext_call.return_data[0] / 1000 * ext_call.return_data[0] / 10^18 * msg.value * arg5 / 1000 / 100000) >> 32 + 192]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 100 * 10^6 * ext_call.return_data[0] / 1000 * ext_call.return_data[0] / 10^18 * msg.value * arg5 / 1000 / 100000) >> 32 + 192]) + 193
                        mem[(6 * ceil32(return_data.size)) + 192] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 100 * 10^6 * ext_call.return_data[0] / 1000 * ext_call.return_data[0] / 10^18 * msg.value * arg5 / 1000 / 100000) >> 32 + 192]
                        require _133 + (32 * _139) + 32 <= return_data.size
                        idx = 0
                        s = (4 * ceil32(return_data.size)) + _133 + 224
                        t = (6 * ceil32(return_data.size)) + 224
                        while idx < _139:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                else:
                    if arg6 and 1000 > -1 / arg6:
                        revert with 'NH{q', 17
                    if 100 * 10^6 * ext_call.return_data[0] / 1000 * ext_call.return_data[0] / 10^18 > 1000 * arg6:
                        if 100 * 10^6 * ext_call.return_data[0] / 1000 * ext_call.return_data[0] / 10^18 and msg.value > -1 / 100 * 10^6 * ext_call.return_data[0] / 1000 * ext_call.return_data[0] / 10^18:
                            revert with 'NH{q', 17
                        if 100 * 10^6 * ext_call.return_data[0] / 1000 * ext_call.return_data[0] / 10^18 * msg.value and arg5 > -1 / 100 * 10^6 * ext_call.return_data[0] / 1000 * ext_call.return_data[0] / 10^18 * msg.value:
                            revert with 'NH{q', 17
                        if 100 * 10^6 * ext_call.return_data[0] / 1000 * ext_call.return_data[0] / 10^18 * msg.value * arg5 / 1000 / 100000 > 0:
                            mem[(4 * ceil32(return_data.size)) + 128] = stor2
                            mem[(4 * ceil32(return_data.size)) + 160] = address(arg1)
                            mem[(4 * ceil32(return_data.size)) + 192] = 0x8a657e6700000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + 196] = 100 * 10^6 * ext_call.return_data[0] / 1000 * ext_call.return_data[0] / 10^18 * msg.value * arg5 / 1000 / 100000
                            mem[(4 * ceil32(return_data.size)) + 228] = 128
                            mem[(4 * ceil32(return_data.size)) + 324] = 2
                            idx = 0
                            s = (4 * ceil32(return_data.size)) + 128
                            t = (4 * ceil32(return_data.size)) + 356
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[(4 * ceil32(return_data.size)) + 260] = address(arg3)
                            mem[(4 * ceil32(return_data.size)) + 292] = arg4
                            require ext_code.size(stor5)
                            call stor5.swapAVAXForExactTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                               value msg.value wei
                                 gas gas_remaining wei
                                args 100 * 10^6 * ext_call.return_data[0] / 1000 * ext_call.return_data[0] / 10^18 * msg.value * arg5 / 1000 / 100000, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 356 len 64]), address(arg3), arg4
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(4 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (6 * ceil32(return_data.size)) + 192
                            require return_data.size >= 32
                            _134 = mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 100 * 10^6 * ext_call.return_data[0] / 1000 * ext_call.return_data[0] / 10^18 * msg.value * arg5 / 1000 / 100000) >> 32
                            require mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 100 * 10^6 * ext_call.return_data[0] / 1000 * ext_call.return_data[0] / 10^18 * msg.value * arg5 / 1000 / 100000) >> 32 <= test266151307()
                            require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 100 * 10^6 * ext_call.return_data[0] / 1000 * ext_call.return_data[0] / 10^18 * msg.value * arg5 / 1000 / 100000) >> 32 + 223 < (4 * ceil32(return_data.size)) + return_data.size + 192
                            _140 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 100 * 10^6 * ext_call.return_data[0] / 1000 * ext_call.return_data[0] / 10^18 * msg.value * arg5 / 1000 / 100000) >> 32 + 192]
                            if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 100 * 10^6 * ext_call.return_data[0] / 1000 * ext_call.return_data[0] / 10^18 * msg.value * arg5 / 1000 / 100000) >> 32 + 192] > test266151307():
                                revert with 'NH{q', 65
                            if (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 100 * 10^6 * ext_call.return_data[0] / 1000 * ext_call.return_data[0] / 10^18 * msg.value * arg5 / 1000 / 100000) >> 32 + 192]) + 193 > test266151307() or floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 100 * 10^6 * ext_call.return_data[0] / 1000 * ext_call.return_data[0] / 10^18 * msg.value * arg5 / 1000 / 100000) >> 32 + 192]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 100 * 10^6 * ext_call.return_data[0] / 1000 * ext_call.return_data[0] / 10^18 * msg.value * arg5 / 1000 / 100000) >> 32 + 192]) + 193
                            mem[(6 * ceil32(return_data.size)) + 192] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 100 * 10^6 * ext_call.return_data[0] / 1000 * ext_call.return_data[0] / 10^18 * msg.value * arg5 / 1000 / 100000) >> 32 + 192]
                            require _134 + (32 * _140) + 32 <= return_data.size
                            idx = 0
                            s = (4 * ceil32(return_data.size)) + _134 + 224
                            t = (6 * ceil32(return_data.size)) + 224
                            while idx < _140:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
    else:
        if bool(bool(arg2 < 78)) or bool(bool(arg2 < 32)):
            if 10^arg2 > -1:
                revert with 'NH{q', 17
            mem[ceil32(return_data.size) + 100] = address(ext_call.return_data[0])
            require ext_code.size(address(arg1))
            staticcall address(arg1).0x70a08231 with:
                    gas gas_remaining wei
                   args address(ext_call.return_data[0])
            mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] and 1000 > -1 / ext_call.return_data[0]:
                revert with 'NH{q', 17
            if not 10^arg2:
                revert with 'NH{q', 18
            if 1000 * ext_call.return_data[0] / 10^arg2 > 0:
                mem[(2 * ceil32(return_data.size)) + 100] = address(ext_call.return_data[0])
                require ext_code.size(stor6)
                staticcall stor6.0x70a08231 with:
                        gas gas_remaining wei
                       args address(ext_call.return_data[0])
                mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if ext_call.return_data[0] and 1000 > -1 / ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if 1000 * ext_call.return_data[0] / 10^18 > 0:
                    if 1000 * ext_call.return_data[0] / 10^arg2 and 100000 > -1 / 1000 * ext_call.return_data[0] / 10^arg2:
                        revert with 'NH{q', 17
                    if not 1000 * ext_call.return_data[0] / 10^18:
                        revert with 'NH{q', 18
                    if not arg6:
                        if 100000 * 1000 * ext_call.return_data[0] / 10^arg2 / 1000 * ext_call.return_data[0] / 10^18 and msg.value > -1 / 100000 * 1000 * ext_call.return_data[0] / 10^arg2 / 1000 * ext_call.return_data[0] / 10^18:
                            revert with 'NH{q', 17
                        if 100000 * 1000 * ext_call.return_data[0] / 10^arg2 / 1000 * ext_call.return_data[0] / 10^18 * msg.value and arg5 > -1 / 100000 * 1000 * ext_call.return_data[0] / 10^arg2 / 1000 * ext_call.return_data[0] / 10^18 * msg.value:
                            revert with 'NH{q', 17
                        if 100000 * 1000 * ext_call.return_data[0] / 10^arg2 / 1000 * ext_call.return_data[0] / 10^18 * msg.value * arg5 / 1000 / 100000 > 0:
                            mem[(4 * ceil32(return_data.size)) + 128] = stor2
                            mem[(4 * ceil32(return_data.size)) + 160] = address(arg1)
                            mem[(4 * ceil32(return_data.size)) + 192] = 0x8a657e6700000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + 196] = 100000 * 1000 * ext_call.return_data[0] / 10^arg2 / 1000 * ext_call.return_data[0] / 10^18 * msg.value * arg5 / 1000 / 100000
                            mem[(4 * ceil32(return_data.size)) + 228] = 128
                            mem[(4 * ceil32(return_data.size)) + 324] = 2
                            idx = 0
                            s = (4 * ceil32(return_data.size)) + 128
                            t = (4 * ceil32(return_data.size)) + 356
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[(4 * ceil32(return_data.size)) + 260] = address(arg3)
                            mem[(4 * ceil32(return_data.size)) + 292] = arg4
                            require ext_code.size(stor5)
                            call stor5.swapAVAXForExactTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                               value msg.value wei
                                 gas gas_remaining wei
                                args 100000 * 1000 * ext_call.return_data[0] / 10^arg2 / 1000 * ext_call.return_data[0] / 10^18 * msg.value * arg5 / 1000 / 100000, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 356 len 64]), address(arg3), arg4
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(4 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (6 * ceil32(return_data.size)) + 192
                            require return_data.size >= 32
                            _131 = mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 100000 * 1000 * ext_call.return_data[0] / 10^arg2 / 1000 * ext_call.return_data[0] / 10^18 * msg.value * arg5 / 1000 / 100000) >> 32
                            require mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 100000 * 1000 * ext_call.return_data[0] / 10^arg2 / 1000 * ext_call.return_data[0] / 10^18 * msg.value * arg5 / 1000 / 100000) >> 32 <= test266151307()
                            require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 100000 * 1000 * ext_call.return_data[0] / 10^arg2 / 1000 * ext_call.return_data[0] / 10^18 * msg.value * arg5 / 1000 / 100000) >> 32 + 223 < (4 * ceil32(return_data.size)) + return_data.size + 192
                            _137 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 100000 * 1000 * ext_call.return_data[0] / 10^arg2 / 1000 * ext_call.return_data[0] / 10^18 * msg.value * arg5 / 1000 / 100000) >> 32 + 192]
                            if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 100000 * 1000 * ext_call.return_data[0] / 10^arg2 / 1000 * ext_call.return_data[0] / 10^18 * msg.value * arg5 / 1000 / 100000) >> 32 + 192] > test266151307():
                                revert with 'NH{q', 65
                            if (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 100000 * 1000 * ext_call.return_data[0] / 10^arg2 / 1000 * ext_call.return_data[0] / 10^18 * msg.value * arg5 / 1000 / 100000) >> 32 + 192]) + 193 > test266151307() or floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 100000 * 1000 * ext_call.return_data[0] / 10^arg2 / 1000 * ext_call.return_data[0] / 10^18 * msg.value * arg5 / 1000 / 100000) >> 32 + 192]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 100000 * 1000 * ext_call.return_data[0] / 10^arg2 / 1000 * ext_call.return_data[0] / 10^18 * msg.value * arg5 / 1000 / 100000) >> 32 + 192]) + 193
                            mem[(6 * ceil32(return_data.size)) + 192] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 100000 * 1000 * ext_call.return_data[0] / 10^arg2 / 1000 * ext_call.return_data[0] / 10^18 * msg.value * arg5 / 1000 / 100000) >> 32 + 192]
                            require _131 + (32 * _137) + 32 <= return_data.size
                            idx = 0
                            s = (4 * ceil32(return_data.size)) + _131 + 224
                            t = (6 * ceil32(return_data.size)) + 224
                            while idx < _137:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                    else:
                        if arg6 and 1000 > -1 / arg6:
                            revert with 'NH{q', 17
                        if 100000 * 1000 * ext_call.return_data[0] / 10^arg2 / 1000 * ext_call.return_data[0] / 10^18 > 1000 * arg6:
                            if 100000 * 1000 * ext_call.return_data[0] / 10^arg2 / 1000 * ext_call.return_data[0] / 10^18 and msg.value > -1 / 100000 * 1000 * ext_call.return_data[0] / 10^arg2 / 1000 * ext_call.return_data[0] / 10^18:
                                revert with 'NH{q', 17
                            if 100000 * 1000 * ext_call.return_data[0] / 10^arg2 / 1000 * ext_call.return_data[0] / 10^18 * msg.value and arg5 > -1 / 100000 * 1000 * ext_call.return_data[0] / 10^arg2 / 1000 * ext_call.return_data[0] / 10^18 * msg.value:
                                revert with 'NH{q', 17
                            if 100000 * 1000 * ext_call.return_data[0] / 10^arg2 / 1000 * ext_call.return_data[0] / 10^18 * msg.value * arg5 / 1000 / 100000 > 0:
                                mem[(4 * ceil32(return_data.size)) + 128] = stor2
                                mem[(4 * ceil32(return_data.size)) + 160] = address(arg1)
                                mem[(4 * ceil32(return_data.size)) + 192] = 0x8a657e6700000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + 196] = 100000 * 1000 * ext_call.return_data[0] / 10^arg2 / 1000 * ext_call.return_data[0] / 10^18 * msg.value * arg5 / 1000 / 100000
                                mem[(4 * ceil32(return_data.size)) + 228] = 128
                                mem[(4 * ceil32(return_data.size)) + 324] = 2
                                idx = 0
                                s = (4 * ceil32(return_data.size)) + 128
                                t = (4 * ceil32(return_data.size)) + 356
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(4 * ceil32(return_data.size)) + 260] = address(arg3)
                                mem[(4 * ceil32(return_data.size)) + 292] = arg4
                                require ext_code.size(stor5)
                                call stor5.swapAVAXForExactTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                   value msg.value wei
                                     gas gas_remaining wei
                                    args 100000 * 1000 * ext_call.return_data[0] / 10^arg2 / 1000 * ext_call.return_data[0] / 10^18 * msg.value * arg5 / 1000 / 100000, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 356 len 64]), address(arg3), arg4
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(4 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (6 * ceil32(return_data.size)) + 192
                                require return_data.size >= 32
                                _132 = mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 100000 * 1000 * ext_call.return_data[0] / 10^arg2 / 1000 * ext_call.return_data[0] / 10^18 * msg.value * arg5 / 1000 / 100000) >> 32
                                require mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 100000 * 1000 * ext_call.return_data[0] / 10^arg2 / 1000 * ext_call.return_data[0] / 10^18 * msg.value * arg5 / 1000 / 100000) >> 32 <= test266151307()
                                require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 100000 * 1000 * ext_call.return_data[0] / 10^arg2 / 1000 * ext_call.return_data[0] / 10^18 * msg.value * arg5 / 1000 / 100000) >> 32 + 223 < (4 * ceil32(return_data.size)) + return_data.size + 192
                                _138 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 100000 * 1000 * ext_call.return_data[0] / 10^arg2 / 1000 * ext_call.return_data[0] / 10^18 * msg.value * arg5 / 1000 / 100000) >> 32 + 192]
                                if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 100000 * 1000 * ext_call.return_data[0] / 10^arg2 / 1000 * ext_call.return_data[0] / 10^18 * msg.value * arg5 / 1000 / 100000) >> 32 + 192] > test266151307():
                                    revert with 'NH{q', 65
                                if (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 100000 * 1000 * ext_call.return_data[0] / 10^arg2 / 1000 * ext_call.return_data[0] / 10^18 * msg.value * arg5 / 1000 / 100000) >> 32 + 192]) + 193 > test266151307() or floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 100000 * 1000 * ext_call.return_data[0] / 10^arg2 / 1000 * ext_call.return_data[0] / 10^18 * msg.value * arg5 / 1000 / 100000) >> 32 + 192]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 100000 * 1000 * ext_call.return_data[0] / 10^arg2 / 1000 * ext_call.return_data[0] / 10^18 * msg.value * arg5 / 1000 / 100000) >> 32 + 192]) + 193
                                mem[(6 * ceil32(return_data.size)) + 192] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 100000 * 1000 * ext_call.return_data[0] / 10^arg2 / 1000 * ext_call.return_data[0] / 10^18 * msg.value * arg5 / 1000 / 100000) >> 32 + 192]
                                require _132 + (32 * _138) + 32 <= return_data.size
                                idx = 0
                                s = (4 * ceil32(return_data.size)) + _132 + 224
                                t = (6 * ceil32(return_data.size)) + 224
                                while idx < _138:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
        else:
            s = 10
            t = 1
            idx = arg2
            while idx > 1:
                if s > -1 / s:
                    revert with 'NH{q', 17
                if not bool(idx):
                    s = s * s
                    t = t
                    idx = uint255(idx) * 0.5
                    continue 
                s = s * s
                t = t * s
                idx = uint255(idx) * 0.5
                continue 
            if t > -1 / s:
                revert with 'NH{q', 17
            mem[ceil32(return_data.size) + 100] = address(ext_call.return_data[0])
            require ext_code.size(address(arg1))
            staticcall address(arg1).0x70a08231 with:
                    gas gas_remaining wei
                   args address(ext_call.return_data[0])
            mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] and 1000 > -1 / ext_call.return_data[0]:
                revert with 'NH{q', 17
            if not t * s:
                revert with 'NH{q', 18
            if 1000 * ext_call.return_data[0] / t * s > 0:
                mem[(2 * ceil32(return_data.size)) + 100] = address(ext_call.return_data[0])
                require ext_code.size(stor6)
                staticcall stor6.0x70a08231 with:
                        gas gas_remaining wei
                       args address(ext_call.return_data[0])
                mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if ext_call.return_data[0] and 1000 > -1 / ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if 1000 * ext_call.return_data[0] / 10^18 > 0:
                    if 1000 * ext_call.return_data[0] / t * s and 100000 > -1 / 1000 * ext_call.return_data[0] / t * s:
                        revert with 'NH{q', 17
                    if not 1000 * ext_call.return_data[0] / 10^18:
                        revert with 'NH{q', 18
                    if not arg6:
                        if 100000 * 1000 * ext_call.return_data[0] / t * s / 1000 * ext_call.return_data[0] / 10^18 and msg.value > -1 / 100000 * 1000 * ext_call.return_data[0] / t * s / 1000 * ext_call.return_data[0] / 10^18:
                            revert with 'NH{q', 17
                        if 100000 * 1000 * ext_call.return_data[0] / t * s / 1000 * ext_call.return_data[0] / 10^18 * msg.value and arg5 > -1 / 100000 * 1000 * ext_call.return_data[0] / t * s / 1000 * ext_call.return_data[0] / 10^18 * msg.value:
                            revert with 'NH{q', 17
                        if 100000 * 1000 * ext_call.return_data[0] / t * s / 1000 * ext_call.return_data[0] / 10^18 * msg.value * arg5 / 1000 / 100000 > 0:
                            mem[(4 * ceil32(return_data.size)) + 128] = stor2
                            mem[(4 * ceil32(return_data.size)) + 160] = address(arg1)
                            mem[(4 * ceil32(return_data.size)) + 192] = 0x8a657e6700000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + 196] = 100000 * 1000 * ext_call.return_data[0] / t * s / 1000 * ext_call.return_data[0] / 10^18 * msg.value * arg5 / 1000 / 100000
                            mem[(4 * ceil32(return_data.size)) + 228] = 128
                            mem[(4 * ceil32(return_data.size)) + 324] = 2
                            idx = 0
                            u = (4 * ceil32(return_data.size)) + 128
                            v = (4 * ceil32(return_data.size)) + 356
                            while idx < 2:
                                mem[v] = mem[u + 12 len 20]
                                idx = idx + 1
                                u = u + 32
                                v = v + 32
                                continue 
                            mem[(4 * ceil32(return_data.size)) + 260] = address(arg3)
                            mem[(4 * ceil32(return_data.size)) + 292] = arg4
                            require ext_code.size(stor5)
                            call stor5.swapAVAXForExactTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                               value msg.value wei
                                 gas gas_remaining wei
                                args 100000 * 1000 * ext_call.return_data[0] / t * s / 1000 * ext_call.return_data[0] / 10^18 * msg.value * arg5 / 1000 / 100000, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 356 len 64]), address(arg3), arg4
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(4 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (6 * ceil32(return_data.size)) + 192
                            require return_data.size >= 32
                            _129 = mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 100000 * 1000 * ext_call.return_data[0] / t * s / 1000 * ext_call.return_data[0] / 10^18 * msg.value * arg5 / 1000 / 100000) >> 32
                            require mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 100000 * 1000 * ext_call.return_data[0] / t * s / 1000 * ext_call.return_data[0] / 10^18 * msg.value * arg5 / 1000 / 100000) >> 32 <= test266151307()
                            require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 100000 * 1000 * ext_call.return_data[0] / t * s / 1000 * ext_call.return_data[0] / 10^18 * msg.value * arg5 / 1000 / 100000) >> 32 + 223 < (4 * ceil32(return_data.size)) + return_data.size + 192
                            _135 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 100000 * 1000 * ext_call.return_data[0] / t * s / 1000 * ext_call.return_data[0] / 10^18 * msg.value * arg5 / 1000 / 100000) >> 32 + 192]
                            if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 100000 * 1000 * ext_call.return_data[0] / t * s / 1000 * ext_call.return_data[0] / 10^18 * msg.value * arg5 / 1000 / 100000) >> 32 + 192] > test266151307():
                                revert with 'NH{q', 65
                            if (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 100000 * 1000 * ext_call.return_data[0] / t * s / 1000 * ext_call.return_data[0] / 10^18 * msg.value * arg5 / 1000 / 100000) >> 32 + 192]) + 193 > test266151307() or floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 100000 * 1000 * ext_call.return_data[0] / t * s / 1000 * ext_call.return_data[0] / 10^18 * msg.value * arg5 / 1000 / 100000) >> 32 + 192]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 100000 * 1000 * ext_call.return_data[0] / t * s / 1000 * ext_call.return_data[0] / 10^18 * msg.value * arg5 / 1000 / 100000) >> 32 + 192]) + 193
                            mem[(6 * ceil32(return_data.size)) + 192] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 100000 * 1000 * ext_call.return_data[0] / t * s / 1000 * ext_call.return_data[0] / 10^18 * msg.value * arg5 / 1000 / 100000) >> 32 + 192]
                            require _129 + (32 * _135) + 32 <= return_data.size
                            idx = 0
                            s = (4 * ceil32(return_data.size)) + _129 + 224
                            t = (6 * ceil32(return_data.size)) + 224
                            while idx < _135:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                    else:
                        if arg6 and 1000 > -1 / arg6:
                            revert with 'NH{q', 17
                        if 100000 * 1000 * ext_call.return_data[0] / t * s / 1000 * ext_call.return_data[0] / 10^18 > 1000 * arg6:
                            if 100000 * 1000 * ext_call.return_data[0] / t * s / 1000 * ext_call.return_data[0] / 10^18 and msg.value > -1 / 100000 * 1000 * ext_call.return_data[0] / t * s / 1000 * ext_call.return_data[0] / 10^18:
                                revert with 'NH{q', 17
                            if 100000 * 1000 * ext_call.return_data[0] / t * s / 1000 * ext_call.return_data[0] / 10^18 * msg.value and arg5 > -1 / 100000 * 1000 * ext_call.return_data[0] / t * s / 1000 * ext_call.return_data[0] / 10^18 * msg.value:
                                revert with 'NH{q', 17
                            if 100000 * 1000 * ext_call.return_data[0] / t * s / 1000 * ext_call.return_data[0] / 10^18 * msg.value * arg5 / 1000 / 100000 > 0:
                                mem[(4 * ceil32(return_data.size)) + 128] = stor2
                                mem[(4 * ceil32(return_data.size)) + 160] = address(arg1)
                                mem[(4 * ceil32(return_data.size)) + 192] = 0x8a657e6700000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + 196] = 100000 * 1000 * ext_call.return_data[0] / t * s / 1000 * ext_call.return_data[0] / 10^18 * msg.value * arg5 / 1000 / 100000
                                mem[(4 * ceil32(return_data.size)) + 228] = 128
                                mem[(4 * ceil32(return_data.size)) + 324] = 2
                                idx = 0
                                u = (4 * ceil32(return_data.size)) + 128
                                v = (4 * ceil32(return_data.size)) + 356
                                while idx < 2:
                                    mem[v] = mem[u + 12 len 20]
                                    idx = idx + 1
                                    u = u + 32
                                    v = v + 32
                                    continue 
                                mem[(4 * ceil32(return_data.size)) + 260] = address(arg3)
                                mem[(4 * ceil32(return_data.size)) + 292] = arg4
                                require ext_code.size(stor5)
                                call stor5.swapAVAXForExactTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                   value msg.value wei
                                     gas gas_remaining wei
                                    args 100000 * 1000 * ext_call.return_data[0] / t * s / 1000 * ext_call.return_data[0] / 10^18 * msg.value * arg5 / 1000 / 100000, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 356 len 64]), address(arg3), arg4
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(4 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (6 * ceil32(return_data.size)) + 192
                                require return_data.size >= 32
                                _130 = mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 100000 * 1000 * ext_call.return_data[0] / t * s / 1000 * ext_call.return_data[0] / 10^18 * msg.value * arg5 / 1000 / 100000) >> 32
                                require mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 100000 * 1000 * ext_call.return_data[0] / t * s / 1000 * ext_call.return_data[0] / 10^18 * msg.value * arg5 / 1000 / 100000) >> 32 <= test266151307()
                                require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 100000 * 1000 * ext_call.return_data[0] / t * s / 1000 * ext_call.return_data[0] / 10^18 * msg.value * arg5 / 1000 / 100000) >> 32 + 223 < (4 * ceil32(return_data.size)) + return_data.size + 192
                                _136 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 100000 * 1000 * ext_call.return_data[0] / t * s / 1000 * ext_call.return_data[0] / 10^18 * msg.value * arg5 / 1000 / 100000) >> 32 + 192]
                                if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 100000 * 1000 * ext_call.return_data[0] / t * s / 1000 * ext_call.return_data[0] / 10^18 * msg.value * arg5 / 1000 / 100000) >> 32 + 192] > test266151307():
                                    revert with 'NH{q', 65
                                if (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 100000 * 1000 * ext_call.return_data[0] / t * s / 1000 * ext_call.return_data[0] / 10^18 * msg.value * arg5 / 1000 / 100000) >> 32 + 192]) + 193 > test266151307() or floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 100000 * 1000 * ext_call.return_data[0] / t * s / 1000 * ext_call.return_data[0] / 10^18 * msg.value * arg5 / 1000 / 100000) >> 32 + 192]) + 1 < 0:
                                    revert with 'NH{q', 65
                                mem[64] = (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 100000 * 1000 * ext_call.return_data[0] / t * s / 1000 * ext_call.return_data[0] / 10^18 * msg.value * arg5 / 1000 / 100000) >> 32 + 192]) + 193
                                mem[(6 * ceil32(return_data.size)) + 192] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 100000 * 1000 * ext_call.return_data[0] / t * s / 1000 * ext_call.return_data[0] / 10^18 * msg.value * arg5 / 1000 / 100000) >> 32 + 192]
                                require _130 + (32 * _136) + 32 <= return_data.size
                                idx = 0
                                s = (4 * ceil32(return_data.size)) + _130 + 224
                                t = (6 * ceil32(return_data.size)) + 224
                                while idx < _136:
                                    require mem[s] == mem[s]
                                    mem[t] = mem[s]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
}



}
