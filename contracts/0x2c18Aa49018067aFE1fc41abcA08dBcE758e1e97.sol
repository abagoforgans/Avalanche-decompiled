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

function swapExact(address arg1, address arg2, uint256 arg3, uint256 arg4, bool arg5, address arg6) payable {
    require calldata.size - 4 >= 192
    require arg1 == arg1
    require arg2 == arg2
    require arg5 == arg5
    require arg6 == arg6
    if owner != msg.sender:
        revert with 0, 'Must be owner.'
    mem[100] = msg.sender
    mem[132] = this.address
    mem[164] = arg3
    require ext_code.size(arg1)
    call arg1.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg3
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[ceil32(return_data.size) + 100] = arg6
    mem[ceil32(return_data.size) + 132] = arg3
    require ext_code.size(arg1)
    call arg1.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(arg6), arg3
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(2 * ceil32(return_data.size)) + 128] = arg1
    if not arg5:
        mem[(2 * ceil32(return_data.size)) + 160] = arg2
        mem[(2 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[(2 * ceil32(return_data.size)) + 196] = arg3
        mem[(2 * ceil32(return_data.size)) + 228] = arg4
        mem[(2 * ceil32(return_data.size)) + 260] = 160
        mem[(2 * ceil32(return_data.size)) + 356] = 2
        idx = 0
        s = (2 * ceil32(return_data.size)) + 128
        t = (2 * ceil32(return_data.size)) + 388
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(2 * ceil32(return_data.size)) + 292] = msg.sender
        mem[(2 * ceil32(return_data.size)) + 324] = block.timestamp
        require ext_code.size(arg6)
        call arg6.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
             gas gas_remaining wei
            args arg3, arg4, Array(len=2, data=mem[(2 * ceil32(return_data.size)) + 388 len 64]), msg.sender, block.timestamp
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(2 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (4 * ceil32(return_data.size)) + 192
        require return_data.size >= 32
        require mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
        require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 223 < (2 * ceil32(return_data.size)) + return_data.size + 192
        if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192] > test266151307():
            revert with 0, 65
        if (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 1 < 0:
            revert with 0, 65
        require return_data.size >= mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32
    else:
        if 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 == arg1:
            mem[(2 * ceil32(return_data.size)) + 160] = arg2
            mem[(2 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[(2 * ceil32(return_data.size)) + 196] = arg3
            mem[(2 * ceil32(return_data.size)) + 228] = arg4
            mem[(2 * ceil32(return_data.size)) + 260] = 160
            mem[(2 * ceil32(return_data.size)) + 356] = 2
            idx = 0
            s = (2 * ceil32(return_data.size)) + 128
            t = (2 * ceil32(return_data.size)) + 388
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(2 * ceil32(return_data.size)) + 292] = msg.sender
            mem[(2 * ceil32(return_data.size)) + 324] = block.timestamp
            require ext_code.size(arg6)
            call arg6.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args arg3, arg4, Array(len=2, data=mem[(2 * ceil32(return_data.size)) + 388 len 64]), msg.sender, block.timestamp
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(2 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (4 * ceil32(return_data.size)) + 192
            require return_data.size >= 32
            require mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
            require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 223 < (2 * ceil32(return_data.size)) + return_data.size + 192
            if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192] > test266151307():
                revert with 0, 65
            if (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 1 < 0:
                revert with 0, 65
            require return_data.size >= mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32
        else:
            if 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 == arg2:
                mem[(2 * ceil32(return_data.size)) + 160] = arg2
                mem[(2 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(return_data.size)) + 196] = arg3
                mem[(2 * ceil32(return_data.size)) + 228] = arg4
                mem[(2 * ceil32(return_data.size)) + 260] = 160
                mem[(2 * ceil32(return_data.size)) + 356] = 2
                idx = 0
                s = (2 * ceil32(return_data.size)) + 128
                t = (2 * ceil32(return_data.size)) + 388
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(2 * ceil32(return_data.size)) + 292] = msg.sender
                mem[(2 * ceil32(return_data.size)) + 324] = block.timestamp
                require ext_code.size(arg6)
                call arg6.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args arg3, arg4, Array(len=2, data=mem[(2 * ceil32(return_data.size)) + 388 len 64]), msg.sender, block.timestamp
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(2 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (4 * ceil32(return_data.size)) + 192
                require return_data.size >= 32
                require mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 223 < (2 * ceil32(return_data.size)) + return_data.size + 192
                if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192] > test266151307():
                    revert with 0, 65
                if (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 1 < 0:
                    revert with 0, 65
                require return_data.size >= mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32
            else:
                mem[(2 * ceil32(return_data.size)) + 160] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                mem[(2 * ceil32(return_data.size)) + 192] = arg2
                mem[(2 * ceil32(return_data.size)) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(return_data.size)) + 228] = arg3
                mem[(2 * ceil32(return_data.size)) + 260] = arg4
                mem[(2 * ceil32(return_data.size)) + 292] = 160
                mem[(2 * ceil32(return_data.size)) + 388] = 3
                idx = 0
                s = (2 * ceil32(return_data.size)) + 128
                t = (2 * ceil32(return_data.size)) + 420
                while idx < 3:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(2 * ceil32(return_data.size)) + 324] = msg.sender
                mem[(2 * ceil32(return_data.size)) + 356] = block.timestamp
                require ext_code.size(arg6)
                call arg6.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args arg3, arg4, Array(len=3, data=mem[(2 * ceil32(return_data.size)) + 420 len 96]), msg.sender, block.timestamp
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(2 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (4 * ceil32(return_data.size)) + 224
                require return_data.size >= 32
                require mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 255 < (2 * ceil32(return_data.size)) + return_data.size + 224
                if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] > test266151307():
                    revert with 0, 65
                if (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 225 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 1 < 0:
                    revert with 0, 65
                require return_data.size >= mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32
}

function swap(address arg1, address arg2, uint256 arg3, uint256 arg4, bool arg5, address arg6) payable {
    require calldata.size - 4 >= 192
    require arg1 == arg1
    require arg2 == arg2
    require arg5 == arg5
    require arg6 == arg6
    if owner != msg.sender:
        revert with 0, 'Must be owner.'
    mem[100] = msg.sender
    mem[132] = this.address
    mem[164] = arg3
    require ext_code.size(arg1)
    call arg1.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg3
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[ceil32(return_data.size) + 100] = arg6
    mem[ceil32(return_data.size) + 132] = arg3
    require ext_code.size(arg1)
    call arg1.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(arg6), arg3
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not arg5:
        mem[(2 * ceil32(return_data.size)) + 96] = 2
        mem[(2 * ceil32(return_data.size)) + 128] = arg1
        mem[(2 * ceil32(return_data.size)) + 160] = arg2
        mem[(2 * ceil32(return_data.size)) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[(2 * ceil32(return_data.size)) + 196] = arg3
        mem[(2 * ceil32(return_data.size)) + 228] = 64
        mem[(2 * ceil32(return_data.size)) + 260] = 2
        idx = 0
        s = (2 * ceil32(return_data.size)) + 128
        t = (2 * ceil32(return_data.size)) + 292
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(arg6)
        staticcall arg6.getAmountsOut(uint256 rg1, address[] rg2) with:
                gas gas_remaining wei
               args arg3, Array(len=2, data=mem[(2 * ceil32(return_data.size)) + 292 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(2 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (4 * ceil32(return_data.size)) + 192
        require return_data.size >= 32
        _132 = mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32
        require mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
        require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 223 < (2 * ceil32(return_data.size)) + return_data.size + 192
        _136 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
        if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192] > test266151307():
            revert with 0, 65
        if (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 1 < 0:
            revert with 0, 65
        mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193
        mem[(4 * ceil32(return_data.size)) + 192] = _136
        require return_data.size >= _132 + (32 * _136) + 32
        mem[(4 * ceil32(return_data.size)) + 224 len 32 * _136] = mem[(2 * ceil32(return_data.size)) + _132 + 224 len 32 * _136]
        if 1 >= _136:
            revert with 0, 50
        _220 = mem[(4 * ceil32(return_data.size)) + 256]
        if mem[(4 * ceil32(return_data.size)) + 256] and arg4 > -1 / mem[(4 * ceil32(return_data.size)) + 256]:
            revert with 0, 17
        if 1 >= _136:
            revert with 0, 50
        _232 = mem[(4 * ceil32(return_data.size)) + 256]
        if mem[(4 * ceil32(return_data.size)) + 256] < mem[(4 * ceil32(return_data.size)) + 256] * arg4 / 10000:
            revert with 0, 17
        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = arg3
        mem[mem[64] + 36] = _232 - (_220 * arg4 / 10000)
        mem[mem[64] + 68] = 160
        mem[mem[64] + 164] = 2
        idx = 0
        s = (2 * ceil32(return_data.size)) + 128
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
        call arg6.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
             gas gas_remaining wei
            args arg3, _232 - (_220 * arg4 / 10000), Array(len=2, data=mem[mem[64] + 196 len 64]), msg.sender, block.timestamp
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _280 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_280] <= test266151307()
        require _280 + mem[_280] + 31 < _280 + return_data.size
        if mem[_280 + mem[_280]] > test266151307():
            revert with 0, 65
        if _280 + ceil32(return_data.size) + ceil32(32 * mem[_280 + mem[_280]]) + 1 > test266151307() or ceil32(32 * mem[_280 + mem[_280]]) + 1 < 0:
            revert with 0, 65
        require return_data.size >= mem[_280] + (32 * mem[_280 + mem[_280]]) + 32
    else:
        if 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 == arg1:
            mem[(2 * ceil32(return_data.size)) + 96] = 2
            mem[(2 * ceil32(return_data.size)) + 128] = arg1
            mem[(2 * ceil32(return_data.size)) + 160] = arg2
            mem[(2 * ceil32(return_data.size)) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[(2 * ceil32(return_data.size)) + 196] = arg3
            mem[(2 * ceil32(return_data.size)) + 228] = 64
            mem[(2 * ceil32(return_data.size)) + 260] = 2
            idx = 0
            s = (2 * ceil32(return_data.size)) + 128
            t = (2 * ceil32(return_data.size)) + 292
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(arg6)
            staticcall arg6.getAmountsOut(uint256 rg1, address[] rg2) with:
                    gas gas_remaining wei
                   args arg3, Array(len=2, data=mem[(2 * ceil32(return_data.size)) + 292 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(2 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (4 * ceil32(return_data.size)) + 192
            require return_data.size >= 32
            _133 = mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32
            require mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
            require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 223 < (2 * ceil32(return_data.size)) + return_data.size + 192
            _137 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
            if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192] > test266151307():
                revert with 0, 65
            if (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 1 < 0:
                revert with 0, 65
            mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193
            mem[(4 * ceil32(return_data.size)) + 192] = _137
            require return_data.size >= _133 + (32 * _137) + 32
            mem[(4 * ceil32(return_data.size)) + 224 len 32 * _137] = mem[(2 * ceil32(return_data.size)) + _133 + 224 len 32 * _137]
            if 1 >= _137:
                revert with 0, 50
            _221 = mem[(4 * ceil32(return_data.size)) + 256]
            if mem[(4 * ceil32(return_data.size)) + 256] and arg4 > -1 / mem[(4 * ceil32(return_data.size)) + 256]:
                revert with 0, 17
            if 1 >= _137:
                revert with 0, 50
            _233 = mem[(4 * ceil32(return_data.size)) + 256]
            if mem[(4 * ceil32(return_data.size)) + 256] < mem[(4 * ceil32(return_data.size)) + 256] * arg4 / 10000:
                revert with 0, 17
            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = arg3
            mem[mem[64] + 36] = _233 - (_221 * arg4 / 10000)
            mem[mem[64] + 68] = 160
            mem[mem[64] + 164] = 2
            idx = 0
            s = (2 * ceil32(return_data.size)) + 128
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
            call arg6.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args arg3, _233 - (_221 * arg4 / 10000), Array(len=2, data=mem[mem[64] + 196 len 64]), msg.sender, block.timestamp
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _281 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_281] <= test266151307()
            require _281 + mem[_281] + 31 < _281 + return_data.size
            if mem[_281 + mem[_281]] > test266151307():
                revert with 0, 65
            if _281 + ceil32(return_data.size) + ceil32(32 * mem[_281 + mem[_281]]) + 1 > test266151307() or ceil32(32 * mem[_281 + mem[_281]]) + 1 < 0:
                revert with 0, 65
            require return_data.size >= mem[_281] + (32 * mem[_281 + mem[_281]]) + 32
        else:
            if 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 == arg2:
                mem[(2 * ceil32(return_data.size)) + 96] = 2
                mem[(2 * ceil32(return_data.size)) + 128] = arg1
                mem[(2 * ceil32(return_data.size)) + 160] = arg2
                mem[(2 * ceil32(return_data.size)) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(return_data.size)) + 196] = arg3
                mem[(2 * ceil32(return_data.size)) + 228] = 64
                mem[(2 * ceil32(return_data.size)) + 260] = 2
                idx = 0
                s = (2 * ceil32(return_data.size)) + 128
                t = (2 * ceil32(return_data.size)) + 292
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(arg6)
                staticcall arg6.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args arg3, Array(len=2, data=mem[(2 * ceil32(return_data.size)) + 292 len 64])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(2 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (4 * ceil32(return_data.size)) + 192
                require return_data.size >= 32
                _135 = mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32
                require mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 223 < (2 * ceil32(return_data.size)) + return_data.size + 192
                _139 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192] > test266151307():
                    revert with 0, 65
                if (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 1 < 0:
                    revert with 0, 65
                mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193
                mem[(4 * ceil32(return_data.size)) + 192] = _139
                require return_data.size >= _135 + (32 * _139) + 32
                mem[(4 * ceil32(return_data.size)) + 224 len 32 * _139] = mem[(2 * ceil32(return_data.size)) + _135 + 224 len 32 * _139]
                if 1 >= _139:
                    revert with 0, 50
                _223 = mem[(4 * ceil32(return_data.size)) + 256]
                if mem[(4 * ceil32(return_data.size)) + 256] and arg4 > -1 / mem[(4 * ceil32(return_data.size)) + 256]:
                    revert with 0, 17
                if 1 >= _139:
                    revert with 0, 50
                _235 = mem[(4 * ceil32(return_data.size)) + 256]
                if mem[(4 * ceil32(return_data.size)) + 256] < mem[(4 * ceil32(return_data.size)) + 256] * arg4 / 10000:
                    revert with 0, 17
                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = arg3
                mem[mem[64] + 36] = _235 - (_223 * arg4 / 10000)
                mem[mem[64] + 68] = 160
                mem[mem[64] + 164] = 2
                idx = 0
                s = (2 * ceil32(return_data.size)) + 128
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
                call arg6.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args arg3, _235 - (_223 * arg4 / 10000), Array(len=2, data=mem[mem[64] + 196 len 64]), msg.sender, block.timestamp
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _283 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_283] <= test266151307()
                require _283 + mem[_283] + 31 < _283 + return_data.size
                if mem[_283 + mem[_283]] > test266151307():
                    revert with 0, 65
                if _283 + ceil32(return_data.size) + ceil32(32 * mem[_283 + mem[_283]]) + 1 > test266151307() or ceil32(32 * mem[_283 + mem[_283]]) + 1 < 0:
                    revert with 0, 65
                require return_data.size >= mem[_283] + (32 * mem[_283 + mem[_283]]) + 32
            else:
                mem[(2 * ceil32(return_data.size)) + 96] = 3
                mem[(2 * ceil32(return_data.size)) + 128] = arg1
                mem[(2 * ceil32(return_data.size)) + 160] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                mem[(2 * ceil32(return_data.size)) + 192] = arg2
                mem[(2 * ceil32(return_data.size)) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(return_data.size)) + 228] = arg3
                mem[(2 * ceil32(return_data.size)) + 260] = 64
                mem[(2 * ceil32(return_data.size)) + 292] = 3
                idx = 0
                s = (2 * ceil32(return_data.size)) + 128
                t = (2 * ceil32(return_data.size)) + 324
                while idx < 3:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(arg6)
                staticcall arg6.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args arg3, Array(len=3, data=mem[(2 * ceil32(return_data.size)) + 324 len 96])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(2 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (4 * ceil32(return_data.size)) + 224
                require return_data.size >= 32
                _134 = mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32
                require mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 255 < (2 * ceil32(return_data.size)) + return_data.size + 224
                _138 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] > test266151307():
                    revert with 0, 65
                if (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 225 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 1 < 0:
                    revert with 0, 65
                mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 225
                mem[(4 * ceil32(return_data.size)) + 224] = _138
                require return_data.size >= _134 + (32 * _138) + 32
                mem[(4 * ceil32(return_data.size)) + 256 len 32 * _138] = mem[(2 * ceil32(return_data.size)) + _134 + 256 len 32 * _138]
                if 2 >= _138:
                    revert with 0, 50
                _222 = mem[(4 * ceil32(return_data.size)) + 320]
                if mem[(4 * ceil32(return_data.size)) + 320] and arg4 > -1 / mem[(4 * ceil32(return_data.size)) + 320]:
                    revert with 0, 17
                if 2 >= _138:
                    revert with 0, 50
                _234 = mem[(4 * ceil32(return_data.size)) + 320]
                if mem[(4 * ceil32(return_data.size)) + 320] < mem[(4 * ceil32(return_data.size)) + 320] * arg4 / 10000:
                    revert with 0, 17
                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = arg3
                mem[mem[64] + 36] = _234 - (_222 * arg4 / 10000)
                mem[mem[64] + 68] = 160
                mem[mem[64] + 164] = 3
                idx = 0
                s = (2 * ceil32(return_data.size)) + 128
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
                call arg6.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args arg3, _234 - (_222 * arg4 / 10000), Array(len=3, data=mem[mem[64] + 196 len 96]), msg.sender, block.timestamp
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _282 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_282] <= test266151307()
                require _282 + mem[_282] + 31 < _282 + return_data.size
                if mem[_282 + mem[_282]] > test266151307():
                    revert with 0, 65
                if _282 + ceil32(return_data.size) + ceil32(32 * mem[_282 + mem[_282]]) + 1 > test266151307() or ceil32(32 * mem[_282 + mem[_282]]) + 1 < 0:
                    revert with 0, 65
                require return_data.size >= mem[_282] + (32 * mem[_282 + mem[_282]]) + 32
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
    mem[(2 * ceil32(return_data.size)) + 100] = arg6
    mem[(2 * ceil32(return_data.size)) + 132] = arg3
    require ext_code.size(arg1)
    call arg1.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(arg6), arg3
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not arg5:
        mem[(4 * ceil32(return_data.size)) + 96] = 2
        mem[(4 * ceil32(return_data.size)) + 128] = arg1
        mem[(4 * ceil32(return_data.size)) + 160] = arg2
        mem[(4 * ceil32(return_data.size)) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[(4 * ceil32(return_data.size)) + 196] = arg3
        mem[(4 * ceil32(return_data.size)) + 228] = 64
        mem[(4 * ceil32(return_data.size)) + 260] = 2
        idx = 0
        s = (4 * ceil32(return_data.size)) + 128
        t = (4 * ceil32(return_data.size)) + 292
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(arg6)
        staticcall arg6.getAmountsOut(uint256 rg1, address[] rg2) with:
                gas gas_remaining wei
               args arg3, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 292 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(4 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (6 * ceil32(return_data.size)) + 192
        require return_data.size >= 32
        _603 = mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32
        require mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
        require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 223 < (4 * ceil32(return_data.size)) + return_data.size + 192
        _607 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
        if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192] > test266151307():
            revert with 0, 65
        if (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 1 < 0:
            revert with 0, 65
        mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193
        mem[(6 * ceil32(return_data.size)) + 192] = _607
        require return_data.size >= _603 + (32 * _607) + 32
        mem[(6 * ceil32(return_data.size)) + 224 len 32 * _607] = mem[(4 * ceil32(return_data.size)) + _603 + 224 len 32 * _607]
        if 1 >= _607:
            revert with 0, 50
        _1343 = mem[(6 * ceil32(return_data.size)) + 256]
        if mem[(6 * ceil32(return_data.size)) + 256] and arg4 > -1 / mem[(6 * ceil32(return_data.size)) + 256]:
            revert with 0, 17
        if 1 >= _607:
            revert with 0, 50
        _1355 = mem[(6 * ceil32(return_data.size)) + 256]
        if mem[(6 * ceil32(return_data.size)) + 256] < mem[(6 * ceil32(return_data.size)) + 256] * arg4 / 10000:
            revert with 0, 17
        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = arg3
        mem[mem[64] + 36] = _1355 - (_1343 * arg4 / 10000)
        mem[mem[64] + 68] = 160
        mem[mem[64] + 164] = 2
        idx = 0
        s = (4 * ceil32(return_data.size)) + 128
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
        call arg6.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
             gas gas_remaining wei
            args arg3, _1355 - (_1343 * arg4 / 10000), Array(len=2, data=mem[mem[64] + 196 len 64]), msg.sender, block.timestamp
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _2055 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _2059 = mem[_2055]
        require mem[_2055] <= test266151307()
        require _2055 + mem[_2055] + 31 < _2055 + return_data.size
        _2063 = mem[_2055 + mem[_2055]]
        if mem[_2055 + mem[_2055]] > test266151307():
            revert with 0, 65
        if _2055 + ceil32(return_data.size) + ceil32(32 * mem[_2055 + mem[_2055]]) + 1 > test266151307() or ceil32(32 * mem[_2055 + mem[_2055]]) + 1 < 0:
            revert with 0, 65
        mem[64] = _2055 + ceil32(return_data.size) + ceil32(32 * mem[_2055 + mem[_2055]]) + 1
        mem[_2055 + ceil32(return_data.size)] = _2063
        require return_data.size >= _2059 + (32 * _2063) + 32
        mem[_2055 + ceil32(return_data.size) + 32 len 32 * _2063] = mem[_2055 + _2059 + 32 len 32 * _2063]
        mem[mem[64] + 4] = msg.sender
        require ext_code.size(arg2)
        staticcall arg2.0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _2739 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _2743 = mem[_2739]
        if mem[_2739] < ext_call.return_data[0]:
            revert with 0, 17
        if owner != msg.sender:
            revert with 0, 'Must be owner.'
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = this.address
        mem[mem[64] + 68] = _2743 - ext_call.return_data[0]
        require ext_code.size(arg2)
        call arg2.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, this.address, _2743 - ext_call.return_data[0]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _2763 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_2763] == bool(mem[_2763])
        mem[mem[64] + 4] = arg6
        mem[mem[64] + 36] = _2743 - ext_call.return_data[0]
        require ext_code.size(arg2)
        call arg2.approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args address(arg6), _2743 - ext_call.return_data[0]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _2779 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_2779] == bool(mem[_2779])
        if not arg5:
            _2787 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            if 0 >= mem[_2787]:
                revert with 0, 50
            mem[_2787 + 32] = arg2
            if 1 >= mem[_2787]:
                revert with 0, 50
            mem[_2787 + 64] = arg1
            mem[_2787 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_2787 + 100] = _2743 - ext_call.return_data[0]
            mem[_2787 + 132] = 64
            mem[_2787 + 164] = mem[_2787]
            idx = 0
            s = _2787 + 32
            t = _2787 + 196
            while idx < mem[_2787]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(arg6)
            staticcall arg6.mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _2787 + (32 * mem[_2787]) + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3415 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _3431 = mem[_3415]
            require mem[_3415] <= test266151307()
            require _3415 + mem[_3415] + 31 < _3415 + return_data.size
            _3447 = mem[_3415 + mem[_3415]]
            if mem[_3415 + mem[_3415]] > test266151307():
                revert with 0, 65
            if _3415 + ceil32(return_data.size) + ceil32(32 * mem[_3415 + mem[_3415]]) + 1 > test266151307() or ceil32(32 * mem[_3415 + mem[_3415]]) + 1 < 0:
                revert with 0, 65
            mem[64] = _3415 + ceil32(return_data.size) + ceil32(32 * mem[_3415 + mem[_3415]]) + 1
            mem[_3415 + ceil32(return_data.size)] = _3447
            require return_data.size >= _3431 + (32 * _3447) + 32
            mem[_3415 + ceil32(return_data.size) + 32 len 32 * _3447] = mem[_3415 + _3431 + 32 len 32 * _3447]
            if mem[_2787] < 1:
                revert with 0, 17
            if mem[_2787] - 1 >= _3447:
                revert with 0, 50
            _3943 = mem[(32 * mem[_2787] - 1) + _3415 + ceil32(return_data.size) + 32]
            if mem[(32 * mem[_2787] - 1) + _3415 + ceil32(return_data.size) + 32] and arg4 > -1 / mem[(32 * mem[_2787] - 1) + _3415 + ceil32(return_data.size) + 32]:
                revert with 0, 17
            if mem[_2787] < 1:
                revert with 0, 17
            if mem[_2787] - 1 >= _3447:
                revert with 0, 50
            _3991 = mem[(32 * mem[_2787] - 1) + _3415 + ceil32(return_data.size) + 32]
            if mem[(32 * mem[_2787] - 1) + _3415 + ceil32(return_data.size) + 32] < mem[(32 * mem[_2787] - 1) + _3415 + ceil32(return_data.size) + 32] * arg4 / 10000:
                revert with 0, 17
            _4007 = mem[64]
            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _2743 - ext_call.return_data[0]
            mem[mem[64] + 36] = _3991 - (_3943 * arg4 / 10000)
            mem[mem[64] + 68] = 160
            _4023 = mem[_2787]
            mem[mem[64] + 164] = mem[_2787]
            idx = 0
            s = _2787 + 32
            t = mem[64] + 196
            while idx < _4023:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_4007 + 100] = msg.sender
            mem[_4007 + 132] = block.timestamp
            require ext_code.size(arg6)
            call arg6.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _4007 + (32 * _4023) + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _4343 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _4359 = mem[_4343]
            require mem[_4343] <= test266151307()
            require _4343 + mem[_4343] + 31 < _4343 + return_data.size
            _4375 = mem[_4343 + mem[_4343]]
            if mem[_4343 + mem[_4343]] > test266151307():
                revert with 0, 65
            if _4343 + ceil32(return_data.size) + ceil32(32 * mem[_4343 + mem[_4343]]) + 1 > test266151307() or ceil32(32 * mem[_4343 + mem[_4343]]) + 1 < 0:
                revert with 0, 65
            mem[64] = _4343 + ceil32(return_data.size) + ceil32(32 * mem[_4343 + mem[_4343]]) + 1
            mem[_4343 + ceil32(return_data.size)] = _4375
            require return_data.size >= _4359 + (32 * _4375) + 32
            mem[_4343 + ceil32(return_data.size) + 32 len 32 * _4375] = mem[_4343 + _4359 + 32 len 32 * _4375]
            mem[mem[64] + 4] = msg.sender
            require ext_code.size(arg1)
            staticcall arg1.0x70a08231 with:
                    gas gas_remaining wei
                   args msg.sender
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _4631 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _4647 = mem[_4631]
            if not mem[_4631]:
                revert with 0, '', 0
            s = 0
            idx = mem[_4631]
            while idx:
                if s == -1:
                    revert with 0, 17
                s = s + 1
                idx = idx / 10
                continue 
            if s > test266151307():
                revert with 0, 65
            _4775 = mem[64]
            mem[mem[64]] = s
            mem[64] = mem[64] + ceil32(s) + 32
            if not s:
                t = s
                idx = _4647
                while idx:
                    if t < 1:
                        revert with 0, 17
                    if idx / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                        revert with 0, 17
                    if idx < 10 * idx / 10:
                        revert with 0, 17
                    if 48 > -uint8(idx - (10 * idx / 10)) + 255:
                        revert with 0, 17
                    if t - 1 >= mem[_4775]:
                        revert with 0, 50
                    mem[t + _4775 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                _5015 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                _5047 = mem[_4775]
                mem[mem[64] + 36] = mem[_4775]
                mem[mem[64] + 68 len ceil32(_5047)] = mem[_4775 + 32 len ceil32(_5047)]
                if ceil32(_5047) <= _5047:
                    revert with 0, 32, mem[mem[64] + 36 len ceil32(_5047) + 32]
                mem[mem[64] + _5047 + 68] = 0
                revert with memory
                  from mem[64]
                   len ceil32(_5047) + _5015 + -mem[64] + 68
            mem[_4775 + 32 len s] = call.data[calldata.size len s]
            t = s
            idx = _4647
            while idx:
                if t < 1:
                    revert with 0, 17
                if idx / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                    revert with 0, 17
                if idx < 10 * idx / 10:
                    revert with 0, 17
                if 48 > -uint8(idx - (10 * idx / 10)) + 255:
                    revert with 0, 17
                if t - 1 >= mem[_4775]:
                    revert with 0, 50
                mem[t + _4775 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            _5016 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _5048 = mem[_4775]
            mem[mem[64] + 36] = mem[_4775]
            mem[mem[64] + 68 len ceil32(_5048)] = mem[_4775 + 32 len ceil32(_5048)]
            if ceil32(_5048) <= _5048:
                revert with 0, 32, mem[mem[64] + 36 len ceil32(_5048) + 32]
            mem[mem[64] + _5048 + 68] = 0
            revert with memory
              from mem[64]
               len ceil32(_5048) + _5016 + -mem[64] + 68
        if 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 == arg2:
            _2796 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            if 0 >= mem[_2796]:
                revert with 0, 50
            mem[_2796 + 32] = arg2
            if 1 >= mem[_2796]:
                revert with 0, 50
            mem[_2796 + 64] = arg1
            mem[_2796 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_2796 + 100] = _2743 - ext_call.return_data[0]
            mem[_2796 + 132] = 64
            mem[_2796 + 164] = mem[_2796]
            idx = 0
            s = _2796 + 32
            t = _2796 + 196
            while idx < mem[_2796]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(arg6)
            staticcall arg6.mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _2796 + (32 * mem[_2796]) + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3416 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _3432 = mem[_3416]
            require mem[_3416] <= test266151307()
            require _3416 + mem[_3416] + 31 < _3416 + return_data.size
            _3448 = mem[_3416 + mem[_3416]]
            if mem[_3416 + mem[_3416]] > test266151307():
                revert with 0, 65
            if _3416 + ceil32(return_data.size) + ceil32(32 * mem[_3416 + mem[_3416]]) + 1 > test266151307() or ceil32(32 * mem[_3416 + mem[_3416]]) + 1 < 0:
                revert with 0, 65
            mem[64] = _3416 + ceil32(return_data.size) + ceil32(32 * mem[_3416 + mem[_3416]]) + 1
            mem[_3416 + ceil32(return_data.size)] = _3448
            require return_data.size >= _3432 + (32 * _3448) + 32
            mem[_3416 + ceil32(return_data.size) + 32 len 32 * _3448] = mem[_3416 + _3432 + 32 len 32 * _3448]
            if mem[_2796] < 1:
                revert with 0, 17
            if mem[_2796] - 1 >= _3448:
                revert with 0, 50
            _3944 = mem[(32 * mem[_2796] - 1) + _3416 + ceil32(return_data.size) + 32]
            if mem[(32 * mem[_2796] - 1) + _3416 + ceil32(return_data.size) + 32] and arg4 > -1 / mem[(32 * mem[_2796] - 1) + _3416 + ceil32(return_data.size) + 32]:
                revert with 0, 17
            if mem[_2796] < 1:
                revert with 0, 17
            if mem[_2796] - 1 >= _3448:
                revert with 0, 50
            _3992 = mem[(32 * mem[_2796] - 1) + _3416 + ceil32(return_data.size) + 32]
            if mem[(32 * mem[_2796] - 1) + _3416 + ceil32(return_data.size) + 32] < mem[(32 * mem[_2796] - 1) + _3416 + ceil32(return_data.size) + 32] * arg4 / 10000:
                revert with 0, 17
            _4008 = mem[64]
            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _2743 - ext_call.return_data[0]
            mem[mem[64] + 36] = _3992 - (_3944 * arg4 / 10000)
            mem[mem[64] + 68] = 160
            _4024 = mem[_2796]
            mem[mem[64] + 164] = mem[_2796]
            idx = 0
            s = _2796 + 32
            t = mem[64] + 196
            while idx < _4024:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_4008 + 100] = msg.sender
            mem[_4008 + 132] = block.timestamp
            require ext_code.size(arg6)
            call arg6.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _4008 + (32 * _4024) + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _4344 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _4360 = mem[_4344]
            require mem[_4344] <= test266151307()
            require _4344 + mem[_4344] + 31 < _4344 + return_data.size
            _4376 = mem[_4344 + mem[_4344]]
            if mem[_4344 + mem[_4344]] > test266151307():
                revert with 0, 65
            if _4344 + ceil32(return_data.size) + ceil32(32 * mem[_4344 + mem[_4344]]) + 1 > test266151307() or ceil32(32 * mem[_4344 + mem[_4344]]) + 1 < 0:
                revert with 0, 65
            mem[64] = _4344 + ceil32(return_data.size) + ceil32(32 * mem[_4344 + mem[_4344]]) + 1
            mem[_4344 + ceil32(return_data.size)] = _4376
            require return_data.size >= _4360 + (32 * _4376) + 32
            mem[_4344 + ceil32(return_data.size) + 32 len 32 * _4376] = mem[_4344 + _4360 + 32 len 32 * _4376]
            mem[mem[64] + 4] = msg.sender
            require ext_code.size(arg1)
            staticcall arg1.0x70a08231 with:
                    gas gas_remaining wei
                   args msg.sender
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _4632 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _4648 = mem[_4632]
            if not mem[_4632]:
                revert with 0, '', 0
            s = 0
            idx = mem[_4632]
            while idx:
                if s == -1:
                    revert with 0, 17
                s = s + 1
                idx = idx / 10
                continue 
            if s > test266151307():
                revert with 0, 65
            _4776 = mem[64]
            mem[mem[64]] = s
            mem[64] = mem[64] + ceil32(s) + 32
            if not s:
                t = s
                idx = _4648
                while idx:
                    if t < 1:
                        revert with 0, 17
                    if idx / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                        revert with 0, 17
                    if idx < 10 * idx / 10:
                        revert with 0, 17
                    if 48 > -uint8(idx - (10 * idx / 10)) + 255:
                        revert with 0, 17
                    if t - 1 >= mem[_4776]:
                        revert with 0, 50
                    mem[t + _4776 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                _5017 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                _5049 = mem[_4776]
                mem[mem[64] + 36] = mem[_4776]
                mem[mem[64] + 68 len ceil32(_5049)] = mem[_4776 + 32 len ceil32(_5049)]
                if ceil32(_5049) <= _5049:
                    revert with 0, 32, mem[mem[64] + 36 len ceil32(_5049) + 32]
                mem[mem[64] + _5049 + 68] = 0
                revert with memory
                  from mem[64]
                   len ceil32(_5049) + _5017 + -mem[64] + 68
            mem[_4776 + 32 len s] = call.data[calldata.size len s]
            t = s
            idx = _4648
            while idx:
                if t < 1:
                    revert with 0, 17
                if idx / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                    revert with 0, 17
                if idx < 10 * idx / 10:
                    revert with 0, 17
                if 48 > -uint8(idx - (10 * idx / 10)) + 255:
                    revert with 0, 17
                if t - 1 >= mem[_4776]:
                    revert with 0, 50
                mem[t + _4776 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            _5018 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _5050 = mem[_4776]
            mem[mem[64] + 36] = mem[_4776]
            mem[mem[64] + 68 len ceil32(_5050)] = mem[_4776 + 32 len ceil32(_5050)]
            if ceil32(_5050) <= _5050:
                revert with 0, 32, mem[mem[64] + 36 len ceil32(_5050) + 32]
            mem[mem[64] + _5050 + 68] = 0
            revert with memory
              from mem[64]
               len ceil32(_5050) + _5018 + -mem[64] + 68
        if 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 == arg1:
            _2810 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            if 0 >= mem[_2810]:
                revert with 0, 50
            mem[_2810 + 32] = arg2
            if 1 >= mem[_2810]:
                revert with 0, 50
            mem[_2810 + 64] = arg1
            mem[_2810 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_2810 + 100] = _2743 - ext_call.return_data[0]
            mem[_2810 + 132] = 64
            mem[_2810 + 164] = mem[_2810]
            idx = 0
            s = _2810 + 32
            t = _2810 + 196
            while idx < mem[_2810]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(arg6)
            staticcall arg6.mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _2810 + (32 * mem[_2810]) + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3418 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _3434 = mem[_3418]
            require mem[_3418] <= test266151307()
            require _3418 + mem[_3418] + 31 < _3418 + return_data.size
            _3450 = mem[_3418 + mem[_3418]]
            if mem[_3418 + mem[_3418]] > test266151307():
                revert with 0, 65
            if _3418 + ceil32(return_data.size) + ceil32(32 * mem[_3418 + mem[_3418]]) + 1 > test266151307() or ceil32(32 * mem[_3418 + mem[_3418]]) + 1 < 0:
                revert with 0, 65
            mem[64] = _3418 + ceil32(return_data.size) + ceil32(32 * mem[_3418 + mem[_3418]]) + 1
            mem[_3418 + ceil32(return_data.size)] = _3450
            require return_data.size >= _3434 + (32 * _3450) + 32
            mem[_3418 + ceil32(return_data.size) + 32 len 32 * _3450] = mem[_3418 + _3434 + 32 len 32 * _3450]
            if mem[_2810] < 1:
                revert with 0, 17
            if mem[_2810] - 1 >= _3450:
                revert with 0, 50
            _3946 = mem[(32 * mem[_2810] - 1) + _3418 + ceil32(return_data.size) + 32]
            if mem[(32 * mem[_2810] - 1) + _3418 + ceil32(return_data.size) + 32] and arg4 > -1 / mem[(32 * mem[_2810] - 1) + _3418 + ceil32(return_data.size) + 32]:
                revert with 0, 17
            if mem[_2810] < 1:
                revert with 0, 17
            if mem[_2810] - 1 >= _3450:
                revert with 0, 50
            _3994 = mem[(32 * mem[_2810] - 1) + _3418 + ceil32(return_data.size) + 32]
            if mem[(32 * mem[_2810] - 1) + _3418 + ceil32(return_data.size) + 32] < mem[(32 * mem[_2810] - 1) + _3418 + ceil32(return_data.size) + 32] * arg4 / 10000:
                revert with 0, 17
            _4010 = mem[64]
            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _2743 - ext_call.return_data[0]
            mem[mem[64] + 36] = _3994 - (_3946 * arg4 / 10000)
            mem[mem[64] + 68] = 160
            _4026 = mem[_2810]
            mem[mem[64] + 164] = mem[_2810]
            idx = 0
            s = _2810 + 32
            t = mem[64] + 196
            while idx < _4026:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_4010 + 100] = msg.sender
            mem[_4010 + 132] = block.timestamp
            require ext_code.size(arg6)
            call arg6.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _4010 + (32 * _4026) + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _4346 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _4362 = mem[_4346]
            require mem[_4346] <= test266151307()
            require _4346 + mem[_4346] + 31 < _4346 + return_data.size
            _4378 = mem[_4346 + mem[_4346]]
            if mem[_4346 + mem[_4346]] > test266151307():
                revert with 0, 65
            if _4346 + ceil32(return_data.size) + ceil32(32 * mem[_4346 + mem[_4346]]) + 1 > test266151307() or ceil32(32 * mem[_4346 + mem[_4346]]) + 1 < 0:
                revert with 0, 65
            mem[64] = _4346 + ceil32(return_data.size) + ceil32(32 * mem[_4346 + mem[_4346]]) + 1
            mem[_4346 + ceil32(return_data.size)] = _4378
            require return_data.size >= _4362 + (32 * _4378) + 32
            mem[_4346 + ceil32(return_data.size) + 32 len 32 * _4378] = mem[_4346 + _4362 + 32 len 32 * _4378]
            mem[mem[64] + 4] = msg.sender
            require ext_code.size(arg1)
            staticcall arg1.0x70a08231 with:
                    gas gas_remaining wei
                   args msg.sender
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _4634 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _4650 = mem[_4634]
            if not mem[_4634]:
                revert with 0, '', 0
            s = 0
            idx = mem[_4634]
            while idx:
                if s == -1:
                    revert with 0, 17
                s = s + 1
                idx = idx / 10
                continue 
            if s > test266151307():
                revert with 0, 65
            _4778 = mem[64]
            mem[mem[64]] = s
            mem[64] = mem[64] + ceil32(s) + 32
            if not s:
                t = s
                idx = _4650
                while idx:
                    if t < 1:
                        revert with 0, 17
                    if idx / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                        revert with 0, 17
                    if idx < 10 * idx / 10:
                        revert with 0, 17
                    if 48 > -uint8(idx - (10 * idx / 10)) + 255:
                        revert with 0, 17
                    if t - 1 >= mem[_4778]:
                        revert with 0, 50
                    mem[t + _4778 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                _5021 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                _5053 = mem[_4778]
                mem[mem[64] + 36] = mem[_4778]
                mem[mem[64] + 68 len ceil32(_5053)] = mem[_4778 + 32 len ceil32(_5053)]
                if ceil32(_5053) <= _5053:
                    revert with 0, 32, mem[mem[64] + 36 len ceil32(_5053) + 32]
                mem[mem[64] + _5053 + 68] = 0
                revert with memory
                  from mem[64]
                   len ceil32(_5053) + _5021 + -mem[64] + 68
            mem[_4778 + 32 len s] = call.data[calldata.size len s]
            t = s
            idx = _4650
            while idx:
                if t < 1:
                    revert with 0, 17
                if idx / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                    revert with 0, 17
                if idx < 10 * idx / 10:
                    revert with 0, 17
                if 48 > -uint8(idx - (10 * idx / 10)) + 255:
                    revert with 0, 17
                if t - 1 >= mem[_4778]:
                    revert with 0, 50
                mem[t + _4778 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            _5022 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _5054 = mem[_4778]
            mem[mem[64] + 36] = mem[_4778]
            mem[mem[64] + 68 len ceil32(_5054)] = mem[_4778 + 32 len ceil32(_5054)]
            if ceil32(_5054) <= _5054:
                revert with 0, 32, mem[mem[64] + 36 len ceil32(_5054) + 32]
            mem[mem[64] + _5054 + 68] = 0
            revert with memory
              from mem[64]
               len ceil32(_5054) + _5022 + -mem[64] + 68
        _2808 = mem[64]
        mem[mem[64]] = 3
        mem[64] = mem[64] + 128
        if 0 >= mem[_2808]:
            revert with 0, 50
        mem[_2808 + 32] = arg2
        if 1 >= mem[_2808]:
            revert with 0, 50
        mem[_2808 + 64] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
        if 2 >= mem[_2808]:
            revert with 0, 50
        mem[_2808 + 96] = arg1
        mem[_2808 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[_2808 + 132] = _2743 - ext_call.return_data[0]
        mem[_2808 + 164] = 64
        mem[_2808 + 196] = mem[_2808]
        idx = 0
        s = _2808 + 32
        t = _2808 + 228
        while idx < mem[_2808]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(arg6)
        staticcall arg6.mem[mem[64] len 4] with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len _2808 + (32 * mem[_2808]) + -mem[64] + 224]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _3417 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _3433 = mem[_3417]
        require mem[_3417] <= test266151307()
        require _3417 + mem[_3417] + 31 < _3417 + return_data.size
        _3449 = mem[_3417 + mem[_3417]]
        if mem[_3417 + mem[_3417]] > test266151307():
            revert with 0, 65
        if _3417 + ceil32(return_data.size) + ceil32(32 * mem[_3417 + mem[_3417]]) + 1 > test266151307() or ceil32(32 * mem[_3417 + mem[_3417]]) + 1 < 0:
            revert with 0, 65
        mem[64] = _3417 + ceil32(return_data.size) + ceil32(32 * mem[_3417 + mem[_3417]]) + 1
        mem[_3417 + ceil32(return_data.size)] = _3449
        require return_data.size >= _3433 + (32 * _3449) + 32
        mem[_3417 + ceil32(return_data.size) + 32 len 32 * _3449] = mem[_3417 + _3433 + 32 len 32 * _3449]
        if mem[_2808] < 1:
            revert with 0, 17
        if mem[_2808] - 1 >= _3449:
            revert with 0, 50
        _3945 = mem[(32 * mem[_2808] - 1) + _3417 + ceil32(return_data.size) + 32]
        if mem[(32 * mem[_2808] - 1) + _3417 + ceil32(return_data.size) + 32] and arg4 > -1 / mem[(32 * mem[_2808] - 1) + _3417 + ceil32(return_data.size) + 32]:
            revert with 0, 17
        if mem[_2808] < 1:
            revert with 0, 17
        if mem[_2808] - 1 >= _3449:
            revert with 0, 50
        _3993 = mem[(32 * mem[_2808] - 1) + _3417 + ceil32(return_data.size) + 32]
        if mem[(32 * mem[_2808] - 1) + _3417 + ceil32(return_data.size) + 32] < mem[(32 * mem[_2808] - 1) + _3417 + ceil32(return_data.size) + 32] * arg4 / 10000:
            revert with 0, 17
        _4009 = mem[64]
        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _2743 - ext_call.return_data[0]
        mem[mem[64] + 36] = _3993 - (_3945 * arg4 / 10000)
        mem[mem[64] + 68] = 160
        _4025 = mem[_2808]
        mem[mem[64] + 164] = mem[_2808]
        idx = 0
        s = _2808 + 32
        t = mem[64] + 196
        while idx < _4025:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_4009 + 100] = msg.sender
        mem[_4009 + 132] = block.timestamp
        require ext_code.size(arg6)
        call arg6.mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _4009 + (32 * _4025) + -mem[64] + 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _4345 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _4361 = mem[_4345]
        require mem[_4345] <= test266151307()
        require _4345 + mem[_4345] + 31 < _4345 + return_data.size
        _4377 = mem[_4345 + mem[_4345]]
        if mem[_4345 + mem[_4345]] > test266151307():
            revert with 0, 65
        if _4345 + ceil32(return_data.size) + ceil32(32 * mem[_4345 + mem[_4345]]) + 1 > test266151307() or ceil32(32 * mem[_4345 + mem[_4345]]) + 1 < 0:
            revert with 0, 65
        mem[64] = _4345 + ceil32(return_data.size) + ceil32(32 * mem[_4345 + mem[_4345]]) + 1
        mem[_4345 + ceil32(return_data.size)] = _4377
        require return_data.size >= _4361 + (32 * _4377) + 32
        mem[_4345 + ceil32(return_data.size) + 32 len 32 * _4377] = mem[_4345 + _4361 + 32 len 32 * _4377]
        mem[mem[64] + 4] = msg.sender
        require ext_code.size(arg1)
        staticcall arg1.0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _4633 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _4649 = mem[_4633]
        if not mem[_4633]:
            revert with 0, '', 0
        s = 0
        idx = mem[_4633]
        while idx:
            if s == -1:
                revert with 0, 17
            s = s + 1
            idx = idx / 10
            continue 
        if s > test266151307():
            revert with 0, 65
        _4777 = mem[64]
        mem[mem[64]] = s
        mem[64] = mem[64] + ceil32(s) + 32
        if not s:
            t = s
            idx = _4649
            while idx:
                if t < 1:
                    revert with 0, 17
                if idx / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                    revert with 0, 17
                if idx < 10 * idx / 10:
                    revert with 0, 17
                if 48 > -uint8(idx - (10 * idx / 10)) + 255:
                    revert with 0, 17
                if t - 1 >= mem[_4777]:
                    revert with 0, 50
                mem[t + _4777 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _5051 = mem[_4777]
            mem[mem[64] + 36] = mem[_4777]
            mem[mem[64] + 68 len ceil32(_5051)] = mem[_4777 + 32 len ceil32(_5051)]
            if ceil32(_5051) > _5051:
                mem[mem[64] + _5051 + 68] = 0
            revert with 0, 32, mem[mem[64] + 36 len ceil32(_5051) + 32]
        mem[_4777 + 32 len s] = call.data[calldata.size len s]
        t = s
        idx = _4649
        while idx:
            if t < 1:
                revert with 0, 17
            if idx / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                revert with 0, 17
            if idx < 10 * idx / 10:
                revert with 0, 17
            if 48 > -uint8(idx - (10 * idx / 10)) + 255:
                revert with 0, 17
            if t - 1 >= mem[_4777]:
                revert with 0, 50
            mem[t + _4777 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        _5020 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        _5052 = mem[_4777]
        mem[mem[64] + 36] = mem[_4777]
        mem[mem[64] + 68 len ceil32(_5052)] = mem[_4777 + 32 len ceil32(_5052)]
        if ceil32(_5052) <= _5052:
            revert with 0, 32, mem[mem[64] + 36 len ceil32(_5052) + 32]
        mem[mem[64] + _5052 + 68] = 0
        revert with memory
          from mem[64]
           len ceil32(_5052) + _5020 + -mem[64] + 68
    if 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 == arg1:
        mem[(4 * ceil32(return_data.size)) + 96] = 2
        mem[(4 * ceil32(return_data.size)) + 128] = arg1
        mem[(4 * ceil32(return_data.size)) + 160] = arg2
        mem[(4 * ceil32(return_data.size)) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[(4 * ceil32(return_data.size)) + 196] = arg3
        mem[(4 * ceil32(return_data.size)) + 228] = 64
        mem[(4 * ceil32(return_data.size)) + 260] = 2
        idx = 0
        s = (4 * ceil32(return_data.size)) + 128
        t = (4 * ceil32(return_data.size)) + 292
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(arg6)
        staticcall arg6.getAmountsOut(uint256 rg1, address[] rg2) with:
                gas gas_remaining wei
               args arg3, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 292 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(4 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (6 * ceil32(return_data.size)) + 192
        require return_data.size >= 32
        _604 = mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32
        require mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
        require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 223 < (4 * ceil32(return_data.size)) + return_data.size + 192
        _608 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
        if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192] > test266151307():
            revert with 0, 65
        if (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 1 < 0:
            revert with 0, 65
        mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193
        mem[(6 * ceil32(return_data.size)) + 192] = _608
        require return_data.size >= _604 + (32 * _608) + 32
        mem[(6 * ceil32(return_data.size)) + 224 len 32 * _608] = mem[(4 * ceil32(return_data.size)) + _604 + 224 len 32 * _608]
        if 1 >= _608:
            revert with 0, 50
        _1344 = mem[(6 * ceil32(return_data.size)) + 256]
        if mem[(6 * ceil32(return_data.size)) + 256] and arg4 > -1 / mem[(6 * ceil32(return_data.size)) + 256]:
            revert with 0, 17
        if 1 >= _608:
            revert with 0, 50
        _1356 = mem[(6 * ceil32(return_data.size)) + 256]
        if mem[(6 * ceil32(return_data.size)) + 256] < mem[(6 * ceil32(return_data.size)) + 256] * arg4 / 10000:
            revert with 0, 17
        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = arg3
        mem[mem[64] + 36] = _1356 - (_1344 * arg4 / 10000)
        mem[mem[64] + 68] = 160
        mem[mem[64] + 164] = 2
        idx = 0
        s = (4 * ceil32(return_data.size)) + 128
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
        call arg6.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
             gas gas_remaining wei
            args arg3, _1356 - (_1344 * arg4 / 10000), Array(len=2, data=mem[mem[64] + 196 len 64]), msg.sender, block.timestamp
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _2056 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _2060 = mem[_2056]
        require mem[_2056] <= test266151307()
        require _2056 + mem[_2056] + 31 < _2056 + return_data.size
        _2064 = mem[_2056 + mem[_2056]]
        if mem[_2056 + mem[_2056]] > test266151307():
            revert with 0, 65
        if _2056 + ceil32(return_data.size) + ceil32(32 * mem[_2056 + mem[_2056]]) + 1 > test266151307() or ceil32(32 * mem[_2056 + mem[_2056]]) + 1 < 0:
            revert with 0, 65
        mem[64] = _2056 + ceil32(return_data.size) + ceil32(32 * mem[_2056 + mem[_2056]]) + 1
        mem[_2056 + ceil32(return_data.size)] = _2064
        require return_data.size >= _2060 + (32 * _2064) + 32
        mem[_2056 + ceil32(return_data.size) + 32 len 32 * _2064] = mem[_2056 + _2060 + 32 len 32 * _2064]
        mem[mem[64] + 4] = msg.sender
        require ext_code.size(arg2)
        staticcall arg2.0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _2740 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _2744 = mem[_2740]
        if mem[_2740] < ext_call.return_data[0]:
            revert with 0, 17
        if owner != msg.sender:
            revert with 0, 'Must be owner.'
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = this.address
        mem[mem[64] + 68] = _2744 - ext_call.return_data[0]
        require ext_code.size(arg2)
        call arg2.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, this.address, _2744 - ext_call.return_data[0]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _2764 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_2764] == bool(mem[_2764])
        mem[mem[64] + 4] = arg6
        mem[mem[64] + 36] = _2744 - ext_call.return_data[0]
        require ext_code.size(arg2)
        call arg2.approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args address(arg6), _2744 - ext_call.return_data[0]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _2780 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_2780] == bool(mem[_2780])
        if not arg5:
            _2789 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            if 0 >= mem[_2789]:
                revert with 0, 50
            mem[_2789 + 32] = arg2
            if 1 >= mem[_2789]:
                revert with 0, 50
            mem[_2789 + 64] = arg1
            mem[_2789 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_2789 + 100] = _2744 - ext_call.return_data[0]
            mem[_2789 + 132] = 64
            mem[_2789 + 164] = mem[_2789]
            idx = 0
            s = _2789 + 32
            t = _2789 + 196
            while idx < mem[_2789]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(arg6)
            staticcall arg6.mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _2789 + (32 * mem[_2789]) + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3419 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _3435 = mem[_3419]
            require mem[_3419] <= test266151307()
            require _3419 + mem[_3419] + 31 < _3419 + return_data.size
            _3451 = mem[_3419 + mem[_3419]]
            if mem[_3419 + mem[_3419]] > test266151307():
                revert with 0, 65
            if _3419 + ceil32(return_data.size) + ceil32(32 * mem[_3419 + mem[_3419]]) + 1 > test266151307() or ceil32(32 * mem[_3419 + mem[_3419]]) + 1 < 0:
                revert with 0, 65
            mem[64] = _3419 + ceil32(return_data.size) + ceil32(32 * mem[_3419 + mem[_3419]]) + 1
            mem[_3419 + ceil32(return_data.size)] = _3451
            require return_data.size >= _3435 + (32 * _3451) + 32
            mem[_3419 + ceil32(return_data.size) + 32 len 32 * _3451] = mem[_3419 + _3435 + 32 len 32 * _3451]
            if mem[_2789] < 1:
                revert with 0, 17
            if mem[_2789] - 1 >= _3451:
                revert with 0, 50
            _3947 = mem[(32 * mem[_2789] - 1) + _3419 + ceil32(return_data.size) + 32]
            if mem[(32 * mem[_2789] - 1) + _3419 + ceil32(return_data.size) + 32] and arg4 > -1 / mem[(32 * mem[_2789] - 1) + _3419 + ceil32(return_data.size) + 32]:
                revert with 0, 17
            if mem[_2789] < 1:
                revert with 0, 17
            if mem[_2789] - 1 >= _3451:
                revert with 0, 50
            _3995 = mem[(32 * mem[_2789] - 1) + _3419 + ceil32(return_data.size) + 32]
            if mem[(32 * mem[_2789] - 1) + _3419 + ceil32(return_data.size) + 32] < mem[(32 * mem[_2789] - 1) + _3419 + ceil32(return_data.size) + 32] * arg4 / 10000:
                revert with 0, 17
            _4011 = mem[64]
            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _2744 - ext_call.return_data[0]
            mem[mem[64] + 36] = _3995 - (_3947 * arg4 / 10000)
            mem[mem[64] + 68] = 160
            _4027 = mem[_2789]
            mem[mem[64] + 164] = mem[_2789]
            idx = 0
            s = _2789 + 32
            t = mem[64] + 196
            while idx < _4027:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_4011 + 100] = msg.sender
            mem[_4011 + 132] = block.timestamp
            require ext_code.size(arg6)
            call arg6.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _4011 + (32 * _4027) + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _4347 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _4363 = mem[_4347]
            require mem[_4347] <= test266151307()
            require _4347 + mem[_4347] + 31 < _4347 + return_data.size
            _4379 = mem[_4347 + mem[_4347]]
            if mem[_4347 + mem[_4347]] > test266151307():
                revert with 0, 65
            if _4347 + ceil32(return_data.size) + ceil32(32 * mem[_4347 + mem[_4347]]) + 1 > test266151307() or ceil32(32 * mem[_4347 + mem[_4347]]) + 1 < 0:
                revert with 0, 65
            mem[64] = _4347 + ceil32(return_data.size) + ceil32(32 * mem[_4347 + mem[_4347]]) + 1
            mem[_4347 + ceil32(return_data.size)] = _4379
            require return_data.size >= _4363 + (32 * _4379) + 32
            mem[_4347 + ceil32(return_data.size) + 32 len 32 * _4379] = mem[_4347 + _4363 + 32 len 32 * _4379]
            mem[mem[64] + 4] = msg.sender
            require ext_code.size(arg1)
            staticcall arg1.0x70a08231 with:
                    gas gas_remaining wei
                   args msg.sender
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _4635 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _4651 = mem[_4635]
            if not mem[_4635]:
                revert with 0, '', 0
            s = 0
            idx = mem[_4635]
            while idx:
                if s == -1:
                    revert with 0, 17
                s = s + 1
                idx = idx / 10
                continue 
            if s > test266151307():
                revert with 0, 65
            _4779 = mem[64]
            mem[mem[64]] = s
            mem[64] = mem[64] + ceil32(s) + 32
            if not s:
                t = s
                idx = _4651
                while idx:
                    if t < 1:
                        revert with 0, 17
                    if idx / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                        revert with 0, 17
                    if idx < 10 * idx / 10:
                        revert with 0, 17
                    if 48 > -uint8(idx - (10 * idx / 10)) + 255:
                        revert with 0, 17
                    if t - 1 >= mem[_4779]:
                        revert with 0, 50
                    mem[t + _4779 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                _5023 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                _5055 = mem[_4779]
                mem[mem[64] + 36] = mem[_4779]
                mem[mem[64] + 68 len ceil32(_5055)] = mem[_4779 + 32 len ceil32(_5055)]
                if ceil32(_5055) <= _5055:
                    revert with 0, 32, mem[mem[64] + 36 len ceil32(_5055) + 32]
                mem[mem[64] + _5055 + 68] = 0
                revert with memory
                  from mem[64]
                   len ceil32(_5055) + _5023 + -mem[64] + 68
            mem[_4779 + 32 len s] = call.data[calldata.size len s]
            t = s
            idx = _4651
            while idx:
                if t < 1:
                    revert with 0, 17
                if idx / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                    revert with 0, 17
                if idx < 10 * idx / 10:
                    revert with 0, 17
                if 48 > -uint8(idx - (10 * idx / 10)) + 255:
                    revert with 0, 17
                if t - 1 >= mem[_4779]:
                    revert with 0, 50
                mem[t + _4779 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            _5024 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _5056 = mem[_4779]
            mem[mem[64] + 36] = mem[_4779]
            mem[mem[64] + 68 len ceil32(_5056)] = mem[_4779 + 32 len ceil32(_5056)]
            if ceil32(_5056) <= _5056:
                revert with 0, 32, mem[mem[64] + 36 len ceil32(_5056) + 32]
            mem[mem[64] + _5056 + 68] = 0
            revert with memory
              from mem[64]
               len ceil32(_5056) + _5024 + -mem[64] + 68
        if 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 == arg2:
            _2799 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            if 0 >= mem[_2799]:
                revert with 0, 50
            mem[_2799 + 32] = arg2
            if 1 >= mem[_2799]:
                revert with 0, 50
            mem[_2799 + 64] = arg1
            mem[_2799 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_2799 + 100] = _2744 - ext_call.return_data[0]
            mem[_2799 + 132] = 64
            mem[_2799 + 164] = mem[_2799]
            idx = 0
            s = _2799 + 32
            t = _2799 + 196
            while idx < mem[_2799]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(arg6)
            staticcall arg6.mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _2799 + (32 * mem[_2799]) + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3420 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _3436 = mem[_3420]
            require mem[_3420] <= test266151307()
            require _3420 + mem[_3420] + 31 < _3420 + return_data.size
            _3452 = mem[_3420 + mem[_3420]]
            if mem[_3420 + mem[_3420]] > test266151307():
                revert with 0, 65
            if _3420 + ceil32(return_data.size) + ceil32(32 * mem[_3420 + mem[_3420]]) + 1 > test266151307() or ceil32(32 * mem[_3420 + mem[_3420]]) + 1 < 0:
                revert with 0, 65
            mem[64] = _3420 + ceil32(return_data.size) + ceil32(32 * mem[_3420 + mem[_3420]]) + 1
            mem[_3420 + ceil32(return_data.size)] = _3452
            require return_data.size >= _3436 + (32 * _3452) + 32
            mem[_3420 + ceil32(return_data.size) + 32 len 32 * _3452] = mem[_3420 + _3436 + 32 len 32 * _3452]
            if mem[_2799] < 1:
                revert with 0, 17
            if mem[_2799] - 1 >= _3452:
                revert with 0, 50
            _3948 = mem[(32 * mem[_2799] - 1) + _3420 + ceil32(return_data.size) + 32]
            if mem[(32 * mem[_2799] - 1) + _3420 + ceil32(return_data.size) + 32] and arg4 > -1 / mem[(32 * mem[_2799] - 1) + _3420 + ceil32(return_data.size) + 32]:
                revert with 0, 17
            if mem[_2799] < 1:
                revert with 0, 17
            if mem[_2799] - 1 >= _3452:
                revert with 0, 50
            _3996 = mem[(32 * mem[_2799] - 1) + _3420 + ceil32(return_data.size) + 32]
            if mem[(32 * mem[_2799] - 1) + _3420 + ceil32(return_data.size) + 32] < mem[(32 * mem[_2799] - 1) + _3420 + ceil32(return_data.size) + 32] * arg4 / 10000:
                revert with 0, 17
            _4012 = mem[64]
            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _2744 - ext_call.return_data[0]
            mem[mem[64] + 36] = _3996 - (_3948 * arg4 / 10000)
            mem[mem[64] + 68] = 160
            _4028 = mem[_2799]
            mem[mem[64] + 164] = mem[_2799]
            idx = 0
            s = _2799 + 32
            t = mem[64] + 196
            while idx < _4028:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_4012 + 100] = msg.sender
            mem[_4012 + 132] = block.timestamp
            require ext_code.size(arg6)
            call arg6.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _4012 + (32 * _4028) + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _4348 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _4364 = mem[_4348]
            require mem[_4348] <= test266151307()
            require _4348 + mem[_4348] + 31 < _4348 + return_data.size
            _4380 = mem[_4348 + mem[_4348]]
            if mem[_4348 + mem[_4348]] > test266151307():
                revert with 0, 65
            if _4348 + ceil32(return_data.size) + ceil32(32 * mem[_4348 + mem[_4348]]) + 1 > test266151307() or ceil32(32 * mem[_4348 + mem[_4348]]) + 1 < 0:
                revert with 0, 65
            mem[64] = _4348 + ceil32(return_data.size) + ceil32(32 * mem[_4348 + mem[_4348]]) + 1
            mem[_4348 + ceil32(return_data.size)] = _4380
            require return_data.size >= _4364 + (32 * _4380) + 32
            mem[_4348 + ceil32(return_data.size) + 32 len 32 * _4380] = mem[_4348 + _4364 + 32 len 32 * _4380]
            mem[mem[64] + 4] = msg.sender
            require ext_code.size(arg1)
            staticcall arg1.0x70a08231 with:
                    gas gas_remaining wei
                   args msg.sender
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _4636 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _4652 = mem[_4636]
            if not mem[_4636]:
                revert with 0, '', 0
            s = 0
            idx = mem[_4636]
            while idx:
                if s == -1:
                    revert with 0, 17
                s = s + 1
                idx = idx / 10
                continue 
            if s > test266151307():
                revert with 0, 65
            _4780 = mem[64]
            mem[mem[64]] = s
            mem[64] = mem[64] + ceil32(s) + 32
            if not s:
                t = s
                idx = _4652
                while idx:
                    if t < 1:
                        revert with 0, 17
                    if idx / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                        revert with 0, 17
                    if idx < 10 * idx / 10:
                        revert with 0, 17
                    if 48 > -uint8(idx - (10 * idx / 10)) + 255:
                        revert with 0, 17
                    if t - 1 >= mem[_4780]:
                        revert with 0, 50
                    mem[t + _4780 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                _5025 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                _5057 = mem[_4780]
                mem[mem[64] + 36] = mem[_4780]
                mem[mem[64] + 68 len ceil32(_5057)] = mem[_4780 + 32 len ceil32(_5057)]
                if ceil32(_5057) <= _5057:
                    revert with 0, 32, mem[mem[64] + 36 len ceil32(_5057) + 32]
                mem[mem[64] + _5057 + 68] = 0
                revert with memory
                  from mem[64]
                   len ceil32(_5057) + _5025 + -mem[64] + 68
            mem[_4780 + 32 len s] = call.data[calldata.size len s]
            t = s
            idx = _4652
            while idx:
                if t < 1:
                    revert with 0, 17
                if idx / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                    revert with 0, 17
                if idx < 10 * idx / 10:
                    revert with 0, 17
                if 48 > -uint8(idx - (10 * idx / 10)) + 255:
                    revert with 0, 17
                if t - 1 >= mem[_4780]:
                    revert with 0, 50
                mem[t + _4780 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _5058 = mem[_4780]
            mem[mem[64] + 36] = mem[_4780]
            mem[mem[64] + 68 len ceil32(_5058)] = mem[_4780 + 32 len ceil32(_5058)]
            if ceil32(_5058) > _5058:
                mem[mem[64] + _5058 + 68] = 0
            revert with 0, 32, mem[mem[64] + 36 len ceil32(_5058) + 32]
        if 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 == arg1:
            _2815 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            if 0 >= mem[_2815]:
                revert with 0, 50
            mem[_2815 + 32] = arg2
            if 1 >= mem[_2815]:
                revert with 0, 50
            mem[_2815 + 64] = arg1
            mem[_2815 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_2815 + 100] = _2744 - ext_call.return_data[0]
            mem[_2815 + 132] = 64
            mem[_2815 + 164] = mem[_2815]
            idx = 0
            s = _2815 + 32
            t = _2815 + 196
            while idx < mem[_2815]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(arg6)
            staticcall arg6.mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _2815 + (32 * mem[_2815]) + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3422 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _3438 = mem[_3422]
            require mem[_3422] <= test266151307()
            require _3422 + mem[_3422] + 31 < _3422 + return_data.size
            _3454 = mem[_3422 + mem[_3422]]
            if mem[_3422 + mem[_3422]] > test266151307():
                revert with 0, 65
            if _3422 + ceil32(return_data.size) + ceil32(32 * mem[_3422 + mem[_3422]]) + 1 > test266151307() or ceil32(32 * mem[_3422 + mem[_3422]]) + 1 < 0:
                revert with 0, 65
            mem[64] = _3422 + ceil32(return_data.size) + ceil32(32 * mem[_3422 + mem[_3422]]) + 1
            mem[_3422 + ceil32(return_data.size)] = _3454
            require return_data.size >= _3438 + (32 * _3454) + 32
            mem[_3422 + ceil32(return_data.size) + 32 len 32 * _3454] = mem[_3422 + _3438 + 32 len 32 * _3454]
            if mem[_2815] < 1:
                revert with 0, 17
            if mem[_2815] - 1 >= _3454:
                revert with 0, 50
            _3950 = mem[(32 * mem[_2815] - 1) + _3422 + ceil32(return_data.size) + 32]
            if mem[(32 * mem[_2815] - 1) + _3422 + ceil32(return_data.size) + 32] and arg4 > -1 / mem[(32 * mem[_2815] - 1) + _3422 + ceil32(return_data.size) + 32]:
                revert with 0, 17
            if mem[_2815] < 1:
                revert with 0, 17
            if mem[_2815] - 1 >= _3454:
                revert with 0, 50
            _3998 = mem[(32 * mem[_2815] - 1) + _3422 + ceil32(return_data.size) + 32]
            if mem[(32 * mem[_2815] - 1) + _3422 + ceil32(return_data.size) + 32] < mem[(32 * mem[_2815] - 1) + _3422 + ceil32(return_data.size) + 32] * arg4 / 10000:
                revert with 0, 17
            _4014 = mem[64]
            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _2744 - ext_call.return_data[0]
            mem[mem[64] + 36] = _3998 - (_3950 * arg4 / 10000)
            mem[mem[64] + 68] = 160
            _4030 = mem[_2815]
            mem[mem[64] + 164] = mem[_2815]
            idx = 0
            s = _2815 + 32
            t = mem[64] + 196
            while idx < _4030:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_4014 + 100] = msg.sender
            mem[_4014 + 132] = block.timestamp
            require ext_code.size(arg6)
            call arg6.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _4014 + (32 * _4030) + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _4350 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _4366 = mem[_4350]
            require mem[_4350] <= test266151307()
            require _4350 + mem[_4350] + 31 < _4350 + return_data.size
            _4382 = mem[_4350 + mem[_4350]]
            if mem[_4350 + mem[_4350]] > test266151307():
                revert with 0, 65
            if _4350 + ceil32(return_data.size) + ceil32(32 * mem[_4350 + mem[_4350]]) + 1 > test266151307() or ceil32(32 * mem[_4350 + mem[_4350]]) + 1 < 0:
                revert with 0, 65
            mem[64] = _4350 + ceil32(return_data.size) + ceil32(32 * mem[_4350 + mem[_4350]]) + 1
            mem[_4350 + ceil32(return_data.size)] = _4382
            require return_data.size >= _4366 + (32 * _4382) + 32
            mem[_4350 + ceil32(return_data.size) + 32 len 32 * _4382] = mem[_4350 + _4366 + 32 len 32 * _4382]
            mem[mem[64] + 4] = msg.sender
            require ext_code.size(arg1)
            staticcall arg1.0x70a08231 with:
                    gas gas_remaining wei
                   args msg.sender
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _4638 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _4654 = mem[_4638]
            if not mem[_4638]:
                revert with 0, '', 0
            s = 0
            idx = mem[_4638]
            while idx:
                if s == -1:
                    revert with 0, 17
                s = s + 1
                idx = idx / 10
                continue 
            if s > test266151307():
                revert with 0, 65
            _4782 = mem[64]
            mem[mem[64]] = s
            mem[64] = mem[64] + ceil32(s) + 32
            if not s:
                t = s
                idx = _4654
                while idx:
                    if t < 1:
                        revert with 0, 17
                    if idx / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                        revert with 0, 17
                    if idx < 10 * idx / 10:
                        revert with 0, 17
                    if 48 > -uint8(idx - (10 * idx / 10)) + 255:
                        revert with 0, 17
                    if t - 1 >= mem[_4782]:
                        revert with 0, 50
                    mem[t + _4782 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                _5029 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                _5061 = mem[_4782]
                mem[mem[64] + 36] = mem[_4782]
                mem[mem[64] + 68 len ceil32(_5061)] = mem[_4782 + 32 len ceil32(_5061)]
                if ceil32(_5061) <= _5061:
                    revert with 0, 32, mem[mem[64] + 36 len ceil32(_5061) + 32]
                mem[mem[64] + _5061 + 68] = 0
                revert with memory
                  from mem[64]
                   len ceil32(_5061) + _5029 + -mem[64] + 68
            mem[_4782 + 32 len s] = call.data[calldata.size len s]
            t = s
            idx = _4654
            while idx:
                if t < 1:
                    revert with 0, 17
                if idx / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                    revert with 0, 17
                if idx < 10 * idx / 10:
                    revert with 0, 17
                if 48 > -uint8(idx - (10 * idx / 10)) + 255:
                    revert with 0, 17
                if t - 1 >= mem[_4782]:
                    revert with 0, 50
                mem[t + _4782 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            _5030 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _5062 = mem[_4782]
            mem[mem[64] + 36] = mem[_4782]
            mem[mem[64] + 68 len ceil32(_5062)] = mem[_4782 + 32 len ceil32(_5062)]
            if ceil32(_5062) <= _5062:
                revert with 0, 32, mem[mem[64] + 36 len ceil32(_5062) + 32]
            mem[mem[64] + _5062 + 68] = 0
            revert with memory
              from mem[64]
               len ceil32(_5062) + _5030 + -mem[64] + 68
        _2813 = mem[64]
        mem[mem[64]] = 3
        mem[64] = mem[64] + 128
        if 0 >= mem[_2813]:
            revert with 0, 50
        mem[_2813 + 32] = arg2
        if 1 >= mem[_2813]:
            revert with 0, 50
        mem[_2813 + 64] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
        if 2 >= mem[_2813]:
            revert with 0, 50
        mem[_2813 + 96] = arg1
        mem[_2813 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[_2813 + 132] = _2744 - ext_call.return_data[0]
        mem[_2813 + 164] = 64
        mem[_2813 + 196] = mem[_2813]
        idx = 0
        s = _2813 + 32
        t = _2813 + 228
        while idx < mem[_2813]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(arg6)
        staticcall arg6.mem[mem[64] len 4] with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len _2813 + (32 * mem[_2813]) + -mem[64] + 224]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _3421 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _3437 = mem[_3421]
        require mem[_3421] <= test266151307()
        require _3421 + mem[_3421] + 31 < _3421 + return_data.size
        _3453 = mem[_3421 + mem[_3421]]
        if mem[_3421 + mem[_3421]] > test266151307():
            revert with 0, 65
        if _3421 + ceil32(return_data.size) + ceil32(32 * mem[_3421 + mem[_3421]]) + 1 > test266151307() or ceil32(32 * mem[_3421 + mem[_3421]]) + 1 < 0:
            revert with 0, 65
        mem[64] = _3421 + ceil32(return_data.size) + ceil32(32 * mem[_3421 + mem[_3421]]) + 1
        mem[_3421 + ceil32(return_data.size)] = _3453
        require return_data.size >= _3437 + (32 * _3453) + 32
        mem[_3421 + ceil32(return_data.size) + 32 len 32 * _3453] = mem[_3421 + _3437 + 32 len 32 * _3453]
        if mem[_2813] < 1:
            revert with 0, 17
        if mem[_2813] - 1 >= _3453:
            revert with 0, 50
        _3949 = mem[(32 * mem[_2813] - 1) + _3421 + ceil32(return_data.size) + 32]
        if mem[(32 * mem[_2813] - 1) + _3421 + ceil32(return_data.size) + 32] and arg4 > -1 / mem[(32 * mem[_2813] - 1) + _3421 + ceil32(return_data.size) + 32]:
            revert with 0, 17
        if mem[_2813] < 1:
            revert with 0, 17
        if mem[_2813] - 1 >= _3453:
            revert with 0, 50
        _3997 = mem[(32 * mem[_2813] - 1) + _3421 + ceil32(return_data.size) + 32]
        if mem[(32 * mem[_2813] - 1) + _3421 + ceil32(return_data.size) + 32] < mem[(32 * mem[_2813] - 1) + _3421 + ceil32(return_data.size) + 32] * arg4 / 10000:
            revert with 0, 17
        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _2744 - ext_call.return_data[0]
        mem[mem[64] + 36] = _3997 - (_3949 * arg4 / 10000)
        mem[mem[64] + 68] = 160
        _4029 = mem[_2813]
        mem[mem[64] + 164] = mem[_2813]
        idx = 0
        s = _2813 + 32
        t = mem[64] + 196
        while idx < _4029:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 100] = msg.sender
        mem[mem[64] + 132] = block.timestamp
        require ext_code.size(arg6)
        call arg6.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
             gas gas_remaining wei
            args _2744 - ext_call.return_data[0], _3997 - (_3949 * arg4 / 10000), 160, msg.sender, block.timestamp, mem[mem[64] + 164 len (32 * _4029) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _4349 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _4365 = mem[_4349]
        require mem[_4349] <= test266151307()
        require _4349 + mem[_4349] + 31 < _4349 + return_data.size
        _4381 = mem[_4349 + mem[_4349]]
        if mem[_4349 + mem[_4349]] > test266151307():
            revert with 0, 65
        if _4349 + ceil32(return_data.size) + ceil32(32 * mem[_4349 + mem[_4349]]) + 1 > test266151307() or ceil32(32 * mem[_4349 + mem[_4349]]) + 1 < 0:
            revert with 0, 65
        mem[64] = _4349 + ceil32(return_data.size) + ceil32(32 * mem[_4349 + mem[_4349]]) + 1
        mem[_4349 + ceil32(return_data.size)] = _4381
        require return_data.size >= _4365 + (32 * _4381) + 32
        mem[_4349 + ceil32(return_data.size) + 32 len 32 * _4381] = mem[_4349 + _4365 + 32 len 32 * _4381]
        mem[mem[64] + 4] = msg.sender
        require ext_code.size(arg1)
        staticcall arg1.0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _4637 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _4653 = mem[_4637]
        if not mem[_4637]:
            revert with 0, '', 0
        s = 0
        idx = mem[_4637]
        while idx:
            if s == -1:
                revert with 0, 17
            s = s + 1
            idx = idx / 10
            continue 
        if s > test266151307():
            revert with 0, 65
        _4781 = mem[64]
        mem[mem[64]] = s
        mem[64] = mem[64] + ceil32(s) + 32
        if not s:
            t = s
            idx = _4653
            while idx:
                if t < 1:
                    revert with 0, 17
                if idx / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                    revert with 0, 17
                if idx < 10 * idx / 10:
                    revert with 0, 17
                if 48 > -uint8(idx - (10 * idx / 10)) + 255:
                    revert with 0, 17
                if t - 1 >= mem[_4781]:
                    revert with 0, 50
                mem[t + _4781 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _5059 = mem[_4781]
            mem[mem[64] + 36] = mem[_4781]
            mem[mem[64] + 68 len ceil32(_5059)] = mem[_4781 + 32 len ceil32(_5059)]
            if ceil32(_5059) > _5059:
                mem[mem[64] + _5059 + 68] = 0
            revert with 0, 32, mem[mem[64] + 36 len ceil32(_5059) + 32]
        mem[_4781 + 32 len s] = call.data[calldata.size len s]
        t = s
        idx = _4653
        while idx:
            if t < 1:
                revert with 0, 17
            if idx / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                revert with 0, 17
            if idx < 10 * idx / 10:
                revert with 0, 17
            if 48 > -uint8(idx - (10 * idx / 10)) + 255:
                revert with 0, 17
            if t - 1 >= mem[_4781]:
                revert with 0, 50
            mem[t + _4781 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        _5028 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        _5060 = mem[_4781]
        mem[mem[64] + 36] = mem[_4781]
        mem[mem[64] + 68 len ceil32(_5060)] = mem[_4781 + 32 len ceil32(_5060)]
        if ceil32(_5060) <= _5060:
            revert with 0, 32, mem[mem[64] + 36 len ceil32(_5060) + 32]
        mem[mem[64] + _5060 + 68] = 0
        revert with memory
          from mem[64]
           len ceil32(_5060) + _5028 + -mem[64] + 68
    if 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 == arg2:
        mem[(4 * ceil32(return_data.size)) + 96] = 2
        mem[(4 * ceil32(return_data.size)) + 128] = arg1
        mem[(4 * ceil32(return_data.size)) + 160] = arg2
        mem[(4 * ceil32(return_data.size)) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[(4 * ceil32(return_data.size)) + 196] = arg3
        mem[(4 * ceil32(return_data.size)) + 228] = 64
        mem[(4 * ceil32(return_data.size)) + 260] = 2
        idx = 0
        s = (4 * ceil32(return_data.size)) + 128
        t = (4 * ceil32(return_data.size)) + 292
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(arg6)
        staticcall arg6.getAmountsOut(uint256 rg1, address[] rg2) with:
                gas gas_remaining wei
               args arg3, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 292 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(4 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (6 * ceil32(return_data.size)) + 192
        require return_data.size >= 32
        _606 = mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32
        require mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
        require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 223 < (4 * ceil32(return_data.size)) + return_data.size + 192
        _610 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
        if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192] > test266151307():
            revert with 0, 65
        if (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 1 < 0:
            revert with 0, 65
        mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193
        mem[(6 * ceil32(return_data.size)) + 192] = _610
        require return_data.size >= _606 + (32 * _610) + 32
        mem[(6 * ceil32(return_data.size)) + 224 len 32 * _610] = mem[(4 * ceil32(return_data.size)) + _606 + 224 len 32 * _610]
        if 1 >= _610:
            revert with 0, 50
        _1346 = mem[(6 * ceil32(return_data.size)) + 256]
        if mem[(6 * ceil32(return_data.size)) + 256] and arg4 > -1 / mem[(6 * ceil32(return_data.size)) + 256]:
            revert with 0, 17
        if 1 >= _610:
            revert with 0, 50
        _1358 = mem[(6 * ceil32(return_data.size)) + 256]
        if mem[(6 * ceil32(return_data.size)) + 256] < mem[(6 * ceil32(return_data.size)) + 256] * arg4 / 10000:
            revert with 0, 17
        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = arg3
        mem[mem[64] + 36] = _1358 - (_1346 * arg4 / 10000)
        mem[mem[64] + 68] = 160
        mem[mem[64] + 164] = 2
        idx = 0
        s = (4 * ceil32(return_data.size)) + 128
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
        call arg6.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
             gas gas_remaining wei
            args arg3, _1358 - (_1346 * arg4 / 10000), Array(len=2, data=mem[mem[64] + 196 len 64]), msg.sender, block.timestamp
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _2058 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _2062 = mem[_2058]
        require mem[_2058] <= test266151307()
        require _2058 + mem[_2058] + 31 < _2058 + return_data.size
        _2066 = mem[_2058 + mem[_2058]]
        if mem[_2058 + mem[_2058]] > test266151307():
            revert with 0, 65
        if _2058 + ceil32(return_data.size) + ceil32(32 * mem[_2058 + mem[_2058]]) + 1 > test266151307() or ceil32(32 * mem[_2058 + mem[_2058]]) + 1 < 0:
            revert with 0, 65
        mem[64] = _2058 + ceil32(return_data.size) + ceil32(32 * mem[_2058 + mem[_2058]]) + 1
        mem[_2058 + ceil32(return_data.size)] = _2066
        require return_data.size >= _2062 + (32 * _2066) + 32
        mem[_2058 + ceil32(return_data.size) + 32 len 32 * _2066] = mem[_2058 + _2062 + 32 len 32 * _2066]
        mem[mem[64] + 4] = msg.sender
        require ext_code.size(arg2)
        staticcall arg2.0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _2742 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _2746 = mem[_2742]
        if mem[_2742] < ext_call.return_data[0]:
            revert with 0, 17
        if owner != msg.sender:
            revert with 0, 'Must be owner.'
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = this.address
        mem[mem[64] + 68] = _2746 - ext_call.return_data[0]
        require ext_code.size(arg2)
        call arg2.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, this.address, _2746 - ext_call.return_data[0]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _2766 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_2766] == bool(mem[_2766])
        mem[mem[64] + 4] = arg6
        mem[mem[64] + 36] = _2746 - ext_call.return_data[0]
        require ext_code.size(arg2)
        call arg2.approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args address(arg6), _2746 - ext_call.return_data[0]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _2782 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_2782] == bool(mem[_2782])
        if not arg5:
            _2793 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            if 0 >= mem[_2793]:
                revert with 0, 50
            mem[_2793 + 32] = arg2
            if 1 >= mem[_2793]:
                revert with 0, 50
            mem[_2793 + 64] = arg1
            mem[_2793 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_2793 + 100] = _2746 - ext_call.return_data[0]
            mem[_2793 + 132] = 64
            mem[_2793 + 164] = mem[_2793]
            idx = 0
            s = _2793 + 32
            t = _2793 + 196
            while idx < mem[_2793]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(arg6)
            staticcall arg6.mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _2793 + (32 * mem[_2793]) + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3427 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _3443 = mem[_3427]
            require mem[_3427] <= test266151307()
            require _3427 + mem[_3427] + 31 < _3427 + return_data.size
            _3459 = mem[_3427 + mem[_3427]]
            if mem[_3427 + mem[_3427]] > test266151307():
                revert with 0, 65
            if _3427 + ceil32(return_data.size) + ceil32(32 * mem[_3427 + mem[_3427]]) + 1 > test266151307() or ceil32(32 * mem[_3427 + mem[_3427]]) + 1 < 0:
                revert with 0, 65
            mem[64] = _3427 + ceil32(return_data.size) + ceil32(32 * mem[_3427 + mem[_3427]]) + 1
            mem[_3427 + ceil32(return_data.size)] = _3459
            require return_data.size >= _3443 + (32 * _3459) + 32
            mem[_3427 + ceil32(return_data.size) + 32 len 32 * _3459] = mem[_3427 + _3443 + 32 len 32 * _3459]
            if mem[_2793] < 1:
                revert with 0, 17
            if mem[_2793] - 1 >= _3459:
                revert with 0, 50
            _3955 = mem[(32 * mem[_2793] - 1) + _3427 + ceil32(return_data.size) + 32]
            if mem[(32 * mem[_2793] - 1) + _3427 + ceil32(return_data.size) + 32] and arg4 > -1 / mem[(32 * mem[_2793] - 1) + _3427 + ceil32(return_data.size) + 32]:
                revert with 0, 17
            if mem[_2793] < 1:
                revert with 0, 17
            if mem[_2793] - 1 >= _3459:
                revert with 0, 50
            _4003 = mem[(32 * mem[_2793] - 1) + _3427 + ceil32(return_data.size) + 32]
            if mem[(32 * mem[_2793] - 1) + _3427 + ceil32(return_data.size) + 32] < mem[(32 * mem[_2793] - 1) + _3427 + ceil32(return_data.size) + 32] * arg4 / 10000:
                revert with 0, 17
            _4019 = mem[64]
            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _2746 - ext_call.return_data[0]
            mem[mem[64] + 36] = _4003 - (_3955 * arg4 / 10000)
            mem[mem[64] + 68] = 160
            _4035 = mem[_2793]
            mem[mem[64] + 164] = mem[_2793]
            idx = 0
            s = _2793 + 32
            t = mem[64] + 196
            while idx < _4035:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_4019 + 100] = msg.sender
            mem[_4019 + 132] = block.timestamp
            require ext_code.size(arg6)
            call arg6.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _4019 + (32 * _4035) + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _4355 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _4371 = mem[_4355]
            require mem[_4355] <= test266151307()
            require _4355 + mem[_4355] + 31 < _4355 + return_data.size
            _4387 = mem[_4355 + mem[_4355]]
            if mem[_4355 + mem[_4355]] > test266151307():
                revert with 0, 65
            if _4355 + ceil32(return_data.size) + ceil32(32 * mem[_4355 + mem[_4355]]) + 1 > test266151307() or ceil32(32 * mem[_4355 + mem[_4355]]) + 1 < 0:
                revert with 0, 65
            mem[64] = _4355 + ceil32(return_data.size) + ceil32(32 * mem[_4355 + mem[_4355]]) + 1
            mem[_4355 + ceil32(return_data.size)] = _4387
            require return_data.size >= _4371 + (32 * _4387) + 32
            mem[_4355 + ceil32(return_data.size) + 32 len 32 * _4387] = mem[_4355 + _4371 + 32 len 32 * _4387]
            mem[mem[64] + 4] = msg.sender
            require ext_code.size(arg1)
            staticcall arg1.0x70a08231 with:
                    gas gas_remaining wei
                   args msg.sender
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _4643 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _4659 = mem[_4643]
            if not mem[_4643]:
                revert with 0, '', 0
            s = 0
            idx = mem[_4643]
            while idx:
                if s == -1:
                    revert with 0, 17
                s = s + 1
                idx = idx / 10
                continue 
            if s > test266151307():
                revert with 0, 65
            _4787 = mem[64]
            mem[mem[64]] = s
            mem[64] = mem[64] + ceil32(s) + 32
            if not s:
                t = s
                idx = _4659
                while idx:
                    if t < 1:
                        revert with 0, 17
                    if idx / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                        revert with 0, 17
                    if idx < 10 * idx / 10:
                        revert with 0, 17
                    if 48 > -uint8(idx - (10 * idx / 10)) + 255:
                        revert with 0, 17
                    if t - 1 >= mem[_4787]:
                        revert with 0, 50
                    mem[t + _4787 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                _5039 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                _5071 = mem[_4787]
                mem[mem[64] + 36] = mem[_4787]
                mem[mem[64] + 68 len ceil32(_5071)] = mem[_4787 + 32 len ceil32(_5071)]
                if ceil32(_5071) <= _5071:
                    revert with 0, 32, mem[mem[64] + 36 len ceil32(_5071) + 32]
                mem[mem[64] + _5071 + 68] = 0
                revert with memory
                  from mem[64]
                   len ceil32(_5071) + _5039 + -mem[64] + 68
            mem[_4787 + 32 len s] = call.data[calldata.size len s]
            t = s
            idx = _4659
            while idx:
                if t < 1:
                    revert with 0, 17
                if idx / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                    revert with 0, 17
                if idx < 10 * idx / 10:
                    revert with 0, 17
                if 48 > -uint8(idx - (10 * idx / 10)) + 255:
                    revert with 0, 17
                if t - 1 >= mem[_4787]:
                    revert with 0, 50
                mem[t + _4787 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            _5040 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _5072 = mem[_4787]
            mem[mem[64] + 36] = mem[_4787]
            mem[mem[64] + 68 len ceil32(_5072)] = mem[_4787 + 32 len ceil32(_5072)]
            if ceil32(_5072) <= _5072:
                revert with 0, 32, mem[mem[64] + 36 len ceil32(_5072) + 32]
            mem[mem[64] + _5072 + 68] = 0
            revert with memory
              from mem[64]
               len ceil32(_5072) + _5040 + -mem[64] + 68
        if 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 == arg2:
            _2805 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            if 0 >= mem[_2805]:
                revert with 0, 50
            mem[_2805 + 32] = arg2
            if 1 >= mem[_2805]:
                revert with 0, 50
            mem[_2805 + 64] = arg1
            mem[_2805 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_2805 + 100] = _2746 - ext_call.return_data[0]
            mem[_2805 + 132] = 64
            mem[_2805 + 164] = mem[_2805]
            idx = 0
            s = _2805 + 32
            t = _2805 + 196
            while idx < mem[_2805]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(arg6)
            staticcall arg6.mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _2805 + (32 * mem[_2805]) + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3428 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _3444 = mem[_3428]
            require mem[_3428] <= test266151307()
            require _3428 + mem[_3428] + 31 < _3428 + return_data.size
            _3460 = mem[_3428 + mem[_3428]]
            if mem[_3428 + mem[_3428]] > test266151307():
                revert with 0, 65
            if _3428 + ceil32(return_data.size) + ceil32(32 * mem[_3428 + mem[_3428]]) + 1 > test266151307() or ceil32(32 * mem[_3428 + mem[_3428]]) + 1 < 0:
                revert with 0, 65
            mem[64] = _3428 + ceil32(return_data.size) + ceil32(32 * mem[_3428 + mem[_3428]]) + 1
            mem[_3428 + ceil32(return_data.size)] = _3460
            require return_data.size >= _3444 + (32 * _3460) + 32
            mem[_3428 + ceil32(return_data.size) + 32 len 32 * _3460] = mem[_3428 + _3444 + 32 len 32 * _3460]
            if mem[_2805] < 1:
                revert with 0, 17
            if mem[_2805] - 1 >= _3460:
                revert with 0, 50
            _3956 = mem[(32 * mem[_2805] - 1) + _3428 + ceil32(return_data.size) + 32]
            if mem[(32 * mem[_2805] - 1) + _3428 + ceil32(return_data.size) + 32] and arg4 > -1 / mem[(32 * mem[_2805] - 1) + _3428 + ceil32(return_data.size) + 32]:
                revert with 0, 17
            if mem[_2805] < 1:
                revert with 0, 17
            if mem[_2805] - 1 >= _3460:
                revert with 0, 50
            _4004 = mem[(32 * mem[_2805] - 1) + _3428 + ceil32(return_data.size) + 32]
            if mem[(32 * mem[_2805] - 1) + _3428 + ceil32(return_data.size) + 32] < mem[(32 * mem[_2805] - 1) + _3428 + ceil32(return_data.size) + 32] * arg4 / 10000:
                revert with 0, 17
            _4020 = mem[64]
            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _2746 - ext_call.return_data[0]
            mem[mem[64] + 36] = _4004 - (_3956 * arg4 / 10000)
            mem[mem[64] + 68] = 160
            _4036 = mem[_2805]
            mem[mem[64] + 164] = mem[_2805]
            idx = 0
            s = _2805 + 32
            t = mem[64] + 196
            while idx < _4036:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_4020 + 100] = msg.sender
            mem[_4020 + 132] = block.timestamp
            require ext_code.size(arg6)
            call arg6.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _4020 + (32 * _4036) + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _4356 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _4372 = mem[_4356]
            require mem[_4356] <= test266151307()
            require _4356 + mem[_4356] + 31 < _4356 + return_data.size
            _4388 = mem[_4356 + mem[_4356]]
            if mem[_4356 + mem[_4356]] > test266151307():
                revert with 0, 65
            if _4356 + ceil32(return_data.size) + ceil32(32 * mem[_4356 + mem[_4356]]) + 1 > test266151307() or ceil32(32 * mem[_4356 + mem[_4356]]) + 1 < 0:
                revert with 0, 65
            mem[64] = _4356 + ceil32(return_data.size) + ceil32(32 * mem[_4356 + mem[_4356]]) + 1
            mem[_4356 + ceil32(return_data.size)] = _4388
            require return_data.size >= _4372 + (32 * _4388) + 32
            mem[_4356 + ceil32(return_data.size) + 32 len 32 * _4388] = mem[_4356 + _4372 + 32 len 32 * _4388]
            mem[mem[64] + 4] = msg.sender
            require ext_code.size(arg1)
            staticcall arg1.0x70a08231 with:
                    gas gas_remaining wei
                   args msg.sender
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _4644 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _4660 = mem[_4644]
            if not mem[_4644]:
                revert with 0, '', 0
            s = 0
            idx = mem[_4644]
            while idx:
                if s == -1:
                    revert with 0, 17
                s = s + 1
                idx = idx / 10
                continue 
            if s > test266151307():
                revert with 0, 65
            _4788 = mem[64]
            mem[mem[64]] = s
            mem[64] = mem[64] + ceil32(s) + 32
            if not s:
                t = s
                idx = _4660
                while idx:
                    if t < 1:
                        revert with 0, 17
                    if idx / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                        revert with 0, 17
                    if idx < 10 * idx / 10:
                        revert with 0, 17
                    if 48 > -uint8(idx - (10 * idx / 10)) + 255:
                        revert with 0, 17
                    if t - 1 >= mem[_4788]:
                        revert with 0, 50
                    mem[t + _4788 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                _5041 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                _5073 = mem[_4788]
                mem[mem[64] + 36] = mem[_4788]
                mem[mem[64] + 68 len ceil32(_5073)] = mem[_4788 + 32 len ceil32(_5073)]
                if ceil32(_5073) <= _5073:
                    revert with 0, 32, mem[mem[64] + 36 len ceil32(_5073) + 32]
                mem[mem[64] + _5073 + 68] = 0
                revert with memory
                  from mem[64]
                   len ceil32(_5073) + _5041 + -mem[64] + 68
            mem[_4788 + 32 len s] = call.data[calldata.size len s]
            t = s
            idx = _4660
            while idx:
                if t < 1:
                    revert with 0, 17
                if idx / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                    revert with 0, 17
                if idx < 10 * idx / 10:
                    revert with 0, 17
                if 48 > -uint8(idx - (10 * idx / 10)) + 255:
                    revert with 0, 17
                if t - 1 >= mem[_4788]:
                    revert with 0, 50
                mem[t + _4788 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            _5042 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _5074 = mem[_4788]
            mem[mem[64] + 36] = mem[_4788]
            mem[mem[64] + 68 len ceil32(_5074)] = mem[_4788 + 32 len ceil32(_5074)]
            if ceil32(_5074) <= _5074:
                revert with 0, 32, mem[mem[64] + 36 len ceil32(_5074) + 32]
            mem[mem[64] + _5074 + 68] = 0
            revert with memory
              from mem[64]
               len ceil32(_5074) + _5042 + -mem[64] + 68
        if 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 == arg1:
            _2825 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            if 0 >= mem[_2825]:
                revert with 0, 50
            mem[_2825 + 32] = arg2
            if 1 >= mem[_2825]:
                revert with 0, 50
            mem[_2825 + 64] = arg1
            mem[_2825 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_2825 + 100] = _2746 - ext_call.return_data[0]
            mem[_2825 + 132] = 64
            mem[_2825 + 164] = mem[_2825]
            idx = 0
            s = _2825 + 32
            t = _2825 + 196
            while idx < mem[_2825]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(arg6)
            staticcall arg6.mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _2825 + (32 * mem[_2825]) + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3430 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _3446 = mem[_3430]
            require mem[_3430] <= test266151307()
            require _3430 + mem[_3430] + 31 < _3430 + return_data.size
            _3462 = mem[_3430 + mem[_3430]]
            if mem[_3430 + mem[_3430]] > test266151307():
                revert with 0, 65
            if _3430 + ceil32(return_data.size) + ceil32(32 * mem[_3430 + mem[_3430]]) + 1 > test266151307() or ceil32(32 * mem[_3430 + mem[_3430]]) + 1 < 0:
                revert with 0, 65
            mem[64] = _3430 + ceil32(return_data.size) + ceil32(32 * mem[_3430 + mem[_3430]]) + 1
            mem[_3430 + ceil32(return_data.size)] = _3462
            require return_data.size >= _3446 + (32 * _3462) + 32
            mem[_3430 + ceil32(return_data.size) + 32 len 32 * _3462] = mem[_3430 + _3446 + 32 len 32 * _3462]
            if mem[_2825] < 1:
                revert with 0, 17
            if mem[_2825] - 1 >= _3462:
                revert with 0, 50
            _3958 = mem[(32 * mem[_2825] - 1) + _3430 + ceil32(return_data.size) + 32]
            if mem[(32 * mem[_2825] - 1) + _3430 + ceil32(return_data.size) + 32] and arg4 > -1 / mem[(32 * mem[_2825] - 1) + _3430 + ceil32(return_data.size) + 32]:
                revert with 0, 17
            if mem[_2825] < 1:
                revert with 0, 17
            if mem[_2825] - 1 >= _3462:
                revert with 0, 50
            _4006 = mem[(32 * mem[_2825] - 1) + _3430 + ceil32(return_data.size) + 32]
            if mem[(32 * mem[_2825] - 1) + _3430 + ceil32(return_data.size) + 32] < mem[(32 * mem[_2825] - 1) + _3430 + ceil32(return_data.size) + 32] * arg4 / 10000:
                revert with 0, 17
            _4022 = mem[64]
            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _2746 - ext_call.return_data[0]
            mem[mem[64] + 36] = _4006 - (_3958 * arg4 / 10000)
            mem[mem[64] + 68] = 160
            _4038 = mem[_2825]
            mem[mem[64] + 164] = mem[_2825]
            idx = 0
            s = _2825 + 32
            t = mem[64] + 196
            while idx < _4038:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_4022 + 100] = msg.sender
            mem[_4022 + 132] = block.timestamp
            require ext_code.size(arg6)
            call arg6.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _4022 + (32 * _4038) + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _4358 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _4374 = mem[_4358]
            require mem[_4358] <= test266151307()
            require _4358 + mem[_4358] + 31 < _4358 + return_data.size
            _4390 = mem[_4358 + mem[_4358]]
            if mem[_4358 + mem[_4358]] > test266151307():
                revert with 0, 65
            if _4358 + ceil32(return_data.size) + ceil32(32 * mem[_4358 + mem[_4358]]) + 1 > test266151307() or ceil32(32 * mem[_4358 + mem[_4358]]) + 1 < 0:
                revert with 0, 65
            mem[64] = _4358 + ceil32(return_data.size) + ceil32(32 * mem[_4358 + mem[_4358]]) + 1
            mem[_4358 + ceil32(return_data.size)] = _4390
            require return_data.size >= _4374 + (32 * _4390) + 32
            mem[_4358 + ceil32(return_data.size) + 32 len 32 * _4390] = mem[_4358 + _4374 + 32 len 32 * _4390]
            mem[mem[64] + 4] = msg.sender
            require ext_code.size(arg1)
            staticcall arg1.0x70a08231 with:
                    gas gas_remaining wei
                   args msg.sender
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _4646 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _4662 = mem[_4646]
            if not mem[_4646]:
                revert with 0, '', 0
            s = 0
            idx = mem[_4646]
            while idx:
                if s == -1:
                    revert with 0, 17
                s = s + 1
                idx = idx / 10
                continue 
            if s > test266151307():
                revert with 0, 65
            _4790 = mem[64]
            mem[mem[64]] = s
            mem[64] = mem[64] + ceil32(s) + 32
            if not s:
                t = s
                idx = _4662
                while idx:
                    if t < 1:
                        revert with 0, 17
                    if idx / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                        revert with 0, 17
                    if idx < 10 * idx / 10:
                        revert with 0, 17
                    if 48 > -uint8(idx - (10 * idx / 10)) + 255:
                        revert with 0, 17
                    if t - 1 >= mem[_4790]:
                        revert with 0, 50
                    mem[t + _4790 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                _5045 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                _5077 = mem[_4790]
                mem[mem[64] + 36] = mem[_4790]
                mem[mem[64] + 68 len ceil32(_5077)] = mem[_4790 + 32 len ceil32(_5077)]
                if ceil32(_5077) <= _5077:
                    revert with 0, 32, mem[mem[64] + 36 len ceil32(_5077) + 32]
                mem[mem[64] + _5077 + 68] = 0
                revert with memory
                  from mem[64]
                   len ceil32(_5077) + _5045 + -mem[64] + 68
            mem[_4790 + 32 len s] = call.data[calldata.size len s]
            t = s
            idx = _4662
            while idx:
                if t < 1:
                    revert with 0, 17
                if idx / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                    revert with 0, 17
                if idx < 10 * idx / 10:
                    revert with 0, 17
                if 48 > -uint8(idx - (10 * idx / 10)) + 255:
                    revert with 0, 17
                if t - 1 >= mem[_4790]:
                    revert with 0, 50
                mem[t + _4790 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            _5046 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _5078 = mem[_4790]
            mem[mem[64] + 36] = mem[_4790]
            mem[mem[64] + 68 len ceil32(_5078)] = mem[_4790 + 32 len ceil32(_5078)]
            if ceil32(_5078) <= _5078:
                revert with 0, 32, mem[mem[64] + 36 len ceil32(_5078) + 32]
            mem[mem[64] + _5078 + 68] = 0
            revert with memory
              from mem[64]
               len ceil32(_5078) + _5046 + -mem[64] + 68
        _2823 = mem[64]
        mem[mem[64]] = 3
        mem[64] = mem[64] + 128
        if 0 >= mem[_2823]:
            revert with 0, 50
        mem[_2823 + 32] = arg2
        if 1 >= mem[_2823]:
            revert with 0, 50
        mem[_2823 + 64] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
        if 2 >= mem[_2823]:
            revert with 0, 50
        mem[_2823 + 96] = arg1
        mem[_2823 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[_2823 + 132] = _2746 - ext_call.return_data[0]
        mem[_2823 + 164] = 64
        mem[_2823 + 196] = mem[_2823]
        idx = 0
        s = _2823 + 32
        t = _2823 + 228
        while idx < mem[_2823]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(arg6)
        staticcall arg6.mem[mem[64] len 4] with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len _2823 + (32 * mem[_2823]) + -mem[64] + 224]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _3429 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _3445 = mem[_3429]
        require mem[_3429] <= test266151307()
        require _3429 + mem[_3429] + 31 < _3429 + return_data.size
        _3461 = mem[_3429 + mem[_3429]]
        if mem[_3429 + mem[_3429]] > test266151307():
            revert with 0, 65
        if _3429 + ceil32(return_data.size) + ceil32(32 * mem[_3429 + mem[_3429]]) + 1 > test266151307() or ceil32(32 * mem[_3429 + mem[_3429]]) + 1 < 0:
            revert with 0, 65
        mem[64] = _3429 + ceil32(return_data.size) + ceil32(32 * mem[_3429 + mem[_3429]]) + 1
        mem[_3429 + ceil32(return_data.size)] = _3461
        require return_data.size >= _3445 + (32 * _3461) + 32
        mem[_3429 + ceil32(return_data.size) + 32 len 32 * _3461] = mem[_3429 + _3445 + 32 len 32 * _3461]
        if mem[_2823] < 1:
            revert with 0, 17
        if mem[_2823] - 1 >= _3461:
            revert with 0, 50
        _3957 = mem[(32 * mem[_2823] - 1) + _3429 + ceil32(return_data.size) + 32]
        if mem[(32 * mem[_2823] - 1) + _3429 + ceil32(return_data.size) + 32] and arg4 > -1 / mem[(32 * mem[_2823] - 1) + _3429 + ceil32(return_data.size) + 32]:
            revert with 0, 17
        if mem[_2823] < 1:
            revert with 0, 17
        if mem[_2823] - 1 >= _3461:
            revert with 0, 50
        _4005 = mem[(32 * mem[_2823] - 1) + _3429 + ceil32(return_data.size) + 32]
        if mem[(32 * mem[_2823] - 1) + _3429 + ceil32(return_data.size) + 32] < mem[(32 * mem[_2823] - 1) + _3429 + ceil32(return_data.size) + 32] * arg4 / 10000:
            revert with 0, 17
        _4021 = mem[64]
        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _2746 - ext_call.return_data[0]
        mem[mem[64] + 36] = _4005 - (_3957 * arg4 / 10000)
        mem[mem[64] + 68] = 160
        _4037 = mem[_2823]
        mem[mem[64] + 164] = mem[_2823]
        idx = 0
        s = _2823 + 32
        t = mem[64] + 196
        while idx < _4037:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_4021 + 100] = msg.sender
        mem[_4021 + 132] = block.timestamp
        require ext_code.size(arg6)
        call arg6.mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _4021 + (32 * _4037) + -mem[64] + 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _4357 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _4373 = mem[_4357]
        require mem[_4357] <= test266151307()
        require _4357 + mem[_4357] + 31 < _4357 + return_data.size
        _4389 = mem[_4357 + mem[_4357]]
        if mem[_4357 + mem[_4357]] > test266151307():
            revert with 0, 65
        if _4357 + ceil32(return_data.size) + ceil32(32 * mem[_4357 + mem[_4357]]) + 1 > test266151307() or ceil32(32 * mem[_4357 + mem[_4357]]) + 1 < 0:
            revert with 0, 65
        mem[64] = _4357 + ceil32(return_data.size) + ceil32(32 * mem[_4357 + mem[_4357]]) + 1
        mem[_4357 + ceil32(return_data.size)] = _4389
        require return_data.size >= _4373 + (32 * _4389) + 32
        mem[_4357 + ceil32(return_data.size) + 32 len 32 * _4389] = mem[_4357 + _4373 + 32 len 32 * _4389]
        mem[mem[64] + 4] = msg.sender
        require ext_code.size(arg1)
        staticcall arg1.0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _4645 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _4661 = mem[_4645]
        if not mem[_4645]:
            revert with 0, '', 0
        s = 0
        idx = mem[_4645]
        while idx:
            if s == -1:
                revert with 0, 17
            s = s + 1
            idx = idx / 10
            continue 
        if s > test266151307():
            revert with 0, 65
        _4789 = mem[64]
        mem[mem[64]] = s
        mem[64] = mem[64] + ceil32(s) + 32
        if not s:
            t = s
            idx = _4661
            while idx:
                if t < 1:
                    revert with 0, 17
                if idx / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                    revert with 0, 17
                if idx < 10 * idx / 10:
                    revert with 0, 17
                if 48 > -uint8(idx - (10 * idx / 10)) + 255:
                    revert with 0, 17
                if t - 1 >= mem[_4789]:
                    revert with 0, 50
                mem[t + _4789 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            _5043 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _5075 = mem[_4789]
            mem[mem[64] + 36] = mem[_4789]
            mem[mem[64] + 68 len ceil32(_5075)] = mem[_4789 + 32 len ceil32(_5075)]
            if ceil32(_5075) <= _5075:
                revert with 0, 32, mem[mem[64] + 36 len ceil32(_5075) + 32]
            mem[mem[64] + _5075 + 68] = 0
            revert with memory
              from mem[64]
               len ceil32(_5075) + _5043 + -mem[64] + 68
        mem[_4789 + 32 len s] = call.data[calldata.size len s]
        t = s
        idx = _4661
        while idx:
            if t < 1:
                revert with 0, 17
            if idx / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                revert with 0, 17
            if idx < 10 * idx / 10:
                revert with 0, 17
            if 48 > -uint8(idx - (10 * idx / 10)) + 255:
                revert with 0, 17
            if t - 1 >= mem[_4789]:
                revert with 0, 50
            mem[t + _4789 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        _5044 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        _5076 = mem[_4789]
        mem[mem[64] + 36] = mem[_4789]
        mem[mem[64] + 68 len ceil32(_5076)] = mem[_4789 + 32 len ceil32(_5076)]
        if ceil32(_5076) <= _5076:
            revert with 0, 32, mem[mem[64] + 36 len ceil32(_5076) + 32]
        mem[mem[64] + _5076 + 68] = 0
        revert with memory
          from mem[64]
           len ceil32(_5076) + _5044 + -mem[64] + 68
    mem[(4 * ceil32(return_data.size)) + 96] = 3
    mem[(4 * ceil32(return_data.size)) + 128] = arg1
    mem[(4 * ceil32(return_data.size)) + 160] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
    mem[(4 * ceil32(return_data.size)) + 192] = arg2
    mem[(4 * ceil32(return_data.size)) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[(4 * ceil32(return_data.size)) + 228] = arg3
    mem[(4 * ceil32(return_data.size)) + 260] = 64
    mem[(4 * ceil32(return_data.size)) + 292] = 3
    idx = 0
    s = (4 * ceil32(return_data.size)) + 128
    t = (4 * ceil32(return_data.size)) + 324
    while idx < 3:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(arg6)
    staticcall arg6.getAmountsOut(uint256 rg1, address[] rg2) with:
            gas gas_remaining wei
           args arg3, Array(len=3, data=mem[(4 * ceil32(return_data.size)) + 324 len 96])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(4 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (6 * ceil32(return_data.size)) + 224
    require return_data.size >= 32
    _605 = mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32
    require mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
    require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 255 < (4 * ceil32(return_data.size)) + return_data.size + 224
    _609 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
    if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] > test266151307():
        revert with 0, 65
    if (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 225 > test266151307() or ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 1 < 0:
        revert with 0, 65
    mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 225
    mem[(6 * ceil32(return_data.size)) + 224] = _609
    require return_data.size >= _605 + (32 * _609) + 32
    mem[(6 * ceil32(return_data.size)) + 256 len 32 * _609] = mem[(4 * ceil32(return_data.size)) + _605 + 256 len 32 * _609]
    if 2 >= _609:
        revert with 0, 50
    _1345 = mem[(6 * ceil32(return_data.size)) + 320]
    if mem[(6 * ceil32(return_data.size)) + 320] and arg4 > -1 / mem[(6 * ceil32(return_data.size)) + 320]:
        revert with 0, 17
    if 2 >= _609:
        revert with 0, 50
    _1357 = mem[(6 * ceil32(return_data.size)) + 320]
    if mem[(6 * ceil32(return_data.size)) + 320] < mem[(6 * ceil32(return_data.size)) + 320] * arg4 / 10000:
        revert with 0, 17
    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = arg3
    mem[mem[64] + 36] = _1357 - (_1345 * arg4 / 10000)
    mem[mem[64] + 68] = 160
    mem[mem[64] + 164] = 3
    idx = 0
    s = (4 * ceil32(return_data.size)) + 128
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
    call arg6.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
         gas gas_remaining wei
        args arg3, _1357 - (_1345 * arg4 / 10000), Array(len=3, data=mem[mem[64] + 196 len 96]), msg.sender, block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _2057 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _2061 = mem[_2057]
    require mem[_2057] <= test266151307()
    require _2057 + mem[_2057] + 31 < _2057 + return_data.size
    _2065 = mem[_2057 + mem[_2057]]
    if mem[_2057 + mem[_2057]] > test266151307():
        revert with 0, 65
    if _2057 + ceil32(return_data.size) + ceil32(32 * mem[_2057 + mem[_2057]]) + 1 > test266151307() or ceil32(32 * mem[_2057 + mem[_2057]]) + 1 < 0:
        revert with 0, 65
    mem[64] = _2057 + ceil32(return_data.size) + ceil32(32 * mem[_2057 + mem[_2057]]) + 1
    mem[_2057 + ceil32(return_data.size)] = _2065
    require return_data.size >= _2061 + (32 * _2065) + 32
    mem[_2057 + ceil32(return_data.size) + 32 len 32 * _2065] = mem[_2057 + _2061 + 32 len 32 * _2065]
    mem[mem[64] + 4] = msg.sender
    require ext_code.size(arg2)
    staticcall arg2.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _2741 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _2745 = mem[_2741]
    if mem[_2741] < ext_call.return_data[0]:
        revert with 0, 17
    if owner != msg.sender:
        revert with 0, 'Must be owner.'
    mem[mem[64] + 4] = msg.sender
    mem[mem[64] + 36] = this.address
    mem[mem[64] + 68] = _2745 - ext_call.return_data[0]
    require ext_code.size(arg2)
    call arg2.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, _2745 - ext_call.return_data[0]
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _2765 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_2765] == bool(mem[_2765])
    mem[mem[64] + 4] = arg6
    mem[mem[64] + 36] = _2745 - ext_call.return_data[0]
    require ext_code.size(arg2)
    call arg2.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(arg6), _2745 - ext_call.return_data[0]
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _2781 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_2781] == bool(mem[_2781])
    if not arg5:
        _2791 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        if 0 >= mem[_2791]:
            revert with 0, 50
        mem[_2791 + 32] = arg2
        if 1 >= mem[_2791]:
            revert with 0, 50
        mem[_2791 + 64] = arg1
        mem[_2791 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[_2791 + 100] = _2745 - ext_call.return_data[0]
        mem[_2791 + 132] = 64
        mem[_2791 + 164] = mem[_2791]
        idx = 0
        s = _2791 + 32
        t = _2791 + 196
        while idx < mem[_2791]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(arg6)
        staticcall arg6.mem[mem[64] len 4] with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len _2791 + (32 * mem[_2791]) + -mem[64] + 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _3423 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _3439 = mem[_3423]
        require mem[_3423] <= test266151307()
        require _3423 + mem[_3423] + 31 < _3423 + return_data.size
        _3455 = mem[_3423 + mem[_3423]]
        if mem[_3423 + mem[_3423]] > test266151307():
            revert with 0, 65
        if _3423 + ceil32(return_data.size) + ceil32(32 * mem[_3423 + mem[_3423]]) + 1 > test266151307() or ceil32(32 * mem[_3423 + mem[_3423]]) + 1 < 0:
            revert with 0, 65
        mem[64] = _3423 + ceil32(return_data.size) + ceil32(32 * mem[_3423 + mem[_3423]]) + 1
        mem[_3423 + ceil32(return_data.size)] = _3455
        require return_data.size >= _3439 + (32 * _3455) + 32
        mem[_3423 + ceil32(return_data.size) + 32 len 32 * _3455] = mem[_3423 + _3439 + 32 len 32 * _3455]
        if mem[_2791] < 1:
            revert with 0, 17
        if mem[_2791] - 1 >= _3455:
            revert with 0, 50
        _3951 = mem[(32 * mem[_2791] - 1) + _3423 + ceil32(return_data.size) + 32]
        if mem[(32 * mem[_2791] - 1) + _3423 + ceil32(return_data.size) + 32] and arg4 > -1 / mem[(32 * mem[_2791] - 1) + _3423 + ceil32(return_data.size) + 32]:
            revert with 0, 17
        if mem[_2791] < 1:
            revert with 0, 17
        if mem[_2791] - 1 >= _3455:
            revert with 0, 50
        _3999 = mem[(32 * mem[_2791] - 1) + _3423 + ceil32(return_data.size) + 32]
        if mem[(32 * mem[_2791] - 1) + _3423 + ceil32(return_data.size) + 32] < mem[(32 * mem[_2791] - 1) + _3423 + ceil32(return_data.size) + 32] * arg4 / 10000:
            revert with 0, 17
        _4015 = mem[64]
        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _2745 - ext_call.return_data[0]
        mem[mem[64] + 36] = _3999 - (_3951 * arg4 / 10000)
        mem[mem[64] + 68] = 160
        _4031 = mem[_2791]
        mem[mem[64] + 164] = mem[_2791]
        idx = 0
        s = _2791 + 32
        t = mem[64] + 196
        while idx < _4031:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_4015 + 100] = msg.sender
        mem[_4015 + 132] = block.timestamp
        require ext_code.size(arg6)
        call arg6.mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _4015 + (32 * _4031) + -mem[64] + 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _4351 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _4367 = mem[_4351]
        require mem[_4351] <= test266151307()
        require _4351 + mem[_4351] + 31 < _4351 + return_data.size
        _4383 = mem[_4351 + mem[_4351]]
        if mem[_4351 + mem[_4351]] > test266151307():
            revert with 0, 65
        if _4351 + ceil32(return_data.size) + ceil32(32 * mem[_4351 + mem[_4351]]) + 1 > test266151307() or ceil32(32 * mem[_4351 + mem[_4351]]) + 1 < 0:
            revert with 0, 65
        mem[64] = _4351 + ceil32(return_data.size) + ceil32(32 * mem[_4351 + mem[_4351]]) + 1
        mem[_4351 + ceil32(return_data.size)] = _4383
        require return_data.size >= _4367 + (32 * _4383) + 32
        mem[_4351 + ceil32(return_data.size) + 32 len 32 * _4383] = mem[_4351 + _4367 + 32 len 32 * _4383]
        mem[mem[64] + 4] = msg.sender
        require ext_code.size(arg1)
        staticcall arg1.0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _4639 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _4655 = mem[_4639]
        if not mem[_4639]:
            revert with 0, '', 0
        s = 0
        idx = mem[_4639]
        while idx:
            if s == -1:
                revert with 0, 17
            s = s + 1
            idx = idx / 10
            continue 
        if s > test266151307():
            revert with 0, 65
        _4783 = mem[64]
        mem[mem[64]] = s
        mem[64] = mem[64] + ceil32(s) + 32
        if not s:
            t = s
            idx = _4655
            while idx:
                if t < 1:
                    revert with 0, 17
                if idx / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                    revert with 0, 17
                if idx < 10 * idx / 10:
                    revert with 0, 17
                if 48 > -uint8(idx - (10 * idx / 10)) + 255:
                    revert with 0, 17
                if t - 1 >= mem[_4783]:
                    revert with 0, 50
                mem[t + _4783 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _5063 = mem[_4783]
            mem[mem[64] + 36] = mem[_4783]
            mem[mem[64] + 68 len ceil32(_5063)] = mem[_4783 + 32 len ceil32(_5063)]
            if ceil32(_5063) > _5063:
                mem[mem[64] + _5063 + 68] = 0
            revert with 0, 32, mem[mem[64] + 36 len ceil32(_5063) + 32]
        mem[_4783 + 32 len s] = call.data[calldata.size len s]
        t = s
        idx = _4655
        while idx:
            if t < 1:
                revert with 0, 17
            if idx / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                revert with 0, 17
            if idx < 10 * idx / 10:
                revert with 0, 17
            if 48 > -uint8(idx - (10 * idx / 10)) + 255:
                revert with 0, 17
            if t - 1 >= mem[_4783]:
                revert with 0, 50
            mem[t + _4783 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        _5064 = mem[_4783]
        mem[mem[64] + 36] = mem[_4783]
        mem[mem[64] + 68 len ceil32(_5064)] = mem[_4783 + 32 len ceil32(_5064)]
        if ceil32(_5064) > _5064:
            mem[mem[64] + _5064 + 68] = 0
        revert with 0, 32, mem[mem[64] + 36 len ceil32(_5064) + 32]
    if 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 == arg2:
        _2802 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        if 0 >= mem[_2802]:
            revert with 0, 50
        mem[_2802 + 32] = arg2
        if 1 >= mem[_2802]:
            revert with 0, 50
        mem[_2802 + 64] = arg1
        mem[_2802 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[_2802 + 100] = _2745 - ext_call.return_data[0]
        mem[_2802 + 132] = 64
        mem[_2802 + 164] = mem[_2802]
        idx = 0
        s = _2802 + 32
        t = _2802 + 196
        while idx < mem[_2802]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(arg6)
        staticcall arg6.mem[mem[64] len 4] with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len _2802 + (32 * mem[_2802]) + -mem[64] + 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _3424 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _3440 = mem[_3424]
        require mem[_3424] <= test266151307()
        require _3424 + mem[_3424] + 31 < _3424 + return_data.size
        _3456 = mem[_3424 + mem[_3424]]
        if mem[_3424 + mem[_3424]] > test266151307():
            revert with 0, 65
        if _3424 + ceil32(return_data.size) + ceil32(32 * mem[_3424 + mem[_3424]]) + 1 > test266151307() or ceil32(32 * mem[_3424 + mem[_3424]]) + 1 < 0:
            revert with 0, 65
        mem[64] = _3424 + ceil32(return_data.size) + ceil32(32 * mem[_3424 + mem[_3424]]) + 1
        mem[_3424 + ceil32(return_data.size)] = _3456
        require return_data.size >= _3440 + (32 * _3456) + 32
        mem[_3424 + ceil32(return_data.size) + 32 len 32 * _3456] = mem[_3424 + _3440 + 32 len 32 * _3456]
        if mem[_2802] < 1:
            revert with 0, 17
        if mem[_2802] - 1 >= _3456:
            revert with 0, 50
        _3952 = mem[(32 * mem[_2802] - 1) + _3424 + ceil32(return_data.size) + 32]
        if mem[(32 * mem[_2802] - 1) + _3424 + ceil32(return_data.size) + 32] and arg4 > -1 / mem[(32 * mem[_2802] - 1) + _3424 + ceil32(return_data.size) + 32]:
            revert with 0, 17
        if mem[_2802] < 1:
            revert with 0, 17
        if mem[_2802] - 1 >= _3456:
            revert with 0, 50
        _4000 = mem[(32 * mem[_2802] - 1) + _3424 + ceil32(return_data.size) + 32]
        if mem[(32 * mem[_2802] - 1) + _3424 + ceil32(return_data.size) + 32] < mem[(32 * mem[_2802] - 1) + _3424 + ceil32(return_data.size) + 32] * arg4 / 10000:
            revert with 0, 17
        _4016 = mem[64]
        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _2745 - ext_call.return_data[0]
        mem[mem[64] + 36] = _4000 - (_3952 * arg4 / 10000)
        mem[mem[64] + 68] = 160
        _4032 = mem[_2802]
        mem[mem[64] + 164] = mem[_2802]
        idx = 0
        s = _2802 + 32
        t = mem[64] + 196
        while idx < _4032:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_4016 + 100] = msg.sender
        mem[_4016 + 132] = block.timestamp
        require ext_code.size(arg6)
        call arg6.mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _4016 + (32 * _4032) + -mem[64] + 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _4352 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _4368 = mem[_4352]
        require mem[_4352] <= test266151307()
        require _4352 + mem[_4352] + 31 < _4352 + return_data.size
        _4384 = mem[_4352 + mem[_4352]]
        if mem[_4352 + mem[_4352]] > test266151307():
            revert with 0, 65
        if _4352 + ceil32(return_data.size) + ceil32(32 * mem[_4352 + mem[_4352]]) + 1 > test266151307() or ceil32(32 * mem[_4352 + mem[_4352]]) + 1 < 0:
            revert with 0, 65
        mem[64] = _4352 + ceil32(return_data.size) + ceil32(32 * mem[_4352 + mem[_4352]]) + 1
        mem[_4352 + ceil32(return_data.size)] = _4384
        require return_data.size >= _4368 + (32 * _4384) + 32
        mem[_4352 + ceil32(return_data.size) + 32 len 32 * _4384] = mem[_4352 + _4368 + 32 len 32 * _4384]
        mem[mem[64] + 4] = msg.sender
        require ext_code.size(arg1)
        staticcall arg1.0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _4640 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _4656 = mem[_4640]
        if not mem[_4640]:
            revert with 0, '', 0
        s = 0
        idx = mem[_4640]
        while idx:
            if s == -1:
                revert with 0, 17
            s = s + 1
            idx = idx / 10
            continue 
        if s > test266151307():
            revert with 0, 65
        _4784 = mem[64]
        mem[mem[64]] = s
        mem[64] = mem[64] + ceil32(s) + 32
        if not s:
            t = s
            idx = _4656
            while idx:
                if t < 1:
                    revert with 0, 17
                if idx / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                    revert with 0, 17
                if idx < 10 * idx / 10:
                    revert with 0, 17
                if 48 > -uint8(idx - (10 * idx / 10)) + 255:
                    revert with 0, 17
                if t - 1 >= mem[_4784]:
                    revert with 0, 50
                mem[t + _4784 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            _5033 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _5065 = mem[_4784]
            mem[mem[64] + 36] = mem[_4784]
            mem[mem[64] + 68 len ceil32(_5065)] = mem[_4784 + 32 len ceil32(_5065)]
            if ceil32(_5065) <= _5065:
                revert with 0, 32, mem[mem[64] + 36 len ceil32(_5065) + 32]
            mem[mem[64] + _5065 + 68] = 0
            revert with memory
              from mem[64]
               len ceil32(_5065) + _5033 + -mem[64] + 68
        mem[_4784 + 32 len s] = call.data[calldata.size len s]
        t = s
        idx = _4656
        while idx:
            if t < 1:
                revert with 0, 17
            if idx / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                revert with 0, 17
            if idx < 10 * idx / 10:
                revert with 0, 17
            if 48 > -uint8(idx - (10 * idx / 10)) + 255:
                revert with 0, 17
            if t - 1 >= mem[_4784]:
                revert with 0, 50
            mem[t + _4784 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        _5034 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        _5066 = mem[_4784]
        mem[mem[64] + 36] = mem[_4784]
        mem[mem[64] + 68 len ceil32(_5066)] = mem[_4784 + 32 len ceil32(_5066)]
        if ceil32(_5066) <= _5066:
            revert with 0, 32, mem[mem[64] + 36 len ceil32(_5066) + 32]
        mem[mem[64] + _5066 + 68] = 0
        revert with memory
          from mem[64]
           len ceil32(_5066) + _5034 + -mem[64] + 68
    if 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 == arg1:
        _2820 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        if 0 >= mem[_2820]:
            revert with 0, 50
        mem[_2820 + 32] = arg2
        if 1 >= mem[_2820]:
            revert with 0, 50
        mem[_2820 + 64] = arg1
        mem[_2820 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[_2820 + 100] = _2745 - ext_call.return_data[0]
        mem[_2820 + 132] = 64
        mem[_2820 + 164] = mem[_2820]
        idx = 0
        s = _2820 + 32
        t = _2820 + 196
        while idx < mem[_2820]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(arg6)
        staticcall arg6.mem[mem[64] len 4] with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len _2820 + (32 * mem[_2820]) + -mem[64] + 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _3426 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _3442 = mem[_3426]
        require mem[_3426] <= test266151307()
        require _3426 + mem[_3426] + 31 < _3426 + return_data.size
        _3458 = mem[_3426 + mem[_3426]]
        if mem[_3426 + mem[_3426]] > test266151307():
            revert with 0, 65
        if _3426 + ceil32(return_data.size) + ceil32(32 * mem[_3426 + mem[_3426]]) + 1 > test266151307() or ceil32(32 * mem[_3426 + mem[_3426]]) + 1 < 0:
            revert with 0, 65
        mem[64] = _3426 + ceil32(return_data.size) + ceil32(32 * mem[_3426 + mem[_3426]]) + 1
        mem[_3426 + ceil32(return_data.size)] = _3458
        require return_data.size >= _3442 + (32 * _3458) + 32
        mem[_3426 + ceil32(return_data.size) + 32 len 32 * _3458] = mem[_3426 + _3442 + 32 len 32 * _3458]
        if mem[_2820] < 1:
            revert with 0, 17
        if mem[_2820] - 1 >= _3458:
            revert with 0, 50
        _3954 = mem[(32 * mem[_2820] - 1) + _3426 + ceil32(return_data.size) + 32]
        if mem[(32 * mem[_2820] - 1) + _3426 + ceil32(return_data.size) + 32] and arg4 > -1 / mem[(32 * mem[_2820] - 1) + _3426 + ceil32(return_data.size) + 32]:
            revert with 0, 17
        if mem[_2820] < 1:
            revert with 0, 17
        if mem[_2820] - 1 >= _3458:
            revert with 0, 50
        _4002 = mem[(32 * mem[_2820] - 1) + _3426 + ceil32(return_data.size) + 32]
        if mem[(32 * mem[_2820] - 1) + _3426 + ceil32(return_data.size) + 32] < mem[(32 * mem[_2820] - 1) + _3426 + ceil32(return_data.size) + 32] * arg4 / 10000:
            revert with 0, 17
        _4018 = mem[64]
        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _2745 - ext_call.return_data[0]
        mem[mem[64] + 36] = _4002 - (_3954 * arg4 / 10000)
        mem[mem[64] + 68] = 160
        _4034 = mem[_2820]
        mem[mem[64] + 164] = mem[_2820]
        idx = 0
        s = _2820 + 32
        t = mem[64] + 196
        while idx < _4034:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_4018 + 100] = msg.sender
        mem[_4018 + 132] = block.timestamp
        require ext_code.size(arg6)
        call arg6.mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _4018 + (32 * _4034) + -mem[64] + 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _4354 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _4370 = mem[_4354]
        require mem[_4354] <= test266151307()
        require _4354 + mem[_4354] + 31 < _4354 + return_data.size
        _4386 = mem[_4354 + mem[_4354]]
        if mem[_4354 + mem[_4354]] > test266151307():
            revert with 0, 65
        if _4354 + ceil32(return_data.size) + ceil32(32 * mem[_4354 + mem[_4354]]) + 1 > test266151307() or ceil32(32 * mem[_4354 + mem[_4354]]) + 1 < 0:
            revert with 0, 65
        mem[64] = _4354 + ceil32(return_data.size) + ceil32(32 * mem[_4354 + mem[_4354]]) + 1
        mem[_4354 + ceil32(return_data.size)] = _4386
        require return_data.size >= _4370 + (32 * _4386) + 32
        mem[_4354 + ceil32(return_data.size) + 32 len 32 * _4386] = mem[_4354 + _4370 + 32 len 32 * _4386]
        mem[mem[64] + 4] = msg.sender
        require ext_code.size(arg1)
        staticcall arg1.0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _4642 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _4658 = mem[_4642]
        if not mem[_4642]:
            revert with 0, '', 0
        s = 0
        idx = mem[_4642]
        while idx:
            if s == -1:
                revert with 0, 17
            s = s + 1
            idx = idx / 10
            continue 
        if s > test266151307():
            revert with 0, 65
        _4786 = mem[64]
        mem[mem[64]] = s
        mem[64] = mem[64] + ceil32(s) + 32
        if not s:
            t = s
            idx = _4658
            while idx:
                if t < 1:
                    revert with 0, 17
                if idx / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                    revert with 0, 17
                if idx < 10 * idx / 10:
                    revert with 0, 17
                if 48 > -uint8(idx - (10 * idx / 10)) + 255:
                    revert with 0, 17
                if t - 1 >= mem[_4786]:
                    revert with 0, 50
                mem[t + _4786 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            _5037 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _5069 = mem[_4786]
            mem[mem[64] + 36] = mem[_4786]
            mem[mem[64] + 68 len ceil32(_5069)] = mem[_4786 + 32 len ceil32(_5069)]
            if ceil32(_5069) <= _5069:
                revert with 0, 32, mem[mem[64] + 36 len ceil32(_5069) + 32]
            mem[mem[64] + _5069 + 68] = 0
            revert with memory
              from mem[64]
               len ceil32(_5069) + _5037 + -mem[64] + 68
        mem[_4786 + 32 len s] = call.data[calldata.size len s]
        t = s
        idx = _4658
        while idx:
            if t < 1:
                revert with 0, 17
            if idx / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                revert with 0, 17
            if idx < 10 * idx / 10:
                revert with 0, 17
            if 48 > -uint8(idx - (10 * idx / 10)) + 255:
                revert with 0, 17
            if t - 1 >= mem[_4786]:
                revert with 0, 50
            mem[t + _4786 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        _5038 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        _5070 = mem[_4786]
        mem[mem[64] + 36] = mem[_4786]
        mem[mem[64] + 68 len ceil32(_5070)] = mem[_4786 + 32 len ceil32(_5070)]
        if ceil32(_5070) <= _5070:
            revert with 0, 32, mem[mem[64] + 36 len ceil32(_5070) + 32]
        mem[mem[64] + _5070 + 68] = 0
        revert with memory
          from mem[64]
           len ceil32(_5070) + _5038 + -mem[64] + 68
    _2818 = mem[64]
    mem[mem[64]] = 3
    mem[64] = mem[64] + 128
    if 0 >= mem[_2818]:
        revert with 0, 50
    mem[_2818 + 32] = arg2
    if 1 >= mem[_2818]:
        revert with 0, 50
    mem[_2818 + 64] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
    if 2 >= mem[_2818]:
        revert with 0, 50
    mem[_2818 + 96] = arg1
    mem[_2818 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[_2818 + 132] = _2745 - ext_call.return_data[0]
    mem[_2818 + 164] = 64
    mem[_2818 + 196] = mem[_2818]
    idx = 0
    s = _2818 + 32
    t = _2818 + 228
    while idx < mem[_2818]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(arg6)
    staticcall arg6.mem[mem[64] len 4] with:
            gas gas_remaining wei
           args mem[mem[64] + 4 len _2818 + (32 * mem[_2818]) + -mem[64] + 224]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _3425 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _3441 = mem[_3425]
    require mem[_3425] <= test266151307()
    require _3425 + mem[_3425] + 31 < _3425 + return_data.size
    _3457 = mem[_3425 + mem[_3425]]
    if mem[_3425 + mem[_3425]] > test266151307():
        revert with 0, 65
    if _3425 + ceil32(return_data.size) + ceil32(32 * mem[_3425 + mem[_3425]]) + 1 > test266151307() or ceil32(32 * mem[_3425 + mem[_3425]]) + 1 < 0:
        revert with 0, 65
    mem[64] = _3425 + ceil32(return_data.size) + ceil32(32 * mem[_3425 + mem[_3425]]) + 1
    mem[_3425 + ceil32(return_data.size)] = _3457
    require return_data.size >= _3441 + (32 * _3457) + 32
    mem[_3425 + ceil32(return_data.size) + 32 len 32 * _3457] = mem[_3425 + _3441 + 32 len 32 * _3457]
    if mem[_2818] < 1:
        revert with 0, 17
    if mem[_2818] - 1 >= _3457:
        revert with 0, 50
    _3953 = mem[(32 * mem[_2818] - 1) + _3425 + ceil32(return_data.size) + 32]
    if mem[(32 * mem[_2818] - 1) + _3425 + ceil32(return_data.size) + 32] and arg4 > -1 / mem[(32 * mem[_2818] - 1) + _3425 + ceil32(return_data.size) + 32]:
        revert with 0, 17
    if mem[_2818] < 1:
        revert with 0, 17
    if mem[_2818] - 1 >= _3457:
        revert with 0, 50
    _4001 = mem[(32 * mem[_2818] - 1) + _3425 + ceil32(return_data.size) + 32]
    if mem[(32 * mem[_2818] - 1) + _3425 + ceil32(return_data.size) + 32] < mem[(32 * mem[_2818] - 1) + _3425 + ceil32(return_data.size) + 32] * arg4 / 10000:
        revert with 0, 17
    _4017 = mem[64]
    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = _2745 - ext_call.return_data[0]
    mem[mem[64] + 36] = _4001 - (_3953 * arg4 / 10000)
    mem[mem[64] + 68] = 160
    _4033 = mem[_2818]
    mem[mem[64] + 164] = mem[_2818]
    idx = 0
    s = _2818 + 32
    t = mem[64] + 196
    while idx < _4033:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_4017 + 100] = msg.sender
    mem[_4017 + 132] = block.timestamp
    require ext_code.size(arg6)
    call arg6.mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len _4017 + (32 * _4033) + -mem[64] + 192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _4353 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _4369 = mem[_4353]
    require mem[_4353] <= test266151307()
    require _4353 + mem[_4353] + 31 < _4353 + return_data.size
    _4385 = mem[_4353 + mem[_4353]]
    if mem[_4353 + mem[_4353]] > test266151307():
        revert with 0, 65
    if _4353 + ceil32(return_data.size) + ceil32(32 * mem[_4353 + mem[_4353]]) + 1 > test266151307() or ceil32(32 * mem[_4353 + mem[_4353]]) + 1 < 0:
        revert with 0, 65
    mem[64] = _4353 + ceil32(return_data.size) + ceil32(32 * mem[_4353 + mem[_4353]]) + 1
    mem[_4353 + ceil32(return_data.size)] = _4385
    require return_data.size >= _4369 + (32 * _4385) + 32
    mem[_4353 + ceil32(return_data.size) + 32 len 32 * _4385] = mem[_4353 + _4369 + 32 len 32 * _4385]
    mem[mem[64] + 4] = msg.sender
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _4641 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _4657 = mem[_4641]
    if not mem[_4641]:
        revert with 0, '', 0
    s = 0
    idx = mem[_4641]
    while idx:
        if s == -1:
            revert with 0, 17
        s = s + 1
        idx = idx / 10
        continue 
    if s > test266151307():
        revert with 0, 65
    _4785 = mem[64]
    mem[mem[64]] = s
    mem[64] = mem[64] + ceil32(s) + 32
    if not s:
        t = s
        idx = _4657
        while idx:
            if t < 1:
                revert with 0, 17
            if idx / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                revert with 0, 17
            if idx < 10 * idx / 10:
                revert with 0, 17
            if 48 > -uint8(idx - (10 * idx / 10)) + 255:
                revert with 0, 17
            if t - 1 >= mem[_4785]:
                revert with 0, 50
            mem[t + _4785 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        _5067 = mem[_4785]
        mem[mem[64] + 36] = mem[_4785]
        mem[mem[64] + 68 len ceil32(_5067)] = mem[_4785 + 32 len ceil32(_5067)]
        if ceil32(_5067) > _5067:
            mem[mem[64] + _5067 + 68] = 0
        revert with 0, 32, mem[mem[64] + 36 len ceil32(_5067) + 32]
    mem[_4785 + 32 len s] = call.data[calldata.size len s]
    t = s
    idx = _4657
    while idx:
        if t < 1:
            revert with 0, 17
        if idx / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
            revert with 0, 17
        if idx < 10 * idx / 10:
            revert with 0, 17
        if 48 > -uint8(idx - (10 * idx / 10)) + 255:
            revert with 0, 17
        if t - 1 >= mem[_4785]:
            revert with 0, 50
        mem[t + _4785 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    _5036 = mem[64]
    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = 32
    _5068 = mem[_4785]
    mem[mem[64] + 36] = mem[_4785]
    mem[mem[64] + 68 len ceil32(_5068)] = mem[_4785 + 32 len ceil32(_5068)]
    if ceil32(_5068) <= _5068:
        revert with 0, 32, mem[mem[64] + 36 len ceil32(_5068) + 32]
    mem[mem[64] + _5068 + 68] = 0
    revert with memory
      from mem[64]
       len ceil32(_5068) + _5036 + -mem[64] + 68
}



}
