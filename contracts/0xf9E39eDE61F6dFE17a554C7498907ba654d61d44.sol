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
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg2:
        if arg1 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
            revert with 0, 17
        if arg3 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
            revert with 0, 17
        if 1000 * arg1 > 0xa7c5ac471b4784230fcf80dc33721d53cddd6e04c059210385c67dfe32a0:
            revert with 0, 17
        if not 1000 * arg3 / 10^18:
            revert with 0, 18
        if 100 * 10^6 * arg1 / 1000 * arg3 / 10^18 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
            revert with 0, 17
        if 10^18 * 100 * 10^6 * arg1 / 1000 * arg3 / 10^18 and arg4 > -1 / 10^18 * 100 * 10^6 * arg1 / 1000 * arg3 / 10^18:
            revert with 0, 17
        return 100 * 10^6 * arg1 / 1000 * arg3 / 10^18, 10^18 * 100 * 10^6 * arg1 / 1000 * arg3 / 10^18 * arg4 / 1000 / 100000
    if bool(bool(arg2 < 78)) or bool(bool(arg2 < 32)):
        if arg1 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
            revert with 0, 17
        if not 10^arg2:
            revert with 0, 18
        if arg3 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
            revert with 0, 17
        if 1000 * arg1 / 10^arg2 > 0xa7c5ac471b4784230fcf80dc33721d53cddd6e04c059210385c67dfe32a0:
            revert with 0, 17
        if not 1000 * arg3 / 10^18:
            revert with 0, 18
        if 100000 * 1000 * arg1 / 10^arg2 / 1000 * arg3 / 10^18 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
            revert with 0, 17
        if 10^18 * 100000 * 1000 * arg1 / 10^arg2 / 1000 * arg3 / 10^18 and arg4 > -1 / 10^18 * 100000 * 1000 * arg1 / 10^arg2 / 1000 * arg3 / 10^18:
            revert with 0, 17
        return 100000 * 1000 * arg1 / 10^arg2 / 1000 * arg3 / 10^18, 
               10^18 * 100000 * 1000 * arg1 / 10^arg2 / 1000 * arg3 / 10^18 * arg4 / 1000 / 100000
    s = 10
    t = 1
    idx = arg2
    while idx > 1:
        if s > -1 / s:
            revert with 0, 17
        if not bool(idx):
            s = s * s
            t = t
            idx = uint255(idx) * 0.5
            continue 
        s = s * s
        t = s * t
        idx = uint255(idx) * 0.5
        continue 
    if t > -1 / s:
        revert with 0, 17
    if arg1 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
        revert with 0, 17
    if not s * t:
        revert with 0, 18
    if arg3 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
        revert with 0, 17
    if 1000 * arg1 / s * t > 0xa7c5ac471b4784230fcf80dc33721d53cddd6e04c059210385c67dfe32a0:
        revert with 0, 17
    if not 1000 * arg3 / 10^18:
        revert with 0, 18
    if 100000 * 1000 * arg1 / s * t / 1000 * arg3 / 10^18 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
        revert with 0, 17
    if 10^18 * 100000 * 1000 * arg1 / s * t / 1000 * arg3 / 10^18 and arg4 > -1 / 10^18 * 100000 * 1000 * arg1 / s * t / 1000 * arg3 / 10^18:
        revert with 0, 17
    return 100000 * 1000 * arg1 / s * t / 1000 * arg3 / 10^18, 
           10^18 * 100000 * 1000 * arg1 / s * t / 1000 * arg3 / 10^18 * arg4 / 1000 / 100000
}

function sub_4c36f864(?) {
    require calldata.size - 4 >= 192
    require arg1 == address(arg1)
    require arg3 == address(arg3)
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
        if ext_call.return_data[0] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
            revert with 0, 17
        require ext_code.size(stor6)
        staticcall stor6.0x70a08231 with:
                gas gas_remaining wei
               args address(ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
            revert with 0, 17
        if 1000 * ext_call.return_data[0] > 0xa7c5ac471b4784230fcf80dc33721d53cddd6e04c059210385c67dfe32a0:
            revert with 0, 17
        if not 1000 * ext_call.return_data[0] / 10^18:
            revert with 0, 18
        if 100 * 10^6 * ext_call.return_data[0] / 1000 * ext_call.return_data[0] / 10^18 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
            revert with 0, 17
        if 10^18 * 100 * 10^6 * ext_call.return_data[0] / 1000 * ext_call.return_data[0] / 10^18 and arg4 > -1 / 10^18 * 100 * 10^6 * ext_call.return_data[0] / 1000 * ext_call.return_data[0] / 10^18:
            revert with 0, 17
        return 100 * 10^6 * ext_call.return_data[0] / 1000 * ext_call.return_data[0] / 10^18, 
               10^18 * 100 * 10^6 * ext_call.return_data[0] / 1000 * ext_call.return_data[0] / 10^18 * arg4 / 1000 / 100000
    if bool(bool(arg2 < 78)) or bool(bool(arg2 < 32)):
        require ext_code.size(address(arg1))
        staticcall address(arg1).0x70a08231 with:
                gas gas_remaining wei
               args address(ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
            revert with 0, 17
        if not 10^arg2:
            revert with 0, 18
        require ext_code.size(stor6)
        staticcall stor6.0x70a08231 with:
                gas gas_remaining wei
               args address(ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
            revert with 0, 17
        if 1000 * ext_call.return_data[0] / 10^arg2 > 0xa7c5ac471b4784230fcf80dc33721d53cddd6e04c059210385c67dfe32a0:
            revert with 0, 17
        if not 1000 * ext_call.return_data[0] / 10^18:
            revert with 0, 18
        if 100000 * 1000 * ext_call.return_data[0] / 10^arg2 / 1000 * ext_call.return_data[0] / 10^18 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
            revert with 0, 17
        if 10^18 * 100000 * 1000 * ext_call.return_data[0] / 10^arg2 / 1000 * ext_call.return_data[0] / 10^18 and arg4 > -1 / 10^18 * 100000 * 1000 * ext_call.return_data[0] / 10^arg2 / 1000 * ext_call.return_data[0] / 10^18:
            revert with 0, 17
        return 100000 * 1000 * ext_call.return_data[0] / 10^arg2 / 1000 * ext_call.return_data[0] / 10^18, 
               10^18 * 100000 * 1000 * ext_call.return_data[0] / 10^arg2 / 1000 * ext_call.return_data[0] / 10^18 * arg4 / 1000 / 100000
    s = 10
    t = 1
    idx = arg2
    while idx > 1:
        if s > -1 / s:
            revert with 0, 17
        if not bool(idx):
            s = s * s
            t = t
            idx = uint255(idx) * 0.5
            continue 
        s = s * s
        t = s * t
        idx = uint255(idx) * 0.5
        continue 
    if t > -1 / s:
        revert with 0, 17
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
        revert with 0, 17
    if not s * t:
        revert with 0, 18
    require ext_code.size(stor6)
    staticcall stor6.0x70a08231 with:
            gas gas_remaining wei
           args address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
        revert with 0, 17
    if 1000 * ext_call.return_data[0] / s * t > 0xa7c5ac471b4784230fcf80dc33721d53cddd6e04c059210385c67dfe32a0:
        revert with 0, 17
    if not 1000 * ext_call.return_data[0] / 10^18:
        revert with 0, 18
    if 100000 * 1000 * ext_call.return_data[0] / s * t / 1000 * ext_call.return_data[0] / 10^18 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
        revert with 0, 17
    if 10^18 * 100000 * 1000 * ext_call.return_data[0] / s * t / 1000 * ext_call.return_data[0] / 10^18 and arg4 > -1 / 10^18 * 100000 * 1000 * ext_call.return_data[0] / s * t / 1000 * ext_call.return_data[0] / 10^18:
        revert with 0, 17
    return 100000 * 1000 * ext_call.return_data[0] / s * t / 1000 * ext_call.return_data[0] / 10^18, 
           10^18 * 100000 * 1000 * ext_call.return_data[0] / s * t / 1000 * ext_call.return_data[0] / 10^18 * arg4 / 1000 / 100000
}

function sub_7dde0fc2(?) payable {
    require calldata.size - 4 >= 192
    require arg1 == address(arg1)
    require arg3 == address(arg3)
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
        if ext_call.return_data[0] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
            revert with 0, 17
        if 1000 * ext_call.return_data[0]:
            mem[(2 * ceil32(return_data.size)) + 100] = address(ext_call.return_data[0])
            require ext_code.size(stor6)
            staticcall stor6.0x70a08231 with:
                    gas gas_remaining wei
                   args address(ext_call.return_data[0])
            mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                revert with 0, 17
            if 1000 * ext_call.return_data[0] / 10^18:
                if 1000 * ext_call.return_data[0] > 0xa7c5ac471b4784230fcf80dc33721d53cddd6e04c059210385c67dfe32a0:
                    revert with 0, 17
                if not 1000 * ext_call.return_data[0] / 10^18:
                    revert with 0, 18
                if not arg6:
                    if 100 * 10^6 * ext_call.return_data[0] / 1000 * ext_call.return_data[0] / 10^18 and msg.value > -1 / 100 * 10^6 * ext_call.return_data[0] / 1000 * ext_call.return_data[0] / 10^18:
                        revert with 0, 17
                    if 100 * 10^6 * ext_call.return_data[0] / 1000 * ext_call.return_data[0] / 10^18 * msg.value and arg5 > -1 / 100 * 10^6 * ext_call.return_data[0] / 1000 * ext_call.return_data[0] / 10^18 * msg.value:
                        revert with 0, 17
                    if 100 * 10^6 * ext_call.return_data[0] / 1000 * ext_call.return_data[0] / 10^18 * msg.value * arg5 / 1000 / 100000:
                        mem[(4 * ceil32(return_data.size)) + 128] = stor2
                        mem[(4 * ceil32(return_data.size)) + 160] = address(arg1)
                        mem[(4 * ceil32(return_data.size)) + 192] = 0x8a657e6700000000000000000000000000000000000000000000000000000000
                        mem[(4 * ceil32(return_data.size)) + 196] = 100 * 10^6 * ext_call.return_data[0] / 1000 * ext_call.return_data[0] / 10^18 * msg.value * arg5 / 1000 / 100000
                        mem[(4 * ceil32(return_data.size)) + 228] = 128
                        mem[(4 * ceil32(return_data.size)) + 324] = 2
                        idx = 0
                        s = (4 * ceil32(return_data.size)) + 356
                        t = (4 * ceil32(return_data.size)) + 128
                        while idx < 2:
                            mem[s] = mem[t + 12 len 20]
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
                        require mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 100 * 10^6 * ext_call.return_data[0] / 1000 * ext_call.return_data[0] / 10^18 * msg.value * arg5 / 1000 / 100000) >> 32 <= test266151307()
                        require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 100 * 10^6 * ext_call.return_data[0] / 1000 * ext_call.return_data[0] / 10^18 * msg.value * arg5 / 1000 / 100000) >> 32 + 223 < (4 * ceil32(return_data.size)) + return_data.size + 192
                        if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 100 * 10^6 * ext_call.return_data[0] / 1000 * ext_call.return_data[0] / 10^18 * msg.value * arg5 / 1000 / 100000) >> 32 + 192] > test266151307():
                            revert with 0, 65
                        if (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 100 * 10^6 * ext_call.return_data[0] / 1000 * ext_call.return_data[0] / 10^18 * msg.value * arg5 / 1000 / 100000) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 100 * 10^6 * ext_call.return_data[0] / 1000 * ext_call.return_data[0] / 10^18 * msg.value * arg5 / 1000 / 100000) >> 32 + 192]) + 1 < 0:
                            revert with 0, 65
                        require return_data.size >= mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 100 * 10^6 * ext_call.return_data[0] / 1000 * ext_call.return_data[0] / 10^18 * msg.value * arg5 / 1000 / 100000) >> 32 + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 100 * 10^6 * ext_call.return_data[0] / 1000 * ext_call.return_data[0] / 10^18 * msg.value * arg5 / 1000 / 100000) >> 32 + 192]) + 32
                else:
                    if arg6 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                        revert with 0, 17
                    if 100 * 10^6 * ext_call.return_data[0] / 1000 * ext_call.return_data[0] / 10^18 > 1000 * arg6:
                        if 100 * 10^6 * ext_call.return_data[0] / 1000 * ext_call.return_data[0] / 10^18 and msg.value > -1 / 100 * 10^6 * ext_call.return_data[0] / 1000 * ext_call.return_data[0] / 10^18:
                            revert with 0, 17
                        if 100 * 10^6 * ext_call.return_data[0] / 1000 * ext_call.return_data[0] / 10^18 * msg.value and arg5 > -1 / 100 * 10^6 * ext_call.return_data[0] / 1000 * ext_call.return_data[0] / 10^18 * msg.value:
                            revert with 0, 17
                        if 100 * 10^6 * ext_call.return_data[0] / 1000 * ext_call.return_data[0] / 10^18 * msg.value * arg5 / 1000 / 100000:
                            mem[(4 * ceil32(return_data.size)) + 128] = stor2
                            mem[(4 * ceil32(return_data.size)) + 160] = address(arg1)
                            mem[(4 * ceil32(return_data.size)) + 192] = 0x8a657e6700000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + 196] = 100 * 10^6 * ext_call.return_data[0] / 1000 * ext_call.return_data[0] / 10^18 * msg.value * arg5 / 1000 / 100000
                            mem[(4 * ceil32(return_data.size)) + 228] = 128
                            mem[(4 * ceil32(return_data.size)) + 324] = 2
                            idx = 0
                            s = (4 * ceil32(return_data.size)) + 356
                            t = (4 * ceil32(return_data.size)) + 128
                            while idx < 2:
                                mem[s] = mem[t + 12 len 20]
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
                            require mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 100 * 10^6 * ext_call.return_data[0] / 1000 * ext_call.return_data[0] / 10^18 * msg.value * arg5 / 1000 / 100000) >> 32 <= test266151307()
                            require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 100 * 10^6 * ext_call.return_data[0] / 1000 * ext_call.return_data[0] / 10^18 * msg.value * arg5 / 1000 / 100000) >> 32 + 223 < (4 * ceil32(return_data.size)) + return_data.size + 192
                            if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 100 * 10^6 * ext_call.return_data[0] / 1000 * ext_call.return_data[0] / 10^18 * msg.value * arg5 / 1000 / 100000) >> 32 + 192] > test266151307():
                                revert with 0, 65
                            if (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 100 * 10^6 * ext_call.return_data[0] / 1000 * ext_call.return_data[0] / 10^18 * msg.value * arg5 / 1000 / 100000) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 100 * 10^6 * ext_call.return_data[0] / 1000 * ext_call.return_data[0] / 10^18 * msg.value * arg5 / 1000 / 100000) >> 32 + 192]) + 1 < 0:
                                revert with 0, 65
                            require return_data.size >= mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 100 * 10^6 * ext_call.return_data[0] / 1000 * ext_call.return_data[0] / 10^18 * msg.value * arg5 / 1000 / 100000) >> 32 + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 100 * 10^6 * ext_call.return_data[0] / 1000 * ext_call.return_data[0] / 10^18 * msg.value * arg5 / 1000 / 100000) >> 32 + 192]) + 32
    else:
        if bool(bool(arg2 < 78)) or bool(bool(arg2 < 32)):
            mem[ceil32(return_data.size) + 100] = address(ext_call.return_data[0])
            require ext_code.size(address(arg1))
            staticcall address(arg1).0x70a08231 with:
                    gas gas_remaining wei
                   args address(ext_call.return_data[0])
            mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                revert with 0, 17
            if not 10^arg2:
                revert with 0, 18
            if 1000 * ext_call.return_data[0] / 10^arg2:
                mem[(2 * ceil32(return_data.size)) + 100] = address(ext_call.return_data[0])
                require ext_code.size(stor6)
                staticcall stor6.0x70a08231 with:
                        gas gas_remaining wei
                       args address(ext_call.return_data[0])
                mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                    revert with 0, 17
                if 1000 * ext_call.return_data[0] / 10^18:
                    if 1000 * ext_call.return_data[0] / 10^arg2 > 0xa7c5ac471b4784230fcf80dc33721d53cddd6e04c059210385c67dfe32a0:
                        revert with 0, 17
                    if not 1000 * ext_call.return_data[0] / 10^18:
                        revert with 0, 18
                    if not arg6:
                        if 100000 * 1000 * ext_call.return_data[0] / 10^arg2 / 1000 * ext_call.return_data[0] / 10^18 and msg.value > -1 / 100000 * 1000 * ext_call.return_data[0] / 10^arg2 / 1000 * ext_call.return_data[0] / 10^18:
                            revert with 0, 17
                        if 100000 * 1000 * ext_call.return_data[0] / 10^arg2 / 1000 * ext_call.return_data[0] / 10^18 * msg.value and arg5 > -1 / 100000 * 1000 * ext_call.return_data[0] / 10^arg2 / 1000 * ext_call.return_data[0] / 10^18 * msg.value:
                            revert with 0, 17
                        if 100000 * 1000 * ext_call.return_data[0] / 10^arg2 / 1000 * ext_call.return_data[0] / 10^18 * msg.value * arg5 / 1000 / 100000:
                            mem[(4 * ceil32(return_data.size)) + 128] = stor2
                            mem[(4 * ceil32(return_data.size)) + 160] = address(arg1)
                            mem[(4 * ceil32(return_data.size)) + 192] = 0x8a657e6700000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + 196] = 100000 * 1000 * ext_call.return_data[0] / 10^arg2 / 1000 * ext_call.return_data[0] / 10^18 * msg.value * arg5 / 1000 / 100000
                            mem[(4 * ceil32(return_data.size)) + 228] = 128
                            mem[(4 * ceil32(return_data.size)) + 324] = 2
                            idx = 0
                            s = (4 * ceil32(return_data.size)) + 356
                            t = (4 * ceil32(return_data.size)) + 128
                            while idx < 2:
                                mem[s] = mem[t + 12 len 20]
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
                            require mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 100000 * 1000 * ext_call.return_data[0] / 10^arg2 / 1000 * ext_call.return_data[0] / 10^18 * msg.value * arg5 / 1000 / 100000) >> 32 <= test266151307()
                            require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 100000 * 1000 * ext_call.return_data[0] / 10^arg2 / 1000 * ext_call.return_data[0] / 10^18 * msg.value * arg5 / 1000 / 100000) >> 32 + 223 < (4 * ceil32(return_data.size)) + return_data.size + 192
                            if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 100000 * 1000 * ext_call.return_data[0] / 10^arg2 / 1000 * ext_call.return_data[0] / 10^18 * msg.value * arg5 / 1000 / 100000) >> 32 + 192] > test266151307():
                                revert with 0, 65
                            if (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 100000 * 1000 * ext_call.return_data[0] / 10^arg2 / 1000 * ext_call.return_data[0] / 10^18 * msg.value * arg5 / 1000 / 100000) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 100000 * 1000 * ext_call.return_data[0] / 10^arg2 / 1000 * ext_call.return_data[0] / 10^18 * msg.value * arg5 / 1000 / 100000) >> 32 + 192]) + 1 < 0:
                                revert with 0, 65
                            require return_data.size >= mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 100000 * 1000 * ext_call.return_data[0] / 10^arg2 / 1000 * ext_call.return_data[0] / 10^18 * msg.value * arg5 / 1000 / 100000) >> 32 + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 100000 * 1000 * ext_call.return_data[0] / 10^arg2 / 1000 * ext_call.return_data[0] / 10^18 * msg.value * arg5 / 1000 / 100000) >> 32 + 192]) + 32
                    else:
                        if arg6 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                            revert with 0, 17
                        if 100000 * 1000 * ext_call.return_data[0] / 10^arg2 / 1000 * ext_call.return_data[0] / 10^18 > 1000 * arg6:
                            if 100000 * 1000 * ext_call.return_data[0] / 10^arg2 / 1000 * ext_call.return_data[0] / 10^18 and msg.value > -1 / 100000 * 1000 * ext_call.return_data[0] / 10^arg2 / 1000 * ext_call.return_data[0] / 10^18:
                                revert with 0, 17
                            if 100000 * 1000 * ext_call.return_data[0] / 10^arg2 / 1000 * ext_call.return_data[0] / 10^18 * msg.value and arg5 > -1 / 100000 * 1000 * ext_call.return_data[0] / 10^arg2 / 1000 * ext_call.return_data[0] / 10^18 * msg.value:
                                revert with 0, 17
                            if 100000 * 1000 * ext_call.return_data[0] / 10^arg2 / 1000 * ext_call.return_data[0] / 10^18 * msg.value * arg5 / 1000 / 100000:
                                mem[(4 * ceil32(return_data.size)) + 128] = stor2
                                mem[(4 * ceil32(return_data.size)) + 160] = address(arg1)
                                mem[(4 * ceil32(return_data.size)) + 192] = 0x8a657e6700000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + 196] = 100000 * 1000 * ext_call.return_data[0] / 10^arg2 / 1000 * ext_call.return_data[0] / 10^18 * msg.value * arg5 / 1000 / 100000
                                mem[(4 * ceil32(return_data.size)) + 228] = 128
                                mem[(4 * ceil32(return_data.size)) + 324] = 2
                                idx = 0
                                s = (4 * ceil32(return_data.size)) + 356
                                t = (4 * ceil32(return_data.size)) + 128
                                while idx < 2:
                                    mem[s] = mem[t + 12 len 20]
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
                                require mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 100000 * 1000 * ext_call.return_data[0] / 10^arg2 / 1000 * ext_call.return_data[0] / 10^18 * msg.value * arg5 / 1000 / 100000) >> 32 <= test266151307()
                                require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 100000 * 1000 * ext_call.return_data[0] / 10^arg2 / 1000 * ext_call.return_data[0] / 10^18 * msg.value * arg5 / 1000 / 100000) >> 32 + 223 < (4 * ceil32(return_data.size)) + return_data.size + 192
                                if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 100000 * 1000 * ext_call.return_data[0] / 10^arg2 / 1000 * ext_call.return_data[0] / 10^18 * msg.value * arg5 / 1000 / 100000) >> 32 + 192] > test266151307():
                                    revert with 0, 65
                                if (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 100000 * 1000 * ext_call.return_data[0] / 10^arg2 / 1000 * ext_call.return_data[0] / 10^18 * msg.value * arg5 / 1000 / 100000) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 100000 * 1000 * ext_call.return_data[0] / 10^arg2 / 1000 * ext_call.return_data[0] / 10^18 * msg.value * arg5 / 1000 / 100000) >> 32 + 192]) + 1 < 0:
                                    revert with 0, 65
                                require return_data.size >= mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 100000 * 1000 * ext_call.return_data[0] / 10^arg2 / 1000 * ext_call.return_data[0] / 10^18 * msg.value * arg5 / 1000 / 100000) >> 32 + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 100000 * 1000 * ext_call.return_data[0] / 10^arg2 / 1000 * ext_call.return_data[0] / 10^18 * msg.value * arg5 / 1000 / 100000) >> 32 + 192]) + 32
        else:
            s = 10
            t = 1
            idx = arg2
            while idx > 1:
                if s > -1 / s:
                    revert with 0, 17
                if not bool(idx):
                    s = s * s
                    t = t
                    idx = uint255(idx) * 0.5
                    continue 
                s = s * s
                t = s * t
                idx = uint255(idx) * 0.5
                continue 
            if t > -1 / s:
                revert with 0, 17
            mem[ceil32(return_data.size) + 100] = address(ext_call.return_data[0])
            require ext_code.size(address(arg1))
            staticcall address(arg1).0x70a08231 with:
                    gas gas_remaining wei
                   args address(ext_call.return_data[0])
            mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                revert with 0, 17
            if not s * t:
                revert with 0, 18
            if 1000 * ext_call.return_data[0] / s * t:
                mem[(2 * ceil32(return_data.size)) + 100] = address(ext_call.return_data[0])
                require ext_code.size(stor6)
                staticcall stor6.0x70a08231 with:
                        gas gas_remaining wei
                       args address(ext_call.return_data[0])
                mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                    revert with 0, 17
                if 1000 * ext_call.return_data[0] / 10^18:
                    if 1000 * ext_call.return_data[0] / s * t > 0xa7c5ac471b4784230fcf80dc33721d53cddd6e04c059210385c67dfe32a0:
                        revert with 0, 17
                    if not 1000 * ext_call.return_data[0] / 10^18:
                        revert with 0, 18
                    if not arg6:
                        if 100000 * 1000 * ext_call.return_data[0] / s * t / 1000 * ext_call.return_data[0] / 10^18 and msg.value > -1 / 100000 * 1000 * ext_call.return_data[0] / s * t / 1000 * ext_call.return_data[0] / 10^18:
                            revert with 0, 17
                        if 100000 * 1000 * ext_call.return_data[0] / s * t / 1000 * ext_call.return_data[0] / 10^18 * msg.value and arg5 > -1 / 100000 * 1000 * ext_call.return_data[0] / s * t / 1000 * ext_call.return_data[0] / 10^18 * msg.value:
                            revert with 0, 17
                        if 100000 * 1000 * ext_call.return_data[0] / s * t / 1000 * ext_call.return_data[0] / 10^18 * msg.value * arg5 / 1000 / 100000:
                            mem[(4 * ceil32(return_data.size)) + 128] = stor2
                            mem[(4 * ceil32(return_data.size)) + 160] = address(arg1)
                            mem[(4 * ceil32(return_data.size)) + 192] = 0x8a657e6700000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + 196] = 100000 * 1000 * ext_call.return_data[0] / s * t / 1000 * ext_call.return_data[0] / 10^18 * msg.value * arg5 / 1000 / 100000
                            mem[(4 * ceil32(return_data.size)) + 228] = 128
                            mem[(4 * ceil32(return_data.size)) + 324] = 2
                            idx = 0
                            u = (4 * ceil32(return_data.size)) + 356
                            v = (4 * ceil32(return_data.size)) + 128
                            while idx < 2:
                                mem[u] = mem[v + 12 len 20]
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
                                args 100000 * 1000 * ext_call.return_data[0] / s * t / 1000 * ext_call.return_data[0] / 10^18 * msg.value * arg5 / 1000 / 100000, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 356 len 64]), address(arg3), arg4
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(4 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (6 * ceil32(return_data.size)) + 192
                            require return_data.size >= 32
                            require mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 100000 * 1000 * ext_call.return_data[0] / s * t / 1000 * ext_call.return_data[0] / 10^18 * msg.value * arg5 / 1000 / 100000) >> 32 <= test266151307()
                            require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 100000 * 1000 * ext_call.return_data[0] / s * t / 1000 * ext_call.return_data[0] / 10^18 * msg.value * arg5 / 1000 / 100000) >> 32 + 223 < (4 * ceil32(return_data.size)) + return_data.size + 192
                            if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 100000 * 1000 * ext_call.return_data[0] / s * t / 1000 * ext_call.return_data[0] / 10^18 * msg.value * arg5 / 1000 / 100000) >> 32 + 192] > test266151307():
                                revert with 0, 65
                            if (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 100000 * 1000 * ext_call.return_data[0] / s * t / 1000 * ext_call.return_data[0] / 10^18 * msg.value * arg5 / 1000 / 100000) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 100000 * 1000 * ext_call.return_data[0] / s * t / 1000 * ext_call.return_data[0] / 10^18 * msg.value * arg5 / 1000 / 100000) >> 32 + 192]) + 1 < 0:
                                revert with 0, 65
                            require return_data.size >= mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 100000 * 1000 * ext_call.return_data[0] / s * t / 1000 * ext_call.return_data[0] / 10^18 * msg.value * arg5 / 1000 / 100000) >> 32 + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 100000 * 1000 * ext_call.return_data[0] / s * t / 1000 * ext_call.return_data[0] / 10^18 * msg.value * arg5 / 1000 / 100000) >> 32 + 192]) + 32
                    else:
                        if arg6 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                            revert with 0, 17
                        if 100000 * 1000 * ext_call.return_data[0] / s * t / 1000 * ext_call.return_data[0] / 10^18 > 1000 * arg6:
                            if 100000 * 1000 * ext_call.return_data[0] / s * t / 1000 * ext_call.return_data[0] / 10^18 and msg.value > -1 / 100000 * 1000 * ext_call.return_data[0] / s * t / 1000 * ext_call.return_data[0] / 10^18:
                                revert with 0, 17
                            if 100000 * 1000 * ext_call.return_data[0] / s * t / 1000 * ext_call.return_data[0] / 10^18 * msg.value and arg5 > -1 / 100000 * 1000 * ext_call.return_data[0] / s * t / 1000 * ext_call.return_data[0] / 10^18 * msg.value:
                                revert with 0, 17
                            if 100000 * 1000 * ext_call.return_data[0] / s * t / 1000 * ext_call.return_data[0] / 10^18 * msg.value * arg5 / 1000 / 100000:
                                mem[(4 * ceil32(return_data.size)) + 128] = stor2
                                mem[(4 * ceil32(return_data.size)) + 160] = address(arg1)
                                mem[(4 * ceil32(return_data.size)) + 192] = 0x8a657e6700000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + 196] = 100000 * 1000 * ext_call.return_data[0] / s * t / 1000 * ext_call.return_data[0] / 10^18 * msg.value * arg5 / 1000 / 100000
                                mem[(4 * ceil32(return_data.size)) + 228] = 128
                                mem[(4 * ceil32(return_data.size)) + 324] = 2
                                idx = 0
                                u = (4 * ceil32(return_data.size)) + 356
                                v = (4 * ceil32(return_data.size)) + 128
                                while idx < 2:
                                    mem[u] = mem[v + 12 len 20]
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
                                    args 100000 * 1000 * ext_call.return_data[0] / s * t / 1000 * ext_call.return_data[0] / 10^18 * msg.value * arg5 / 1000 / 100000, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 356 len 64]), address(arg3), arg4
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(4 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (6 * ceil32(return_data.size)) + 192
                                require return_data.size >= 32
                                require mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 100000 * 1000 * ext_call.return_data[0] / s * t / 1000 * ext_call.return_data[0] / 10^18 * msg.value * arg5 / 1000 / 100000) >> 32 <= test266151307()
                                require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 100000 * 1000 * ext_call.return_data[0] / s * t / 1000 * ext_call.return_data[0] / 10^18 * msg.value * arg5 / 1000 / 100000) >> 32 + 223 < (4 * ceil32(return_data.size)) + return_data.size + 192
                                if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 100000 * 1000 * ext_call.return_data[0] / s * t / 1000 * ext_call.return_data[0] / 10^18 * msg.value * arg5 / 1000 / 100000) >> 32 + 192] > test266151307():
                                    revert with 0, 65
                                if (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 100000 * 1000 * ext_call.return_data[0] / s * t / 1000 * ext_call.return_data[0] / 10^18 * msg.value * arg5 / 1000 / 100000) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 100000 * 1000 * ext_call.return_data[0] / s * t / 1000 * ext_call.return_data[0] / 10^18 * msg.value * arg5 / 1000 / 100000) >> 32 + 192]) + 1 < 0:
                                    revert with 0, 65
                                require return_data.size >= mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 100000 * 1000 * ext_call.return_data[0] / s * t / 1000 * ext_call.return_data[0] / 10^18 * msg.value * arg5 / 1000 / 100000) >> 32 + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, 100000 * 1000 * ext_call.return_data[0] / s * t / 1000 * ext_call.return_data[0] / 10^18 * msg.value * arg5 / 1000 / 100000) >> 32 + 192]) + 32
}

function _fallback() payable {
    if calldata.size >= 4:
        if unknown_0x7dde0fc2(?????) > uint32(call.func_hash) >> 224:
            if unknown_0x3ccfd60b(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                call msg.sender with:
                   value eth.balance(this.address) wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            if uint32(call.func_hash) >> 224 != unknown_0x4c36f864(?????):
                if uint32(call.func_hash) >> 224 != unknown_0x62093d2e(?????):
                    if unknown_0x715018a6(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        owner = 0
                        emit OwnershipTransferred(owner, 0);
                require not msg.value
                require calldata.size - 4 >= 128
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                if not arg2:
                    if arg1 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                        revert with 0, 17
                    if arg3 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                        revert with 0, 17
                    if 1000 * arg1 > 0xa7c5ac471b4784230fcf80dc33721d53cddd6e04c059210385c67dfe32a0:
                        revert with 0, 17
                    if not 1000 * arg3 / 10^18:
                        revert with 0, 18
                    if 100 * 10^6 * arg1 / 1000 * arg3 / 10^18 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 0, 17
                    if 10^18 * 100 * 10^6 * arg1 / 1000 * arg3 / 10^18 and arg4 > -1 / 10^18 * 100 * 10^6 * arg1 / 1000 * arg3 / 10^18:
                        revert with 0, 17
                    return 100 * 10^6 * arg1 / 1000 * arg3 / 10^18, 10^18 * 100 * 10^6 * arg1 / 1000 * arg3 / 10^18 * arg4 / 1000 / 100000
                if bool(bool(arg2 < 78)) or bool(bool(arg2 < 32)):
                    if arg1 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                        revert with 0, 17
                    if not 10^arg2:
                        revert with 0, 18
                    if arg3 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                        revert with 0, 17
                    if 1000 * arg1 / 10^arg2 > 0xa7c5ac471b4784230fcf80dc33721d53cddd6e04c059210385c67dfe32a0:
                        revert with 0, 17
                    if not 1000 * arg3 / 10^18:
                        revert with 0, 18
                    if 100000 * 1000 * arg1 / 10^arg2 / 1000 * arg3 / 10^18 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 0, 17
                    if 10^18 * 100000 * 1000 * arg1 / 10^arg2 / 1000 * arg3 / 10^18 and arg4 > -1 / 10^18 * 100000 * 1000 * arg1 / 10^arg2 / 1000 * arg3 / 10^18:
                        revert with 0, 17
                    return 100000 * 1000 * arg1 / 10^arg2 / 1000 * arg3 / 10^18, 
                           10^18 * 100000 * 1000 * arg1 / 10^arg2 / 1000 * arg3 / 10^18 * arg4 / 1000 / 100000
                s = 10
                t = 1
                idx = arg2
                while idx > 1:
                    if s > -1 / s:
                        revert with 0, 17
                    if not bool(idx):
                        s = s * s
                        t = t
                        idx = uint255(idx) * 0.5
                        continue 
                    s = s * s
                    t = s * t
                    idx = uint255(idx) * 0.5
                    continue 
                if t > -1 / s:
                    revert with 0, 17
                if arg1 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                    revert with 0, 17
                if not s * t:
                    revert with 0, 18
                if arg3 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                    revert with 0, 17
                if 1000 * arg1 / s * t > 0xa7c5ac471b4784230fcf80dc33721d53cddd6e04c059210385c67dfe32a0:
                    revert with 0, 17
                if not 1000 * arg3 / 10^18:
                    revert with 0, 18
                if 100000 * 1000 * arg1 / s * t / 1000 * arg3 / 10^18 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                    revert with 0, 17
                if 10^18 * 100000 * 1000 * arg1 / s * t / 1000 * arg3 / 10^18 and arg4 > -1 / 10^18 * 100000 * 1000 * arg1 / s * t / 1000 * arg3 / 10^18:
                    revert with 0, 17
                return 100000 * 1000 * arg1 / s * t / 1000 * arg3 / 10^18, 
                       10^18 * 100000 * 1000 * arg1 / s * t / 1000 * arg3 / 10^18 * arg4 / 1000 / 100000
            require not msg.value
            require calldata.size - 4 >= 192
            require arg1 == address(arg1)
            require arg3 == address(arg3)
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
                if ext_call.return_data[0] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                    revert with 0, 17
                require ext_code.size(stor6)
                staticcall stor6.0x70a08231 with:
                        gas gas_remaining wei
                       args address(ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                    revert with 0, 17
                if 1000 * ext_call.return_data[0] > 0xa7c5ac471b4784230fcf80dc33721d53cddd6e04c059210385c67dfe32a0:
                    revert with 0, 17
                if not 1000 * ext_call.return_data[0] / 10^18:
                    revert with 0, 18
                if 100 * 10^6 * ext_call.return_data[0] / 1000 * ext_call.return_data[0] / 10^18 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                    revert with 0, 17
                if 10^18 * 100 * 10^6 * ext_call.return_data[0] / 1000 * ext_call.return_data[0] / 10^18 and arg5 > -1 / 10^18 * 100 * 10^6 * ext_call.return_data[0] / 1000 * ext_call.return_data[0] / 10^18:
                    revert with 0, 17
                return 100 * 10^6 * ext_call.return_data[0] / 1000 * ext_call.return_data[0] / 10^18, 
                       10^18 * 100 * 10^6 * ext_call.return_data[0] / 1000 * ext_call.return_data[0] / 10^18 * arg5 / 1000 / 100000
            if bool(bool(arg2 < 78)) or bool(bool(arg2 < 32)):
                require ext_code.size(address(arg1))
                staticcall address(arg1).0x70a08231 with:
                        gas gas_remaining wei
                       args address(ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                    revert with 0, 17
                if not 10^arg2:
                    revert with 0, 18
                require ext_code.size(stor6)
                staticcall stor6.0x70a08231 with:
                        gas gas_remaining wei
                       args address(ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                    revert with 0, 17
                if 1000 * ext_call.return_data[0] / 10^arg2 > 0xa7c5ac471b4784230fcf80dc33721d53cddd6e04c059210385c67dfe32a0:
                    revert with 0, 17
                if not 1000 * ext_call.return_data[0] / 10^18:
                    revert with 0, 18
                if 100000 * 1000 * ext_call.return_data[0] / 10^arg2 / 1000 * ext_call.return_data[0] / 10^18 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                    revert with 0, 17
                if 10^18 * 100000 * 1000 * ext_call.return_data[0] / 10^arg2 / 1000 * ext_call.return_data[0] / 10^18 and arg5 > -1 / 10^18 * 100000 * 1000 * ext_call.return_data[0] / 10^arg2 / 1000 * ext_call.return_data[0] / 10^18:
                    revert with 0, 17
                return 100000 * 1000 * ext_call.return_data[0] / 10^arg2 / 1000 * ext_call.return_data[0] / 10^18, 
                       10^18 * 100000 * 1000 * ext_call.return_data[0] / 10^arg2 / 1000 * ext_call.return_data[0] / 10^18 * arg5 / 1000 / 100000
            s = 10
            t = 1
            idx = arg2
            while idx > 1:
                if s > -1 / s:
                    revert with 0, 17
                if not bool(idx):
                    s = s * s
                    t = t
                    idx = uint255(idx) * 0.5
                    continue 
                s = s * s
                t = s * t
                idx = uint255(idx) * 0.5
                continue 
            if t > -1 / s:
                revert with 0, 17
            require ext_code.size(address(arg1))
            staticcall address(arg1).0x70a08231 with:
                    gas gas_remaining wei
                   args address(ext_call.return_data[0])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                revert with 0, 17
            if not s * t:
                revert with 0, 18
            require ext_code.size(stor6)
            staticcall stor6.0x70a08231 with:
                    gas gas_remaining wei
                   args address(ext_call.return_data[0])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                revert with 0, 17
            if 1000 * ext_call.return_data[0] / s * t > 0xa7c5ac471b4784230fcf80dc33721d53cddd6e04c059210385c67dfe32a0:
                revert with 0, 17
            if not 1000 * ext_call.return_data[0] / 10^18:
                revert with 0, 18
            if 100000 * 1000 * ext_call.return_data[0] / s * t / 1000 * ext_call.return_data[0] / 10^18 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                revert with 0, 17
            if 10^18 * 100000 * 1000 * ext_call.return_data[0] / s * t / 1000 * ext_call.return_data[0] / 10^18 and arg5 > -1 / 10^18 * 100000 * 1000 * ext_call.return_data[0] / s * t / 1000 * ext_call.return_data[0] / 10^18:
                revert with 0, 17
            return 100000 * 1000 * ext_call.return_data[0] / s * t / 1000 * ext_call.return_data[0] / 10^18, 
                   10^18 * 100000 * 1000 * ext_call.return_data[0] / s * t / 1000 * ext_call.return_data[0] / 10^18 * arg5 / 1000 / 100000
        if uint32(call.func_hash) >> 224 != unknown_0x7dde0fc2(?????):
            if unknown_0x8da5cb5b(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return owner
            if unknown_0x938aaefb(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
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
            if uint32(call.func_hash) >> 224 != unknown_0xc7e42b1b(?????):
                if unknown_0xf2fde38b(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require arg1 == address(arg1)
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    if not address(arg1):
                        revert with 0, 'Ownable: new owner is the zero address'
                    owner = address(arg1)
                    emit OwnershipTransferred(owner, address(arg1));
            else:
                require not msg.value
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
                require ext_code.size(address(arg1))
                call address(arg1).0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if not ext_call.return_data[0]:
                    revert with 0, 'Transfer failed'
        else:
            require calldata.size - 4 >= 192
            require arg1 == address(arg1)
            require arg3 == address(arg3)
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            mem[164] = stor2
            require ext_code.size(stor4)
            staticcall stor4.getPair(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args address(arg1), stor2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if not arg2:
                mem[ceil32(return_data.size) + 132] = address(ext_call.return_data[0])
                require ext_code.size(address(arg1))
                staticcall address(arg1).0x70a08231 with:
                        gas gas_remaining wei
                       args address(ext_call.return_data[0])
                mem[ceil32(return_data.size) + 128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                    revert with 0, 17
                if 1000 * ext_call.return_data[0]:
                    mem[(2 * ceil32(return_data.size)) + 132] = address(ext_call.return_data[0])
                    require ext_code.size(stor6)
                    staticcall stor6.0x70a08231 with:
                            gas gas_remaining wei
                           args address(ext_call.return_data[0])
                    mem[(2 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                        revert with 0, 17
                    if 1000 * ext_call.return_data[0] / 10^18:
                        if 1000 * ext_call.return_data[0] > 0xa7c5ac471b4784230fcf80dc33721d53cddd6e04c059210385c67dfe32a0:
                            revert with 0, 17
                        if not 1000 * ext_call.return_data[0] / 10^18:
                            revert with 0, 18
                        if not arg6:
                            if 100 * 10^6 * ext_call.return_data[0] / 1000 * ext_call.return_data[0] / 10^18 and msg.value > -1 / 100 * 10^6 * ext_call.return_data[0] / 1000 * ext_call.return_data[0] / 10^18:
                                revert with 0, 17
                            if 100 * 10^6 * ext_call.return_data[0] / 1000 * ext_call.return_data[0] / 10^18 * msg.value and arg5 > -1 / 100 * 10^6 * ext_call.return_data[0] / 1000 * ext_call.return_data[0] / 10^18 * msg.value:
                                revert with 0, 17
                            if 100 * 10^6 * ext_call.return_data[0] / 1000 * ext_call.return_data[0] / 10^18 * msg.value * arg5 / 1000 / 100000:
                                mem[(4 * ceil32(return_data.size)) + 160] = stor2
                                mem[(4 * ceil32(return_data.size)) + 192] = address(arg1)
                                mem[(4 * ceil32(return_data.size)) + 224] = 0x8a657e6700000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + 228] = 100 * 10^6 * ext_call.return_data[0] / 1000 * ext_call.return_data[0] / 10^18 * msg.value * arg5 / 1000 / 100000
                                mem[(4 * ceil32(return_data.size)) + 260] = 128
                                mem[(4 * ceil32(return_data.size)) + 356] = 2
                                idx = 0
                                s = (4 * ceil32(return_data.size)) + 388
                                t = (4 * ceil32(return_data.size)) + 160
                                while idx < 2:
                                    mem[s] = mem[t + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(4 * ceil32(return_data.size)) + 292] = address(arg3)
                                mem[(4 * ceil32(return_data.size)) + 324] = arg4
                                require ext_code.size(stor5)
                                call stor5.swapAVAXForExactTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                   value msg.value wei
                                     gas gas_remaining wei
                                    args 100 * 10^6 * ext_call.return_data[0] / 1000 * ext_call.return_data[0] / 10^18 * msg.value * arg5 / 1000 / 100000, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 388 len 64]), address(arg3), arg4
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(4 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (6 * ceil32(return_data.size)) + 224
                                require return_data.size >= 32
                                require mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, 100 * 10^6 * ext_call.return_data[0] / 1000 * ext_call.return_data[0] / 10^18 * msg.value * arg5 / 1000 / 100000) >> 32 <= test266151307()
                                require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, 100 * 10^6 * ext_call.return_data[0] / 1000 * ext_call.return_data[0] / 10^18 * msg.value * arg5 / 1000 / 100000) >> 32 + 255 < (4 * ceil32(return_data.size)) + return_data.size + 224
                                if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, 100 * 10^6 * ext_call.return_data[0] / 1000 * ext_call.return_data[0] / 10^18 * msg.value * arg5 / 1000 / 100000) >> 32 + 224] > test266151307():
                                    revert with 0, 65
                                if (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, 100 * 10^6 * ext_call.return_data[0] / 1000 * ext_call.return_data[0] / 10^18 * msg.value * arg5 / 1000 / 100000) >> 32 + 224]) + 225 > test266151307() or ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, 100 * 10^6 * ext_call.return_data[0] / 1000 * ext_call.return_data[0] / 10^18 * msg.value * arg5 / 1000 / 100000) >> 32 + 224]) + 1 < 0:
                                    revert with 0, 65
                                require return_data.size >= mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, 100 * 10^6 * ext_call.return_data[0] / 1000 * ext_call.return_data[0] / 10^18 * msg.value * arg5 / 1000 / 100000) >> 32 + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, 100 * 10^6 * ext_call.return_data[0] / 1000 * ext_call.return_data[0] / 10^18 * msg.value * arg5 / 1000 / 100000) >> 32 + 224]) + 32
                        else:
                            if arg6 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                                revert with 0, 17
                            if 100 * 10^6 * ext_call.return_data[0] / 1000 * ext_call.return_data[0] / 10^18 > 1000 * arg6:
                                if 100 * 10^6 * ext_call.return_data[0] / 1000 * ext_call.return_data[0] / 10^18 and msg.value > -1 / 100 * 10^6 * ext_call.return_data[0] / 1000 * ext_call.return_data[0] / 10^18:
                                    revert with 0, 17
                                if 100 * 10^6 * ext_call.return_data[0] / 1000 * ext_call.return_data[0] / 10^18 * msg.value and arg5 > -1 / 100 * 10^6 * ext_call.return_data[0] / 1000 * ext_call.return_data[0] / 10^18 * msg.value:
                                    revert with 0, 17
                                if 100 * 10^6 * ext_call.return_data[0] / 1000 * ext_call.return_data[0] / 10^18 * msg.value * arg5 / 1000 / 100000:
                                    mem[(4 * ceil32(return_data.size)) + 160] = stor2
                                    mem[(4 * ceil32(return_data.size)) + 192] = address(arg1)
                                    mem[(4 * ceil32(return_data.size)) + 224] = 0x8a657e6700000000000000000000000000000000000000000000000000000000
                                    mem[(4 * ceil32(return_data.size)) + 228] = 100 * 10^6 * ext_call.return_data[0] / 1000 * ext_call.return_data[0] / 10^18 * msg.value * arg5 / 1000 / 100000
                                    mem[(4 * ceil32(return_data.size)) + 260] = 128
                                    mem[(4 * ceil32(return_data.size)) + 356] = 2
                                    idx = 0
                                    s = (4 * ceil32(return_data.size)) + 388
                                    t = (4 * ceil32(return_data.size)) + 160
                                    while idx < 2:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[(4 * ceil32(return_data.size)) + 292] = address(arg3)
                                    mem[(4 * ceil32(return_data.size)) + 324] = arg4
                                    require ext_code.size(stor5)
                                    call stor5.swapAVAXForExactTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                       value msg.value wei
                                         gas gas_remaining wei
                                        args 100 * 10^6 * ext_call.return_data[0] / 1000 * ext_call.return_data[0] / 10^18 * msg.value * arg5 / 1000 / 100000, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 388 len 64]), address(arg3), arg4
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(4 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (6 * ceil32(return_data.size)) + 224
                                    require return_data.size >= 32
                                    require mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, 100 * 10^6 * ext_call.return_data[0] / 1000 * ext_call.return_data[0] / 10^18 * msg.value * arg5 / 1000 / 100000) >> 32 <= test266151307()
                                    require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, 100 * 10^6 * ext_call.return_data[0] / 1000 * ext_call.return_data[0] / 10^18 * msg.value * arg5 / 1000 / 100000) >> 32 + 255 < (4 * ceil32(return_data.size)) + return_data.size + 224
                                    if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, 100 * 10^6 * ext_call.return_data[0] / 1000 * ext_call.return_data[0] / 10^18 * msg.value * arg5 / 1000 / 100000) >> 32 + 224] > test266151307():
                                        revert with 0, 65
                                    if (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, 100 * 10^6 * ext_call.return_data[0] / 1000 * ext_call.return_data[0] / 10^18 * msg.value * arg5 / 1000 / 100000) >> 32 + 224]) + 225 > test266151307() or ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, 100 * 10^6 * ext_call.return_data[0] / 1000 * ext_call.return_data[0] / 10^18 * msg.value * arg5 / 1000 / 100000) >> 32 + 224]) + 1 < 0:
                                        revert with 0, 65
                                    require return_data.size >= mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, 100 * 10^6 * ext_call.return_data[0] / 1000 * ext_call.return_data[0] / 10^18 * msg.value * arg5 / 1000 / 100000) >> 32 + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, 100 * 10^6 * ext_call.return_data[0] / 1000 * ext_call.return_data[0] / 10^18 * msg.value * arg5 / 1000 / 100000) >> 32 + 224]) + 32
            else:
                if bool(bool(arg2 < 78)) or bool(bool(arg2 < 32)):
                    mem[ceil32(return_data.size) + 132] = address(ext_call.return_data[0])
                    require ext_code.size(address(arg1))
                    staticcall address(arg1).0x70a08231 with:
                            gas gas_remaining wei
                           args address(ext_call.return_data[0])
                    mem[ceil32(return_data.size) + 128] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                        revert with 0, 17
                    if not 10^arg2:
                        revert with 0, 18
                    if 1000 * ext_call.return_data[0] / 10^arg2:
                        mem[(2 * ceil32(return_data.size)) + 132] = address(ext_call.return_data[0])
                        require ext_code.size(stor6)
                        staticcall stor6.0x70a08231 with:
                                gas gas_remaining wei
                               args address(ext_call.return_data[0])
                        mem[(2 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                            revert with 0, 17
                        if 1000 * ext_call.return_data[0] / 10^18:
                            if 1000 * ext_call.return_data[0] / 10^arg2 > 0xa7c5ac471b4784230fcf80dc33721d53cddd6e04c059210385c67dfe32a0:
                                revert with 0, 17
                            if not 1000 * ext_call.return_data[0] / 10^18:
                                revert with 0, 18
                            if not arg6:
                                if 100000 * 1000 * ext_call.return_data[0] / 10^arg2 / 1000 * ext_call.return_data[0] / 10^18 and msg.value > -1 / 100000 * 1000 * ext_call.return_data[0] / 10^arg2 / 1000 * ext_call.return_data[0] / 10^18:
                                    revert with 0, 17
                                if 100000 * 1000 * ext_call.return_data[0] / 10^arg2 / 1000 * ext_call.return_data[0] / 10^18 * msg.value and arg5 > -1 / 100000 * 1000 * ext_call.return_data[0] / 10^arg2 / 1000 * ext_call.return_data[0] / 10^18 * msg.value:
                                    revert with 0, 17
                                if 100000 * 1000 * ext_call.return_data[0] / 10^arg2 / 1000 * ext_call.return_data[0] / 10^18 * msg.value * arg5 / 1000 / 100000:
                                    mem[(4 * ceil32(return_data.size)) + 160] = stor2
                                    mem[(4 * ceil32(return_data.size)) + 192] = address(arg1)
                                    mem[(4 * ceil32(return_data.size)) + 224] = 0x8a657e6700000000000000000000000000000000000000000000000000000000
                                    mem[(4 * ceil32(return_data.size)) + 228] = 100000 * 1000 * ext_call.return_data[0] / 10^arg2 / 1000 * ext_call.return_data[0] / 10^18 * msg.value * arg5 / 1000 / 100000
                                    mem[(4 * ceil32(return_data.size)) + 260] = 128
                                    mem[(4 * ceil32(return_data.size)) + 356] = 2
                                    idx = 0
                                    s = (4 * ceil32(return_data.size)) + 388
                                    t = (4 * ceil32(return_data.size)) + 160
                                    while idx < 2:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[(4 * ceil32(return_data.size)) + 292] = address(arg3)
                                    mem[(4 * ceil32(return_data.size)) + 324] = arg4
                                    require ext_code.size(stor5)
                                    call stor5.swapAVAXForExactTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                       value msg.value wei
                                         gas gas_remaining wei
                                        args 100000 * 1000 * ext_call.return_data[0] / 10^arg2 / 1000 * ext_call.return_data[0] / 10^18 * msg.value * arg5 / 1000 / 100000, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 388 len 64]), address(arg3), arg4
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(4 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (6 * ceil32(return_data.size)) + 224
                                    require return_data.size >= 32
                                    require mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, 100000 * 1000 * ext_call.return_data[0] / 10^arg2 / 1000 * ext_call.return_data[0] / 10^18 * msg.value * arg5 / 1000 / 100000) >> 32 <= test266151307()
                                    require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, 100000 * 1000 * ext_call.return_data[0] / 10^arg2 / 1000 * ext_call.return_data[0] / 10^18 * msg.value * arg5 / 1000 / 100000) >> 32 + 255 < (4 * ceil32(return_data.size)) + return_data.size + 224
                                    if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, 100000 * 1000 * ext_call.return_data[0] / 10^arg2 / 1000 * ext_call.return_data[0] / 10^18 * msg.value * arg5 / 1000 / 100000) >> 32 + 224] > test266151307():
                                        revert with 0, 65
                                    if (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, 100000 * 1000 * ext_call.return_data[0] / 10^arg2 / 1000 * ext_call.return_data[0] / 10^18 * msg.value * arg5 / 1000 / 100000) >> 32 + 224]) + 225 > test266151307() or ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, 100000 * 1000 * ext_call.return_data[0] / 10^arg2 / 1000 * ext_call.return_data[0] / 10^18 * msg.value * arg5 / 1000 / 100000) >> 32 + 224]) + 1 < 0:
                                        revert with 0, 65
                                    require return_data.size >= mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, 100000 * 1000 * ext_call.return_data[0] / 10^arg2 / 1000 * ext_call.return_data[0] / 10^18 * msg.value * arg5 / 1000 / 100000) >> 32 + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, 100000 * 1000 * ext_call.return_data[0] / 10^arg2 / 1000 * ext_call.return_data[0] / 10^18 * msg.value * arg5 / 1000 / 100000) >> 32 + 224]) + 32
                            else:
                                if arg6 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                                    revert with 0, 17
                                if 100000 * 1000 * ext_call.return_data[0] / 10^arg2 / 1000 * ext_call.return_data[0] / 10^18 > 1000 * arg6:
                                    if 100000 * 1000 * ext_call.return_data[0] / 10^arg2 / 1000 * ext_call.return_data[0] / 10^18 and msg.value > -1 / 100000 * 1000 * ext_call.return_data[0] / 10^arg2 / 1000 * ext_call.return_data[0] / 10^18:
                                        revert with 0, 17
                                    if 100000 * 1000 * ext_call.return_data[0] / 10^arg2 / 1000 * ext_call.return_data[0] / 10^18 * msg.value and arg5 > -1 / 100000 * 1000 * ext_call.return_data[0] / 10^arg2 / 1000 * ext_call.return_data[0] / 10^18 * msg.value:
                                        revert with 0, 17
                                    if 100000 * 1000 * ext_call.return_data[0] / 10^arg2 / 1000 * ext_call.return_data[0] / 10^18 * msg.value * arg5 / 1000 / 100000:
                                        mem[(4 * ceil32(return_data.size)) + 160] = stor2
                                        mem[(4 * ceil32(return_data.size)) + 192] = address(arg1)
                                        mem[(4 * ceil32(return_data.size)) + 224] = 0x8a657e6700000000000000000000000000000000000000000000000000000000
                                        mem[(4 * ceil32(return_data.size)) + 228] = 100000 * 1000 * ext_call.return_data[0] / 10^arg2 / 1000 * ext_call.return_data[0] / 10^18 * msg.value * arg5 / 1000 / 100000
                                        mem[(4 * ceil32(return_data.size)) + 260] = 128
                                        mem[(4 * ceil32(return_data.size)) + 356] = 2
                                        idx = 0
                                        s = (4 * ceil32(return_data.size)) + 388
                                        t = (4 * ceil32(return_data.size)) + 160
                                        while idx < 2:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[(4 * ceil32(return_data.size)) + 292] = address(arg3)
                                        mem[(4 * ceil32(return_data.size)) + 324] = arg4
                                        require ext_code.size(stor5)
                                        call stor5.swapAVAXForExactTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                           value msg.value wei
                                             gas gas_remaining wei
                                            args 100000 * 1000 * ext_call.return_data[0] / 10^arg2 / 1000 * ext_call.return_data[0] / 10^18 * msg.value * arg5 / 1000 / 100000, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 388 len 64]), address(arg3), arg4
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[(4 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = (6 * ceil32(return_data.size)) + 224
                                        require return_data.size >= 32
                                        require mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, 100000 * 1000 * ext_call.return_data[0] / 10^arg2 / 1000 * ext_call.return_data[0] / 10^18 * msg.value * arg5 / 1000 / 100000) >> 32 <= test266151307()
                                        require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, 100000 * 1000 * ext_call.return_data[0] / 10^arg2 / 1000 * ext_call.return_data[0] / 10^18 * msg.value * arg5 / 1000 / 100000) >> 32 + 255 < (4 * ceil32(return_data.size)) + return_data.size + 224
                                        if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, 100000 * 1000 * ext_call.return_data[0] / 10^arg2 / 1000 * ext_call.return_data[0] / 10^18 * msg.value * arg5 / 1000 / 100000) >> 32 + 224] > test266151307():
                                            revert with 0, 65
                                        if (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, 100000 * 1000 * ext_call.return_data[0] / 10^arg2 / 1000 * ext_call.return_data[0] / 10^18 * msg.value * arg5 / 1000 / 100000) >> 32 + 224]) + 225 > test266151307() or ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, 100000 * 1000 * ext_call.return_data[0] / 10^arg2 / 1000 * ext_call.return_data[0] / 10^18 * msg.value * arg5 / 1000 / 100000) >> 32 + 224]) + 1 < 0:
                                            revert with 0, 65
                                        require return_data.size >= mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, 100000 * 1000 * ext_call.return_data[0] / 10^arg2 / 1000 * ext_call.return_data[0] / 10^18 * msg.value * arg5 / 1000 / 100000) >> 32 + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, 100000 * 1000 * ext_call.return_data[0] / 10^arg2 / 1000 * ext_call.return_data[0] / 10^18 * msg.value * arg5 / 1000 / 100000) >> 32 + 224]) + 32
                else:
                    s = 10
                    t = 1
                    idx = arg2
                    while idx > 1:
                        if s > -1 / s:
                            revert with 0, 17
                        if not bool(idx):
                            s = s * s
                            t = t
                            idx = uint255(idx) * 0.5
                            continue 
                        s = s * s
                        t = s * t
                        idx = uint255(idx) * 0.5
                        continue 
                    if t > -1 / s:
                        revert with 0, 17
                    mem[ceil32(return_data.size) + 132] = address(ext_call.return_data[0])
                    require ext_code.size(address(arg1))
                    staticcall address(arg1).0x70a08231 with:
                            gas gas_remaining wei
                           args address(ext_call.return_data[0])
                    mem[ceil32(return_data.size) + 128] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                        revert with 0, 17
                    if not s * t:
                        revert with 0, 18
                    if 1000 * ext_call.return_data[0] / s * t:
                        mem[(2 * ceil32(return_data.size)) + 132] = address(ext_call.return_data[0])
                        require ext_code.size(stor6)
                        staticcall stor6.0x70a08231 with:
                                gas gas_remaining wei
                               args address(ext_call.return_data[0])
                        mem[(2 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                            revert with 0, 17
                        if 1000 * ext_call.return_data[0] / 10^18:
                            if 1000 * ext_call.return_data[0] / s * t > 0xa7c5ac471b4784230fcf80dc33721d53cddd6e04c059210385c67dfe32a0:
                                revert with 0, 17
                            if not 1000 * ext_call.return_data[0] / 10^18:
                                revert with 0, 18
                            if not arg6:
                                if 100000 * 1000 * ext_call.return_data[0] / s * t / 1000 * ext_call.return_data[0] / 10^18 and msg.value > -1 / 100000 * 1000 * ext_call.return_data[0] / s * t / 1000 * ext_call.return_data[0] / 10^18:
                                    revert with 0, 17
                                if 100000 * 1000 * ext_call.return_data[0] / s * t / 1000 * ext_call.return_data[0] / 10^18 * msg.value and arg5 > -1 / 100000 * 1000 * ext_call.return_data[0] / s * t / 1000 * ext_call.return_data[0] / 10^18 * msg.value:
                                    revert with 0, 17
                                if 100000 * 1000 * ext_call.return_data[0] / s * t / 1000 * ext_call.return_data[0] / 10^18 * msg.value * arg5 / 1000 / 100000:
                                    mem[(4 * ceil32(return_data.size)) + 160] = stor2
                                    mem[(4 * ceil32(return_data.size)) + 192] = address(arg1)
                                    mem[(4 * ceil32(return_data.size)) + 224] = 0x8a657e6700000000000000000000000000000000000000000000000000000000
                                    mem[(4 * ceil32(return_data.size)) + 228] = 100000 * 1000 * ext_call.return_data[0] / s * t / 1000 * ext_call.return_data[0] / 10^18 * msg.value * arg5 / 1000 / 100000
                                    mem[(4 * ceil32(return_data.size)) + 260] = 128
                                    mem[(4 * ceil32(return_data.size)) + 356] = 2
                                    idx = 0
                                    u = (4 * ceil32(return_data.size)) + 388
                                    v = (4 * ceil32(return_data.size)) + 160
                                    while idx < 2:
                                        mem[u] = mem[v + 12 len 20]
                                        idx = idx + 1
                                        u = u + 32
                                        v = v + 32
                                        continue 
                                    mem[(4 * ceil32(return_data.size)) + 292] = address(arg3)
                                    mem[(4 * ceil32(return_data.size)) + 324] = arg4
                                    require ext_code.size(stor5)
                                    call stor5.swapAVAXForExactTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                       value msg.value wei
                                         gas gas_remaining wei
                                        args 100000 * 1000 * ext_call.return_data[0] / s * t / 1000 * ext_call.return_data[0] / 10^18 * msg.value * arg5 / 1000 / 100000, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 388 len 64]), address(arg3), arg4
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(4 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (6 * ceil32(return_data.size)) + 224
                                    require return_data.size >= 32
                                    require mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, 100000 * 1000 * ext_call.return_data[0] / s * t / 1000 * ext_call.return_data[0] / 10^18 * msg.value * arg5 / 1000 / 100000) >> 32 <= test266151307()
                                    require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, 100000 * 1000 * ext_call.return_data[0] / s * t / 1000 * ext_call.return_data[0] / 10^18 * msg.value * arg5 / 1000 / 100000) >> 32 + 255 < (4 * ceil32(return_data.size)) + return_data.size + 224
                                    if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, 100000 * 1000 * ext_call.return_data[0] / s * t / 1000 * ext_call.return_data[0] / 10^18 * msg.value * arg5 / 1000 / 100000) >> 32 + 224] > test266151307():
                                        revert with 0, 65
                                    if (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, 100000 * 1000 * ext_call.return_data[0] / s * t / 1000 * ext_call.return_data[0] / 10^18 * msg.value * arg5 / 1000 / 100000) >> 32 + 224]) + 225 > test266151307() or ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, 100000 * 1000 * ext_call.return_data[0] / s * t / 1000 * ext_call.return_data[0] / 10^18 * msg.value * arg5 / 1000 / 100000) >> 32 + 224]) + 1 < 0:
                                        revert with 0, 65
                                    require return_data.size >= mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, 100000 * 1000 * ext_call.return_data[0] / s * t / 1000 * ext_call.return_data[0] / 10^18 * msg.value * arg5 / 1000 / 100000) >> 32 + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, 100000 * 1000 * ext_call.return_data[0] / s * t / 1000 * ext_call.return_data[0] / 10^18 * msg.value * arg5 / 1000 / 100000) >> 32 + 224]) + 32
                            else:
                                if arg6 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                                    revert with 0, 17
                                if 100000 * 1000 * ext_call.return_data[0] / s * t / 1000 * ext_call.return_data[0] / 10^18 > 1000 * arg6:
                                    if 100000 * 1000 * ext_call.return_data[0] / s * t / 1000 * ext_call.return_data[0] / 10^18 and msg.value > -1 / 100000 * 1000 * ext_call.return_data[0] / s * t / 1000 * ext_call.return_data[0] / 10^18:
                                        revert with 0, 17
                                    if 100000 * 1000 * ext_call.return_data[0] / s * t / 1000 * ext_call.return_data[0] / 10^18 * msg.value and arg5 > -1 / 100000 * 1000 * ext_call.return_data[0] / s * t / 1000 * ext_call.return_data[0] / 10^18 * msg.value:
                                        revert with 0, 17
                                    if 100000 * 1000 * ext_call.return_data[0] / s * t / 1000 * ext_call.return_data[0] / 10^18 * msg.value * arg5 / 1000 / 100000:
                                        mem[(4 * ceil32(return_data.size)) + 160] = stor2
                                        mem[(4 * ceil32(return_data.size)) + 192] = address(arg1)
                                        mem[(4 * ceil32(return_data.size)) + 224] = 0x8a657e6700000000000000000000000000000000000000000000000000000000
                                        mem[(4 * ceil32(return_data.size)) + 228] = 100000 * 1000 * ext_call.return_data[0] / s * t / 1000 * ext_call.return_data[0] / 10^18 * msg.value * arg5 / 1000 / 100000
                                        mem[(4 * ceil32(return_data.size)) + 260] = 128
                                        mem[(4 * ceil32(return_data.size)) + 356] = 2
                                        idx = 0
                                        u = (4 * ceil32(return_data.size)) + 388
                                        v = (4 * ceil32(return_data.size)) + 160
                                        while idx < 2:
                                            mem[u] = mem[v + 12 len 20]
                                            idx = idx + 1
                                            u = u + 32
                                            v = v + 32
                                            continue 
                                        mem[(4 * ceil32(return_data.size)) + 292] = address(arg3)
                                        mem[(4 * ceil32(return_data.size)) + 324] = arg4
                                        require ext_code.size(stor5)
                                        call stor5.swapAVAXForExactTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                           value msg.value wei
                                             gas gas_remaining wei
                                            args 100000 * 1000 * ext_call.return_data[0] / s * t / 1000 * ext_call.return_data[0] / 10^18 * msg.value * arg5 / 1000 / 100000, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 388 len 64]), address(arg3), arg4
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[(4 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = (6 * ceil32(return_data.size)) + 224
                                        require return_data.size >= 32
                                        require mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, 100000 * 1000 * ext_call.return_data[0] / s * t / 1000 * ext_call.return_data[0] / 10^18 * msg.value * arg5 / 1000 / 100000) >> 32 <= test266151307()
                                        require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, 100000 * 1000 * ext_call.return_data[0] / s * t / 1000 * ext_call.return_data[0] / 10^18 * msg.value * arg5 / 1000 / 100000) >> 32 + 255 < (4 * ceil32(return_data.size)) + return_data.size + 224
                                        if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, 100000 * 1000 * ext_call.return_data[0] / s * t / 1000 * ext_call.return_data[0] / 10^18 * msg.value * arg5 / 1000 / 100000) >> 32 + 224] > test266151307():
                                            revert with 0, 65
                                        if (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, 100000 * 1000 * ext_call.return_data[0] / s * t / 1000 * ext_call.return_data[0] / 10^18 * msg.value * arg5 / 1000 / 100000) >> 32 + 224]) + 225 > test266151307() or ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, 100000 * 1000 * ext_call.return_data[0] / s * t / 1000 * ext_call.return_data[0] / 10^18 * msg.value * arg5 / 1000 / 100000) >> 32 + 224]) + 1 < 0:
                                            revert with 0, 65
                                        require return_data.size >= mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, 100000 * 1000 * ext_call.return_data[0] / s * t / 1000 * ext_call.return_data[0] / 10^18 * msg.value * arg5 / 1000 / 100000) >> 32 + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, 100000 * 1000 * ext_call.return_data[0] / s * t / 1000 * ext_call.return_data[0] / 10^18 * msg.value * arg5 / 1000 / 100000) >> 32 + 224]) + 32
}



}
