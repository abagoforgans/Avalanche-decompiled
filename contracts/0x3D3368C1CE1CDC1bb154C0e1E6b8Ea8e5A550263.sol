contract main {




// =====================  Runtime code  =====================


#
#  - swapBuybackTest(address arg1, address arg2, uint256 arg3, uint256 arg4, bool arg5, address arg6)
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
    mem[(6 * ceil32(return_data.size)) + 128] = arg1
    if not arg5:
        mem[(6 * ceil32(return_data.size)) + 160] = arg2
        mem[(6 * ceil32(return_data.size)) + 192] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
        mem[(6 * ceil32(return_data.size)) + 196] = 0
        mem[(6 * ceil32(return_data.size)) + 228] = arg4
        mem[(6 * ceil32(return_data.size)) + 260] = 160
        mem[(6 * ceil32(return_data.size)) + 356] = 2
        idx = 0
        s = (6 * ceil32(return_data.size)) + 128
        t = (6 * ceil32(return_data.size)) + 388
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(6 * ceil32(return_data.size)) + 292] = msg.sender
        mem[(6 * ceil32(return_data.size)) + 324] = block.timestamp
        require ext_code.size(arg6)
        call arg6.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
             gas gas_remaining wei
            args 0, arg4, 160, msg.sender, block.timestamp, 2, mem[(6 * ceil32(return_data.size)) + 388 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(6 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (7 * ceil32(return_data.size)) + 192
        require return_data.size >= 32
        require mem[(6 * ceil32(return_data.size)) + 192 len 4], 0 <= test266151307()
        require (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], 0 + 223 < (6 * ceil32(return_data.size)) + return_data.size + 192
        if mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], 0 + 192] > test266151307():
            revert with 0, 65
        if (7 * ceil32(return_data.size)) + ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 193 > test266151307() or ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 1 < 0:
            revert with 0, 65
        require return_data.size >= mem[(6 * ceil32(return_data.size)) + 192 len 4], 0 + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 32
    else:
        if 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 == arg1:
            mem[(6 * ceil32(return_data.size)) + 160] = arg2
            mem[(6 * ceil32(return_data.size)) + 192] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
            mem[(6 * ceil32(return_data.size)) + 196] = 0
            mem[(6 * ceil32(return_data.size)) + 228] = arg4
            mem[(6 * ceil32(return_data.size)) + 260] = 160
            mem[(6 * ceil32(return_data.size)) + 356] = 2
            idx = 0
            s = (6 * ceil32(return_data.size)) + 128
            t = (6 * ceil32(return_data.size)) + 388
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(6 * ceil32(return_data.size)) + 292] = msg.sender
            mem[(6 * ceil32(return_data.size)) + 324] = block.timestamp
            require ext_code.size(arg6)
            call arg6.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args 0, arg4, 160, msg.sender, block.timestamp, 2, mem[(6 * ceil32(return_data.size)) + 388 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(6 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (7 * ceil32(return_data.size)) + 192
            require return_data.size >= 32
            require mem[(6 * ceil32(return_data.size)) + 192 len 4], 0 <= test266151307()
            require (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], 0 + 223 < (6 * ceil32(return_data.size)) + return_data.size + 192
            if mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], 0 + 192] > test266151307():
                revert with 0, 65
            if (7 * ceil32(return_data.size)) + ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 193 > test266151307() or ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 1 < 0:
                revert with 0, 65
            require return_data.size >= mem[(6 * ceil32(return_data.size)) + 192 len 4], 0 + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 32
        else:
            if 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 == arg2:
                mem[(6 * ceil32(return_data.size)) + 160] = arg2
                mem[(6 * ceil32(return_data.size)) + 192] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                mem[(6 * ceil32(return_data.size)) + 196] = 0
                mem[(6 * ceil32(return_data.size)) + 228] = arg4
                mem[(6 * ceil32(return_data.size)) + 260] = 160
                mem[(6 * ceil32(return_data.size)) + 356] = 2
                idx = 0
                s = (6 * ceil32(return_data.size)) + 128
                t = (6 * ceil32(return_data.size)) + 388
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(6 * ceil32(return_data.size)) + 292] = msg.sender
                mem[(6 * ceil32(return_data.size)) + 324] = block.timestamp
                require ext_code.size(arg6)
                call arg6.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args 0, arg4, 160, msg.sender, block.timestamp, 2, mem[(6 * ceil32(return_data.size)) + 388 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(6 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (7 * ceil32(return_data.size)) + 192
                require return_data.size >= 32
                require mem[(6 * ceil32(return_data.size)) + 192 len 4], 0 <= test266151307()
                require (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], 0 + 223 < (6 * ceil32(return_data.size)) + return_data.size + 192
                if mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], 0 + 192] > test266151307():
                    revert with 0, 65
                if (7 * ceil32(return_data.size)) + ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 193 > test266151307() or ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 1 < 0:
                    revert with 0, 65
                require return_data.size >= mem[(6 * ceil32(return_data.size)) + 192 len 4], 0 + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 32
            else:
                mem[(6 * ceil32(return_data.size)) + 160] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                mem[(6 * ceil32(return_data.size)) + 192] = arg2
                mem[(6 * ceil32(return_data.size)) + 224] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                mem[(6 * ceil32(return_data.size)) + 228] = 0
                mem[(6 * ceil32(return_data.size)) + 260] = arg4
                mem[(6 * ceil32(return_data.size)) + 292] = 160
                mem[(6 * ceil32(return_data.size)) + 388] = 3
                idx = 0
                s = (6 * ceil32(return_data.size)) + 128
                t = (6 * ceil32(return_data.size)) + 420
                while idx < 3:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(6 * ceil32(return_data.size)) + 324] = msg.sender
                mem[(6 * ceil32(return_data.size)) + 356] = block.timestamp
                require ext_code.size(arg6)
                call arg6.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args 0, arg4, 160, msg.sender, block.timestamp, 3, mem[(6 * ceil32(return_data.size)) + 420 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(6 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (7 * ceil32(return_data.size)) + 224
                require return_data.size >= 32
                require mem[(6 * ceil32(return_data.size)) + 224 len 4], 0 <= test266151307()
                require (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], 0 + 255 < (6 * ceil32(return_data.size)) + return_data.size + 224
                if mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], 0 + 224] > test266151307():
                    revert with 0, 65
                if (7 * ceil32(return_data.size)) + ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], 0 + 224]) + 225 > test266151307() or ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], 0 + 224]) + 1 < 0:
                    revert with 0, 65
                require return_data.size >= mem[(6 * ceil32(return_data.size)) + 224 len 4], 0 + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], 0 + 224]) + 32
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
        _140 = mem[(6 * ceil32(return_data.size)) + 192 len 4], 0
        require mem[(6 * ceil32(return_data.size)) + 192 len 4], 0 <= test266151307()
        require (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], 0 + 223 < (6 * ceil32(return_data.size)) + return_data.size + 192
        _144 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], 0 + 192]
        if mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], 0 + 192] > test266151307():
            revert with 0, 65
        if (7 * ceil32(return_data.size)) + ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 193 > test266151307() or ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 1 < 0:
            revert with 0, 65
        mem[64] = (7 * ceil32(return_data.size)) + ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 193
        mem[(7 * ceil32(return_data.size)) + 192] = _144
        require return_data.size >= _140 + (32 * _144) + 32
        mem[(7 * ceil32(return_data.size)) + 224 len 32 * _144] = mem[(6 * ceil32(return_data.size)) + _140 + 224 len 32 * _144]
        if 1 >= _144:
            revert with 0, 50
        _228 = mem[(7 * ceil32(return_data.size)) + 256]
        if mem[(7 * ceil32(return_data.size)) + 256] and arg4 > -1 / mem[(7 * ceil32(return_data.size)) + 256]:
            revert with 0, 17
        if 1 >= _144:
            revert with 0, 50
        _240 = mem[(7 * ceil32(return_data.size)) + 256]
        if mem[(7 * ceil32(return_data.size)) + 256] < mem[(7 * ceil32(return_data.size)) + 256] * arg4 / 10000:
            revert with 0, 17
        mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 0
        mem[mem[64] + 36] = _240 - (_228 * arg4 / 10000)
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
        mem[mem[64] + 100] = msg.sender
        mem[mem[64] + 132] = block.timestamp
        require ext_code.size(arg6)
        call arg6.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
             gas gas_remaining wei
            args 0, _240 - (_228 * arg4 / 10000), 160, msg.sender, block.timestamp, 2, mem[mem[64] + 196 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _288 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_288] <= test266151307()
        require _288 + mem[_288] + 31 < _288 + return_data.size
        if mem[_288 + mem[_288]] > test266151307():
            revert with 0, 65
        if _288 + ceil32(return_data.size) + ceil32(32 * mem[_288 + mem[_288]]) + 1 > test266151307() or ceil32(32 * mem[_288 + mem[_288]]) + 1 < 0:
            revert with 0, 65
        require return_data.size >= mem[_288] + (32 * mem[_288 + mem[_288]]) + 32
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
            _141 = mem[(6 * ceil32(return_data.size)) + 192 len 4], 0
            require mem[(6 * ceil32(return_data.size)) + 192 len 4], 0 <= test266151307()
            require (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], 0 + 223 < (6 * ceil32(return_data.size)) + return_data.size + 192
            _145 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], 0 + 192]
            if mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], 0 + 192] > test266151307():
                revert with 0, 65
            if (7 * ceil32(return_data.size)) + ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 193 > test266151307() or ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 1 < 0:
                revert with 0, 65
            mem[64] = (7 * ceil32(return_data.size)) + ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 193
            mem[(7 * ceil32(return_data.size)) + 192] = _145
            require return_data.size >= _141 + (32 * _145) + 32
            mem[(7 * ceil32(return_data.size)) + 224 len 32 * _145] = mem[(6 * ceil32(return_data.size)) + _141 + 224 len 32 * _145]
            if 1 >= _145:
                revert with 0, 50
            _229 = mem[(7 * ceil32(return_data.size)) + 256]
            if mem[(7 * ceil32(return_data.size)) + 256] and arg4 > -1 / mem[(7 * ceil32(return_data.size)) + 256]:
                revert with 0, 17
            if 1 >= _145:
                revert with 0, 50
            _241 = mem[(7 * ceil32(return_data.size)) + 256]
            if mem[(7 * ceil32(return_data.size)) + 256] < mem[(7 * ceil32(return_data.size)) + 256] * arg4 / 10000:
                revert with 0, 17
            mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 0
            mem[mem[64] + 36] = _241 - (_229 * arg4 / 10000)
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
            mem[mem[64] + 100] = msg.sender
            mem[mem[64] + 132] = block.timestamp
            require ext_code.size(arg6)
            call arg6.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args 0, _241 - (_229 * arg4 / 10000), 160, msg.sender, block.timestamp, 2, mem[mem[64] + 196 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _289 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_289] <= test266151307()
            require _289 + mem[_289] + 31 < _289 + return_data.size
            if mem[_289 + mem[_289]] > test266151307():
                revert with 0, 65
            if _289 + ceil32(return_data.size) + ceil32(32 * mem[_289 + mem[_289]]) + 1 > test266151307() or ceil32(32 * mem[_289 + mem[_289]]) + 1 < 0:
                revert with 0, 65
            require return_data.size >= mem[_289] + (32 * mem[_289 + mem[_289]]) + 32
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
                _143 = mem[(6 * ceil32(return_data.size)) + 192 len 4], 0
                require mem[(6 * ceil32(return_data.size)) + 192 len 4], 0 <= test266151307()
                require (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], 0 + 223 < (6 * ceil32(return_data.size)) + return_data.size + 192
                _147 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], 0 + 192]
                if mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], 0 + 192] > test266151307():
                    revert with 0, 65
                if (7 * ceil32(return_data.size)) + ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 193 > test266151307() or ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 1 < 0:
                    revert with 0, 65
                mem[64] = (7 * ceil32(return_data.size)) + ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 193
                mem[(7 * ceil32(return_data.size)) + 192] = _147
                require return_data.size >= _143 + (32 * _147) + 32
                mem[(7 * ceil32(return_data.size)) + 224 len 32 * _147] = mem[(6 * ceil32(return_data.size)) + _143 + 224 len 32 * _147]
                if 1 >= _147:
                    revert with 0, 50
                _231 = mem[(7 * ceil32(return_data.size)) + 256]
                if mem[(7 * ceil32(return_data.size)) + 256] and arg4 > -1 / mem[(7 * ceil32(return_data.size)) + 256]:
                    revert with 0, 17
                if 1 >= _147:
                    revert with 0, 50
                _243 = mem[(7 * ceil32(return_data.size)) + 256]
                if mem[(7 * ceil32(return_data.size)) + 256] < mem[(7 * ceil32(return_data.size)) + 256] * arg4 / 10000:
                    revert with 0, 17
                mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 0
                mem[mem[64] + 36] = _243 - (_231 * arg4 / 10000)
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
                mem[mem[64] + 100] = msg.sender
                mem[mem[64] + 132] = block.timestamp
                require ext_code.size(arg6)
                call arg6.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args 0, _243 - (_231 * arg4 / 10000), 160, msg.sender, block.timestamp, 2, mem[mem[64] + 196 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _291 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_291] <= test266151307()
                require _291 + mem[_291] + 31 < _291 + return_data.size
                if mem[_291 + mem[_291]] > test266151307():
                    revert with 0, 65
                if _291 + ceil32(return_data.size) + ceil32(32 * mem[_291 + mem[_291]]) + 1 > test266151307() or ceil32(32 * mem[_291 + mem[_291]]) + 1 < 0:
                    revert with 0, 65
                require return_data.size >= mem[_291] + (32 * mem[_291 + mem[_291]]) + 32
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
                _142 = mem[(6 * ceil32(return_data.size)) + 224 len 4], 0
                require mem[(6 * ceil32(return_data.size)) + 224 len 4], 0 <= test266151307()
                require (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], 0 + 255 < (6 * ceil32(return_data.size)) + return_data.size + 224
                _146 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], 0 + 224]
                if mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], 0 + 224] > test266151307():
                    revert with 0, 65
                if (7 * ceil32(return_data.size)) + ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], 0 + 224]) + 225 > test266151307() or ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], 0 + 224]) + 1 < 0:
                    revert with 0, 65
                mem[64] = (7 * ceil32(return_data.size)) + ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], 0 + 224]) + 225
                mem[(7 * ceil32(return_data.size)) + 224] = _146
                require return_data.size >= _142 + (32 * _146) + 32
                mem[(7 * ceil32(return_data.size)) + 256 len 32 * _146] = mem[(6 * ceil32(return_data.size)) + _142 + 256 len 32 * _146]
                if 2 >= _146:
                    revert with 0, 50
                _230 = mem[(7 * ceil32(return_data.size)) + 320]
                if mem[(7 * ceil32(return_data.size)) + 320] and arg4 > -1 / mem[(7 * ceil32(return_data.size)) + 320]:
                    revert with 0, 17
                if 2 >= _146:
                    revert with 0, 50
                _242 = mem[(7 * ceil32(return_data.size)) + 320]
                if mem[(7 * ceil32(return_data.size)) + 320] < mem[(7 * ceil32(return_data.size)) + 320] * arg4 / 10000:
                    revert with 0, 17
                mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 0
                mem[mem[64] + 36] = _242 - (_230 * arg4 / 10000)
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
                mem[mem[64] + 100] = msg.sender
                mem[mem[64] + 132] = block.timestamp
                require ext_code.size(arg6)
                call arg6.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args 0, _242 - (_230 * arg4 / 10000), 160, msg.sender, block.timestamp, 3, mem[mem[64] + 196 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _290 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_290] <= test266151307()
                require _290 + mem[_290] + 31 < _290 + return_data.size
                if mem[_290 + mem[_290]] > test266151307():
                    revert with 0, 65
                if _290 + ceil32(return_data.size) + ceil32(32 * mem[_290 + mem[_290]]) + 1 > test266151307() or ceil32(32 * mem[_290 + mem[_290]]) + 1 < 0:
                    revert with 0, 65
                require return_data.size >= mem[_290] + (32 * mem[_290 + mem[_290]]) + 32
}

function swapBuyback(address arg1, address arg2, uint256 arg3, uint256 arg4, bool arg5, address arg6) payable {
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
        _477 = mem[(7 * ceil32(return_data.size)) + 192 len 4], 0
        require mem[(7 * ceil32(return_data.size)) + 192 len 4], 0 <= test266151307()
        require (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], 0 + 223 < (7 * ceil32(return_data.size)) + return_data.size + 192
        _481 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], 0 + 192]
        if mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], 0 + 192] > test266151307():
            revert with 0, 65
        if (8 * ceil32(return_data.size)) + ceil32(32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 193 > test266151307() or ceil32(32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 1 < 0:
            revert with 0, 65
        mem[64] = (8 * ceil32(return_data.size)) + ceil32(32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 193
        mem[(8 * ceil32(return_data.size)) + 192] = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], 0 + 192]
        require return_data.size >= _477 + (32 * _481) + 32
        mem[(8 * ceil32(return_data.size)) + 224 len 32 * _481] = mem[(7 * ceil32(return_data.size)) + _477 + 224 len 32 * _481]
        if 1 >= _481:
            revert with 0, 50
        _1089 = mem[(8 * ceil32(return_data.size)) + 256]
        if mem[(8 * ceil32(return_data.size)) + 256] and arg4 > -1 / mem[(8 * ceil32(return_data.size)) + 256]:
            revert with 0, 17
        if 1 >= _481:
            revert with 0, 50
        _1101 = mem[(8 * ceil32(return_data.size)) + 256]
        if mem[(8 * ceil32(return_data.size)) + 256] < mem[(8 * ceil32(return_data.size)) + 256] * arg4 / 10000:
            revert with 0, 17
        mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 0
        mem[mem[64] + 36] = _1101 - (_1089 * arg4 / 10000)
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
            args 0, _1101 - (_1089 * arg4 / 10000), 160, msg.sender, block.timestamp, 2, mem[mem[64] + 196 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1673 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1677 = mem[_1673]
        require mem[_1673] <= test266151307()
        require _1673 + mem[_1673] + 31 < _1673 + return_data.size
        _1681 = mem[_1673 + mem[_1673]]
        if mem[_1673 + mem[_1673]] > test266151307():
            revert with 0, 65
        if _1673 + ceil32(return_data.size) + ceil32(32 * mem[_1673 + mem[_1673]]) + 1 > test266151307() or ceil32(32 * mem[_1673 + mem[_1673]]) + 1 < 0:
            revert with 0, 65
        mem[64] = _1673 + ceil32(return_data.size) + ceil32(32 * mem[_1673 + mem[_1673]]) + 1
        mem[_1673 + ceil32(return_data.size)] = _1681
        require return_data.size >= _1677 + (32 * _1681) + 32
        mem[_1673 + ceil32(return_data.size) + 32 len 32 * _1681] = mem[_1673 + _1677 + 32 len 32 * _1681]
        mem[mem[64] + 4] = msg.sender
        require ext_code.size(arg2)
        staticcall arg2.0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _2229 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _2233 = mem[_2229]
        if mem[_2229] < ext_call.return_data[0]:
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
        _2253 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _2257 = mem[_2253]
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = this.address
        mem[mem[64] + 68] = _2233 - ext_call.return_data[0]
        require ext_code.size(arg2)
        call arg2.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, this.address, _2233 - ext_call.return_data[0]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _2269 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_2269] == bool(mem[_2269])
        mem[mem[64] + 4] = this.address
        require ext_code.size(arg2)
        staticcall arg2.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _2285 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _2289 = mem[_2285]
        if mem[_2285] < _2257:
            revert with 0, 17
        mem[mem[64] + 4] = arg6
        mem[mem[64] + 36] = _2289 - _2257
        require ext_code.size(arg2)
        call arg2.approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args address(arg6), _2289 - _2257
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _2301 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_2301] == bool(mem[_2301])
        if not arg5:
            _2309 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            if 0 >= mem[_2309]:
                revert with 0, 50
            mem[_2309 + 32] = arg2
            if 1 >= mem[_2309]:
                revert with 0, 50
            mem[_2309 + 64] = arg1
            mem[_2309 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_2309 + 100] = _2289 - _2257
            mem[_2309 + 132] = 64
            mem[_2309 + 164] = mem[_2309]
            idx = 0
            s = _2309 + 32
            t = _2309 + 196
            while idx < mem[_2309]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(arg6)
            staticcall arg6.mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _2309 + (32 * mem[_2309]) + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2777 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _2793 = mem[_2777]
            require mem[_2777] <= test266151307()
            require _2777 + mem[_2777] + 31 < _2777 + return_data.size
            _2809 = mem[_2777 + mem[_2777]]
            if mem[_2777 + mem[_2777]] > test266151307():
                revert with 0, 65
            if _2777 + ceil32(return_data.size) + ceil32(32 * mem[_2777 + mem[_2777]]) + 1 > test266151307() or ceil32(32 * mem[_2777 + mem[_2777]]) + 1 < 0:
                revert with 0, 65
            mem[64] = _2777 + ceil32(return_data.size) + ceil32(32 * mem[_2777 + mem[_2777]]) + 1
            mem[_2777 + ceil32(return_data.size)] = _2809
            require return_data.size >= _2793 + (32 * _2809) + 32
            mem[_2777 + ceil32(return_data.size) + 32 len 32 * _2809] = mem[_2777 + _2793 + 32 len 32 * _2809]
            if mem[_2309] < 1:
                revert with 0, 17
            if mem[_2309] - 1 >= _2809:
                revert with 0, 50
            _3145 = mem[(32 * mem[_2309] - 1) + _2777 + ceil32(return_data.size) + 32]
            if mem[(32 * mem[_2309] - 1) + _2777 + ceil32(return_data.size) + 32] and arg4 > -1 / mem[(32 * mem[_2309] - 1) + _2777 + ceil32(return_data.size) + 32]:
                revert with 0, 17
            if mem[_2309] < 1:
                revert with 0, 17
            if mem[_2309] - 1 >= _2809:
                revert with 0, 50
            _3193 = mem[(32 * mem[_2309] - 1) + _2777 + ceil32(return_data.size) + 32]
            if mem[(32 * mem[_2309] - 1) + _2777 + ceil32(return_data.size) + 32] < mem[(32 * mem[_2309] - 1) + _2777 + ceil32(return_data.size) + 32] * arg4 / 10000:
                revert with 0, 17
            _3209 = mem[64]
            mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _2289 - _2257
            mem[mem[64] + 36] = _3193 - (_3145 * arg4 / 10000)
            mem[mem[64] + 68] = 160
            _3225 = mem[_2309]
            mem[mem[64] + 164] = mem[_2309]
            idx = 0
            s = _2309 + 32
            t = mem[64] + 196
            while idx < _3225:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_3209 + 100] = msg.sender
            mem[_3209 + 132] = block.timestamp
            require ext_code.size(arg6)
            call arg6.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _3209 + (32 * _3225) + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3385 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_3385] <= test266151307()
            require _3385 + mem[_3385] + 31 < _3385 + return_data.size
            if mem[_3385 + mem[_3385]] > test266151307():
                revert with 0, 65
            if _3385 + ceil32(return_data.size) + ceil32(32 * mem[_3385 + mem[_3385]]) + 1 > test266151307() or ceil32(32 * mem[_3385 + mem[_3385]]) + 1 < 0:
                revert with 0, 65
            require return_data.size >= mem[_3385] + (32 * mem[_3385 + mem[_3385]]) + 32
        else:
            if 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 == arg2:
                _2318 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                if 0 >= mem[_2318]:
                    revert with 0, 50
                mem[_2318 + 32] = arg2
                if 1 >= mem[_2318]:
                    revert with 0, 50
                mem[_2318 + 64] = arg1
                mem[_2318 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_2318 + 100] = _2289 - _2257
                mem[_2318 + 132] = 64
                mem[_2318 + 164] = mem[_2318]
                idx = 0
                s = _2318 + 32
                t = _2318 + 196
                while idx < mem[_2318]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(arg6)
                staticcall arg6.mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _2318 + (32 * mem[_2318]) + -mem[64] + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2778 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2794 = mem[_2778]
                require mem[_2778] <= test266151307()
                require _2778 + mem[_2778] + 31 < _2778 + return_data.size
                _2810 = mem[_2778 + mem[_2778]]
                if mem[_2778 + mem[_2778]] > test266151307():
                    revert with 0, 65
                if _2778 + ceil32(return_data.size) + ceil32(32 * mem[_2778 + mem[_2778]]) + 1 > test266151307() or ceil32(32 * mem[_2778 + mem[_2778]]) + 1 < 0:
                    revert with 0, 65
                mem[64] = _2778 + ceil32(return_data.size) + ceil32(32 * mem[_2778 + mem[_2778]]) + 1
                mem[_2778 + ceil32(return_data.size)] = _2810
                require return_data.size >= _2794 + (32 * _2810) + 32
                mem[_2778 + ceil32(return_data.size) + 32 len 32 * _2810] = mem[_2778 + _2794 + 32 len 32 * _2810]
                if mem[_2318] < 1:
                    revert with 0, 17
                if mem[_2318] - 1 >= _2810:
                    revert with 0, 50
                _3146 = mem[(32 * mem[_2318] - 1) + _2778 + ceil32(return_data.size) + 32]
                if mem[(32 * mem[_2318] - 1) + _2778 + ceil32(return_data.size) + 32] and arg4 > -1 / mem[(32 * mem[_2318] - 1) + _2778 + ceil32(return_data.size) + 32]:
                    revert with 0, 17
                if mem[_2318] < 1:
                    revert with 0, 17
                if mem[_2318] - 1 >= _2810:
                    revert with 0, 50
                _3194 = mem[(32 * mem[_2318] - 1) + _2778 + ceil32(return_data.size) + 32]
                if mem[(32 * mem[_2318] - 1) + _2778 + ceil32(return_data.size) + 32] < mem[(32 * mem[_2318] - 1) + _2778 + ceil32(return_data.size) + 32] * arg4 / 10000:
                    revert with 0, 17
                _3210 = mem[64]
                mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _2289 - _2257
                mem[mem[64] + 36] = _3194 - (_3146 * arg4 / 10000)
                mem[mem[64] + 68] = 160
                _3226 = mem[_2318]
                mem[mem[64] + 164] = mem[_2318]
                idx = 0
                s = _2318 + 32
                t = mem[64] + 196
                while idx < _3226:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_3210 + 100] = msg.sender
                mem[_3210 + 132] = block.timestamp
                require ext_code.size(arg6)
                call arg6.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _3210 + (32 * _3226) + -mem[64] + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3386 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_3386] <= test266151307()
                require _3386 + mem[_3386] + 31 < _3386 + return_data.size
                if mem[_3386 + mem[_3386]] > test266151307():
                    revert with 0, 65
                if _3386 + ceil32(return_data.size) + ceil32(32 * mem[_3386 + mem[_3386]]) + 1 > test266151307() or ceil32(32 * mem[_3386 + mem[_3386]]) + 1 < 0:
                    revert with 0, 65
                require return_data.size >= mem[_3386] + (32 * mem[_3386 + mem[_3386]]) + 32
            else:
                if 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 == arg1:
                    _2332 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    if 0 >= mem[_2332]:
                        revert with 0, 50
                    mem[_2332 + 32] = arg2
                    if 1 >= mem[_2332]:
                        revert with 0, 50
                    mem[_2332 + 64] = arg1
                    mem[_2332 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_2332 + 100] = _2289 - _2257
                    mem[_2332 + 132] = 64
                    mem[_2332 + 164] = mem[_2332]
                    idx = 0
                    s = _2332 + 32
                    t = _2332 + 196
                    while idx < mem[_2332]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(arg6)
                    staticcall arg6.mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _2332 + (32 * mem[_2332]) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2780 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2796 = mem[_2780]
                    require mem[_2780] <= test266151307()
                    require _2780 + mem[_2780] + 31 < _2780 + return_data.size
                    _2812 = mem[_2780 + mem[_2780]]
                    if mem[_2780 + mem[_2780]] > test266151307():
                        revert with 0, 65
                    if _2780 + ceil32(return_data.size) + ceil32(32 * mem[_2780 + mem[_2780]]) + 1 > test266151307() or ceil32(32 * mem[_2780 + mem[_2780]]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = _2780 + ceil32(return_data.size) + ceil32(32 * mem[_2780 + mem[_2780]]) + 1
                    mem[_2780 + ceil32(return_data.size)] = _2812
                    require return_data.size >= _2796 + (32 * _2812) + 32
                    mem[_2780 + ceil32(return_data.size) + 32 len 32 * _2812] = mem[_2780 + _2796 + 32 len 32 * _2812]
                    if mem[_2332] < 1:
                        revert with 0, 17
                    if mem[_2332] - 1 >= _2812:
                        revert with 0, 50
                    _3148 = mem[(32 * mem[_2332] - 1) + _2780 + ceil32(return_data.size) + 32]
                    if mem[(32 * mem[_2332] - 1) + _2780 + ceil32(return_data.size) + 32] and arg4 > -1 / mem[(32 * mem[_2332] - 1) + _2780 + ceil32(return_data.size) + 32]:
                        revert with 0, 17
                    if mem[_2332] < 1:
                        revert with 0, 17
                    if mem[_2332] - 1 >= _2812:
                        revert with 0, 50
                    _3196 = mem[(32 * mem[_2332] - 1) + _2780 + ceil32(return_data.size) + 32]
                    if mem[(32 * mem[_2332] - 1) + _2780 + ceil32(return_data.size) + 32] < mem[(32 * mem[_2332] - 1) + _2780 + ceil32(return_data.size) + 32] * arg4 / 10000:
                        revert with 0, 17
                    _3212 = mem[64]
                    mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _2289 - _2257
                    mem[mem[64] + 36] = _3196 - (_3148 * arg4 / 10000)
                    mem[mem[64] + 68] = 160
                    _3228 = mem[_2332]
                    mem[mem[64] + 164] = mem[_2332]
                    idx = 0
                    s = _2332 + 32
                    t = mem[64] + 196
                    while idx < _3228:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_3212 + 100] = msg.sender
                    mem[_3212 + 132] = block.timestamp
                    require ext_code.size(arg6)
                    call arg6.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _3212 + (32 * _3228) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3388 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_3388] <= test266151307()
                    require _3388 + mem[_3388] + 31 < _3388 + return_data.size
                    if mem[_3388 + mem[_3388]] > test266151307():
                        revert with 0, 65
                    if _3388 + ceil32(return_data.size) + ceil32(32 * mem[_3388 + mem[_3388]]) + 1 > test266151307() or ceil32(32 * mem[_3388 + mem[_3388]]) + 1 < 0:
                        revert with 0, 65
                    require return_data.size >= mem[_3388] + (32 * mem[_3388 + mem[_3388]]) + 32
                else:
                    _2330 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    if 0 >= mem[_2330]:
                        revert with 0, 50
                    mem[_2330 + 32] = arg2
                    if 1 >= mem[_2330]:
                        revert with 0, 50
                    mem[_2330 + 64] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                    if 2 >= mem[_2330]:
                        revert with 0, 50
                    mem[_2330 + 96] = arg1
                    mem[_2330 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_2330 + 132] = _2289 - _2257
                    mem[_2330 + 164] = 64
                    mem[_2330 + 196] = mem[_2330]
                    idx = 0
                    s = _2330 + 32
                    t = _2330 + 228
                    while idx < mem[_2330]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(arg6)
                    staticcall arg6.mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _2330 + (32 * mem[_2330]) + -mem[64] + 224]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2779 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2795 = mem[_2779]
                    require mem[_2779] <= test266151307()
                    require _2779 + mem[_2779] + 31 < _2779 + return_data.size
                    _2811 = mem[_2779 + mem[_2779]]
                    if mem[_2779 + mem[_2779]] > test266151307():
                        revert with 0, 65
                    if _2779 + ceil32(return_data.size) + ceil32(32 * mem[_2779 + mem[_2779]]) + 1 > test266151307() or ceil32(32 * mem[_2779 + mem[_2779]]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = _2779 + ceil32(return_data.size) + ceil32(32 * mem[_2779 + mem[_2779]]) + 1
                    mem[_2779 + ceil32(return_data.size)] = _2811
                    require return_data.size >= _2795 + (32 * _2811) + 32
                    mem[_2779 + ceil32(return_data.size) + 32 len 32 * _2811] = mem[_2779 + _2795 + 32 len 32 * _2811]
                    if mem[_2330] < 1:
                        revert with 0, 17
                    if mem[_2330] - 1 >= _2811:
                        revert with 0, 50
                    _3147 = mem[(32 * mem[_2330] - 1) + _2779 + ceil32(return_data.size) + 32]
                    if mem[(32 * mem[_2330] - 1) + _2779 + ceil32(return_data.size) + 32] and arg4 > -1 / mem[(32 * mem[_2330] - 1) + _2779 + ceil32(return_data.size) + 32]:
                        revert with 0, 17
                    if mem[_2330] < 1:
                        revert with 0, 17
                    if mem[_2330] - 1 >= _2811:
                        revert with 0, 50
                    _3195 = mem[(32 * mem[_2330] - 1) + _2779 + ceil32(return_data.size) + 32]
                    if mem[(32 * mem[_2330] - 1) + _2779 + ceil32(return_data.size) + 32] < mem[(32 * mem[_2330] - 1) + _2779 + ceil32(return_data.size) + 32] * arg4 / 10000:
                        revert with 0, 17
                    _3211 = mem[64]
                    mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _2289 - _2257
                    mem[mem[64] + 36] = _3195 - (_3147 * arg4 / 10000)
                    mem[mem[64] + 68] = 160
                    _3227 = mem[_2330]
                    mem[mem[64] + 164] = mem[_2330]
                    idx = 0
                    s = _2330 + 32
                    t = mem[64] + 196
                    while idx < _3227:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_3211 + 100] = msg.sender
                    mem[_3211 + 132] = block.timestamp
                    require ext_code.size(arg6)
                    call arg6.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _3211 + (32 * _3227) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3387 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_3387] <= test266151307()
                    require _3387 + mem[_3387] + 31 < _3387 + return_data.size
                    if mem[_3387 + mem[_3387]] > test266151307():
                        revert with 0, 65
                    if _3387 + ceil32(return_data.size) + ceil32(32 * mem[_3387 + mem[_3387]]) + 1 > test266151307() or ceil32(32 * mem[_3387 + mem[_3387]]) + 1 < 0:
                        revert with 0, 65
                    require return_data.size >= mem[_3387] + (32 * mem[_3387 + mem[_3387]]) + 32
    else:
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
            _478 = mem[(7 * ceil32(return_data.size)) + 192 len 4], 0
            require mem[(7 * ceil32(return_data.size)) + 192 len 4], 0 <= test266151307()
            require (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], 0 + 223 < (7 * ceil32(return_data.size)) + return_data.size + 192
            _482 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], 0 + 192]
            if mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], 0 + 192] > test266151307():
                revert with 0, 65
            if (8 * ceil32(return_data.size)) + ceil32(32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 193 > test266151307() or ceil32(32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 1 < 0:
                revert with 0, 65
            mem[64] = (8 * ceil32(return_data.size)) + ceil32(32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 193
            mem[(8 * ceil32(return_data.size)) + 192] = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], 0 + 192]
            require return_data.size >= _478 + (32 * _482) + 32
            mem[(8 * ceil32(return_data.size)) + 224 len 32 * _482] = mem[(7 * ceil32(return_data.size)) + _478 + 224 len 32 * _482]
            if 1 >= _482:
                revert with 0, 50
            _1090 = mem[(8 * ceil32(return_data.size)) + 256]
            if mem[(8 * ceil32(return_data.size)) + 256] and arg4 > -1 / mem[(8 * ceil32(return_data.size)) + 256]:
                revert with 0, 17
            if 1 >= _482:
                revert with 0, 50
            _1102 = mem[(8 * ceil32(return_data.size)) + 256]
            if mem[(8 * ceil32(return_data.size)) + 256] < mem[(8 * ceil32(return_data.size)) + 256] * arg4 / 10000:
                revert with 0, 17
            mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 0
            mem[mem[64] + 36] = _1102 - (_1090 * arg4 / 10000)
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
                args 0, _1102 - (_1090 * arg4 / 10000), 160, msg.sender, block.timestamp, 2, mem[mem[64] + 196 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1674 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1678 = mem[_1674]
            require mem[_1674] <= test266151307()
            require _1674 + mem[_1674] + 31 < _1674 + return_data.size
            _1682 = mem[_1674 + mem[_1674]]
            if mem[_1674 + mem[_1674]] > test266151307():
                revert with 0, 65
            if _1674 + ceil32(return_data.size) + ceil32(32 * mem[_1674 + mem[_1674]]) + 1 > test266151307() or ceil32(32 * mem[_1674 + mem[_1674]]) + 1 < 0:
                revert with 0, 65
            mem[64] = _1674 + ceil32(return_data.size) + ceil32(32 * mem[_1674 + mem[_1674]]) + 1
            mem[_1674 + ceil32(return_data.size)] = _1682
            require return_data.size >= _1678 + (32 * _1682) + 32
            mem[_1674 + ceil32(return_data.size) + 32 len 32 * _1682] = mem[_1674 + _1678 + 32 len 32 * _1682]
            mem[mem[64] + 4] = msg.sender
            require ext_code.size(arg2)
            staticcall arg2.0x70a08231 with:
                    gas gas_remaining wei
                   args msg.sender
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2230 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _2234 = mem[_2230]
            if mem[_2230] < ext_call.return_data[0]:
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
            _2254 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _2258 = mem[_2254]
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = this.address
            mem[mem[64] + 68] = _2234 - ext_call.return_data[0]
            require ext_code.size(arg2)
            call arg2.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, this.address, _2234 - ext_call.return_data[0]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2270 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_2270] == bool(mem[_2270])
            mem[mem[64] + 4] = this.address
            require ext_code.size(arg2)
            staticcall arg2.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2286 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _2290 = mem[_2286]
            if mem[_2286] < _2258:
                revert with 0, 17
            mem[mem[64] + 4] = arg6
            mem[mem[64] + 36] = _2290 - _2258
            require ext_code.size(arg2)
            call arg2.approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args address(arg6), _2290 - _2258
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2302 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_2302] == bool(mem[_2302])
            if not arg5:
                _2311 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                if 0 >= mem[_2311]:
                    revert with 0, 50
                mem[_2311 + 32] = arg2
                if 1 >= mem[_2311]:
                    revert with 0, 50
                mem[_2311 + 64] = arg1
                mem[_2311 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_2311 + 100] = _2290 - _2258
                mem[_2311 + 132] = 64
                mem[_2311 + 164] = mem[_2311]
                idx = 0
                s = _2311 + 32
                t = _2311 + 196
                while idx < mem[_2311]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(arg6)
                staticcall arg6.mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _2311 + (32 * mem[_2311]) + -mem[64] + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2781 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2797 = mem[_2781]
                require mem[_2781] <= test266151307()
                require _2781 + mem[_2781] + 31 < _2781 + return_data.size
                _2813 = mem[_2781 + mem[_2781]]
                if mem[_2781 + mem[_2781]] > test266151307():
                    revert with 0, 65
                if _2781 + ceil32(return_data.size) + ceil32(32 * mem[_2781 + mem[_2781]]) + 1 > test266151307() or ceil32(32 * mem[_2781 + mem[_2781]]) + 1 < 0:
                    revert with 0, 65
                mem[64] = _2781 + ceil32(return_data.size) + ceil32(32 * mem[_2781 + mem[_2781]]) + 1
                mem[_2781 + ceil32(return_data.size)] = _2813
                require return_data.size >= _2797 + (32 * _2813) + 32
                mem[_2781 + ceil32(return_data.size) + 32 len 32 * _2813] = mem[_2781 + _2797 + 32 len 32 * _2813]
                if mem[_2311] < 1:
                    revert with 0, 17
                if mem[_2311] - 1 >= _2813:
                    revert with 0, 50
                _3149 = mem[(32 * mem[_2311] - 1) + _2781 + ceil32(return_data.size) + 32]
                if mem[(32 * mem[_2311] - 1) + _2781 + ceil32(return_data.size) + 32] and arg4 > -1 / mem[(32 * mem[_2311] - 1) + _2781 + ceil32(return_data.size) + 32]:
                    revert with 0, 17
                if mem[_2311] < 1:
                    revert with 0, 17
                if mem[_2311] - 1 >= _2813:
                    revert with 0, 50
                _3197 = mem[(32 * mem[_2311] - 1) + _2781 + ceil32(return_data.size) + 32]
                if mem[(32 * mem[_2311] - 1) + _2781 + ceil32(return_data.size) + 32] < mem[(32 * mem[_2311] - 1) + _2781 + ceil32(return_data.size) + 32] * arg4 / 10000:
                    revert with 0, 17
                _3213 = mem[64]
                mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _2290 - _2258
                mem[mem[64] + 36] = _3197 - (_3149 * arg4 / 10000)
                mem[mem[64] + 68] = 160
                _3229 = mem[_2311]
                mem[mem[64] + 164] = mem[_2311]
                idx = 0
                s = _2311 + 32
                t = mem[64] + 196
                while idx < _3229:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_3213 + 100] = msg.sender
                mem[_3213 + 132] = block.timestamp
                require ext_code.size(arg6)
                call arg6.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _3213 + (32 * _3229) + -mem[64] + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3389 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_3389] <= test266151307()
                require _3389 + mem[_3389] + 31 < _3389 + return_data.size
                if mem[_3389 + mem[_3389]] > test266151307():
                    revert with 0, 65
                if _3389 + ceil32(return_data.size) + ceil32(32 * mem[_3389 + mem[_3389]]) + 1 > test266151307() or ceil32(32 * mem[_3389 + mem[_3389]]) + 1 < 0:
                    revert with 0, 65
                require return_data.size >= mem[_3389] + (32 * mem[_3389 + mem[_3389]]) + 32
            else:
                if 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 == arg2:
                    _2321 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    if 0 >= mem[_2321]:
                        revert with 0, 50
                    mem[_2321 + 32] = arg2
                    if 1 >= mem[_2321]:
                        revert with 0, 50
                    mem[_2321 + 64] = arg1
                    mem[_2321 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_2321 + 100] = _2290 - _2258
                    mem[_2321 + 132] = 64
                    mem[_2321 + 164] = mem[_2321]
                    idx = 0
                    s = _2321 + 32
                    t = _2321 + 196
                    while idx < mem[_2321]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(arg6)
                    staticcall arg6.mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _2321 + (32 * mem[_2321]) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2782 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2798 = mem[_2782]
                    require mem[_2782] <= test266151307()
                    require _2782 + mem[_2782] + 31 < _2782 + return_data.size
                    _2814 = mem[_2782 + mem[_2782]]
                    if mem[_2782 + mem[_2782]] > test266151307():
                        revert with 0, 65
                    if _2782 + ceil32(return_data.size) + ceil32(32 * mem[_2782 + mem[_2782]]) + 1 > test266151307() or ceil32(32 * mem[_2782 + mem[_2782]]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = _2782 + ceil32(return_data.size) + ceil32(32 * mem[_2782 + mem[_2782]]) + 1
                    mem[_2782 + ceil32(return_data.size)] = _2814
                    require return_data.size >= _2798 + (32 * _2814) + 32
                    mem[_2782 + ceil32(return_data.size) + 32 len 32 * _2814] = mem[_2782 + _2798 + 32 len 32 * _2814]
                    if mem[_2321] < 1:
                        revert with 0, 17
                    if mem[_2321] - 1 >= _2814:
                        revert with 0, 50
                    _3150 = mem[(32 * mem[_2321] - 1) + _2782 + ceil32(return_data.size) + 32]
                    if mem[(32 * mem[_2321] - 1) + _2782 + ceil32(return_data.size) + 32] and arg4 > -1 / mem[(32 * mem[_2321] - 1) + _2782 + ceil32(return_data.size) + 32]:
                        revert with 0, 17
                    if mem[_2321] < 1:
                        revert with 0, 17
                    if mem[_2321] - 1 >= _2814:
                        revert with 0, 50
                    _3198 = mem[(32 * mem[_2321] - 1) + _2782 + ceil32(return_data.size) + 32]
                    if mem[(32 * mem[_2321] - 1) + _2782 + ceil32(return_data.size) + 32] < mem[(32 * mem[_2321] - 1) + _2782 + ceil32(return_data.size) + 32] * arg4 / 10000:
                        revert with 0, 17
                    _3214 = mem[64]
                    mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _2290 - _2258
                    mem[mem[64] + 36] = _3198 - (_3150 * arg4 / 10000)
                    mem[mem[64] + 68] = 160
                    _3230 = mem[_2321]
                    mem[mem[64] + 164] = mem[_2321]
                    idx = 0
                    s = _2321 + 32
                    t = mem[64] + 196
                    while idx < _3230:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_3214 + 100] = msg.sender
                    mem[_3214 + 132] = block.timestamp
                    require ext_code.size(arg6)
                    call arg6.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _3214 + (32 * _3230) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3390 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_3390] <= test266151307()
                    require _3390 + mem[_3390] + 31 < _3390 + return_data.size
                    if mem[_3390 + mem[_3390]] > test266151307():
                        revert with 0, 65
                    if _3390 + ceil32(return_data.size) + ceil32(32 * mem[_3390 + mem[_3390]]) + 1 > test266151307() or ceil32(32 * mem[_3390 + mem[_3390]]) + 1 < 0:
                        revert with 0, 65
                    require return_data.size >= mem[_3390] + (32 * mem[_3390 + mem[_3390]]) + 32
                else:
                    if 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 == arg1:
                        _2337 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        if 0 >= mem[_2337]:
                            revert with 0, 50
                        mem[_2337 + 32] = arg2
                        if 1 >= mem[_2337]:
                            revert with 0, 50
                        mem[_2337 + 64] = arg1
                        mem[_2337 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_2337 + 100] = _2290 - _2258
                        mem[_2337 + 132] = 64
                        mem[_2337 + 164] = mem[_2337]
                        idx = 0
                        s = _2337 + 32
                        t = _2337 + 196
                        while idx < mem[_2337]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(arg6)
                        staticcall arg6.mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _2337 + (32 * mem[_2337]) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2784 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2800 = mem[_2784]
                        require mem[_2784] <= test266151307()
                        require _2784 + mem[_2784] + 31 < _2784 + return_data.size
                        _2816 = mem[_2784 + mem[_2784]]
                        if mem[_2784 + mem[_2784]] > test266151307():
                            revert with 0, 65
                        if _2784 + ceil32(return_data.size) + ceil32(32 * mem[_2784 + mem[_2784]]) + 1 > test266151307() or ceil32(32 * mem[_2784 + mem[_2784]]) + 1 < 0:
                            revert with 0, 65
                        mem[64] = _2784 + ceil32(return_data.size) + ceil32(32 * mem[_2784 + mem[_2784]]) + 1
                        mem[_2784 + ceil32(return_data.size)] = _2816
                        require return_data.size >= _2800 + (32 * _2816) + 32
                        mem[_2784 + ceil32(return_data.size) + 32 len 32 * _2816] = mem[_2784 + _2800 + 32 len 32 * _2816]
                        if mem[_2337] < 1:
                            revert with 0, 17
                        if mem[_2337] - 1 >= _2816:
                            revert with 0, 50
                        _3152 = mem[(32 * mem[_2337] - 1) + _2784 + ceil32(return_data.size) + 32]
                        if mem[(32 * mem[_2337] - 1) + _2784 + ceil32(return_data.size) + 32] and arg4 > -1 / mem[(32 * mem[_2337] - 1) + _2784 + ceil32(return_data.size) + 32]:
                            revert with 0, 17
                        if mem[_2337] < 1:
                            revert with 0, 17
                        if mem[_2337] - 1 >= _2816:
                            revert with 0, 50
                        _3200 = mem[(32 * mem[_2337] - 1) + _2784 + ceil32(return_data.size) + 32]
                        if mem[(32 * mem[_2337] - 1) + _2784 + ceil32(return_data.size) + 32] < mem[(32 * mem[_2337] - 1) + _2784 + ceil32(return_data.size) + 32] * arg4 / 10000:
                            revert with 0, 17
                        _3216 = mem[64]
                        mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _2290 - _2258
                        mem[mem[64] + 36] = _3200 - (_3152 * arg4 / 10000)
                        mem[mem[64] + 68] = 160
                        _3232 = mem[_2337]
                        mem[mem[64] + 164] = mem[_2337]
                        idx = 0
                        s = _2337 + 32
                        t = mem[64] + 196
                        while idx < _3232:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_3216 + 100] = msg.sender
                        mem[_3216 + 132] = block.timestamp
                        require ext_code.size(arg6)
                        call arg6.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _3216 + (32 * _3232) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3392 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3392] <= test266151307()
                        require _3392 + mem[_3392] + 31 < _3392 + return_data.size
                        if mem[_3392 + mem[_3392]] > test266151307():
                            revert with 0, 65
                        if _3392 + ceil32(return_data.size) + ceil32(32 * mem[_3392 + mem[_3392]]) + 1 > test266151307() or ceil32(32 * mem[_3392 + mem[_3392]]) + 1 < 0:
                            revert with 0, 65
                        require return_data.size >= mem[_3392] + (32 * mem[_3392 + mem[_3392]]) + 32
                    else:
                        _2335 = mem[64]
                        mem[mem[64]] = 3
                        mem[64] = mem[64] + 128
                        if 0 >= mem[_2335]:
                            revert with 0, 50
                        mem[_2335 + 32] = arg2
                        if 1 >= mem[_2335]:
                            revert with 0, 50
                        mem[_2335 + 64] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                        if 2 >= mem[_2335]:
                            revert with 0, 50
                        mem[_2335 + 96] = arg1
                        mem[_2335 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_2335 + 132] = _2290 - _2258
                        mem[_2335 + 164] = 64
                        mem[_2335 + 196] = mem[_2335]
                        idx = 0
                        s = _2335 + 32
                        t = _2335 + 228
                        while idx < mem[_2335]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(arg6)
                        staticcall arg6.mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _2335 + (32 * mem[_2335]) + -mem[64] + 224]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2783 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2799 = mem[_2783]
                        require mem[_2783] <= test266151307()
                        require _2783 + mem[_2783] + 31 < _2783 + return_data.size
                        _2815 = mem[_2783 + mem[_2783]]
                        if mem[_2783 + mem[_2783]] > test266151307():
                            revert with 0, 65
                        if _2783 + ceil32(return_data.size) + ceil32(32 * mem[_2783 + mem[_2783]]) + 1 > test266151307() or ceil32(32 * mem[_2783 + mem[_2783]]) + 1 < 0:
                            revert with 0, 65
                        mem[64] = _2783 + ceil32(return_data.size) + ceil32(32 * mem[_2783 + mem[_2783]]) + 1
                        mem[_2783 + ceil32(return_data.size)] = _2815
                        require return_data.size >= _2799 + (32 * _2815) + 32
                        mem[_2783 + ceil32(return_data.size) + 32 len 32 * _2815] = mem[_2783 + _2799 + 32 len 32 * _2815]
                        if mem[_2335] < 1:
                            revert with 0, 17
                        if mem[_2335] - 1 >= _2815:
                            revert with 0, 50
                        _3151 = mem[(32 * mem[_2335] - 1) + _2783 + ceil32(return_data.size) + 32]
                        if mem[(32 * mem[_2335] - 1) + _2783 + ceil32(return_data.size) + 32] and arg4 > -1 / mem[(32 * mem[_2335] - 1) + _2783 + ceil32(return_data.size) + 32]:
                            revert with 0, 17
                        if mem[_2335] < 1:
                            revert with 0, 17
                        if mem[_2335] - 1 >= _2815:
                            revert with 0, 50
                        _3199 = mem[(32 * mem[_2335] - 1) + _2783 + ceil32(return_data.size) + 32]
                        if mem[(32 * mem[_2335] - 1) + _2783 + ceil32(return_data.size) + 32] < mem[(32 * mem[_2335] - 1) + _2783 + ceil32(return_data.size) + 32] * arg4 / 10000:
                            revert with 0, 17
                        _3215 = mem[64]
                        mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _2290 - _2258
                        mem[mem[64] + 36] = _3199 - (_3151 * arg4 / 10000)
                        mem[mem[64] + 68] = 160
                        _3231 = mem[_2335]
                        mem[mem[64] + 164] = mem[_2335]
                        idx = 0
                        s = _2335 + 32
                        t = mem[64] + 196
                        while idx < _3231:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_3215 + 100] = msg.sender
                        mem[_3215 + 132] = block.timestamp
                        require ext_code.size(arg6)
                        call arg6.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _3215 + (32 * _3231) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3391 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3391] <= test266151307()
                        require _3391 + mem[_3391] + 31 < _3391 + return_data.size
                        if mem[_3391 + mem[_3391]] > test266151307():
                            revert with 0, 65
                        if _3391 + ceil32(return_data.size) + ceil32(32 * mem[_3391 + mem[_3391]]) + 1 > test266151307() or ceil32(32 * mem[_3391 + mem[_3391]]) + 1 < 0:
                            revert with 0, 65
                        require return_data.size >= mem[_3391] + (32 * mem[_3391 + mem[_3391]]) + 32
        else:
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
                _480 = mem[(7 * ceil32(return_data.size)) + 192 len 4], 0
                require mem[(7 * ceil32(return_data.size)) + 192 len 4], 0 <= test266151307()
                require (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], 0 + 223 < (7 * ceil32(return_data.size)) + return_data.size + 192
                _484 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], 0 + 192]
                if mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], 0 + 192] > test266151307():
                    revert with 0, 65
                if (8 * ceil32(return_data.size)) + ceil32(32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 193 > test266151307() or ceil32(32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 1 < 0:
                    revert with 0, 65
                mem[64] = (8 * ceil32(return_data.size)) + ceil32(32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 193
                mem[(8 * ceil32(return_data.size)) + 192] = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], 0 + 192]
                require return_data.size >= _480 + (32 * _484) + 32
                mem[(8 * ceil32(return_data.size)) + 224 len 32 * _484] = mem[(7 * ceil32(return_data.size)) + _480 + 224 len 32 * _484]
                if 1 >= _484:
                    revert with 0, 50
                _1092 = mem[(8 * ceil32(return_data.size)) + 256]
                if mem[(8 * ceil32(return_data.size)) + 256] and arg4 > -1 / mem[(8 * ceil32(return_data.size)) + 256]:
                    revert with 0, 17
                if 1 >= _484:
                    revert with 0, 50
                _1104 = mem[(8 * ceil32(return_data.size)) + 256]
                if mem[(8 * ceil32(return_data.size)) + 256] < mem[(8 * ceil32(return_data.size)) + 256] * arg4 / 10000:
                    revert with 0, 17
                mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 0
                mem[mem[64] + 36] = _1104 - (_1092 * arg4 / 10000)
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
                    args 0, _1104 - (_1092 * arg4 / 10000), 160, msg.sender, block.timestamp, 2, mem[mem[64] + 196 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1676 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1680 = mem[_1676]
                require mem[_1676] <= test266151307()
                require _1676 + mem[_1676] + 31 < _1676 + return_data.size
                _1684 = mem[_1676 + mem[_1676]]
                if mem[_1676 + mem[_1676]] > test266151307():
                    revert with 0, 65
                if _1676 + ceil32(return_data.size) + ceil32(32 * mem[_1676 + mem[_1676]]) + 1 > test266151307() or ceil32(32 * mem[_1676 + mem[_1676]]) + 1 < 0:
                    revert with 0, 65
                mem[64] = _1676 + ceil32(return_data.size) + ceil32(32 * mem[_1676 + mem[_1676]]) + 1
                mem[_1676 + ceil32(return_data.size)] = _1684
                require return_data.size >= _1680 + (32 * _1684) + 32
                mem[_1676 + ceil32(return_data.size) + 32 len 32 * _1684] = mem[_1676 + _1680 + 32 len 32 * _1684]
                mem[mem[64] + 4] = msg.sender
                require ext_code.size(arg2)
                staticcall arg2.0x70a08231 with:
                        gas gas_remaining wei
                       args msg.sender
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2232 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2236 = mem[_2232]
                if mem[_2232] < ext_call.return_data[0]:
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
                _2256 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2260 = mem[_2256]
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = this.address
                mem[mem[64] + 68] = _2236 - ext_call.return_data[0]
                require ext_code.size(arg2)
                call arg2.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, this.address, _2236 - ext_call.return_data[0]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2272 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2272] == bool(mem[_2272])
                mem[mem[64] + 4] = this.address
                require ext_code.size(arg2)
                staticcall arg2.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2288 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2292 = mem[_2288]
                if mem[_2288] < _2260:
                    revert with 0, 17
                mem[mem[64] + 4] = arg6
                mem[mem[64] + 36] = _2292 - _2260
                require ext_code.size(arg2)
                call arg2.approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args address(arg6), _2292 - _2260
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2304 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2304] == bool(mem[_2304])
                if not arg5:
                    _2315 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    if 0 >= mem[_2315]:
                        revert with 0, 50
                    mem[_2315 + 32] = arg2
                    if 1 >= mem[_2315]:
                        revert with 0, 50
                    mem[_2315 + 64] = arg1
                    mem[_2315 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_2315 + 100] = _2292 - _2260
                    mem[_2315 + 132] = 64
                    mem[_2315 + 164] = mem[_2315]
                    idx = 0
                    s = _2315 + 32
                    t = _2315 + 196
                    while idx < mem[_2315]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(arg6)
                    staticcall arg6.mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _2315 + (32 * mem[_2315]) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2789 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2805 = mem[_2789]
                    require mem[_2789] <= test266151307()
                    require _2789 + mem[_2789] + 31 < _2789 + return_data.size
                    _2821 = mem[_2789 + mem[_2789]]
                    if mem[_2789 + mem[_2789]] > test266151307():
                        revert with 0, 65
                    if _2789 + ceil32(return_data.size) + ceil32(32 * mem[_2789 + mem[_2789]]) + 1 > test266151307() or ceil32(32 * mem[_2789 + mem[_2789]]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = _2789 + ceil32(return_data.size) + ceil32(32 * mem[_2789 + mem[_2789]]) + 1
                    mem[_2789 + ceil32(return_data.size)] = _2821
                    require return_data.size >= _2805 + (32 * _2821) + 32
                    mem[_2789 + ceil32(return_data.size) + 32 len 32 * _2821] = mem[_2789 + _2805 + 32 len 32 * _2821]
                    if mem[_2315] < 1:
                        revert with 0, 17
                    if mem[_2315] - 1 >= _2821:
                        revert with 0, 50
                    _3157 = mem[(32 * mem[_2315] - 1) + _2789 + ceil32(return_data.size) + 32]
                    if mem[(32 * mem[_2315] - 1) + _2789 + ceil32(return_data.size) + 32] and arg4 > -1 / mem[(32 * mem[_2315] - 1) + _2789 + ceil32(return_data.size) + 32]:
                        revert with 0, 17
                    if mem[_2315] < 1:
                        revert with 0, 17
                    if mem[_2315] - 1 >= _2821:
                        revert with 0, 50
                    _3205 = mem[(32 * mem[_2315] - 1) + _2789 + ceil32(return_data.size) + 32]
                    if mem[(32 * mem[_2315] - 1) + _2789 + ceil32(return_data.size) + 32] < mem[(32 * mem[_2315] - 1) + _2789 + ceil32(return_data.size) + 32] * arg4 / 10000:
                        revert with 0, 17
                    _3221 = mem[64]
                    mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _2292 - _2260
                    mem[mem[64] + 36] = _3205 - (_3157 * arg4 / 10000)
                    mem[mem[64] + 68] = 160
                    _3237 = mem[_2315]
                    mem[mem[64] + 164] = mem[_2315]
                    idx = 0
                    s = _2315 + 32
                    t = mem[64] + 196
                    while idx < _3237:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_3221 + 100] = msg.sender
                    mem[_3221 + 132] = block.timestamp
                    require ext_code.size(arg6)
                    call arg6.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _3221 + (32 * _3237) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3397 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_3397] <= test266151307()
                    require _3397 + mem[_3397] + 31 < _3397 + return_data.size
                    if mem[_3397 + mem[_3397]] > test266151307():
                        revert with 0, 65
                    if _3397 + ceil32(return_data.size) + ceil32(32 * mem[_3397 + mem[_3397]]) + 1 > test266151307() or ceil32(32 * mem[_3397 + mem[_3397]]) + 1 < 0:
                        revert with 0, 65
                    require return_data.size >= mem[_3397] + (32 * mem[_3397 + mem[_3397]]) + 32
                else:
                    if 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 == arg2:
                        _2327 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        if 0 >= mem[_2327]:
                            revert with 0, 50
                        mem[_2327 + 32] = arg2
                        if 1 >= mem[_2327]:
                            revert with 0, 50
                        mem[_2327 + 64] = arg1
                        mem[_2327 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_2327 + 100] = _2292 - _2260
                        mem[_2327 + 132] = 64
                        mem[_2327 + 164] = mem[_2327]
                        idx = 0
                        s = _2327 + 32
                        t = _2327 + 196
                        while idx < mem[_2327]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(arg6)
                        staticcall arg6.mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _2327 + (32 * mem[_2327]) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2790 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2806 = mem[_2790]
                        require mem[_2790] <= test266151307()
                        require _2790 + mem[_2790] + 31 < _2790 + return_data.size
                        _2822 = mem[_2790 + mem[_2790]]
                        if mem[_2790 + mem[_2790]] > test266151307():
                            revert with 0, 65
                        if _2790 + ceil32(return_data.size) + ceil32(32 * mem[_2790 + mem[_2790]]) + 1 > test266151307() or ceil32(32 * mem[_2790 + mem[_2790]]) + 1 < 0:
                            revert with 0, 65
                        mem[64] = _2790 + ceil32(return_data.size) + ceil32(32 * mem[_2790 + mem[_2790]]) + 1
                        mem[_2790 + ceil32(return_data.size)] = _2822
                        require return_data.size >= _2806 + (32 * _2822) + 32
                        mem[_2790 + ceil32(return_data.size) + 32 len 32 * _2822] = mem[_2790 + _2806 + 32 len 32 * _2822]
                        if mem[_2327] < 1:
                            revert with 0, 17
                        if mem[_2327] - 1 >= _2822:
                            revert with 0, 50
                        _3158 = mem[(32 * mem[_2327] - 1) + _2790 + ceil32(return_data.size) + 32]
                        if mem[(32 * mem[_2327] - 1) + _2790 + ceil32(return_data.size) + 32] and arg4 > -1 / mem[(32 * mem[_2327] - 1) + _2790 + ceil32(return_data.size) + 32]:
                            revert with 0, 17
                        if mem[_2327] < 1:
                            revert with 0, 17
                        if mem[_2327] - 1 >= _2822:
                            revert with 0, 50
                        _3206 = mem[(32 * mem[_2327] - 1) + _2790 + ceil32(return_data.size) + 32]
                        if mem[(32 * mem[_2327] - 1) + _2790 + ceil32(return_data.size) + 32] < mem[(32 * mem[_2327] - 1) + _2790 + ceil32(return_data.size) + 32] * arg4 / 10000:
                            revert with 0, 17
                        _3222 = mem[64]
                        mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _2292 - _2260
                        mem[mem[64] + 36] = _3206 - (_3158 * arg4 / 10000)
                        mem[mem[64] + 68] = 160
                        _3238 = mem[_2327]
                        mem[mem[64] + 164] = mem[_2327]
                        idx = 0
                        s = _2327 + 32
                        t = mem[64] + 196
                        while idx < _3238:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_3222 + 100] = msg.sender
                        mem[_3222 + 132] = block.timestamp
                        require ext_code.size(arg6)
                        call arg6.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _3222 + (32 * _3238) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3398 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3398] <= test266151307()
                        require _3398 + mem[_3398] + 31 < _3398 + return_data.size
                        if mem[_3398 + mem[_3398]] > test266151307():
                            revert with 0, 65
                        if _3398 + ceil32(return_data.size) + ceil32(32 * mem[_3398 + mem[_3398]]) + 1 > test266151307() or ceil32(32 * mem[_3398 + mem[_3398]]) + 1 < 0:
                            revert with 0, 65
                        require return_data.size >= mem[_3398] + (32 * mem[_3398 + mem[_3398]]) + 32
                    else:
                        if 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 == arg1:
                            _2347 = mem[64]
                            mem[mem[64]] = 2
                            mem[64] = mem[64] + 96
                            if 0 >= mem[_2347]:
                                revert with 0, 50
                            mem[_2347 + 32] = arg2
                            if 1 >= mem[_2347]:
                                revert with 0, 50
                            mem[_2347 + 64] = arg1
                            mem[_2347 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[_2347 + 100] = _2292 - _2260
                            mem[_2347 + 132] = 64
                            mem[_2347 + 164] = mem[_2347]
                            idx = 0
                            s = _2347 + 32
                            t = _2347 + 196
                            while idx < mem[_2347]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(arg6)
                            staticcall arg6.mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len _2347 + (32 * mem[_2347]) + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2792 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2808 = mem[_2792]
                            require mem[_2792] <= test266151307()
                            require _2792 + mem[_2792] + 31 < _2792 + return_data.size
                            _2824 = mem[_2792 + mem[_2792]]
                            if mem[_2792 + mem[_2792]] > test266151307():
                                revert with 0, 65
                            if _2792 + ceil32(return_data.size) + ceil32(32 * mem[_2792 + mem[_2792]]) + 1 > test266151307() or ceil32(32 * mem[_2792 + mem[_2792]]) + 1 < 0:
                                revert with 0, 65
                            mem[64] = _2792 + ceil32(return_data.size) + ceil32(32 * mem[_2792 + mem[_2792]]) + 1
                            mem[_2792 + ceil32(return_data.size)] = _2824
                            require return_data.size >= _2808 + (32 * _2824) + 32
                            mem[_2792 + ceil32(return_data.size) + 32 len 32 * _2824] = mem[_2792 + _2808 + 32 len 32 * _2824]
                            if mem[_2347] < 1:
                                revert with 0, 17
                            if mem[_2347] - 1 >= _2824:
                                revert with 0, 50
                            _3160 = mem[(32 * mem[_2347] - 1) + _2792 + ceil32(return_data.size) + 32]
                            if mem[(32 * mem[_2347] - 1) + _2792 + ceil32(return_data.size) + 32] and arg4 > -1 / mem[(32 * mem[_2347] - 1) + _2792 + ceil32(return_data.size) + 32]:
                                revert with 0, 17
                            if mem[_2347] < 1:
                                revert with 0, 17
                            if mem[_2347] - 1 >= _2824:
                                revert with 0, 50
                            _3208 = mem[(32 * mem[_2347] - 1) + _2792 + ceil32(return_data.size) + 32]
                            if mem[(32 * mem[_2347] - 1) + _2792 + ceil32(return_data.size) + 32] < mem[(32 * mem[_2347] - 1) + _2792 + ceil32(return_data.size) + 32] * arg4 / 10000:
                                revert with 0, 17
                            _3224 = mem[64]
                            mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _2292 - _2260
                            mem[mem[64] + 36] = _3208 - (_3160 * arg4 / 10000)
                            mem[mem[64] + 68] = 160
                            _3240 = mem[_2347]
                            mem[mem[64] + 164] = mem[_2347]
                            idx = 0
                            s = _2347 + 32
                            t = mem[64] + 196
                            while idx < _3240:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_3224 + 100] = msg.sender
                            mem[_3224 + 132] = block.timestamp
                            require ext_code.size(arg6)
                            call arg6.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _3224 + (32 * _3240) + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3400 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3400] <= test266151307()
                            require _3400 + mem[_3400] + 31 < _3400 + return_data.size
                            if mem[_3400 + mem[_3400]] > test266151307():
                                revert with 0, 65
                            if _3400 + ceil32(return_data.size) + ceil32(32 * mem[_3400 + mem[_3400]]) + 1 > test266151307() or ceil32(32 * mem[_3400 + mem[_3400]]) + 1 < 0:
                                revert with 0, 65
                            require return_data.size >= mem[_3400] + (32 * mem[_3400 + mem[_3400]]) + 32
                        else:
                            _2345 = mem[64]
                            mem[mem[64]] = 3
                            mem[64] = mem[64] + 128
                            if 0 >= mem[_2345]:
                                revert with 0, 50
                            mem[_2345 + 32] = arg2
                            if 1 >= mem[_2345]:
                                revert with 0, 50
                            mem[_2345 + 64] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                            if 2 >= mem[_2345]:
                                revert with 0, 50
                            mem[_2345 + 96] = arg1
                            mem[_2345 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[_2345 + 132] = _2292 - _2260
                            mem[_2345 + 164] = 64
                            mem[_2345 + 196] = mem[_2345]
                            idx = 0
                            s = _2345 + 32
                            t = _2345 + 228
                            while idx < mem[_2345]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(arg6)
                            staticcall arg6.mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len _2345 + (32 * mem[_2345]) + -mem[64] + 224]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2791 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2807 = mem[_2791]
                            require mem[_2791] <= test266151307()
                            require _2791 + mem[_2791] + 31 < _2791 + return_data.size
                            _2823 = mem[_2791 + mem[_2791]]
                            if mem[_2791 + mem[_2791]] > test266151307():
                                revert with 0, 65
                            if _2791 + ceil32(return_data.size) + ceil32(32 * mem[_2791 + mem[_2791]]) + 1 > test266151307() or ceil32(32 * mem[_2791 + mem[_2791]]) + 1 < 0:
                                revert with 0, 65
                            mem[64] = _2791 + ceil32(return_data.size) + ceil32(32 * mem[_2791 + mem[_2791]]) + 1
                            mem[_2791 + ceil32(return_data.size)] = _2823
                            require return_data.size >= _2807 + (32 * _2823) + 32
                            mem[_2791 + ceil32(return_data.size) + 32 len 32 * _2823] = mem[_2791 + _2807 + 32 len 32 * _2823]
                            if mem[_2345] < 1:
                                revert with 0, 17
                            if mem[_2345] - 1 >= _2823:
                                revert with 0, 50
                            _3159 = mem[(32 * mem[_2345] - 1) + _2791 + ceil32(return_data.size) + 32]
                            if mem[(32 * mem[_2345] - 1) + _2791 + ceil32(return_data.size) + 32] and arg4 > -1 / mem[(32 * mem[_2345] - 1) + _2791 + ceil32(return_data.size) + 32]:
                                revert with 0, 17
                            if mem[_2345] < 1:
                                revert with 0, 17
                            if mem[_2345] - 1 >= _2823:
                                revert with 0, 50
                            _3207 = mem[(32 * mem[_2345] - 1) + _2791 + ceil32(return_data.size) + 32]
                            if mem[(32 * mem[_2345] - 1) + _2791 + ceil32(return_data.size) + 32] < mem[(32 * mem[_2345] - 1) + _2791 + ceil32(return_data.size) + 32] * arg4 / 10000:
                                revert with 0, 17
                            _3223 = mem[64]
                            mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _2292 - _2260
                            mem[mem[64] + 36] = _3207 - (_3159 * arg4 / 10000)
                            mem[mem[64] + 68] = 160
                            _3239 = mem[_2345]
                            mem[mem[64] + 164] = mem[_2345]
                            idx = 0
                            s = _2345 + 32
                            t = mem[64] + 196
                            while idx < _3239:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_3223 + 100] = msg.sender
                            mem[_3223 + 132] = block.timestamp
                            require ext_code.size(arg6)
                            call arg6.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _3223 + (32 * _3239) + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3399 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3399] <= test266151307()
                            require _3399 + mem[_3399] + 31 < _3399 + return_data.size
                            if mem[_3399 + mem[_3399]] > test266151307():
                                revert with 0, 65
                            if _3399 + ceil32(return_data.size) + ceil32(32 * mem[_3399 + mem[_3399]]) + 1 > test266151307() or ceil32(32 * mem[_3399 + mem[_3399]]) + 1 < 0:
                                revert with 0, 65
                            require return_data.size >= mem[_3399] + (32 * mem[_3399 + mem[_3399]]) + 32
            else:
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
                _479 = mem[(7 * ceil32(return_data.size)) + 224 len 4], 0
                require mem[(7 * ceil32(return_data.size)) + 224 len 4], 0 <= test266151307()
                require (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 224 len 4], 0 + 255 < (7 * ceil32(return_data.size)) + return_data.size + 224
                _483 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 224 len 4], 0 + 224]
                if mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 224 len 4], 0 + 224] > test266151307():
                    revert with 0, 65
                if (8 * ceil32(return_data.size)) + ceil32(32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 224 len 4], 0 + 224]) + 225 > test266151307() or ceil32(32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 224 len 4], 0 + 224]) + 1 < 0:
                    revert with 0, 65
                mem[64] = (8 * ceil32(return_data.size)) + ceil32(32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 224 len 4], 0 + 224]) + 225
                mem[(8 * ceil32(return_data.size)) + 224] = _483
                require return_data.size >= _479 + (32 * _483) + 32
                mem[(8 * ceil32(return_data.size)) + 256 len 32 * _483] = mem[(7 * ceil32(return_data.size)) + _479 + 256 len 32 * _483]
                if 2 >= _483:
                    revert with 0, 50
                _1091 = mem[(8 * ceil32(return_data.size)) + 320]
                if mem[(8 * ceil32(return_data.size)) + 320] and arg4 > -1 / mem[(8 * ceil32(return_data.size)) + 320]:
                    revert with 0, 17
                if 2 >= _483:
                    revert with 0, 50
                _1103 = mem[(8 * ceil32(return_data.size)) + 320]
                if mem[(8 * ceil32(return_data.size)) + 320] < mem[(8 * ceil32(return_data.size)) + 320] * arg4 / 10000:
                    revert with 0, 17
                mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 0
                mem[mem[64] + 36] = _1103 - (_1091 * arg4 / 10000)
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
                    args 0, _1103 - (_1091 * arg4 / 10000), 160, msg.sender, block.timestamp, 3, mem[mem[64] + 196 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1675 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1679 = mem[_1675]
                require mem[_1675] <= test266151307()
                require _1675 + mem[_1675] + 31 < _1675 + return_data.size
                _1683 = mem[_1675 + mem[_1675]]
                if mem[_1675 + mem[_1675]] > test266151307():
                    revert with 0, 65
                if _1675 + ceil32(return_data.size) + ceil32(32 * mem[_1675 + mem[_1675]]) + 1 > test266151307() or ceil32(32 * mem[_1675 + mem[_1675]]) + 1 < 0:
                    revert with 0, 65
                mem[64] = _1675 + ceil32(return_data.size) + ceil32(32 * mem[_1675 + mem[_1675]]) + 1
                mem[_1675 + ceil32(return_data.size)] = _1683
                require return_data.size >= _1679 + (32 * _1683) + 32
                mem[_1675 + ceil32(return_data.size) + 32 len 32 * _1683] = mem[_1675 + _1679 + 32 len 32 * _1683]
                mem[mem[64] + 4] = msg.sender
                require ext_code.size(arg2)
                staticcall arg2.0x70a08231 with:
                        gas gas_remaining wei
                       args msg.sender
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2231 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2235 = mem[_2231]
                if mem[_2231] < ext_call.return_data[0]:
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
                _2255 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2259 = mem[_2255]
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = this.address
                mem[mem[64] + 68] = _2235 - ext_call.return_data[0]
                require ext_code.size(arg2)
                call arg2.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, this.address, _2235 - ext_call.return_data[0]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2271 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2271] == bool(mem[_2271])
                mem[mem[64] + 4] = this.address
                require ext_code.size(arg2)
                staticcall arg2.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2287 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2291 = mem[_2287]
                if mem[_2287] < _2259:
                    revert with 0, 17
                mem[mem[64] + 4] = arg6
                mem[mem[64] + 36] = _2291 - _2259
                require ext_code.size(arg2)
                call arg2.approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args address(arg6), _2291 - _2259
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2303 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2303] == bool(mem[_2303])
                if not arg5:
                    _2313 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    if 0 >= mem[_2313]:
                        revert with 0, 50
                    mem[_2313 + 32] = arg2
                    if 1 >= mem[_2313]:
                        revert with 0, 50
                    mem[_2313 + 64] = arg1
                    mem[_2313 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_2313 + 100] = _2291 - _2259
                    mem[_2313 + 132] = 64
                    mem[_2313 + 164] = mem[_2313]
                    idx = 0
                    s = _2313 + 32
                    t = _2313 + 196
                    while idx < mem[_2313]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(arg6)
                    staticcall arg6.mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _2313 + (32 * mem[_2313]) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2785 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2801 = mem[_2785]
                    require mem[_2785] <= test266151307()
                    require _2785 + mem[_2785] + 31 < _2785 + return_data.size
                    _2817 = mem[_2785 + mem[_2785]]
                    if mem[_2785 + mem[_2785]] > test266151307():
                        revert with 0, 65
                    if _2785 + ceil32(return_data.size) + ceil32(32 * mem[_2785 + mem[_2785]]) + 1 > test266151307() or ceil32(32 * mem[_2785 + mem[_2785]]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = _2785 + ceil32(return_data.size) + ceil32(32 * mem[_2785 + mem[_2785]]) + 1
                    mem[_2785 + ceil32(return_data.size)] = _2817
                    require return_data.size >= _2801 + (32 * _2817) + 32
                    mem[_2785 + ceil32(return_data.size) + 32 len 32 * _2817] = mem[_2785 + _2801 + 32 len 32 * _2817]
                    if mem[_2313] < 1:
                        revert with 0, 17
                    if mem[_2313] - 1 >= _2817:
                        revert with 0, 50
                    _3153 = mem[(32 * mem[_2313] - 1) + _2785 + ceil32(return_data.size) + 32]
                    if mem[(32 * mem[_2313] - 1) + _2785 + ceil32(return_data.size) + 32] and arg4 > -1 / mem[(32 * mem[_2313] - 1) + _2785 + ceil32(return_data.size) + 32]:
                        revert with 0, 17
                    if mem[_2313] < 1:
                        revert with 0, 17
                    if mem[_2313] - 1 >= _2817:
                        revert with 0, 50
                    _3201 = mem[(32 * mem[_2313] - 1) + _2785 + ceil32(return_data.size) + 32]
                    if mem[(32 * mem[_2313] - 1) + _2785 + ceil32(return_data.size) + 32] < mem[(32 * mem[_2313] - 1) + _2785 + ceil32(return_data.size) + 32] * arg4 / 10000:
                        revert with 0, 17
                    _3217 = mem[64]
                    mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _2291 - _2259
                    mem[mem[64] + 36] = _3201 - (_3153 * arg4 / 10000)
                    mem[mem[64] + 68] = 160
                    _3233 = mem[_2313]
                    mem[mem[64] + 164] = mem[_2313]
                    idx = 0
                    s = _2313 + 32
                    t = mem[64] + 196
                    while idx < _3233:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_3217 + 100] = msg.sender
                    mem[_3217 + 132] = block.timestamp
                    require ext_code.size(arg6)
                    call arg6.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _3217 + (32 * _3233) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3393 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_3393] <= test266151307()
                    require _3393 + mem[_3393] + 31 < _3393 + return_data.size
                    if mem[_3393 + mem[_3393]] > test266151307():
                        revert with 0, 65
                    if _3393 + ceil32(return_data.size) + ceil32(32 * mem[_3393 + mem[_3393]]) + 1 > test266151307() or ceil32(32 * mem[_3393 + mem[_3393]]) + 1 < 0:
                        revert with 0, 65
                    require return_data.size >= mem[_3393] + (32 * mem[_3393 + mem[_3393]]) + 32
                else:
                    if 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 == arg2:
                        _2324 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        if 0 >= mem[_2324]:
                            revert with 0, 50
                        mem[_2324 + 32] = arg2
                        if 1 >= mem[_2324]:
                            revert with 0, 50
                        mem[_2324 + 64] = arg1
                        mem[_2324 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_2324 + 100] = _2291 - _2259
                        mem[_2324 + 132] = 64
                        mem[_2324 + 164] = mem[_2324]
                        idx = 0
                        s = _2324 + 32
                        t = _2324 + 196
                        while idx < mem[_2324]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(arg6)
                        staticcall arg6.mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _2324 + (32 * mem[_2324]) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2786 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2802 = mem[_2786]
                        require mem[_2786] <= test266151307()
                        require _2786 + mem[_2786] + 31 < _2786 + return_data.size
                        _2818 = mem[_2786 + mem[_2786]]
                        if mem[_2786 + mem[_2786]] > test266151307():
                            revert with 0, 65
                        if _2786 + ceil32(return_data.size) + ceil32(32 * mem[_2786 + mem[_2786]]) + 1 > test266151307() or ceil32(32 * mem[_2786 + mem[_2786]]) + 1 < 0:
                            revert with 0, 65
                        mem[64] = _2786 + ceil32(return_data.size) + ceil32(32 * mem[_2786 + mem[_2786]]) + 1
                        mem[_2786 + ceil32(return_data.size)] = _2818
                        require return_data.size >= _2802 + (32 * _2818) + 32
                        mem[_2786 + ceil32(return_data.size) + 32 len 32 * _2818] = mem[_2786 + _2802 + 32 len 32 * _2818]
                        if mem[_2324] < 1:
                            revert with 0, 17
                        if mem[_2324] - 1 >= _2818:
                            revert with 0, 50
                        _3154 = mem[(32 * mem[_2324] - 1) + _2786 + ceil32(return_data.size) + 32]
                        if mem[(32 * mem[_2324] - 1) + _2786 + ceil32(return_data.size) + 32] and arg4 > -1 / mem[(32 * mem[_2324] - 1) + _2786 + ceil32(return_data.size) + 32]:
                            revert with 0, 17
                        if mem[_2324] < 1:
                            revert with 0, 17
                        if mem[_2324] - 1 >= _2818:
                            revert with 0, 50
                        _3202 = mem[(32 * mem[_2324] - 1) + _2786 + ceil32(return_data.size) + 32]
                        if mem[(32 * mem[_2324] - 1) + _2786 + ceil32(return_data.size) + 32] < mem[(32 * mem[_2324] - 1) + _2786 + ceil32(return_data.size) + 32] * arg4 / 10000:
                            revert with 0, 17
                        _3218 = mem[64]
                        mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _2291 - _2259
                        mem[mem[64] + 36] = _3202 - (_3154 * arg4 / 10000)
                        mem[mem[64] + 68] = 160
                        _3234 = mem[_2324]
                        mem[mem[64] + 164] = mem[_2324]
                        idx = 0
                        s = _2324 + 32
                        t = mem[64] + 196
                        while idx < _3234:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_3218 + 100] = msg.sender
                        mem[_3218 + 132] = block.timestamp
                        require ext_code.size(arg6)
                        call arg6.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _3218 + (32 * _3234) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3394 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3394] <= test266151307()
                        require _3394 + mem[_3394] + 31 < _3394 + return_data.size
                        if mem[_3394 + mem[_3394]] > test266151307():
                            revert with 0, 65
                        if _3394 + ceil32(return_data.size) + ceil32(32 * mem[_3394 + mem[_3394]]) + 1 > test266151307() or ceil32(32 * mem[_3394 + mem[_3394]]) + 1 < 0:
                            revert with 0, 65
                        require return_data.size >= mem[_3394] + (32 * mem[_3394 + mem[_3394]]) + 32
                    else:
                        if 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 == arg1:
                            _2342 = mem[64]
                            mem[mem[64]] = 2
                            mem[64] = mem[64] + 96
                            if 0 >= mem[_2342]:
                                revert with 0, 50
                            mem[_2342 + 32] = arg2
                            if 1 >= mem[_2342]:
                                revert with 0, 50
                            mem[_2342 + 64] = arg1
                            mem[_2342 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[_2342 + 100] = _2291 - _2259
                            mem[_2342 + 132] = 64
                            mem[_2342 + 164] = mem[_2342]
                            idx = 0
                            s = _2342 + 32
                            t = _2342 + 196
                            while idx < mem[_2342]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(arg6)
                            staticcall arg6.mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len _2342 + (32 * mem[_2342]) + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2788 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2804 = mem[_2788]
                            require mem[_2788] <= test266151307()
                            require _2788 + mem[_2788] + 31 < _2788 + return_data.size
                            _2820 = mem[_2788 + mem[_2788]]
                            if mem[_2788 + mem[_2788]] > test266151307():
                                revert with 0, 65
                            if _2788 + ceil32(return_data.size) + ceil32(32 * mem[_2788 + mem[_2788]]) + 1 > test266151307() or ceil32(32 * mem[_2788 + mem[_2788]]) + 1 < 0:
                                revert with 0, 65
                            mem[64] = _2788 + ceil32(return_data.size) + ceil32(32 * mem[_2788 + mem[_2788]]) + 1
                            mem[_2788 + ceil32(return_data.size)] = _2820
                            require return_data.size >= _2804 + (32 * _2820) + 32
                            mem[_2788 + ceil32(return_data.size) + 32 len 32 * _2820] = mem[_2788 + _2804 + 32 len 32 * _2820]
                            if mem[_2342] < 1:
                                revert with 0, 17
                            if mem[_2342] - 1 >= _2820:
                                revert with 0, 50
                            _3156 = mem[(32 * mem[_2342] - 1) + _2788 + ceil32(return_data.size) + 32]
                            if mem[(32 * mem[_2342] - 1) + _2788 + ceil32(return_data.size) + 32] and arg4 > -1 / mem[(32 * mem[_2342] - 1) + _2788 + ceil32(return_data.size) + 32]:
                                revert with 0, 17
                            if mem[_2342] < 1:
                                revert with 0, 17
                            if mem[_2342] - 1 >= _2820:
                                revert with 0, 50
                            _3204 = mem[(32 * mem[_2342] - 1) + _2788 + ceil32(return_data.size) + 32]
                            if mem[(32 * mem[_2342] - 1) + _2788 + ceil32(return_data.size) + 32] < mem[(32 * mem[_2342] - 1) + _2788 + ceil32(return_data.size) + 32] * arg4 / 10000:
                                revert with 0, 17
                            _3220 = mem[64]
                            mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _2291 - _2259
                            mem[mem[64] + 36] = _3204 - (_3156 * arg4 / 10000)
                            mem[mem[64] + 68] = 160
                            _3236 = mem[_2342]
                            mem[mem[64] + 164] = mem[_2342]
                            idx = 0
                            s = _2342 + 32
                            t = mem[64] + 196
                            while idx < _3236:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_3220 + 100] = msg.sender
                            mem[_3220 + 132] = block.timestamp
                            require ext_code.size(arg6)
                            call arg6.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _3220 + (32 * _3236) + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3396 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3396] <= test266151307()
                            require _3396 + mem[_3396] + 31 < _3396 + return_data.size
                            if mem[_3396 + mem[_3396]] > test266151307():
                                revert with 0, 65
                            if _3396 + ceil32(return_data.size) + ceil32(32 * mem[_3396 + mem[_3396]]) + 1 > test266151307() or ceil32(32 * mem[_3396 + mem[_3396]]) + 1 < 0:
                                revert with 0, 65
                            require return_data.size >= mem[_3396] + (32 * mem[_3396 + mem[_3396]]) + 32
                        else:
                            _2340 = mem[64]
                            mem[mem[64]] = 3
                            mem[64] = mem[64] + 128
                            if 0 >= mem[_2340]:
                                revert with 0, 50
                            mem[_2340 + 32] = arg2
                            if 1 >= mem[_2340]:
                                revert with 0, 50
                            mem[_2340 + 64] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                            if 2 >= mem[_2340]:
                                revert with 0, 50
                            mem[_2340 + 96] = arg1
                            mem[_2340 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[_2340 + 132] = _2291 - _2259
                            mem[_2340 + 164] = 64
                            mem[_2340 + 196] = mem[_2340]
                            idx = 0
                            s = _2340 + 32
                            t = _2340 + 228
                            while idx < mem[_2340]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(arg6)
                            staticcall arg6.mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len _2340 + (32 * mem[_2340]) + -mem[64] + 224]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2787 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2803 = mem[_2787]
                            require mem[_2787] <= test266151307()
                            require _2787 + mem[_2787] + 31 < _2787 + return_data.size
                            _2819 = mem[_2787 + mem[_2787]]
                            if mem[_2787 + mem[_2787]] > test266151307():
                                revert with 0, 65
                            if _2787 + ceil32(return_data.size) + ceil32(32 * mem[_2787 + mem[_2787]]) + 1 > test266151307() or ceil32(32 * mem[_2787 + mem[_2787]]) + 1 < 0:
                                revert with 0, 65
                            mem[64] = _2787 + ceil32(return_data.size) + ceil32(32 * mem[_2787 + mem[_2787]]) + 1
                            mem[_2787 + ceil32(return_data.size)] = _2819
                            require return_data.size >= _2803 + (32 * _2819) + 32
                            mem[_2787 + ceil32(return_data.size) + 32 len 32 * _2819] = mem[_2787 + _2803 + 32 len 32 * _2819]
                            if mem[_2340] < 1:
                                revert with 0, 17
                            if mem[_2340] - 1 >= _2819:
                                revert with 0, 50
                            _3155 = mem[(32 * mem[_2340] - 1) + _2787 + ceil32(return_data.size) + 32]
                            if mem[(32 * mem[_2340] - 1) + _2787 + ceil32(return_data.size) + 32] and arg4 > -1 / mem[(32 * mem[_2340] - 1) + _2787 + ceil32(return_data.size) + 32]:
                                revert with 0, 17
                            if mem[_2340] < 1:
                                revert with 0, 17
                            if mem[_2340] - 1 >= _2819:
                                revert with 0, 50
                            _3203 = mem[(32 * mem[_2340] - 1) + _2787 + ceil32(return_data.size) + 32]
                            if mem[(32 * mem[_2340] - 1) + _2787 + ceil32(return_data.size) + 32] < mem[(32 * mem[_2340] - 1) + _2787 + ceil32(return_data.size) + 32] * arg4 / 10000:
                                revert with 0, 17
                            _3219 = mem[64]
                            mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _2291 - _2259
                            mem[mem[64] + 36] = _3203 - (_3155 * arg4 / 10000)
                            mem[mem[64] + 68] = 160
                            _3235 = mem[_2340]
                            mem[mem[64] + 164] = mem[_2340]
                            idx = 0
                            s = _2340 + 32
                            t = mem[64] + 196
                            while idx < _3235:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_3219 + 100] = msg.sender
                            mem[_3219 + 132] = block.timestamp
                            require ext_code.size(arg6)
                            call arg6.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _3219 + (32 * _3235) + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3395 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3395] <= test266151307()
                            require _3395 + mem[_3395] + 31 < _3395 + return_data.size
                            if mem[_3395 + mem[_3395]] > test266151307():
                                revert with 0, 65
                            if _3395 + ceil32(return_data.size) + ceil32(32 * mem[_3395 + mem[_3395]]) + 1 > test266151307() or ceil32(32 * mem[_3395 + mem[_3395]]) + 1 < 0:
                                revert with 0, 65
                            require return_data.size >= mem[_3395] + (32 * mem[_3395 + mem[_3395]]) + 32
}



}
