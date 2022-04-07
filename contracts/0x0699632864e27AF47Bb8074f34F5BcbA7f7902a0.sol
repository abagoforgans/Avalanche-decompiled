contract main {




// =====================  Runtime code  =====================


#
#  - swapBuyback(address arg1, address arg2, uint256 arg3, uint256 arg4, bool arg5, address arg6)
#
address owner;

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Must be owner.'
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function swapExact(address arg1, address arg2, uint256 arg3, uint256 arg4, bool arg5, address arg6) payable {
    require calldata.size - 4 >= 192
    require arg1 == arg1
    require arg2 == arg2
    require arg5 == arg5
    require arg6 == arg6
    if owner != msg.sender:
        revert with 0, 'Must be owner.'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 132] = this.address
    mem[ceil32(return_data.size) + 164] = arg3
    require ext_code.size(arg1)
    call arg1.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(2 * ceil32(return_data.size)) + 100] = this.address
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 17
    mem[(4 * ceil32(return_data.size)) + 100] = arg6
    mem[(4 * ceil32(return_data.size)) + 132] = 0
    require ext_code.size(arg1)
    call arg1.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(arg6), 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(6 * ceil32(return_data.size)) + 128] = arg1
    if not arg5:
        mem[(6 * ceil32(return_data.size)) + 160] = arg2
        mem[(6 * ceil32(return_data.size)) + 192] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
        mem[(6 * ceil32(return_data.size)) + 196] = 0
        idx = 0
        s = (6 * ceil32(return_data.size)) + 128
        t = (6 * ceil32(return_data.size)) + 388
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(arg6)
        call arg6.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
             gas gas_remaining wei
            args 0, arg4, 160, msg.sender, block.timestamp, 2, mem[(6 * ceil32(return_data.size)) + 388 len 64]
    else:
        if 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 == arg1:
            mem[(6 * ceil32(return_data.size)) + 160] = arg2
            mem[(6 * ceil32(return_data.size)) + 192] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
            mem[(6 * ceil32(return_data.size)) + 196] = 0
            idx = 0
            s = (6 * ceil32(return_data.size)) + 128
            t = (6 * ceil32(return_data.size)) + 388
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(arg6)
            call arg6.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args 0, arg4, 160, msg.sender, block.timestamp, 2, mem[(6 * ceil32(return_data.size)) + 388 len 64]
        else:
            if 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 == arg2:
                mem[(6 * ceil32(return_data.size)) + 160] = arg2
                mem[(6 * ceil32(return_data.size)) + 192] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                mem[(6 * ceil32(return_data.size)) + 196] = 0
                idx = 0
                s = (6 * ceil32(return_data.size)) + 128
                t = (6 * ceil32(return_data.size)) + 388
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(arg6)
                call arg6.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args 0, arg4, 160, msg.sender, block.timestamp, 2, mem[(6 * ceil32(return_data.size)) + 388 len 64]
            else:
                mem[(6 * ceil32(return_data.size)) + 160] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                mem[(6 * ceil32(return_data.size)) + 192] = arg2
                mem[(6 * ceil32(return_data.size)) + 224] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                mem[(6 * ceil32(return_data.size)) + 228] = 0
                idx = 0
                s = (6 * ceil32(return_data.size)) + 128
                t = (6 * ceil32(return_data.size)) + 420
                while idx < 3:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(arg6)
                call arg6.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args 0, arg4, 160, msg.sender, block.timestamp, 3, mem[(6 * ceil32(return_data.size)) + 420 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function getAmountOutMin(address arg1, address arg2, uint256 arg3, uint256 arg4, bool arg5, address arg6) payable {
    require calldata.size - 4 >= 192
    require arg1 == arg1
    require arg2 == arg2
    require arg5 == arg5
    require arg6 == arg6
    if not arg5:
        mem[96] = 2
        mem[128] = arg1
        mem[160] = arg2
        mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[196] = arg3
        mem[228] = 64
        mem[260] = 2
        idx = 0
        s = 128
        t = 292
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(arg6)
        staticcall arg6.getAmountsOut(uint256 rg1, address[] rg2) with:
                gas gas_remaining wei
               args arg3, Array(len=2, data=mem[292 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 192
        require return_data.size >= 32
        _94 = mem[192 len 4], Mask(224, 32, arg3) >> 32
        require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
        require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 223 < return_data.size + 192
        _98 = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
        if mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] > test266151307():
            revert with 0, 65
        if ceil32(return_data.size) + ceil32(32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 1 < 0:
            revert with 0, 65
        mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193
        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
        require return_data.size >= _94 + (32 * _98) + 32
        mem[ceil32(return_data.size) + 224 len 32 * _98] = mem[_94 + 224 len 32 * _98]
        if 1 >= _98:
            revert with 0, 50
        if mem[ceil32(return_data.size) + 256] and arg4 > -1 / mem[ceil32(return_data.size) + 256]:
            revert with 0, 17
        if 1 >= _98:
            revert with 0, 50
        if mem[ceil32(return_data.size) + 256] < mem[ceil32(return_data.size) + 256] * arg4 / 10000:
            revert with 0, 17
        mem[mem[64]] = mem[ceil32(return_data.size) + 256] - (mem[ceil32(return_data.size) + 256] * arg4 / 10000)
    else:
        if 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 == arg1:
            mem[96] = 2
            mem[128] = arg1
            mem[160] = arg2
            mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[196] = arg3
            mem[228] = 64
            mem[260] = 2
            idx = 0
            s = 128
            t = 292
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(arg6)
            staticcall arg6.getAmountsOut(uint256 rg1, address[] rg2) with:
                    gas gas_remaining wei
                   args arg3, Array(len=2, data=mem[292 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 192
            require return_data.size >= 32
            _95 = mem[192 len 4], Mask(224, 32, arg3) >> 32
            require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
            require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 223 < return_data.size + 192
            _99 = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
            if mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] > test266151307():
                revert with 0, 65
            if ceil32(return_data.size) + ceil32(32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 1 < 0:
                revert with 0, 65
            mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193
            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
            require return_data.size >= _95 + (32 * _99) + 32
            mem[ceil32(return_data.size) + 224 len 32 * _99] = mem[_95 + 224 len 32 * _99]
            if 1 >= _99:
                revert with 0, 50
            if mem[ceil32(return_data.size) + 256] and arg4 > -1 / mem[ceil32(return_data.size) + 256]:
                revert with 0, 17
            if 1 >= _99:
                revert with 0, 50
            if mem[ceil32(return_data.size) + 256] < mem[ceil32(return_data.size) + 256] * arg4 / 10000:
                revert with 0, 17
            mem[mem[64]] = mem[ceil32(return_data.size) + 256] - (mem[ceil32(return_data.size) + 256] * arg4 / 10000)
        else:
            if 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 == arg2:
                mem[96] = 2
                mem[128] = arg1
                mem[160] = arg2
                mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[196] = arg3
                mem[228] = 64
                mem[260] = 2
                idx = 0
                s = 128
                t = 292
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(arg6)
                staticcall arg6.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args arg3, Array(len=2, data=mem[292 len 64])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 192
                require return_data.size >= 32
                _97 = mem[192 len 4], Mask(224, 32, arg3) >> 32
                require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 223 < return_data.size + 192
                _101 = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                if mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] > test266151307():
                    revert with 0, 65
                if ceil32(return_data.size) + ceil32(32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 1 < 0:
                    revert with 0, 65
                mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193
                mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                require return_data.size >= _97 + (32 * _101) + 32
                mem[ceil32(return_data.size) + 224 len 32 * _101] = mem[_97 + 224 len 32 * _101]
                if 1 >= _101:
                    revert with 0, 50
                if mem[ceil32(return_data.size) + 256] and arg4 > -1 / mem[ceil32(return_data.size) + 256]:
                    revert with 0, 17
                if 1 >= _101:
                    revert with 0, 50
                if mem[ceil32(return_data.size) + 256] < mem[ceil32(return_data.size) + 256] * arg4 / 10000:
                    revert with 0, 17
                mem[mem[64]] = mem[ceil32(return_data.size) + 256] - (mem[ceil32(return_data.size) + 256] * arg4 / 10000)
            else:
                mem[96] = 3
                mem[128] = arg1
                mem[160] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                mem[192] = arg2
                mem[224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[228] = arg3
                mem[260] = 64
                mem[292] = 3
                idx = 0
                s = 128
                t = 324
                while idx < 3:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(arg6)
                staticcall arg6.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args arg3, Array(len=3, data=mem[324 len 96])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 224
                require return_data.size >= 32
                _96 = mem[224 len 4], Mask(224, 32, arg3) >> 32
                require mem[224 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                require mem[224 len 4], Mask(224, 32, arg3) >> 32 + 255 < return_data.size + 224
                _100 = mem[mem[224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                if mem[mem[224 len 4], Mask(224, 32, arg3) >> 32 + 224] > test266151307():
                    revert with 0, 65
                if ceil32(return_data.size) + ceil32(32 * mem[mem[224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 225 > test266151307() or ceil32(32 * mem[mem[224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 1 < 0:
                    revert with 0, 65
                mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 225
                mem[ceil32(return_data.size) + 224] = mem[mem[224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                require return_data.size >= _96 + (32 * _100) + 32
                mem[ceil32(return_data.size) + 256 len 32 * _100] = mem[_96 + 256 len 32 * _100]
                if 2 >= _100:
                    revert with 0, 50
                if mem[ceil32(return_data.size) + 320] and arg4 > -1 / mem[ceil32(return_data.size) + 320]:
                    revert with 0, 17
                if 2 >= _100:
                    revert with 0, 50
                if mem[ceil32(return_data.size) + 320] < mem[ceil32(return_data.size) + 320] * arg4 / 10000:
                    revert with 0, 17
                mem[mem[64]] = mem[ceil32(return_data.size) + 320] - (mem[ceil32(return_data.size) + 320] * arg4 / 10000)
    return memory
      from mem[64]
       len 32
}

function swap(address arg1, address arg2, uint256 arg3, uint256 arg4, bool arg5, address arg6) payable {
    require calldata.size - 4 >= 192
    require arg1 == arg1
    require arg2 == arg2
    require arg5 == arg5
    require arg6 == arg6
    if owner != msg.sender:
        revert with 0, 'Must be owner.'
    mem[100] = this.address
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 100] = msg.sender
    mem[ceil32(return_data.size) + 132] = this.address
    mem[ceil32(return_data.size) + 164] = arg3
    require ext_code.size(arg1)
    call arg1.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg3
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(2 * ceil32(return_data.size)) + 100] = this.address
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 17
    mem[(4 * ceil32(return_data.size)) + 100] = arg6
    mem[(4 * ceil32(return_data.size)) + 132] = 0
    require ext_code.size(arg1)
    call arg1.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(arg6), 0
    mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not arg5:
        mem[(6 * ceil32(return_data.size)) + 96] = 2
        mem[(6 * ceil32(return_data.size)) + 128] = arg1
        mem[(6 * ceil32(return_data.size)) + 160] = arg2
        mem[(6 * ceil32(return_data.size)) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[(6 * ceil32(return_data.size)) + 196] = 0
        mem[(6 * ceil32(return_data.size)) + 228] = 64
        mem[(6 * ceil32(return_data.size)) + 260] = 2
        idx = 0
        s = (6 * ceil32(return_data.size)) + 128
        t = (6 * ceil32(return_data.size)) + 292
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(arg6)
        staticcall arg6.getAmountsOut(uint256 rg1, address[] rg2) with:
                gas gas_remaining wei
               args 0, 64, 2, mem[(6 * ceil32(return_data.size)) + 292 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(6 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (7 * ceil32(return_data.size)) + 192
        require return_data.size >= 32
        _120 = mem[(6 * ceil32(return_data.size)) + 192 len 4], 0
        require mem[(6 * ceil32(return_data.size)) + 192 len 4], 0 <= test266151307()
        require (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], 0 + 223 < (6 * ceil32(return_data.size)) + return_data.size + 192
        _124 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], 0 + 192]
        if mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], 0 + 192] > test266151307():
            revert with 0, 65
        if (7 * ceil32(return_data.size)) + ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 193 > test266151307() or ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 1 < 0:
            revert with 0, 65
        mem[64] = (7 * ceil32(return_data.size)) + ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 193
        mem[(7 * ceil32(return_data.size)) + 192] = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], 0 + 192]
        require return_data.size >= _120 + (32 * _124) + 32
        mem[(7 * ceil32(return_data.size)) + 224 len 32 * _124] = mem[(6 * ceil32(return_data.size)) + _120 + 224 len 32 * _124]
        if 1 >= _124:
            revert with 0, 50
        _188 = mem[(7 * ceil32(return_data.size)) + 256]
        if mem[(7 * ceil32(return_data.size)) + 256] and arg4 > -1 / mem[(7 * ceil32(return_data.size)) + 256]:
            revert with 0, 17
        if 1 >= _124:
            revert with 0, 50
        _200 = mem[(7 * ceil32(return_data.size)) + 256]
        if mem[(7 * ceil32(return_data.size)) + 256] < mem[(7 * ceil32(return_data.size)) + 256] * arg4 / 10000:
            revert with 0, 17
        mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 0
        mem[mem[64] + 36] = _200 - (_188 * arg4 / 10000)
        mem[mem[64] + 68] = 160
        mem[mem[64] + 164] = 2
        idx = 0
        s = (6 * ceil32(return_data.size)) + 128
        t = mem[64] + 196
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(arg6)
        call arg6.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
             gas gas_remaining wei
            args 0, _200 - (_188 * arg4 / 10000), 160, msg.sender, block.timestamp, 2, mem[mem[64] + 196 len 64]
    else:
        if 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 == arg1:
            mem[(6 * ceil32(return_data.size)) + 96] = 2
            mem[(6 * ceil32(return_data.size)) + 128] = arg1
            mem[(6 * ceil32(return_data.size)) + 160] = arg2
            mem[(6 * ceil32(return_data.size)) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[(6 * ceil32(return_data.size)) + 196] = 0
            mem[(6 * ceil32(return_data.size)) + 228] = 64
            mem[(6 * ceil32(return_data.size)) + 260] = 2
            idx = 0
            s = (6 * ceil32(return_data.size)) + 128
            t = (6 * ceil32(return_data.size)) + 292
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(arg6)
            staticcall arg6.getAmountsOut(uint256 rg1, address[] rg2) with:
                    gas gas_remaining wei
                   args 0, 64, 2, mem[(6 * ceil32(return_data.size)) + 292 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(6 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (7 * ceil32(return_data.size)) + 192
            require return_data.size >= 32
            _121 = mem[(6 * ceil32(return_data.size)) + 192 len 4], 0
            require mem[(6 * ceil32(return_data.size)) + 192 len 4], 0 <= test266151307()
            require (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], 0 + 223 < (6 * ceil32(return_data.size)) + return_data.size + 192
            _125 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], 0 + 192]
            if mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], 0 + 192] > test266151307():
                revert with 0, 65
            if (7 * ceil32(return_data.size)) + ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 193 > test266151307() or ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 1 < 0:
                revert with 0, 65
            mem[64] = (7 * ceil32(return_data.size)) + ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 193
            mem[(7 * ceil32(return_data.size)) + 192] = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], 0 + 192]
            require return_data.size >= _121 + (32 * _125) + 32
            mem[(7 * ceil32(return_data.size)) + 224 len 32 * _125] = mem[(6 * ceil32(return_data.size)) + _121 + 224 len 32 * _125]
            if 1 >= _125:
                revert with 0, 50
            _189 = mem[(7 * ceil32(return_data.size)) + 256]
            if mem[(7 * ceil32(return_data.size)) + 256] and arg4 > -1 / mem[(7 * ceil32(return_data.size)) + 256]:
                revert with 0, 17
            if 1 >= _125:
                revert with 0, 50
            _201 = mem[(7 * ceil32(return_data.size)) + 256]
            if mem[(7 * ceil32(return_data.size)) + 256] < mem[(7 * ceil32(return_data.size)) + 256] * arg4 / 10000:
                revert with 0, 17
            mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 0
            mem[mem[64] + 36] = _201 - (_189 * arg4 / 10000)
            mem[mem[64] + 68] = 160
            mem[mem[64] + 164] = 2
            idx = 0
            s = (6 * ceil32(return_data.size)) + 128
            t = mem[64] + 196
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(arg6)
            call arg6.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args 0, _201 - (_189 * arg4 / 10000), 160, msg.sender, block.timestamp, 2, mem[mem[64] + 196 len 64]
        else:
            if 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 == arg2:
                mem[(6 * ceil32(return_data.size)) + 96] = 2
                mem[(6 * ceil32(return_data.size)) + 128] = arg1
                mem[(6 * ceil32(return_data.size)) + 160] = arg2
                mem[(6 * ceil32(return_data.size)) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[(6 * ceil32(return_data.size)) + 196] = 0
                mem[(6 * ceil32(return_data.size)) + 228] = 64
                mem[(6 * ceil32(return_data.size)) + 260] = 2
                idx = 0
                s = (6 * ceil32(return_data.size)) + 128
                t = (6 * ceil32(return_data.size)) + 292
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(arg6)
                staticcall arg6.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args 0, 64, 2, mem[(6 * ceil32(return_data.size)) + 292 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(6 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (7 * ceil32(return_data.size)) + 192
                require return_data.size >= 32
                _123 = mem[(6 * ceil32(return_data.size)) + 192 len 4], 0
                require mem[(6 * ceil32(return_data.size)) + 192 len 4], 0 <= test266151307()
                require (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], 0 + 223 < (6 * ceil32(return_data.size)) + return_data.size + 192
                _127 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], 0 + 192]
                if mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], 0 + 192] > test266151307():
                    revert with 0, 65
                if (7 * ceil32(return_data.size)) + ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 193 > test266151307() or ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 1 < 0:
                    revert with 0, 65
                mem[64] = (7 * ceil32(return_data.size)) + ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 193
                mem[(7 * ceil32(return_data.size)) + 192] = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], 0 + 192]
                require return_data.size >= _123 + (32 * _127) + 32
                mem[(7 * ceil32(return_data.size)) + 224 len 32 * _127] = mem[(6 * ceil32(return_data.size)) + _123 + 224 len 32 * _127]
                if 1 >= _127:
                    revert with 0, 50
                _191 = mem[(7 * ceil32(return_data.size)) + 256]
                if mem[(7 * ceil32(return_data.size)) + 256] and arg4 > -1 / mem[(7 * ceil32(return_data.size)) + 256]:
                    revert with 0, 17
                if 1 >= _127:
                    revert with 0, 50
                _203 = mem[(7 * ceil32(return_data.size)) + 256]
                if mem[(7 * ceil32(return_data.size)) + 256] < mem[(7 * ceil32(return_data.size)) + 256] * arg4 / 10000:
                    revert with 0, 17
                mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 0
                mem[mem[64] + 36] = _203 - (_191 * arg4 / 10000)
                mem[mem[64] + 68] = 160
                mem[mem[64] + 164] = 2
                idx = 0
                s = (6 * ceil32(return_data.size)) + 128
                t = mem[64] + 196
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(arg6)
                call arg6.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args 0, _203 - (_191 * arg4 / 10000), 160, msg.sender, block.timestamp, 2, mem[mem[64] + 196 len 64]
            else:
                mem[(6 * ceil32(return_data.size)) + 96] = 3
                mem[(6 * ceil32(return_data.size)) + 128] = arg1
                mem[(6 * ceil32(return_data.size)) + 160] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                mem[(6 * ceil32(return_data.size)) + 192] = arg2
                mem[(6 * ceil32(return_data.size)) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[(6 * ceil32(return_data.size)) + 228] = 0
                mem[(6 * ceil32(return_data.size)) + 260] = 64
                mem[(6 * ceil32(return_data.size)) + 292] = 3
                idx = 0
                s = (6 * ceil32(return_data.size)) + 128
                t = (6 * ceil32(return_data.size)) + 324
                while idx < 3:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(arg6)
                staticcall arg6.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args 0, 64, 3, mem[(6 * ceil32(return_data.size)) + 324 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(6 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (7 * ceil32(return_data.size)) + 224
                require return_data.size >= 32
                _122 = mem[(6 * ceil32(return_data.size)) + 224 len 4], 0
                require mem[(6 * ceil32(return_data.size)) + 224 len 4], 0 <= test266151307()
                require (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], 0 + 255 < (6 * ceil32(return_data.size)) + return_data.size + 224
                _126 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], 0 + 224]
                if mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], 0 + 224] > test266151307():
                    revert with 0, 65
                if (7 * ceil32(return_data.size)) + ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], 0 + 224]) + 225 > test266151307() or ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], 0 + 224]) + 1 < 0:
                    revert with 0, 65
                mem[64] = (7 * ceil32(return_data.size)) + ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], 0 + 224]) + 225
                mem[(7 * ceil32(return_data.size)) + 224] = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], 0 + 224]
                require return_data.size >= _122 + (32 * _126) + 32
                mem[(7 * ceil32(return_data.size)) + 256 len 32 * _126] = mem[(6 * ceil32(return_data.size)) + _122 + 256 len 32 * _126]
                if 2 >= _126:
                    revert with 0, 50
                _190 = mem[(7 * ceil32(return_data.size)) + 320]
                if mem[(7 * ceil32(return_data.size)) + 320] and arg4 > -1 / mem[(7 * ceil32(return_data.size)) + 320]:
                    revert with 0, 17
                if 2 >= _126:
                    revert with 0, 50
                _202 = mem[(7 * ceil32(return_data.size)) + 320]
                if mem[(7 * ceil32(return_data.size)) + 320] < mem[(7 * ceil32(return_data.size)) + 320] * arg4 / 10000:
                    revert with 0, 17
                mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 0
                mem[mem[64] + 36] = _202 - (_190 * arg4 / 10000)
                mem[mem[64] + 68] = 160
                mem[mem[64] + 164] = 3
                idx = 0
                s = (6 * ceil32(return_data.size)) + 128
                t = mem[64] + 196
                while idx < 3:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(arg6)
                call arg6.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args 0, _202 - (_190 * arg4 / 10000), 160, msg.sender, block.timestamp, 3, mem[mem[64] + 196 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function swapBuybackTest(address arg1, address arg2, uint256 arg3, uint256 arg4, bool arg5, address arg6) payable {
    require calldata.size - 4 >= 192
    require arg1 == arg1
    require arg2 == arg2
    require arg5 == arg5
    require arg6 == arg6
    mem[100] = msg.sender
    require ext_code.size(arg2)
    staticcall arg2.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if owner != msg.sender:
        revert with 0, 'Must be owner.'
    mem[ceil32(return_data.size) + 100] = this.address
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(2 * ceil32(return_data.size)) + 100] = msg.sender
    mem[(2 * ceil32(return_data.size)) + 132] = this.address
    mem[(2 * ceil32(return_data.size)) + 164] = arg3
    require ext_code.size(arg1)
    call arg1.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg3
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(4 * ceil32(return_data.size)) + 100] = this.address
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 17
    mem[(6 * ceil32(return_data.size)) + 100] = arg6
    mem[(6 * ceil32(return_data.size)) + 132] = 0
    require ext_code.size(arg1)
    call arg1.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(arg6), 0
    mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not arg5:
        mem[(7 * ceil32(return_data.size)) + 96] = 2
        mem[(7 * ceil32(return_data.size)) + 128] = arg1
        mem[(7 * ceil32(return_data.size)) + 160] = arg2
        mem[(7 * ceil32(return_data.size)) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[(7 * ceil32(return_data.size)) + 196] = 0
        mem[(7 * ceil32(return_data.size)) + 228] = 64
        mem[(7 * ceil32(return_data.size)) + 260] = 2
        idx = 0
        s = (7 * ceil32(return_data.size)) + 128
        t = (7 * ceil32(return_data.size)) + 292
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(arg6)
        staticcall arg6.getAmountsOut(uint256 rg1, address[] rg2) with:
                gas gas_remaining wei
               args 0, 64, 2, mem[(7 * ceil32(return_data.size)) + 292 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(7 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (8 * ceil32(return_data.size)) + 192
        require return_data.size >= 32
        _505 = mem[(7 * ceil32(return_data.size)) + 192 len 4], 0
        require mem[(7 * ceil32(return_data.size)) + 192 len 4], 0 <= test266151307()
        require (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], 0 + 223 < (7 * ceil32(return_data.size)) + return_data.size + 192
        _509 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], 0 + 192]
        if mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], 0 + 192] > test266151307():
            revert with 0, 65
        if (8 * ceil32(return_data.size)) + ceil32(32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 193 > test266151307() or ceil32(32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 1 < 0:
            revert with 0, 65
        mem[64] = (8 * ceil32(return_data.size)) + ceil32(32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 193
        mem[(8 * ceil32(return_data.size)) + 192] = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], 0 + 192]
        require return_data.size >= _505 + (32 * _509) + 32
        mem[(8 * ceil32(return_data.size)) + 224 len 32 * _509] = mem[(7 * ceil32(return_data.size)) + _505 + 224 len 32 * _509]
        if 1 >= _509:
            revert with 0, 50
        _1177 = mem[(8 * ceil32(return_data.size)) + 256]
        if mem[(8 * ceil32(return_data.size)) + 256] and arg4 > -1 / mem[(8 * ceil32(return_data.size)) + 256]:
            revert with 0, 17
        if 1 >= _509:
            revert with 0, 50
        _1189 = mem[(8 * ceil32(return_data.size)) + 256]
        if mem[(8 * ceil32(return_data.size)) + 256] < mem[(8 * ceil32(return_data.size)) + 256] * arg4 / 10000:
            revert with 0, 17
        mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 0
        mem[mem[64] + 36] = _1189 - (_1177 * arg4 / 10000)
        mem[mem[64] + 68] = 160
        mem[mem[64] + 164] = 2
        idx = 0
        s = (7 * ceil32(return_data.size)) + 128
        t = mem[64] + 196
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 100] = msg.sender
        mem[mem[64] + 132] = block.timestamp
        require ext_code.size(arg6)
        call arg6.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
             gas gas_remaining wei
            args 0, _1189 - (_1177 * arg4 / 10000), 160, msg.sender, block.timestamp, 2, mem[mem[64] + 196 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[mem[64] + 4] = msg.sender
        require ext_code.size(arg2)
        staticcall arg2.0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1829 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1833 = mem[_1829]
        if mem[_1829] < ext_call.return_data[0]:
            revert with 0, 17
        if owner != msg.sender:
            revert with 0, 'Must be owner.'
        mem[mem[64] + 4] = this.address
        require ext_code.size(arg2)
        staticcall arg2.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1853 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1857 = mem[_1853]
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = this.address
        mem[mem[64] + 68] = _1833 - ext_call.return_data[0]
        require ext_code.size(arg2)
        call arg2.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, this.address, _1833 - ext_call.return_data[0]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1869 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_1869] == bool(mem[_1869])
        mem[mem[64] + 4] = this.address
        require ext_code.size(arg2)
        staticcall arg2.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1885 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1889 = mem[_1885]
        if mem[_1885] < _1857:
            revert with 0, 17
        mem[mem[64] + 4] = arg6
        mem[mem[64] + 36] = _1889 - _1857
        require ext_code.size(arg2)
        call arg2.approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args address(arg6), _1889 - _1857
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1901 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_1901] == bool(mem[_1901])
        if not arg5:
            _1909 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            if 0 >= mem[_1909]:
                revert with 0, 50
            mem[_1909 + 32] = arg2
            if 1 >= mem[_1909]:
                revert with 0, 50
            mem[_1909 + 64] = arg1
            mem[_1909 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_1909 + 100] = _1889 - _1857
            mem[_1909 + 132] = 64
            mem[_1909 + 164] = mem[_1909]
            idx = 0
            s = _1909 + 32
            t = _1909 + 196
            while idx < mem[_1909]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(arg6)
            staticcall arg6.mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _1909 + (32 * mem[_1909]) + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2457 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _2473 = mem[_2457]
            require mem[_2457] <= test266151307()
            require _2457 + mem[_2457] + 31 < _2457 + return_data.size
            _2489 = mem[_2457 + mem[_2457]]
            if mem[_2457 + mem[_2457]] > test266151307():
                revert with 0, 65
            if _2457 + ceil32(return_data.size) + ceil32(32 * mem[_2457 + mem[_2457]]) + 1 > test266151307() or ceil32(32 * mem[_2457 + mem[_2457]]) + 1 < 0:
                revert with 0, 65
            mem[64] = _2457 + ceil32(return_data.size) + ceil32(32 * mem[_2457 + mem[_2457]]) + 1
            mem[_2457 + ceil32(return_data.size)] = _2489
            require return_data.size >= _2473 + (32 * _2489) + 32
            mem[_2457 + ceil32(return_data.size) + 32 len 32 * _2489] = mem[_2457 + _2473 + 32 len 32 * _2489]
            if mem[_1909] < 1:
                revert with 0, 17
            if mem[_1909] - 1 >= _2489:
                revert with 0, 50
            _2905 = mem[(32 * mem[_1909] - 1) + _2457 + ceil32(return_data.size) + 32]
            if mem[(32 * mem[_1909] - 1) + _2457 + ceil32(return_data.size) + 32] and arg4 > -1 / mem[(32 * mem[_1909] - 1) + _2457 + ceil32(return_data.size) + 32]:
                revert with 0, 17
            if mem[_1909] < 1:
                revert with 0, 17
            if mem[_1909] - 1 >= _2489:
                revert with 0, 50
            _2953 = mem[(32 * mem[_1909] - 1) + _2457 + ceil32(return_data.size) + 32]
            if mem[(32 * mem[_1909] - 1) + _2457 + ceil32(return_data.size) + 32] < mem[(32 * mem[_1909] - 1) + _2457 + ceil32(return_data.size) + 32] * arg4 / 10000:
                revert with 0, 17
            mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _1889 - _1857
            mem[mem[64] + 36] = _2953 - (_2905 * arg4 / 10000)
            mem[mem[64] + 68] = 160
            _2985 = mem[_1909]
            mem[mem[64] + 164] = mem[_1909]
            idx = 0
            s = _1909 + 32
            t = mem[64] + 196
            while idx < _2985:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 100] = msg.sender
            mem[mem[64] + 132] = block.timestamp
            require ext_code.size(arg6)
            call arg6.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args _1889 - _1857, _2953 - (_2905 * arg4 / 10000), 160, msg.sender, block.timestamp, mem[mem[64] + 164 len (32 * _2985) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64] + 4] = msg.sender
            require ext_code.size(arg1)
            staticcall arg1.0x70a08231 with:
                    gas gas_remaining wei
                   args msg.sender
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3257 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _3273 = mem[_3257]
            if not mem[_3257]:
                revert with 0, '', 0
            s = 0
            idx = mem[_3257]
            while idx:
                if s == -1:
                    revert with 0, 17
                s = s + 1
                idx = idx / 10
                continue 
            if s > test266151307():
                revert with 0, 65
            _3401 = mem[64]
            mem[mem[64]] = s
            mem[64] = mem[64] + ceil32(s) + 32
            if not s:
                t = s
                idx = _3273
                while idx:
                    if t < 1:
                        revert with 0, 17
                    if idx / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                        revert with 0, 17
                    if idx < 10 * idx / 10:
                        revert with 0, 17
                    if 48 > -uint8(idx - (10 * idx / 10)) + 255:
                        revert with 0, 17
                    if t - 1 >= mem[_3401]:
                        revert with 0, 50
                    mem[t + _3401 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                _3673 = mem[_3401]
                mem[mem[64] + 36] = mem[_3401]
                mem[mem[64] + 68 len ceil32(_3673)] = mem[_3401 + 32 len ceil32(_3673)]
                if ceil32(_3673) > _3673:
                    mem[mem[64] + _3673 + 68] = 0
                revert with 0, 32, mem[mem[64] + 36 len ceil32(_3673) + 32]
            mem[_3401 + 32 len s] = call.data[calldata.size len s]
            t = s
            idx = _3273
            while idx:
                if t < 1:
                    revert with 0, 17
                if idx / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                    revert with 0, 17
                if idx < 10 * idx / 10:
                    revert with 0, 17
                if 48 > -uint8(idx - (10 * idx / 10)) + 255:
                    revert with 0, 17
                if t - 1 >= mem[_3401]:
                    revert with 0, 50
                mem[t + _3401 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _3674 = mem[_3401]
            mem[mem[64] + 36] = mem[_3401]
            mem[mem[64] + 68 len ceil32(_3674)] = mem[_3401 + 32 len ceil32(_3674)]
            if ceil32(_3674) > _3674:
                mem[mem[64] + _3674 + 68] = 0
            revert with 0, 32, mem[mem[64] + 36 len ceil32(_3674) + 32]
        if 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 == arg2:
            _1918 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            if 0 >= mem[_1918]:
                revert with 0, 50
            mem[_1918 + 32] = arg2
            if 1 >= mem[_1918]:
                revert with 0, 50
            mem[_1918 + 64] = arg1
            mem[_1918 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_1918 + 100] = _1889 - _1857
            mem[_1918 + 132] = 64
            mem[_1918 + 164] = mem[_1918]
            idx = 0
            s = _1918 + 32
            t = _1918 + 196
            while idx < mem[_1918]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(arg6)
            staticcall arg6.mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _1918 + (32 * mem[_1918]) + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2458 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _2474 = mem[_2458]
            require mem[_2458] <= test266151307()
            require _2458 + mem[_2458] + 31 < _2458 + return_data.size
            _2490 = mem[_2458 + mem[_2458]]
            if mem[_2458 + mem[_2458]] > test266151307():
                revert with 0, 65
            if _2458 + ceil32(return_data.size) + ceil32(32 * mem[_2458 + mem[_2458]]) + 1 > test266151307() or ceil32(32 * mem[_2458 + mem[_2458]]) + 1 < 0:
                revert with 0, 65
            mem[64] = _2458 + ceil32(return_data.size) + ceil32(32 * mem[_2458 + mem[_2458]]) + 1
            mem[_2458 + ceil32(return_data.size)] = _2490
            require return_data.size >= _2474 + (32 * _2490) + 32
            mem[_2458 + ceil32(return_data.size) + 32 len 32 * _2490] = mem[_2458 + _2474 + 32 len 32 * _2490]
            if mem[_1918] < 1:
                revert with 0, 17
            if mem[_1918] - 1 >= _2490:
                revert with 0, 50
            _2906 = mem[(32 * mem[_1918] - 1) + _2458 + ceil32(return_data.size) + 32]
            if mem[(32 * mem[_1918] - 1) + _2458 + ceil32(return_data.size) + 32] and arg4 > -1 / mem[(32 * mem[_1918] - 1) + _2458 + ceil32(return_data.size) + 32]:
                revert with 0, 17
            if mem[_1918] < 1:
                revert with 0, 17
            if mem[_1918] - 1 >= _2490:
                revert with 0, 50
            _2954 = mem[(32 * mem[_1918] - 1) + _2458 + ceil32(return_data.size) + 32]
            if mem[(32 * mem[_1918] - 1) + _2458 + ceil32(return_data.size) + 32] < mem[(32 * mem[_1918] - 1) + _2458 + ceil32(return_data.size) + 32] * arg4 / 10000:
                revert with 0, 17
            mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _1889 - _1857
            mem[mem[64] + 36] = _2954 - (_2906 * arg4 / 10000)
            mem[mem[64] + 68] = 160
            _2986 = mem[_1918]
            mem[mem[64] + 164] = mem[_1918]
            idx = 0
            s = _1918 + 32
            t = mem[64] + 196
            while idx < _2986:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 100] = msg.sender
            mem[mem[64] + 132] = block.timestamp
            require ext_code.size(arg6)
            call arg6.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args _1889 - _1857, _2954 - (_2906 * arg4 / 10000), 160, msg.sender, block.timestamp, mem[mem[64] + 164 len (32 * _2986) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64] + 4] = msg.sender
            require ext_code.size(arg1)
            staticcall arg1.0x70a08231 with:
                    gas gas_remaining wei
                   args msg.sender
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3258 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _3274 = mem[_3258]
            if not mem[_3258]:
                revert with 0, '', 0
            s = 0
            idx = mem[_3258]
            while idx:
                if s == -1:
                    revert with 0, 17
                s = s + 1
                idx = idx / 10
                continue 
            if s > test266151307():
                revert with 0, 65
            _3402 = mem[64]
            mem[mem[64]] = s
            mem[64] = mem[64] + ceil32(s) + 32
            if not s:
                t = s
                idx = _3274
                while idx:
                    if t < 1:
                        revert with 0, 17
                    if idx / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                        revert with 0, 17
                    if idx < 10 * idx / 10:
                        revert with 0, 17
                    if 48 > -uint8(idx - (10 * idx / 10)) + 255:
                        revert with 0, 17
                    if t - 1 >= mem[_3402]:
                        revert with 0, 50
                    mem[t + _3402 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                _3643 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                _3675 = mem[_3402]
                mem[mem[64] + 36] = mem[_3402]
                mem[mem[64] + 68 len ceil32(_3675)] = mem[_3402 + 32 len ceil32(_3675)]
                if ceil32(_3675) <= _3675:
                    revert with 0, 32, mem[mem[64] + 36 len ceil32(_3675) + 32]
                mem[mem[64] + _3675 + 68] = 0
                revert with memory
                  from mem[64]
                   len ceil32(_3675) + _3643 + -mem[64] + 68
            mem[_3402 + 32 len s] = call.data[calldata.size len s]
            t = s
            idx = _3274
            while idx:
                if t < 1:
                    revert with 0, 17
                if idx / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                    revert with 0, 17
                if idx < 10 * idx / 10:
                    revert with 0, 17
                if 48 > -uint8(idx - (10 * idx / 10)) + 255:
                    revert with 0, 17
                if t - 1 >= mem[_3402]:
                    revert with 0, 50
                mem[t + _3402 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            _3644 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _3676 = mem[_3402]
            mem[mem[64] + 36] = mem[_3402]
            mem[mem[64] + 68 len ceil32(_3676)] = mem[_3402 + 32 len ceil32(_3676)]
            if ceil32(_3676) <= _3676:
                revert with 0, 32, mem[mem[64] + 36 len ceil32(_3676) + 32]
            mem[mem[64] + _3676 + 68] = 0
            revert with memory
              from mem[64]
               len ceil32(_3676) + _3644 + -mem[64] + 68
        if 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 == arg1:
            _1932 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            if 0 >= mem[_1932]:
                revert with 0, 50
            mem[_1932 + 32] = arg2
            if 1 >= mem[_1932]:
                revert with 0, 50
            mem[_1932 + 64] = arg1
            mem[_1932 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_1932 + 100] = _1889 - _1857
            mem[_1932 + 132] = 64
            mem[_1932 + 164] = mem[_1932]
            idx = 0
            s = _1932 + 32
            t = _1932 + 196
            while idx < mem[_1932]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(arg6)
            staticcall arg6.mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _1932 + (32 * mem[_1932]) + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2460 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _2476 = mem[_2460]
            require mem[_2460] <= test266151307()
            require _2460 + mem[_2460] + 31 < _2460 + return_data.size
            _2492 = mem[_2460 + mem[_2460]]
            if mem[_2460 + mem[_2460]] > test266151307():
                revert with 0, 65
            if _2460 + ceil32(return_data.size) + ceil32(32 * mem[_2460 + mem[_2460]]) + 1 > test266151307() or ceil32(32 * mem[_2460 + mem[_2460]]) + 1 < 0:
                revert with 0, 65
            mem[64] = _2460 + ceil32(return_data.size) + ceil32(32 * mem[_2460 + mem[_2460]]) + 1
            mem[_2460 + ceil32(return_data.size)] = _2492
            require return_data.size >= _2476 + (32 * _2492) + 32
            mem[_2460 + ceil32(return_data.size) + 32 len 32 * _2492] = mem[_2460 + _2476 + 32 len 32 * _2492]
            if mem[_1932] < 1:
                revert with 0, 17
            if mem[_1932] - 1 >= _2492:
                revert with 0, 50
            _2908 = mem[(32 * mem[_1932] - 1) + _2460 + ceil32(return_data.size) + 32]
            if mem[(32 * mem[_1932] - 1) + _2460 + ceil32(return_data.size) + 32] and arg4 > -1 / mem[(32 * mem[_1932] - 1) + _2460 + ceil32(return_data.size) + 32]:
                revert with 0, 17
            if mem[_1932] < 1:
                revert with 0, 17
            if mem[_1932] - 1 >= _2492:
                revert with 0, 50
            _2956 = mem[(32 * mem[_1932] - 1) + _2460 + ceil32(return_data.size) + 32]
            if mem[(32 * mem[_1932] - 1) + _2460 + ceil32(return_data.size) + 32] < mem[(32 * mem[_1932] - 1) + _2460 + ceil32(return_data.size) + 32] * arg4 / 10000:
                revert with 0, 17
            mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _1889 - _1857
            mem[mem[64] + 36] = _2956 - (_2908 * arg4 / 10000)
            mem[mem[64] + 68] = 160
            _2988 = mem[_1932]
            mem[mem[64] + 164] = mem[_1932]
            idx = 0
            s = _1932 + 32
            t = mem[64] + 196
            while idx < _2988:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 100] = msg.sender
            mem[mem[64] + 132] = block.timestamp
            require ext_code.size(arg6)
            call arg6.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args _1889 - _1857, _2956 - (_2908 * arg4 / 10000), 160, msg.sender, block.timestamp, mem[mem[64] + 164 len (32 * _2988) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64] + 4] = msg.sender
            require ext_code.size(arg1)
            staticcall arg1.0x70a08231 with:
                    gas gas_remaining wei
                   args msg.sender
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3260 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _3276 = mem[_3260]
            if not mem[_3260]:
                revert with 0, '', 0
            s = 0
            idx = mem[_3260]
            while idx:
                if s == -1:
                    revert with 0, 17
                s = s + 1
                idx = idx / 10
                continue 
            if s > test266151307():
                revert with 0, 65
            _3404 = mem[64]
            mem[mem[64]] = s
            mem[64] = mem[64] + ceil32(s) + 32
            if not s:
                t = s
                idx = _3276
                while idx:
                    if t < 1:
                        revert with 0, 17
                    if idx / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                        revert with 0, 17
                    if idx < 10 * idx / 10:
                        revert with 0, 17
                    if 48 > -uint8(idx - (10 * idx / 10)) + 255:
                        revert with 0, 17
                    if t - 1 >= mem[_3404]:
                        revert with 0, 50
                    mem[t + _3404 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                _3679 = mem[_3404]
                mem[mem[64] + 36] = mem[_3404]
                mem[mem[64] + 68 len ceil32(_3679)] = mem[_3404 + 32 len ceil32(_3679)]
                if ceil32(_3679) > _3679:
                    mem[mem[64] + _3679 + 68] = 0
                revert with 0, 32, mem[mem[64] + 36 len ceil32(_3679) + 32]
            mem[_3404 + 32 len s] = call.data[calldata.size len s]
            t = s
            idx = _3276
            while idx:
                if t < 1:
                    revert with 0, 17
                if idx / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                    revert with 0, 17
                if idx < 10 * idx / 10:
                    revert with 0, 17
                if 48 > -uint8(idx - (10 * idx / 10)) + 255:
                    revert with 0, 17
                if t - 1 >= mem[_3404]:
                    revert with 0, 50
                mem[t + _3404 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _3680 = mem[_3404]
            mem[mem[64] + 36] = mem[_3404]
            mem[mem[64] + 68 len ceil32(_3680)] = mem[_3404 + 32 len ceil32(_3680)]
            if ceil32(_3680) > _3680:
                mem[mem[64] + _3680 + 68] = 0
            revert with 0, 32, mem[mem[64] + 36 len ceil32(_3680) + 32]
        _1930 = mem[64]
        mem[mem[64]] = 3
        mem[64] = mem[64] + 128
        if 0 >= mem[_1930]:
            revert with 0, 50
        mem[_1930 + 32] = arg2
        if 1 >= mem[_1930]:
            revert with 0, 50
        mem[_1930 + 64] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
        if 2 >= mem[_1930]:
            revert with 0, 50
        mem[_1930 + 96] = arg1
        mem[_1930 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[_1930 + 132] = _1889 - _1857
        mem[_1930 + 164] = 64
        mem[_1930 + 196] = mem[_1930]
        idx = 0
        s = _1930 + 32
        t = _1930 + 228
        while idx < mem[_1930]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(arg6)
        staticcall arg6.mem[mem[64] len 4] with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len _1930 + (32 * mem[_1930]) + -mem[64] + 224]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _2459 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _2475 = mem[_2459]
        require mem[_2459] <= test266151307()
        require _2459 + mem[_2459] + 31 < _2459 + return_data.size
        _2491 = mem[_2459 + mem[_2459]]
        if mem[_2459 + mem[_2459]] > test266151307():
            revert with 0, 65
        if _2459 + ceil32(return_data.size) + ceil32(32 * mem[_2459 + mem[_2459]]) + 1 > test266151307() or ceil32(32 * mem[_2459 + mem[_2459]]) + 1 < 0:
            revert with 0, 65
        mem[64] = _2459 + ceil32(return_data.size) + ceil32(32 * mem[_2459 + mem[_2459]]) + 1
        mem[_2459 + ceil32(return_data.size)] = _2491
        require return_data.size >= _2475 + (32 * _2491) + 32
        mem[_2459 + ceil32(return_data.size) + 32 len 32 * _2491] = mem[_2459 + _2475 + 32 len 32 * _2491]
        if mem[_1930] < 1:
            revert with 0, 17
        if mem[_1930] - 1 >= _2491:
            revert with 0, 50
        _2907 = mem[(32 * mem[_1930] - 1) + _2459 + ceil32(return_data.size) + 32]
        if mem[(32 * mem[_1930] - 1) + _2459 + ceil32(return_data.size) + 32] and arg4 > -1 / mem[(32 * mem[_1930] - 1) + _2459 + ceil32(return_data.size) + 32]:
            revert with 0, 17
        if mem[_1930] < 1:
            revert with 0, 17
        if mem[_1930] - 1 >= _2491:
            revert with 0, 50
        _2955 = mem[(32 * mem[_1930] - 1) + _2459 + ceil32(return_data.size) + 32]
        if mem[(32 * mem[_1930] - 1) + _2459 + ceil32(return_data.size) + 32] < mem[(32 * mem[_1930] - 1) + _2459 + ceil32(return_data.size) + 32] * arg4 / 10000:
            revert with 0, 17
        mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _1889 - _1857
        mem[mem[64] + 36] = _2955 - (_2907 * arg4 / 10000)
        mem[mem[64] + 68] = 160
        _2987 = mem[_1930]
        mem[mem[64] + 164] = mem[_1930]
        idx = 0
        s = _1930 + 32
        t = mem[64] + 196
        while idx < _2987:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 100] = msg.sender
        mem[mem[64] + 132] = block.timestamp
        require ext_code.size(arg6)
        call arg6.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
             gas gas_remaining wei
            args _1889 - _1857, _2955 - (_2907 * arg4 / 10000), 160, msg.sender, block.timestamp, mem[mem[64] + 164 len (32 * _2987) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[mem[64] + 4] = msg.sender
        require ext_code.size(arg1)
        staticcall arg1.0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _3259 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _3275 = mem[_3259]
        if not mem[_3259]:
            revert with 0, '', 0
        s = 0
        idx = mem[_3259]
        while idx:
            if s == -1:
                revert with 0, 17
            s = s + 1
            idx = idx / 10
            continue 
        if s > test266151307():
            revert with 0, 65
        _3403 = mem[64]
        mem[mem[64]] = s
        mem[64] = mem[64] + ceil32(s) + 32
        if not s:
            t = s
            idx = _3275
            while idx:
                if t < 1:
                    revert with 0, 17
                if idx / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                    revert with 0, 17
                if idx < 10 * idx / 10:
                    revert with 0, 17
                if 48 > -uint8(idx - (10 * idx / 10)) + 255:
                    revert with 0, 17
                if t - 1 >= mem[_3403]:
                    revert with 0, 50
                mem[t + _3403 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _3677 = mem[_3403]
            mem[mem[64] + 36] = mem[_3403]
            mem[mem[64] + 68 len ceil32(_3677)] = mem[_3403 + 32 len ceil32(_3677)]
            if ceil32(_3677) > _3677:
                mem[mem[64] + _3677 + 68] = 0
            revert with 0, 32, mem[mem[64] + 36 len ceil32(_3677) + 32]
        mem[_3403 + 32 len s] = call.data[calldata.size len s]
        t = s
        idx = _3275
        while idx:
            if t < 1:
                revert with 0, 17
            if idx / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                revert with 0, 17
            if idx < 10 * idx / 10:
                revert with 0, 17
            if 48 > -uint8(idx - (10 * idx / 10)) + 255:
                revert with 0, 17
            if t - 1 >= mem[_3403]:
                revert with 0, 50
            mem[t + _3403 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        _3678 = mem[_3403]
        mem[mem[64] + 36] = mem[_3403]
        mem[mem[64] + 68 len ceil32(_3678)] = mem[_3403 + 32 len ceil32(_3678)]
        if ceil32(_3678) > _3678:
            mem[mem[64] + _3678 + 68] = 0
        revert with 0, 32, mem[mem[64] + 36 len ceil32(_3678) + 32]
    if 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 == arg1:
        mem[(7 * ceil32(return_data.size)) + 96] = 2
        mem[(7 * ceil32(return_data.size)) + 128] = arg1
        mem[(7 * ceil32(return_data.size)) + 160] = arg2
        mem[(7 * ceil32(return_data.size)) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[(7 * ceil32(return_data.size)) + 196] = 0
        mem[(7 * ceil32(return_data.size)) + 228] = 64
        mem[(7 * ceil32(return_data.size)) + 260] = 2
        idx = 0
        s = (7 * ceil32(return_data.size)) + 128
        t = (7 * ceil32(return_data.size)) + 292
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(arg6)
        staticcall arg6.getAmountsOut(uint256 rg1, address[] rg2) with:
                gas gas_remaining wei
               args 0, 64, 2, mem[(7 * ceil32(return_data.size)) + 292 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(7 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (8 * ceil32(return_data.size)) + 192
        require return_data.size >= 32
        _506 = mem[(7 * ceil32(return_data.size)) + 192 len 4], 0
        require mem[(7 * ceil32(return_data.size)) + 192 len 4], 0 <= test266151307()
        require (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], 0 + 223 < (7 * ceil32(return_data.size)) + return_data.size + 192
        _510 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], 0 + 192]
        if mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], 0 + 192] > test266151307():
            revert with 0, 65
        if (8 * ceil32(return_data.size)) + ceil32(32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 193 > test266151307() or ceil32(32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 1 < 0:
            revert with 0, 65
        mem[64] = (8 * ceil32(return_data.size)) + ceil32(32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 193
        mem[(8 * ceil32(return_data.size)) + 192] = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], 0 + 192]
        require return_data.size >= _506 + (32 * _510) + 32
        mem[(8 * ceil32(return_data.size)) + 224 len 32 * _510] = mem[(7 * ceil32(return_data.size)) + _506 + 224 len 32 * _510]
        if 1 >= _510:
            revert with 0, 50
        _1178 = mem[(8 * ceil32(return_data.size)) + 256]
        if mem[(8 * ceil32(return_data.size)) + 256] and arg4 > -1 / mem[(8 * ceil32(return_data.size)) + 256]:
            revert with 0, 17
        if 1 >= _510:
            revert with 0, 50
        _1190 = mem[(8 * ceil32(return_data.size)) + 256]
        if mem[(8 * ceil32(return_data.size)) + 256] < mem[(8 * ceil32(return_data.size)) + 256] * arg4 / 10000:
            revert with 0, 17
        mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 0
        mem[mem[64] + 36] = _1190 - (_1178 * arg4 / 10000)
        mem[mem[64] + 68] = 160
        mem[mem[64] + 164] = 2
        idx = 0
        s = (7 * ceil32(return_data.size)) + 128
        t = mem[64] + 196
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 100] = msg.sender
        mem[mem[64] + 132] = block.timestamp
        require ext_code.size(arg6)
        call arg6.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
             gas gas_remaining wei
            args 0, _1190 - (_1178 * arg4 / 10000), 160, msg.sender, block.timestamp, 2, mem[mem[64] + 196 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[mem[64] + 4] = msg.sender
        require ext_code.size(arg2)
        staticcall arg2.0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1830 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1834 = mem[_1830]
        if mem[_1830] < ext_call.return_data[0]:
            revert with 0, 17
        if owner != msg.sender:
            revert with 0, 'Must be owner.'
        mem[mem[64] + 4] = this.address
        require ext_code.size(arg2)
        staticcall arg2.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1854 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1858 = mem[_1854]
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = this.address
        mem[mem[64] + 68] = _1834 - ext_call.return_data[0]
        require ext_code.size(arg2)
        call arg2.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, this.address, _1834 - ext_call.return_data[0]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1870 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_1870] == bool(mem[_1870])
        mem[mem[64] + 4] = this.address
        require ext_code.size(arg2)
        staticcall arg2.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1886 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1890 = mem[_1886]
        if mem[_1886] < _1858:
            revert with 0, 17
        mem[mem[64] + 4] = arg6
        mem[mem[64] + 36] = _1890 - _1858
        require ext_code.size(arg2)
        call arg2.approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args address(arg6), _1890 - _1858
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1902 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_1902] == bool(mem[_1902])
        if not arg5:
            _1911 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            if 0 >= mem[_1911]:
                revert with 0, 50
            mem[_1911 + 32] = arg2
            if 1 >= mem[_1911]:
                revert with 0, 50
            mem[_1911 + 64] = arg1
            mem[_1911 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_1911 + 100] = _1890 - _1858
            mem[_1911 + 132] = 64
            mem[_1911 + 164] = mem[_1911]
            idx = 0
            s = _1911 + 32
            t = _1911 + 196
            while idx < mem[_1911]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(arg6)
            staticcall arg6.mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _1911 + (32 * mem[_1911]) + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2461 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _2477 = mem[_2461]
            require mem[_2461] <= test266151307()
            require _2461 + mem[_2461] + 31 < _2461 + return_data.size
            _2493 = mem[_2461 + mem[_2461]]
            if mem[_2461 + mem[_2461]] > test266151307():
                revert with 0, 65
            if _2461 + ceil32(return_data.size) + ceil32(32 * mem[_2461 + mem[_2461]]) + 1 > test266151307() or ceil32(32 * mem[_2461 + mem[_2461]]) + 1 < 0:
                revert with 0, 65
            mem[64] = _2461 + ceil32(return_data.size) + ceil32(32 * mem[_2461 + mem[_2461]]) + 1
            mem[_2461 + ceil32(return_data.size)] = _2493
            require return_data.size >= _2477 + (32 * _2493) + 32
            mem[_2461 + ceil32(return_data.size) + 32 len 32 * _2493] = mem[_2461 + _2477 + 32 len 32 * _2493]
            if mem[_1911] < 1:
                revert with 0, 17
            if mem[_1911] - 1 >= _2493:
                revert with 0, 50
            _2909 = mem[(32 * mem[_1911] - 1) + _2461 + ceil32(return_data.size) + 32]
            if mem[(32 * mem[_1911] - 1) + _2461 + ceil32(return_data.size) + 32] and arg4 > -1 / mem[(32 * mem[_1911] - 1) + _2461 + ceil32(return_data.size) + 32]:
                revert with 0, 17
            if mem[_1911] < 1:
                revert with 0, 17
            if mem[_1911] - 1 >= _2493:
                revert with 0, 50
            _2957 = mem[(32 * mem[_1911] - 1) + _2461 + ceil32(return_data.size) + 32]
            if mem[(32 * mem[_1911] - 1) + _2461 + ceil32(return_data.size) + 32] < mem[(32 * mem[_1911] - 1) + _2461 + ceil32(return_data.size) + 32] * arg4 / 10000:
                revert with 0, 17
            mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _1890 - _1858
            mem[mem[64] + 36] = _2957 - (_2909 * arg4 / 10000)
            mem[mem[64] + 68] = 160
            _2989 = mem[_1911]
            mem[mem[64] + 164] = mem[_1911]
            idx = 0
            s = _1911 + 32
            t = mem[64] + 196
            while idx < _2989:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 100] = msg.sender
            mem[mem[64] + 132] = block.timestamp
            require ext_code.size(arg6)
            call arg6.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args _1890 - _1858, _2957 - (_2909 * arg4 / 10000), 160, msg.sender, block.timestamp, mem[mem[64] + 164 len (32 * _2989) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64] + 4] = msg.sender
            require ext_code.size(arg1)
            staticcall arg1.0x70a08231 with:
                    gas gas_remaining wei
                   args msg.sender
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3261 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _3277 = mem[_3261]
            if not mem[_3261]:
                revert with 0, '', 0
            s = 0
            idx = mem[_3261]
            while idx:
                if s == -1:
                    revert with 0, 17
                s = s + 1
                idx = idx / 10
                continue 
            if s > test266151307():
                revert with 0, 65
            _3405 = mem[64]
            mem[mem[64]] = s
            mem[64] = mem[64] + ceil32(s) + 32
            if not s:
                t = s
                idx = _3277
                while idx:
                    if t < 1:
                        revert with 0, 17
                    if idx / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                        revert with 0, 17
                    if idx < 10 * idx / 10:
                        revert with 0, 17
                    if 48 > -uint8(idx - (10 * idx / 10)) + 255:
                        revert with 0, 17
                    if t - 1 >= mem[_3405]:
                        revert with 0, 50
                    mem[t + _3405 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                _3649 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                _3681 = mem[_3405]
                mem[mem[64] + 36] = mem[_3405]
                mem[mem[64] + 68 len ceil32(_3681)] = mem[_3405 + 32 len ceil32(_3681)]
                if ceil32(_3681) <= _3681:
                    revert with 0, 32, mem[mem[64] + 36 len ceil32(_3681) + 32]
                mem[mem[64] + _3681 + 68] = 0
                revert with memory
                  from mem[64]
                   len ceil32(_3681) + _3649 + -mem[64] + 68
            mem[_3405 + 32 len s] = call.data[calldata.size len s]
            t = s
            idx = _3277
            while idx:
                if t < 1:
                    revert with 0, 17
                if idx / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                    revert with 0, 17
                if idx < 10 * idx / 10:
                    revert with 0, 17
                if 48 > -uint8(idx - (10 * idx / 10)) + 255:
                    revert with 0, 17
                if t - 1 >= mem[_3405]:
                    revert with 0, 50
                mem[t + _3405 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _3682 = mem[_3405]
            mem[mem[64] + 36] = mem[_3405]
            mem[mem[64] + 68 len ceil32(_3682)] = mem[_3405 + 32 len ceil32(_3682)]
            if ceil32(_3682) > _3682:
                mem[mem[64] + _3682 + 68] = 0
            revert with 0, 32, mem[mem[64] + 36 len ceil32(_3682) + 32]
        if 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 == arg2:
            _1921 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            if 0 >= mem[_1921]:
                revert with 0, 50
            mem[_1921 + 32] = arg2
            if 1 >= mem[_1921]:
                revert with 0, 50
            mem[_1921 + 64] = arg1
            mem[_1921 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_1921 + 100] = _1890 - _1858
            mem[_1921 + 132] = 64
            mem[_1921 + 164] = mem[_1921]
            idx = 0
            s = _1921 + 32
            t = _1921 + 196
            while idx < mem[_1921]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(arg6)
            staticcall arg6.mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _1921 + (32 * mem[_1921]) + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2462 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _2478 = mem[_2462]
            require mem[_2462] <= test266151307()
            require _2462 + mem[_2462] + 31 < _2462 + return_data.size
            _2494 = mem[_2462 + mem[_2462]]
            if mem[_2462 + mem[_2462]] > test266151307():
                revert with 0, 65
            if _2462 + ceil32(return_data.size) + ceil32(32 * mem[_2462 + mem[_2462]]) + 1 > test266151307() or ceil32(32 * mem[_2462 + mem[_2462]]) + 1 < 0:
                revert with 0, 65
            mem[64] = _2462 + ceil32(return_data.size) + ceil32(32 * mem[_2462 + mem[_2462]]) + 1
            mem[_2462 + ceil32(return_data.size)] = _2494
            require return_data.size >= _2478 + (32 * _2494) + 32
            mem[_2462 + ceil32(return_data.size) + 32 len 32 * _2494] = mem[_2462 + _2478 + 32 len 32 * _2494]
            if mem[_1921] < 1:
                revert with 0, 17
            if mem[_1921] - 1 >= _2494:
                revert with 0, 50
            _2910 = mem[(32 * mem[_1921] - 1) + _2462 + ceil32(return_data.size) + 32]
            if mem[(32 * mem[_1921] - 1) + _2462 + ceil32(return_data.size) + 32] and arg4 > -1 / mem[(32 * mem[_1921] - 1) + _2462 + ceil32(return_data.size) + 32]:
                revert with 0, 17
            if mem[_1921] < 1:
                revert with 0, 17
            if mem[_1921] - 1 >= _2494:
                revert with 0, 50
            _2958 = mem[(32 * mem[_1921] - 1) + _2462 + ceil32(return_data.size) + 32]
            if mem[(32 * mem[_1921] - 1) + _2462 + ceil32(return_data.size) + 32] < mem[(32 * mem[_1921] - 1) + _2462 + ceil32(return_data.size) + 32] * arg4 / 10000:
                revert with 0, 17
            _2974 = mem[64]
            mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _1890 - _1858
            mem[mem[64] + 36] = _2958 - (_2910 * arg4 / 10000)
            mem[mem[64] + 68] = 160
            _2990 = mem[_1921]
            mem[mem[64] + 164] = mem[_1921]
            idx = 0
            s = _1921 + 32
            t = mem[64] + 196
            while idx < _2990:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_2974 + 100] = msg.sender
            mem[_2974 + 132] = block.timestamp
            require ext_code.size(arg6)
            call arg6.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _2974 + (32 * _2990) + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64] + 4] = msg.sender
            require ext_code.size(arg1)
            staticcall arg1.0x70a08231 with:
                    gas gas_remaining wei
                   args msg.sender
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3262 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _3278 = mem[_3262]
            if not mem[_3262]:
                revert with 0, '', 0
            s = 0
            idx = mem[_3262]
            while idx:
                if s == -1:
                    revert with 0, 17
                s = s + 1
                idx = idx / 10
                continue 
            if s > test266151307():
                revert with 0, 65
            _3406 = mem[64]
            mem[mem[64]] = s
            mem[64] = mem[64] + ceil32(s) + 32
            if not s:
                t = s
                idx = _3278
                while idx:
                    if t < 1:
                        revert with 0, 17
                    if idx / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                        revert with 0, 17
                    if idx < 10 * idx / 10:
                        revert with 0, 17
                    if 48 > -uint8(idx - (10 * idx / 10)) + 255:
                        revert with 0, 17
                    if t - 1 >= mem[_3406]:
                        revert with 0, 50
                    mem[t + _3406 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                _3651 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                _3683 = mem[_3406]
                mem[mem[64] + 36] = mem[_3406]
                mem[mem[64] + 68 len ceil32(_3683)] = mem[_3406 + 32 len ceil32(_3683)]
                if ceil32(_3683) <= _3683:
                    revert with 0, 32, mem[mem[64] + 36 len ceil32(_3683) + 32]
                mem[mem[64] + _3683 + 68] = 0
                revert with memory
                  from mem[64]
                   len ceil32(_3683) + _3651 + -mem[64] + 68
            mem[_3406 + 32 len s] = call.data[calldata.size len s]
            t = s
            idx = _3278
            while idx:
                if t < 1:
                    revert with 0, 17
                if idx / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                    revert with 0, 17
                if idx < 10 * idx / 10:
                    revert with 0, 17
                if 48 > -uint8(idx - (10 * idx / 10)) + 255:
                    revert with 0, 17
                if t - 1 >= mem[_3406]:
                    revert with 0, 50
                mem[t + _3406 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _3684 = mem[_3406]
            mem[mem[64] + 36] = mem[_3406]
            mem[mem[64] + 68 len ceil32(_3684)] = mem[_3406 + 32 len ceil32(_3684)]
            if ceil32(_3684) > _3684:
                mem[mem[64] + _3684 + 68] = 0
            revert with 0, 32, mem[mem[64] + 36 len ceil32(_3684) + 32]
        if 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 == arg1:
            _1937 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            if 0 >= mem[_1937]:
                revert with 0, 50
            mem[_1937 + 32] = arg2
            if 1 >= mem[_1937]:
                revert with 0, 50
            mem[_1937 + 64] = arg1
            mem[_1937 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_1937 + 100] = _1890 - _1858
            mem[_1937 + 132] = 64
            mem[_1937 + 164] = mem[_1937]
            idx = 0
            s = _1937 + 32
            t = _1937 + 196
            while idx < mem[_1937]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(arg6)
            staticcall arg6.mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _1937 + (32 * mem[_1937]) + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2464 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _2480 = mem[_2464]
            require mem[_2464] <= test266151307()
            require _2464 + mem[_2464] + 31 < _2464 + return_data.size
            _2496 = mem[_2464 + mem[_2464]]
            if mem[_2464 + mem[_2464]] > test266151307():
                revert with 0, 65
            if _2464 + ceil32(return_data.size) + ceil32(32 * mem[_2464 + mem[_2464]]) + 1 > test266151307() or ceil32(32 * mem[_2464 + mem[_2464]]) + 1 < 0:
                revert with 0, 65
            mem[64] = _2464 + ceil32(return_data.size) + ceil32(32 * mem[_2464 + mem[_2464]]) + 1
            mem[_2464 + ceil32(return_data.size)] = _2496
            require return_data.size >= _2480 + (32 * _2496) + 32
            mem[_2464 + ceil32(return_data.size) + 32 len 32 * _2496] = mem[_2464 + _2480 + 32 len 32 * _2496]
            if mem[_1937] < 1:
                revert with 0, 17
            if mem[_1937] - 1 >= _2496:
                revert with 0, 50
            _2912 = mem[(32 * mem[_1937] - 1) + _2464 + ceil32(return_data.size) + 32]
            if mem[(32 * mem[_1937] - 1) + _2464 + ceil32(return_data.size) + 32] and arg4 > -1 / mem[(32 * mem[_1937] - 1) + _2464 + ceil32(return_data.size) + 32]:
                revert with 0, 17
            if mem[_1937] < 1:
                revert with 0, 17
            if mem[_1937] - 1 >= _2496:
                revert with 0, 50
            _2960 = mem[(32 * mem[_1937] - 1) + _2464 + ceil32(return_data.size) + 32]
            if mem[(32 * mem[_1937] - 1) + _2464 + ceil32(return_data.size) + 32] < mem[(32 * mem[_1937] - 1) + _2464 + ceil32(return_data.size) + 32] * arg4 / 10000:
                revert with 0, 17
            mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _1890 - _1858
            mem[mem[64] + 36] = _2960 - (_2912 * arg4 / 10000)
            mem[mem[64] + 68] = 160
            _2992 = mem[_1937]
            mem[mem[64] + 164] = mem[_1937]
            idx = 0
            s = _1937 + 32
            t = mem[64] + 196
            while idx < _2992:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 100] = msg.sender
            mem[mem[64] + 132] = block.timestamp
            require ext_code.size(arg6)
            call arg6.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args _1890 - _1858, _2960 - (_2912 * arg4 / 10000), 160, msg.sender, block.timestamp, mem[mem[64] + 164 len (32 * _2992) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64] + 4] = msg.sender
            require ext_code.size(arg1)
            staticcall arg1.0x70a08231 with:
                    gas gas_remaining wei
                   args msg.sender
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3264 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _3280 = mem[_3264]
            if not mem[_3264]:
                revert with 0, '', 0
            s = 0
            idx = mem[_3264]
            while idx:
                if s == -1:
                    revert with 0, 17
                s = s + 1
                idx = idx / 10
                continue 
            if s > test266151307():
                revert with 0, 65
            _3408 = mem[64]
            mem[mem[64]] = s
            mem[64] = mem[64] + ceil32(s) + 32
            if not s:
                t = s
                idx = _3280
                while idx:
                    if t < 1:
                        revert with 0, 17
                    if idx / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                        revert with 0, 17
                    if idx < 10 * idx / 10:
                        revert with 0, 17
                    if 48 > -uint8(idx - (10 * idx / 10)) + 255:
                        revert with 0, 17
                    if t - 1 >= mem[_3408]:
                        revert with 0, 50
                    mem[t + _3408 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                _3655 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                _3687 = mem[_3408]
                mem[mem[64] + 36] = mem[_3408]
                mem[mem[64] + 68 len ceil32(_3687)] = mem[_3408 + 32 len ceil32(_3687)]
                if ceil32(_3687) <= _3687:
                    revert with 0, 32, mem[mem[64] + 36 len ceil32(_3687) + 32]
                mem[mem[64] + _3687 + 68] = 0
                revert with memory
                  from mem[64]
                   len ceil32(_3687) + _3655 + -mem[64] + 68
            mem[_3408 + 32 len s] = call.data[calldata.size len s]
            t = s
            idx = _3280
            while idx:
                if t < 1:
                    revert with 0, 17
                if idx / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                    revert with 0, 17
                if idx < 10 * idx / 10:
                    revert with 0, 17
                if 48 > -uint8(idx - (10 * idx / 10)) + 255:
                    revert with 0, 17
                if t - 1 >= mem[_3408]:
                    revert with 0, 50
                mem[t + _3408 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            _3656 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _3688 = mem[_3408]
            mem[mem[64] + 36] = mem[_3408]
            mem[mem[64] + 68 len ceil32(_3688)] = mem[_3408 + 32 len ceil32(_3688)]
            if ceil32(_3688) <= _3688:
                revert with 0, 32, mem[mem[64] + 36 len ceil32(_3688) + 32]
            mem[mem[64] + _3688 + 68] = 0
            revert with memory
              from mem[64]
               len ceil32(_3688) + _3656 + -mem[64] + 68
        _1935 = mem[64]
        mem[mem[64]] = 3
        mem[64] = mem[64] + 128
        if 0 >= mem[_1935]:
            revert with 0, 50
        mem[_1935 + 32] = arg2
        if 1 >= mem[_1935]:
            revert with 0, 50
        mem[_1935 + 64] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
        if 2 >= mem[_1935]:
            revert with 0, 50
        mem[_1935 + 96] = arg1
        mem[_1935 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[_1935 + 132] = _1890 - _1858
        mem[_1935 + 164] = 64
        mem[_1935 + 196] = mem[_1935]
        idx = 0
        s = _1935 + 32
        t = _1935 + 228
        while idx < mem[_1935]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(arg6)
        staticcall arg6.mem[mem[64] len 4] with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len _1935 + (32 * mem[_1935]) + -mem[64] + 224]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _2463 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _2479 = mem[_2463]
        require mem[_2463] <= test266151307()
        require _2463 + mem[_2463] + 31 < _2463 + return_data.size
        _2495 = mem[_2463 + mem[_2463]]
        if mem[_2463 + mem[_2463]] > test266151307():
            revert with 0, 65
        if _2463 + ceil32(return_data.size) + ceil32(32 * mem[_2463 + mem[_2463]]) + 1 > test266151307() or ceil32(32 * mem[_2463 + mem[_2463]]) + 1 < 0:
            revert with 0, 65
        mem[64] = _2463 + ceil32(return_data.size) + ceil32(32 * mem[_2463 + mem[_2463]]) + 1
        mem[_2463 + ceil32(return_data.size)] = _2495
        require return_data.size >= _2479 + (32 * _2495) + 32
        mem[_2463 + ceil32(return_data.size) + 32 len 32 * _2495] = mem[_2463 + _2479 + 32 len 32 * _2495]
        if mem[_1935] < 1:
            revert with 0, 17
        if mem[_1935] - 1 >= _2495:
            revert with 0, 50
        _2911 = mem[(32 * mem[_1935] - 1) + _2463 + ceil32(return_data.size) + 32]
        if mem[(32 * mem[_1935] - 1) + _2463 + ceil32(return_data.size) + 32] and arg4 > -1 / mem[(32 * mem[_1935] - 1) + _2463 + ceil32(return_data.size) + 32]:
            revert with 0, 17
        if mem[_1935] < 1:
            revert with 0, 17
        if mem[_1935] - 1 >= _2495:
            revert with 0, 50
        _2959 = mem[(32 * mem[_1935] - 1) + _2463 + ceil32(return_data.size) + 32]
        if mem[(32 * mem[_1935] - 1) + _2463 + ceil32(return_data.size) + 32] < mem[(32 * mem[_1935] - 1) + _2463 + ceil32(return_data.size) + 32] * arg4 / 10000:
            revert with 0, 17
        _2975 = mem[64]
        mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _1890 - _1858
        mem[mem[64] + 36] = _2959 - (_2911 * arg4 / 10000)
        mem[mem[64] + 68] = 160
        _2991 = mem[_1935]
        mem[mem[64] + 164] = mem[_1935]
        idx = 0
        s = _1935 + 32
        t = mem[64] + 196
        while idx < _2991:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_2975 + 100] = msg.sender
        mem[_2975 + 132] = block.timestamp
        require ext_code.size(arg6)
        call arg6.mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _2975 + (32 * _2991) + -mem[64] + 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[mem[64] + 4] = msg.sender
        require ext_code.size(arg1)
        staticcall arg1.0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _3263 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _3279 = mem[_3263]
        if not mem[_3263]:
            revert with 0, '', 0
        s = 0
        idx = mem[_3263]
        while idx:
            if s == -1:
                revert with 0, 17
            s = s + 1
            idx = idx / 10
            continue 
        if s > test266151307():
            revert with 0, 65
        _3407 = mem[64]
        mem[mem[64]] = s
        mem[64] = mem[64] + ceil32(s) + 32
        if not s:
            t = s
            idx = _3279
            while idx:
                if t < 1:
                    revert with 0, 17
                if idx / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                    revert with 0, 17
                if idx < 10 * idx / 10:
                    revert with 0, 17
                if 48 > -uint8(idx - (10 * idx / 10)) + 255:
                    revert with 0, 17
                if t - 1 >= mem[_3407]:
                    revert with 0, 50
                mem[t + _3407 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _3685 = mem[_3407]
            mem[mem[64] + 36] = mem[_3407]
            mem[mem[64] + 68 len ceil32(_3685)] = mem[_3407 + 32 len ceil32(_3685)]
            if ceil32(_3685) > _3685:
                mem[mem[64] + _3685 + 68] = 0
            revert with 0, 32, mem[mem[64] + 36 len ceil32(_3685) + 32]
        mem[_3407 + 32 len s] = call.data[calldata.size len s]
        t = s
        idx = _3279
        while idx:
            if t < 1:
                revert with 0, 17
            if idx / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                revert with 0, 17
            if idx < 10 * idx / 10:
                revert with 0, 17
            if 48 > -uint8(idx - (10 * idx / 10)) + 255:
                revert with 0, 17
            if t - 1 >= mem[_3407]:
                revert with 0, 50
            mem[t + _3407 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        _3654 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        _3686 = mem[_3407]
        mem[mem[64] + 36] = mem[_3407]
        mem[mem[64] + 68 len ceil32(_3686)] = mem[_3407 + 32 len ceil32(_3686)]
        if ceil32(_3686) <= _3686:
            revert with 0, 32, mem[mem[64] + 36 len ceil32(_3686) + 32]
        mem[mem[64] + _3686 + 68] = 0
        revert with memory
          from mem[64]
           len ceil32(_3686) + _3654 + -mem[64] + 68
    if 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 == arg2:
        mem[(7 * ceil32(return_data.size)) + 96] = 2
        mem[(7 * ceil32(return_data.size)) + 128] = arg1
        mem[(7 * ceil32(return_data.size)) + 160] = arg2
        mem[(7 * ceil32(return_data.size)) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[(7 * ceil32(return_data.size)) + 196] = 0
        mem[(7 * ceil32(return_data.size)) + 228] = 64
        mem[(7 * ceil32(return_data.size)) + 260] = 2
        idx = 0
        s = (7 * ceil32(return_data.size)) + 128
        t = (7 * ceil32(return_data.size)) + 292
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(arg6)
        staticcall arg6.getAmountsOut(uint256 rg1, address[] rg2) with:
                gas gas_remaining wei
               args 0, 64, 2, mem[(7 * ceil32(return_data.size)) + 292 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(7 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (8 * ceil32(return_data.size)) + 192
        require return_data.size >= 32
        _508 = mem[(7 * ceil32(return_data.size)) + 192 len 4], 0
        require mem[(7 * ceil32(return_data.size)) + 192 len 4], 0 <= test266151307()
        require (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], 0 + 223 < (7 * ceil32(return_data.size)) + return_data.size + 192
        _512 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], 0 + 192]
        if mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], 0 + 192] > test266151307():
            revert with 0, 65
        if (8 * ceil32(return_data.size)) + ceil32(32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 193 > test266151307() or ceil32(32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 1 < 0:
            revert with 0, 65
        mem[64] = (8 * ceil32(return_data.size)) + ceil32(32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 193
        mem[(8 * ceil32(return_data.size)) + 192] = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], 0 + 192]
        require return_data.size >= _508 + (32 * _512) + 32
        mem[(8 * ceil32(return_data.size)) + 224 len 32 * _512] = mem[(7 * ceil32(return_data.size)) + _508 + 224 len 32 * _512]
        if 1 >= _512:
            revert with 0, 50
        _1180 = mem[(8 * ceil32(return_data.size)) + 256]
        if mem[(8 * ceil32(return_data.size)) + 256] and arg4 > -1 / mem[(8 * ceil32(return_data.size)) + 256]:
            revert with 0, 17
        if 1 >= _512:
            revert with 0, 50
        _1192 = mem[(8 * ceil32(return_data.size)) + 256]
        if mem[(8 * ceil32(return_data.size)) + 256] < mem[(8 * ceil32(return_data.size)) + 256] * arg4 / 10000:
            revert with 0, 17
        mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 0
        mem[mem[64] + 36] = _1192 - (_1180 * arg4 / 10000)
        mem[mem[64] + 68] = 160
        mem[mem[64] + 164] = 2
        idx = 0
        s = (7 * ceil32(return_data.size)) + 128
        t = mem[64] + 196
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 100] = msg.sender
        mem[mem[64] + 132] = block.timestamp
        require ext_code.size(arg6)
        call arg6.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
             gas gas_remaining wei
            args 0, _1192 - (_1180 * arg4 / 10000), 160, msg.sender, block.timestamp, 2, mem[mem[64] + 196 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[mem[64] + 4] = msg.sender
        require ext_code.size(arg2)
        staticcall arg2.0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1832 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1836 = mem[_1832]
        if mem[_1832] < ext_call.return_data[0]:
            revert with 0, 17
        if owner != msg.sender:
            revert with 0, 'Must be owner.'
        mem[mem[64] + 4] = this.address
        require ext_code.size(arg2)
        staticcall arg2.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1856 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1860 = mem[_1856]
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = this.address
        mem[mem[64] + 68] = _1836 - ext_call.return_data[0]
        require ext_code.size(arg2)
        call arg2.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, this.address, _1836 - ext_call.return_data[0]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1872 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_1872] == bool(mem[_1872])
        mem[mem[64] + 4] = this.address
        require ext_code.size(arg2)
        staticcall arg2.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1888 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1892 = mem[_1888]
        if mem[_1888] < _1860:
            revert with 0, 17
        mem[mem[64] + 4] = arg6
        mem[mem[64] + 36] = _1892 - _1860
        require ext_code.size(arg2)
        call arg2.approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args address(arg6), _1892 - _1860
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1904 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_1904] == bool(mem[_1904])
        if not arg5:
            _1915 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            if 0 >= mem[_1915]:
                revert with 0, 50
            mem[_1915 + 32] = arg2
            if 1 >= mem[_1915]:
                revert with 0, 50
            mem[_1915 + 64] = arg1
            mem[_1915 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_1915 + 100] = _1892 - _1860
            mem[_1915 + 132] = 64
            mem[_1915 + 164] = mem[_1915]
            idx = 0
            s = _1915 + 32
            t = _1915 + 196
            while idx < mem[_1915]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(arg6)
            staticcall arg6.mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _1915 + (32 * mem[_1915]) + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2469 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _2485 = mem[_2469]
            require mem[_2469] <= test266151307()
            require _2469 + mem[_2469] + 31 < _2469 + return_data.size
            _2501 = mem[_2469 + mem[_2469]]
            if mem[_2469 + mem[_2469]] > test266151307():
                revert with 0, 65
            if _2469 + ceil32(return_data.size) + ceil32(32 * mem[_2469 + mem[_2469]]) + 1 > test266151307() or ceil32(32 * mem[_2469 + mem[_2469]]) + 1 < 0:
                revert with 0, 65
            mem[64] = _2469 + ceil32(return_data.size) + ceil32(32 * mem[_2469 + mem[_2469]]) + 1
            mem[_2469 + ceil32(return_data.size)] = _2501
            require return_data.size >= _2485 + (32 * _2501) + 32
            mem[_2469 + ceil32(return_data.size) + 32 len 32 * _2501] = mem[_2469 + _2485 + 32 len 32 * _2501]
            if mem[_1915] < 1:
                revert with 0, 17
            if mem[_1915] - 1 >= _2501:
                revert with 0, 50
            _2917 = mem[(32 * mem[_1915] - 1) + _2469 + ceil32(return_data.size) + 32]
            if mem[(32 * mem[_1915] - 1) + _2469 + ceil32(return_data.size) + 32] and arg4 > -1 / mem[(32 * mem[_1915] - 1) + _2469 + ceil32(return_data.size) + 32]:
                revert with 0, 17
            if mem[_1915] < 1:
                revert with 0, 17
            if mem[_1915] - 1 >= _2501:
                revert with 0, 50
            _2965 = mem[(32 * mem[_1915] - 1) + _2469 + ceil32(return_data.size) + 32]
            if mem[(32 * mem[_1915] - 1) + _2469 + ceil32(return_data.size) + 32] < mem[(32 * mem[_1915] - 1) + _2469 + ceil32(return_data.size) + 32] * arg4 / 10000:
                revert with 0, 17
            mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _1892 - _1860
            mem[mem[64] + 36] = _2965 - (_2917 * arg4 / 10000)
            mem[mem[64] + 68] = 160
            _2997 = mem[_1915]
            mem[mem[64] + 164] = mem[_1915]
            idx = 0
            s = _1915 + 32
            t = mem[64] + 196
            while idx < _2997:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 100] = msg.sender
            mem[mem[64] + 132] = block.timestamp
            require ext_code.size(arg6)
            call arg6.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args _1892 - _1860, _2965 - (_2917 * arg4 / 10000), 160, msg.sender, block.timestamp, mem[mem[64] + 164 len (32 * _2997) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64] + 4] = msg.sender
            require ext_code.size(arg1)
            staticcall arg1.0x70a08231 with:
                    gas gas_remaining wei
                   args msg.sender
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3269 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _3285 = mem[_3269]
            if not mem[_3269]:
                revert with 0, '', 0
            s = 0
            idx = mem[_3269]
            while idx:
                if s == -1:
                    revert with 0, 17
                s = s + 1
                idx = idx / 10
                continue 
            if s > test266151307():
                revert with 0, 65
            _3413 = mem[64]
            mem[mem[64]] = s
            mem[64] = mem[64] + ceil32(s) + 32
            if not s:
                t = s
                idx = _3285
                while idx:
                    if t < 1:
                        revert with 0, 17
                    if idx / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                        revert with 0, 17
                    if idx < 10 * idx / 10:
                        revert with 0, 17
                    if 48 > -uint8(idx - (10 * idx / 10)) + 255:
                        revert with 0, 17
                    if t - 1 >= mem[_3413]:
                        revert with 0, 50
                    mem[t + _3413 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                _3697 = mem[_3413]
                mem[mem[64] + 36] = mem[_3413]
                mem[mem[64] + 68 len ceil32(_3697)] = mem[_3413 + 32 len ceil32(_3697)]
                if ceil32(_3697) > _3697:
                    mem[mem[64] + _3697 + 68] = 0
                revert with 0, 32, mem[mem[64] + 36 len ceil32(_3697) + 32]
            mem[_3413 + 32 len s] = call.data[calldata.size len s]
            t = s
            idx = _3285
            while idx:
                if t < 1:
                    revert with 0, 17
                if idx / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                    revert with 0, 17
                if idx < 10 * idx / 10:
                    revert with 0, 17
                if 48 > -uint8(idx - (10 * idx / 10)) + 255:
                    revert with 0, 17
                if t - 1 >= mem[_3413]:
                    revert with 0, 50
                mem[t + _3413 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _3698 = mem[_3413]
            mem[mem[64] + 36] = mem[_3413]
            mem[mem[64] + 68 len ceil32(_3698)] = mem[_3413 + 32 len ceil32(_3698)]
            if ceil32(_3698) > _3698:
                mem[mem[64] + _3698 + 68] = 0
            revert with 0, 32, mem[mem[64] + 36 len ceil32(_3698) + 32]
        if 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 == arg2:
            _1927 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            if 0 >= mem[_1927]:
                revert with 0, 50
            mem[_1927 + 32] = arg2
            if 1 >= mem[_1927]:
                revert with 0, 50
            mem[_1927 + 64] = arg1
            mem[_1927 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_1927 + 100] = _1892 - _1860
            mem[_1927 + 132] = 64
            mem[_1927 + 164] = mem[_1927]
            idx = 0
            s = _1927 + 32
            t = _1927 + 196
            while idx < mem[_1927]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(arg6)
            staticcall arg6.mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _1927 + (32 * mem[_1927]) + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2470 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _2486 = mem[_2470]
            require mem[_2470] <= test266151307()
            require _2470 + mem[_2470] + 31 < _2470 + return_data.size
            _2502 = mem[_2470 + mem[_2470]]
            if mem[_2470 + mem[_2470]] > test266151307():
                revert with 0, 65
            if _2470 + ceil32(return_data.size) + ceil32(32 * mem[_2470 + mem[_2470]]) + 1 > test266151307() or ceil32(32 * mem[_2470 + mem[_2470]]) + 1 < 0:
                revert with 0, 65
            mem[64] = _2470 + ceil32(return_data.size) + ceil32(32 * mem[_2470 + mem[_2470]]) + 1
            mem[_2470 + ceil32(return_data.size)] = _2502
            require return_data.size >= _2486 + (32 * _2502) + 32
            mem[_2470 + ceil32(return_data.size) + 32 len 32 * _2502] = mem[_2470 + _2486 + 32 len 32 * _2502]
            if mem[_1927] < 1:
                revert with 0, 17
            if mem[_1927] - 1 >= _2502:
                revert with 0, 50
            _2918 = mem[(32 * mem[_1927] - 1) + _2470 + ceil32(return_data.size) + 32]
            if mem[(32 * mem[_1927] - 1) + _2470 + ceil32(return_data.size) + 32] and arg4 > -1 / mem[(32 * mem[_1927] - 1) + _2470 + ceil32(return_data.size) + 32]:
                revert with 0, 17
            if mem[_1927] < 1:
                revert with 0, 17
            if mem[_1927] - 1 >= _2502:
                revert with 0, 50
            _2966 = mem[(32 * mem[_1927] - 1) + _2470 + ceil32(return_data.size) + 32]
            if mem[(32 * mem[_1927] - 1) + _2470 + ceil32(return_data.size) + 32] < mem[(32 * mem[_1927] - 1) + _2470 + ceil32(return_data.size) + 32] * arg4 / 10000:
                revert with 0, 17
            _2982 = mem[64]
            mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _1892 - _1860
            mem[mem[64] + 36] = _2966 - (_2918 * arg4 / 10000)
            mem[mem[64] + 68] = 160
            _2998 = mem[_1927]
            mem[mem[64] + 164] = mem[_1927]
            idx = 0
            s = _1927 + 32
            t = mem[64] + 196
            while idx < _2998:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_2982 + 100] = msg.sender
            mem[_2982 + 132] = block.timestamp
            require ext_code.size(arg6)
            call arg6.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _2982 + (32 * _2998) + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64] + 4] = msg.sender
            require ext_code.size(arg1)
            staticcall arg1.0x70a08231 with:
                    gas gas_remaining wei
                   args msg.sender
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3270 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _3286 = mem[_3270]
            if not mem[_3270]:
                revert with 0, '', 0
            s = 0
            idx = mem[_3270]
            while idx:
                if s == -1:
                    revert with 0, 17
                s = s + 1
                idx = idx / 10
                continue 
            if s > test266151307():
                revert with 0, 65
            _3414 = mem[64]
            mem[mem[64]] = s
            mem[64] = mem[64] + ceil32(s) + 32
            if not s:
                t = s
                idx = _3286
                while idx:
                    if t < 1:
                        revert with 0, 17
                    if idx / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                        revert with 0, 17
                    if idx < 10 * idx / 10:
                        revert with 0, 17
                    if 48 > -uint8(idx - (10 * idx / 10)) + 255:
                        revert with 0, 17
                    if t - 1 >= mem[_3414]:
                        revert with 0, 50
                    mem[t + _3414 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                _3667 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                _3699 = mem[_3414]
                mem[mem[64] + 36] = mem[_3414]
                mem[mem[64] + 68 len ceil32(_3699)] = mem[_3414 + 32 len ceil32(_3699)]
                if ceil32(_3699) <= _3699:
                    revert with 0, 32, mem[mem[64] + 36 len ceil32(_3699) + 32]
                mem[mem[64] + _3699 + 68] = 0
                revert with memory
                  from mem[64]
                   len ceil32(_3699) + _3667 + -mem[64] + 68
            mem[_3414 + 32 len s] = call.data[calldata.size len s]
            t = s
            idx = _3286
            while idx:
                if t < 1:
                    revert with 0, 17
                if idx / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                    revert with 0, 17
                if idx < 10 * idx / 10:
                    revert with 0, 17
                if 48 > -uint8(idx - (10 * idx / 10)) + 255:
                    revert with 0, 17
                if t - 1 >= mem[_3414]:
                    revert with 0, 50
                mem[t + _3414 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _3700 = mem[_3414]
            mem[mem[64] + 36] = mem[_3414]
            mem[mem[64] + 68 len ceil32(_3700)] = mem[_3414 + 32 len ceil32(_3700)]
            if ceil32(_3700) > _3700:
                mem[mem[64] + _3700 + 68] = 0
            revert with 0, 32, mem[mem[64] + 36 len ceil32(_3700) + 32]
        if 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 == arg1:
            _1947 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            if 0 >= mem[_1947]:
                revert with 0, 50
            mem[_1947 + 32] = arg2
            if 1 >= mem[_1947]:
                revert with 0, 50
            mem[_1947 + 64] = arg1
            mem[_1947 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_1947 + 100] = _1892 - _1860
            mem[_1947 + 132] = 64
            mem[_1947 + 164] = mem[_1947]
            idx = 0
            s = _1947 + 32
            t = _1947 + 196
            while idx < mem[_1947]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(arg6)
            staticcall arg6.mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _1947 + (32 * mem[_1947]) + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2472 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _2488 = mem[_2472]
            require mem[_2472] <= test266151307()
            require _2472 + mem[_2472] + 31 < _2472 + return_data.size
            _2504 = mem[_2472 + mem[_2472]]
            if mem[_2472 + mem[_2472]] > test266151307():
                revert with 0, 65
            if _2472 + ceil32(return_data.size) + ceil32(32 * mem[_2472 + mem[_2472]]) + 1 > test266151307() or ceil32(32 * mem[_2472 + mem[_2472]]) + 1 < 0:
                revert with 0, 65
            mem[64] = _2472 + ceil32(return_data.size) + ceil32(32 * mem[_2472 + mem[_2472]]) + 1
            mem[_2472 + ceil32(return_data.size)] = _2504
            require return_data.size >= _2488 + (32 * _2504) + 32
            mem[_2472 + ceil32(return_data.size) + 32 len 32 * _2504] = mem[_2472 + _2488 + 32 len 32 * _2504]
            if mem[_1947] < 1:
                revert with 0, 17
            if mem[_1947] - 1 >= _2504:
                revert with 0, 50
            _2920 = mem[(32 * mem[_1947] - 1) + _2472 + ceil32(return_data.size) + 32]
            if mem[(32 * mem[_1947] - 1) + _2472 + ceil32(return_data.size) + 32] and arg4 > -1 / mem[(32 * mem[_1947] - 1) + _2472 + ceil32(return_data.size) + 32]:
                revert with 0, 17
            if mem[_1947] < 1:
                revert with 0, 17
            if mem[_1947] - 1 >= _2504:
                revert with 0, 50
            _2968 = mem[(32 * mem[_1947] - 1) + _2472 + ceil32(return_data.size) + 32]
            if mem[(32 * mem[_1947] - 1) + _2472 + ceil32(return_data.size) + 32] < mem[(32 * mem[_1947] - 1) + _2472 + ceil32(return_data.size) + 32] * arg4 / 10000:
                revert with 0, 17
            mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _1892 - _1860
            mem[mem[64] + 36] = _2968 - (_2920 * arg4 / 10000)
            mem[mem[64] + 68] = 160
            _3000 = mem[_1947]
            mem[mem[64] + 164] = mem[_1947]
            idx = 0
            s = _1947 + 32
            t = mem[64] + 196
            while idx < _3000:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 100] = msg.sender
            mem[mem[64] + 132] = block.timestamp
            require ext_code.size(arg6)
            call arg6.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args _1892 - _1860, _2968 - (_2920 * arg4 / 10000), 160, msg.sender, block.timestamp, mem[mem[64] + 164 len (32 * _3000) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64] + 4] = msg.sender
            require ext_code.size(arg1)
            staticcall arg1.0x70a08231 with:
                    gas gas_remaining wei
                   args msg.sender
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3272 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _3288 = mem[_3272]
            if not mem[_3272]:
                revert with 0, '', 0
            s = 0
            idx = mem[_3272]
            while idx:
                if s == -1:
                    revert with 0, 17
                s = s + 1
                idx = idx / 10
                continue 
            if s > test266151307():
                revert with 0, 65
            _3416 = mem[64]
            mem[mem[64]] = s
            mem[64] = mem[64] + ceil32(s) + 32
            if not s:
                t = s
                idx = _3288
                while idx:
                    if t < 1:
                        revert with 0, 17
                    if idx / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                        revert with 0, 17
                    if idx < 10 * idx / 10:
                        revert with 0, 17
                    if 48 > -uint8(idx - (10 * idx / 10)) + 255:
                        revert with 0, 17
                    if t - 1 >= mem[_3416]:
                        revert with 0, 50
                    mem[t + _3416 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                _3703 = mem[_3416]
                mem[mem[64] + 36] = mem[_3416]
                mem[mem[64] + 68 len ceil32(_3703)] = mem[_3416 + 32 len ceil32(_3703)]
                if ceil32(_3703) > _3703:
                    mem[mem[64] + _3703 + 68] = 0
                revert with 0, 32, mem[mem[64] + 36 len ceil32(_3703) + 32]
            mem[_3416 + 32 len s] = call.data[calldata.size len s]
            t = s
            idx = _3288
            while idx:
                if t < 1:
                    revert with 0, 17
                if idx / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                    revert with 0, 17
                if idx < 10 * idx / 10:
                    revert with 0, 17
                if 48 > -uint8(idx - (10 * idx / 10)) + 255:
                    revert with 0, 17
                if t - 1 >= mem[_3416]:
                    revert with 0, 50
                mem[t + _3416 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            _3672 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _3704 = mem[_3416]
            mem[mem[64] + 36] = mem[_3416]
            mem[mem[64] + 68 len ceil32(_3704)] = mem[_3416 + 32 len ceil32(_3704)]
            if ceil32(_3704) <= _3704:
                revert with 0, 32, mem[mem[64] + 36 len ceil32(_3704) + 32]
            mem[mem[64] + _3704 + 68] = 0
            revert with memory
              from mem[64]
               len ceil32(_3704) + _3672 + -mem[64] + 68
        _1945 = mem[64]
        mem[mem[64]] = 3
        mem[64] = mem[64] + 128
        if 0 >= mem[_1945]:
            revert with 0, 50
        mem[_1945 + 32] = arg2
        if 1 >= mem[_1945]:
            revert with 0, 50
        mem[_1945 + 64] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
        if 2 >= mem[_1945]:
            revert with 0, 50
        mem[_1945 + 96] = arg1
        mem[_1945 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[_1945 + 132] = _1892 - _1860
        mem[_1945 + 164] = 64
        mem[_1945 + 196] = mem[_1945]
        idx = 0
        s = _1945 + 32
        t = _1945 + 228
        while idx < mem[_1945]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(arg6)
        staticcall arg6.mem[mem[64] len 4] with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len _1945 + (32 * mem[_1945]) + -mem[64] + 224]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _2471 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _2487 = mem[_2471]
        require mem[_2471] <= test266151307()
        require _2471 + mem[_2471] + 31 < _2471 + return_data.size
        _2503 = mem[_2471 + mem[_2471]]
        if mem[_2471 + mem[_2471]] > test266151307():
            revert with 0, 65
        if _2471 + ceil32(return_data.size) + ceil32(32 * mem[_2471 + mem[_2471]]) + 1 > test266151307() or ceil32(32 * mem[_2471 + mem[_2471]]) + 1 < 0:
            revert with 0, 65
        mem[64] = _2471 + ceil32(return_data.size) + ceil32(32 * mem[_2471 + mem[_2471]]) + 1
        mem[_2471 + ceil32(return_data.size)] = _2503
        require return_data.size >= _2487 + (32 * _2503) + 32
        mem[_2471 + ceil32(return_data.size) + 32 len 32 * _2503] = mem[_2471 + _2487 + 32 len 32 * _2503]
        if mem[_1945] < 1:
            revert with 0, 17
        if mem[_1945] - 1 >= _2503:
            revert with 0, 50
        _2919 = mem[(32 * mem[_1945] - 1) + _2471 + ceil32(return_data.size) + 32]
        if mem[(32 * mem[_1945] - 1) + _2471 + ceil32(return_data.size) + 32] and arg4 > -1 / mem[(32 * mem[_1945] - 1) + _2471 + ceil32(return_data.size) + 32]:
            revert with 0, 17
        if mem[_1945] < 1:
            revert with 0, 17
        if mem[_1945] - 1 >= _2503:
            revert with 0, 50
        _2967 = mem[(32 * mem[_1945] - 1) + _2471 + ceil32(return_data.size) + 32]
        if mem[(32 * mem[_1945] - 1) + _2471 + ceil32(return_data.size) + 32] < mem[(32 * mem[_1945] - 1) + _2471 + ceil32(return_data.size) + 32] * arg4 / 10000:
            revert with 0, 17
        _2983 = mem[64]
        mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _1892 - _1860
        mem[mem[64] + 36] = _2967 - (_2919 * arg4 / 10000)
        mem[mem[64] + 68] = 160
        _2999 = mem[_1945]
        mem[mem[64] + 164] = mem[_1945]
        idx = 0
        s = _1945 + 32
        t = mem[64] + 196
        while idx < _2999:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_2983 + 100] = msg.sender
        mem[_2983 + 132] = block.timestamp
        require ext_code.size(arg6)
        call arg6.mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _2983 + (32 * _2999) + -mem[64] + 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[mem[64] + 4] = msg.sender
        require ext_code.size(arg1)
        staticcall arg1.0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _3271 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _3287 = mem[_3271]
        if not mem[_3271]:
            revert with 0, '', 0
        s = 0
        idx = mem[_3271]
        while idx:
            if s == -1:
                revert with 0, 17
            s = s + 1
            idx = idx / 10
            continue 
        if s > test266151307():
            revert with 0, 65
        _3415 = mem[64]
        mem[mem[64]] = s
        mem[64] = mem[64] + ceil32(s) + 32
        if not s:
            t = s
            idx = _3287
            while idx:
                if t < 1:
                    revert with 0, 17
                if idx / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                    revert with 0, 17
                if idx < 10 * idx / 10:
                    revert with 0, 17
                if 48 > -uint8(idx - (10 * idx / 10)) + 255:
                    revert with 0, 17
                if t - 1 >= mem[_3415]:
                    revert with 0, 50
                mem[t + _3415 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _3701 = mem[_3415]
            mem[mem[64] + 36] = mem[_3415]
            mem[mem[64] + 68 len ceil32(_3701)] = mem[_3415 + 32 len ceil32(_3701)]
            if ceil32(_3701) > _3701:
                mem[mem[64] + _3701 + 68] = 0
            revert with 0, 32, mem[mem[64] + 36 len ceil32(_3701) + 32]
        mem[_3415 + 32 len s] = call.data[calldata.size len s]
        t = s
        idx = _3287
        while idx:
            if t < 1:
                revert with 0, 17
            if idx / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                revert with 0, 17
            if idx < 10 * idx / 10:
                revert with 0, 17
            if 48 > -uint8(idx - (10 * idx / 10)) + 255:
                revert with 0, 17
            if t - 1 >= mem[_3415]:
                revert with 0, 50
            mem[t + _3415 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        _3702 = mem[_3415]
        mem[mem[64] + 36] = mem[_3415]
        mem[mem[64] + 68 len ceil32(_3702)] = mem[_3415 + 32 len ceil32(_3702)]
        if ceil32(_3702) > _3702:
            mem[mem[64] + _3702 + 68] = 0
        revert with 0, 32, mem[mem[64] + 36 len ceil32(_3702) + 32]
    mem[(7 * ceil32(return_data.size)) + 96] = 3
    mem[(7 * ceil32(return_data.size)) + 128] = arg1
    mem[(7 * ceil32(return_data.size)) + 160] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
    mem[(7 * ceil32(return_data.size)) + 192] = arg2
    mem[(7 * ceil32(return_data.size)) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[(7 * ceil32(return_data.size)) + 228] = 0
    mem[(7 * ceil32(return_data.size)) + 260] = 64
    mem[(7 * ceil32(return_data.size)) + 292] = 3
    idx = 0
    s = (7 * ceil32(return_data.size)) + 128
    t = (7 * ceil32(return_data.size)) + 324
    while idx < 3:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(arg6)
    staticcall arg6.getAmountsOut(uint256 rg1, address[] rg2) with:
            gas gas_remaining wei
           args 0, 64, 3, mem[(7 * ceil32(return_data.size)) + 324 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(7 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (8 * ceil32(return_data.size)) + 224
    require return_data.size >= 32
    _507 = mem[(7 * ceil32(return_data.size)) + 224 len 4], 0
    require mem[(7 * ceil32(return_data.size)) + 224 len 4], 0 <= test266151307()
    require (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 224 len 4], 0 + 255 < (7 * ceil32(return_data.size)) + return_data.size + 224
    _511 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 224 len 4], 0 + 224]
    if mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 224 len 4], 0 + 224] > test266151307():
        revert with 0, 65
    if (8 * ceil32(return_data.size)) + ceil32(32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 224 len 4], 0 + 224]) + 225 > test266151307() or ceil32(32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 224 len 4], 0 + 224]) + 1 < 0:
        revert with 0, 65
    mem[64] = (8 * ceil32(return_data.size)) + ceil32(32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 224 len 4], 0 + 224]) + 225
    mem[(8 * ceil32(return_data.size)) + 224] = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 224 len 4], 0 + 224]
    require return_data.size >= _507 + (32 * _511) + 32
    mem[(8 * ceil32(return_data.size)) + 256 len 32 * _511] = mem[(7 * ceil32(return_data.size)) + _507 + 256 len 32 * _511]
    if 2 >= _511:
        revert with 0, 50
    _1179 = mem[(8 * ceil32(return_data.size)) + 320]
    if mem[(8 * ceil32(return_data.size)) + 320] and arg4 > -1 / mem[(8 * ceil32(return_data.size)) + 320]:
        revert with 0, 17
    if 2 >= _511:
        revert with 0, 50
    _1191 = mem[(8 * ceil32(return_data.size)) + 320]
    if mem[(8 * ceil32(return_data.size)) + 320] < mem[(8 * ceil32(return_data.size)) + 320] * arg4 / 10000:
        revert with 0, 17
    mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = 0
    mem[mem[64] + 36] = _1191 - (_1179 * arg4 / 10000)
    mem[mem[64] + 68] = 160
    mem[mem[64] + 164] = 3
    idx = 0
    s = (7 * ceil32(return_data.size)) + 128
    t = mem[64] + 196
    while idx < 3:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64] + 100] = msg.sender
    mem[mem[64] + 132] = block.timestamp
    require ext_code.size(arg6)
    call arg6.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
         gas gas_remaining wei
        args 0, _1191 - (_1179 * arg4 / 10000), 160, msg.sender, block.timestamp, 3, mem[mem[64] + 196 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[mem[64] + 4] = msg.sender
    require ext_code.size(arg2)
    staticcall arg2.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _1831 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _1835 = mem[_1831]
    if mem[_1831] < ext_call.return_data[0]:
        revert with 0, 17
    if owner != msg.sender:
        revert with 0, 'Must be owner.'
    mem[mem[64] + 4] = this.address
    require ext_code.size(arg2)
    staticcall arg2.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _1855 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _1859 = mem[_1855]
    mem[mem[64] + 4] = msg.sender
    mem[mem[64] + 36] = this.address
    mem[mem[64] + 68] = _1835 - ext_call.return_data[0]
    require ext_code.size(arg2)
    call arg2.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, _1835 - ext_call.return_data[0]
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _1871 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_1871] == bool(mem[_1871])
    mem[mem[64] + 4] = this.address
    require ext_code.size(arg2)
    staticcall arg2.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _1887 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _1891 = mem[_1887]
    if mem[_1887] < _1859:
        revert with 0, 17
    mem[mem[64] + 4] = arg6
    mem[mem[64] + 36] = _1891 - _1859
    require ext_code.size(arg2)
    call arg2.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(arg6), _1891 - _1859
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _1903 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_1903] == bool(mem[_1903])
    if not arg5:
        _1913 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        if 0 >= mem[_1913]:
            revert with 0, 50
        mem[_1913 + 32] = arg2
        if 1 >= mem[_1913]:
            revert with 0, 50
        mem[_1913 + 64] = arg1
        mem[_1913 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[_1913 + 100] = _1891 - _1859
        mem[_1913 + 132] = 64
        mem[_1913 + 164] = mem[_1913]
        idx = 0
        s = _1913 + 32
        t = _1913 + 196
        while idx < mem[_1913]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(arg6)
        staticcall arg6.mem[mem[64] len 4] with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len _1913 + (32 * mem[_1913]) + -mem[64] + 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _2465 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _2481 = mem[_2465]
        require mem[_2465] <= test266151307()
        require _2465 + mem[_2465] + 31 < _2465 + return_data.size
        _2497 = mem[_2465 + mem[_2465]]
        if mem[_2465 + mem[_2465]] > test266151307():
            revert with 0, 65
        if _2465 + ceil32(return_data.size) + ceil32(32 * mem[_2465 + mem[_2465]]) + 1 > test266151307() or ceil32(32 * mem[_2465 + mem[_2465]]) + 1 < 0:
            revert with 0, 65
        mem[64] = _2465 + ceil32(return_data.size) + ceil32(32 * mem[_2465 + mem[_2465]]) + 1
        mem[_2465 + ceil32(return_data.size)] = _2497
        require return_data.size >= _2481 + (32 * _2497) + 32
        mem[_2465 + ceil32(return_data.size) + 32 len 32 * _2497] = mem[_2465 + _2481 + 32 len 32 * _2497]
        if mem[_1913] < 1:
            revert with 0, 17
        if mem[_1913] - 1 >= _2497:
            revert with 0, 50
        _2913 = mem[(32 * mem[_1913] - 1) + _2465 + ceil32(return_data.size) + 32]
        if mem[(32 * mem[_1913] - 1) + _2465 + ceil32(return_data.size) + 32] and arg4 > -1 / mem[(32 * mem[_1913] - 1) + _2465 + ceil32(return_data.size) + 32]:
            revert with 0, 17
        if mem[_1913] < 1:
            revert with 0, 17
        if mem[_1913] - 1 >= _2497:
            revert with 0, 50
        _2961 = mem[(32 * mem[_1913] - 1) + _2465 + ceil32(return_data.size) + 32]
        if mem[(32 * mem[_1913] - 1) + _2465 + ceil32(return_data.size) + 32] < mem[(32 * mem[_1913] - 1) + _2465 + ceil32(return_data.size) + 32] * arg4 / 10000:
            revert with 0, 17
        _2977 = mem[64]
        mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _1891 - _1859
        mem[mem[64] + 36] = _2961 - (_2913 * arg4 / 10000)
        mem[mem[64] + 68] = 160
        _2993 = mem[_1913]
        mem[mem[64] + 164] = mem[_1913]
        idx = 0
        s = _1913 + 32
        t = mem[64] + 196
        while idx < _2993:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_2977 + 100] = msg.sender
        mem[_2977 + 132] = block.timestamp
        require ext_code.size(arg6)
        call arg6.mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _2977 + (32 * _2993) + -mem[64] + 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[mem[64] + 4] = msg.sender
        require ext_code.size(arg1)
        staticcall arg1.0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _3265 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _3281 = mem[_3265]
        if not mem[_3265]:
            revert with 0, '', 0
        s = 0
        idx = mem[_3265]
        while idx:
            if s == -1:
                revert with 0, 17
            s = s + 1
            idx = idx / 10
            continue 
        if s > test266151307():
            revert with 0, 65
        _3409 = mem[64]
        mem[mem[64]] = s
        mem[64] = mem[64] + ceil32(s) + 32
        if not s:
            t = s
            idx = _3281
            while idx:
                if t < 1:
                    revert with 0, 17
                if idx / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                    revert with 0, 17
                if idx < 10 * idx / 10:
                    revert with 0, 17
                if 48 > -uint8(idx - (10 * idx / 10)) + 255:
                    revert with 0, 17
                if t - 1 >= mem[_3409]:
                    revert with 0, 50
                mem[t + _3409 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _3689 = mem[_3409]
            mem[mem[64] + 36] = mem[_3409]
            mem[mem[64] + 68 len ceil32(_3689)] = mem[_3409 + 32 len ceil32(_3689)]
            if ceil32(_3689) > _3689:
                mem[mem[64] + _3689 + 68] = 0
            revert with 0, 32, mem[mem[64] + 36 len ceil32(_3689) + 32]
        mem[_3409 + 32 len s] = call.data[calldata.size len s]
        t = s
        idx = _3281
        while idx:
            if t < 1:
                revert with 0, 17
            if idx / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                revert with 0, 17
            if idx < 10 * idx / 10:
                revert with 0, 17
            if 48 > -uint8(idx - (10 * idx / 10)) + 255:
                revert with 0, 17
            if t - 1 >= mem[_3409]:
                revert with 0, 50
            mem[t + _3409 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        _3658 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        _3690 = mem[_3409]
        mem[mem[64] + 36] = mem[_3409]
        mem[mem[64] + 68 len ceil32(_3690)] = mem[_3409 + 32 len ceil32(_3690)]
        if ceil32(_3690) <= _3690:
            revert with 0, 32, mem[mem[64] + 36 len ceil32(_3690) + 32]
        mem[mem[64] + _3690 + 68] = 0
        revert with memory
          from mem[64]
           len ceil32(_3690) + _3658 + -mem[64] + 68
    if 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 == arg2:
        _1924 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        if 0 >= mem[_1924]:
            revert with 0, 50
        mem[_1924 + 32] = arg2
        if 1 >= mem[_1924]:
            revert with 0, 50
        mem[_1924 + 64] = arg1
        mem[_1924 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[_1924 + 100] = _1891 - _1859
        mem[_1924 + 132] = 64
        mem[_1924 + 164] = mem[_1924]
        idx = 0
        s = _1924 + 32
        t = _1924 + 196
        while idx < mem[_1924]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(arg6)
        staticcall arg6.mem[mem[64] len 4] with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len _1924 + (32 * mem[_1924]) + -mem[64] + 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _2466 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _2482 = mem[_2466]
        require mem[_2466] <= test266151307()
        require _2466 + mem[_2466] + 31 < _2466 + return_data.size
        _2498 = mem[_2466 + mem[_2466]]
        if mem[_2466 + mem[_2466]] > test266151307():
            revert with 0, 65
        if _2466 + ceil32(return_data.size) + ceil32(32 * mem[_2466 + mem[_2466]]) + 1 > test266151307() or ceil32(32 * mem[_2466 + mem[_2466]]) + 1 < 0:
            revert with 0, 65
        mem[64] = _2466 + ceil32(return_data.size) + ceil32(32 * mem[_2466 + mem[_2466]]) + 1
        mem[_2466 + ceil32(return_data.size)] = _2498
        require return_data.size >= _2482 + (32 * _2498) + 32
        mem[_2466 + ceil32(return_data.size) + 32 len 32 * _2498] = mem[_2466 + _2482 + 32 len 32 * _2498]
        if mem[_1924] < 1:
            revert with 0, 17
        if mem[_1924] - 1 >= _2498:
            revert with 0, 50
        _2914 = mem[(32 * mem[_1924] - 1) + _2466 + ceil32(return_data.size) + 32]
        if mem[(32 * mem[_1924] - 1) + _2466 + ceil32(return_data.size) + 32] and arg4 > -1 / mem[(32 * mem[_1924] - 1) + _2466 + ceil32(return_data.size) + 32]:
            revert with 0, 17
        if mem[_1924] < 1:
            revert with 0, 17
        if mem[_1924] - 1 >= _2498:
            revert with 0, 50
        _2962 = mem[(32 * mem[_1924] - 1) + _2466 + ceil32(return_data.size) + 32]
        if mem[(32 * mem[_1924] - 1) + _2466 + ceil32(return_data.size) + 32] < mem[(32 * mem[_1924] - 1) + _2466 + ceil32(return_data.size) + 32] * arg4 / 10000:
            revert with 0, 17
        _2978 = mem[64]
        mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _1891 - _1859
        mem[mem[64] + 36] = _2962 - (_2914 * arg4 / 10000)
        mem[mem[64] + 68] = 160
        _2994 = mem[_1924]
        mem[mem[64] + 164] = mem[_1924]
        idx = 0
        s = _1924 + 32
        t = mem[64] + 196
        while idx < _2994:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_2978 + 100] = msg.sender
        mem[_2978 + 132] = block.timestamp
        require ext_code.size(arg6)
        call arg6.mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _2978 + (32 * _2994) + -mem[64] + 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[mem[64] + 4] = msg.sender
        require ext_code.size(arg1)
        staticcall arg1.0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _3266 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _3282 = mem[_3266]
        if not mem[_3266]:
            revert with 0, '', 0
        s = 0
        idx = mem[_3266]
        while idx:
            if s == -1:
                revert with 0, 17
            s = s + 1
            idx = idx / 10
            continue 
        if s > test266151307():
            revert with 0, 65
        _3410 = mem[64]
        mem[mem[64]] = s
        mem[64] = mem[64] + ceil32(s) + 32
        if not s:
            t = s
            idx = _3282
            while idx:
                if t < 1:
                    revert with 0, 17
                if idx / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                    revert with 0, 17
                if idx < 10 * idx / 10:
                    revert with 0, 17
                if 48 > -uint8(idx - (10 * idx / 10)) + 255:
                    revert with 0, 17
                if t - 1 >= mem[_3410]:
                    revert with 0, 50
                mem[t + _3410 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _3691 = mem[_3410]
            mem[mem[64] + 36] = mem[_3410]
            mem[mem[64] + 68 len ceil32(_3691)] = mem[_3410 + 32 len ceil32(_3691)]
            if ceil32(_3691) > _3691:
                mem[mem[64] + _3691 + 68] = 0
            revert with 0, 32, mem[mem[64] + 36 len ceil32(_3691) + 32]
        mem[_3410 + 32 len s] = call.data[calldata.size len s]
        t = s
        idx = _3282
        while idx:
            if t < 1:
                revert with 0, 17
            if idx / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                revert with 0, 17
            if idx < 10 * idx / 10:
                revert with 0, 17
            if 48 > -uint8(idx - (10 * idx / 10)) + 255:
                revert with 0, 17
            if t - 1 >= mem[_3410]:
                revert with 0, 50
            mem[t + _3410 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        _3692 = mem[_3410]
        mem[mem[64] + 36] = mem[_3410]
        mem[mem[64] + 68 len ceil32(_3692)] = mem[_3410 + 32 len ceil32(_3692)]
        if ceil32(_3692) > _3692:
            mem[mem[64] + _3692 + 68] = 0
        revert with 0, 32, mem[mem[64] + 36 len ceil32(_3692) + 32]
    if 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 == arg1:
        _1942 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        if 0 >= mem[_1942]:
            revert with 0, 50
        mem[_1942 + 32] = arg2
        if 1 >= mem[_1942]:
            revert with 0, 50
        mem[_1942 + 64] = arg1
        mem[_1942 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[_1942 + 100] = _1891 - _1859
        mem[_1942 + 132] = 64
        mem[_1942 + 164] = mem[_1942]
        idx = 0
        s = _1942 + 32
        t = _1942 + 196
        while idx < mem[_1942]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(arg6)
        staticcall arg6.mem[mem[64] len 4] with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len _1942 + (32 * mem[_1942]) + -mem[64] + 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _2468 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _2484 = mem[_2468]
        require mem[_2468] <= test266151307()
        require _2468 + mem[_2468] + 31 < _2468 + return_data.size
        _2500 = mem[_2468 + mem[_2468]]
        if mem[_2468 + mem[_2468]] > test266151307():
            revert with 0, 65
        if _2468 + ceil32(return_data.size) + ceil32(32 * mem[_2468 + mem[_2468]]) + 1 > test266151307() or ceil32(32 * mem[_2468 + mem[_2468]]) + 1 < 0:
            revert with 0, 65
        mem[64] = _2468 + ceil32(return_data.size) + ceil32(32 * mem[_2468 + mem[_2468]]) + 1
        mem[_2468 + ceil32(return_data.size)] = _2500
        require return_data.size >= _2484 + (32 * _2500) + 32
        mem[_2468 + ceil32(return_data.size) + 32 len 32 * _2500] = mem[_2468 + _2484 + 32 len 32 * _2500]
        if mem[_1942] < 1:
            revert with 0, 17
        if mem[_1942] - 1 >= _2500:
            revert with 0, 50
        _2916 = mem[(32 * mem[_1942] - 1) + _2468 + ceil32(return_data.size) + 32]
        if mem[(32 * mem[_1942] - 1) + _2468 + ceil32(return_data.size) + 32] and arg4 > -1 / mem[(32 * mem[_1942] - 1) + _2468 + ceil32(return_data.size) + 32]:
            revert with 0, 17
        if mem[_1942] < 1:
            revert with 0, 17
        if mem[_1942] - 1 >= _2500:
            revert with 0, 50
        _2964 = mem[(32 * mem[_1942] - 1) + _2468 + ceil32(return_data.size) + 32]
        if mem[(32 * mem[_1942] - 1) + _2468 + ceil32(return_data.size) + 32] < mem[(32 * mem[_1942] - 1) + _2468 + ceil32(return_data.size) + 32] * arg4 / 10000:
            revert with 0, 17
        _2980 = mem[64]
        mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _1891 - _1859
        mem[mem[64] + 36] = _2964 - (_2916 * arg4 / 10000)
        mem[mem[64] + 68] = 160
        _2996 = mem[_1942]
        mem[mem[64] + 164] = mem[_1942]
        idx = 0
        s = _1942 + 32
        t = mem[64] + 196
        while idx < _2996:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_2980 + 100] = msg.sender
        mem[_2980 + 132] = block.timestamp
        require ext_code.size(arg6)
        call arg6.mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _2980 + (32 * _2996) + -mem[64] + 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[mem[64] + 4] = msg.sender
        require ext_code.size(arg1)
        staticcall arg1.0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _3268 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _3284 = mem[_3268]
        if not mem[_3268]:
            revert with 0, '', 0
        s = 0
        idx = mem[_3268]
        while idx:
            if s == -1:
                revert with 0, 17
            s = s + 1
            idx = idx / 10
            continue 
        if s > test266151307():
            revert with 0, 65
        _3412 = mem[64]
        mem[mem[64]] = s
        mem[64] = mem[64] + ceil32(s) + 32
        if not s:
            t = s
            idx = _3284
            while idx:
                if t < 1:
                    revert with 0, 17
                if idx / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                    revert with 0, 17
                if idx < 10 * idx / 10:
                    revert with 0, 17
                if 48 > -uint8(idx - (10 * idx / 10)) + 255:
                    revert with 0, 17
                if t - 1 >= mem[_3412]:
                    revert with 0, 50
                mem[t + _3412 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _3695 = mem[_3412]
            mem[mem[64] + 36] = mem[_3412]
            mem[mem[64] + 68 len ceil32(_3695)] = mem[_3412 + 32 len ceil32(_3695)]
            if ceil32(_3695) > _3695:
                mem[mem[64] + _3695 + 68] = 0
            revert with 0, 32, mem[mem[64] + 36 len ceil32(_3695) + 32]
        mem[_3412 + 32 len s] = call.data[calldata.size len s]
        t = s
        idx = _3284
        while idx:
            if t < 1:
                revert with 0, 17
            if idx / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                revert with 0, 17
            if idx < 10 * idx / 10:
                revert with 0, 17
            if 48 > -uint8(idx - (10 * idx / 10)) + 255:
                revert with 0, 17
            if t - 1 >= mem[_3412]:
                revert with 0, 50
            mem[t + _3412 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        _3664 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        _3696 = mem[_3412]
        mem[mem[64] + 36] = mem[_3412]
        mem[mem[64] + 68 len ceil32(_3696)] = mem[_3412 + 32 len ceil32(_3696)]
        if ceil32(_3696) <= _3696:
            revert with 0, 32, mem[mem[64] + 36 len ceil32(_3696) + 32]
        mem[mem[64] + _3696 + 68] = 0
        revert with memory
          from mem[64]
           len ceil32(_3696) + _3664 + -mem[64] + 68
    _1940 = mem[64]
    mem[mem[64]] = 3
    mem[64] = mem[64] + 128
    if 0 >= mem[_1940]:
        revert with 0, 50
    mem[_1940 + 32] = arg2
    if 1 >= mem[_1940]:
        revert with 0, 50
    mem[_1940 + 64] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
    if 2 >= mem[_1940]:
        revert with 0, 50
    mem[_1940 + 96] = arg1
    mem[_1940 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[_1940 + 132] = _1891 - _1859
    mem[_1940 + 164] = 64
    mem[_1940 + 196] = mem[_1940]
    idx = 0
    s = _1940 + 32
    t = _1940 + 228
    while idx < mem[_1940]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(arg6)
    staticcall arg6.mem[mem[64] len 4] with:
            gas gas_remaining wei
           args mem[mem[64] + 4 len _1940 + (32 * mem[_1940]) + -mem[64] + 224]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _2467 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _2483 = mem[_2467]
    require mem[_2467] <= test266151307()
    require _2467 + mem[_2467] + 31 < _2467 + return_data.size
    _2499 = mem[_2467 + mem[_2467]]
    if mem[_2467 + mem[_2467]] > test266151307():
        revert with 0, 65
    if _2467 + ceil32(return_data.size) + ceil32(32 * mem[_2467 + mem[_2467]]) + 1 > test266151307() or ceil32(32 * mem[_2467 + mem[_2467]]) + 1 < 0:
        revert with 0, 65
    mem[64] = _2467 + ceil32(return_data.size) + ceil32(32 * mem[_2467 + mem[_2467]]) + 1
    mem[_2467 + ceil32(return_data.size)] = _2499
    require return_data.size >= _2483 + (32 * _2499) + 32
    mem[_2467 + ceil32(return_data.size) + 32 len 32 * _2499] = mem[_2467 + _2483 + 32 len 32 * _2499]
    if mem[_1940] < 1:
        revert with 0, 17
    if mem[_1940] - 1 >= _2499:
        revert with 0, 50
    _2915 = mem[(32 * mem[_1940] - 1) + _2467 + ceil32(return_data.size) + 32]
    if mem[(32 * mem[_1940] - 1) + _2467 + ceil32(return_data.size) + 32] and arg4 > -1 / mem[(32 * mem[_1940] - 1) + _2467 + ceil32(return_data.size) + 32]:
        revert with 0, 17
    if mem[_1940] < 1:
        revert with 0, 17
    if mem[_1940] - 1 >= _2499:
        revert with 0, 50
    _2963 = mem[(32 * mem[_1940] - 1) + _2467 + ceil32(return_data.size) + 32]
    if mem[(32 * mem[_1940] - 1) + _2467 + ceil32(return_data.size) + 32] < mem[(32 * mem[_1940] - 1) + _2467 + ceil32(return_data.size) + 32] * arg4 / 10000:
        revert with 0, 17
    mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = _1891 - _1859
    mem[mem[64] + 36] = _2963 - (_2915 * arg4 / 10000)
    mem[mem[64] + 68] = 160
    _2995 = mem[_1940]
    mem[mem[64] + 164] = mem[_1940]
    idx = 0
    s = _1940 + 32
    t = mem[64] + 196
    while idx < _2995:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64] + 100] = msg.sender
    mem[mem[64] + 132] = block.timestamp
    require ext_code.size(arg6)
    call arg6.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
         gas gas_remaining wei
        args _1891 - _1859, _2963 - (_2915 * arg4 / 10000), 160, msg.sender, block.timestamp, mem[mem[64] + 164 len (32 * _2995) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[mem[64] + 4] = msg.sender
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _3267 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _3283 = mem[_3267]
    if not mem[_3267]:
        revert with 0, '', 0
    s = 0
    idx = mem[_3267]
    while idx:
        if s == -1:
            revert with 0, 17
        s = s + 1
        idx = idx / 10
        continue 
    if s > test266151307():
        revert with 0, 65
    _3411 = mem[64]
    mem[mem[64]] = s
    mem[64] = mem[64] + ceil32(s) + 32
    if not s:
        t = s
        idx = _3283
        while idx:
            if t < 1:
                revert with 0, 17
            if idx / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                revert with 0, 17
            if idx < 10 * idx / 10:
                revert with 0, 17
            if 48 > -uint8(idx - (10 * idx / 10)) + 255:
                revert with 0, 17
            if t - 1 >= mem[_3411]:
                revert with 0, 50
            mem[t + _3411 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        _3693 = mem[_3411]
        mem[mem[64] + 36] = mem[_3411]
        mem[mem[64] + 68 len ceil32(_3693)] = mem[_3411 + 32 len ceil32(_3693)]
        if ceil32(_3693) > _3693:
            mem[mem[64] + _3693 + 68] = 0
        revert with 0, 32, mem[mem[64] + 36 len ceil32(_3693) + 32]
    mem[_3411 + 32 len s] = call.data[calldata.size len s]
    t = s
    idx = _3283
    while idx:
        if t < 1:
            revert with 0, 17
        if idx / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
            revert with 0, 17
        if idx < 10 * idx / 10:
            revert with 0, 17
        if 48 > -uint8(idx - (10 * idx / 10)) + 255:
            revert with 0, 17
        if t - 1 >= mem[_3411]:
            revert with 0, 50
        mem[t + _3411 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    _3662 = mem[64]
    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = 32
    _3694 = mem[_3411]
    mem[mem[64] + 36] = mem[_3411]
    mem[mem[64] + 68 len ceil32(_3694)] = mem[_3411 + 32 len ceil32(_3694)]
    if ceil32(_3694) <= _3694:
        revert with 0, 32, mem[mem[64] + 36 len ceil32(_3694) + 32]
    mem[mem[64] + _3694 + 68] = 0
    revert with memory
      from mem[64]
       len ceil32(_3694) + _3662 + -mem[64] + 68
}



}
