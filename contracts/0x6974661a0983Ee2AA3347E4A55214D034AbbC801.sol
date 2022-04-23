contract main {




// =====================  Runtime code  =====================


#
#  - sub_0d76b0e0(?)
#
address owner;

function getOwner() payable {
    return owner
}

function changeOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    emit OwnerSet(owner, arg1);
    owner = arg1
}

function w(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
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
}

function _fallback() payable {
    require 4 <= calldata.size
    require calldata.size <= calldata.size
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg3 == arg3
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg4.length)) + 97 > test266151307() or ceil32(ceil32(arg4.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg4 + arg4.length + 36 <= calldata.size
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    require arg4.length >= 160
    require mem[128] == mem[128]
    require mem[160] == mem[160]
    require mem[192] == mem[204 len 20]
    require mem[224] == mem[236 len 20]
    require mem[256] == bool(mem[256])
    require ext_code.size(mem[204 len 20])
    if not mem[256]:
        staticcall mem[204 len 20].token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0xa9059cbb with:
             gas gas_remaining wei
            args address(mem[192]), mem[160]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(mem[204 len 20])
        call mem[204 len 20].swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
             gas gas_remaining wei
            args 0, mem[128], address(mem[224]), 128, 0
    else:
        staticcall mem[204 len 20].token1() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0xa9059cbb with:
             gas gas_remaining wei
            args address(mem[192]), mem[160]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(mem[204 len 20])
        call mem[204 len 20].swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
             gas gas_remaining wei
            args mem[128], 0, address(mem[224]), 128, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_e946a2d0(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + 97 > test266151307() or floor32(('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if ('cd', 4).length and 2 > -1 / ('cd', 4).length:
        revert with 'NH{q', 17
    if 2 * ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    mem[floor32(('cd', 4).length) + 97] = 2 * ('cd', 4).length
    mem[64] = floor32(('cd', 4).length) + (64 * ('cd', 4).length) + 129
    if not uint255(('cd', 4).length):
        idx = 0
        s = 0
        while idx < ('cd', 4).length:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            require ext_code.size(mem[(32 * idx) + 140 len 20])
            staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _78 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            require mem[_78] == mem[_78 + 18 len 14]
            _87 = mem[_78 + 32]
            require mem[_78 + 32] == mem[_78 + 50 len 14]
            require mem[_78 + 64] == mem[_78 + 92 len 4]
            if s == -1:
                revert with 'NH{q', 17
            if s >= mem[floor32(('cd', 4).length) + 97]:
                revert with 'NH{q', 50
            mem[(32 * s) + floor32(('cd', 4).length) + 129] = mem[_78 + 18 len 14]
            if s + 1 == -1:
                revert with 'NH{q', 17
            if s + 1 >= mem[floor32(('cd', 4).length) + 97]:
                revert with 'NH{q', 50
            mem[(32 * s + 1) + floor32(('cd', 4).length) + 129] = Mask(112, 0, _87)
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + 2
            continue 
        _70 = mem[64]
        mem[mem[64]] = 32
        _80 = mem[floor32(('cd', 4).length) + 97]
        mem[mem[64] + 32] = mem[floor32(('cd', 4).length) + 97]
        idx = 0
        s = floor32(('cd', 4).length) + 129
        t = mem[64] + 64
        while idx < _80:
            mem[t] = mem[s + 18 len 14]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _70 + (32 * _80) + -mem[64] + 64
    mem[floor32(('cd', 4).length) + 129 len 64 * ('cd', 4).length] = call.data[calldata.size len 64 * ('cd', 4).length]
    idx = 0
    s = 0
    while idx < ('cd', 4).length:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        require ext_code.size(mem[(32 * idx) + 140 len 20])
        staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                gas gas_remaining wei
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _79 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        require mem[_79] == mem[_79 + 18 len 14]
        _89 = mem[_79 + 32]
        require mem[_79 + 32] == mem[_79 + 50 len 14]
        require mem[_79 + 64] == mem[_79 + 92 len 4]
        if s == -1:
            revert with 'NH{q', 17
        if s >= mem[floor32(('cd', 4).length) + 97]:
            revert with 'NH{q', 50
        mem[(32 * s) + floor32(('cd', 4).length) + 129] = mem[_79 + 18 len 14]
        if s + 1 == -1:
            revert with 'NH{q', 17
        if s + 1 >= mem[floor32(('cd', 4).length) + 97]:
            revert with 'NH{q', 50
        mem[(32 * s + 1) + floor32(('cd', 4).length) + 129] = Mask(112, 0, _89)
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s + 2
        continue 
    _74 = mem[64]
    mem[mem[64]] = 32
    _81 = mem[floor32(('cd', 4).length) + 97]
    mem[mem[64] + 32] = mem[floor32(('cd', 4).length) + 97]
    idx = 0
    s = floor32(('cd', 4).length) + 129
    t = mem[64] + 64
    while idx < _81:
        mem[t] = mem[s + 18 len 14]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len _74 + (32 * _81) + -mem[64] + 64
}

function sub_2fd22a7f(?) payable {
    require calldata.size - 4 >= 192
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    require arg5 == bool(arg5)
    require arg6 == bool(arg6)
    require ext_code.size(address(arg4))
    if arg6:
        staticcall address(arg4).token1() with:
                gas gas_remaining wei
    else:
        staticcall address(arg4).token0() with:
                gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(arg4))
    staticcall address(arg4).getReserves() with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 256 len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    mem[ceil32(return_data.size) + 160] = ext_call.return_data[50 len 14]
    mem[(2 * ceil32(return_data.size)) + 256] = 0x902f1ac00000000000000000000000000000000000000000000000000000000
    require ext_code.size(address(arg3))
    staticcall address(arg3).getReserves() with:
            gas gas_remaining wei
           args mem[(2 * ceil32(return_data.size)) + 260 len ceil32(return_data.size)]
    mem[(2 * ceil32(return_data.size)) + 256 len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    mem[ceil32(return_data.size) + 224] = ext_call.return_data[50 len 14]
    if arg2 <= 0:
        mem[(4 * ceil32(return_data.size)) + 256] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(4 * ceil32(return_data.size)) + 260] = 32
        mem[(4 * ceil32(return_data.size)) + 292] = 44
        mem[(4 * ceil32(return_data.size)) + 324] = 'UniswapV2Library: INSUFFICIENT_O'
        mem[(4 * ceil32(return_data.size)) + 356] = 'UTPUT_AMOUNT'
        revert with memory
          from (4 * ceil32(return_data.size)) + 256
           len (5 * ceil32(return_data.size)) + 132
    if not arg6:
        if mem[ceil32(return_data.size) + 178 len 14] <= 0:
            mem[(4 * ceil32(return_data.size)) + 256] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(4 * ceil32(return_data.size)) + 260] = 32
            mem[(4 * ceil32(return_data.size)) + 292] = 40
            mem[(4 * ceil32(return_data.size)) + 324] = 'UniswapV2Library: INSUFFICIENT_L'
            mem[(4 * ceil32(return_data.size)) + 356] = 'IQUIDITY'
            revert with memory
              from (4 * ceil32(return_data.size)) + 256
               len (5 * ceil32(return_data.size)) + 132
        if Mask(112, 0, ext_call.return_data[0]) <= 0:
            mem[(4 * ceil32(return_data.size)) + 256] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(4 * ceil32(return_data.size)) + 260] = 32
            mem[(4 * ceil32(return_data.size)) + 292] = 40
            mem[(4 * ceil32(return_data.size)) + 324] = 'UniswapV2Library: INSUFFICIENT_L'
            mem[(4 * ceil32(return_data.size)) + 356] = 'IQUIDITY'
            revert with memory
              from (4 * ceil32(return_data.size)) + 256
               len (5 * ceil32(return_data.size)) + 132
        if not mem[ceil32(return_data.size) + 178 len 14]:
            mem[(4 * ceil32(return_data.size)) + 256] = 30
            mem[(4 * ceil32(return_data.size)) + 288] = 'SafeMath: subtraction overflow'
            if arg2 > Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if Mask(112, 0, ext_call.return_data[0]) < arg2:
                revert with 'NH{q', 17
            if not Mask(112, 0, ext_call.return_data[0]) - arg2:
                revert with 'NH{q', 18
            if Mask(112, 0, ext_call.return_data[0]) - arg2 and arg1 > -1 / Mask(112, 0, ext_call.return_data[0]) - arg2:
                revert with 'NH{q', 17
            if not Mask(112, 0, ext_call.return_data[0]) - arg2:
                revert with 'NH{q', 18
            if (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) / Mask(112, 0, ext_call.return_data[0]) - arg2 != arg1:
                mem[(4 * ceil32(return_data.size)) + 320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + 324] = 32
                mem[(4 * ceil32(return_data.size)) + 356] = 33
                mem[(4 * ceil32(return_data.size)) + 388] = 'SafeMath: multiplication overflo'
                mem[(4 * ceil32(return_data.size)) + 420] = 'w'
                revert with memory
                  from (4 * ceil32(return_data.size)) + 320
                   len (5 * ceil32(return_data.size)) + 132
            if not (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1):
                revert with 'NH{q', 18
            if 0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) > -2:
                revert with 'NH{q', 17
            if (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) + 1 < 0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1):
                mem[(4 * ceil32(return_data.size)) + 320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + 324] = 32
                mem[(4 * ceil32(return_data.size)) + 356] = 27
                mem[(4 * ceil32(return_data.size)) + 388] = 'SafeMath: addition overflow'
                revert with memory
                  from (4 * ceil32(return_data.size)) + 320
                   len (5 * ceil32(return_data.size)) + 100
            if (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) + 1 <= 0:
                mem[(4 * ceil32(return_data.size)) + 320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + 324] = 32
                mem[(4 * ceil32(return_data.size)) + 356] = 44
                mem[(4 * ceil32(return_data.size)) + 388] = 'UniswapV2Library: INSUFFICIENT_O'
                mem[(4 * ceil32(return_data.size)) + 420] = 'UTPUT_AMOUNT'
                revert with memory
                  from (4 * ceil32(return_data.size)) + 320
                   len (5 * ceil32(return_data.size)) + 132
            if arg5:
                if mem[ceil32(return_data.size) + 242 len 14] <= 0:
                    mem[(4 * ceil32(return_data.size)) + 320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 324] = 32
                    mem[(4 * ceil32(return_data.size)) + 356] = 40
                    mem[(4 * ceil32(return_data.size)) + 388] = 'UniswapV2Library: INSUFFICIENT_L'
                    mem[(4 * ceil32(return_data.size)) + 420] = 'IQUIDITY'
                    revert with memory
                      from (4 * ceil32(return_data.size)) + 320
                       len (5 * ceil32(return_data.size)) + 132
                if arg5:
                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                        mem[(4 * ceil32(return_data.size)) + 320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[(4 * ceil32(return_data.size)) + 324] = 32
                        mem[(4 * ceil32(return_data.size)) + 356] = 40
                        mem[(4 * ceil32(return_data.size)) + 388] = 'UniswapV2Library: INSUFFICIENT_L'
                        mem[(4 * ceil32(return_data.size)) + 420] = 'IQUIDITY'
                        revert with memory
                          from (4 * ceil32(return_data.size)) + 320
                           len (5 * ceil32(return_data.size)) + 132
                    if not mem[ceil32(return_data.size) + 242 len 14]:
                        if (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) + 1 > Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if Mask(112, 0, ext_call.return_data[0]) < (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) + 1:
                            revert with 'NH{q', 17
                        if not Mask(112, 0, ext_call.return_data[0]) + -(0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) - 1:
                            revert with 'NH{q', 18
                        if Mask(112, 0, ext_call.return_data[0]) + -(0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) - 1 and arg1 > -1 / Mask(112, 0, ext_call.return_data[0]) + -(0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) - 1:
                            revert with 'NH{q', 17
                        if not Mask(112, 0, ext_call.return_data[0]) + -(0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) - 1:
                            revert with 'NH{q', 18
                        if -arg1 + (Mask(112, 0, ext_call.return_data[0]) * arg1) - (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * arg1) / Mask(112, 0, ext_call.return_data[0]) + -(0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) - 1 != arg1:
                            mem[(4 * ceil32(return_data.size)) + 384] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + 388] = 32
                            mem[(4 * ceil32(return_data.size)) + 420] = 33
                            mem[(4 * ceil32(return_data.size)) + 452] = 'SafeMath: multiplication overflo'
                            mem[(4 * ceil32(return_data.size)) + 484] = 'w'
                            revert with memory
                              from (4 * ceil32(return_data.size)) + 384
                               len (5 * ceil32(return_data.size)) + 132
                        if not -arg1 + (Mask(112, 0, ext_call.return_data[0]) * arg1) - (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * arg1):
                            revert with 'NH{q', 18
                        if 0 / -arg1 + (Mask(112, 0, ext_call.return_data[0]) * arg1) - (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * arg1) > -2:
                            revert with 'NH{q', 17
                        if (0 / -arg1 + (Mask(112, 0, ext_call.return_data[0]) * arg1) - (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * arg1)) + 1 < 0 / -arg1 + (Mask(112, 0, ext_call.return_data[0]) * arg1) - (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * arg1):
                            mem[(4 * ceil32(return_data.size)) + 384] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + 388] = 32
                            mem[(4 * ceil32(return_data.size)) + 420] = 27
                            mem[(4 * ceil32(return_data.size)) + 452] = 'SafeMath: addition overflow'
                            revert with memory
                              from (4 * ceil32(return_data.size)) + 384
                               len (5 * ceil32(return_data.size)) + 100
                        mem[(4 * ceil32(return_data.size)) + 416] = (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) + 1
                        mem[(4 * ceil32(return_data.size)) + 448] = (0 / -arg1 + (Mask(112, 0, ext_call.return_data[0]) * arg1) - (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * arg1)) + 1
                    else:
                        if mem[ceil32(return_data.size) + 242 len 14] and (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) + 1 > -1 / mem[ceil32(return_data.size) + 242 len 14]:
                            revert with 'NH{q', 17
                        if not mem[ceil32(return_data.size) + 242 len 14]:
                            revert with 'NH{q', 18
                        if mem[ceil32(return_data.size) + 242 len 14] + (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * mem[ceil32(return_data.size) + 242 len 14]) / mem[ceil32(return_data.size) + 242 len 14] != (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) + 1:
                            mem[(4 * ceil32(return_data.size)) + 320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + 324] = 32
                            mem[(4 * ceil32(return_data.size)) + 356] = 33
                            mem[(4 * ceil32(return_data.size)) + 388] = 'SafeMath: multiplication overflo'
                            mem[(4 * ceil32(return_data.size)) + 420] = 'w'
                            revert with memory
                              from (4 * ceil32(return_data.size)) + 320
                               len (5 * ceil32(return_data.size)) + 132
                        if not mem[ceil32(return_data.size) + 242 len 14] + (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * mem[ceil32(return_data.size) + 242 len 14]):
                            if (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) + 1 > Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if Mask(112, 0, ext_call.return_data[0]) < (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) + 1:
                                revert with 'NH{q', 17
                            if not Mask(112, 0, ext_call.return_data[0]) + -(0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) - 1:
                                revert with 'NH{q', 18
                            if Mask(112, 0, ext_call.return_data[0]) + -(0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) - 1 and arg1 > -1 / Mask(112, 0, ext_call.return_data[0]) + -(0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) - 1:
                                revert with 'NH{q', 17
                            if not Mask(112, 0, ext_call.return_data[0]) + -(0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) - 1:
                                revert with 'NH{q', 18
                            if -arg1 + (Mask(112, 0, ext_call.return_data[0]) * arg1) - (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * arg1) / Mask(112, 0, ext_call.return_data[0]) + -(0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) - 1 != arg1:
                                mem[(4 * ceil32(return_data.size)) + 384] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + 388] = 32
                                mem[(4 * ceil32(return_data.size)) + 420] = 33
                                mem[(4 * ceil32(return_data.size)) + 452] = 'SafeMath: multiplication overflo'
                                mem[(4 * ceil32(return_data.size)) + 484] = 'w'
                                revert with memory
                                  from (4 * ceil32(return_data.size)) + 384
                                   len (5 * ceil32(return_data.size)) + 132
                            if not -arg1 + (Mask(112, 0, ext_call.return_data[0]) * arg1) - (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * arg1):
                                revert with 'NH{q', 18
                            if 0 / -arg1 + (Mask(112, 0, ext_call.return_data[0]) * arg1) - (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * arg1) > -2:
                                revert with 'NH{q', 17
                            if (0 / -arg1 + (Mask(112, 0, ext_call.return_data[0]) * arg1) - (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * arg1)) + 1 < 0 / -arg1 + (Mask(112, 0, ext_call.return_data[0]) * arg1) - (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * arg1):
                                mem[(4 * ceil32(return_data.size)) + 384] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + 388] = 32
                                mem[(4 * ceil32(return_data.size)) + 420] = 27
                                mem[(4 * ceil32(return_data.size)) + 452] = 'SafeMath: addition overflow'
                                revert with memory
                                  from (4 * ceil32(return_data.size)) + 384
                                   len (5 * ceil32(return_data.size)) + 100
                            mem[(4 * ceil32(return_data.size)) + 416] = (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) + 1
                            mem[(4 * ceil32(return_data.size)) + 448] = (0 / -arg1 + (Mask(112, 0, ext_call.return_data[0]) * arg1) - (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * arg1)) + 1
                        else:
                            if mem[ceil32(return_data.size) + 242 len 14] + (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * mem[ceil32(return_data.size) + 242 len 14]) and 1000 > -1 / mem[ceil32(return_data.size) + 242 len 14] + (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * mem[ceil32(return_data.size) + 242 len 14]):
                                revert with 'NH{q', 17
                            if not mem[ceil32(return_data.size) + 242 len 14] + (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * mem[ceil32(return_data.size) + 242 len 14]):
                                revert with 'NH{q', 18
                            if (1000 * mem[ceil32(return_data.size) + 242 len 14]) + (1000 * 0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * mem[ceil32(return_data.size) + 242 len 14]) / mem[ceil32(return_data.size) + 242 len 14] + (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * mem[ceil32(return_data.size) + 242 len 14]) != 1000:
                                mem[(4 * ceil32(return_data.size)) + 320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + 324] = 32
                                mem[(4 * ceil32(return_data.size)) + 356] = 33
                                mem[(4 * ceil32(return_data.size)) + 388] = 'SafeMath: multiplication overflo'
                                mem[(4 * ceil32(return_data.size)) + 420] = 'w'
                                revert with memory
                                  from (4 * ceil32(return_data.size)) + 320
                                   len (5 * ceil32(return_data.size)) + 132
                            if (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) + 1 > Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if Mask(112, 0, ext_call.return_data[0]) < (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) + 1:
                                revert with 'NH{q', 17
                            if not Mask(112, 0, ext_call.return_data[0]) + -(0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) - 1:
                                revert with 'NH{q', 18
                            if Mask(112, 0, ext_call.return_data[0]) + -(0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) - 1 and arg1 > -1 / Mask(112, 0, ext_call.return_data[0]) + -(0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) - 1:
                                revert with 'NH{q', 17
                            if not Mask(112, 0, ext_call.return_data[0]) + -(0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) - 1:
                                revert with 'NH{q', 18
                            if -arg1 + (Mask(112, 0, ext_call.return_data[0]) * arg1) - (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * arg1) / Mask(112, 0, ext_call.return_data[0]) + -(0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) - 1 != arg1:
                                mem[(4 * ceil32(return_data.size)) + 384] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + 388] = 32
                                mem[(4 * ceil32(return_data.size)) + 420] = 33
                                mem[(4 * ceil32(return_data.size)) + 452] = 'SafeMath: multiplication overflo'
                                mem[(4 * ceil32(return_data.size)) + 484] = 'w'
                                revert with memory
                                  from (4 * ceil32(return_data.size)) + 384
                                   len (5 * ceil32(return_data.size)) + 132
                            if not -arg1 + (Mask(112, 0, ext_call.return_data[0]) * arg1) - (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * arg1):
                                revert with 'NH{q', 18
                            if (1000 * Mask(112, 0, ext_call.return_data[50 len 14])) + (1000 * 0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * Mask(112, 0, ext_call.return_data[50 len 14])) / -arg1 + (Mask(112, 0, ext_call.return_data[0]) * arg1) - (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * arg1) > -2:
                                revert with 'NH{q', 17
                            if ((1000 * Mask(112, 0, ext_call.return_data[50 len 14])) + (1000 * 0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * Mask(112, 0, ext_call.return_data[50 len 14])) / -arg1 + (Mask(112, 0, ext_call.return_data[0]) * arg1) - (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * arg1)) + 1 < (1000 * Mask(112, 0, ext_call.return_data[50 len 14])) + (1000 * 0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * Mask(112, 0, ext_call.return_data[50 len 14])) / -arg1 + (Mask(112, 0, ext_call.return_data[0]) * arg1) - (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * arg1):
                                mem[(4 * ceil32(return_data.size)) + 384] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + 388] = 32
                                mem[(4 * ceil32(return_data.size)) + 420] = 27
                                mem[(4 * ceil32(return_data.size)) + 452] = 'SafeMath: addition overflow'
                                revert with memory
                                  from (4 * ceil32(return_data.size)) + 384
                                   len (5 * ceil32(return_data.size)) + 100
                            mem[(4 * ceil32(return_data.size)) + 416] = (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) + 1
                            mem[(4 * ceil32(return_data.size)) + 448] = ((1000 * Mask(112, 0, ext_call.return_data[50 len 14])) + (1000 * 0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * Mask(112, 0, ext_call.return_data[50 len 14])) / -arg1 + (Mask(112, 0, ext_call.return_data[0]) * arg1) - (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * arg1)) + 1
                else:
                    if mem[ceil32(return_data.size) + 242 len 14] <= 0:
                        mem[(4 * ceil32(return_data.size)) + 320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[(4 * ceil32(return_data.size)) + 324] = 32
                        mem[(4 * ceil32(return_data.size)) + 356] = 40
                        mem[(4 * ceil32(return_data.size)) + 388] = 'UniswapV2Library: INSUFFICIENT_L'
                        mem[(4 * ceil32(return_data.size)) + 420] = 'IQUIDITY'
                        revert with memory
                          from (4 * ceil32(return_data.size)) + 320
                           len (5 * ceil32(return_data.size)) + 132
                    if not mem[ceil32(return_data.size) + 242 len 14]:
                        if (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) + 1 > Mask(112, 0, ext_call.return_data[50 len 14]):
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if Mask(112, 0, ext_call.return_data[50 len 14]) < (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) + 1:
                            revert with 'NH{q', 17
                        if not Mask(112, 0, ext_call.return_data[50 len 14]) + -(0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) - 1:
                            revert with 'NH{q', 18
                        if Mask(112, 0, ext_call.return_data[50 len 14]) + -(0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) - 1 and arg1 > -1 / Mask(112, 0, ext_call.return_data[50 len 14]) + -(0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) - 1:
                            revert with 'NH{q', 17
                        if not Mask(112, 0, ext_call.return_data[50 len 14]) + -(0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) - 1:
                            revert with 'NH{q', 18
                        if -arg1 + (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * arg1) / Mask(112, 0, ext_call.return_data[50 len 14]) + -(0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) - 1 != arg1:
                            mem[(4 * ceil32(return_data.size)) + 384] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + 388] = 32
                            mem[(4 * ceil32(return_data.size)) + 420] = 33
                            mem[(4 * ceil32(return_data.size)) + 452] = 'SafeMath: multiplication overflo'
                            mem[(4 * ceil32(return_data.size)) + 484] = 'w'
                            revert with memory
                              from (4 * ceil32(return_data.size)) + 384
                               len (5 * ceil32(return_data.size)) + 132
                        if not -arg1 + (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * arg1):
                            revert with 'NH{q', 18
                        if 0 / -arg1 + (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * arg1) > -2:
                            revert with 'NH{q', 17
                        if (0 / -arg1 + (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * arg1)) + 1 < 0 / -arg1 + (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * arg1):
                            mem[(4 * ceil32(return_data.size)) + 384] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + 388] = 32
                            mem[(4 * ceil32(return_data.size)) + 420] = 27
                            mem[(4 * ceil32(return_data.size)) + 452] = 'SafeMath: addition overflow'
                            revert with memory
                              from (4 * ceil32(return_data.size)) + 384
                               len (5 * ceil32(return_data.size)) + 100
                        mem[(4 * ceil32(return_data.size)) + 416] = (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) + 1
                        mem[(4 * ceil32(return_data.size)) + 448] = (0 / -arg1 + (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * arg1)) + 1
                    else:
                        if mem[ceil32(return_data.size) + 242 len 14] and (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) + 1 > -1 / mem[ceil32(return_data.size) + 242 len 14]:
                            revert with 'NH{q', 17
                        if not mem[ceil32(return_data.size) + 242 len 14]:
                            revert with 'NH{q', 18
                        if mem[ceil32(return_data.size) + 242 len 14] + (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * mem[ceil32(return_data.size) + 242 len 14]) / mem[ceil32(return_data.size) + 242 len 14] != (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) + 1:
                            mem[(4 * ceil32(return_data.size)) + 320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + 324] = 32
                            mem[(4 * ceil32(return_data.size)) + 356] = 33
                            mem[(4 * ceil32(return_data.size)) + 388] = 'SafeMath: multiplication overflo'
                            mem[(4 * ceil32(return_data.size)) + 420] = 'w'
                            revert with memory
                              from (4 * ceil32(return_data.size)) + 320
                               len (5 * ceil32(return_data.size)) + 132
                        if not mem[ceil32(return_data.size) + 242 len 14] + (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * mem[ceil32(return_data.size) + 242 len 14]):
                            if (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) + 1 > Mask(112, 0, ext_call.return_data[50 len 14]):
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if Mask(112, 0, ext_call.return_data[50 len 14]) < (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) + 1:
                                revert with 'NH{q', 17
                            if not Mask(112, 0, ext_call.return_data[50 len 14]) + -(0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) - 1:
                                revert with 'NH{q', 18
                            if Mask(112, 0, ext_call.return_data[50 len 14]) + -(0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) - 1 and arg1 > -1 / Mask(112, 0, ext_call.return_data[50 len 14]) + -(0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) - 1:
                                revert with 'NH{q', 17
                            if not Mask(112, 0, ext_call.return_data[50 len 14]) + -(0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) - 1:
                                revert with 'NH{q', 18
                            if -arg1 + (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * arg1) / Mask(112, 0, ext_call.return_data[50 len 14]) + -(0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) - 1 != arg1:
                                mem[(4 * ceil32(return_data.size)) + 384] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + 388] = 32
                                mem[(4 * ceil32(return_data.size)) + 420] = 33
                                mem[(4 * ceil32(return_data.size)) + 452] = 'SafeMath: multiplication overflo'
                                mem[(4 * ceil32(return_data.size)) + 484] = 'w'
                                revert with memory
                                  from (4 * ceil32(return_data.size)) + 384
                                   len (5 * ceil32(return_data.size)) + 132
                            if not -arg1 + (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * arg1):
                                revert with 'NH{q', 18
                            if 0 / -arg1 + (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * arg1) > -2:
                                revert with 'NH{q', 17
                            if (0 / -arg1 + (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * arg1)) + 1 < 0 / -arg1 + (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * arg1):
                                mem[(4 * ceil32(return_data.size)) + 384] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + 388] = 32
                                mem[(4 * ceil32(return_data.size)) + 420] = 27
                                mem[(4 * ceil32(return_data.size)) + 452] = 'SafeMath: addition overflow'
                                revert with memory
                                  from (4 * ceil32(return_data.size)) + 384
                                   len (5 * ceil32(return_data.size)) + 100
                            mem[(4 * ceil32(return_data.size)) + 416] = (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) + 1
                            mem[(4 * ceil32(return_data.size)) + 448] = (0 / -arg1 + (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * arg1)) + 1
                        else:
                            if mem[ceil32(return_data.size) + 242 len 14] + (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * mem[ceil32(return_data.size) + 242 len 14]) and 1000 > -1 / mem[ceil32(return_data.size) + 242 len 14] + (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * mem[ceil32(return_data.size) + 242 len 14]):
                                revert with 'NH{q', 17
                            if not mem[ceil32(return_data.size) + 242 len 14] + (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * mem[ceil32(return_data.size) + 242 len 14]):
                                revert with 'NH{q', 18
                            if (1000 * mem[ceil32(return_data.size) + 242 len 14]) + (1000 * 0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * mem[ceil32(return_data.size) + 242 len 14]) / mem[ceil32(return_data.size) + 242 len 14] + (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * mem[ceil32(return_data.size) + 242 len 14]) != 1000:
                                mem[(4 * ceil32(return_data.size)) + 320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + 324] = 32
                                mem[(4 * ceil32(return_data.size)) + 356] = 33
                                mem[(4 * ceil32(return_data.size)) + 388] = 'SafeMath: multiplication overflo'
                                mem[(4 * ceil32(return_data.size)) + 420] = 'w'
                                revert with memory
                                  from (4 * ceil32(return_data.size)) + 320
                                   len (5 * ceil32(return_data.size)) + 132
                            if (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) + 1 > Mask(112, 0, ext_call.return_data[50 len 14]):
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if Mask(112, 0, ext_call.return_data[50 len 14]) < (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) + 1:
                                revert with 'NH{q', 17
                            if not Mask(112, 0, ext_call.return_data[50 len 14]) + -(0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) - 1:
                                revert with 'NH{q', 18
                            if Mask(112, 0, ext_call.return_data[50 len 14]) + -(0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) - 1 and arg1 > -1 / Mask(112, 0, ext_call.return_data[50 len 14]) + -(0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) - 1:
                                revert with 'NH{q', 17
                            if not Mask(112, 0, ext_call.return_data[50 len 14]) + -(0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) - 1:
                                revert with 'NH{q', 18
                            if -arg1 + (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * arg1) / Mask(112, 0, ext_call.return_data[50 len 14]) + -(0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) - 1 != arg1:
                                mem[(4 * ceil32(return_data.size)) + 384] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + 388] = 32
                                mem[(4 * ceil32(return_data.size)) + 420] = 33
                                mem[(4 * ceil32(return_data.size)) + 452] = 'SafeMath: multiplication overflo'
                                mem[(4 * ceil32(return_data.size)) + 484] = 'w'
                                revert with memory
                                  from (4 * ceil32(return_data.size)) + 384
                                   len (5 * ceil32(return_data.size)) + 132
                            if not -arg1 + (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * arg1):
                                revert with 'NH{q', 18
                            if (1000 * Mask(112, 0, ext_call.return_data[50 len 14])) + (1000 * 0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * Mask(112, 0, ext_call.return_data[50 len 14])) / -arg1 + (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * arg1) > -2:
                                revert with 'NH{q', 17
                            if ((1000 * Mask(112, 0, ext_call.return_data[50 len 14])) + (1000 * 0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * Mask(112, 0, ext_call.return_data[50 len 14])) / -arg1 + (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * arg1)) + 1 < (1000 * Mask(112, 0, ext_call.return_data[50 len 14])) + (1000 * 0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * Mask(112, 0, ext_call.return_data[50 len 14])) / -arg1 + (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * arg1):
                                mem[(4 * ceil32(return_data.size)) + 384] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + 388] = 32
                                mem[(4 * ceil32(return_data.size)) + 420] = 27
                                mem[(4 * ceil32(return_data.size)) + 452] = 'SafeMath: addition overflow'
                                revert with memory
                                  from (4 * ceil32(return_data.size)) + 384
                                   len (5 * ceil32(return_data.size)) + 100
                            mem[(4 * ceil32(return_data.size)) + 416] = (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) + 1
                            mem[(4 * ceil32(return_data.size)) + 448] = ((1000 * Mask(112, 0, ext_call.return_data[50 len 14])) + (1000 * 0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * Mask(112, 0, ext_call.return_data[50 len 14])) / -arg1 + (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * arg1)) + 1
            else:
                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                    mem[(4 * ceil32(return_data.size)) + 320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 324] = 32
                    mem[(4 * ceil32(return_data.size)) + 356] = 40
                    mem[(4 * ceil32(return_data.size)) + 388] = 'UniswapV2Library: INSUFFICIENT_L'
                    mem[(4 * ceil32(return_data.size)) + 420] = 'IQUIDITY'
                    revert with memory
                      from (4 * ceil32(return_data.size)) + 320
                       len (5 * ceil32(return_data.size)) + 132
                if arg5:
                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                        mem[(4 * ceil32(return_data.size)) + 320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[(4 * ceil32(return_data.size)) + 324] = 32
                        mem[(4 * ceil32(return_data.size)) + 356] = 40
                        mem[(4 * ceil32(return_data.size)) + 388] = 'UniswapV2Library: INSUFFICIENT_L'
                        mem[(4 * ceil32(return_data.size)) + 420] = 'IQUIDITY'
                        revert with memory
                          from (4 * ceil32(return_data.size)) + 320
                           len (5 * ceil32(return_data.size)) + 132
                    if not Mask(112, 0, ext_call.return_data[0]):
                        if (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) + 1 > Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if Mask(112, 0, ext_call.return_data[0]) < (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) + 1:
                            revert with 'NH{q', 17
                        if not Mask(112, 0, ext_call.return_data[0]) + -(0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) - 1:
                            revert with 'NH{q', 18
                        if Mask(112, 0, ext_call.return_data[0]) + -(0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) - 1 and arg1 > -1 / Mask(112, 0, ext_call.return_data[0]) + -(0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) - 1:
                            revert with 'NH{q', 17
                        if not Mask(112, 0, ext_call.return_data[0]) + -(0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) - 1:
                            revert with 'NH{q', 18
                        if -arg1 + (Mask(112, 0, ext_call.return_data[0]) * arg1) - (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * arg1) / Mask(112, 0, ext_call.return_data[0]) + -(0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) - 1 != arg1:
                            mem[(4 * ceil32(return_data.size)) + 384] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + 388] = 32
                            mem[(4 * ceil32(return_data.size)) + 420] = 33
                            mem[(4 * ceil32(return_data.size)) + 452] = 'SafeMath: multiplication overflo'
                            mem[(4 * ceil32(return_data.size)) + 484] = 'w'
                            revert with memory
                              from (4 * ceil32(return_data.size)) + 384
                               len (5 * ceil32(return_data.size)) + 132
                        if not -arg1 + (Mask(112, 0, ext_call.return_data[0]) * arg1) - (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * arg1):
                            revert with 'NH{q', 18
                        if 0 / -arg1 + (Mask(112, 0, ext_call.return_data[0]) * arg1) - (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * arg1) > -2:
                            revert with 'NH{q', 17
                        if (0 / -arg1 + (Mask(112, 0, ext_call.return_data[0]) * arg1) - (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * arg1)) + 1 < 0 / -arg1 + (Mask(112, 0, ext_call.return_data[0]) * arg1) - (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * arg1):
                            mem[(4 * ceil32(return_data.size)) + 384] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + 388] = 32
                            mem[(4 * ceil32(return_data.size)) + 420] = 27
                            mem[(4 * ceil32(return_data.size)) + 452] = 'SafeMath: addition overflow'
                            revert with memory
                              from (4 * ceil32(return_data.size)) + 384
                               len (5 * ceil32(return_data.size)) + 100
                        mem[(4 * ceil32(return_data.size)) + 416] = (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) + 1
                        mem[(4 * ceil32(return_data.size)) + 448] = (0 / -arg1 + (Mask(112, 0, ext_call.return_data[0]) * arg1) - (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * arg1)) + 1
                    else:
                        if Mask(112, 0, ext_call.return_data[0]) and (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) + 1 > -1 / Mask(112, 0, ext_call.return_data[0]):
                            revert with 'NH{q', 17
                        if not Mask(112, 0, ext_call.return_data[0]):
                            revert with 'NH{q', 18
                        if Mask(112, 0, ext_call.return_data[0]) + (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[0]) != (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) + 1:
                            mem[(4 * ceil32(return_data.size)) + 320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + 324] = 32
                            mem[(4 * ceil32(return_data.size)) + 356] = 33
                            mem[(4 * ceil32(return_data.size)) + 388] = 'SafeMath: multiplication overflo'
                            mem[(4 * ceil32(return_data.size)) + 420] = 'w'
                            revert with memory
                              from (4 * ceil32(return_data.size)) + 320
                               len (5 * ceil32(return_data.size)) + 132
                        if not Mask(112, 0, ext_call.return_data[0]) + (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * Mask(112, 0, ext_call.return_data[0])):
                            if (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) + 1 > Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if Mask(112, 0, ext_call.return_data[0]) < (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) + 1:
                                revert with 'NH{q', 17
                            if not Mask(112, 0, ext_call.return_data[0]) + -(0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) - 1:
                                revert with 'NH{q', 18
                            if Mask(112, 0, ext_call.return_data[0]) + -(0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) - 1 and arg1 > -1 / Mask(112, 0, ext_call.return_data[0]) + -(0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) - 1:
                                revert with 'NH{q', 17
                            if not Mask(112, 0, ext_call.return_data[0]) + -(0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) - 1:
                                revert with 'NH{q', 18
                            if -arg1 + (Mask(112, 0, ext_call.return_data[0]) * arg1) - (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * arg1) / Mask(112, 0, ext_call.return_data[0]) + -(0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) - 1 != arg1:
                                mem[(4 * ceil32(return_data.size)) + 384] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + 388] = 32
                                mem[(4 * ceil32(return_data.size)) + 420] = 33
                                mem[(4 * ceil32(return_data.size)) + 452] = 'SafeMath: multiplication overflo'
                                mem[(4 * ceil32(return_data.size)) + 484] = 'w'
                                revert with memory
                                  from (4 * ceil32(return_data.size)) + 384
                                   len (5 * ceil32(return_data.size)) + 132
                            if not -arg1 + (Mask(112, 0, ext_call.return_data[0]) * arg1) - (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * arg1):
                                revert with 'NH{q', 18
                            if 0 / -arg1 + (Mask(112, 0, ext_call.return_data[0]) * arg1) - (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * arg1) > -2:
                                revert with 'NH{q', 17
                            if (0 / -arg1 + (Mask(112, 0, ext_call.return_data[0]) * arg1) - (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * arg1)) + 1 < 0 / -arg1 + (Mask(112, 0, ext_call.return_data[0]) * arg1) - (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * arg1):
                                mem[(4 * ceil32(return_data.size)) + 384] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + 388] = 32
                                mem[(4 * ceil32(return_data.size)) + 420] = 27
                                mem[(4 * ceil32(return_data.size)) + 452] = 'SafeMath: addition overflow'
                                revert with memory
                                  from (4 * ceil32(return_data.size)) + 384
                                   len (5 * ceil32(return_data.size)) + 100
                            mem[(4 * ceil32(return_data.size)) + 416] = (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) + 1
                            mem[(4 * ceil32(return_data.size)) + 448] = (0 / -arg1 + (Mask(112, 0, ext_call.return_data[0]) * arg1) - (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * arg1)) + 1
                        else:
                            if Mask(112, 0, ext_call.return_data[0]) + (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * Mask(112, 0, ext_call.return_data[0])) and 1000 > -1 / Mask(112, 0, ext_call.return_data[0]) + (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * Mask(112, 0, ext_call.return_data[0])):
                                revert with 'NH{q', 17
                            if not Mask(112, 0, ext_call.return_data[0]) + (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * Mask(112, 0, ext_call.return_data[0])):
                                revert with 'NH{q', 18
                            if (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * 0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[0]) + (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * Mask(112, 0, ext_call.return_data[0])) != 1000:
                                mem[(4 * ceil32(return_data.size)) + 320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + 324] = 32
                                mem[(4 * ceil32(return_data.size)) + 356] = 33
                                mem[(4 * ceil32(return_data.size)) + 388] = 'SafeMath: multiplication overflo'
                                mem[(4 * ceil32(return_data.size)) + 420] = 'w'
                                revert with memory
                                  from (4 * ceil32(return_data.size)) + 320
                                   len (5 * ceil32(return_data.size)) + 132
                            if (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) + 1 > Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if Mask(112, 0, ext_call.return_data[0]) < (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) + 1:
                                revert with 'NH{q', 17
                            if not Mask(112, 0, ext_call.return_data[0]) + -(0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) - 1:
                                revert with 'NH{q', 18
                            if Mask(112, 0, ext_call.return_data[0]) + -(0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) - 1 and arg1 > -1 / Mask(112, 0, ext_call.return_data[0]) + -(0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) - 1:
                                revert with 'NH{q', 17
                            if not Mask(112, 0, ext_call.return_data[0]) + -(0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) - 1:
                                revert with 'NH{q', 18
                            if -arg1 + (Mask(112, 0, ext_call.return_data[0]) * arg1) - (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * arg1) / Mask(112, 0, ext_call.return_data[0]) + -(0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) - 1 != arg1:
                                mem[(4 * ceil32(return_data.size)) + 384] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + 388] = 32
                                mem[(4 * ceil32(return_data.size)) + 420] = 33
                                mem[(4 * ceil32(return_data.size)) + 452] = 'SafeMath: multiplication overflo'
                                mem[(4 * ceil32(return_data.size)) + 484] = 'w'
                                revert with memory
                                  from (4 * ceil32(return_data.size)) + 384
                                   len (5 * ceil32(return_data.size)) + 132
                            if not -arg1 + (Mask(112, 0, ext_call.return_data[0]) * arg1) - (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * arg1):
                                revert with 'NH{q', 18
                            if (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * 0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * Mask(112, 0, ext_call.return_data[0])) / -arg1 + (Mask(112, 0, ext_call.return_data[0]) * arg1) - (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * arg1) > -2:
                                revert with 'NH{q', 17
                            if ((1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * 0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * Mask(112, 0, ext_call.return_data[0])) / -arg1 + (Mask(112, 0, ext_call.return_data[0]) * arg1) - (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * arg1)) + 1 < (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * 0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * Mask(112, 0, ext_call.return_data[0])) / -arg1 + (Mask(112, 0, ext_call.return_data[0]) * arg1) - (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * arg1):
                                mem[(4 * ceil32(return_data.size)) + 384] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + 388] = 32
                                mem[(4 * ceil32(return_data.size)) + 420] = 27
                                mem[(4 * ceil32(return_data.size)) + 452] = 'SafeMath: addition overflow'
                                revert with memory
                                  from (4 * ceil32(return_data.size)) + 384
                                   len (5 * ceil32(return_data.size)) + 100
                            mem[(4 * ceil32(return_data.size)) + 416] = (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) + 1
                            mem[(4 * ceil32(return_data.size)) + 448] = ((1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * 0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * Mask(112, 0, ext_call.return_data[0])) / -arg1 + (Mask(112, 0, ext_call.return_data[0]) * arg1) - (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * arg1)) + 1
                else:
                    if mem[ceil32(return_data.size) + 242 len 14] <= 0:
                        mem[(4 * ceil32(return_data.size)) + 320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[(4 * ceil32(return_data.size)) + 324] = 32
                        mem[(4 * ceil32(return_data.size)) + 356] = 40
                        mem[(4 * ceil32(return_data.size)) + 388] = 'UniswapV2Library: INSUFFICIENT_L'
                        mem[(4 * ceil32(return_data.size)) + 420] = 'IQUIDITY'
                        revert with memory
                          from (4 * ceil32(return_data.size)) + 320
                           len (5 * ceil32(return_data.size)) + 132
                    if not Mask(112, 0, ext_call.return_data[0]):
                        if (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) + 1 > Mask(112, 0, ext_call.return_data[50 len 14]):
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if Mask(112, 0, ext_call.return_data[50 len 14]) < (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) + 1:
                            revert with 'NH{q', 17
                        if not Mask(112, 0, ext_call.return_data[50 len 14]) + -(0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) - 1:
                            revert with 'NH{q', 18
                        if Mask(112, 0, ext_call.return_data[50 len 14]) + -(0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) - 1 and arg1 > -1 / Mask(112, 0, ext_call.return_data[50 len 14]) + -(0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) - 1:
                            revert with 'NH{q', 17
                        if not Mask(112, 0, ext_call.return_data[50 len 14]) + -(0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) - 1:
                            revert with 'NH{q', 18
                        if -arg1 + (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * arg1) / Mask(112, 0, ext_call.return_data[50 len 14]) + -(0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) - 1 != arg1:
                            mem[(4 * ceil32(return_data.size)) + 384] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + 388] = 32
                            mem[(4 * ceil32(return_data.size)) + 420] = 33
                            mem[(4 * ceil32(return_data.size)) + 452] = 'SafeMath: multiplication overflo'
                            mem[(4 * ceil32(return_data.size)) + 484] = 'w'
                            revert with memory
                              from (4 * ceil32(return_data.size)) + 384
                               len (5 * ceil32(return_data.size)) + 132
                        if not -arg1 + (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * arg1):
                            revert with 'NH{q', 18
                        if 0 / -arg1 + (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * arg1) > -2:
                            revert with 'NH{q', 17
                        if (0 / -arg1 + (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * arg1)) + 1 < 0 / -arg1 + (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * arg1):
                            mem[(4 * ceil32(return_data.size)) + 384] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + 388] = 32
                            mem[(4 * ceil32(return_data.size)) + 420] = 27
                            mem[(4 * ceil32(return_data.size)) + 452] = 'SafeMath: addition overflow'
                            revert with memory
                              from (4 * ceil32(return_data.size)) + 384
                               len (5 * ceil32(return_data.size)) + 100
                        mem[(4 * ceil32(return_data.size)) + 416] = (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) + 1
                        mem[(4 * ceil32(return_data.size)) + 448] = (0 / -arg1 + (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * arg1)) + 1
                    else:
                        if Mask(112, 0, ext_call.return_data[0]) and (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) + 1 > -1 / Mask(112, 0, ext_call.return_data[0]):
                            revert with 'NH{q', 17
                        if not Mask(112, 0, ext_call.return_data[0]):
                            revert with 'NH{q', 18
                        if Mask(112, 0, ext_call.return_data[0]) + (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[0]) != (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) + 1:
                            mem[(4 * ceil32(return_data.size)) + 320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + 324] = 32
                            mem[(4 * ceil32(return_data.size)) + 356] = 33
                            mem[(4 * ceil32(return_data.size)) + 388] = 'SafeMath: multiplication overflo'
                            mem[(4 * ceil32(return_data.size)) + 420] = 'w'
                            revert with memory
                              from (4 * ceil32(return_data.size)) + 320
                               len (5 * ceil32(return_data.size)) + 132
                        if not Mask(112, 0, ext_call.return_data[0]) + (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * Mask(112, 0, ext_call.return_data[0])):
                            if (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) + 1 > Mask(112, 0, ext_call.return_data[50 len 14]):
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if Mask(112, 0, ext_call.return_data[50 len 14]) < (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) + 1:
                                revert with 'NH{q', 17
                            if not Mask(112, 0, ext_call.return_data[50 len 14]) + -(0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) - 1:
                                revert with 'NH{q', 18
                            if Mask(112, 0, ext_call.return_data[50 len 14]) + -(0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) - 1 and arg1 > -1 / Mask(112, 0, ext_call.return_data[50 len 14]) + -(0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) - 1:
                                revert with 'NH{q', 17
                            if not Mask(112, 0, ext_call.return_data[50 len 14]) + -(0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) - 1:
                                revert with 'NH{q', 18
                            if -arg1 + (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * arg1) / Mask(112, 0, ext_call.return_data[50 len 14]) + -(0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) - 1 != arg1:
                                mem[(4 * ceil32(return_data.size)) + 384] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + 388] = 32
                                mem[(4 * ceil32(return_data.size)) + 420] = 33
                                mem[(4 * ceil32(return_data.size)) + 452] = 'SafeMath: multiplication overflo'
                                mem[(4 * ceil32(return_data.size)) + 484] = 'w'
                                revert with memory
                                  from (4 * ceil32(return_data.size)) + 384
                                   len (5 * ceil32(return_data.size)) + 132
                            if not -arg1 + (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * arg1):
                                revert with 'NH{q', 18
                            if 0 / -arg1 + (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * arg1) > -2:
                                revert with 'NH{q', 17
                            if (0 / -arg1 + (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * arg1)) + 1 < 0 / -arg1 + (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * arg1):
                                mem[(4 * ceil32(return_data.size)) + 384] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + 388] = 32
                                mem[(4 * ceil32(return_data.size)) + 420] = 27
                                mem[(4 * ceil32(return_data.size)) + 452] = 'SafeMath: addition overflow'
                                revert with memory
                                  from (4 * ceil32(return_data.size)) + 384
                                   len (5 * ceil32(return_data.size)) + 100
                            mem[(4 * ceil32(return_data.size)) + 416] = (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) + 1
                            mem[(4 * ceil32(return_data.size)) + 448] = (0 / -arg1 + (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * arg1)) + 1
                        else:
                            if Mask(112, 0, ext_call.return_data[0]) + (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * Mask(112, 0, ext_call.return_data[0])) and 1000 > -1 / Mask(112, 0, ext_call.return_data[0]) + (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * Mask(112, 0, ext_call.return_data[0])):
                                revert with 'NH{q', 17
                            if not Mask(112, 0, ext_call.return_data[0]) + (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * Mask(112, 0, ext_call.return_data[0])):
                                revert with 'NH{q', 18
                            if (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * 0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[0]) + (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * Mask(112, 0, ext_call.return_data[0])) != 1000:
                                mem[(4 * ceil32(return_data.size)) + 320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + 324] = 32
                                mem[(4 * ceil32(return_data.size)) + 356] = 33
                                mem[(4 * ceil32(return_data.size)) + 388] = 'SafeMath: multiplication overflo'
                                mem[(4 * ceil32(return_data.size)) + 420] = 'w'
                                revert with memory
                                  from (4 * ceil32(return_data.size)) + 320
                                   len (5 * ceil32(return_data.size)) + 132
                            if (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) + 1 > Mask(112, 0, ext_call.return_data[50 len 14]):
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if Mask(112, 0, ext_call.return_data[50 len 14]) < (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) + 1:
                                revert with 'NH{q', 17
                            if not Mask(112, 0, ext_call.return_data[50 len 14]) + -(0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) - 1:
                                revert with 'NH{q', 18
                            if Mask(112, 0, ext_call.return_data[50 len 14]) + -(0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) - 1 and arg1 > -1 / Mask(112, 0, ext_call.return_data[50 len 14]) + -(0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) - 1:
                                revert with 'NH{q', 17
                            if not Mask(112, 0, ext_call.return_data[50 len 14]) + -(0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) - 1:
                                revert with 'NH{q', 18
                            if -arg1 + (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * arg1) / Mask(112, 0, ext_call.return_data[50 len 14]) + -(0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) - 1 != arg1:
                                mem[(4 * ceil32(return_data.size)) + 384] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + 388] = 32
                                mem[(4 * ceil32(return_data.size)) + 420] = 33
                                mem[(4 * ceil32(return_data.size)) + 452] = 'SafeMath: multiplication overflo'
                                mem[(4 * ceil32(return_data.size)) + 484] = 'w'
                                revert with memory
                                  from (4 * ceil32(return_data.size)) + 384
                                   len (5 * ceil32(return_data.size)) + 132
                            if not -arg1 + (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * arg1):
                                revert with 'NH{q', 18
                            if (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * 0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * Mask(112, 0, ext_call.return_data[0])) / -arg1 + (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * arg1) > -2:
                                revert with 'NH{q', 17
                            if ((1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * 0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * Mask(112, 0, ext_call.return_data[0])) / -arg1 + (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * arg1)) + 1 < (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * 0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * Mask(112, 0, ext_call.return_data[0])) / -arg1 + (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * arg1):
                                mem[(4 * ceil32(return_data.size)) + 384] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + 388] = 32
                                mem[(4 * ceil32(return_data.size)) + 420] = 27
                                mem[(4 * ceil32(return_data.size)) + 452] = 'SafeMath: addition overflow'
                                revert with memory
                                  from (4 * ceil32(return_data.size)) + 384
                                   len (5 * ceil32(return_data.size)) + 100
                            mem[(4 * ceil32(return_data.size)) + 416] = (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) + 1
                            mem[(4 * ceil32(return_data.size)) + 448] = ((1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * 0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * Mask(112, 0, ext_call.return_data[0])) / -arg1 + (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * arg1)) + 1
        else:
            if mem[ceil32(return_data.size) + 178 len 14] and arg2 > -1 / mem[ceil32(return_data.size) + 178 len 14]:
                revert with 'NH{q', 17
            if not mem[ceil32(return_data.size) + 178 len 14]:
                revert with 'NH{q', 18
            if mem[ceil32(return_data.size) + 178 len 14] * arg2 / mem[ceil32(return_data.size) + 178 len 14] != arg2:
                mem[(4 * ceil32(return_data.size)) + 256] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + 260] = 32
                mem[(4 * ceil32(return_data.size)) + 292] = 33
                mem[(4 * ceil32(return_data.size)) + 324] = 'SafeMath: multiplication overflo'
                mem[(4 * ceil32(return_data.size)) + 356] = 'w'
                revert with memory
                  from (4 * ceil32(return_data.size)) + 256
                   len (5 * ceil32(return_data.size)) + 132
            if not mem[ceil32(return_data.size) + 178 len 14] * arg2:
                mem[(4 * ceil32(return_data.size)) + 256] = 30
                mem[(4 * ceil32(return_data.size)) + 288] = 'SafeMath: subtraction overflow'
                if arg2 > Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if Mask(112, 0, ext_call.return_data[0]) < arg2:
                    revert with 'NH{q', 17
                if not Mask(112, 0, ext_call.return_data[0]) - arg2:
                    revert with 'NH{q', 18
                if Mask(112, 0, ext_call.return_data[0]) - arg2 and arg1 > -1 / Mask(112, 0, ext_call.return_data[0]) - arg2:
                    revert with 'NH{q', 17
                if not Mask(112, 0, ext_call.return_data[0]) - arg2:
                    revert with 'NH{q', 18
                if (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) / Mask(112, 0, ext_call.return_data[0]) - arg2 != arg1:
                    mem[(4 * ceil32(return_data.size)) + 320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 324] = 32
                    mem[(4 * ceil32(return_data.size)) + 356] = 33
                    mem[(4 * ceil32(return_data.size)) + 388] = 'SafeMath: multiplication overflo'
                    mem[(4 * ceil32(return_data.size)) + 420] = 'w'
                    revert with memory
                      from (4 * ceil32(return_data.size)) + 320
                       len (5 * ceil32(return_data.size)) + 132
                if not (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1):
                    revert with 'NH{q', 18
                if 0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) > -2:
                    revert with 'NH{q', 17
                if (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) + 1 < 0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1):
                    mem[(4 * ceil32(return_data.size)) + 320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 324] = 32
                    mem[(4 * ceil32(return_data.size)) + 356] = 27
                    mem[(4 * ceil32(return_data.size)) + 388] = 'SafeMath: addition overflow'
                    revert with memory
                      from (4 * ceil32(return_data.size)) + 320
                       len (5 * ceil32(return_data.size)) + 100
                if (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) + 1 <= 0:
                    mem[(4 * ceil32(return_data.size)) + 320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 324] = 32
                    mem[(4 * ceil32(return_data.size)) + 356] = 44
                    mem[(4 * ceil32(return_data.size)) + 388] = 'UniswapV2Library: INSUFFICIENT_O'
                    mem[(4 * ceil32(return_data.size)) + 420] = 'UTPUT_AMOUNT'
                    revert with memory
                      from (4 * ceil32(return_data.size)) + 320
                       len (5 * ceil32(return_data.size)) + 132
                if arg5:
                    if mem[ceil32(return_data.size) + 242 len 14] <= 0:
                        mem[(4 * ceil32(return_data.size)) + 320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[(4 * ceil32(return_data.size)) + 324] = 32
                        mem[(4 * ceil32(return_data.size)) + 356] = 40
                        mem[(4 * ceil32(return_data.size)) + 388] = 'UniswapV2Library: INSUFFICIENT_L'
                        mem[(4 * ceil32(return_data.size)) + 420] = 'IQUIDITY'
                        revert with memory
                          from (4 * ceil32(return_data.size)) + 320
                           len (5 * ceil32(return_data.size)) + 132
                    if arg5:
                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                            mem[(4 * ceil32(return_data.size)) + 320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + 324] = 32
                            mem[(4 * ceil32(return_data.size)) + 356] = 40
                            mem[(4 * ceil32(return_data.size)) + 388] = 'UniswapV2Library: INSUFFICIENT_L'
                            mem[(4 * ceil32(return_data.size)) + 420] = 'IQUIDITY'
                            revert with memory
                              from (4 * ceil32(return_data.size)) + 320
                               len (5 * ceil32(return_data.size)) + 132
                        if not mem[ceil32(return_data.size) + 242 len 14]:
                            if (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) + 1 > Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if Mask(112, 0, ext_call.return_data[0]) < (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) + 1:
                                revert with 'NH{q', 17
                            if not Mask(112, 0, ext_call.return_data[0]) + -(0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) - 1:
                                revert with 'NH{q', 18
                            if Mask(112, 0, ext_call.return_data[0]) + -(0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) - 1 and arg1 > -1 / Mask(112, 0, ext_call.return_data[0]) + -(0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) - 1:
                                revert with 'NH{q', 17
                            if not Mask(112, 0, ext_call.return_data[0]) + -(0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) - 1:
                                revert with 'NH{q', 18
                            if -arg1 + (Mask(112, 0, ext_call.return_data[0]) * arg1) - (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * arg1) / Mask(112, 0, ext_call.return_data[0]) + -(0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) - 1 != arg1:
                                mem[(4 * ceil32(return_data.size)) + 384] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + 388] = 32
                                mem[(4 * ceil32(return_data.size)) + 420] = 33
                                mem[(4 * ceil32(return_data.size)) + 452] = 'SafeMath: multiplication overflo'
                                mem[(4 * ceil32(return_data.size)) + 484] = 'w'
                                revert with memory
                                  from (4 * ceil32(return_data.size)) + 384
                                   len (5 * ceil32(return_data.size)) + 132
                            if not -arg1 + (Mask(112, 0, ext_call.return_data[0]) * arg1) - (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * arg1):
                                revert with 'NH{q', 18
                            if 0 / -arg1 + (Mask(112, 0, ext_call.return_data[0]) * arg1) - (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * arg1) > -2:
                                revert with 'NH{q', 17
                            if (0 / -arg1 + (Mask(112, 0, ext_call.return_data[0]) * arg1) - (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * arg1)) + 1 < 0 / -arg1 + (Mask(112, 0, ext_call.return_data[0]) * arg1) - (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * arg1):
                                mem[(4 * ceil32(return_data.size)) + 384] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + 388] = 32
                                mem[(4 * ceil32(return_data.size)) + 420] = 27
                                mem[(4 * ceil32(return_data.size)) + 452] = 'SafeMath: addition overflow'
                                revert with memory
                                  from (4 * ceil32(return_data.size)) + 384
                                   len (5 * ceil32(return_data.size)) + 100
                            mem[(4 * ceil32(return_data.size)) + 416] = (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) + 1
                            mem[(4 * ceil32(return_data.size)) + 448] = (0 / -arg1 + (Mask(112, 0, ext_call.return_data[0]) * arg1) - (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * arg1)) + 1
                        else:
                            if mem[ceil32(return_data.size) + 242 len 14] and (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) + 1 > -1 / mem[ceil32(return_data.size) + 242 len 14]:
                                revert with 'NH{q', 17
                            if not mem[ceil32(return_data.size) + 242 len 14]:
                                revert with 'NH{q', 18
                            if mem[ceil32(return_data.size) + 242 len 14] + (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * mem[ceil32(return_data.size) + 242 len 14]) / mem[ceil32(return_data.size) + 242 len 14] != (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) + 1:
                                mem[(4 * ceil32(return_data.size)) + 320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + 324] = 32
                                mem[(4 * ceil32(return_data.size)) + 356] = 33
                                mem[(4 * ceil32(return_data.size)) + 388] = 'SafeMath: multiplication overflo'
                                mem[(4 * ceil32(return_data.size)) + 420] = 'w'
                                revert with memory
                                  from (4 * ceil32(return_data.size)) + 320
                                   len (5 * ceil32(return_data.size)) + 132
                            if not mem[ceil32(return_data.size) + 242 len 14] + (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * mem[ceil32(return_data.size) + 242 len 14]):
                                if (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) + 1 > Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if Mask(112, 0, ext_call.return_data[0]) < (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) + 1:
                                    revert with 'NH{q', 17
                                if not Mask(112, 0, ext_call.return_data[0]) + -(0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) - 1:
                                    revert with 'NH{q', 18
                                if Mask(112, 0, ext_call.return_data[0]) + -(0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) - 1 and arg1 > -1 / Mask(112, 0, ext_call.return_data[0]) + -(0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) - 1:
                                    revert with 'NH{q', 17
                                if not Mask(112, 0, ext_call.return_data[0]) + -(0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) - 1:
                                    revert with 'NH{q', 18
                                if -arg1 + (Mask(112, 0, ext_call.return_data[0]) * arg1) - (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * arg1) / Mask(112, 0, ext_call.return_data[0]) + -(0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) - 1 != arg1:
                                    mem[(4 * ceil32(return_data.size)) + 384] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(4 * ceil32(return_data.size)) + 388] = 32
                                    mem[(4 * ceil32(return_data.size)) + 420] = 33
                                    mem[(4 * ceil32(return_data.size)) + 452] = 'SafeMath: multiplication overflo'
                                    mem[(4 * ceil32(return_data.size)) + 484] = 'w'
                                    revert with memory
                                      from (4 * ceil32(return_data.size)) + 384
                                       len (5 * ceil32(return_data.size)) + 132
                                if not -arg1 + (Mask(112, 0, ext_call.return_data[0]) * arg1) - (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * arg1):
                                    revert with 'NH{q', 18
                                if 0 / -arg1 + (Mask(112, 0, ext_call.return_data[0]) * arg1) - (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * arg1) > -2:
                                    revert with 'NH{q', 17
                                if (0 / -arg1 + (Mask(112, 0, ext_call.return_data[0]) * arg1) - (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * arg1)) + 1 < 0 / -arg1 + (Mask(112, 0, ext_call.return_data[0]) * arg1) - (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * arg1):
                                    mem[(4 * ceil32(return_data.size)) + 384] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(4 * ceil32(return_data.size)) + 388] = 32
                                    mem[(4 * ceil32(return_data.size)) + 420] = 27
                                    mem[(4 * ceil32(return_data.size)) + 452] = 'SafeMath: addition overflow'
                                    revert with memory
                                      from (4 * ceil32(return_data.size)) + 384
                                       len (5 * ceil32(return_data.size)) + 100
                                mem[(4 * ceil32(return_data.size)) + 416] = (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) + 1
                                mem[(4 * ceil32(return_data.size)) + 448] = (0 / -arg1 + (Mask(112, 0, ext_call.return_data[0]) * arg1) - (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * arg1)) + 1
                            else:
                                if mem[ceil32(return_data.size) + 242 len 14] + (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * mem[ceil32(return_data.size) + 242 len 14]) and 1000 > -1 / mem[ceil32(return_data.size) + 242 len 14] + (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * mem[ceil32(return_data.size) + 242 len 14]):
                                    revert with 'NH{q', 17
                                if not mem[ceil32(return_data.size) + 242 len 14] + (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * mem[ceil32(return_data.size) + 242 len 14]):
                                    revert with 'NH{q', 18
                                if (1000 * mem[ceil32(return_data.size) + 242 len 14]) + (1000 * 0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * mem[ceil32(return_data.size) + 242 len 14]) / mem[ceil32(return_data.size) + 242 len 14] + (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * mem[ceil32(return_data.size) + 242 len 14]) != 1000:
                                    mem[(4 * ceil32(return_data.size)) + 320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(4 * ceil32(return_data.size)) + 324] = 32
                                    mem[(4 * ceil32(return_data.size)) + 356] = 33
                                    mem[(4 * ceil32(return_data.size)) + 388] = 'SafeMath: multiplication overflo'
                                    mem[(4 * ceil32(return_data.size)) + 420] = 'w'
                                    revert with memory
                                      from (4 * ceil32(return_data.size)) + 320
                                       len (5 * ceil32(return_data.size)) + 132
                                if (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) + 1 > Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if Mask(112, 0, ext_call.return_data[0]) < (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) + 1:
                                    revert with 'NH{q', 17
                                if not Mask(112, 0, ext_call.return_data[0]) + -(0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) - 1:
                                    revert with 'NH{q', 18
                                if Mask(112, 0, ext_call.return_data[0]) + -(0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) - 1 and arg1 > -1 / Mask(112, 0, ext_call.return_data[0]) + -(0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) - 1:
                                    revert with 'NH{q', 17
                                if not Mask(112, 0, ext_call.return_data[0]) + -(0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) - 1:
                                    revert with 'NH{q', 18
                                if -arg1 + (Mask(112, 0, ext_call.return_data[0]) * arg1) - (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * arg1) / Mask(112, 0, ext_call.return_data[0]) + -(0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) - 1 != arg1:
                                    mem[(4 * ceil32(return_data.size)) + 384] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(4 * ceil32(return_data.size)) + 388] = 32
                                    mem[(4 * ceil32(return_data.size)) + 420] = 33
                                    mem[(4 * ceil32(return_data.size)) + 452] = 'SafeMath: multiplication overflo'
                                    mem[(4 * ceil32(return_data.size)) + 484] = 'w'
                                    revert with memory
                                      from (4 * ceil32(return_data.size)) + 384
                                       len (5 * ceil32(return_data.size)) + 132
                                if not -arg1 + (Mask(112, 0, ext_call.return_data[0]) * arg1) - (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * arg1):
                                    revert with 'NH{q', 18
                                if (1000 * Mask(112, 0, ext_call.return_data[50 len 14])) + (1000 * 0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * Mask(112, 0, ext_call.return_data[50 len 14])) / -arg1 + (Mask(112, 0, ext_call.return_data[0]) * arg1) - (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * arg1) > -2:
                                    revert with 'NH{q', 17
                                if ((1000 * Mask(112, 0, ext_call.return_data[50 len 14])) + (1000 * 0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * Mask(112, 0, ext_call.return_data[50 len 14])) / -arg1 + (Mask(112, 0, ext_call.return_data[0]) * arg1) - (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * arg1)) + 1 < (1000 * Mask(112, 0, ext_call.return_data[50 len 14])) + (1000 * 0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * Mask(112, 0, ext_call.return_data[50 len 14])) / -arg1 + (Mask(112, 0, ext_call.return_data[0]) * arg1) - (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * arg1):
                                    mem[(4 * ceil32(return_data.size)) + 384] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(4 * ceil32(return_data.size)) + 388] = 32
                                    mem[(4 * ceil32(return_data.size)) + 420] = 27
                                    mem[(4 * ceil32(return_data.size)) + 452] = 'SafeMath: addition overflow'
                                    revert with memory
                                      from (4 * ceil32(return_data.size)) + 384
                                       len (5 * ceil32(return_data.size)) + 100
                                mem[(4 * ceil32(return_data.size)) + 416] = (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) + 1
                                mem[(4 * ceil32(return_data.size)) + 448] = ((1000 * Mask(112, 0, ext_call.return_data[50 len 14])) + (1000 * 0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * Mask(112, 0, ext_call.return_data[50 len 14])) / -arg1 + (Mask(112, 0, ext_call.return_data[0]) * arg1) - (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * arg1)) + 1
                    else:
                        if mem[ceil32(return_data.size) + 242 len 14] <= 0:
                            mem[(4 * ceil32(return_data.size)) + 320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + 324] = 32
                            mem[(4 * ceil32(return_data.size)) + 356] = 40
                            mem[(4 * ceil32(return_data.size)) + 388] = 'UniswapV2Library: INSUFFICIENT_L'
                            mem[(4 * ceil32(return_data.size)) + 420] = 'IQUIDITY'
                            revert with memory
                              from (4 * ceil32(return_data.size)) + 320
                               len (5 * ceil32(return_data.size)) + 132
                        if not mem[ceil32(return_data.size) + 242 len 14]:
                            if (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) + 1 > Mask(112, 0, ext_call.return_data[50 len 14]):
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if Mask(112, 0, ext_call.return_data[50 len 14]) < (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) + 1:
                                revert with 'NH{q', 17
                            if not Mask(112, 0, ext_call.return_data[50 len 14]) + -(0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) - 1:
                                revert with 'NH{q', 18
                            if Mask(112, 0, ext_call.return_data[50 len 14]) + -(0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) - 1 and arg1 > -1 / Mask(112, 0, ext_call.return_data[50 len 14]) + -(0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) - 1:
                                revert with 'NH{q', 17
                            if not Mask(112, 0, ext_call.return_data[50 len 14]) + -(0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) - 1:
                                revert with 'NH{q', 18
                            if -arg1 + (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * arg1) / Mask(112, 0, ext_call.return_data[50 len 14]) + -(0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) - 1 != arg1:
                                mem[(4 * ceil32(return_data.size)) + 384] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + 388] = 32
                                mem[(4 * ceil32(return_data.size)) + 420] = 33
                                mem[(4 * ceil32(return_data.size)) + 452] = 'SafeMath: multiplication overflo'
                                mem[(4 * ceil32(return_data.size)) + 484] = 'w'
                                revert with memory
                                  from (4 * ceil32(return_data.size)) + 384
                                   len (5 * ceil32(return_data.size)) + 132
                            if not -arg1 + (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * arg1):
                                revert with 'NH{q', 18
                            if 0 / -arg1 + (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * arg1) > -2:
                                revert with 'NH{q', 17
                            if (0 / -arg1 + (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * arg1)) + 1 < 0 / -arg1 + (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * arg1):
                                mem[(4 * ceil32(return_data.size)) + 384] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + 388] = 32
                                mem[(4 * ceil32(return_data.size)) + 420] = 27
                                mem[(4 * ceil32(return_data.size)) + 452] = 'SafeMath: addition overflow'
                                revert with memory
                                  from (4 * ceil32(return_data.size)) + 384
                                   len (5 * ceil32(return_data.size)) + 100
                            mem[(4 * ceil32(return_data.size)) + 416] = (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) + 1
                            mem[(4 * ceil32(return_data.size)) + 448] = (0 / -arg1 + (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * arg1)) + 1
                        else:
                            if mem[ceil32(return_data.size) + 242 len 14] and (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) + 1 > -1 / mem[ceil32(return_data.size) + 242 len 14]:
                                revert with 'NH{q', 17
                            if not mem[ceil32(return_data.size) + 242 len 14]:
                                revert with 'NH{q', 18
                            if mem[ceil32(return_data.size) + 242 len 14] + (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * mem[ceil32(return_data.size) + 242 len 14]) / mem[ceil32(return_data.size) + 242 len 14] != (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) + 1:
                                mem[(4 * ceil32(return_data.size)) + 320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + 324] = 32
                                mem[(4 * ceil32(return_data.size)) + 356] = 33
                                mem[(4 * ceil32(return_data.size)) + 388] = 'SafeMath: multiplication overflo'
                                mem[(4 * ceil32(return_data.size)) + 420] = 'w'
                                revert with memory
                                  from (4 * ceil32(return_data.size)) + 320
                                   len (5 * ceil32(return_data.size)) + 132
                            if not mem[ceil32(return_data.size) + 242 len 14] + (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * mem[ceil32(return_data.size) + 242 len 14]):
                                if (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) + 1 > Mask(112, 0, ext_call.return_data[50 len 14]):
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if Mask(112, 0, ext_call.return_data[50 len 14]) < (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) + 1:
                                    revert with 'NH{q', 17
                                if not Mask(112, 0, ext_call.return_data[50 len 14]) + -(0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) - 1:
                                    revert with 'NH{q', 18
                                if Mask(112, 0, ext_call.return_data[50 len 14]) + -(0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) - 1 and arg1 > -1 / Mask(112, 0, ext_call.return_data[50 len 14]) + -(0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) - 1:
                                    revert with 'NH{q', 17
                                if not Mask(112, 0, ext_call.return_data[50 len 14]) + -(0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) - 1:
                                    revert with 'NH{q', 18
                                if -arg1 + (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * arg1) / Mask(112, 0, ext_call.return_data[50 len 14]) + -(0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) - 1 != arg1:
                                    mem[(4 * ceil32(return_data.size)) + 384] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(4 * ceil32(return_data.size)) + 388] = 32
                                    mem[(4 * ceil32(return_data.size)) + 420] = 33
                                    mem[(4 * ceil32(return_data.size)) + 452] = 'SafeMath: multiplication overflo'
                                    mem[(4 * ceil32(return_data.size)) + 484] = 'w'
                                    revert with memory
                                      from (4 * ceil32(return_data.size)) + 384
                                       len (5 * ceil32(return_data.size)) + 132
                                if not -arg1 + (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * arg1):
                                    revert with 'NH{q', 18
                                if 0 / -arg1 + (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * arg1) > -2:
                                    revert with 'NH{q', 17
                                if (0 / -arg1 + (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * arg1)) + 1 < 0 / -arg1 + (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * arg1):
                                    mem[(4 * ceil32(return_data.size)) + 384] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(4 * ceil32(return_data.size)) + 388] = 32
                                    mem[(4 * ceil32(return_data.size)) + 420] = 27
                                    mem[(4 * ceil32(return_data.size)) + 452] = 'SafeMath: addition overflow'
                                    revert with memory
                                      from (4 * ceil32(return_data.size)) + 384
                                       len (5 * ceil32(return_data.size)) + 100
                                mem[(4 * ceil32(return_data.size)) + 416] = (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) + 1
                                mem[(4 * ceil32(return_data.size)) + 448] = (0 / -arg1 + (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * arg1)) + 1
                            else:
                                if mem[ceil32(return_data.size) + 242 len 14] + (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * mem[ceil32(return_data.size) + 242 len 14]) and 1000 > -1 / mem[ceil32(return_data.size) + 242 len 14] + (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * mem[ceil32(return_data.size) + 242 len 14]):
                                    revert with 'NH{q', 17
                                if not mem[ceil32(return_data.size) + 242 len 14] + (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * mem[ceil32(return_data.size) + 242 len 14]):
                                    revert with 'NH{q', 18
                                if (1000 * mem[ceil32(return_data.size) + 242 len 14]) + (1000 * 0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * mem[ceil32(return_data.size) + 242 len 14]) / mem[ceil32(return_data.size) + 242 len 14] + (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * mem[ceil32(return_data.size) + 242 len 14]) != 1000:
                                    mem[(4 * ceil32(return_data.size)) + 320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(4 * ceil32(return_data.size)) + 324] = 32
                                    mem[(4 * ceil32(return_data.size)) + 356] = 33
                                    mem[(4 * ceil32(return_data.size)) + 388] = 'SafeMath: multiplication overflo'
                                    mem[(4 * ceil32(return_data.size)) + 420] = 'w'
                                    revert with memory
                                      from (4 * ceil32(return_data.size)) + 320
                                       len (5 * ceil32(return_data.size)) + 132
                                if (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) + 1 > Mask(112, 0, ext_call.return_data[50 len 14]):
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if Mask(112, 0, ext_call.return_data[50 len 14]) < (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) + 1:
                                    revert with 'NH{q', 17
                                if not Mask(112, 0, ext_call.return_data[50 len 14]) + -(0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) - 1:
                                    revert with 'NH{q', 18
                                if Mask(112, 0, ext_call.return_data[50 len 14]) + -(0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) - 1 and arg1 > -1 / Mask(112, 0, ext_call.return_data[50 len 14]) + -(0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) - 1:
                                    revert with 'NH{q', 17
                                if not Mask(112, 0, ext_call.return_data[50 len 14]) + -(0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) - 1:
                                    revert with 'NH{q', 18
                                if -arg1 + (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * arg1) / Mask(112, 0, ext_call.return_data[50 len 14]) + -(0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) - 1 != arg1:
                                    mem[(4 * ceil32(return_data.size)) + 384] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(4 * ceil32(return_data.size)) + 388] = 32
                                    mem[(4 * ceil32(return_data.size)) + 420] = 33
                                    mem[(4 * ceil32(return_data.size)) + 452] = 'SafeMath: multiplication overflo'
                                    mem[(4 * ceil32(return_data.size)) + 484] = 'w'
                                    revert with memory
                                      from (4 * ceil32(return_data.size)) + 384
                                       len (5 * ceil32(return_data.size)) + 132
                                if not -arg1 + (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * arg1):
                                    revert with 'NH{q', 18
                                if (1000 * Mask(112, 0, ext_call.return_data[50 len 14])) + (1000 * 0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * Mask(112, 0, ext_call.return_data[50 len 14])) / -arg1 + (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * arg1) > -2:
                                    revert with 'NH{q', 17
                                if ((1000 * Mask(112, 0, ext_call.return_data[50 len 14])) + (1000 * 0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * Mask(112, 0, ext_call.return_data[50 len 14])) / -arg1 + (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * arg1)) + 1 < (1000 * Mask(112, 0, ext_call.return_data[50 len 14])) + (1000 * 0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * Mask(112, 0, ext_call.return_data[50 len 14])) / -arg1 + (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * arg1):
                                    mem[(4 * ceil32(return_data.size)) + 384] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(4 * ceil32(return_data.size)) + 388] = 32
                                    mem[(4 * ceil32(return_data.size)) + 420] = 27
                                    mem[(4 * ceil32(return_data.size)) + 452] = 'SafeMath: addition overflow'
                                    revert with memory
                                      from (4 * ceil32(return_data.size)) + 384
                                       len (5 * ceil32(return_data.size)) + 100
                                mem[(4 * ceil32(return_data.size)) + 416] = (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) + 1
                                mem[(4 * ceil32(return_data.size)) + 448] = ((1000 * Mask(112, 0, ext_call.return_data[50 len 14])) + (1000 * 0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * Mask(112, 0, ext_call.return_data[50 len 14])) / -arg1 + (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * arg1)) + 1
                else:
                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                        mem[(4 * ceil32(return_data.size)) + 320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[(4 * ceil32(return_data.size)) + 324] = 32
                        mem[(4 * ceil32(return_data.size)) + 356] = 40
                        mem[(4 * ceil32(return_data.size)) + 388] = 'UniswapV2Library: INSUFFICIENT_L'
                        mem[(4 * ceil32(return_data.size)) + 420] = 'IQUIDITY'
                        revert with memory
                          from (4 * ceil32(return_data.size)) + 320
                           len (5 * ceil32(return_data.size)) + 132
                    if arg5:
                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                            mem[(4 * ceil32(return_data.size)) + 320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + 324] = 32
                            mem[(4 * ceil32(return_data.size)) + 356] = 40
                            mem[(4 * ceil32(return_data.size)) + 388] = 'UniswapV2Library: INSUFFICIENT_L'
                            mem[(4 * ceil32(return_data.size)) + 420] = 'IQUIDITY'
                            revert with memory
                              from (4 * ceil32(return_data.size)) + 320
                               len (5 * ceil32(return_data.size)) + 132
                        if not Mask(112, 0, ext_call.return_data[0]):
                            if (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) + 1 > Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if Mask(112, 0, ext_call.return_data[0]) < (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) + 1:
                                revert with 'NH{q', 17
                            if not Mask(112, 0, ext_call.return_data[0]) + -(0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) - 1:
                                revert with 'NH{q', 18
                            if Mask(112, 0, ext_call.return_data[0]) + -(0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) - 1 and arg1 > -1 / Mask(112, 0, ext_call.return_data[0]) + -(0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) - 1:
                                revert with 'NH{q', 17
                            if not Mask(112, 0, ext_call.return_data[0]) + -(0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) - 1:
                                revert with 'NH{q', 18
                            if -arg1 + (Mask(112, 0, ext_call.return_data[0]) * arg1) - (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * arg1) / Mask(112, 0, ext_call.return_data[0]) + -(0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) - 1 != arg1:
                                mem[(4 * ceil32(return_data.size)) + 384] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + 388] = 32
                                mem[(4 * ceil32(return_data.size)) + 420] = 33
                                mem[(4 * ceil32(return_data.size)) + 452] = 'SafeMath: multiplication overflo'
                                mem[(4 * ceil32(return_data.size)) + 484] = 'w'
                                revert with memory
                                  from (4 * ceil32(return_data.size)) + 384
                                   len (5 * ceil32(return_data.size)) + 132
                            if not -arg1 + (Mask(112, 0, ext_call.return_data[0]) * arg1) - (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * arg1):
                                revert with 'NH{q', 18
                            if 0 / -arg1 + (Mask(112, 0, ext_call.return_data[0]) * arg1) - (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * arg1) > -2:
                                revert with 'NH{q', 17
                            if (0 / -arg1 + (Mask(112, 0, ext_call.return_data[0]) * arg1) - (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * arg1)) + 1 < 0 / -arg1 + (Mask(112, 0, ext_call.return_data[0]) * arg1) - (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * arg1):
                                mem[(4 * ceil32(return_data.size)) + 384] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + 388] = 32
                                mem[(4 * ceil32(return_data.size)) + 420] = 27
                                mem[(4 * ceil32(return_data.size)) + 452] = 'SafeMath: addition overflow'
                                revert with memory
                                  from (4 * ceil32(return_data.size)) + 384
                                   len (5 * ceil32(return_data.size)) + 100
                            mem[(4 * ceil32(return_data.size)) + 416] = (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) + 1
                            mem[(4 * ceil32(return_data.size)) + 448] = (0 / -arg1 + (Mask(112, 0, ext_call.return_data[0]) * arg1) - (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * arg1)) + 1
                        else:
                            if Mask(112, 0, ext_call.return_data[0]) and (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) + 1 > -1 / Mask(112, 0, ext_call.return_data[0]):
                                revert with 'NH{q', 17
                            if not Mask(112, 0, ext_call.return_data[0]):
                                revert with 'NH{q', 18
                            if Mask(112, 0, ext_call.return_data[0]) + (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[0]) != (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) + 1:
                                mem[(4 * ceil32(return_data.size)) + 320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + 324] = 32
                                mem[(4 * ceil32(return_data.size)) + 356] = 33
                                mem[(4 * ceil32(return_data.size)) + 388] = 'SafeMath: multiplication overflo'
                                mem[(4 * ceil32(return_data.size)) + 420] = 'w'
                                revert with memory
                                  from (4 * ceil32(return_data.size)) + 320
                                   len (5 * ceil32(return_data.size)) + 132
                            if not Mask(112, 0, ext_call.return_data[0]) + (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * Mask(112, 0, ext_call.return_data[0])):
                                if (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) + 1 > Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if Mask(112, 0, ext_call.return_data[0]) < (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) + 1:
                                    revert with 'NH{q', 17
                                if not Mask(112, 0, ext_call.return_data[0]) + -(0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) - 1:
                                    revert with 'NH{q', 18
                                if Mask(112, 0, ext_call.return_data[0]) + -(0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) - 1 and arg1 > -1 / Mask(112, 0, ext_call.return_data[0]) + -(0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) - 1:
                                    revert with 'NH{q', 17
                                if not Mask(112, 0, ext_call.return_data[0]) + -(0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) - 1:
                                    revert with 'NH{q', 18
                                if -arg1 + (Mask(112, 0, ext_call.return_data[0]) * arg1) - (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * arg1) / Mask(112, 0, ext_call.return_data[0]) + -(0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) - 1 != arg1:
                                    mem[(4 * ceil32(return_data.size)) + 384] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(4 * ceil32(return_data.size)) + 388] = 32
                                    mem[(4 * ceil32(return_data.size)) + 420] = 33
                                    mem[(4 * ceil32(return_data.size)) + 452] = 'SafeMath: multiplication overflo'
                                    mem[(4 * ceil32(return_data.size)) + 484] = 'w'
                                    revert with memory
                                      from (4 * ceil32(return_data.size)) + 384
                                       len (5 * ceil32(return_data.size)) + 132
                                if not -arg1 + (Mask(112, 0, ext_call.return_data[0]) * arg1) - (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * arg1):
                                    revert with 'NH{q', 18
                                if 0 / -arg1 + (Mask(112, 0, ext_call.return_data[0]) * arg1) - (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * arg1) > -2:
                                    revert with 'NH{q', 17
                                if (0 / -arg1 + (Mask(112, 0, ext_call.return_data[0]) * arg1) - (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * arg1)) + 1 < 0 / -arg1 + (Mask(112, 0, ext_call.return_data[0]) * arg1) - (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * arg1):
                                    mem[(4 * ceil32(return_data.size)) + 384] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(4 * ceil32(return_data.size)) + 388] = 32
                                    mem[(4 * ceil32(return_data.size)) + 420] = 27
                                    mem[(4 * ceil32(return_data.size)) + 452] = 'SafeMath: addition overflow'
                                    revert with memory
                                      from (4 * ceil32(return_data.size)) + 384
                                       len (5 * ceil32(return_data.size)) + 100
                                mem[(4 * ceil32(return_data.size)) + 416] = (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) + 1
                                mem[(4 * ceil32(return_data.size)) + 448] = (0 / -arg1 + (Mask(112, 0, ext_call.return_data[0]) * arg1) - (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * arg1)) + 1
                            else:
                                if Mask(112, 0, ext_call.return_data[0]) + (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * Mask(112, 0, ext_call.return_data[0])) and 1000 > -1 / Mask(112, 0, ext_call.return_data[0]) + (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * Mask(112, 0, ext_call.return_data[0])):
                                    revert with 'NH{q', 17
                                if not Mask(112, 0, ext_call.return_data[0]) + (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * Mask(112, 0, ext_call.return_data[0])):
                                    revert with 'NH{q', 18
                                if (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * 0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[0]) + (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * Mask(112, 0, ext_call.return_data[0])) != 1000:
                                    mem[(4 * ceil32(return_data.size)) + 320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(4 * ceil32(return_data.size)) + 324] = 32
                                    mem[(4 * ceil32(return_data.size)) + 356] = 33
                                    mem[(4 * ceil32(return_data.size)) + 388] = 'SafeMath: multiplication overflo'
                                    mem[(4 * ceil32(return_data.size)) + 420] = 'w'
                                    revert with memory
                                      from (4 * ceil32(return_data.size)) + 320
                                       len (5 * ceil32(return_data.size)) + 132
                                if (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) + 1 > Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if Mask(112, 0, ext_call.return_data[0]) < (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) + 1:
                                    revert with 'NH{q', 17
                                if not Mask(112, 0, ext_call.return_data[0]) + -(0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) - 1:
                                    revert with 'NH{q', 18
                                if Mask(112, 0, ext_call.return_data[0]) + -(0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) - 1 and arg1 > -1 / Mask(112, 0, ext_call.return_data[0]) + -(0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) - 1:
                                    revert with 'NH{q', 17
                                if not Mask(112, 0, ext_call.return_data[0]) + -(0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) - 1:
                                    revert with 'NH{q', 18
                                if -arg1 + (Mask(112, 0, ext_call.return_data[0]) * arg1) - (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * arg1) / Mask(112, 0, ext_call.return_data[0]) + -(0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) - 1 != arg1:
                                    mem[(4 * ceil32(return_data.size)) + 384] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(4 * ceil32(return_data.size)) + 388] = 32
                                    mem[(4 * ceil32(return_data.size)) + 420] = 33
                                    mem[(4 * ceil32(return_data.size)) + 452] = 'SafeMath: multiplication overflo'
                                    mem[(4 * ceil32(return_data.size)) + 484] = 'w'
                                    revert with memory
                                      from (4 * ceil32(return_data.size)) + 384
                                       len (5 * ceil32(return_data.size)) + 132
                                if not -arg1 + (Mask(112, 0, ext_call.return_data[0]) * arg1) - (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * arg1):
                                    revert with 'NH{q', 18
                                if (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * 0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * Mask(112, 0, ext_call.return_data[0])) / -arg1 + (Mask(112, 0, ext_call.return_data[0]) * arg1) - (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * arg1) > -2:
                                    revert with 'NH{q', 17
                                if ((1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * 0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * Mask(112, 0, ext_call.return_data[0])) / -arg1 + (Mask(112, 0, ext_call.return_data[0]) * arg1) - (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * arg1)) + 1 < (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * 0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * Mask(112, 0, ext_call.return_data[0])) / -arg1 + (Mask(112, 0, ext_call.return_data[0]) * arg1) - (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * arg1):
                                    mem[(4 * ceil32(return_data.size)) + 384] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(4 * ceil32(return_data.size)) + 388] = 32
                                    mem[(4 * ceil32(return_data.size)) + 420] = 27
                                    mem[(4 * ceil32(return_data.size)) + 452] = 'SafeMath: addition overflow'
                                    revert with memory
                                      from (4 * ceil32(return_data.size)) + 384
                                       len (5 * ceil32(return_data.size)) + 100
                                mem[(4 * ceil32(return_data.size)) + 416] = (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) + 1
                                mem[(4 * ceil32(return_data.size)) + 448] = ((1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * 0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * Mask(112, 0, ext_call.return_data[0])) / -arg1 + (Mask(112, 0, ext_call.return_data[0]) * arg1) - (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * arg1)) + 1
                    else:
                        if mem[ceil32(return_data.size) + 242 len 14] <= 0:
                            mem[(4 * ceil32(return_data.size)) + 320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + 324] = 32
                            mem[(4 * ceil32(return_data.size)) + 356] = 40
                            mem[(4 * ceil32(return_data.size)) + 388] = 'UniswapV2Library: INSUFFICIENT_L'
                            mem[(4 * ceil32(return_data.size)) + 420] = 'IQUIDITY'
                            revert with memory
                              from (4 * ceil32(return_data.size)) + 320
                               len (5 * ceil32(return_data.size)) + 132
                        if not Mask(112, 0, ext_call.return_data[0]):
                            if (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) + 1 > Mask(112, 0, ext_call.return_data[50 len 14]):
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if Mask(112, 0, ext_call.return_data[50 len 14]) < (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) + 1:
                                revert with 'NH{q', 17
                            if not Mask(112, 0, ext_call.return_data[50 len 14]) + -(0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) - 1:
                                revert with 'NH{q', 18
                            if Mask(112, 0, ext_call.return_data[50 len 14]) + -(0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) - 1 and arg1 > -1 / Mask(112, 0, ext_call.return_data[50 len 14]) + -(0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) - 1:
                                revert with 'NH{q', 17
                            if not Mask(112, 0, ext_call.return_data[50 len 14]) + -(0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) - 1:
                                revert with 'NH{q', 18
                            if -arg1 + (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * arg1) / Mask(112, 0, ext_call.return_data[50 len 14]) + -(0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) - 1 != arg1:
                                mem[(4 * ceil32(return_data.size)) + 384] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + 388] = 32
                                mem[(4 * ceil32(return_data.size)) + 420] = 33
                                mem[(4 * ceil32(return_data.size)) + 452] = 'SafeMath: multiplication overflo'
                                mem[(4 * ceil32(return_data.size)) + 484] = 'w'
                                revert with memory
                                  from (4 * ceil32(return_data.size)) + 384
                                   len (5 * ceil32(return_data.size)) + 132
                            if not -arg1 + (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * arg1):
                                revert with 'NH{q', 18
                            if 0 / -arg1 + (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * arg1) > -2:
                                revert with 'NH{q', 17
                            if (0 / -arg1 + (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * arg1)) + 1 < 0 / -arg1 + (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * arg1):
                                mem[(4 * ceil32(return_data.size)) + 384] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + 388] = 32
                                mem[(4 * ceil32(return_data.size)) + 420] = 27
                                mem[(4 * ceil32(return_data.size)) + 452] = 'SafeMath: addition overflow'
                                revert with memory
                                  from (4 * ceil32(return_data.size)) + 384
                                   len (5 * ceil32(return_data.size)) + 100
                            mem[(4 * ceil32(return_data.size)) + 416] = (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) + 1
                            mem[(4 * ceil32(return_data.size)) + 448] = (0 / -arg1 + (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * arg1)) + 1
                        else:
                            if Mask(112, 0, ext_call.return_data[0]) and (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) + 1 > -1 / Mask(112, 0, ext_call.return_data[0]):
                                revert with 'NH{q', 17
                            if not Mask(112, 0, ext_call.return_data[0]):
                                revert with 'NH{q', 18
                            if Mask(112, 0, ext_call.return_data[0]) + (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[0]) != (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) + 1:
                                mem[(4 * ceil32(return_data.size)) + 320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + 324] = 32
                                mem[(4 * ceil32(return_data.size)) + 356] = 33
                                mem[(4 * ceil32(return_data.size)) + 388] = 'SafeMath: multiplication overflo'
                                mem[(4 * ceil32(return_data.size)) + 420] = 'w'
                                revert with memory
                                  from (4 * ceil32(return_data.size)) + 320
                                   len (5 * ceil32(return_data.size)) + 132
                            if not Mask(112, 0, ext_call.return_data[0]) + (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * Mask(112, 0, ext_call.return_data[0])):
                                if (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) + 1 > Mask(112, 0, ext_call.return_data[50 len 14]):
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if Mask(112, 0, ext_call.return_data[50 len 14]) < (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) + 1:
                                    revert with 'NH{q', 17
                                if not Mask(112, 0, ext_call.return_data[50 len 14]) + -(0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) - 1:
                                    revert with 'NH{q', 18
                                if Mask(112, 0, ext_call.return_data[50 len 14]) + -(0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) - 1 and arg1 > -1 / Mask(112, 0, ext_call.return_data[50 len 14]) + -(0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) - 1:
                                    revert with 'NH{q', 17
                                if not Mask(112, 0, ext_call.return_data[50 len 14]) + -(0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) - 1:
                                    revert with 'NH{q', 18
                                if -arg1 + (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * arg1) / Mask(112, 0, ext_call.return_data[50 len 14]) + -(0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) - 1 != arg1:
                                    mem[(4 * ceil32(return_data.size)) + 384] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(4 * ceil32(return_data.size)) + 388] = 32
                                    mem[(4 * ceil32(return_data.size)) + 420] = 33
                                    mem[(4 * ceil32(return_data.size)) + 452] = 'SafeMath: multiplication overflo'
                                    mem[(4 * ceil32(return_data.size)) + 484] = 'w'
                                    revert with memory
                                      from (4 * ceil32(return_data.size)) + 384
                                       len (5 * ceil32(return_data.size)) + 132
                                if not -arg1 + (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * arg1):
                                    revert with 'NH{q', 18
                                if 0 / -arg1 + (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * arg1) > -2:
                                    revert with 'NH{q', 17
                                if (0 / -arg1 + (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * arg1)) + 1 < 0 / -arg1 + (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * arg1):
                                    mem[(4 * ceil32(return_data.size)) + 384] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(4 * ceil32(return_data.size)) + 388] = 32
                                    mem[(4 * ceil32(return_data.size)) + 420] = 27
                                    mem[(4 * ceil32(return_data.size)) + 452] = 'SafeMath: addition overflow'
                                    revert with memory
                                      from (4 * ceil32(return_data.size)) + 384
                                       len (5 * ceil32(return_data.size)) + 100
                                mem[(4 * ceil32(return_data.size)) + 416] = (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) + 1
                                mem[(4 * ceil32(return_data.size)) + 448] = (0 / -arg1 + (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * arg1)) + 1
                            else:
                                if Mask(112, 0, ext_call.return_data[0]) + (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * Mask(112, 0, ext_call.return_data[0])) and 1000 > -1 / Mask(112, 0, ext_call.return_data[0]) + (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * Mask(112, 0, ext_call.return_data[0])):
                                    revert with 'NH{q', 17
                                if not Mask(112, 0, ext_call.return_data[0]) + (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * Mask(112, 0, ext_call.return_data[0])):
                                    revert with 'NH{q', 18
                                if (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * 0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[0]) + (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * Mask(112, 0, ext_call.return_data[0])) != 1000:
                                    mem[(4 * ceil32(return_data.size)) + 320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(4 * ceil32(return_data.size)) + 324] = 32
                                    mem[(4 * ceil32(return_data.size)) + 356] = 33
                                    mem[(4 * ceil32(return_data.size)) + 388] = 'SafeMath: multiplication overflo'
                                    mem[(4 * ceil32(return_data.size)) + 420] = 'w'
                                    revert with memory
                                      from (4 * ceil32(return_data.size)) + 320
                                       len (5 * ceil32(return_data.size)) + 132
                                if (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) + 1 > Mask(112, 0, ext_call.return_data[50 len 14]):
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if Mask(112, 0, ext_call.return_data[50 len 14]) < (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) + 1:
                                    revert with 'NH{q', 17
                                if not Mask(112, 0, ext_call.return_data[50 len 14]) + -(0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) - 1:
                                    revert with 'NH{q', 18
                                if Mask(112, 0, ext_call.return_data[50 len 14]) + -(0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) - 1 and arg1 > -1 / Mask(112, 0, ext_call.return_data[50 len 14]) + -(0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) - 1:
                                    revert with 'NH{q', 17
                                if not Mask(112, 0, ext_call.return_data[50 len 14]) + -(0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) - 1:
                                    revert with 'NH{q', 18
                                if -arg1 + (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * arg1) / Mask(112, 0, ext_call.return_data[50 len 14]) + -(0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) - 1 != arg1:
                                    mem[(4 * ceil32(return_data.size)) + 384] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(4 * ceil32(return_data.size)) + 388] = 32
                                    mem[(4 * ceil32(return_data.size)) + 420] = 33
                                    mem[(4 * ceil32(return_data.size)) + 452] = 'SafeMath: multiplication overflo'
                                    mem[(4 * ceil32(return_data.size)) + 484] = 'w'
                                    revert with memory
                                      from (4 * ceil32(return_data.size)) + 384
                                       len (5 * ceil32(return_data.size)) + 132
                                if not -arg1 + (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * arg1):
                                    revert with 'NH{q', 18
                                if (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * 0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * Mask(112, 0, ext_call.return_data[0])) / -arg1 + (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * arg1) > -2:
                                    revert with 'NH{q', 17
                                if ((1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * 0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * Mask(112, 0, ext_call.return_data[0])) / -arg1 + (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * arg1)) + 1 < (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * 0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * Mask(112, 0, ext_call.return_data[0])) / -arg1 + (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * arg1):
                                    mem[(4 * ceil32(return_data.size)) + 384] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(4 * ceil32(return_data.size)) + 388] = 32
                                    mem[(4 * ceil32(return_data.size)) + 420] = 27
                                    mem[(4 * ceil32(return_data.size)) + 452] = 'SafeMath: addition overflow'
                                    revert with memory
                                      from (4 * ceil32(return_data.size)) + 384
                                       len (5 * ceil32(return_data.size)) + 100
                                mem[(4 * ceil32(return_data.size)) + 416] = (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) + 1
                                mem[(4 * ceil32(return_data.size)) + 448] = ((1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * 0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * Mask(112, 0, ext_call.return_data[0])) / -arg1 + (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (0 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * arg1)) + 1
            else:
                if mem[ceil32(return_data.size) + 178 len 14] * arg2 and 1000 > -1 / mem[ceil32(return_data.size) + 178 len 14] * arg2:
                    revert with 'NH{q', 17
                if not mem[ceil32(return_data.size) + 178 len 14] * arg2:
                    revert with 'NH{q', 18
                if 1000 * mem[ceil32(return_data.size) + 178 len 14] * arg2 / mem[ceil32(return_data.size) + 178 len 14] * arg2 != 1000:
                    mem[(4 * ceil32(return_data.size)) + 256] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 260] = 32
                    mem[(4 * ceil32(return_data.size)) + 292] = 33
                    mem[(4 * ceil32(return_data.size)) + 324] = 'SafeMath: multiplication overflo'
                    mem[(4 * ceil32(return_data.size)) + 356] = 'w'
                    revert with memory
                      from (4 * ceil32(return_data.size)) + 256
                       len (5 * ceil32(return_data.size)) + 132
                mem[(4 * ceil32(return_data.size)) + 256] = 30
                mem[(4 * ceil32(return_data.size)) + 288] = 'SafeMath: subtraction overflow'
                if arg2 > Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if Mask(112, 0, ext_call.return_data[0]) < arg2:
                    revert with 'NH{q', 17
                if not Mask(112, 0, ext_call.return_data[0]) - arg2:
                    revert with 'NH{q', 18
                if Mask(112, 0, ext_call.return_data[0]) - arg2 and arg1 > -1 / Mask(112, 0, ext_call.return_data[0]) - arg2:
                    revert with 'NH{q', 17
                if not Mask(112, 0, ext_call.return_data[0]) - arg2:
                    revert with 'NH{q', 18
                if (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) / Mask(112, 0, ext_call.return_data[0]) - arg2 != arg1:
                    mem[(4 * ceil32(return_data.size)) + 320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 324] = 32
                    mem[(4 * ceil32(return_data.size)) + 356] = 33
                    mem[(4 * ceil32(return_data.size)) + 388] = 'SafeMath: multiplication overflo'
                    mem[(4 * ceil32(return_data.size)) + 420] = 'w'
                    revert with memory
                      from (4 * ceil32(return_data.size)) + 320
                       len (5 * ceil32(return_data.size)) + 132
                if not (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1):
                    revert with 'NH{q', 18
                if 1000 * Mask(112, 0, ext_call.return_data[50 len 14]) * arg2 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) > -2:
                    revert with 'NH{q', 17
                if (1000 * Mask(112, 0, ext_call.return_data[50 len 14]) * arg2 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) + 1 < 1000 * Mask(112, 0, ext_call.return_data[50 len 14]) * arg2 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1):
                    mem[(4 * ceil32(return_data.size)) + 320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 324] = 32
                    mem[(4 * ceil32(return_data.size)) + 356] = 27
                    mem[(4 * ceil32(return_data.size)) + 388] = 'SafeMath: addition overflow'
                    revert with memory
                      from (4 * ceil32(return_data.size)) + 320
                       len (5 * ceil32(return_data.size)) + 100
                if (1000 * Mask(112, 0, ext_call.return_data[50 len 14]) * arg2 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) + 1 <= 0:
                    mem[(4 * ceil32(return_data.size)) + 320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 324] = 32
                    mem[(4 * ceil32(return_data.size)) + 356] = 44
                    mem[(4 * ceil32(return_data.size)) + 388] = 'UniswapV2Library: INSUFFICIENT_O'
                    mem[(4 * ceil32(return_data.size)) + 420] = 'UTPUT_AMOUNT'
                    revert with memory
                      from (4 * ceil32(return_data.size)) + 320
                       len (5 * ceil32(return_data.size)) + 132
                if arg5:
                    if mem[ceil32(return_data.size) + 242 len 14] <= 0:
                        mem[(4 * ceil32(return_data.size)) + 320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[(4 * ceil32(return_data.size)) + 324] = 32
                        mem[(4 * ceil32(return_data.size)) + 356] = 40
                        mem[(4 * ceil32(return_data.size)) + 388] = 'UniswapV2Library: INSUFFICIENT_L'
                        mem[(4 * ceil32(return_data.size)) + 420] = 'IQUIDITY'
                        revert with memory
                          from (4 * ceil32(return_data.size)) + 320
                           len (5 * ceil32(return_data.size)) + 132
                    if arg5:
                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                            mem[(4 * ceil32(return_data.size)) + 320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + 324] = 32
                            mem[(4 * ceil32(return_data.size)) + 356] = 40
                            mem[(4 * ceil32(return_data.size)) + 388] = 'UniswapV2Library: INSUFFICIENT_L'
                            mem[(4 * ceil32(return_data.size)) + 420] = 'IQUIDITY'
                            revert with memory
                              from (4 * ceil32(return_data.size)) + 320
                               len (5 * ceil32(return_data.size)) + 132
                        if not mem[ceil32(return_data.size) + 242 len 14]:
                            if (1000 * Mask(112, 0, ext_call.return_data[50 len 14]) * arg2 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) + 1 > Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if Mask(112, 0, ext_call.return_data[0]) < (1000 * Mask(112, 0, ext_call.return_data[50 len 14]) * arg2 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) + 1:
                                revert with 'NH{q', 17
                            if not Mask(112, 0, ext_call.return_data[0]) + -(1000 * Mask(112, 0, ext_call.return_data[50 len 14]) * arg2 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) - 1:
                                revert with 'NH{q', 18
                            if Mask(112, 0, ext_call.return_data[0]) + -(1000 * Mask(112, 0, ext_call.return_data[50 len 14]) * arg2 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) - 1 and arg1 > -1 / Mask(112, 0, ext_call.return_data[0]) + -(1000 * Mask(112, 0, ext_call.return_data[50 len 14]) * arg2 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) - 1:
                                revert with 'NH{q', 17
                            if not Mask(112, 0, ext_call.return_data[0]) + -(1000 * Mask(112, 0, ext_call.return_data[50 len 14]) * arg2 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) - 1:
                                revert with 'NH{q', 18
                            if -arg1 + (Mask(112, 0, ext_call.return_data[0]) * arg1) - (1000 * Mask(112, 0, ext_call.return_data[50 len 14]) * arg2 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * arg1) / Mask(112, 0, ext_call.return_data[0]) + -(1000 * Mask(112, 0, ext_call.return_data[50 len 14]) * arg2 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) - 1 != arg1:
                                mem[(4 * ceil32(return_data.size)) + 384] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + 388] = 32
                                mem[(4 * ceil32(return_data.size)) + 420] = 33
                                mem[(4 * ceil32(return_data.size)) + 452] = 'SafeMath: multiplication overflo'
                                mem[(4 * ceil32(return_data.size)) + 484] = 'w'
                                revert with memory
                                  from (4 * ceil32(return_data.size)) + 384
                                   len (5 * ceil32(return_data.size)) + 132
                            if not -arg1 + (Mask(112, 0, ext_call.return_data[0]) * arg1) - (1000 * Mask(112, 0, ext_call.return_data[50 len 14]) * arg2 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * arg1):
                                revert with 'NH{q', 18
                            if 0 / -arg1 + (Mask(112, 0, ext_call.return_data[0]) * arg1) - (1000 * Mask(112, 0, ext_call.return_data[50 len 14]) * arg2 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * arg1) > -2:
                                revert with 'NH{q', 17
                            if (0 / -arg1 + (Mask(112, 0, ext_call.return_data[0]) * arg1) - (1000 * Mask(112, 0, ext_call.return_data[50 len 14]) * arg2 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * arg1)) + 1 < 0 / -arg1 + (Mask(112, 0, ext_call.return_data[0]) * arg1) - (1000 * Mask(112, 0, ext_call.return_data[50 len 14]) * arg2 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * arg1):
                                mem[(4 * ceil32(return_data.size)) + 384] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + 388] = 32
                                mem[(4 * ceil32(return_data.size)) + 420] = 27
                                mem[(4 * ceil32(return_data.size)) + 452] = 'SafeMath: addition overflow'
                                revert with memory
                                  from (4 * ceil32(return_data.size)) + 384
                                   len (5 * ceil32(return_data.size)) + 100
                            mem[(4 * ceil32(return_data.size)) + 416] = (1000 * Mask(112, 0, ext_call.return_data[50 len 14]) * arg2 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) + 1
                            mem[(4 * ceil32(return_data.size)) + 448] = (0 / -arg1 + (Mask(112, 0, ext_call.return_data[0]) * arg1) - (1000 * Mask(112, 0, ext_call.return_data[50 len 14]) * arg2 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * arg1)) + 1
                        else:
                            if mem[ceil32(return_data.size) + 242 len 14] and (1000 * Mask(112, 0, ext_call.return_data[50 len 14]) * arg2 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) + 1 > -1 / mem[ceil32(return_data.size) + 242 len 14]:
                                revert with 'NH{q', 17
                            if not mem[ceil32(return_data.size) + 242 len 14]:
                                revert with 'NH{q', 18
                            if mem[ceil32(return_data.size) + 242 len 14] + (1000 * Mask(112, 0, ext_call.return_data[50 len 14]) * arg2 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * mem[ceil32(return_data.size) + 242 len 14]) / mem[ceil32(return_data.size) + 242 len 14] != (1000 * Mask(112, 0, ext_call.return_data[50 len 14]) * arg2 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) + 1:
                                mem[(4 * ceil32(return_data.size)) + 320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + 324] = 32
                                mem[(4 * ceil32(return_data.size)) + 356] = 33
                                mem[(4 * ceil32(return_data.size)) + 388] = 'SafeMath: multiplication overflo'
                                mem[(4 * ceil32(return_data.size)) + 420] = 'w'
                                revert with memory
                                  from (4 * ceil32(return_data.size)) + 320
                                   len (5 * ceil32(return_data.size)) + 132
                            if not mem[ceil32(return_data.size) + 242 len 14] + (1000 * Mask(112, 0, ext_call.return_data[50 len 14]) * arg2 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * mem[ceil32(return_data.size) + 242 len 14]):
                                if (1000 * Mask(112, 0, ext_call.return_data[50 len 14]) * arg2 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) + 1 > Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if Mask(112, 0, ext_call.return_data[0]) < (1000 * Mask(112, 0, ext_call.return_data[50 len 14]) * arg2 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) + 1:
                                    revert with 'NH{q', 17
                                if not Mask(112, 0, ext_call.return_data[0]) + -(1000 * Mask(112, 0, ext_call.return_data[50 len 14]) * arg2 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) - 1:
                                    revert with 'NH{q', 18
                                if Mask(112, 0, ext_call.return_data[0]) + -(1000 * Mask(112, 0, ext_call.return_data[50 len 14]) * arg2 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) - 1 and arg1 > -1 / Mask(112, 0, ext_call.return_data[0]) + -(1000 * Mask(112, 0, ext_call.return_data[50 len 14]) * arg2 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) - 1:
                                    revert with 'NH{q', 17
                                if not Mask(112, 0, ext_call.return_data[0]) + -(1000 * Mask(112, 0, ext_call.return_data[50 len 14]) * arg2 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) - 1:
                                    revert with 'NH{q', 18
                                if -arg1 + (Mask(112, 0, ext_call.return_data[0]) * arg1) - (1000 * Mask(112, 0, ext_call.return_data[50 len 14]) * arg2 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * arg1) / Mask(112, 0, ext_call.return_data[0]) + -(1000 * Mask(112, 0, ext_call.return_data[50 len 14]) * arg2 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) - 1 != arg1:
                                    mem[(4 * ceil32(return_data.size)) + 384] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(4 * ceil32(return_data.size)) + 388] = 32
                                    mem[(4 * ceil32(return_data.size)) + 420] = 33
                                    mem[(4 * ceil32(return_data.size)) + 452] = 'SafeMath: multiplication overflo'
                                    mem[(4 * ceil32(return_data.size)) + 484] = 'w'
                                    revert with memory
                                      from (4 * ceil32(return_data.size)) + 384
                                       len (5 * ceil32(return_data.size)) + 132
                                if not -arg1 + (Mask(112, 0, ext_call.return_data[0]) * arg1) - (1000 * Mask(112, 0, ext_call.return_data[50 len 14]) * arg2 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * arg1):
                                    revert with 'NH{q', 18
                                if 0 / -arg1 + (Mask(112, 0, ext_call.return_data[0]) * arg1) - (1000 * Mask(112, 0, ext_call.return_data[50 len 14]) * arg2 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * arg1) > -2:
                                    revert with 'NH{q', 17
                                if (0 / -arg1 + (Mask(112, 0, ext_call.return_data[0]) * arg1) - (1000 * Mask(112, 0, ext_call.return_data[50 len 14]) * arg2 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * arg1)) + 1 < 0 / -arg1 + (Mask(112, 0, ext_call.return_data[0]) * arg1) - (1000 * Mask(112, 0, ext_call.return_data[50 len 14]) * arg2 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * arg1):
                                    mem[(4 * ceil32(return_data.size)) + 384] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(4 * ceil32(return_data.size)) + 388] = 32
                                    mem[(4 * ceil32(return_data.size)) + 420] = 27
                                    mem[(4 * ceil32(return_data.size)) + 452] = 'SafeMath: addition overflow'
                                    revert with memory
                                      from (4 * ceil32(return_data.size)) + 384
                                       len (5 * ceil32(return_data.size)) + 100
                                mem[(4 * ceil32(return_data.size)) + 416] = (1000 * Mask(112, 0, ext_call.return_data[50 len 14]) * arg2 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) + 1
                                mem[(4 * ceil32(return_data.size)) + 448] = (0 / -arg1 + (Mask(112, 0, ext_call.return_data[0]) * arg1) - (1000 * Mask(112, 0, ext_call.return_data[50 len 14]) * arg2 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * arg1)) + 1
                            else:
                                if mem[ceil32(return_data.size) + 242 len 14] + (1000 * Mask(112, 0, ext_call.return_data[50 len 14]) * arg2 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * mem[ceil32(return_data.size) + 242 len 14]) and 1000 > -1 / mem[ceil32(return_data.size) + 242 len 14] + (1000 * Mask(112, 0, ext_call.return_data[50 len 14]) * arg2 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * mem[ceil32(return_data.size) + 242 len 14]):
                                    revert with 'NH{q', 17
                                if not mem[ceil32(return_data.size) + 242 len 14] + (1000 * Mask(112, 0, ext_call.return_data[50 len 14]) * arg2 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * mem[ceil32(return_data.size) + 242 len 14]):
                                    revert with 'NH{q', 18
                                if (1000 * mem[ceil32(return_data.size) + 242 len 14]) + (1000 * 1000 * Mask(112, 0, ext_call.return_data[50 len 14]) * arg2 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * mem[ceil32(return_data.size) + 242 len 14]) / mem[ceil32(return_data.size) + 242 len 14] + (1000 * Mask(112, 0, ext_call.return_data[50 len 14]) * arg2 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * mem[ceil32(return_data.size) + 242 len 14]) != 1000:
                                    mem[(4 * ceil32(return_data.size)) + 320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(4 * ceil32(return_data.size)) + 324] = 32
                                    mem[(4 * ceil32(return_data.size)) + 356] = 33
                                    mem[(4 * ceil32(return_data.size)) + 388] = 'SafeMath: multiplication overflo'
                                    mem[(4 * ceil32(return_data.size)) + 420] = 'w'
                                    revert with memory
                                      from (4 * ceil32(return_data.size)) + 320
                                       len (5 * ceil32(return_data.size)) + 132
                                mem[(4 * ceil32(return_data.size)) + 320] = 30
                                mem[(4 * ceil32(return_data.size)) + 352] = 'SafeMath: subtraction overflow'
                                if (1000 * Mask(112, 0, ext_call.return_data[50 len 14]) * arg2 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) + 1 > Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if Mask(112, 0, ext_call.return_data[0]) < (1000 * Mask(112, 0, ext_call.return_data[50 len 14]) * arg2 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) + 1:
                                    revert with 'NH{q', 17
                                if not Mask(112, 0, ext_call.return_data[0]) + -(1000 * Mask(112, 0, ext_call.return_data[50 len 14]) * arg2 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) - 1:
                                    revert with 'NH{q', 18
                                if Mask(112, 0, ext_call.return_data[0]) + -(1000 * Mask(112, 0, ext_call.return_data[50 len 14]) * arg2 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) - 1 and arg1 > -1 / Mask(112, 0, ext_call.return_data[0]) + -(1000 * Mask(112, 0, ext_call.return_data[50 len 14]) * arg2 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) - 1:
                                    revert with 'NH{q', 17
                                if not Mask(112, 0, ext_call.return_data[0]) + -(1000 * Mask(112, 0, ext_call.return_data[50 len 14]) * arg2 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) - 1:
                                    revert with 'NH{q', 18
                                if -arg1 + (Mask(112, 0, ext_call.return_data[0]) * arg1) - (1000 * Mask(112, 0, ext_call.return_data[50 len 14]) * arg2 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * arg1) / Mask(112, 0, ext_call.return_data[0]) + -(1000 * Mask(112, 0, ext_call.return_data[50 len 14]) * arg2 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) - 1 != arg1:
                                    mem[(4 * ceil32(return_data.size)) + 384] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(4 * ceil32(return_data.size)) + 388] = 32
                                    mem[(4 * ceil32(return_data.size)) + 420] = 33
                                    mem[(4 * ceil32(return_data.size)) + 452] = 'SafeMath: multiplication overflo'
                                    mem[(4 * ceil32(return_data.size)) + 484] = 'w'
                                    revert with memory
                                      from (4 * ceil32(return_data.size)) + 384
                                       len (5 * ceil32(return_data.size)) + 132
                                if not -arg1 + (Mask(112, 0, ext_call.return_data[0]) * arg1) - (1000 * Mask(112, 0, ext_call.return_data[50 len 14]) * arg2 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * arg1):
                                    revert with 'NH{q', 18
                                if (1000 * mem[ceil32(return_data.size) + 242 len 14]) + (1000 * 1000 * Mask(112, 0, ext_call.return_data[50 len 14]) * arg2 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * mem[ceil32(return_data.size) + 242 len 14]) / -arg1 + (Mask(112, 0, ext_call.return_data[0]) * arg1) - (1000 * Mask(112, 0, ext_call.return_data[50 len 14]) * arg2 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * arg1) > -2:
                                    revert with 'NH{q', 17
                                if ((1000 * mem[ceil32(return_data.size) + 242 len 14]) + (1000 * 1000 * Mask(112, 0, ext_call.return_data[50 len 14]) * arg2 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * mem[ceil32(return_data.size) + 242 len 14]) / -arg1 + (Mask(112, 0, ext_call.return_data[0]) * arg1) - (1000 * Mask(112, 0, ext_call.return_data[50 len 14]) * arg2 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * arg1)) + 1 < (1000 * mem[ceil32(return_data.size) + 242 len 14]) + (1000 * 1000 * Mask(112, 0, ext_call.return_data[50 len 14]) * arg2 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * mem[ceil32(return_data.size) + 242 len 14]) / -arg1 + (Mask(112, 0, ext_call.return_data[0]) * arg1) - (1000 * Mask(112, 0, ext_call.return_data[50 len 14]) * arg2 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * arg1):
                                    mem[(4 * ceil32(return_data.size)) + 384] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(4 * ceil32(return_data.size)) + 388] = 32
                                    mem[(4 * ceil32(return_data.size)) + 420] = 27
                                    mem[(4 * ceil32(return_data.size)) + 452] = 'SafeMath: addition overflow'
                                    revert with memory
                                      from (4 * ceil32(return_data.size)) + 384
                                       len (5 * ceil32(return_data.size)) + 100
                                mem[(4 * ceil32(return_data.size)) + 416] = (1000 * Mask(112, 0, ext_call.return_data[50 len 14]) * arg2 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) + 1
                                mem[(4 * ceil32(return_data.size)) + 448] = ((1000 * mem[ceil32(return_data.size) + 242 len 14]) + (1000 * 1000 * Mask(112, 0, ext_call.return_data[50 len 14]) * arg2 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * mem[ceil32(return_data.size) + 242 len 14]) / -arg1 + (Mask(112, 0, ext_call.return_data[0]) * arg1) - (1000 * Mask(112, 0, ext_call.return_data[50 len 14]) * arg2 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * arg1)) + 1
                    else:
                        if mem[ceil32(return_data.size) + 242 len 14] <= 0:
                            mem[(4 * ceil32(return_data.size)) + 320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + 324] = 32
                            mem[(4 * ceil32(return_data.size)) + 356] = 40
                            mem[(4 * ceil32(return_data.size)) + 388] = 'UniswapV2Library: INSUFFICIENT_L'
                            mem[(4 * ceil32(return_data.size)) + 420] = 'IQUIDITY'
                            revert with memory
                              from (4 * ceil32(return_data.size)) + 320
                               len (5 * ceil32(return_data.size)) + 132
                        if not mem[ceil32(return_data.size) + 242 len 14]:
                            mem[(4 * ceil32(return_data.size)) + 320] = 30
                            mem[(4 * ceil32(return_data.size)) + 352] = 'SafeMath: subtraction overflow'
                            if (1000 * Mask(112, 0, ext_call.return_data[50 len 14]) * arg2 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) + 1 > mem[ceil32(return_data.size) + 242 len 14]:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if mem[ceil32(return_data.size) + 242 len 14] < (1000 * Mask(112, 0, ext_call.return_data[50 len 14]) * arg2 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) + 1:
                                revert with 'NH{q', 17
                            if not mem[ceil32(return_data.size) + 242 len 14] + -(1000 * Mask(112, 0, ext_call.return_data[50 len 14]) * arg2 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) - 1:
                                revert with 'NH{q', 18
                            if mem[ceil32(return_data.size) + 242 len 14] + -(1000 * Mask(112, 0, ext_call.return_data[50 len 14]) * arg2 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) - 1 and arg1 > -1 / mem[ceil32(return_data.size) + 242 len 14] + -(1000 * Mask(112, 0, ext_call.return_data[50 len 14]) * arg2 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) - 1:
                                revert with 'NH{q', 17
                            if not mem[ceil32(return_data.size) + 242 len 14] + -(1000 * Mask(112, 0, ext_call.return_data[50 len 14]) * arg2 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) - 1:
                                revert with 'NH{q', 18
                            if -arg1 + (mem[ceil32(return_data.size) + 242 len 14] * arg1) - (1000 * Mask(112, 0, ext_call.return_data[50 len 14]) * arg2 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * arg1) / mem[ceil32(return_data.size) + 242 len 14] + -(1000 * Mask(112, 0, ext_call.return_data[50 len 14]) * arg2 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) - 1 != arg1:
                                mem[(4 * ceil32(return_data.size)) + 384] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + 388] = 32
                                mem[(4 * ceil32(return_data.size)) + 420] = 33
                                mem[(4 * ceil32(return_data.size)) + 452] = 'SafeMath: multiplication overflo'
                                mem[(4 * ceil32(return_data.size)) + 484] = 'w'
                                revert with memory
                                  from (4 * ceil32(return_data.size)) + 384
                                   len (5 * ceil32(return_data.size)) + 132
                            if not -arg1 + (mem[ceil32(return_data.size) + 242 len 14] * arg1) - (1000 * Mask(112, 0, ext_call.return_data[50 len 14]) * arg2 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * arg1):
                                revert with 'NH{q', 18
                            if 0 / -arg1 + (mem[ceil32(return_data.size) + 242 len 14] * arg1) - (1000 * Mask(112, 0, ext_call.return_data[50 len 14]) * arg2 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * arg1) > -2:
                                revert with 'NH{q', 17
                            if (0 / -arg1 + (mem[ceil32(return_data.size) + 242 len 14] * arg1) - (1000 * Mask(112, 0, ext_call.return_data[50 len 14]) * arg2 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * arg1)) + 1 < 0 / -arg1 + (mem[ceil32(return_data.size) + 242 len 14] * arg1) - (1000 * Mask(112, 0, ext_call.return_data[50 len 14]) * arg2 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * arg1):
                                mem[(4 * ceil32(return_data.size)) + 384] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + 388] = 32
                                mem[(4 * ceil32(return_data.size)) + 420] = 27
                                mem[(4 * ceil32(return_data.size)) + 452] = 'SafeMath: addition overflow'
                                revert with memory
                                  from (4 * ceil32(return_data.size)) + 384
                                   len (5 * ceil32(return_data.size)) + 100
                            mem[(4 * ceil32(return_data.size)) + 416] = (1000 * Mask(112, 0, ext_call.return_data[50 len 14]) * arg2 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) + 1
                            mem[(4 * ceil32(return_data.size)) + 448] = (0 / -arg1 + (mem[ceil32(return_data.size) + 242 len 14] * arg1) - (1000 * Mask(112, 0, ext_call.return_data[50 len 14]) * arg2 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * arg1)) + 1
                        else:
                            if mem[ceil32(return_data.size) + 242 len 14] and (1000 * Mask(112, 0, ext_call.return_data[50 len 14]) * arg2 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) + 1 > -1 / mem[ceil32(return_data.size) + 242 len 14]:
                                revert with 'NH{q', 17
                            if not mem[ceil32(return_data.size) + 242 len 14]:
                                revert with 'NH{q', 18
                            if mem[ceil32(return_data.size) + 242 len 14] + (1000 * Mask(112, 0, ext_call.return_data[50 len 14]) * arg2 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * mem[ceil32(return_data.size) + 242 len 14]) / mem[ceil32(return_data.size) + 242 len 14] != (1000 * Mask(112, 0, ext_call.return_data[50 len 14]) * arg2 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) + 1:
                                mem[(4 * ceil32(return_data.size)) + 320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + 324] = 32
                                mem[(4 * ceil32(return_data.size)) + 356] = 33
                                mem[(4 * ceil32(return_data.size)) + 388] = 'SafeMath: multiplication overflo'
                                mem[(4 * ceil32(return_data.size)) + 420] = 'w'
                                revert with memory
                                  from (4 * ceil32(return_data.size)) + 320
                                   len (5 * ceil32(return_data.size)) + 132
                            if not mem[ceil32(return_data.size) + 242 len 14] + (1000 * Mask(112, 0, ext_call.return_data[50 len 14]) * arg2 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * mem[ceil32(return_data.size) + 242 len 14]):
                                mem[(4 * ceil32(return_data.size)) + 320] = 30
                                mem[(4 * ceil32(return_data.size)) + 352] = 'SafeMath: subtraction overflow'
                                if (1000 * Mask(112, 0, ext_call.return_data[50 len 14]) * arg2 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) + 1 > mem[ceil32(return_data.size) + 242 len 14]:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if mem[ceil32(return_data.size) + 242 len 14] < (1000 * Mask(112, 0, ext_call.return_data[50 len 14]) * arg2 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) + 1:
                                    revert with 'NH{q', 17
                                if not mem[ceil32(return_data.size) + 242 len 14] + -(1000 * Mask(112, 0, ext_call.return_data[50 len 14]) * arg2 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) - 1:
                                    revert with 'NH{q', 18
                                if mem[ceil32(return_data.size) + 242 len 14] + -(1000 * Mask(112, 0, ext_call.return_data[50 len 14]) * arg2 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) - 1 and arg1 > -1 / mem[ceil32(return_data.size) + 242 len 14] + -(1000 * Mask(112, 0, ext_call.return_data[50 len 14]) * arg2 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) - 1:
                                    revert with 'NH{q', 17
                                if not mem[ceil32(return_data.size) + 242 len 14] + -(1000 * Mask(112, 0, ext_call.return_data[50 len 14]) * arg2 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) - 1:
                                    revert with 'NH{q', 18
                                if -arg1 + (mem[ceil32(return_data.size) + 242 len 14] * arg1) - (1000 * Mask(112, 0, ext_call.return_data[50 len 14]) * arg2 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * arg1) / mem[ceil32(return_data.size) + 242 len 14] + -(1000 * Mask(112, 0, ext_call.return_data[50 len 14]) * arg2 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) - 1 != arg1:
                                    mem[(4 * ceil32(return_data.size)) + 384] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(4 * ceil32(return_data.size)) + 388] = 32
                                    mem[(4 * ceil32(return_data.size)) + 420] = 33
                                    mem[(4 * ceil32(return_data.size)) + 452] = 'SafeMath: multiplication overflo'
                                    mem[(4 * ceil32(return_data.size)) + 484] = 'w'
                                    revert with memory
                                      from (4 * ceil32(return_data.size)) + 384
                                       len (5 * ceil32(return_data.size)) + 132
                                if not -arg1 + (mem[ceil32(return_data.size) + 242 len 14] * arg1) - (1000 * Mask(112, 0, ext_call.return_data[50 len 14]) * arg2 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * arg1):
                                    revert with 'NH{q', 18
                                if 0 / -arg1 + (mem[ceil32(return_data.size) + 242 len 14] * arg1) - (1000 * Mask(112, 0, ext_call.return_data[50 len 14]) * arg2 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * arg1) > -2:
                                    revert with 'NH{q', 17
                                if (0 / -arg1 + (mem[ceil32(return_data.size) + 242 len 14] * arg1) - (1000 * Mask(112, 0, ext_call.return_data[50 len 14]) * arg2 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * arg1)) + 1 < 0 / -arg1 + (mem[ceil32(return_data.size) + 242 len 14] * arg1) - (1000 * Mask(112, 0, ext_call.return_data[50 len 14]) * arg2 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * arg1):
                                    mem[(4 * ceil32(return_data.size)) + 384] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(4 * ceil32(return_data.size)) + 388] = 32
                                    mem[(4 * ceil32(return_data.size)) + 420] = 27
                                    mem[(4 * ceil32(return_data.size)) + 452] = 'SafeMath: addition overflow'
                                    revert with memory
                                      from (4 * ceil32(return_data.size)) + 384
                                       len (5 * ceil32(return_data.size)) + 100
                                mem[(4 * ceil32(return_data.size)) + 416] = (1000 * Mask(112, 0, ext_call.return_data[50 len 14]) * arg2 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) + 1
                                mem[(4 * ceil32(return_data.size)) + 448] = (0 / -arg1 + (mem[ceil32(return_data.size) + 242 len 14] * arg1) - (1000 * Mask(112, 0, ext_call.return_data[50 len 14]) * arg2 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * arg1)) + 1
                            else:
                                if mem[ceil32(return_data.size) + 242 len 14] + (1000 * Mask(112, 0, ext_call.return_data[50 len 14]) * arg2 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * mem[ceil32(return_data.size) + 242 len 14]) and 1000 > -1 / mem[ceil32(return_data.size) + 242 len 14] + (1000 * Mask(112, 0, ext_call.return_data[50 len 14]) * arg2 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * mem[ceil32(return_data.size) + 242 len 14]):
                                    revert with 'NH{q', 17
                                if not mem[ceil32(return_data.size) + 242 len 14] + (1000 * Mask(112, 0, ext_call.return_data[50 len 14]) * arg2 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * mem[ceil32(return_data.size) + 242 len 14]):
                                    revert with 'NH{q', 18
                                if (1000 * mem[ceil32(return_data.size) + 242 len 14]) + (1000 * 1000 * Mask(112, 0, ext_call.return_data[50 len 14]) * arg2 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * mem[ceil32(return_data.size) + 242 len 14]) / mem[ceil32(return_data.size) + 242 len 14] + (1000 * Mask(112, 0, ext_call.return_data[50 len 14]) * arg2 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * mem[ceil32(return_data.size) + 242 len 14]) != 1000:
                                    mem[(4 * ceil32(return_data.size)) + 320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(4 * ceil32(return_data.size)) + 324] = 32
                                    mem[(4 * ceil32(return_data.size)) + 356] = 33
                                    mem[(4 * ceil32(return_data.size)) + 388] = 'SafeMath: multiplication overflo'
                                    mem[(4 * ceil32(return_data.size)) + 420] = 'w'
                                    revert with memory
                                      from (4 * ceil32(return_data.size)) + 320
                                       len (5 * ceil32(return_data.size)) + 132
                                mem[(4 * ceil32(return_data.size)) + 320] = 30
                                mem[(4 * ceil32(return_data.size)) + 352] = 'SafeMath: subtraction overflow'
                                if (1000 * Mask(112, 0, ext_call.return_data[50 len 14]) * arg2 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) + 1 > mem[ceil32(return_data.size) + 242 len 14]:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if mem[ceil32(return_data.size) + 242 len 14] < (1000 * Mask(112, 0, ext_call.return_data[50 len 14]) * arg2 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) + 1:
                                    revert with 'NH{q', 17
                                if not mem[ceil32(return_data.size) + 242 len 14] + -(1000 * Mask(112, 0, ext_call.return_data[50 len 14]) * arg2 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) - 1:
                                    revert with 'NH{q', 18
                                if mem[ceil32(return_data.size) + 242 len 14] + -(1000 * Mask(112, 0, ext_call.return_data[50 len 14]) * arg2 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) - 1 and arg1 > -1 / mem[ceil32(return_data.size) + 242 len 14] + -(1000 * Mask(112, 0, ext_call.return_data[50 len 14]) * arg2 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) - 1:
                                    revert with 'NH{q', 17
                                if not mem[ceil32(return_data.size) + 242 len 14] + -(1000 * Mask(112, 0, ext_call.return_data[50 len 14]) * arg2 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) - 1:
                                    revert with 'NH{q', 18
                                if -arg1 + (mem[ceil32(return_data.size) + 242 len 14] * arg1) - (1000 * Mask(112, 0, ext_call.return_data[50 len 14]) * arg2 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * arg1) / mem[ceil32(return_data.size) + 242 len 14] + -(1000 * Mask(112, 0, ext_call.return_data[50 len 14]) * arg2 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) - 1 != arg1:
                                    mem[(4 * ceil32(return_data.size)) + 384] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(4 * ceil32(return_data.size)) + 388] = 32
                                    mem[(4 * ceil32(return_data.size)) + 420] = 33
                                    mem[(4 * ceil32(return_data.size)) + 452] = 'SafeMath: multiplication overflo'
                                    mem[(4 * ceil32(return_data.size)) + 484] = 'w'
                                    revert with memory
                                      from (4 * ceil32(return_data.size)) + 384
                                       len (5 * ceil32(return_data.size)) + 132
                                if not -arg1 + (mem[ceil32(return_data.size) + 242 len 14] * arg1) - (1000 * Mask(112, 0, ext_call.return_data[50 len 14]) * arg2 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * arg1):
                                    revert with 'NH{q', 18
                                if (1000 * mem[ceil32(return_data.size) + 242 len 14]) + (1000 * 1000 * Mask(112, 0, ext_call.return_data[50 len 14]) * arg2 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * mem[ceil32(return_data.size) + 242 len 14]) / -arg1 + (mem[ceil32(return_data.size) + 242 len 14] * arg1) - (1000 * Mask(112, 0, ext_call.return_data[50 len 14]) * arg2 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * arg1) > -2:
                                    revert with 'NH{q', 17
                                if ((1000 * mem[ceil32(return_data.size) + 242 len 14]) + (1000 * 1000 * Mask(112, 0, ext_call.return_data[50 len 14]) * arg2 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * mem[ceil32(return_data.size) + 242 len 14]) / -arg1 + (mem[ceil32(return_data.size) + 242 len 14] * arg1) - (1000 * Mask(112, 0, ext_call.return_data[50 len 14]) * arg2 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * arg1)) + 1 < (1000 * mem[ceil32(return_data.size) + 242 len 14]) + (1000 * 1000 * Mask(112, 0, ext_call.return_data[50 len 14]) * arg2 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * mem[ceil32(return_data.size) + 242 len 14]) / -arg1 + (mem[ceil32(return_data.size) + 242 len 14] * arg1) - (1000 * Mask(112, 0, ext_call.return_data[50 len 14]) * arg2 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * arg1):
                                    mem[(4 * ceil32(return_data.size)) + 384] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(4 * ceil32(return_data.size)) + 388] = 32
                                    mem[(4 * ceil32(return_data.size)) + 420] = 27
                                    mem[(4 * ceil32(return_data.size)) + 452] = 'SafeMath: addition overflow'
                                    revert with memory
                                      from (4 * ceil32(return_data.size)) + 384
                                       len (5 * ceil32(return_data.size)) + 100
                                mem[(4 * ceil32(return_data.size)) + 416] = (1000 * Mask(112, 0, ext_call.return_data[50 len 14]) * arg2 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) + 1
                                mem[(4 * ceil32(return_data.size)) + 448] = ((1000 * mem[ceil32(return_data.size) + 242 len 14]) + (1000 * 1000 * Mask(112, 0, ext_call.return_data[50 len 14]) * arg2 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * mem[ceil32(return_data.size) + 242 len 14]) / -arg1 + (mem[ceil32(return_data.size) + 242 len 14] * arg1) - (1000 * Mask(112, 0, ext_call.return_data[50 len 14]) * arg2 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * arg1)) + 1
                else:
                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                        mem[(4 * ceil32(return_data.size)) + 320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[(4 * ceil32(return_data.size)) + 324] = 32
                        mem[(4 * ceil32(return_data.size)) + 356] = 40
                        mem[(4 * ceil32(return_data.size)) + 388] = 'UniswapV2Library: INSUFFICIENT_L'
                        mem[(4 * ceil32(return_data.size)) + 420] = 'IQUIDITY'
                        revert with memory
                          from (4 * ceil32(return_data.size)) + 320
                           len (5 * ceil32(return_data.size)) + 132
                    if arg5:
                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                            mem[(4 * ceil32(return_data.size)) + 320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + 324] = 32
                            mem[(4 * ceil32(return_data.size)) + 356] = 40
                            mem[(4 * ceil32(return_data.size)) + 388] = 'UniswapV2Library: INSUFFICIENT_L'
                            mem[(4 * ceil32(return_data.size)) + 420] = 'IQUIDITY'
                            revert with memory
                              from (4 * ceil32(return_data.size)) + 320
                               len (5 * ceil32(return_data.size)) + 132
                        if not Mask(112, 0, ext_call.return_data[0]):
                            if (1000 * Mask(112, 0, ext_call.return_data[50 len 14]) * arg2 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) + 1 > Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if Mask(112, 0, ext_call.return_data[0]) < (1000 * Mask(112, 0, ext_call.return_data[50 len 14]) * arg2 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) + 1:
                                revert with 'NH{q', 17
                            if not Mask(112, 0, ext_call.return_data[0]) + -(1000 * Mask(112, 0, ext_call.return_data[50 len 14]) * arg2 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) - 1:
                                revert with 'NH{q', 18
                            if Mask(112, 0, ext_call.return_data[0]) + -(1000 * Mask(112, 0, ext_call.return_data[50 len 14]) * arg2 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) - 1 and arg1 > -1 / Mask(112, 0, ext_call.return_data[0]) + -(1000 * Mask(112, 0, ext_call.return_data[50 len 14]) * arg2 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) - 1:
                                revert with 'NH{q', 17
                            if not Mask(112, 0, ext_call.return_data[0]) + -(1000 * Mask(112, 0, ext_call.return_data[50 len 14]) * arg2 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) - 1:
                                revert with 'NH{q', 18
                            if -arg1 + (Mask(112, 0, ext_call.return_data[0]) * arg1) - (1000 * Mask(112, 0, ext_call.return_data[50 len 14]) * arg2 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * arg1) / Mask(112, 0, ext_call.return_data[0]) + -(1000 * Mask(112, 0, ext_call.return_data[50 len 14]) * arg2 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) - 1 != arg1:
                                mem[(4 * ceil32(return_data.size)) + 384] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + 388] = 32
                                mem[(4 * ceil32(return_data.size)) + 420] = 33
                                mem[(4 * ceil32(return_data.size)) + 452] = 'SafeMath: multiplication overflo'
                                mem[(4 * ceil32(return_data.size)) + 484] = 'w'
                                revert with memory
                                  from (4 * ceil32(return_data.size)) + 384
                                   len (5 * ceil32(return_data.size)) + 132
                            if not -arg1 + (Mask(112, 0, ext_call.return_data[0]) * arg1) - (1000 * Mask(112, 0, ext_call.return_data[50 len 14]) * arg2 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * arg1):
                                revert with 'NH{q', 18
                            if 0 / -arg1 + (Mask(112, 0, ext_call.return_data[0]) * arg1) - (1000 * Mask(112, 0, ext_call.return_data[50 len 14]) * arg2 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * arg1) > -2:
                                revert with 'NH{q', 17
                            if (0 / -arg1 + (Mask(112, 0, ext_call.return_data[0]) * arg1) - (1000 * Mask(112, 0, ext_call.return_data[50 len 14]) * arg2 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * arg1)) + 1 < 0 / -arg1 + (Mask(112, 0, ext_call.return_data[0]) * arg1) - (1000 * Mask(112, 0, ext_call.return_data[50 len 14]) * arg2 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * arg1):
                                mem[(4 * ceil32(return_data.size)) + 384] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + 388] = 32
                                mem[(4 * ceil32(return_data.size)) + 420] = 27
                                mem[(4 * ceil32(return_data.size)) + 452] = 'SafeMath: addition overflow'
                                revert with memory
                                  from (4 * ceil32(return_data.size)) + 384
                                   len (5 * ceil32(return_data.size)) + 100
                            mem[(4 * ceil32(return_data.size)) + 416] = (1000 * Mask(112, 0, ext_call.return_data[50 len 14]) * arg2 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) + 1
                            mem[(4 * ceil32(return_data.size)) + 448] = (0 / -arg1 + (Mask(112, 0, ext_call.return_data[0]) * arg1) - (1000 * Mask(112, 0, ext_call.return_data[50 len 14]) * arg2 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * arg1)) + 1
                        else:
                            if Mask(112, 0, ext_call.return_data[0]) and (1000 * Mask(112, 0, ext_call.return_data[50 len 14]) * arg2 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) + 1 > -1 / Mask(112, 0, ext_call.return_data[0]):
                                revert with 'NH{q', 17
                            if not Mask(112, 0, ext_call.return_data[0]):
                                revert with 'NH{q', 18
                            if Mask(112, 0, ext_call.return_data[0]) + (1000 * Mask(112, 0, ext_call.return_data[50 len 14]) * arg2 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[0]) != (1000 * Mask(112, 0, ext_call.return_data[50 len 14]) * arg2 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) + 1:
                                mem[(4 * ceil32(return_data.size)) + 320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + 324] = 32
                                mem[(4 * ceil32(return_data.size)) + 356] = 33
                                mem[(4 * ceil32(return_data.size)) + 388] = 'SafeMath: multiplication overflo'
                                mem[(4 * ceil32(return_data.size)) + 420] = 'w'
                                revert with memory
                                  from (4 * ceil32(return_data.size)) + 320
                                   len (5 * ceil32(return_data.size)) + 132
                            if not Mask(112, 0, ext_call.return_data[0]) + (1000 * Mask(112, 0, ext_call.return_data[50 len 14]) * arg2 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * Mask(112, 0, ext_call.return_data[0])):
                                if (1000 * Mask(112, 0, ext_call.return_data[50 len 14]) * arg2 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) + 1 > Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if Mask(112, 0, ext_call.return_data[0]) < (1000 * Mask(112, 0, ext_call.return_data[50 len 14]) * arg2 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) + 1:
                                    revert with 'NH{q', 17
                                if not Mask(112, 0, ext_call.return_data[0]) + -(1000 * Mask(112, 0, ext_call.return_data[50 len 14]) * arg2 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) - 1:
                                    revert with 'NH{q', 18
                                if Mask(112, 0, ext_call.return_data[0]) + -(1000 * Mask(112, 0, ext_call.return_data[50 len 14]) * arg2 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) - 1 and arg1 > -1 / Mask(112, 0, ext_call.return_data[0]) + -(1000 * Mask(112, 0, ext_call.return_data[50 len 14]) * arg2 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) - 1:
                                    revert with 'NH{q', 17
                                if not Mask(112, 0, ext_call.return_data[0]) + -(1000 * Mask(112, 0, ext_call.return_data[50 len 14]) * arg2 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) - 1:
                                    revert with 'NH{q', 18
                                if -arg1 + (Mask(112, 0, ext_call.return_data[0]) * arg1) - (1000 * Mask(112, 0, ext_call.return_data[50 len 14]) * arg2 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * arg1) / Mask(112, 0, ext_call.return_data[0]) + -(1000 * Mask(112, 0, ext_call.return_data[50 len 14]) * arg2 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) - 1 != arg1:
                                    mem[(4 * ceil32(return_data.size)) + 384] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(4 * ceil32(return_data.size)) + 388] = 32
                                    mem[(4 * ceil32(return_data.size)) + 420] = 33
                                    mem[(4 * ceil32(return_data.size)) + 452] = 'SafeMath: multiplication overflo'
                                    mem[(4 * ceil32(return_data.size)) + 484] = 'w'
                                    revert with memory
                                      from (4 * ceil32(return_data.size)) + 384
                                       len (5 * ceil32(return_data.size)) + 132
                                if not -arg1 + (Mask(112, 0, ext_call.return_data[0]) * arg1) - (1000 * Mask(112, 0, ext_call.return_data[50 len 14]) * arg2 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * arg1):
                                    revert with 'NH{q', 18
                                if 0 / -arg1 + (Mask(112, 0, ext_call.return_data[0]) * arg1) - (1000 * Mask(112, 0, ext_call.return_data[50 len 14]) * arg2 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * arg1) > -2:
                                    revert with 'NH{q', 17
                                if (0 / -arg1 + (Mask(112, 0, ext_call.return_data[0]) * arg1) - (1000 * Mask(112, 0, ext_call.return_data[50 len 14]) * arg2 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * arg1)) + 1 < 0 / -arg1 + (Mask(112, 0, ext_call.return_data[0]) * arg1) - (1000 * Mask(112, 0, ext_call.return_data[50 len 14]) * arg2 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * arg1):
                                    mem[(4 * ceil32(return_data.size)) + 384] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(4 * ceil32(return_data.size)) + 388] = 32
                                    mem[(4 * ceil32(return_data.size)) + 420] = 27
                                    mem[(4 * ceil32(return_data.size)) + 452] = 'SafeMath: addition overflow'
                                    revert with memory
                                      from (4 * ceil32(return_data.size)) + 384
                                       len (5 * ceil32(return_data.size)) + 100
                                mem[(4 * ceil32(return_data.size)) + 416] = (1000 * Mask(112, 0, ext_call.return_data[50 len 14]) * arg2 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) + 1
                                mem[(4 * ceil32(return_data.size)) + 448] = (0 / -arg1 + (Mask(112, 0, ext_call.return_data[0]) * arg1) - (1000 * Mask(112, 0, ext_call.return_data[50 len 14]) * arg2 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * arg1)) + 1
                            else:
                                if Mask(112, 0, ext_call.return_data[0]) + (1000 * Mask(112, 0, ext_call.return_data[50 len 14]) * arg2 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * Mask(112, 0, ext_call.return_data[0])) and 1000 > -1 / Mask(112, 0, ext_call.return_data[0]) + (1000 * Mask(112, 0, ext_call.return_data[50 len 14]) * arg2 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * Mask(112, 0, ext_call.return_data[0])):
                                    revert with 'NH{q', 17
                                if not Mask(112, 0, ext_call.return_data[0]) + (1000 * Mask(112, 0, ext_call.return_data[50 len 14]) * arg2 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * Mask(112, 0, ext_call.return_data[0])):
                                    revert with 'NH{q', 18
                                if (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * 1000 * Mask(112, 0, ext_call.return_data[50 len 14]) * arg2 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[0]) + (1000 * Mask(112, 0, ext_call.return_data[50 len 14]) * arg2 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * Mask(112, 0, ext_call.return_data[0])) != 1000:
                                    mem[(4 * ceil32(return_data.size)) + 320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(4 * ceil32(return_data.size)) + 324] = 32
                                    mem[(4 * ceil32(return_data.size)) + 356] = 33
                                    mem[(4 * ceil32(return_data.size)) + 388] = 'SafeMath: multiplication overflo'
                                    mem[(4 * ceil32(return_data.size)) + 420] = 'w'
                                    revert with memory
                                      from (4 * ceil32(return_data.size)) + 320
                                       len (5 * ceil32(return_data.size)) + 132
                                if (1000 * Mask(112, 0, ext_call.return_data[50 len 14]) * arg2 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) + 1 > Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if Mask(112, 0, ext_call.return_data[0]) < (1000 * Mask(112, 0, ext_call.return_data[50 len 14]) * arg2 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) + 1:
                                    revert with 'NH{q', 17
                                if not Mask(112, 0, ext_call.return_data[0]) + -(1000 * Mask(112, 0, ext_call.return_data[50 len 14]) * arg2 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) - 1:
                                    revert with 'NH{q', 18
                                if Mask(112, 0, ext_call.return_data[0]) + -(1000 * Mask(112, 0, ext_call.return_data[50 len 14]) * arg2 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) - 1 and arg1 > -1 / Mask(112, 0, ext_call.return_data[0]) + -(1000 * Mask(112, 0, ext_call.return_data[50 len 14]) * arg2 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) - 1:
                                    revert with 'NH{q', 17
                                if not Mask(112, 0, ext_call.return_data[0]) + -(1000 * Mask(112, 0, ext_call.return_data[50 len 14]) * arg2 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) - 1:
                                    revert with 'NH{q', 18
                                if -arg1 + (Mask(112, 0, ext_call.return_data[0]) * arg1) - (1000 * Mask(112, 0, ext_call.return_data[50 len 14]) * arg2 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * arg1) / Mask(112, 0, ext_call.return_data[0]) + -(1000 * Mask(112, 0, ext_call.return_data[50 len 14]) * arg2 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) - 1 != arg1:
                                    mem[(4 * ceil32(return_data.size)) + 384] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(4 * ceil32(return_data.size)) + 388] = 32
                                    mem[(4 * ceil32(return_data.size)) + 420] = 33
                                    mem[(4 * ceil32(return_data.size)) + 452] = 'SafeMath: multiplication overflo'
                                    mem[(4 * ceil32(return_data.size)) + 484] = 'w'
                                    revert with memory
                                      from (4 * ceil32(return_data.size)) + 384
                                       len (5 * ceil32(return_data.size)) + 132
                                if not -arg1 + (Mask(112, 0, ext_call.return_data[0]) * arg1) - (1000 * Mask(112, 0, ext_call.return_data[50 len 14]) * arg2 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * arg1):
                                    revert with 'NH{q', 18
                                if (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * 1000 * Mask(112, 0, ext_call.return_data[50 len 14]) * arg2 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * Mask(112, 0, ext_call.return_data[0])) / -arg1 + (Mask(112, 0, ext_call.return_data[0]) * arg1) - (1000 * Mask(112, 0, ext_call.return_data[50 len 14]) * arg2 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * arg1) > -2:
                                    revert with 'NH{q', 17
                                if ((1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * 1000 * Mask(112, 0, ext_call.return_data[50 len 14]) * arg2 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * Mask(112, 0, ext_call.return_data[0])) / -arg1 + (Mask(112, 0, ext_call.return_data[0]) * arg1) - (1000 * Mask(112, 0, ext_call.return_data[50 len 14]) * arg2 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * arg1)) + 1 < (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * 1000 * Mask(112, 0, ext_call.return_data[50 len 14]) * arg2 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * Mask(112, 0, ext_call.return_data[0])) / -arg1 + (Mask(112, 0, ext_call.return_data[0]) * arg1) - (1000 * Mask(112, 0, ext_call.return_data[50 len 14]) * arg2 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * arg1):
                                    mem[(4 * ceil32(return_data.size)) + 384] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(4 * ceil32(return_data.size)) + 388] = 32
                                    mem[(4 * ceil32(return_data.size)) + 420] = 27
                                    mem[(4 * ceil32(return_data.size)) + 452] = 'SafeMath: addition overflow'
                                    revert with memory
                                      from (4 * ceil32(return_data.size)) + 384
                                       len (5 * ceil32(return_data.size)) + 100
                                mem[(4 * ceil32(return_data.size)) + 416] = (1000 * Mask(112, 0, ext_call.return_data[50 len 14]) * arg2 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) + 1
                                mem[(4 * ceil32(return_data.size)) + 448] = ((1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * 1000 * Mask(112, 0, ext_call.return_data[50 len 14]) * arg2 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * Mask(112, 0, ext_call.return_data[0])) / -arg1 + (Mask(112, 0, ext_call.return_data[0]) * arg1) - (1000 * Mask(112, 0, ext_call.return_data[50 len 14]) * arg2 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * arg1)) + 1
                    else:
                        if mem[ceil32(return_data.size) + 242 len 14] <= 0:
                            mem[(4 * ceil32(return_data.size)) + 320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + 324] = 32
                            mem[(4 * ceil32(return_data.size)) + 356] = 40
                            mem[(4 * ceil32(return_data.size)) + 388] = 'UniswapV2Library: INSUFFICIENT_L'
                            mem[(4 * ceil32(return_data.size)) + 420] = 'IQUIDITY'
                            revert with memory
                              from (4 * ceil32(return_data.size)) + 320
                               len (5 * ceil32(return_data.size)) + 132
                        if not Mask(112, 0, ext_call.return_data[0]):
                            mem[(4 * ceil32(return_data.size)) + 320] = 30
                            mem[(4 * ceil32(return_data.size)) + 352] = 'SafeMath: subtraction overflow'
                            if (1000 * Mask(112, 0, ext_call.return_data[50 len 14]) * arg2 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) + 1 > mem[ceil32(return_data.size) + 242 len 14]:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if mem[ceil32(return_data.size) + 242 len 14] < (1000 * Mask(112, 0, ext_call.return_data[50 len 14]) * arg2 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) + 1:
                                revert with 'NH{q', 17
                            if not mem[ceil32(return_data.size) + 242 len 14] + -(1000 * Mask(112, 0, ext_call.return_data[50 len 14]) * arg2 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) - 1:
                                revert with 'NH{q', 18
                            if mem[ceil32(return_data.size) + 242 len 14] + -(1000 * Mask(112, 0, ext_call.return_data[50 len 14]) * arg2 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) - 1 and arg1 > -1 / mem[ceil32(return_data.size) + 242 len 14] + -(1000 * Mask(112, 0, ext_call.return_data[50 len 14]) * arg2 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) - 1:
                                revert with 'NH{q', 17
                            if not mem[ceil32(return_data.size) + 242 len 14] + -(1000 * Mask(112, 0, ext_call.return_data[50 len 14]) * arg2 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) - 1:
                                revert with 'NH{q', 18
                            if -arg1 + (mem[ceil32(return_data.size) + 242 len 14] * arg1) - (1000 * Mask(112, 0, ext_call.return_data[50 len 14]) * arg2 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * arg1) / mem[ceil32(return_data.size) + 242 len 14] + -(1000 * Mask(112, 0, ext_call.return_data[50 len 14]) * arg2 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) - 1 != arg1:
                                mem[(4 * ceil32(return_data.size)) + 384] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + 388] = 32
                                mem[(4 * ceil32(return_data.size)) + 420] = 33
                                mem[(4 * ceil32(return_data.size)) + 452] = 'SafeMath: multiplication overflo'
                                mem[(4 * ceil32(return_data.size)) + 484] = 'w'
                                revert with memory
                                  from (4 * ceil32(return_data.size)) + 384
                                   len (5 * ceil32(return_data.size)) + 132
                            if not -arg1 + (mem[ceil32(return_data.size) + 242 len 14] * arg1) - (1000 * Mask(112, 0, ext_call.return_data[50 len 14]) * arg2 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * arg1):
                                revert with 'NH{q', 18
                            if 0 / -arg1 + (mem[ceil32(return_data.size) + 242 len 14] * arg1) - (1000 * Mask(112, 0, ext_call.return_data[50 len 14]) * arg2 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * arg1) > -2:
                                revert with 'NH{q', 17
                            if (0 / -arg1 + (mem[ceil32(return_data.size) + 242 len 14] * arg1) - (1000 * Mask(112, 0, ext_call.return_data[50 len 14]) * arg2 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * arg1)) + 1 < 0 / -arg1 + (mem[ceil32(return_data.size) + 242 len 14] * arg1) - (1000 * Mask(112, 0, ext_call.return_data[50 len 14]) * arg2 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * arg1):
                                mem[(4 * ceil32(return_data.size)) + 384] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + 388] = 32
                                mem[(4 * ceil32(return_data.size)) + 420] = 27
                                mem[(4 * ceil32(return_data.size)) + 452] = 'SafeMath: addition overflow'
                                revert with memory
                                  from (4 * ceil32(return_data.size)) + 384
                                   len (5 * ceil32(return_data.size)) + 100
                            mem[(4 * ceil32(return_data.size)) + 416] = (1000 * Mask(112, 0, ext_call.return_data[50 len 14]) * arg2 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) + 1
                            mem[(4 * ceil32(return_data.size)) + 448] = (0 / -arg1 + (mem[ceil32(return_data.size) + 242 len 14] * arg1) - (1000 * Mask(112, 0, ext_call.return_data[50 len 14]) * arg2 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * arg1)) + 1
                        else:
                            if Mask(112, 0, ext_call.return_data[0]) and (1000 * Mask(112, 0, ext_call.return_data[50 len 14]) * arg2 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) + 1 > -1 / Mask(112, 0, ext_call.return_data[0]):
                                revert with 'NH{q', 17
                            if not Mask(112, 0, ext_call.return_data[0]):
                                revert with 'NH{q', 18
                            if Mask(112, 0, ext_call.return_data[0]) + (1000 * Mask(112, 0, ext_call.return_data[50 len 14]) * arg2 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[0]) != (1000 * Mask(112, 0, ext_call.return_data[50 len 14]) * arg2 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) + 1:
                                mem[(4 * ceil32(return_data.size)) + 320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + 324] = 32
                                mem[(4 * ceil32(return_data.size)) + 356] = 33
                                mem[(4 * ceil32(return_data.size)) + 388] = 'SafeMath: multiplication overflo'
                                mem[(4 * ceil32(return_data.size)) + 420] = 'w'
                                revert with memory
                                  from (4 * ceil32(return_data.size)) + 320
                                   len (5 * ceil32(return_data.size)) + 132
                            if not Mask(112, 0, ext_call.return_data[0]) + (1000 * Mask(112, 0, ext_call.return_data[50 len 14]) * arg2 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * Mask(112, 0, ext_call.return_data[0])):
                                mem[(4 * ceil32(return_data.size)) + 320] = 30
                                mem[(4 * ceil32(return_data.size)) + 352] = 'SafeMath: subtraction overflow'
                                if (1000 * Mask(112, 0, ext_call.return_data[50 len 14]) * arg2 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) + 1 > mem[ceil32(return_data.size) + 242 len 14]:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if mem[ceil32(return_data.size) + 242 len 14] < (1000 * Mask(112, 0, ext_call.return_data[50 len 14]) * arg2 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) + 1:
                                    revert with 'NH{q', 17
                                if not mem[ceil32(return_data.size) + 242 len 14] + -(1000 * Mask(112, 0, ext_call.return_data[50 len 14]) * arg2 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) - 1:
                                    revert with 'NH{q', 18
                                if mem[ceil32(return_data.size) + 242 len 14] + -(1000 * Mask(112, 0, ext_call.return_data[50 len 14]) * arg2 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) - 1 and arg1 > -1 / mem[ceil32(return_data.size) + 242 len 14] + -(1000 * Mask(112, 0, ext_call.return_data[50 len 14]) * arg2 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) - 1:
                                    revert with 'NH{q', 17
                                if not mem[ceil32(return_data.size) + 242 len 14] + -(1000 * Mask(112, 0, ext_call.return_data[50 len 14]) * arg2 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) - 1:
                                    revert with 'NH{q', 18
                                if -arg1 + (mem[ceil32(return_data.size) + 242 len 14] * arg1) - (1000 * Mask(112, 0, ext_call.return_data[50 len 14]) * arg2 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * arg1) / mem[ceil32(return_data.size) + 242 len 14] + -(1000 * Mask(112, 0, ext_call.return_data[50 len 14]) * arg2 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) - 1 != arg1:
                                    mem[(4 * ceil32(return_data.size)) + 384] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(4 * ceil32(return_data.size)) + 388] = 32
                                    mem[(4 * ceil32(return_data.size)) + 420] = 33
                                    mem[(4 * ceil32(return_data.size)) + 452] = 'SafeMath: multiplication overflo'
                                    mem[(4 * ceil32(return_data.size)) + 484] = 'w'
                                    revert with memory
                                      from (4 * ceil32(return_data.size)) + 384
                                       len (5 * ceil32(return_data.size)) + 132
                                if not -arg1 + (mem[ceil32(return_data.size) + 242 len 14] * arg1) - (1000 * Mask(112, 0, ext_call.return_data[50 len 14]) * arg2 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * arg1):
                                    revert with 'NH{q', 18
                                if 0 / -arg1 + (mem[ceil32(return_data.size) + 242 len 14] * arg1) - (1000 * Mask(112, 0, ext_call.return_data[50 len 14]) * arg2 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * arg1) > -2:
                                    revert with 'NH{q', 17
                                if (0 / -arg1 + (mem[ceil32(return_data.size) + 242 len 14] * arg1) - (1000 * Mask(112, 0, ext_call.return_data[50 len 14]) * arg2 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * arg1)) + 1 < 0 / -arg1 + (mem[ceil32(return_data.size) + 242 len 14] * arg1) - (1000 * Mask(112, 0, ext_call.return_data[50 len 14]) * arg2 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * arg1):
                                    mem[(4 * ceil32(return_data.size)) + 384] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(4 * ceil32(return_data.size)) + 388] = 32
                                    mem[(4 * ceil32(return_data.size)) + 420] = 27
                                    mem[(4 * ceil32(return_data.size)) + 452] = 'SafeMath: addition overflow'
                                    revert with memory
                                      from (4 * ceil32(return_data.size)) + 384
                                       len (5 * ceil32(return_data.size)) + 100
                                mem[(4 * ceil32(return_data.size)) + 416] = (1000 * Mask(112, 0, ext_call.return_data[50 len 14]) * arg2 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) + 1
                                mem[(4 * ceil32(return_data.size)) + 448] = (0 / -arg1 + (mem[ceil32(return_data.size) + 242 len 14] * arg1) - (1000 * Mask(112, 0, ext_call.return_data[50 len 14]) * arg2 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * arg1)) + 1
                            else:
                                if Mask(112, 0, ext_call.return_data[0]) + (1000 * Mask(112, 0, ext_call.return_data[50 len 14]) * arg2 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * Mask(112, 0, ext_call.return_data[0])) and 1000 > -1 / Mask(112, 0, ext_call.return_data[0]) + (1000 * Mask(112, 0, ext_call.return_data[50 len 14]) * arg2 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * Mask(112, 0, ext_call.return_data[0])):
                                    revert with 'NH{q', 17
                                if not Mask(112, 0, ext_call.return_data[0]) + (1000 * Mask(112, 0, ext_call.return_data[50 len 14]) * arg2 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * Mask(112, 0, ext_call.return_data[0])):
                                    revert with 'NH{q', 18
                                if (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * 1000 * Mask(112, 0, ext_call.return_data[50 len 14]) * arg2 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[0]) + (1000 * Mask(112, 0, ext_call.return_data[50 len 14]) * arg2 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * Mask(112, 0, ext_call.return_data[0])) != 1000:
                                    mem[(4 * ceil32(return_data.size)) + 320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(4 * ceil32(return_data.size)) + 324] = 32
                                    mem[(4 * ceil32(return_data.size)) + 356] = 33
                                    mem[(4 * ceil32(return_data.size)) + 388] = 'SafeMath: multiplication overflo'
                                    mem[(4 * ceil32(return_data.size)) + 420] = 'w'
                                    revert with memory
                                      from (4 * ceil32(return_data.size)) + 320
                                       len (5 * ceil32(return_data.size)) + 132
                                mem[(4 * ceil32(return_data.size)) + 320] = 30
                                mem[(4 * ceil32(return_data.size)) + 352] = 'SafeMath: subtraction overflow'
                                if (1000 * Mask(112, 0, ext_call.return_data[50 len 14]) * arg2 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) + 1 > mem[ceil32(return_data.size) + 242 len 14]:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if mem[ceil32(return_data.size) + 242 len 14] < (1000 * Mask(112, 0, ext_call.return_data[50 len 14]) * arg2 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) + 1:
                                    revert with 'NH{q', 17
                                if not mem[ceil32(return_data.size) + 242 len 14] + -(1000 * Mask(112, 0, ext_call.return_data[50 len 14]) * arg2 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) - 1:
                                    revert with 'NH{q', 18
                                if mem[ceil32(return_data.size) + 242 len 14] + -(1000 * Mask(112, 0, ext_call.return_data[50 len 14]) * arg2 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) - 1 and arg1 > -1 / mem[ceil32(return_data.size) + 242 len 14] + -(1000 * Mask(112, 0, ext_call.return_data[50 len 14]) * arg2 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) - 1:
                                    revert with 'NH{q', 17
                                if not mem[ceil32(return_data.size) + 242 len 14] + -(1000 * Mask(112, 0, ext_call.return_data[50 len 14]) * arg2 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) - 1:
                                    revert with 'NH{q', 18
                                if -arg1 + (mem[ceil32(return_data.size) + 242 len 14] * arg1) - (1000 * Mask(112, 0, ext_call.return_data[50 len 14]) * arg2 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * arg1) / mem[ceil32(return_data.size) + 242 len 14] + -(1000 * Mask(112, 0, ext_call.return_data[50 len 14]) * arg2 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) - 1 != arg1:
                                    mem[(4 * ceil32(return_data.size)) + 384] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(4 * ceil32(return_data.size)) + 388] = 32
                                    mem[(4 * ceil32(return_data.size)) + 420] = 33
                                    mem[(4 * ceil32(return_data.size)) + 452] = 'SafeMath: multiplication overflo'
                                    mem[(4 * ceil32(return_data.size)) + 484] = 'w'
                                    revert with memory
                                      from (4 * ceil32(return_data.size)) + 384
                                       len (5 * ceil32(return_data.size)) + 132
                                if not -arg1 + (mem[ceil32(return_data.size) + 242 len 14] * arg1) - (1000 * Mask(112, 0, ext_call.return_data[50 len 14]) * arg2 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * arg1):
                                    revert with 'NH{q', 18
                                if (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * 1000 * Mask(112, 0, ext_call.return_data[50 len 14]) * arg2 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * Mask(112, 0, ext_call.return_data[0])) / -arg1 + (mem[ceil32(return_data.size) + 242 len 14] * arg1) - (1000 * Mask(112, 0, ext_call.return_data[50 len 14]) * arg2 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * arg1) > -2:
                                    revert with 'NH{q', 17
                                if ((1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * 1000 * Mask(112, 0, ext_call.return_data[50 len 14]) * arg2 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * Mask(112, 0, ext_call.return_data[0])) / -arg1 + (mem[ceil32(return_data.size) + 242 len 14] * arg1) - (1000 * Mask(112, 0, ext_call.return_data[50 len 14]) * arg2 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * arg1)) + 1 < (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * 1000 * Mask(112, 0, ext_call.return_data[50 len 14]) * arg2 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * Mask(112, 0, ext_call.return_data[0])) / -arg1 + (mem[ceil32(return_data.size) + 242 len 14] * arg1) - (1000 * Mask(112, 0, ext_call.return_data[50 len 14]) * arg2 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * arg1):
                                    mem[(4 * ceil32(return_data.size)) + 384] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(4 * ceil32(return_data.size)) + 388] = 32
                                    mem[(4 * ceil32(return_data.size)) + 420] = 27
                                    mem[(4 * ceil32(return_data.size)) + 452] = 'SafeMath: addition overflow'
                                    revert with memory
                                      from (4 * ceil32(return_data.size)) + 384
                                       len (5 * ceil32(return_data.size)) + 100
                                mem[(4 * ceil32(return_data.size)) + 416] = (1000 * Mask(112, 0, ext_call.return_data[50 len 14]) * arg2 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1)) + 1
                                mem[(4 * ceil32(return_data.size)) + 448] = ((1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * 1000 * Mask(112, 0, ext_call.return_data[50 len 14]) * arg2 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * Mask(112, 0, ext_call.return_data[0])) / -arg1 + (mem[ceil32(return_data.size) + 242 len 14] * arg1) - (1000 * Mask(112, 0, ext_call.return_data[50 len 14]) * arg2 / (Mask(112, 0, ext_call.return_data[0]) * arg1) - (arg2 * arg1) * arg1)) + 1
        mem[(4 * ceil32(return_data.size)) + 480] = address(arg3)
        mem[(4 * ceil32(return_data.size)) + 512] = address(arg4)
        mem[(4 * ceil32(return_data.size)) + 544] = bool(arg5)
        mem[(4 * ceil32(return_data.size)) + 576] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
        mem[(4 * ceil32(return_data.size)) + 580] = arg2
        mem[(4 * ceil32(return_data.size)) + 612] = 0
        mem[(4 * ceil32(return_data.size)) + 644] = this.address
        mem[(4 * ceil32(return_data.size)) + 676] = 128
        mem[(4 * ceil32(return_data.size)) + 708] = (5 * ceil32(return_data.size)) + 160
        mem[(4 * ceil32(return_data.size)) + 740 len ceil32(5 * ceil32(return_data.size)) + 5] = mem[(4 * ceil32(return_data.size)) + 416 len ceil32(5 * ceil32(return_data.size)) + 5]
        if ceil32(5 * ceil32(return_data.size)) + 5 > (5 * ceil32(return_data.size)) + 160:
            mem[(10 * ceil32(return_data.size)) + 900] = 0
        require ext_code.size(address(arg4))
        call address(arg4).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
             gas gas_remaining wei
            args arg2, 0, address(this.address), 128, (5 * ceil32(return_data.size)) + 160, mem[(4 * ceil32(return_data.size)) + 740 len ceil32(5 * ceil32(return_data.size)) + 5]
    else:
        if Mask(112, 0, ext_call.return_data[0]) <= 0:
            mem[(4 * ceil32(return_data.size)) + 256] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(4 * ceil32(return_data.size)) + 260] = 32
            mem[(4 * ceil32(return_data.size)) + 292] = 40
            mem[(4 * ceil32(return_data.size)) + 324] = 'UniswapV2Library: INSUFFICIENT_L'
            mem[(4 * ceil32(return_data.size)) + 356] = 'IQUIDITY'
            revert with memory
              from (4 * ceil32(return_data.size)) + 256
               len (5 * ceil32(return_data.size)) + 132
        if mem[ceil32(return_data.size) + 178 len 14] <= 0:
            mem[(4 * ceil32(return_data.size)) + 256] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(4 * ceil32(return_data.size)) + 260] = 32
            mem[(4 * ceil32(return_data.size)) + 292] = 40
            mem[(4 * ceil32(return_data.size)) + 324] = 'UniswapV2Library: INSUFFICIENT_L'
            mem[(4 * ceil32(return_data.size)) + 356] = 'IQUIDITY'
            revert with memory
              from (4 * ceil32(return_data.size)) + 256
               len (5 * ceil32(return_data.size)) + 132
        if not Mask(112, 0, ext_call.return_data[0]):
            mem[(4 * ceil32(return_data.size)) + 256] = 30
            mem[(4 * ceil32(return_data.size)) + 288] = 'SafeMath: subtraction overflow'
            if arg2 > Mask(112, 0, ext_call.return_data[50 len 14]):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if Mask(112, 0, ext_call.return_data[50 len 14]) < arg2:
                revert with 'NH{q', 17
            if not Mask(112, 0, ext_call.return_data[50 len 14]) - arg2:
                revert with 'NH{q', 18
            if Mask(112, 0, ext_call.return_data[50 len 14]) - arg2 and arg1 > -1 / Mask(112, 0, ext_call.return_data[50 len 14]) - arg2:
                revert with 'NH{q', 17
            if not Mask(112, 0, ext_call.return_data[50 len 14]) - arg2:
                revert with 'NH{q', 18
            if (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) / Mask(112, 0, ext_call.return_data[50 len 14]) - arg2 != arg1:
                mem[(4 * ceil32(return_data.size)) + 320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + 324] = 32
                mem[(4 * ceil32(return_data.size)) + 356] = 33
                mem[(4 * ceil32(return_data.size)) + 388] = 'SafeMath: multiplication overflo'
                mem[(4 * ceil32(return_data.size)) + 420] = 'w'
                revert with memory
                  from (4 * ceil32(return_data.size)) + 320
                   len (5 * ceil32(return_data.size)) + 132
            if not (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1):
                revert with 'NH{q', 18
            if 0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) > -2:
                revert with 'NH{q', 17
            if (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) + 1 < 0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1):
                mem[(4 * ceil32(return_data.size)) + 320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + 324] = 32
                mem[(4 * ceil32(return_data.size)) + 356] = 27
                mem[(4 * ceil32(return_data.size)) + 388] = 'SafeMath: addition overflow'
                revert with memory
                  from (4 * ceil32(return_data.size)) + 320
                   len (5 * ceil32(return_data.size)) + 100
            if (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) + 1 <= 0:
                mem[(4 * ceil32(return_data.size)) + 320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + 324] = 32
                mem[(4 * ceil32(return_data.size)) + 356] = 44
                mem[(4 * ceil32(return_data.size)) + 388] = 'UniswapV2Library: INSUFFICIENT_O'
                mem[(4 * ceil32(return_data.size)) + 420] = 'UTPUT_AMOUNT'
                revert with memory
                  from (4 * ceil32(return_data.size)) + 320
                   len (5 * ceil32(return_data.size)) + 132
            if arg5:
                if mem[ceil32(return_data.size) + 242 len 14] <= 0:
                    mem[(4 * ceil32(return_data.size)) + 320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 324] = 32
                    mem[(4 * ceil32(return_data.size)) + 356] = 40
                    mem[(4 * ceil32(return_data.size)) + 388] = 'UniswapV2Library: INSUFFICIENT_L'
                    mem[(4 * ceil32(return_data.size)) + 420] = 'IQUIDITY'
                    revert with memory
                      from (4 * ceil32(return_data.size)) + 320
                       len (5 * ceil32(return_data.size)) + 132
                if arg5:
                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                        mem[(4 * ceil32(return_data.size)) + 320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[(4 * ceil32(return_data.size)) + 324] = 32
                        mem[(4 * ceil32(return_data.size)) + 356] = 40
                        mem[(4 * ceil32(return_data.size)) + 388] = 'UniswapV2Library: INSUFFICIENT_L'
                        mem[(4 * ceil32(return_data.size)) + 420] = 'IQUIDITY'
                        revert with memory
                          from (4 * ceil32(return_data.size)) + 320
                           len (5 * ceil32(return_data.size)) + 132
                    if not mem[ceil32(return_data.size) + 242 len 14]:
                        if (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) + 1 > Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if Mask(112, 0, ext_call.return_data[0]) < (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) + 1:
                            revert with 'NH{q', 17
                        if not Mask(112, 0, ext_call.return_data[0]) + -(0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) - 1:
                            revert with 'NH{q', 18
                        if Mask(112, 0, ext_call.return_data[0]) + -(0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) - 1 and arg1 > -1 / Mask(112, 0, ext_call.return_data[0]) + -(0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) - 1:
                            revert with 'NH{q', 17
                        if not Mask(112, 0, ext_call.return_data[0]) + -(0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) - 1:
                            revert with 'NH{q', 18
                        if -arg1 + (Mask(112, 0, ext_call.return_data[0]) * arg1) - (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * arg1) / Mask(112, 0, ext_call.return_data[0]) + -(0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) - 1 != arg1:
                            mem[(4 * ceil32(return_data.size)) + 384] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + 388] = 32
                            mem[(4 * ceil32(return_data.size)) + 420] = 33
                            mem[(4 * ceil32(return_data.size)) + 452] = 'SafeMath: multiplication overflo'
                            mem[(4 * ceil32(return_data.size)) + 484] = 'w'
                            revert with memory
                              from (4 * ceil32(return_data.size)) + 384
                               len (5 * ceil32(return_data.size)) + 132
                        if not -arg1 + (Mask(112, 0, ext_call.return_data[0]) * arg1) - (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * arg1):
                            revert with 'NH{q', 18
                        if 0 / -arg1 + (Mask(112, 0, ext_call.return_data[0]) * arg1) - (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * arg1) > -2:
                            revert with 'NH{q', 17
                        if (0 / -arg1 + (Mask(112, 0, ext_call.return_data[0]) * arg1) - (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * arg1)) + 1 < 0 / -arg1 + (Mask(112, 0, ext_call.return_data[0]) * arg1) - (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * arg1):
                            mem[(4 * ceil32(return_data.size)) + 384] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + 388] = 32
                            mem[(4 * ceil32(return_data.size)) + 420] = 27
                            mem[(4 * ceil32(return_data.size)) + 452] = 'SafeMath: addition overflow'
                            revert with memory
                              from (4 * ceil32(return_data.size)) + 384
                               len (5 * ceil32(return_data.size)) + 100
                        mem[(4 * ceil32(return_data.size)) + 416] = (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) + 1
                        mem[(4 * ceil32(return_data.size)) + 448] = (0 / -arg1 + (Mask(112, 0, ext_call.return_data[0]) * arg1) - (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * arg1)) + 1
                    else:
                        if mem[ceil32(return_data.size) + 242 len 14] and (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) + 1 > -1 / mem[ceil32(return_data.size) + 242 len 14]:
                            revert with 'NH{q', 17
                        if not mem[ceil32(return_data.size) + 242 len 14]:
                            revert with 'NH{q', 18
                        if mem[ceil32(return_data.size) + 242 len 14] + (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * mem[ceil32(return_data.size) + 242 len 14]) / mem[ceil32(return_data.size) + 242 len 14] != (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) + 1:
                            mem[(4 * ceil32(return_data.size)) + 320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + 324] = 32
                            mem[(4 * ceil32(return_data.size)) + 356] = 33
                            mem[(4 * ceil32(return_data.size)) + 388] = 'SafeMath: multiplication overflo'
                            mem[(4 * ceil32(return_data.size)) + 420] = 'w'
                            revert with memory
                              from (4 * ceil32(return_data.size)) + 320
                               len (5 * ceil32(return_data.size)) + 132
                        if not mem[ceil32(return_data.size) + 242 len 14] + (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * mem[ceil32(return_data.size) + 242 len 14]):
                            if (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) + 1 > Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if Mask(112, 0, ext_call.return_data[0]) < (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) + 1:
                                revert with 'NH{q', 17
                            if not Mask(112, 0, ext_call.return_data[0]) + -(0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) - 1:
                                revert with 'NH{q', 18
                            if Mask(112, 0, ext_call.return_data[0]) + -(0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) - 1 and arg1 > -1 / Mask(112, 0, ext_call.return_data[0]) + -(0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) - 1:
                                revert with 'NH{q', 17
                            if not Mask(112, 0, ext_call.return_data[0]) + -(0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) - 1:
                                revert with 'NH{q', 18
                            if -arg1 + (Mask(112, 0, ext_call.return_data[0]) * arg1) - (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * arg1) / Mask(112, 0, ext_call.return_data[0]) + -(0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) - 1 != arg1:
                                mem[(4 * ceil32(return_data.size)) + 384] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + 388] = 32
                                mem[(4 * ceil32(return_data.size)) + 420] = 33
                                mem[(4 * ceil32(return_data.size)) + 452] = 'SafeMath: multiplication overflo'
                                mem[(4 * ceil32(return_data.size)) + 484] = 'w'
                                revert with memory
                                  from (4 * ceil32(return_data.size)) + 384
                                   len (5 * ceil32(return_data.size)) + 132
                            if not -arg1 + (Mask(112, 0, ext_call.return_data[0]) * arg1) - (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * arg1):
                                revert with 'NH{q', 18
                            if 0 / -arg1 + (Mask(112, 0, ext_call.return_data[0]) * arg1) - (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * arg1) > -2:
                                revert with 'NH{q', 17
                            if (0 / -arg1 + (Mask(112, 0, ext_call.return_data[0]) * arg1) - (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * arg1)) + 1 < 0 / -arg1 + (Mask(112, 0, ext_call.return_data[0]) * arg1) - (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * arg1):
                                mem[(4 * ceil32(return_data.size)) + 384] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + 388] = 32
                                mem[(4 * ceil32(return_data.size)) + 420] = 27
                                mem[(4 * ceil32(return_data.size)) + 452] = 'SafeMath: addition overflow'
                                revert with memory
                                  from (4 * ceil32(return_data.size)) + 384
                                   len (5 * ceil32(return_data.size)) + 100
                            mem[(4 * ceil32(return_data.size)) + 416] = (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) + 1
                            mem[(4 * ceil32(return_data.size)) + 448] = (0 / -arg1 + (Mask(112, 0, ext_call.return_data[0]) * arg1) - (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * arg1)) + 1
                        else:
                            if mem[ceil32(return_data.size) + 242 len 14] + (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * mem[ceil32(return_data.size) + 242 len 14]) and 1000 > -1 / mem[ceil32(return_data.size) + 242 len 14] + (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * mem[ceil32(return_data.size) + 242 len 14]):
                                revert with 'NH{q', 17
                            if not mem[ceil32(return_data.size) + 242 len 14] + (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * mem[ceil32(return_data.size) + 242 len 14]):
                                revert with 'NH{q', 18
                            if (1000 * mem[ceil32(return_data.size) + 242 len 14]) + (1000 * 0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * mem[ceil32(return_data.size) + 242 len 14]) / mem[ceil32(return_data.size) + 242 len 14] + (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * mem[ceil32(return_data.size) + 242 len 14]) != 1000:
                                mem[(4 * ceil32(return_data.size)) + 320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + 324] = 32
                                mem[(4 * ceil32(return_data.size)) + 356] = 33
                                mem[(4 * ceil32(return_data.size)) + 388] = 'SafeMath: multiplication overflo'
                                mem[(4 * ceil32(return_data.size)) + 420] = 'w'
                                revert with memory
                                  from (4 * ceil32(return_data.size)) + 320
                                   len (5 * ceil32(return_data.size)) + 132
                            mem[(4 * ceil32(return_data.size)) + 320] = 30
                            mem[(4 * ceil32(return_data.size)) + 352] = 'SafeMath: subtraction overflow'
                            if (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) + 1 > Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if Mask(112, 0, ext_call.return_data[0]) < (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) + 1:
                                revert with 'NH{q', 17
                            if not Mask(112, 0, ext_call.return_data[0]) + -(0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) - 1:
                                revert with 'NH{q', 18
                            if Mask(112, 0, ext_call.return_data[0]) + -(0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) - 1 and arg1 > -1 / Mask(112, 0, ext_call.return_data[0]) + -(0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) - 1:
                                revert with 'NH{q', 17
                            if not Mask(112, 0, ext_call.return_data[0]) + -(0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) - 1:
                                revert with 'NH{q', 18
                            if -arg1 + (Mask(112, 0, ext_call.return_data[0]) * arg1) - (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * arg1) / Mask(112, 0, ext_call.return_data[0]) + -(0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) - 1 != arg1:
                                mem[(4 * ceil32(return_data.size)) + 384] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + 388] = 32
                                mem[(4 * ceil32(return_data.size)) + 420] = 33
                                mem[(4 * ceil32(return_data.size)) + 452] = 'SafeMath: multiplication overflo'
                                mem[(4 * ceil32(return_data.size)) + 484] = 'w'
                                revert with memory
                                  from (4 * ceil32(return_data.size)) + 384
                                   len (5 * ceil32(return_data.size)) + 132
                            if not -arg1 + (Mask(112, 0, ext_call.return_data[0]) * arg1) - (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * arg1):
                                revert with 'NH{q', 18
                            if (1000 * mem[ceil32(return_data.size) + 242 len 14]) + (1000 * 0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * mem[ceil32(return_data.size) + 242 len 14]) / -arg1 + (Mask(112, 0, ext_call.return_data[0]) * arg1) - (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * arg1) > -2:
                                revert with 'NH{q', 17
                            if ((1000 * mem[ceil32(return_data.size) + 242 len 14]) + (1000 * 0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * mem[ceil32(return_data.size) + 242 len 14]) / -arg1 + (Mask(112, 0, ext_call.return_data[0]) * arg1) - (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * arg1)) + 1 < (1000 * mem[ceil32(return_data.size) + 242 len 14]) + (1000 * 0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * mem[ceil32(return_data.size) + 242 len 14]) / -arg1 + (Mask(112, 0, ext_call.return_data[0]) * arg1) - (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * arg1):
                                mem[(4 * ceil32(return_data.size)) + 384] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + 388] = 32
                                mem[(4 * ceil32(return_data.size)) + 420] = 27
                                mem[(4 * ceil32(return_data.size)) + 452] = 'SafeMath: addition overflow'
                                revert with memory
                                  from (4 * ceil32(return_data.size)) + 384
                                   len (5 * ceil32(return_data.size)) + 100
                            mem[(4 * ceil32(return_data.size)) + 416] = (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) + 1
                            mem[(4 * ceil32(return_data.size)) + 448] = ((1000 * mem[ceil32(return_data.size) + 242 len 14]) + (1000 * 0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * mem[ceil32(return_data.size) + 242 len 14]) / -arg1 + (Mask(112, 0, ext_call.return_data[0]) * arg1) - (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * arg1)) + 1
                else:
                    if mem[ceil32(return_data.size) + 242 len 14] <= 0:
                        mem[(4 * ceil32(return_data.size)) + 320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[(4 * ceil32(return_data.size)) + 324] = 32
                        mem[(4 * ceil32(return_data.size)) + 356] = 40
                        mem[(4 * ceil32(return_data.size)) + 388] = 'UniswapV2Library: INSUFFICIENT_L'
                        mem[(4 * ceil32(return_data.size)) + 420] = 'IQUIDITY'
                        revert with memory
                          from (4 * ceil32(return_data.size)) + 320
                           len (5 * ceil32(return_data.size)) + 132
                    if not mem[ceil32(return_data.size) + 242 len 14]:
                        mem[(4 * ceil32(return_data.size)) + 320] = 30
                        mem[(4 * ceil32(return_data.size)) + 352] = 'SafeMath: subtraction overflow'
                        if (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) + 1 > mem[ceil32(return_data.size) + 242 len 14]:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if mem[ceil32(return_data.size) + 242 len 14] < (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) + 1:
                            revert with 'NH{q', 17
                        if not mem[ceil32(return_data.size) + 242 len 14] + -(0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) - 1:
                            revert with 'NH{q', 18
                        if mem[ceil32(return_data.size) + 242 len 14] + -(0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) - 1 and arg1 > -1 / mem[ceil32(return_data.size) + 242 len 14] + -(0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) - 1:
                            revert with 'NH{q', 17
                        if not mem[ceil32(return_data.size) + 242 len 14] + -(0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) - 1:
                            revert with 'NH{q', 18
                        if -arg1 + (mem[ceil32(return_data.size) + 242 len 14] * arg1) - (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * arg1) / mem[ceil32(return_data.size) + 242 len 14] + -(0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) - 1 != arg1:
                            mem[(4 * ceil32(return_data.size)) + 384] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + 388] = 32
                            mem[(4 * ceil32(return_data.size)) + 420] = 33
                            mem[(4 * ceil32(return_data.size)) + 452] = 'SafeMath: multiplication overflo'
                            mem[(4 * ceil32(return_data.size)) + 484] = 'w'
                            revert with memory
                              from (4 * ceil32(return_data.size)) + 384
                               len (5 * ceil32(return_data.size)) + 132
                        if not -arg1 + (mem[ceil32(return_data.size) + 242 len 14] * arg1) - (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * arg1):
                            revert with 'NH{q', 18
                        if 0 / -arg1 + (mem[ceil32(return_data.size) + 242 len 14] * arg1) - (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * arg1) > -2:
                            revert with 'NH{q', 17
                        if (0 / -arg1 + (mem[ceil32(return_data.size) + 242 len 14] * arg1) - (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * arg1)) + 1 < 0 / -arg1 + (mem[ceil32(return_data.size) + 242 len 14] * arg1) - (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * arg1):
                            mem[(4 * ceil32(return_data.size)) + 384] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + 388] = 32
                            mem[(4 * ceil32(return_data.size)) + 420] = 27
                            mem[(4 * ceil32(return_data.size)) + 452] = 'SafeMath: addition overflow'
                            revert with memory
                              from (4 * ceil32(return_data.size)) + 384
                               len (5 * ceil32(return_data.size)) + 100
                        mem[(4 * ceil32(return_data.size)) + 416] = (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) + 1
                        mem[(4 * ceil32(return_data.size)) + 448] = (0 / -arg1 + (mem[ceil32(return_data.size) + 242 len 14] * arg1) - (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * arg1)) + 1
                    else:
                        if mem[ceil32(return_data.size) + 242 len 14] and (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) + 1 > -1 / mem[ceil32(return_data.size) + 242 len 14]:
                            revert with 'NH{q', 17
                        if not mem[ceil32(return_data.size) + 242 len 14]:
                            revert with 'NH{q', 18
                        if mem[ceil32(return_data.size) + 242 len 14] + (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * mem[ceil32(return_data.size) + 242 len 14]) / mem[ceil32(return_data.size) + 242 len 14] != (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) + 1:
                            mem[(4 * ceil32(return_data.size)) + 320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + 324] = 32
                            mem[(4 * ceil32(return_data.size)) + 356] = 33
                            mem[(4 * ceil32(return_data.size)) + 388] = 'SafeMath: multiplication overflo'
                            mem[(4 * ceil32(return_data.size)) + 420] = 'w'
                            revert with memory
                              from (4 * ceil32(return_data.size)) + 320
                               len (5 * ceil32(return_data.size)) + 132
                        if not mem[ceil32(return_data.size) + 242 len 14] + (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * mem[ceil32(return_data.size) + 242 len 14]):
                            mem[(4 * ceil32(return_data.size)) + 320] = 30
                            mem[(4 * ceil32(return_data.size)) + 352] = 'SafeMath: subtraction overflow'
                            if (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) + 1 > mem[ceil32(return_data.size) + 242 len 14]:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if mem[ceil32(return_data.size) + 242 len 14] < (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) + 1:
                                revert with 'NH{q', 17
                            if not mem[ceil32(return_data.size) + 242 len 14] + -(0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) - 1:
                                revert with 'NH{q', 18
                            if mem[ceil32(return_data.size) + 242 len 14] + -(0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) - 1 and arg1 > -1 / mem[ceil32(return_data.size) + 242 len 14] + -(0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) - 1:
                                revert with 'NH{q', 17
                            if not mem[ceil32(return_data.size) + 242 len 14] + -(0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) - 1:
                                revert with 'NH{q', 18
                            if -arg1 + (mem[ceil32(return_data.size) + 242 len 14] * arg1) - (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * arg1) / mem[ceil32(return_data.size) + 242 len 14] + -(0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) - 1 != arg1:
                                mem[(4 * ceil32(return_data.size)) + 384] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + 388] = 32
                                mem[(4 * ceil32(return_data.size)) + 420] = 33
                                mem[(4 * ceil32(return_data.size)) + 452] = 'SafeMath: multiplication overflo'
                                mem[(4 * ceil32(return_data.size)) + 484] = 'w'
                                revert with memory
                                  from (4 * ceil32(return_data.size)) + 384
                                   len (5 * ceil32(return_data.size)) + 132
                            if not -arg1 + (mem[ceil32(return_data.size) + 242 len 14] * arg1) - (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * arg1):
                                revert with 'NH{q', 18
                            if 0 / -arg1 + (mem[ceil32(return_data.size) + 242 len 14] * arg1) - (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * arg1) > -2:
                                revert with 'NH{q', 17
                            if (0 / -arg1 + (mem[ceil32(return_data.size) + 242 len 14] * arg1) - (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * arg1)) + 1 < 0 / -arg1 + (mem[ceil32(return_data.size) + 242 len 14] * arg1) - (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * arg1):
                                mem[(4 * ceil32(return_data.size)) + 384] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + 388] = 32
                                mem[(4 * ceil32(return_data.size)) + 420] = 27
                                mem[(4 * ceil32(return_data.size)) + 452] = 'SafeMath: addition overflow'
                                revert with memory
                                  from (4 * ceil32(return_data.size)) + 384
                                   len (5 * ceil32(return_data.size)) + 100
                            mem[(4 * ceil32(return_data.size)) + 416] = (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) + 1
                            mem[(4 * ceil32(return_data.size)) + 448] = (0 / -arg1 + (mem[ceil32(return_data.size) + 242 len 14] * arg1) - (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * arg1)) + 1
                        else:
                            if mem[ceil32(return_data.size) + 242 len 14] + (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * mem[ceil32(return_data.size) + 242 len 14]) and 1000 > -1 / mem[ceil32(return_data.size) + 242 len 14] + (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * mem[ceil32(return_data.size) + 242 len 14]):
                                revert with 'NH{q', 17
                            if not mem[ceil32(return_data.size) + 242 len 14] + (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * mem[ceil32(return_data.size) + 242 len 14]):
                                revert with 'NH{q', 18
                            if (1000 * mem[ceil32(return_data.size) + 242 len 14]) + (1000 * 0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * mem[ceil32(return_data.size) + 242 len 14]) / mem[ceil32(return_data.size) + 242 len 14] + (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * mem[ceil32(return_data.size) + 242 len 14]) != 1000:
                                mem[(4 * ceil32(return_data.size)) + 320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + 324] = 32
                                mem[(4 * ceil32(return_data.size)) + 356] = 33
                                mem[(4 * ceil32(return_data.size)) + 388] = 'SafeMath: multiplication overflo'
                                mem[(4 * ceil32(return_data.size)) + 420] = 'w'
                                revert with memory
                                  from (4 * ceil32(return_data.size)) + 320
                                   len (5 * ceil32(return_data.size)) + 132
                            mem[(4 * ceil32(return_data.size)) + 320] = 30
                            mem[(4 * ceil32(return_data.size)) + 352] = 'SafeMath: subtraction overflow'
                            if (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) + 1 > mem[ceil32(return_data.size) + 242 len 14]:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if mem[ceil32(return_data.size) + 242 len 14] < (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) + 1:
                                revert with 'NH{q', 17
                            if not mem[ceil32(return_data.size) + 242 len 14] + -(0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) - 1:
                                revert with 'NH{q', 18
                            if mem[ceil32(return_data.size) + 242 len 14] + -(0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) - 1 and arg1 > -1 / mem[ceil32(return_data.size) + 242 len 14] + -(0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) - 1:
                                revert with 'NH{q', 17
                            if not mem[ceil32(return_data.size) + 242 len 14] + -(0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) - 1:
                                revert with 'NH{q', 18
                            if -arg1 + (mem[ceil32(return_data.size) + 242 len 14] * arg1) - (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * arg1) / mem[ceil32(return_data.size) + 242 len 14] + -(0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) - 1 != arg1:
                                mem[(4 * ceil32(return_data.size)) + 384] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + 388] = 32
                                mem[(4 * ceil32(return_data.size)) + 420] = 33
                                mem[(4 * ceil32(return_data.size)) + 452] = 'SafeMath: multiplication overflo'
                                mem[(4 * ceil32(return_data.size)) + 484] = 'w'
                                revert with memory
                                  from (4 * ceil32(return_data.size)) + 384
                                   len (5 * ceil32(return_data.size)) + 132
                            if not -arg1 + (mem[ceil32(return_data.size) + 242 len 14] * arg1) - (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * arg1):
                                revert with 'NH{q', 18
                            if (1000 * mem[ceil32(return_data.size) + 242 len 14]) + (1000 * 0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * mem[ceil32(return_data.size) + 242 len 14]) / -arg1 + (mem[ceil32(return_data.size) + 242 len 14] * arg1) - (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * arg1) > -2:
                                revert with 'NH{q', 17
                            if ((1000 * mem[ceil32(return_data.size) + 242 len 14]) + (1000 * 0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * mem[ceil32(return_data.size) + 242 len 14]) / -arg1 + (mem[ceil32(return_data.size) + 242 len 14] * arg1) - (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * arg1)) + 1 < (1000 * mem[ceil32(return_data.size) + 242 len 14]) + (1000 * 0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * mem[ceil32(return_data.size) + 242 len 14]) / -arg1 + (mem[ceil32(return_data.size) + 242 len 14] * arg1) - (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * arg1):
                                mem[(4 * ceil32(return_data.size)) + 384] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + 388] = 32
                                mem[(4 * ceil32(return_data.size)) + 420] = 27
                                mem[(4 * ceil32(return_data.size)) + 452] = 'SafeMath: addition overflow'
                                revert with memory
                                  from (4 * ceil32(return_data.size)) + 384
                                   len (5 * ceil32(return_data.size)) + 100
                            mem[(4 * ceil32(return_data.size)) + 416] = (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) + 1
                            mem[(4 * ceil32(return_data.size)) + 448] = ((1000 * mem[ceil32(return_data.size) + 242 len 14]) + (1000 * 0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * mem[ceil32(return_data.size) + 242 len 14]) / -arg1 + (mem[ceil32(return_data.size) + 242 len 14] * arg1) - (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * arg1)) + 1
            else:
                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                    mem[(4 * ceil32(return_data.size)) + 320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 324] = 32
                    mem[(4 * ceil32(return_data.size)) + 356] = 40
                    mem[(4 * ceil32(return_data.size)) + 388] = 'UniswapV2Library: INSUFFICIENT_L'
                    mem[(4 * ceil32(return_data.size)) + 420] = 'IQUIDITY'
                    revert with memory
                      from (4 * ceil32(return_data.size)) + 320
                       len (5 * ceil32(return_data.size)) + 132
                if arg5:
                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                        mem[(4 * ceil32(return_data.size)) + 320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[(4 * ceil32(return_data.size)) + 324] = 32
                        mem[(4 * ceil32(return_data.size)) + 356] = 40
                        mem[(4 * ceil32(return_data.size)) + 388] = 'UniswapV2Library: INSUFFICIENT_L'
                        mem[(4 * ceil32(return_data.size)) + 420] = 'IQUIDITY'
                        revert with memory
                          from (4 * ceil32(return_data.size)) + 320
                           len (5 * ceil32(return_data.size)) + 132
                    if not Mask(112, 0, ext_call.return_data[0]):
                        if (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) + 1 > Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if Mask(112, 0, ext_call.return_data[0]) < (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) + 1:
                            revert with 'NH{q', 17
                        if not Mask(112, 0, ext_call.return_data[0]) + -(0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) - 1:
                            revert with 'NH{q', 18
                        if Mask(112, 0, ext_call.return_data[0]) + -(0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) - 1 and arg1 > -1 / Mask(112, 0, ext_call.return_data[0]) + -(0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) - 1:
                            revert with 'NH{q', 17
                        if not Mask(112, 0, ext_call.return_data[0]) + -(0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) - 1:
                            revert with 'NH{q', 18
                        if -arg1 + (Mask(112, 0, ext_call.return_data[0]) * arg1) - (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * arg1) / Mask(112, 0, ext_call.return_data[0]) + -(0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) - 1 != arg1:
                            mem[(4 * ceil32(return_data.size)) + 384] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + 388] = 32
                            mem[(4 * ceil32(return_data.size)) + 420] = 33
                            mem[(4 * ceil32(return_data.size)) + 452] = 'SafeMath: multiplication overflo'
                            mem[(4 * ceil32(return_data.size)) + 484] = 'w'
                            revert with memory
                              from (4 * ceil32(return_data.size)) + 384
                               len (5 * ceil32(return_data.size)) + 132
                        if not -arg1 + (Mask(112, 0, ext_call.return_data[0]) * arg1) - (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * arg1):
                            revert with 'NH{q', 18
                        if 0 / -arg1 + (Mask(112, 0, ext_call.return_data[0]) * arg1) - (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * arg1) > -2:
                            revert with 'NH{q', 17
                        if (0 / -arg1 + (Mask(112, 0, ext_call.return_data[0]) * arg1) - (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * arg1)) + 1 < 0 / -arg1 + (Mask(112, 0, ext_call.return_data[0]) * arg1) - (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * arg1):
                            mem[(4 * ceil32(return_data.size)) + 384] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + 388] = 32
                            mem[(4 * ceil32(return_data.size)) + 420] = 27
                            mem[(4 * ceil32(return_data.size)) + 452] = 'SafeMath: addition overflow'
                            revert with memory
                              from (4 * ceil32(return_data.size)) + 384
                               len (5 * ceil32(return_data.size)) + 100
                        mem[(4 * ceil32(return_data.size)) + 416] = (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) + 1
                        mem[(4 * ceil32(return_data.size)) + 448] = (0 / -arg1 + (Mask(112, 0, ext_call.return_data[0]) * arg1) - (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * arg1)) + 1
                    else:
                        if Mask(112, 0, ext_call.return_data[0]) and (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) + 1 > -1 / Mask(112, 0, ext_call.return_data[0]):
                            revert with 'NH{q', 17
                        if not Mask(112, 0, ext_call.return_data[0]):
                            revert with 'NH{q', 18
                        if Mask(112, 0, ext_call.return_data[0]) + (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[0]) != (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) + 1:
                            mem[(4 * ceil32(return_data.size)) + 320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + 324] = 32
                            mem[(4 * ceil32(return_data.size)) + 356] = 33
                            mem[(4 * ceil32(return_data.size)) + 388] = 'SafeMath: multiplication overflo'
                            mem[(4 * ceil32(return_data.size)) + 420] = 'w'
                            revert with memory
                              from (4 * ceil32(return_data.size)) + 320
                               len (5 * ceil32(return_data.size)) + 132
                        if not Mask(112, 0, ext_call.return_data[0]) + (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * Mask(112, 0, ext_call.return_data[0])):
                            if (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) + 1 > Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if Mask(112, 0, ext_call.return_data[0]) < (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) + 1:
                                revert with 'NH{q', 17
                            if not Mask(112, 0, ext_call.return_data[0]) + -(0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) - 1:
                                revert with 'NH{q', 18
                            if Mask(112, 0, ext_call.return_data[0]) + -(0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) - 1 and arg1 > -1 / Mask(112, 0, ext_call.return_data[0]) + -(0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) - 1:
                                revert with 'NH{q', 17
                            if not Mask(112, 0, ext_call.return_data[0]) + -(0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) - 1:
                                revert with 'NH{q', 18
                            if -arg1 + (Mask(112, 0, ext_call.return_data[0]) * arg1) - (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * arg1) / Mask(112, 0, ext_call.return_data[0]) + -(0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) - 1 != arg1:
                                mem[(4 * ceil32(return_data.size)) + 384] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + 388] = 32
                                mem[(4 * ceil32(return_data.size)) + 420] = 33
                                mem[(4 * ceil32(return_data.size)) + 452] = 'SafeMath: multiplication overflo'
                                mem[(4 * ceil32(return_data.size)) + 484] = 'w'
                                revert with memory
                                  from (4 * ceil32(return_data.size)) + 384
                                   len (5 * ceil32(return_data.size)) + 132
                            if not -arg1 + (Mask(112, 0, ext_call.return_data[0]) * arg1) - (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * arg1):
                                revert with 'NH{q', 18
                            if 0 / -arg1 + (Mask(112, 0, ext_call.return_data[0]) * arg1) - (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * arg1) > -2:
                                revert with 'NH{q', 17
                            if (0 / -arg1 + (Mask(112, 0, ext_call.return_data[0]) * arg1) - (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * arg1)) + 1 < 0 / -arg1 + (Mask(112, 0, ext_call.return_data[0]) * arg1) - (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * arg1):
                                mem[(4 * ceil32(return_data.size)) + 384] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + 388] = 32
                                mem[(4 * ceil32(return_data.size)) + 420] = 27
                                mem[(4 * ceil32(return_data.size)) + 452] = 'SafeMath: addition overflow'
                                revert with memory
                                  from (4 * ceil32(return_data.size)) + 384
                                   len (5 * ceil32(return_data.size)) + 100
                            mem[(4 * ceil32(return_data.size)) + 416] = (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) + 1
                            mem[(4 * ceil32(return_data.size)) + 448] = (0 / -arg1 + (Mask(112, 0, ext_call.return_data[0]) * arg1) - (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * arg1)) + 1
                        else:
                            if Mask(112, 0, ext_call.return_data[0]) + (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * Mask(112, 0, ext_call.return_data[0])) and 1000 > -1 / Mask(112, 0, ext_call.return_data[0]) + (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * Mask(112, 0, ext_call.return_data[0])):
                                revert with 'NH{q', 17
                            if not Mask(112, 0, ext_call.return_data[0]) + (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * Mask(112, 0, ext_call.return_data[0])):
                                revert with 'NH{q', 18
                            if (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * 0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[0]) + (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * Mask(112, 0, ext_call.return_data[0])) != 1000:
                                mem[(4 * ceil32(return_data.size)) + 320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + 324] = 32
                                mem[(4 * ceil32(return_data.size)) + 356] = 33
                                mem[(4 * ceil32(return_data.size)) + 388] = 'SafeMath: multiplication overflo'
                                mem[(4 * ceil32(return_data.size)) + 420] = 'w'
                                revert with memory
                                  from (4 * ceil32(return_data.size)) + 320
                                   len (5 * ceil32(return_data.size)) + 132
                            if (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) + 1 > Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if Mask(112, 0, ext_call.return_data[0]) < (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) + 1:
                                revert with 'NH{q', 17
                            if not Mask(112, 0, ext_call.return_data[0]) + -(0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) - 1:
                                revert with 'NH{q', 18
                            if Mask(112, 0, ext_call.return_data[0]) + -(0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) - 1 and arg1 > -1 / Mask(112, 0, ext_call.return_data[0]) + -(0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) - 1:
                                revert with 'NH{q', 17
                            if not Mask(112, 0, ext_call.return_data[0]) + -(0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) - 1:
                                revert with 'NH{q', 18
                            if -arg1 + (Mask(112, 0, ext_call.return_data[0]) * arg1) - (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * arg1) / Mask(112, 0, ext_call.return_data[0]) + -(0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) - 1 != arg1:
                                mem[(4 * ceil32(return_data.size)) + 384] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + 388] = 32
                                mem[(4 * ceil32(return_data.size)) + 420] = 33
                                mem[(4 * ceil32(return_data.size)) + 452] = 'SafeMath: multiplication overflo'
                                mem[(4 * ceil32(return_data.size)) + 484] = 'w'
                                revert with memory
                                  from (4 * ceil32(return_data.size)) + 384
                                   len (5 * ceil32(return_data.size)) + 132
                            if not -arg1 + (Mask(112, 0, ext_call.return_data[0]) * arg1) - (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * arg1):
                                revert with 'NH{q', 18
                            if (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * 0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * Mask(112, 0, ext_call.return_data[0])) / -arg1 + (Mask(112, 0, ext_call.return_data[0]) * arg1) - (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * arg1) > -2:
                                revert with 'NH{q', 17
                            if ((1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * 0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * Mask(112, 0, ext_call.return_data[0])) / -arg1 + (Mask(112, 0, ext_call.return_data[0]) * arg1) - (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * arg1)) + 1 < (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * 0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * Mask(112, 0, ext_call.return_data[0])) / -arg1 + (Mask(112, 0, ext_call.return_data[0]) * arg1) - (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * arg1):
                                mem[(4 * ceil32(return_data.size)) + 384] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + 388] = 32
                                mem[(4 * ceil32(return_data.size)) + 420] = 27
                                mem[(4 * ceil32(return_data.size)) + 452] = 'SafeMath: addition overflow'
                                revert with memory
                                  from (4 * ceil32(return_data.size)) + 384
                                   len (5 * ceil32(return_data.size)) + 100
                            mem[(4 * ceil32(return_data.size)) + 416] = (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) + 1
                            mem[(4 * ceil32(return_data.size)) + 448] = ((1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * 0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * Mask(112, 0, ext_call.return_data[0])) / -arg1 + (Mask(112, 0, ext_call.return_data[0]) * arg1) - (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * arg1)) + 1
                else:
                    if mem[ceil32(return_data.size) + 242 len 14] <= 0:
                        mem[(4 * ceil32(return_data.size)) + 320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[(4 * ceil32(return_data.size)) + 324] = 32
                        mem[(4 * ceil32(return_data.size)) + 356] = 40
                        mem[(4 * ceil32(return_data.size)) + 388] = 'UniswapV2Library: INSUFFICIENT_L'
                        mem[(4 * ceil32(return_data.size)) + 420] = 'IQUIDITY'
                        revert with memory
                          from (4 * ceil32(return_data.size)) + 320
                           len (5 * ceil32(return_data.size)) + 132
                    if not Mask(112, 0, ext_call.return_data[0]):
                        mem[(4 * ceil32(return_data.size)) + 320] = 30
                        mem[(4 * ceil32(return_data.size)) + 352] = 'SafeMath: subtraction overflow'
                        if (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) + 1 > mem[ceil32(return_data.size) + 242 len 14]:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if mem[ceil32(return_data.size) + 242 len 14] < (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) + 1:
                            revert with 'NH{q', 17
                        if not mem[ceil32(return_data.size) + 242 len 14] + -(0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) - 1:
                            revert with 'NH{q', 18
                        if mem[ceil32(return_data.size) + 242 len 14] + -(0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) - 1 and arg1 > -1 / mem[ceil32(return_data.size) + 242 len 14] + -(0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) - 1:
                            revert with 'NH{q', 17
                        if not mem[ceil32(return_data.size) + 242 len 14] + -(0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) - 1:
                            revert with 'NH{q', 18
                        if -arg1 + (mem[ceil32(return_data.size) + 242 len 14] * arg1) - (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * arg1) / mem[ceil32(return_data.size) + 242 len 14] + -(0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) - 1 != arg1:
                            mem[(4 * ceil32(return_data.size)) + 384] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + 388] = 32
                            mem[(4 * ceil32(return_data.size)) + 420] = 33
                            mem[(4 * ceil32(return_data.size)) + 452] = 'SafeMath: multiplication overflo'
                            mem[(4 * ceil32(return_data.size)) + 484] = 'w'
                            revert with memory
                              from (4 * ceil32(return_data.size)) + 384
                               len (5 * ceil32(return_data.size)) + 132
                        if not -arg1 + (mem[ceil32(return_data.size) + 242 len 14] * arg1) - (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * arg1):
                            revert with 'NH{q', 18
                        if 0 / -arg1 + (mem[ceil32(return_data.size) + 242 len 14] * arg1) - (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * arg1) > -2:
                            revert with 'NH{q', 17
                        if (0 / -arg1 + (mem[ceil32(return_data.size) + 242 len 14] * arg1) - (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * arg1)) + 1 < 0 / -arg1 + (mem[ceil32(return_data.size) + 242 len 14] * arg1) - (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * arg1):
                            mem[(4 * ceil32(return_data.size)) + 384] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + 388] = 32
                            mem[(4 * ceil32(return_data.size)) + 420] = 27
                            mem[(4 * ceil32(return_data.size)) + 452] = 'SafeMath: addition overflow'
                            revert with memory
                              from (4 * ceil32(return_data.size)) + 384
                               len (5 * ceil32(return_data.size)) + 100
                        mem[(4 * ceil32(return_data.size)) + 416] = (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) + 1
                        mem[(4 * ceil32(return_data.size)) + 448] = (0 / -arg1 + (mem[ceil32(return_data.size) + 242 len 14] * arg1) - (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * arg1)) + 1
                    else:
                        if Mask(112, 0, ext_call.return_data[0]) and (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) + 1 > -1 / Mask(112, 0, ext_call.return_data[0]):
                            revert with 'NH{q', 17
                        if not Mask(112, 0, ext_call.return_data[0]):
                            revert with 'NH{q', 18
                        if Mask(112, 0, ext_call.return_data[0]) + (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[0]) != (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) + 1:
                            mem[(4 * ceil32(return_data.size)) + 320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + 324] = 32
                            mem[(4 * ceil32(return_data.size)) + 356] = 33
                            mem[(4 * ceil32(return_data.size)) + 388] = 'SafeMath: multiplication overflo'
                            mem[(4 * ceil32(return_data.size)) + 420] = 'w'
                            revert with memory
                              from (4 * ceil32(return_data.size)) + 320
                               len (5 * ceil32(return_data.size)) + 132
                        if not Mask(112, 0, ext_call.return_data[0]) + (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * Mask(112, 0, ext_call.return_data[0])):
                            mem[(4 * ceil32(return_data.size)) + 320] = 30
                            mem[(4 * ceil32(return_data.size)) + 352] = 'SafeMath: subtraction overflow'
                            if (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) + 1 > mem[ceil32(return_data.size) + 242 len 14]:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if mem[ceil32(return_data.size) + 242 len 14] < (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) + 1:
                                revert with 'NH{q', 17
                            if not mem[ceil32(return_data.size) + 242 len 14] + -(0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) - 1:
                                revert with 'NH{q', 18
                            if mem[ceil32(return_data.size) + 242 len 14] + -(0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) - 1 and arg1 > -1 / mem[ceil32(return_data.size) + 242 len 14] + -(0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) - 1:
                                revert with 'NH{q', 17
                            if not mem[ceil32(return_data.size) + 242 len 14] + -(0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) - 1:
                                revert with 'NH{q', 18
                            if -arg1 + (mem[ceil32(return_data.size) + 242 len 14] * arg1) - (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * arg1) / mem[ceil32(return_data.size) + 242 len 14] + -(0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) - 1 != arg1:
                                mem[(4 * ceil32(return_data.size)) + 384] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + 388] = 32
                                mem[(4 * ceil32(return_data.size)) + 420] = 33
                                mem[(4 * ceil32(return_data.size)) + 452] = 'SafeMath: multiplication overflo'
                                mem[(4 * ceil32(return_data.size)) + 484] = 'w'
                                revert with memory
                                  from (4 * ceil32(return_data.size)) + 384
                                   len (5 * ceil32(return_data.size)) + 132
                            if not -arg1 + (mem[ceil32(return_data.size) + 242 len 14] * arg1) - (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * arg1):
                                revert with 'NH{q', 18
                            if 0 / -arg1 + (mem[ceil32(return_data.size) + 242 len 14] * arg1) - (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * arg1) > -2:
                                revert with 'NH{q', 17
                            if (0 / -arg1 + (mem[ceil32(return_data.size) + 242 len 14] * arg1) - (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * arg1)) + 1 < 0 / -arg1 + (mem[ceil32(return_data.size) + 242 len 14] * arg1) - (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * arg1):
                                mem[(4 * ceil32(return_data.size)) + 384] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + 388] = 32
                                mem[(4 * ceil32(return_data.size)) + 420] = 27
                                mem[(4 * ceil32(return_data.size)) + 452] = 'SafeMath: addition overflow'
                                revert with memory
                                  from (4 * ceil32(return_data.size)) + 384
                                   len (5 * ceil32(return_data.size)) + 100
                            mem[(4 * ceil32(return_data.size)) + 416] = (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) + 1
                            mem[(4 * ceil32(return_data.size)) + 448] = (0 / -arg1 + (mem[ceil32(return_data.size) + 242 len 14] * arg1) - (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * arg1)) + 1
                        else:
                            if Mask(112, 0, ext_call.return_data[0]) + (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * Mask(112, 0, ext_call.return_data[0])) and 1000 > -1 / Mask(112, 0, ext_call.return_data[0]) + (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * Mask(112, 0, ext_call.return_data[0])):
                                revert with 'NH{q', 17
                            if not Mask(112, 0, ext_call.return_data[0]) + (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * Mask(112, 0, ext_call.return_data[0])):
                                revert with 'NH{q', 18
                            if (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * 0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[0]) + (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * Mask(112, 0, ext_call.return_data[0])) != 1000:
                                mem[(4 * ceil32(return_data.size)) + 320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + 324] = 32
                                mem[(4 * ceil32(return_data.size)) + 356] = 33
                                mem[(4 * ceil32(return_data.size)) + 388] = 'SafeMath: multiplication overflo'
                                mem[(4 * ceil32(return_data.size)) + 420] = 'w'
                                revert with memory
                                  from (4 * ceil32(return_data.size)) + 320
                                   len (5 * ceil32(return_data.size)) + 132
                            mem[(4 * ceil32(return_data.size)) + 320] = 30
                            mem[(4 * ceil32(return_data.size)) + 352] = 'SafeMath: subtraction overflow'
                            if (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) + 1 > mem[ceil32(return_data.size) + 242 len 14]:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if mem[ceil32(return_data.size) + 242 len 14] < (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) + 1:
                                revert with 'NH{q', 17
                            if not mem[ceil32(return_data.size) + 242 len 14] + -(0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) - 1:
                                revert with 'NH{q', 18
                            if mem[ceil32(return_data.size) + 242 len 14] + -(0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) - 1 and arg1 > -1 / mem[ceil32(return_data.size) + 242 len 14] + -(0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) - 1:
                                revert with 'NH{q', 17
                            if not mem[ceil32(return_data.size) + 242 len 14] + -(0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) - 1:
                                revert with 'NH{q', 18
                            if -arg1 + (mem[ceil32(return_data.size) + 242 len 14] * arg1) - (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * arg1) / mem[ceil32(return_data.size) + 242 len 14] + -(0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) - 1 != arg1:
                                mem[(4 * ceil32(return_data.size)) + 384] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + 388] = 32
                                mem[(4 * ceil32(return_data.size)) + 420] = 33
                                mem[(4 * ceil32(return_data.size)) + 452] = 'SafeMath: multiplication overflo'
                                mem[(4 * ceil32(return_data.size)) + 484] = 'w'
                                revert with memory
                                  from (4 * ceil32(return_data.size)) + 384
                                   len (5 * ceil32(return_data.size)) + 132
                            if not -arg1 + (mem[ceil32(return_data.size) + 242 len 14] * arg1) - (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * arg1):
                                revert with 'NH{q', 18
                            if (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * 0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * Mask(112, 0, ext_call.return_data[0])) / -arg1 + (mem[ceil32(return_data.size) + 242 len 14] * arg1) - (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * arg1) > -2:
                                revert with 'NH{q', 17
                            if ((1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * 0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * Mask(112, 0, ext_call.return_data[0])) / -arg1 + (mem[ceil32(return_data.size) + 242 len 14] * arg1) - (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * arg1)) + 1 < (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * 0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * Mask(112, 0, ext_call.return_data[0])) / -arg1 + (mem[ceil32(return_data.size) + 242 len 14] * arg1) - (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * arg1):
                                mem[(4 * ceil32(return_data.size)) + 384] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + 388] = 32
                                mem[(4 * ceil32(return_data.size)) + 420] = 27
                                mem[(4 * ceil32(return_data.size)) + 452] = 'SafeMath: addition overflow'
                                revert with memory
                                  from (4 * ceil32(return_data.size)) + 384
                                   len (5 * ceil32(return_data.size)) + 100
                            mem[(4 * ceil32(return_data.size)) + 416] = (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) + 1
                            mem[(4 * ceil32(return_data.size)) + 448] = ((1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * 0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * Mask(112, 0, ext_call.return_data[0])) / -arg1 + (mem[ceil32(return_data.size) + 242 len 14] * arg1) - (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * arg1)) + 1
        else:
            if Mask(112, 0, ext_call.return_data[0]) and arg2 > -1 / Mask(112, 0, ext_call.return_data[0]):
                revert with 'NH{q', 17
            if not Mask(112, 0, ext_call.return_data[0]):
                revert with 'NH{q', 18
            if Mask(112, 0, ext_call.return_data[0]) * arg2 / Mask(112, 0, ext_call.return_data[0]) != arg2:
                mem[(4 * ceil32(return_data.size)) + 256] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + 260] = 32
                mem[(4 * ceil32(return_data.size)) + 292] = 33
                mem[(4 * ceil32(return_data.size)) + 324] = 'SafeMath: multiplication overflo'
                mem[(4 * ceil32(return_data.size)) + 356] = 'w'
                revert with memory
                  from (4 * ceil32(return_data.size)) + 256
                   len (5 * ceil32(return_data.size)) + 132
            if not Mask(112, 0, ext_call.return_data[0]) * arg2:
                mem[(4 * ceil32(return_data.size)) + 256] = 30
                mem[(4 * ceil32(return_data.size)) + 288] = 'SafeMath: subtraction overflow'
                if arg2 > Mask(112, 0, ext_call.return_data[50 len 14]):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if Mask(112, 0, ext_call.return_data[50 len 14]) < arg2:
                    revert with 'NH{q', 17
                if not Mask(112, 0, ext_call.return_data[50 len 14]) - arg2:
                    revert with 'NH{q', 18
                if Mask(112, 0, ext_call.return_data[50 len 14]) - arg2 and arg1 > -1 / Mask(112, 0, ext_call.return_data[50 len 14]) - arg2:
                    revert with 'NH{q', 17
                if not Mask(112, 0, ext_call.return_data[50 len 14]) - arg2:
                    revert with 'NH{q', 18
                if (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) / Mask(112, 0, ext_call.return_data[50 len 14]) - arg2 != arg1:
                    mem[(4 * ceil32(return_data.size)) + 320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 324] = 32
                    mem[(4 * ceil32(return_data.size)) + 356] = 33
                    mem[(4 * ceil32(return_data.size)) + 388] = 'SafeMath: multiplication overflo'
                    mem[(4 * ceil32(return_data.size)) + 420] = 'w'
                    revert with memory
                      from (4 * ceil32(return_data.size)) + 320
                       len (5 * ceil32(return_data.size)) + 132
                if not (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1):
                    revert with 'NH{q', 18
                if 0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) > -2:
                    revert with 'NH{q', 17
                if (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) + 1 < 0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1):
                    mem[(4 * ceil32(return_data.size)) + 320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 324] = 32
                    mem[(4 * ceil32(return_data.size)) + 356] = 27
                    mem[(4 * ceil32(return_data.size)) + 388] = 'SafeMath: addition overflow'
                    revert with memory
                      from (4 * ceil32(return_data.size)) + 320
                       len (5 * ceil32(return_data.size)) + 100
                if (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) + 1 <= 0:
                    mem[(4 * ceil32(return_data.size)) + 320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 324] = 32
                    mem[(4 * ceil32(return_data.size)) + 356] = 44
                    mem[(4 * ceil32(return_data.size)) + 388] = 'UniswapV2Library: INSUFFICIENT_O'
                    mem[(4 * ceil32(return_data.size)) + 420] = 'UTPUT_AMOUNT'
                    revert with memory
                      from (4 * ceil32(return_data.size)) + 320
                       len (5 * ceil32(return_data.size)) + 132
                if arg5:
                    if mem[ceil32(return_data.size) + 242 len 14] <= 0:
                        mem[(4 * ceil32(return_data.size)) + 320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[(4 * ceil32(return_data.size)) + 324] = 32
                        mem[(4 * ceil32(return_data.size)) + 356] = 40
                        mem[(4 * ceil32(return_data.size)) + 388] = 'UniswapV2Library: INSUFFICIENT_L'
                        mem[(4 * ceil32(return_data.size)) + 420] = 'IQUIDITY'
                        revert with memory
                          from (4 * ceil32(return_data.size)) + 320
                           len (5 * ceil32(return_data.size)) + 132
                    if arg5:
                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                            mem[(4 * ceil32(return_data.size)) + 320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + 324] = 32
                            mem[(4 * ceil32(return_data.size)) + 356] = 40
                            mem[(4 * ceil32(return_data.size)) + 388] = 'UniswapV2Library: INSUFFICIENT_L'
                            mem[(4 * ceil32(return_data.size)) + 420] = 'IQUIDITY'
                            revert with memory
                              from (4 * ceil32(return_data.size)) + 320
                               len (5 * ceil32(return_data.size)) + 132
                        if not mem[ceil32(return_data.size) + 242 len 14]:
                            if (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) + 1 > Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if Mask(112, 0, ext_call.return_data[0]) < (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) + 1:
                                revert with 'NH{q', 17
                            if not Mask(112, 0, ext_call.return_data[0]) + -(0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) - 1:
                                revert with 'NH{q', 18
                            if Mask(112, 0, ext_call.return_data[0]) + -(0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) - 1 and arg1 > -1 / Mask(112, 0, ext_call.return_data[0]) + -(0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) - 1:
                                revert with 'NH{q', 17
                            if not Mask(112, 0, ext_call.return_data[0]) + -(0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) - 1:
                                revert with 'NH{q', 18
                            if -arg1 + (Mask(112, 0, ext_call.return_data[0]) * arg1) - (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * arg1) / Mask(112, 0, ext_call.return_data[0]) + -(0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) - 1 != arg1:
                                mem[(4 * ceil32(return_data.size)) + 384] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + 388] = 32
                                mem[(4 * ceil32(return_data.size)) + 420] = 33
                                mem[(4 * ceil32(return_data.size)) + 452] = 'SafeMath: multiplication overflo'
                                mem[(4 * ceil32(return_data.size)) + 484] = 'w'
                                revert with memory
                                  from (4 * ceil32(return_data.size)) + 384
                                   len (5 * ceil32(return_data.size)) + 132
                            if not -arg1 + (Mask(112, 0, ext_call.return_data[0]) * arg1) - (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * arg1):
                                revert with 'NH{q', 18
                            if 0 / -arg1 + (Mask(112, 0, ext_call.return_data[0]) * arg1) - (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * arg1) > -2:
                                revert with 'NH{q', 17
                            if (0 / -arg1 + (Mask(112, 0, ext_call.return_data[0]) * arg1) - (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * arg1)) + 1 < 0 / -arg1 + (Mask(112, 0, ext_call.return_data[0]) * arg1) - (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * arg1):
                                mem[(4 * ceil32(return_data.size)) + 384] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + 388] = 32
                                mem[(4 * ceil32(return_data.size)) + 420] = 27
                                mem[(4 * ceil32(return_data.size)) + 452] = 'SafeMath: addition overflow'
                                revert with memory
                                  from (4 * ceil32(return_data.size)) + 384
                                   len (5 * ceil32(return_data.size)) + 100
                            mem[(4 * ceil32(return_data.size)) + 416] = (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) + 1
                            mem[(4 * ceil32(return_data.size)) + 448] = (0 / -arg1 + (Mask(112, 0, ext_call.return_data[0]) * arg1) - (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * arg1)) + 1
                        else:
                            if mem[ceil32(return_data.size) + 242 len 14] and (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) + 1 > -1 / mem[ceil32(return_data.size) + 242 len 14]:
                                revert with 'NH{q', 17
                            if not mem[ceil32(return_data.size) + 242 len 14]:
                                revert with 'NH{q', 18
                            if mem[ceil32(return_data.size) + 242 len 14] + (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * mem[ceil32(return_data.size) + 242 len 14]) / mem[ceil32(return_data.size) + 242 len 14] != (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) + 1:
                                mem[(4 * ceil32(return_data.size)) + 320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + 324] = 32
                                mem[(4 * ceil32(return_data.size)) + 356] = 33
                                mem[(4 * ceil32(return_data.size)) + 388] = 'SafeMath: multiplication overflo'
                                mem[(4 * ceil32(return_data.size)) + 420] = 'w'
                                revert with memory
                                  from (4 * ceil32(return_data.size)) + 320
                                   len (5 * ceil32(return_data.size)) + 132
                            if not mem[ceil32(return_data.size) + 242 len 14] + (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * mem[ceil32(return_data.size) + 242 len 14]):
                                if (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) + 1 > Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if Mask(112, 0, ext_call.return_data[0]) < (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) + 1:
                                    revert with 'NH{q', 17
                                if not Mask(112, 0, ext_call.return_data[0]) + -(0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) - 1:
                                    revert with 'NH{q', 18
                                if Mask(112, 0, ext_call.return_data[0]) + -(0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) - 1 and arg1 > -1 / Mask(112, 0, ext_call.return_data[0]) + -(0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) - 1:
                                    revert with 'NH{q', 17
                                if not Mask(112, 0, ext_call.return_data[0]) + -(0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) - 1:
                                    revert with 'NH{q', 18
                                if -arg1 + (Mask(112, 0, ext_call.return_data[0]) * arg1) - (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * arg1) / Mask(112, 0, ext_call.return_data[0]) + -(0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) - 1 != arg1:
                                    mem[(4 * ceil32(return_data.size)) + 384] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(4 * ceil32(return_data.size)) + 388] = 32
                                    mem[(4 * ceil32(return_data.size)) + 420] = 33
                                    mem[(4 * ceil32(return_data.size)) + 452] = 'SafeMath: multiplication overflo'
                                    mem[(4 * ceil32(return_data.size)) + 484] = 'w'
                                    revert with memory
                                      from (4 * ceil32(return_data.size)) + 384
                                       len (5 * ceil32(return_data.size)) + 132
                                if not -arg1 + (Mask(112, 0, ext_call.return_data[0]) * arg1) - (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * arg1):
                                    revert with 'NH{q', 18
                                if 0 / -arg1 + (Mask(112, 0, ext_call.return_data[0]) * arg1) - (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * arg1) > -2:
                                    revert with 'NH{q', 17
                                if (0 / -arg1 + (Mask(112, 0, ext_call.return_data[0]) * arg1) - (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * arg1)) + 1 < 0 / -arg1 + (Mask(112, 0, ext_call.return_data[0]) * arg1) - (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * arg1):
                                    mem[(4 * ceil32(return_data.size)) + 384] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(4 * ceil32(return_data.size)) + 388] = 32
                                    mem[(4 * ceil32(return_data.size)) + 420] = 27
                                    mem[(4 * ceil32(return_data.size)) + 452] = 'SafeMath: addition overflow'
                                    revert with memory
                                      from (4 * ceil32(return_data.size)) + 384
                                       len (5 * ceil32(return_data.size)) + 100
                                mem[(4 * ceil32(return_data.size)) + 416] = (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) + 1
                                mem[(4 * ceil32(return_data.size)) + 448] = (0 / -arg1 + (Mask(112, 0, ext_call.return_data[0]) * arg1) - (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * arg1)) + 1
                            else:
                                if mem[ceil32(return_data.size) + 242 len 14] + (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * mem[ceil32(return_data.size) + 242 len 14]) and 1000 > -1 / mem[ceil32(return_data.size) + 242 len 14] + (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * mem[ceil32(return_data.size) + 242 len 14]):
                                    revert with 'NH{q', 17
                                if not mem[ceil32(return_data.size) + 242 len 14] + (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * mem[ceil32(return_data.size) + 242 len 14]):
                                    revert with 'NH{q', 18
                                if (1000 * mem[ceil32(return_data.size) + 242 len 14]) + (1000 * 0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * mem[ceil32(return_data.size) + 242 len 14]) / mem[ceil32(return_data.size) + 242 len 14] + (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * mem[ceil32(return_data.size) + 242 len 14]) != 1000:
                                    mem[(4 * ceil32(return_data.size)) + 320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(4 * ceil32(return_data.size)) + 324] = 32
                                    mem[(4 * ceil32(return_data.size)) + 356] = 33
                                    mem[(4 * ceil32(return_data.size)) + 388] = 'SafeMath: multiplication overflo'
                                    mem[(4 * ceil32(return_data.size)) + 420] = 'w'
                                    revert with memory
                                      from (4 * ceil32(return_data.size)) + 320
                                       len (5 * ceil32(return_data.size)) + 132
                                mem[(4 * ceil32(return_data.size)) + 320] = 30
                                mem[(4 * ceil32(return_data.size)) + 352] = 'SafeMath: subtraction overflow'
                                if (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) + 1 > Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if Mask(112, 0, ext_call.return_data[0]) < (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) + 1:
                                    revert with 'NH{q', 17
                                if not Mask(112, 0, ext_call.return_data[0]) + -(0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) - 1:
                                    revert with 'NH{q', 18
                                if Mask(112, 0, ext_call.return_data[0]) + -(0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) - 1 and arg1 > -1 / Mask(112, 0, ext_call.return_data[0]) + -(0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) - 1:
                                    revert with 'NH{q', 17
                                if not Mask(112, 0, ext_call.return_data[0]) + -(0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) - 1:
                                    revert with 'NH{q', 18
                                if -arg1 + (Mask(112, 0, ext_call.return_data[0]) * arg1) - (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * arg1) / Mask(112, 0, ext_call.return_data[0]) + -(0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) - 1 != arg1:
                                    mem[(4 * ceil32(return_data.size)) + 384] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(4 * ceil32(return_data.size)) + 388] = 32
                                    mem[(4 * ceil32(return_data.size)) + 420] = 33
                                    mem[(4 * ceil32(return_data.size)) + 452] = 'SafeMath: multiplication overflo'
                                    mem[(4 * ceil32(return_data.size)) + 484] = 'w'
                                    revert with memory
                                      from (4 * ceil32(return_data.size)) + 384
                                       len (5 * ceil32(return_data.size)) + 132
                                if not -arg1 + (Mask(112, 0, ext_call.return_data[0]) * arg1) - (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * arg1):
                                    revert with 'NH{q', 18
                                if (1000 * mem[ceil32(return_data.size) + 242 len 14]) + (1000 * 0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * mem[ceil32(return_data.size) + 242 len 14]) / -arg1 + (Mask(112, 0, ext_call.return_data[0]) * arg1) - (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * arg1) > -2:
                                    revert with 'NH{q', 17
                                if ((1000 * mem[ceil32(return_data.size) + 242 len 14]) + (1000 * 0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * mem[ceil32(return_data.size) + 242 len 14]) / -arg1 + (Mask(112, 0, ext_call.return_data[0]) * arg1) - (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * arg1)) + 1 < (1000 * mem[ceil32(return_data.size) + 242 len 14]) + (1000 * 0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * mem[ceil32(return_data.size) + 242 len 14]) / -arg1 + (Mask(112, 0, ext_call.return_data[0]) * arg1) - (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * arg1):
                                    mem[(4 * ceil32(return_data.size)) + 384] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(4 * ceil32(return_data.size)) + 388] = 32
                                    mem[(4 * ceil32(return_data.size)) + 420] = 27
                                    mem[(4 * ceil32(return_data.size)) + 452] = 'SafeMath: addition overflow'
                                    revert with memory
                                      from (4 * ceil32(return_data.size)) + 384
                                       len (5 * ceil32(return_data.size)) + 100
                                mem[(4 * ceil32(return_data.size)) + 416] = (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) + 1
                                mem[(4 * ceil32(return_data.size)) + 448] = ((1000 * mem[ceil32(return_data.size) + 242 len 14]) + (1000 * 0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * mem[ceil32(return_data.size) + 242 len 14]) / -arg1 + (Mask(112, 0, ext_call.return_data[0]) * arg1) - (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * arg1)) + 1
                    else:
                        if mem[ceil32(return_data.size) + 242 len 14] <= 0:
                            mem[(4 * ceil32(return_data.size)) + 320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + 324] = 32
                            mem[(4 * ceil32(return_data.size)) + 356] = 40
                            mem[(4 * ceil32(return_data.size)) + 388] = 'UniswapV2Library: INSUFFICIENT_L'
                            mem[(4 * ceil32(return_data.size)) + 420] = 'IQUIDITY'
                            revert with memory
                              from (4 * ceil32(return_data.size)) + 320
                               len (5 * ceil32(return_data.size)) + 132
                        if not mem[ceil32(return_data.size) + 242 len 14]:
                            mem[(4 * ceil32(return_data.size)) + 320] = 30
                            mem[(4 * ceil32(return_data.size)) + 352] = 'SafeMath: subtraction overflow'
                            if (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) + 1 > mem[ceil32(return_data.size) + 242 len 14]:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if mem[ceil32(return_data.size) + 242 len 14] < (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) + 1:
                                revert with 'NH{q', 17
                            if not mem[ceil32(return_data.size) + 242 len 14] + -(0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) - 1:
                                revert with 'NH{q', 18
                            if mem[ceil32(return_data.size) + 242 len 14] + -(0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) - 1 and arg1 > -1 / mem[ceil32(return_data.size) + 242 len 14] + -(0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) - 1:
                                revert with 'NH{q', 17
                            if not mem[ceil32(return_data.size) + 242 len 14] + -(0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) - 1:
                                revert with 'NH{q', 18
                            if -arg1 + (mem[ceil32(return_data.size) + 242 len 14] * arg1) - (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * arg1) / mem[ceil32(return_data.size) + 242 len 14] + -(0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) - 1 != arg1:
                                mem[(4 * ceil32(return_data.size)) + 384] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + 388] = 32
                                mem[(4 * ceil32(return_data.size)) + 420] = 33
                                mem[(4 * ceil32(return_data.size)) + 452] = 'SafeMath: multiplication overflo'
                                mem[(4 * ceil32(return_data.size)) + 484] = 'w'
                                revert with memory
                                  from (4 * ceil32(return_data.size)) + 384
                                   len (5 * ceil32(return_data.size)) + 132
                            if not -arg1 + (mem[ceil32(return_data.size) + 242 len 14] * arg1) - (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * arg1):
                                revert with 'NH{q', 18
                            if 0 / -arg1 + (mem[ceil32(return_data.size) + 242 len 14] * arg1) - (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * arg1) > -2:
                                revert with 'NH{q', 17
                            if (0 / -arg1 + (mem[ceil32(return_data.size) + 242 len 14] * arg1) - (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * arg1)) + 1 < 0 / -arg1 + (mem[ceil32(return_data.size) + 242 len 14] * arg1) - (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * arg1):
                                mem[(4 * ceil32(return_data.size)) + 384] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + 388] = 32
                                mem[(4 * ceil32(return_data.size)) + 420] = 27
                                mem[(4 * ceil32(return_data.size)) + 452] = 'SafeMath: addition overflow'
                                revert with memory
                                  from (4 * ceil32(return_data.size)) + 384
                                   len (5 * ceil32(return_data.size)) + 100
                            mem[(4 * ceil32(return_data.size)) + 416] = (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) + 1
                            mem[(4 * ceil32(return_data.size)) + 448] = (0 / -arg1 + (mem[ceil32(return_data.size) + 242 len 14] * arg1) - (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * arg1)) + 1
                        else:
                            if mem[ceil32(return_data.size) + 242 len 14] and (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) + 1 > -1 / mem[ceil32(return_data.size) + 242 len 14]:
                                revert with 'NH{q', 17
                            if not mem[ceil32(return_data.size) + 242 len 14]:
                                revert with 'NH{q', 18
                            if mem[ceil32(return_data.size) + 242 len 14] + (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * mem[ceil32(return_data.size) + 242 len 14]) / mem[ceil32(return_data.size) + 242 len 14] != (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) + 1:
                                mem[(4 * ceil32(return_data.size)) + 320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + 324] = 32
                                mem[(4 * ceil32(return_data.size)) + 356] = 33
                                mem[(4 * ceil32(return_data.size)) + 388] = 'SafeMath: multiplication overflo'
                                mem[(4 * ceil32(return_data.size)) + 420] = 'w'
                                revert with memory
                                  from (4 * ceil32(return_data.size)) + 320
                                   len (5 * ceil32(return_data.size)) + 132
                            if not mem[ceil32(return_data.size) + 242 len 14] + (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * mem[ceil32(return_data.size) + 242 len 14]):
                                mem[(4 * ceil32(return_data.size)) + 320] = 30
                                mem[(4 * ceil32(return_data.size)) + 352] = 'SafeMath: subtraction overflow'
                                if (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) + 1 > mem[ceil32(return_data.size) + 242 len 14]:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if mem[ceil32(return_data.size) + 242 len 14] < (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) + 1:
                                    revert with 'NH{q', 17
                                if not mem[ceil32(return_data.size) + 242 len 14] + -(0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) - 1:
                                    revert with 'NH{q', 18
                                if mem[ceil32(return_data.size) + 242 len 14] + -(0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) - 1 and arg1 > -1 / mem[ceil32(return_data.size) + 242 len 14] + -(0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) - 1:
                                    revert with 'NH{q', 17
                                if not mem[ceil32(return_data.size) + 242 len 14] + -(0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) - 1:
                                    revert with 'NH{q', 18
                                if -arg1 + (mem[ceil32(return_data.size) + 242 len 14] * arg1) - (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * arg1) / mem[ceil32(return_data.size) + 242 len 14] + -(0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) - 1 != arg1:
                                    mem[(4 * ceil32(return_data.size)) + 384] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(4 * ceil32(return_data.size)) + 388] = 32
                                    mem[(4 * ceil32(return_data.size)) + 420] = 33
                                    mem[(4 * ceil32(return_data.size)) + 452] = 'SafeMath: multiplication overflo'
                                    mem[(4 * ceil32(return_data.size)) + 484] = 'w'
                                    revert with memory
                                      from (4 * ceil32(return_data.size)) + 384
                                       len (5 * ceil32(return_data.size)) + 132
                                if not -arg1 + (mem[ceil32(return_data.size) + 242 len 14] * arg1) - (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * arg1):
                                    revert with 'NH{q', 18
                                if 0 / -arg1 + (mem[ceil32(return_data.size) + 242 len 14] * arg1) - (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * arg1) > -2:
                                    revert with 'NH{q', 17
                                if (0 / -arg1 + (mem[ceil32(return_data.size) + 242 len 14] * arg1) - (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * arg1)) + 1 < 0 / -arg1 + (mem[ceil32(return_data.size) + 242 len 14] * arg1) - (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * arg1):
                                    mem[(4 * ceil32(return_data.size)) + 384] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(4 * ceil32(return_data.size)) + 388] = 32
                                    mem[(4 * ceil32(return_data.size)) + 420] = 27
                                    mem[(4 * ceil32(return_data.size)) + 452] = 'SafeMath: addition overflow'
                                    revert with memory
                                      from (4 * ceil32(return_data.size)) + 384
                                       len (5 * ceil32(return_data.size)) + 100
                                mem[(4 * ceil32(return_data.size)) + 416] = (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) + 1
                                mem[(4 * ceil32(return_data.size)) + 448] = (0 / -arg1 + (mem[ceil32(return_data.size) + 242 len 14] * arg1) - (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * arg1)) + 1
                            else:
                                if mem[ceil32(return_data.size) + 242 len 14] + (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * mem[ceil32(return_data.size) + 242 len 14]) and 1000 > -1 / mem[ceil32(return_data.size) + 242 len 14] + (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * mem[ceil32(return_data.size) + 242 len 14]):
                                    revert with 'NH{q', 17
                                if not mem[ceil32(return_data.size) + 242 len 14] + (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * mem[ceil32(return_data.size) + 242 len 14]):
                                    revert with 'NH{q', 18
                                if (1000 * mem[ceil32(return_data.size) + 242 len 14]) + (1000 * 0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * mem[ceil32(return_data.size) + 242 len 14]) / mem[ceil32(return_data.size) + 242 len 14] + (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * mem[ceil32(return_data.size) + 242 len 14]) != 1000:
                                    mem[(4 * ceil32(return_data.size)) + 320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(4 * ceil32(return_data.size)) + 324] = 32
                                    mem[(4 * ceil32(return_data.size)) + 356] = 33
                                    mem[(4 * ceil32(return_data.size)) + 388] = 'SafeMath: multiplication overflo'
                                    mem[(4 * ceil32(return_data.size)) + 420] = 'w'
                                    revert with memory
                                      from (4 * ceil32(return_data.size)) + 320
                                       len (5 * ceil32(return_data.size)) + 132
                                mem[(4 * ceil32(return_data.size)) + 320] = 30
                                mem[(4 * ceil32(return_data.size)) + 352] = 'SafeMath: subtraction overflow'
                                if (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) + 1 > mem[ceil32(return_data.size) + 242 len 14]:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if mem[ceil32(return_data.size) + 242 len 14] < (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) + 1:
                                    revert with 'NH{q', 17
                                if not mem[ceil32(return_data.size) + 242 len 14] + -(0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) - 1:
                                    revert with 'NH{q', 18
                                if mem[ceil32(return_data.size) + 242 len 14] + -(0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) - 1 and arg1 > -1 / mem[ceil32(return_data.size) + 242 len 14] + -(0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) - 1:
                                    revert with 'NH{q', 17
                                if not mem[ceil32(return_data.size) + 242 len 14] + -(0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) - 1:
                                    revert with 'NH{q', 18
                                if -arg1 + (mem[ceil32(return_data.size) + 242 len 14] * arg1) - (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * arg1) / mem[ceil32(return_data.size) + 242 len 14] + -(0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) - 1 != arg1:
                                    mem[(4 * ceil32(return_data.size)) + 384] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(4 * ceil32(return_data.size)) + 388] = 32
                                    mem[(4 * ceil32(return_data.size)) + 420] = 33
                                    mem[(4 * ceil32(return_data.size)) + 452] = 'SafeMath: multiplication overflo'
                                    mem[(4 * ceil32(return_data.size)) + 484] = 'w'
                                    revert with memory
                                      from (4 * ceil32(return_data.size)) + 384
                                       len (5 * ceil32(return_data.size)) + 132
                                if not -arg1 + (mem[ceil32(return_data.size) + 242 len 14] * arg1) - (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * arg1):
                                    revert with 'NH{q', 18
                                if (1000 * mem[ceil32(return_data.size) + 242 len 14]) + (1000 * 0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * mem[ceil32(return_data.size) + 242 len 14]) / -arg1 + (mem[ceil32(return_data.size) + 242 len 14] * arg1) - (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * arg1) > -2:
                                    revert with 'NH{q', 17
                                if ((1000 * mem[ceil32(return_data.size) + 242 len 14]) + (1000 * 0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * mem[ceil32(return_data.size) + 242 len 14]) / -arg1 + (mem[ceil32(return_data.size) + 242 len 14] * arg1) - (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * arg1)) + 1 < (1000 * mem[ceil32(return_data.size) + 242 len 14]) + (1000 * 0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * mem[ceil32(return_data.size) + 242 len 14]) / -arg1 + (mem[ceil32(return_data.size) + 242 len 14] * arg1) - (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * arg1):
                                    mem[(4 * ceil32(return_data.size)) + 384] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(4 * ceil32(return_data.size)) + 388] = 32
                                    mem[(4 * ceil32(return_data.size)) + 420] = 27
                                    mem[(4 * ceil32(return_data.size)) + 452] = 'SafeMath: addition overflow'
                                    revert with memory
                                      from (4 * ceil32(return_data.size)) + 384
                                       len (5 * ceil32(return_data.size)) + 100
                                mem[(4 * ceil32(return_data.size)) + 416] = (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) + 1
                                mem[(4 * ceil32(return_data.size)) + 448] = ((1000 * mem[ceil32(return_data.size) + 242 len 14]) + (1000 * 0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * mem[ceil32(return_data.size) + 242 len 14]) / -arg1 + (mem[ceil32(return_data.size) + 242 len 14] * arg1) - (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * arg1)) + 1
                else:
                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                        mem[(4 * ceil32(return_data.size)) + 320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[(4 * ceil32(return_data.size)) + 324] = 32
                        mem[(4 * ceil32(return_data.size)) + 356] = 40
                        mem[(4 * ceil32(return_data.size)) + 388] = 'UniswapV2Library: INSUFFICIENT_L'
                        mem[(4 * ceil32(return_data.size)) + 420] = 'IQUIDITY'
                        revert with memory
                          from (4 * ceil32(return_data.size)) + 320
                           len (5 * ceil32(return_data.size)) + 132
                    if arg5:
                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                            mem[(4 * ceil32(return_data.size)) + 320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + 324] = 32
                            mem[(4 * ceil32(return_data.size)) + 356] = 40
                            mem[(4 * ceil32(return_data.size)) + 388] = 'UniswapV2Library: INSUFFICIENT_L'
                            mem[(4 * ceil32(return_data.size)) + 420] = 'IQUIDITY'
                            revert with memory
                              from (4 * ceil32(return_data.size)) + 320
                               len (5 * ceil32(return_data.size)) + 132
                        if not Mask(112, 0, ext_call.return_data[0]):
                            if (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) + 1 > Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if Mask(112, 0, ext_call.return_data[0]) < (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) + 1:
                                revert with 'NH{q', 17
                            if not Mask(112, 0, ext_call.return_data[0]) + -(0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) - 1:
                                revert with 'NH{q', 18
                            if Mask(112, 0, ext_call.return_data[0]) + -(0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) - 1 and arg1 > -1 / Mask(112, 0, ext_call.return_data[0]) + -(0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) - 1:
                                revert with 'NH{q', 17
                            if not Mask(112, 0, ext_call.return_data[0]) + -(0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) - 1:
                                revert with 'NH{q', 18
                            if -arg1 + (Mask(112, 0, ext_call.return_data[0]) * arg1) - (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * arg1) / Mask(112, 0, ext_call.return_data[0]) + -(0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) - 1 != arg1:
                                mem[(4 * ceil32(return_data.size)) + 384] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + 388] = 32
                                mem[(4 * ceil32(return_data.size)) + 420] = 33
                                mem[(4 * ceil32(return_data.size)) + 452] = 'SafeMath: multiplication overflo'
                                mem[(4 * ceil32(return_data.size)) + 484] = 'w'
                                revert with memory
                                  from (4 * ceil32(return_data.size)) + 384
                                   len (5 * ceil32(return_data.size)) + 132
                            if not -arg1 + (Mask(112, 0, ext_call.return_data[0]) * arg1) - (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * arg1):
                                revert with 'NH{q', 18
                            if 0 / -arg1 + (Mask(112, 0, ext_call.return_data[0]) * arg1) - (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * arg1) > -2:
                                revert with 'NH{q', 17
                            if (0 / -arg1 + (Mask(112, 0, ext_call.return_data[0]) * arg1) - (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * arg1)) + 1 < 0 / -arg1 + (Mask(112, 0, ext_call.return_data[0]) * arg1) - (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * arg1):
                                mem[(4 * ceil32(return_data.size)) + 384] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + 388] = 32
                                mem[(4 * ceil32(return_data.size)) + 420] = 27
                                mem[(4 * ceil32(return_data.size)) + 452] = 'SafeMath: addition overflow'
                                revert with memory
                                  from (4 * ceil32(return_data.size)) + 384
                                   len (5 * ceil32(return_data.size)) + 100
                            mem[(4 * ceil32(return_data.size)) + 416] = (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) + 1
                            mem[(4 * ceil32(return_data.size)) + 448] = (0 / -arg1 + (Mask(112, 0, ext_call.return_data[0]) * arg1) - (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * arg1)) + 1
                        else:
                            if Mask(112, 0, ext_call.return_data[0]) and (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) + 1 > -1 / Mask(112, 0, ext_call.return_data[0]):
                                revert with 'NH{q', 17
                            if not Mask(112, 0, ext_call.return_data[0]):
                                revert with 'NH{q', 18
                            if Mask(112, 0, ext_call.return_data[0]) + (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[0]) != (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) + 1:
                                mem[(4 * ceil32(return_data.size)) + 320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + 324] = 32
                                mem[(4 * ceil32(return_data.size)) + 356] = 33
                                mem[(4 * ceil32(return_data.size)) + 388] = 'SafeMath: multiplication overflo'
                                mem[(4 * ceil32(return_data.size)) + 420] = 'w'
                                revert with memory
                                  from (4 * ceil32(return_data.size)) + 320
                                   len (5 * ceil32(return_data.size)) + 132
                            if not Mask(112, 0, ext_call.return_data[0]) + (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * Mask(112, 0, ext_call.return_data[0])):
                                if (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) + 1 > Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if Mask(112, 0, ext_call.return_data[0]) < (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) + 1:
                                    revert with 'NH{q', 17
                                if not Mask(112, 0, ext_call.return_data[0]) + -(0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) - 1:
                                    revert with 'NH{q', 18
                                if Mask(112, 0, ext_call.return_data[0]) + -(0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) - 1 and arg1 > -1 / Mask(112, 0, ext_call.return_data[0]) + -(0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) - 1:
                                    revert with 'NH{q', 17
                                if not Mask(112, 0, ext_call.return_data[0]) + -(0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) - 1:
                                    revert with 'NH{q', 18
                                if -arg1 + (Mask(112, 0, ext_call.return_data[0]) * arg1) - (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * arg1) / Mask(112, 0, ext_call.return_data[0]) + -(0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) - 1 != arg1:
                                    mem[(4 * ceil32(return_data.size)) + 384] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(4 * ceil32(return_data.size)) + 388] = 32
                                    mem[(4 * ceil32(return_data.size)) + 420] = 33
                                    mem[(4 * ceil32(return_data.size)) + 452] = 'SafeMath: multiplication overflo'
                                    mem[(4 * ceil32(return_data.size)) + 484] = 'w'
                                    revert with memory
                                      from (4 * ceil32(return_data.size)) + 384
                                       len (5 * ceil32(return_data.size)) + 132
                                if not -arg1 + (Mask(112, 0, ext_call.return_data[0]) * arg1) - (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * arg1):
                                    revert with 'NH{q', 18
                                if 0 / -arg1 + (Mask(112, 0, ext_call.return_data[0]) * arg1) - (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * arg1) > -2:
                                    revert with 'NH{q', 17
                                if (0 / -arg1 + (Mask(112, 0, ext_call.return_data[0]) * arg1) - (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * arg1)) + 1 < 0 / -arg1 + (Mask(112, 0, ext_call.return_data[0]) * arg1) - (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * arg1):
                                    mem[(4 * ceil32(return_data.size)) + 384] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(4 * ceil32(return_data.size)) + 388] = 32
                                    mem[(4 * ceil32(return_data.size)) + 420] = 27
                                    mem[(4 * ceil32(return_data.size)) + 452] = 'SafeMath: addition overflow'
                                    revert with memory
                                      from (4 * ceil32(return_data.size)) + 384
                                       len (5 * ceil32(return_data.size)) + 100
                                mem[(4 * ceil32(return_data.size)) + 416] = (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) + 1
                                mem[(4 * ceil32(return_data.size)) + 448] = (0 / -arg1 + (Mask(112, 0, ext_call.return_data[0]) * arg1) - (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * arg1)) + 1
                            else:
                                if Mask(112, 0, ext_call.return_data[0]) + (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * Mask(112, 0, ext_call.return_data[0])) and 1000 > -1 / Mask(112, 0, ext_call.return_data[0]) + (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * Mask(112, 0, ext_call.return_data[0])):
                                    revert with 'NH{q', 17
                                if not Mask(112, 0, ext_call.return_data[0]) + (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * Mask(112, 0, ext_call.return_data[0])):
                                    revert with 'NH{q', 18
                                if (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * 0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[0]) + (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * Mask(112, 0, ext_call.return_data[0])) != 1000:
                                    mem[(4 * ceil32(return_data.size)) + 320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(4 * ceil32(return_data.size)) + 324] = 32
                                    mem[(4 * ceil32(return_data.size)) + 356] = 33
                                    mem[(4 * ceil32(return_data.size)) + 388] = 'SafeMath: multiplication overflo'
                                    mem[(4 * ceil32(return_data.size)) + 420] = 'w'
                                    revert with memory
                                      from (4 * ceil32(return_data.size)) + 320
                                       len (5 * ceil32(return_data.size)) + 132
                                if (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) + 1 > Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if Mask(112, 0, ext_call.return_data[0]) < (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) + 1:
                                    revert with 'NH{q', 17
                                if not Mask(112, 0, ext_call.return_data[0]) + -(0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) - 1:
                                    revert with 'NH{q', 18
                                if Mask(112, 0, ext_call.return_data[0]) + -(0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) - 1 and arg1 > -1 / Mask(112, 0, ext_call.return_data[0]) + -(0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) - 1:
                                    revert with 'NH{q', 17
                                if not Mask(112, 0, ext_call.return_data[0]) + -(0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) - 1:
                                    revert with 'NH{q', 18
                                if -arg1 + (Mask(112, 0, ext_call.return_data[0]) * arg1) - (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * arg1) / Mask(112, 0, ext_call.return_data[0]) + -(0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) - 1 != arg1:
                                    mem[(4 * ceil32(return_data.size)) + 384] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(4 * ceil32(return_data.size)) + 388] = 32
                                    mem[(4 * ceil32(return_data.size)) + 420] = 33
                                    mem[(4 * ceil32(return_data.size)) + 452] = 'SafeMath: multiplication overflo'
                                    mem[(4 * ceil32(return_data.size)) + 484] = 'w'
                                    revert with memory
                                      from (4 * ceil32(return_data.size)) + 384
                                       len (5 * ceil32(return_data.size)) + 132
                                if not -arg1 + (Mask(112, 0, ext_call.return_data[0]) * arg1) - (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * arg1):
                                    revert with 'NH{q', 18
                                if (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * 0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * Mask(112, 0, ext_call.return_data[0])) / -arg1 + (Mask(112, 0, ext_call.return_data[0]) * arg1) - (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * arg1) > -2:
                                    revert with 'NH{q', 17
                                if ((1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * 0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * Mask(112, 0, ext_call.return_data[0])) / -arg1 + (Mask(112, 0, ext_call.return_data[0]) * arg1) - (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * arg1)) + 1 < (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * 0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * Mask(112, 0, ext_call.return_data[0])) / -arg1 + (Mask(112, 0, ext_call.return_data[0]) * arg1) - (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * arg1):
                                    mem[(4 * ceil32(return_data.size)) + 384] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(4 * ceil32(return_data.size)) + 388] = 32
                                    mem[(4 * ceil32(return_data.size)) + 420] = 27
                                    mem[(4 * ceil32(return_data.size)) + 452] = 'SafeMath: addition overflow'
                                    revert with memory
                                      from (4 * ceil32(return_data.size)) + 384
                                       len (5 * ceil32(return_data.size)) + 100
                                mem[(4 * ceil32(return_data.size)) + 416] = (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) + 1
                                mem[(4 * ceil32(return_data.size)) + 448] = ((1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * 0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * Mask(112, 0, ext_call.return_data[0])) / -arg1 + (Mask(112, 0, ext_call.return_data[0]) * arg1) - (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * arg1)) + 1
                    else:
                        if mem[ceil32(return_data.size) + 242 len 14] <= 0:
                            mem[(4 * ceil32(return_data.size)) + 320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + 324] = 32
                            mem[(4 * ceil32(return_data.size)) + 356] = 40
                            mem[(4 * ceil32(return_data.size)) + 388] = 'UniswapV2Library: INSUFFICIENT_L'
                            mem[(4 * ceil32(return_data.size)) + 420] = 'IQUIDITY'
                            revert with memory
                              from (4 * ceil32(return_data.size)) + 320
                               len (5 * ceil32(return_data.size)) + 132
                        if not Mask(112, 0, ext_call.return_data[0]):
                            mem[(4 * ceil32(return_data.size)) + 320] = 30
                            mem[(4 * ceil32(return_data.size)) + 352] = 'SafeMath: subtraction overflow'
                            if (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) + 1 > mem[ceil32(return_data.size) + 242 len 14]:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if mem[ceil32(return_data.size) + 242 len 14] < (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) + 1:
                                revert with 'NH{q', 17
                            if not mem[ceil32(return_data.size) + 242 len 14] + -(0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) - 1:
                                revert with 'NH{q', 18
                            if mem[ceil32(return_data.size) + 242 len 14] + -(0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) - 1 and arg1 > -1 / mem[ceil32(return_data.size) + 242 len 14] + -(0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) - 1:
                                revert with 'NH{q', 17
                            if not mem[ceil32(return_data.size) + 242 len 14] + -(0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) - 1:
                                revert with 'NH{q', 18
                            if -arg1 + (mem[ceil32(return_data.size) + 242 len 14] * arg1) - (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * arg1) / mem[ceil32(return_data.size) + 242 len 14] + -(0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) - 1 != arg1:
                                mem[(4 * ceil32(return_data.size)) + 384] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + 388] = 32
                                mem[(4 * ceil32(return_data.size)) + 420] = 33
                                mem[(4 * ceil32(return_data.size)) + 452] = 'SafeMath: multiplication overflo'
                                mem[(4 * ceil32(return_data.size)) + 484] = 'w'
                                revert with memory
                                  from (4 * ceil32(return_data.size)) + 384
                                   len (5 * ceil32(return_data.size)) + 132
                            if not -arg1 + (mem[ceil32(return_data.size) + 242 len 14] * arg1) - (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * arg1):
                                revert with 'NH{q', 18
                            if 0 / -arg1 + (mem[ceil32(return_data.size) + 242 len 14] * arg1) - (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * arg1) > -2:
                                revert with 'NH{q', 17
                            if (0 / -arg1 + (mem[ceil32(return_data.size) + 242 len 14] * arg1) - (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * arg1)) + 1 < 0 / -arg1 + (mem[ceil32(return_data.size) + 242 len 14] * arg1) - (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * arg1):
                                mem[(4 * ceil32(return_data.size)) + 384] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + 388] = 32
                                mem[(4 * ceil32(return_data.size)) + 420] = 27
                                mem[(4 * ceil32(return_data.size)) + 452] = 'SafeMath: addition overflow'
                                revert with memory
                                  from (4 * ceil32(return_data.size)) + 384
                                   len (5 * ceil32(return_data.size)) + 100
                            mem[(4 * ceil32(return_data.size)) + 416] = (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) + 1
                            mem[(4 * ceil32(return_data.size)) + 448] = (0 / -arg1 + (mem[ceil32(return_data.size) + 242 len 14] * arg1) - (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * arg1)) + 1
                        else:
                            if Mask(112, 0, ext_call.return_data[0]) and (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) + 1 > -1 / Mask(112, 0, ext_call.return_data[0]):
                                revert with 'NH{q', 17
                            if not Mask(112, 0, ext_call.return_data[0]):
                                revert with 'NH{q', 18
                            if Mask(112, 0, ext_call.return_data[0]) + (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[0]) != (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) + 1:
                                mem[(4 * ceil32(return_data.size)) + 320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + 324] = 32
                                mem[(4 * ceil32(return_data.size)) + 356] = 33
                                mem[(4 * ceil32(return_data.size)) + 388] = 'SafeMath: multiplication overflo'
                                mem[(4 * ceil32(return_data.size)) + 420] = 'w'
                                revert with memory
                                  from (4 * ceil32(return_data.size)) + 320
                                   len (5 * ceil32(return_data.size)) + 132
                            if not Mask(112, 0, ext_call.return_data[0]) + (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * Mask(112, 0, ext_call.return_data[0])):
                                mem[(4 * ceil32(return_data.size)) + 320] = 30
                                mem[(4 * ceil32(return_data.size)) + 352] = 'SafeMath: subtraction overflow'
                                if (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) + 1 > mem[ceil32(return_data.size) + 242 len 14]:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if mem[ceil32(return_data.size) + 242 len 14] < (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) + 1:
                                    revert with 'NH{q', 17
                                if not mem[ceil32(return_data.size) + 242 len 14] + -(0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) - 1:
                                    revert with 'NH{q', 18
                                if mem[ceil32(return_data.size) + 242 len 14] + -(0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) - 1 and arg1 > -1 / mem[ceil32(return_data.size) + 242 len 14] + -(0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) - 1:
                                    revert with 'NH{q', 17
                                if not mem[ceil32(return_data.size) + 242 len 14] + -(0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) - 1:
                                    revert with 'NH{q', 18
                                if -arg1 + (mem[ceil32(return_data.size) + 242 len 14] * arg1) - (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * arg1) / mem[ceil32(return_data.size) + 242 len 14] + -(0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) - 1 != arg1:
                                    mem[(4 * ceil32(return_data.size)) + 384] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(4 * ceil32(return_data.size)) + 388] = 32
                                    mem[(4 * ceil32(return_data.size)) + 420] = 33
                                    mem[(4 * ceil32(return_data.size)) + 452] = 'SafeMath: multiplication overflo'
                                    mem[(4 * ceil32(return_data.size)) + 484] = 'w'
                                    revert with memory
                                      from (4 * ceil32(return_data.size)) + 384
                                       len (5 * ceil32(return_data.size)) + 132
                                if not -arg1 + (mem[ceil32(return_data.size) + 242 len 14] * arg1) - (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * arg1):
                                    revert with 'NH{q', 18
                                if 0 / -arg1 + (mem[ceil32(return_data.size) + 242 len 14] * arg1) - (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * arg1) > -2:
                                    revert with 'NH{q', 17
                                if (0 / -arg1 + (mem[ceil32(return_data.size) + 242 len 14] * arg1) - (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * arg1)) + 1 < 0 / -arg1 + (mem[ceil32(return_data.size) + 242 len 14] * arg1) - (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * arg1):
                                    mem[(4 * ceil32(return_data.size)) + 384] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(4 * ceil32(return_data.size)) + 388] = 32
                                    mem[(4 * ceil32(return_data.size)) + 420] = 27
                                    mem[(4 * ceil32(return_data.size)) + 452] = 'SafeMath: addition overflow'
                                    revert with memory
                                      from (4 * ceil32(return_data.size)) + 384
                                       len (5 * ceil32(return_data.size)) + 100
                                mem[(4 * ceil32(return_data.size)) + 416] = (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) + 1
                                mem[(4 * ceil32(return_data.size)) + 448] = (0 / -arg1 + (mem[ceil32(return_data.size) + 242 len 14] * arg1) - (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * arg1)) + 1
                            else:
                                if Mask(112, 0, ext_call.return_data[0]) + (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * Mask(112, 0, ext_call.return_data[0])) and 1000 > -1 / Mask(112, 0, ext_call.return_data[0]) + (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * Mask(112, 0, ext_call.return_data[0])):
                                    revert with 'NH{q', 17
                                if not Mask(112, 0, ext_call.return_data[0]) + (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * Mask(112, 0, ext_call.return_data[0])):
                                    revert with 'NH{q', 18
                                if (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * 0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[0]) + (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * Mask(112, 0, ext_call.return_data[0])) != 1000:
                                    mem[(4 * ceil32(return_data.size)) + 320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(4 * ceil32(return_data.size)) + 324] = 32
                                    mem[(4 * ceil32(return_data.size)) + 356] = 33
                                    mem[(4 * ceil32(return_data.size)) + 388] = 'SafeMath: multiplication overflo'
                                    mem[(4 * ceil32(return_data.size)) + 420] = 'w'
                                    revert with memory
                                      from (4 * ceil32(return_data.size)) + 320
                                       len (5 * ceil32(return_data.size)) + 132
                                mem[(4 * ceil32(return_data.size)) + 320] = 30
                                mem[(4 * ceil32(return_data.size)) + 352] = 'SafeMath: subtraction overflow'
                                if (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) + 1 > mem[ceil32(return_data.size) + 242 len 14]:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if mem[ceil32(return_data.size) + 242 len 14] < (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) + 1:
                                    revert with 'NH{q', 17
                                if not mem[ceil32(return_data.size) + 242 len 14] + -(0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) - 1:
                                    revert with 'NH{q', 18
                                if mem[ceil32(return_data.size) + 242 len 14] + -(0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) - 1 and arg1 > -1 / mem[ceil32(return_data.size) + 242 len 14] + -(0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) - 1:
                                    revert with 'NH{q', 17
                                if not mem[ceil32(return_data.size) + 242 len 14] + -(0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) - 1:
                                    revert with 'NH{q', 18
                                if -arg1 + (mem[ceil32(return_data.size) + 242 len 14] * arg1) - (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * arg1) / mem[ceil32(return_data.size) + 242 len 14] + -(0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) - 1 != arg1:
                                    mem[(4 * ceil32(return_data.size)) + 384] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(4 * ceil32(return_data.size)) + 388] = 32
                                    mem[(4 * ceil32(return_data.size)) + 420] = 33
                                    mem[(4 * ceil32(return_data.size)) + 452] = 'SafeMath: multiplication overflo'
                                    mem[(4 * ceil32(return_data.size)) + 484] = 'w'
                                    revert with memory
                                      from (4 * ceil32(return_data.size)) + 384
                                       len (5 * ceil32(return_data.size)) + 132
                                if not -arg1 + (mem[ceil32(return_data.size) + 242 len 14] * arg1) - (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * arg1):
                                    revert with 'NH{q', 18
                                if (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * 0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * Mask(112, 0, ext_call.return_data[0])) / -arg1 + (mem[ceil32(return_data.size) + 242 len 14] * arg1) - (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * arg1) > -2:
                                    revert with 'NH{q', 17
                                if ((1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * 0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * Mask(112, 0, ext_call.return_data[0])) / -arg1 + (mem[ceil32(return_data.size) + 242 len 14] * arg1) - (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * arg1)) + 1 < (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * 0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * Mask(112, 0, ext_call.return_data[0])) / -arg1 + (mem[ceil32(return_data.size) + 242 len 14] * arg1) - (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * arg1):
                                    mem[(4 * ceil32(return_data.size)) + 384] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(4 * ceil32(return_data.size)) + 388] = 32
                                    mem[(4 * ceil32(return_data.size)) + 420] = 27
                                    mem[(4 * ceil32(return_data.size)) + 452] = 'SafeMath: addition overflow'
                                    revert with memory
                                      from (4 * ceil32(return_data.size)) + 384
                                       len (5 * ceil32(return_data.size)) + 100
                                mem[(4 * ceil32(return_data.size)) + 416] = (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) + 1
                                mem[(4 * ceil32(return_data.size)) + 448] = ((1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * 0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * Mask(112, 0, ext_call.return_data[0])) / -arg1 + (mem[ceil32(return_data.size) + 242 len 14] * arg1) - (0 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * arg1)) + 1
            else:
                if Mask(112, 0, ext_call.return_data[0]) * arg2 and 1000 > -1 / Mask(112, 0, ext_call.return_data[0]) * arg2:
                    revert with 'NH{q', 17
                if not Mask(112, 0, ext_call.return_data[0]) * arg2:
                    revert with 'NH{q', 18
                if 1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / Mask(112, 0, ext_call.return_data[0]) * arg2 != 1000:
                    mem[(4 * ceil32(return_data.size)) + 256] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 260] = 32
                    mem[(4 * ceil32(return_data.size)) + 292] = 33
                    mem[(4 * ceil32(return_data.size)) + 324] = 'SafeMath: multiplication overflo'
                    mem[(4 * ceil32(return_data.size)) + 356] = 'w'
                    revert with memory
                      from (4 * ceil32(return_data.size)) + 256
                       len (5 * ceil32(return_data.size)) + 132
                mem[(4 * ceil32(return_data.size)) + 256] = 30
                mem[(4 * ceil32(return_data.size)) + 288] = 'SafeMath: subtraction overflow'
                if arg2 > Mask(112, 0, ext_call.return_data[50 len 14]):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if Mask(112, 0, ext_call.return_data[50 len 14]) < arg2:
                    revert with 'NH{q', 17
                if not Mask(112, 0, ext_call.return_data[50 len 14]) - arg2:
                    revert with 'NH{q', 18
                if Mask(112, 0, ext_call.return_data[50 len 14]) - arg2 and arg1 > -1 / Mask(112, 0, ext_call.return_data[50 len 14]) - arg2:
                    revert with 'NH{q', 17
                if not Mask(112, 0, ext_call.return_data[50 len 14]) - arg2:
                    revert with 'NH{q', 18
                if (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) / Mask(112, 0, ext_call.return_data[50 len 14]) - arg2 != arg1:
                    mem[(4 * ceil32(return_data.size)) + 320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 324] = 32
                    mem[(4 * ceil32(return_data.size)) + 356] = 33
                    mem[(4 * ceil32(return_data.size)) + 388] = 'SafeMath: multiplication overflo'
                    mem[(4 * ceil32(return_data.size)) + 420] = 'w'
                    revert with memory
                      from (4 * ceil32(return_data.size)) + 320
                       len (5 * ceil32(return_data.size)) + 132
                if not (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1):
                    revert with 'NH{q', 18
                if 1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) > -2:
                    revert with 'NH{q', 17
                if (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) + 1 < 1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1):
                    mem[(4 * ceil32(return_data.size)) + 320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 324] = 32
                    mem[(4 * ceil32(return_data.size)) + 356] = 27
                    mem[(4 * ceil32(return_data.size)) + 388] = 'SafeMath: addition overflow'
                    revert with memory
                      from (4 * ceil32(return_data.size)) + 320
                       len (5 * ceil32(return_data.size)) + 100
                if (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) + 1 <= 0:
                    mem[(4 * ceil32(return_data.size)) + 320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 324] = 32
                    mem[(4 * ceil32(return_data.size)) + 356] = 44
                    mem[(4 * ceil32(return_data.size)) + 388] = 'UniswapV2Library: INSUFFICIENT_O'
                    mem[(4 * ceil32(return_data.size)) + 420] = 'UTPUT_AMOUNT'
                    revert with memory
                      from (4 * ceil32(return_data.size)) + 320
                       len (5 * ceil32(return_data.size)) + 132
                if arg5:
                    if mem[ceil32(return_data.size) + 242 len 14] <= 0:
                        mem[(4 * ceil32(return_data.size)) + 320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[(4 * ceil32(return_data.size)) + 324] = 32
                        mem[(4 * ceil32(return_data.size)) + 356] = 40
                        mem[(4 * ceil32(return_data.size)) + 388] = 'UniswapV2Library: INSUFFICIENT_L'
                        mem[(4 * ceil32(return_data.size)) + 420] = 'IQUIDITY'
                        revert with memory
                          from (4 * ceil32(return_data.size)) + 320
                           len (5 * ceil32(return_data.size)) + 132
                    if arg5:
                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                            mem[(4 * ceil32(return_data.size)) + 320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + 324] = 32
                            mem[(4 * ceil32(return_data.size)) + 356] = 40
                            mem[(4 * ceil32(return_data.size)) + 388] = 'UniswapV2Library: INSUFFICIENT_L'
                            mem[(4 * ceil32(return_data.size)) + 420] = 'IQUIDITY'
                            revert with memory
                              from (4 * ceil32(return_data.size)) + 320
                               len (5 * ceil32(return_data.size)) + 132
                        if not mem[ceil32(return_data.size) + 242 len 14]:
                            if (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) + 1 > Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if Mask(112, 0, ext_call.return_data[0]) < (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) + 1:
                                revert with 'NH{q', 17
                            if not Mask(112, 0, ext_call.return_data[0]) + -(1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) - 1:
                                revert with 'NH{q', 18
                            if Mask(112, 0, ext_call.return_data[0]) + -(1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) - 1 and arg1 > -1 / Mask(112, 0, ext_call.return_data[0]) + -(1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) - 1:
                                revert with 'NH{q', 17
                            if not Mask(112, 0, ext_call.return_data[0]) + -(1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) - 1:
                                revert with 'NH{q', 18
                            if -arg1 + (Mask(112, 0, ext_call.return_data[0]) * arg1) - (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * arg1) / Mask(112, 0, ext_call.return_data[0]) + -(1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) - 1 != arg1:
                                mem[(4 * ceil32(return_data.size)) + 384] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + 388] = 32
                                mem[(4 * ceil32(return_data.size)) + 420] = 33
                                mem[(4 * ceil32(return_data.size)) + 452] = 'SafeMath: multiplication overflo'
                                mem[(4 * ceil32(return_data.size)) + 484] = 'w'
                                revert with memory
                                  from (4 * ceil32(return_data.size)) + 384
                                   len (5 * ceil32(return_data.size)) + 132
                            if not -arg1 + (Mask(112, 0, ext_call.return_data[0]) * arg1) - (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * arg1):
                                revert with 'NH{q', 18
                            if 0 / -arg1 + (Mask(112, 0, ext_call.return_data[0]) * arg1) - (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * arg1) > -2:
                                revert with 'NH{q', 17
                            if (0 / -arg1 + (Mask(112, 0, ext_call.return_data[0]) * arg1) - (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * arg1)) + 1 < 0 / -arg1 + (Mask(112, 0, ext_call.return_data[0]) * arg1) - (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * arg1):
                                mem[(4 * ceil32(return_data.size)) + 384] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + 388] = 32
                                mem[(4 * ceil32(return_data.size)) + 420] = 27
                                mem[(4 * ceil32(return_data.size)) + 452] = 'SafeMath: addition overflow'
                                revert with memory
                                  from (4 * ceil32(return_data.size)) + 384
                                   len (5 * ceil32(return_data.size)) + 100
                            mem[(4 * ceil32(return_data.size)) + 416] = (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) + 1
                            mem[(4 * ceil32(return_data.size)) + 448] = (0 / -arg1 + (Mask(112, 0, ext_call.return_data[0]) * arg1) - (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * arg1)) + 1
                        else:
                            if mem[ceil32(return_data.size) + 242 len 14] and (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) + 1 > -1 / mem[ceil32(return_data.size) + 242 len 14]:
                                revert with 'NH{q', 17
                            if not mem[ceil32(return_data.size) + 242 len 14]:
                                revert with 'NH{q', 18
                            if mem[ceil32(return_data.size) + 242 len 14] + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * mem[ceil32(return_data.size) + 242 len 14]) / mem[ceil32(return_data.size) + 242 len 14] != (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) + 1:
                                mem[(4 * ceil32(return_data.size)) + 320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + 324] = 32
                                mem[(4 * ceil32(return_data.size)) + 356] = 33
                                mem[(4 * ceil32(return_data.size)) + 388] = 'SafeMath: multiplication overflo'
                                mem[(4 * ceil32(return_data.size)) + 420] = 'w'
                                revert with memory
                                  from (4 * ceil32(return_data.size)) + 320
                                   len (5 * ceil32(return_data.size)) + 132
                            if not mem[ceil32(return_data.size) + 242 len 14] + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * mem[ceil32(return_data.size) + 242 len 14]):
                                if (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) + 1 > Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if Mask(112, 0, ext_call.return_data[0]) < (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) + 1:
                                    revert with 'NH{q', 17
                                if not Mask(112, 0, ext_call.return_data[0]) + -(1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) - 1:
                                    revert with 'NH{q', 18
                                if Mask(112, 0, ext_call.return_data[0]) + -(1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) - 1 and arg1 > -1 / Mask(112, 0, ext_call.return_data[0]) + -(1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) - 1:
                                    revert with 'NH{q', 17
                                if not Mask(112, 0, ext_call.return_data[0]) + -(1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) - 1:
                                    revert with 'NH{q', 18
                                if -arg1 + (Mask(112, 0, ext_call.return_data[0]) * arg1) - (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * arg1) / Mask(112, 0, ext_call.return_data[0]) + -(1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) - 1 != arg1:
                                    mem[(4 * ceil32(return_data.size)) + 384] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(4 * ceil32(return_data.size)) + 388] = 32
                                    mem[(4 * ceil32(return_data.size)) + 420] = 33
                                    mem[(4 * ceil32(return_data.size)) + 452] = 'SafeMath: multiplication overflo'
                                    mem[(4 * ceil32(return_data.size)) + 484] = 'w'
                                    revert with memory
                                      from (4 * ceil32(return_data.size)) + 384
                                       len (5 * ceil32(return_data.size)) + 132
                                if not -arg1 + (Mask(112, 0, ext_call.return_data[0]) * arg1) - (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * arg1):
                                    revert with 'NH{q', 18
                                if 0 / -arg1 + (Mask(112, 0, ext_call.return_data[0]) * arg1) - (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * arg1) > -2:
                                    revert with 'NH{q', 17
                                if (0 / -arg1 + (Mask(112, 0, ext_call.return_data[0]) * arg1) - (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * arg1)) + 1 < 0 / -arg1 + (Mask(112, 0, ext_call.return_data[0]) * arg1) - (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * arg1):
                                    mem[(4 * ceil32(return_data.size)) + 384] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(4 * ceil32(return_data.size)) + 388] = 32
                                    mem[(4 * ceil32(return_data.size)) + 420] = 27
                                    mem[(4 * ceil32(return_data.size)) + 452] = 'SafeMath: addition overflow'
                                    revert with memory
                                      from (4 * ceil32(return_data.size)) + 384
                                       len (5 * ceil32(return_data.size)) + 100
                                mem[(4 * ceil32(return_data.size)) + 416] = (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) + 1
                                mem[(4 * ceil32(return_data.size)) + 448] = (0 / -arg1 + (Mask(112, 0, ext_call.return_data[0]) * arg1) - (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * arg1)) + 1
                            else:
                                if mem[ceil32(return_data.size) + 242 len 14] + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * mem[ceil32(return_data.size) + 242 len 14]) and 1000 > -1 / mem[ceil32(return_data.size) + 242 len 14] + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * mem[ceil32(return_data.size) + 242 len 14]):
                                    revert with 'NH{q', 17
                                if not mem[ceil32(return_data.size) + 242 len 14] + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * mem[ceil32(return_data.size) + 242 len 14]):
                                    revert with 'NH{q', 18
                                if (1000 * mem[ceil32(return_data.size) + 242 len 14]) + (1000 * 1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * mem[ceil32(return_data.size) + 242 len 14]) / mem[ceil32(return_data.size) + 242 len 14] + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * mem[ceil32(return_data.size) + 242 len 14]) != 1000:
                                    mem[(4 * ceil32(return_data.size)) + 320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(4 * ceil32(return_data.size)) + 324] = 32
                                    mem[(4 * ceil32(return_data.size)) + 356] = 33
                                    mem[(4 * ceil32(return_data.size)) + 388] = 'SafeMath: multiplication overflo'
                                    mem[(4 * ceil32(return_data.size)) + 420] = 'w'
                                    revert with memory
                                      from (4 * ceil32(return_data.size)) + 320
                                       len (5 * ceil32(return_data.size)) + 132
                                mem[(4 * ceil32(return_data.size)) + 320] = 30
                                mem[(4 * ceil32(return_data.size)) + 352] = 'SafeMath: subtraction overflow'
                                if (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) + 1 > Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if Mask(112, 0, ext_call.return_data[0]) < (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) + 1:
                                    revert with 'NH{q', 17
                                if not Mask(112, 0, ext_call.return_data[0]) + -(1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) - 1:
                                    revert with 'NH{q', 18
                                if Mask(112, 0, ext_call.return_data[0]) + -(1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) - 1 and arg1 > -1 / Mask(112, 0, ext_call.return_data[0]) + -(1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) - 1:
                                    revert with 'NH{q', 17
                                if not Mask(112, 0, ext_call.return_data[0]) + -(1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) - 1:
                                    revert with 'NH{q', 18
                                if -arg1 + (Mask(112, 0, ext_call.return_data[0]) * arg1) - (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * arg1) / Mask(112, 0, ext_call.return_data[0]) + -(1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) - 1 != arg1:
                                    mem[(4 * ceil32(return_data.size)) + 384] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(4 * ceil32(return_data.size)) + 388] = 32
                                    mem[(4 * ceil32(return_data.size)) + 420] = 33
                                    mem[(4 * ceil32(return_data.size)) + 452] = 'SafeMath: multiplication overflo'
                                    mem[(4 * ceil32(return_data.size)) + 484] = 'w'
                                    revert with memory
                                      from (4 * ceil32(return_data.size)) + 384
                                       len (5 * ceil32(return_data.size)) + 132
                                if not -arg1 + (Mask(112, 0, ext_call.return_data[0]) * arg1) - (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * arg1):
                                    revert with 'NH{q', 18
                                if (1000 * mem[ceil32(return_data.size) + 242 len 14]) + (1000 * 1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * mem[ceil32(return_data.size) + 242 len 14]) / -arg1 + (Mask(112, 0, ext_call.return_data[0]) * arg1) - (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * arg1) > -2:
                                    revert with 'NH{q', 17
                                if ((1000 * mem[ceil32(return_data.size) + 242 len 14]) + (1000 * 1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * mem[ceil32(return_data.size) + 242 len 14]) / -arg1 + (Mask(112, 0, ext_call.return_data[0]) * arg1) - (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * arg1)) + 1 < (1000 * mem[ceil32(return_data.size) + 242 len 14]) + (1000 * 1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * mem[ceil32(return_data.size) + 242 len 14]) / -arg1 + (Mask(112, 0, ext_call.return_data[0]) * arg1) - (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * arg1):
                                    mem[(4 * ceil32(return_data.size)) + 384] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(4 * ceil32(return_data.size)) + 388] = 32
                                    mem[(4 * ceil32(return_data.size)) + 420] = 27
                                    mem[(4 * ceil32(return_data.size)) + 452] = 'SafeMath: addition overflow'
                                    revert with memory
                                      from (4 * ceil32(return_data.size)) + 384
                                       len (5 * ceil32(return_data.size)) + 100
                                mem[(4 * ceil32(return_data.size)) + 416] = (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) + 1
                                mem[(4 * ceil32(return_data.size)) + 448] = ((1000 * mem[ceil32(return_data.size) + 242 len 14]) + (1000 * 1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * mem[ceil32(return_data.size) + 242 len 14]) / -arg1 + (Mask(112, 0, ext_call.return_data[0]) * arg1) - (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * arg1)) + 1
                    else:
                        if mem[ceil32(return_data.size) + 242 len 14] <= 0:
                            mem[(4 * ceil32(return_data.size)) + 320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + 324] = 32
                            mem[(4 * ceil32(return_data.size)) + 356] = 40
                            mem[(4 * ceil32(return_data.size)) + 388] = 'UniswapV2Library: INSUFFICIENT_L'
                            mem[(4 * ceil32(return_data.size)) + 420] = 'IQUIDITY'
                            revert with memory
                              from (4 * ceil32(return_data.size)) + 320
                               len (5 * ceil32(return_data.size)) + 132
                        if not mem[ceil32(return_data.size) + 242 len 14]:
                            mem[(4 * ceil32(return_data.size)) + 320] = 30
                            mem[(4 * ceil32(return_data.size)) + 352] = 'SafeMath: subtraction overflow'
                            if (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) + 1 > mem[ceil32(return_data.size) + 242 len 14]:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if mem[ceil32(return_data.size) + 242 len 14] < (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) + 1:
                                revert with 'NH{q', 17
                            if not mem[ceil32(return_data.size) + 242 len 14] + -(1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) - 1:
                                revert with 'NH{q', 18
                            if mem[ceil32(return_data.size) + 242 len 14] + -(1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) - 1 and arg1 > -1 / mem[ceil32(return_data.size) + 242 len 14] + -(1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) - 1:
                                revert with 'NH{q', 17
                            if not mem[ceil32(return_data.size) + 242 len 14] + -(1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) - 1:
                                revert with 'NH{q', 18
                            if -arg1 + (mem[ceil32(return_data.size) + 242 len 14] * arg1) - (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * arg1) / mem[ceil32(return_data.size) + 242 len 14] + -(1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) - 1 != arg1:
                                mem[(4 * ceil32(return_data.size)) + 384] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + 388] = 32
                                mem[(4 * ceil32(return_data.size)) + 420] = 33
                                mem[(4 * ceil32(return_data.size)) + 452] = 'SafeMath: multiplication overflo'
                                mem[(4 * ceil32(return_data.size)) + 484] = 'w'
                                revert with memory
                                  from (4 * ceil32(return_data.size)) + 384
                                   len (5 * ceil32(return_data.size)) + 132
                            if not -arg1 + (mem[ceil32(return_data.size) + 242 len 14] * arg1) - (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * arg1):
                                revert with 'NH{q', 18
                            if 0 / -arg1 + (mem[ceil32(return_data.size) + 242 len 14] * arg1) - (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * arg1) > -2:
                                revert with 'NH{q', 17
                            if (0 / -arg1 + (mem[ceil32(return_data.size) + 242 len 14] * arg1) - (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * arg1)) + 1 < 0 / -arg1 + (mem[ceil32(return_data.size) + 242 len 14] * arg1) - (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * arg1):
                                mem[(4 * ceil32(return_data.size)) + 384] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + 388] = 32
                                mem[(4 * ceil32(return_data.size)) + 420] = 27
                                mem[(4 * ceil32(return_data.size)) + 452] = 'SafeMath: addition overflow'
                                revert with memory
                                  from (4 * ceil32(return_data.size)) + 384
                                   len (5 * ceil32(return_data.size)) + 100
                            mem[(4 * ceil32(return_data.size)) + 416] = (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) + 1
                            mem[(4 * ceil32(return_data.size)) + 448] = (0 / -arg1 + (mem[ceil32(return_data.size) + 242 len 14] * arg1) - (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * arg1)) + 1
                        else:
                            if mem[ceil32(return_data.size) + 242 len 14] and (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) + 1 > -1 / mem[ceil32(return_data.size) + 242 len 14]:
                                revert with 'NH{q', 17
                            if not mem[ceil32(return_data.size) + 242 len 14]:
                                revert with 'NH{q', 18
                            if mem[ceil32(return_data.size) + 242 len 14] + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * mem[ceil32(return_data.size) + 242 len 14]) / mem[ceil32(return_data.size) + 242 len 14] != (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) + 1:
                                mem[(4 * ceil32(return_data.size)) + 320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + 324] = 32
                                mem[(4 * ceil32(return_data.size)) + 356] = 33
                                mem[(4 * ceil32(return_data.size)) + 388] = 'SafeMath: multiplication overflo'
                                mem[(4 * ceil32(return_data.size)) + 420] = 'w'
                                revert with memory
                                  from (4 * ceil32(return_data.size)) + 320
                                   len (5 * ceil32(return_data.size)) + 132
                            if not mem[ceil32(return_data.size) + 242 len 14] + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * mem[ceil32(return_data.size) + 242 len 14]):
                                mem[(4 * ceil32(return_data.size)) + 320] = 30
                                mem[(4 * ceil32(return_data.size)) + 352] = 'SafeMath: subtraction overflow'
                                if (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) + 1 > mem[ceil32(return_data.size) + 242 len 14]:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if mem[ceil32(return_data.size) + 242 len 14] < (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) + 1:
                                    revert with 'NH{q', 17
                                if not mem[ceil32(return_data.size) + 242 len 14] + -(1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) - 1:
                                    revert with 'NH{q', 18
                                if mem[ceil32(return_data.size) + 242 len 14] + -(1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) - 1 and arg1 > -1 / mem[ceil32(return_data.size) + 242 len 14] + -(1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) - 1:
                                    revert with 'NH{q', 17
                                if not mem[ceil32(return_data.size) + 242 len 14] + -(1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) - 1:
                                    revert with 'NH{q', 18
                                if -arg1 + (mem[ceil32(return_data.size) + 242 len 14] * arg1) - (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * arg1) / mem[ceil32(return_data.size) + 242 len 14] + -(1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) - 1 != arg1:
                                    mem[(4 * ceil32(return_data.size)) + 384] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(4 * ceil32(return_data.size)) + 388] = 32
                                    mem[(4 * ceil32(return_data.size)) + 420] = 33
                                    mem[(4 * ceil32(return_data.size)) + 452] = 'SafeMath: multiplication overflo'
                                    mem[(4 * ceil32(return_data.size)) + 484] = 'w'
                                    revert with memory
                                      from (4 * ceil32(return_data.size)) + 384
                                       len (5 * ceil32(return_data.size)) + 132
                                if not -arg1 + (mem[ceil32(return_data.size) + 242 len 14] * arg1) - (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * arg1):
                                    revert with 'NH{q', 18
                                if 0 / -arg1 + (mem[ceil32(return_data.size) + 242 len 14] * arg1) - (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * arg1) > -2:
                                    revert with 'NH{q', 17
                                if (0 / -arg1 + (mem[ceil32(return_data.size) + 242 len 14] * arg1) - (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * arg1)) + 1 < 0 / -arg1 + (mem[ceil32(return_data.size) + 242 len 14] * arg1) - (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * arg1):
                                    mem[(4 * ceil32(return_data.size)) + 384] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(4 * ceil32(return_data.size)) + 388] = 32
                                    mem[(4 * ceil32(return_data.size)) + 420] = 27
                                    mem[(4 * ceil32(return_data.size)) + 452] = 'SafeMath: addition overflow'
                                    revert with memory
                                      from (4 * ceil32(return_data.size)) + 384
                                       len (5 * ceil32(return_data.size)) + 100
                                mem[(4 * ceil32(return_data.size)) + 416] = (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) + 1
                                mem[(4 * ceil32(return_data.size)) + 448] = (0 / -arg1 + (mem[ceil32(return_data.size) + 242 len 14] * arg1) - (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * arg1)) + 1
                            else:
                                if mem[ceil32(return_data.size) + 242 len 14] + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * mem[ceil32(return_data.size) + 242 len 14]) and 1000 > -1 / mem[ceil32(return_data.size) + 242 len 14] + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * mem[ceil32(return_data.size) + 242 len 14]):
                                    revert with 'NH{q', 17
                                if not mem[ceil32(return_data.size) + 242 len 14] + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * mem[ceil32(return_data.size) + 242 len 14]):
                                    revert with 'NH{q', 18
                                if (1000 * mem[ceil32(return_data.size) + 242 len 14]) + (1000 * 1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * mem[ceil32(return_data.size) + 242 len 14]) / mem[ceil32(return_data.size) + 242 len 14] + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * mem[ceil32(return_data.size) + 242 len 14]) != 1000:
                                    mem[(4 * ceil32(return_data.size)) + 320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(4 * ceil32(return_data.size)) + 324] = 32
                                    mem[(4 * ceil32(return_data.size)) + 356] = 33
                                    mem[(4 * ceil32(return_data.size)) + 388] = 'SafeMath: multiplication overflo'
                                    mem[(4 * ceil32(return_data.size)) + 420] = 'w'
                                    revert with memory
                                      from (4 * ceil32(return_data.size)) + 320
                                       len (5 * ceil32(return_data.size)) + 132
                                mem[(4 * ceil32(return_data.size)) + 320] = 30
                                mem[(4 * ceil32(return_data.size)) + 352] = 'SafeMath: subtraction overflow'
                                if (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) + 1 > mem[ceil32(return_data.size) + 242 len 14]:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if mem[ceil32(return_data.size) + 242 len 14] < (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) + 1:
                                    revert with 'NH{q', 17
                                if not mem[ceil32(return_data.size) + 242 len 14] + -(1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) - 1:
                                    revert with 'NH{q', 18
                                if mem[ceil32(return_data.size) + 242 len 14] + -(1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) - 1 and arg1 > -1 / mem[ceil32(return_data.size) + 242 len 14] + -(1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) - 1:
                                    revert with 'NH{q', 17
                                if not mem[ceil32(return_data.size) + 242 len 14] + -(1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) - 1:
                                    revert with 'NH{q', 18
                                if -arg1 + (mem[ceil32(return_data.size) + 242 len 14] * arg1) - (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * arg1) / mem[ceil32(return_data.size) + 242 len 14] + -(1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) - 1 != arg1:
                                    mem[(4 * ceil32(return_data.size)) + 384] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(4 * ceil32(return_data.size)) + 388] = 32
                                    mem[(4 * ceil32(return_data.size)) + 420] = 33
                                    mem[(4 * ceil32(return_data.size)) + 452] = 'SafeMath: multiplication overflo'
                                    mem[(4 * ceil32(return_data.size)) + 484] = 'w'
                                    revert with memory
                                      from (4 * ceil32(return_data.size)) + 384
                                       len (5 * ceil32(return_data.size)) + 132
                                if not -arg1 + (mem[ceil32(return_data.size) + 242 len 14] * arg1) - (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * arg1):
                                    revert with 'NH{q', 18
                                if (1000 * mem[ceil32(return_data.size) + 242 len 14]) + (1000 * 1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * mem[ceil32(return_data.size) + 242 len 14]) / -arg1 + (mem[ceil32(return_data.size) + 242 len 14] * arg1) - (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * arg1) > -2:
                                    revert with 'NH{q', 17
                                if ((1000 * mem[ceil32(return_data.size) + 242 len 14]) + (1000 * 1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * mem[ceil32(return_data.size) + 242 len 14]) / -arg1 + (mem[ceil32(return_data.size) + 242 len 14] * arg1) - (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * arg1)) + 1 < (1000 * mem[ceil32(return_data.size) + 242 len 14]) + (1000 * 1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * mem[ceil32(return_data.size) + 242 len 14]) / -arg1 + (mem[ceil32(return_data.size) + 242 len 14] * arg1) - (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * arg1):
                                    mem[(4 * ceil32(return_data.size)) + 384] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(4 * ceil32(return_data.size)) + 388] = 32
                                    mem[(4 * ceil32(return_data.size)) + 420] = 27
                                    mem[(4 * ceil32(return_data.size)) + 452] = 'SafeMath: addition overflow'
                                    revert with memory
                                      from (4 * ceil32(return_data.size)) + 384
                                       len (5 * ceil32(return_data.size)) + 100
                                mem[(4 * ceil32(return_data.size)) + 416] = (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) + 1
                                mem[(4 * ceil32(return_data.size)) + 448] = ((1000 * mem[ceil32(return_data.size) + 242 len 14]) + (1000 * 1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * mem[ceil32(return_data.size) + 242 len 14]) / -arg1 + (mem[ceil32(return_data.size) + 242 len 14] * arg1) - (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * arg1)) + 1
                else:
                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                        mem[(4 * ceil32(return_data.size)) + 320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[(4 * ceil32(return_data.size)) + 324] = 32
                        mem[(4 * ceil32(return_data.size)) + 356] = 40
                        mem[(4 * ceil32(return_data.size)) + 388] = 'UniswapV2Library: INSUFFICIENT_L'
                        mem[(4 * ceil32(return_data.size)) + 420] = 'IQUIDITY'
                        revert with memory
                          from (4 * ceil32(return_data.size)) + 320
                           len (5 * ceil32(return_data.size)) + 132
                    if arg5:
                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                            mem[(4 * ceil32(return_data.size)) + 320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + 324] = 32
                            mem[(4 * ceil32(return_data.size)) + 356] = 40
                            mem[(4 * ceil32(return_data.size)) + 388] = 'UniswapV2Library: INSUFFICIENT_L'
                            mem[(4 * ceil32(return_data.size)) + 420] = 'IQUIDITY'
                            revert with memory
                              from (4 * ceil32(return_data.size)) + 320
                               len (5 * ceil32(return_data.size)) + 132
                        if not Mask(112, 0, ext_call.return_data[0]):
                            if (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) + 1 > Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if Mask(112, 0, ext_call.return_data[0]) < (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) + 1:
                                revert with 'NH{q', 17
                            if not Mask(112, 0, ext_call.return_data[0]) + -(1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) - 1:
                                revert with 'NH{q', 18
                            if Mask(112, 0, ext_call.return_data[0]) + -(1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) - 1 and arg1 > -1 / Mask(112, 0, ext_call.return_data[0]) + -(1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) - 1:
                                revert with 'NH{q', 17
                            if not Mask(112, 0, ext_call.return_data[0]) + -(1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) - 1:
                                revert with 'NH{q', 18
                            if -arg1 + (Mask(112, 0, ext_call.return_data[0]) * arg1) - (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * arg1) / Mask(112, 0, ext_call.return_data[0]) + -(1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) - 1 != arg1:
                                mem[(4 * ceil32(return_data.size)) + 384] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + 388] = 32
                                mem[(4 * ceil32(return_data.size)) + 420] = 33
                                mem[(4 * ceil32(return_data.size)) + 452] = 'SafeMath: multiplication overflo'
                                mem[(4 * ceil32(return_data.size)) + 484] = 'w'
                                revert with memory
                                  from (4 * ceil32(return_data.size)) + 384
                                   len (5 * ceil32(return_data.size)) + 132
                            if not -arg1 + (Mask(112, 0, ext_call.return_data[0]) * arg1) - (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * arg1):
                                revert with 'NH{q', 18
                            if 0 / -arg1 + (Mask(112, 0, ext_call.return_data[0]) * arg1) - (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * arg1) > -2:
                                revert with 'NH{q', 17
                            if (0 / -arg1 + (Mask(112, 0, ext_call.return_data[0]) * arg1) - (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * arg1)) + 1 < 0 / -arg1 + (Mask(112, 0, ext_call.return_data[0]) * arg1) - (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * arg1):
                                mem[(4 * ceil32(return_data.size)) + 384] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + 388] = 32
                                mem[(4 * ceil32(return_data.size)) + 420] = 27
                                mem[(4 * ceil32(return_data.size)) + 452] = 'SafeMath: addition overflow'
                                revert with memory
                                  from (4 * ceil32(return_data.size)) + 384
                                   len (5 * ceil32(return_data.size)) + 100
                            mem[(4 * ceil32(return_data.size)) + 416] = (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) + 1
                            mem[(4 * ceil32(return_data.size)) + 448] = (0 / -arg1 + (Mask(112, 0, ext_call.return_data[0]) * arg1) - (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * arg1)) + 1
                        else:
                            if Mask(112, 0, ext_call.return_data[0]) and (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) + 1 > -1 / Mask(112, 0, ext_call.return_data[0]):
                                revert with 'NH{q', 17
                            if not Mask(112, 0, ext_call.return_data[0]):
                                revert with 'NH{q', 18
                            if Mask(112, 0, ext_call.return_data[0]) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[0]) != (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) + 1:
                                mem[(4 * ceil32(return_data.size)) + 320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + 324] = 32
                                mem[(4 * ceil32(return_data.size)) + 356] = 33
                                mem[(4 * ceil32(return_data.size)) + 388] = 'SafeMath: multiplication overflo'
                                mem[(4 * ceil32(return_data.size)) + 420] = 'w'
                                revert with memory
                                  from (4 * ceil32(return_data.size)) + 320
                                   len (5 * ceil32(return_data.size)) + 132
                            if not Mask(112, 0, ext_call.return_data[0]) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * Mask(112, 0, ext_call.return_data[0])):
                                if (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) + 1 > Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if Mask(112, 0, ext_call.return_data[0]) < (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) + 1:
                                    revert with 'NH{q', 17
                                if not Mask(112, 0, ext_call.return_data[0]) + -(1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) - 1:
                                    revert with 'NH{q', 18
                                if Mask(112, 0, ext_call.return_data[0]) + -(1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) - 1 and arg1 > -1 / Mask(112, 0, ext_call.return_data[0]) + -(1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) - 1:
                                    revert with 'NH{q', 17
                                if not Mask(112, 0, ext_call.return_data[0]) + -(1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) - 1:
                                    revert with 'NH{q', 18
                                if -arg1 + (Mask(112, 0, ext_call.return_data[0]) * arg1) - (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * arg1) / Mask(112, 0, ext_call.return_data[0]) + -(1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) - 1 != arg1:
                                    mem[(4 * ceil32(return_data.size)) + 384] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(4 * ceil32(return_data.size)) + 388] = 32
                                    mem[(4 * ceil32(return_data.size)) + 420] = 33
                                    mem[(4 * ceil32(return_data.size)) + 452] = 'SafeMath: multiplication overflo'
                                    mem[(4 * ceil32(return_data.size)) + 484] = 'w'
                                    revert with memory
                                      from (4 * ceil32(return_data.size)) + 384
                                       len (5 * ceil32(return_data.size)) + 132
                                if not -arg1 + (Mask(112, 0, ext_call.return_data[0]) * arg1) - (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * arg1):
                                    revert with 'NH{q', 18
                                if 0 / -arg1 + (Mask(112, 0, ext_call.return_data[0]) * arg1) - (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * arg1) > -2:
                                    revert with 'NH{q', 17
                                if (0 / -arg1 + (Mask(112, 0, ext_call.return_data[0]) * arg1) - (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * arg1)) + 1 < 0 / -arg1 + (Mask(112, 0, ext_call.return_data[0]) * arg1) - (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * arg1):
                                    mem[(4 * ceil32(return_data.size)) + 384] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(4 * ceil32(return_data.size)) + 388] = 32
                                    mem[(4 * ceil32(return_data.size)) + 420] = 27
                                    mem[(4 * ceil32(return_data.size)) + 452] = 'SafeMath: addition overflow'
                                    revert with memory
                                      from (4 * ceil32(return_data.size)) + 384
                                       len (5 * ceil32(return_data.size)) + 100
                                mem[(4 * ceil32(return_data.size)) + 416] = (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) + 1
                                mem[(4 * ceil32(return_data.size)) + 448] = (0 / -arg1 + (Mask(112, 0, ext_call.return_data[0]) * arg1) - (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * arg1)) + 1
                            else:
                                if Mask(112, 0, ext_call.return_data[0]) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * Mask(112, 0, ext_call.return_data[0])) and 1000 > -1 / Mask(112, 0, ext_call.return_data[0]) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * Mask(112, 0, ext_call.return_data[0])):
                                    revert with 'NH{q', 17
                                if not Mask(112, 0, ext_call.return_data[0]) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * Mask(112, 0, ext_call.return_data[0])):
                                    revert with 'NH{q', 18
                                if (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * 1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[0]) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * Mask(112, 0, ext_call.return_data[0])) != 1000:
                                    mem[(4 * ceil32(return_data.size)) + 320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(4 * ceil32(return_data.size)) + 324] = 32
                                    mem[(4 * ceil32(return_data.size)) + 356] = 33
                                    mem[(4 * ceil32(return_data.size)) + 388] = 'SafeMath: multiplication overflo'
                                    mem[(4 * ceil32(return_data.size)) + 420] = 'w'
                                    revert with memory
                                      from (4 * ceil32(return_data.size)) + 320
                                       len (5 * ceil32(return_data.size)) + 132
                                if (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) + 1 > Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if Mask(112, 0, ext_call.return_data[0]) < (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) + 1:
                                    revert with 'NH{q', 17
                                if not Mask(112, 0, ext_call.return_data[0]) + -(1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) - 1:
                                    revert with 'NH{q', 18
                                if Mask(112, 0, ext_call.return_data[0]) + -(1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) - 1 and arg1 > -1 / Mask(112, 0, ext_call.return_data[0]) + -(1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) - 1:
                                    revert with 'NH{q', 17
                                if not Mask(112, 0, ext_call.return_data[0]) + -(1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) - 1:
                                    revert with 'NH{q', 18
                                if -arg1 + (Mask(112, 0, ext_call.return_data[0]) * arg1) - (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * arg1) / Mask(112, 0, ext_call.return_data[0]) + -(1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) - 1 != arg1:
                                    mem[(4 * ceil32(return_data.size)) + 384] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(4 * ceil32(return_data.size)) + 388] = 32
                                    mem[(4 * ceil32(return_data.size)) + 420] = 33
                                    mem[(4 * ceil32(return_data.size)) + 452] = 'SafeMath: multiplication overflo'
                                    mem[(4 * ceil32(return_data.size)) + 484] = 'w'
                                    revert with memory
                                      from (4 * ceil32(return_data.size)) + 384
                                       len (5 * ceil32(return_data.size)) + 132
                                if not -arg1 + (Mask(112, 0, ext_call.return_data[0]) * arg1) - (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * arg1):
                                    revert with 'NH{q', 18
                                if (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * 1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * Mask(112, 0, ext_call.return_data[0])) / -arg1 + (Mask(112, 0, ext_call.return_data[0]) * arg1) - (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * arg1) > -2:
                                    revert with 'NH{q', 17
                                if ((1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * 1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * Mask(112, 0, ext_call.return_data[0])) / -arg1 + (Mask(112, 0, ext_call.return_data[0]) * arg1) - (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * arg1)) + 1 < (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * 1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * Mask(112, 0, ext_call.return_data[0])) / -arg1 + (Mask(112, 0, ext_call.return_data[0]) * arg1) - (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * arg1):
                                    mem[(4 * ceil32(return_data.size)) + 384] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(4 * ceil32(return_data.size)) + 388] = 32
                                    mem[(4 * ceil32(return_data.size)) + 420] = 27
                                    mem[(4 * ceil32(return_data.size)) + 452] = 'SafeMath: addition overflow'
                                    revert with memory
                                      from (4 * ceil32(return_data.size)) + 384
                                       len (5 * ceil32(return_data.size)) + 100
                                mem[(4 * ceil32(return_data.size)) + 416] = (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) + 1
                                mem[(4 * ceil32(return_data.size)) + 448] = ((1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * 1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * Mask(112, 0, ext_call.return_data[0])) / -arg1 + (Mask(112, 0, ext_call.return_data[0]) * arg1) - (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * arg1)) + 1
                    else:
                        if mem[ceil32(return_data.size) + 242 len 14] <= 0:
                            mem[(4 * ceil32(return_data.size)) + 320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + 324] = 32
                            mem[(4 * ceil32(return_data.size)) + 356] = 40
                            mem[(4 * ceil32(return_data.size)) + 388] = 'UniswapV2Library: INSUFFICIENT_L'
                            mem[(4 * ceil32(return_data.size)) + 420] = 'IQUIDITY'
                            revert with memory
                              from (4 * ceil32(return_data.size)) + 320
                               len (5 * ceil32(return_data.size)) + 132
                        if not Mask(112, 0, ext_call.return_data[0]):
                            mem[(4 * ceil32(return_data.size)) + 320] = 30
                            mem[(4 * ceil32(return_data.size)) + 352] = 'SafeMath: subtraction overflow'
                            if (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) + 1 > mem[ceil32(return_data.size) + 242 len 14]:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if mem[ceil32(return_data.size) + 242 len 14] < (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) + 1:
                                revert with 'NH{q', 17
                            if not mem[ceil32(return_data.size) + 242 len 14] + -(1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) - 1:
                                revert with 'NH{q', 18
                            if mem[ceil32(return_data.size) + 242 len 14] + -(1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) - 1 and arg1 > -1 / mem[ceil32(return_data.size) + 242 len 14] + -(1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) - 1:
                                revert with 'NH{q', 17
                            if not mem[ceil32(return_data.size) + 242 len 14] + -(1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) - 1:
                                revert with 'NH{q', 18
                            if -arg1 + (mem[ceil32(return_data.size) + 242 len 14] * arg1) - (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * arg1) / mem[ceil32(return_data.size) + 242 len 14] + -(1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) - 1 != arg1:
                                mem[(4 * ceil32(return_data.size)) + 384] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + 388] = 32
                                mem[(4 * ceil32(return_data.size)) + 420] = 33
                                mem[(4 * ceil32(return_data.size)) + 452] = 'SafeMath: multiplication overflo'
                                mem[(4 * ceil32(return_data.size)) + 484] = 'w'
                                revert with memory
                                  from (4 * ceil32(return_data.size)) + 384
                                   len (5 * ceil32(return_data.size)) + 132
                            if not -arg1 + (mem[ceil32(return_data.size) + 242 len 14] * arg1) - (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * arg1):
                                revert with 'NH{q', 18
                            if 0 / -arg1 + (mem[ceil32(return_data.size) + 242 len 14] * arg1) - (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * arg1) > -2:
                                revert with 'NH{q', 17
                            if (0 / -arg1 + (mem[ceil32(return_data.size) + 242 len 14] * arg1) - (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * arg1)) + 1 < 0 / -arg1 + (mem[ceil32(return_data.size) + 242 len 14] * arg1) - (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * arg1):
                                mem[(4 * ceil32(return_data.size)) + 384] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + 388] = 32
                                mem[(4 * ceil32(return_data.size)) + 420] = 27
                                mem[(4 * ceil32(return_data.size)) + 452] = 'SafeMath: addition overflow'
                                revert with memory
                                  from (4 * ceil32(return_data.size)) + 384
                                   len (5 * ceil32(return_data.size)) + 100
                            mem[(4 * ceil32(return_data.size)) + 416] = (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) + 1
                            mem[(4 * ceil32(return_data.size)) + 448] = (0 / -arg1 + (mem[ceil32(return_data.size) + 242 len 14] * arg1) - (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * arg1)) + 1
                        else:
                            if Mask(112, 0, ext_call.return_data[0]) and (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) + 1 > -1 / Mask(112, 0, ext_call.return_data[0]):
                                revert with 'NH{q', 17
                            if not Mask(112, 0, ext_call.return_data[0]):
                                revert with 'NH{q', 18
                            if Mask(112, 0, ext_call.return_data[0]) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[0]) != (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) + 1:
                                mem[(4 * ceil32(return_data.size)) + 320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + 324] = 32
                                mem[(4 * ceil32(return_data.size)) + 356] = 33
                                mem[(4 * ceil32(return_data.size)) + 388] = 'SafeMath: multiplication overflo'
                                mem[(4 * ceil32(return_data.size)) + 420] = 'w'
                                revert with memory
                                  from (4 * ceil32(return_data.size)) + 320
                                   len (5 * ceil32(return_data.size)) + 132
                            if not Mask(112, 0, ext_call.return_data[0]) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * Mask(112, 0, ext_call.return_data[0])):
                                mem[(4 * ceil32(return_data.size)) + 320] = 30
                                mem[(4 * ceil32(return_data.size)) + 352] = 'SafeMath: subtraction overflow'
                                if (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) + 1 > mem[ceil32(return_data.size) + 242 len 14]:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if mem[ceil32(return_data.size) + 242 len 14] < (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) + 1:
                                    revert with 'NH{q', 17
                                if not mem[ceil32(return_data.size) + 242 len 14] + -(1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) - 1:
                                    revert with 'NH{q', 18
                                if mem[ceil32(return_data.size) + 242 len 14] + -(1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) - 1 and arg1 > -1 / mem[ceil32(return_data.size) + 242 len 14] + -(1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) - 1:
                                    revert with 'NH{q', 17
                                if not mem[ceil32(return_data.size) + 242 len 14] + -(1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) - 1:
                                    revert with 'NH{q', 18
                                if -arg1 + (mem[ceil32(return_data.size) + 242 len 14] * arg1) - (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * arg1) / mem[ceil32(return_data.size) + 242 len 14] + -(1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) - 1 != arg1:
                                    mem[(4 * ceil32(return_data.size)) + 384] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(4 * ceil32(return_data.size)) + 388] = 32
                                    mem[(4 * ceil32(return_data.size)) + 420] = 33
                                    mem[(4 * ceil32(return_data.size)) + 452] = 'SafeMath: multiplication overflo'
                                    mem[(4 * ceil32(return_data.size)) + 484] = 'w'
                                    revert with memory
                                      from (4 * ceil32(return_data.size)) + 384
                                       len (5 * ceil32(return_data.size)) + 132
                                if not -arg1 + (mem[ceil32(return_data.size) + 242 len 14] * arg1) - (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * arg1):
                                    revert with 'NH{q', 18
                                if 0 / -arg1 + (mem[ceil32(return_data.size) + 242 len 14] * arg1) - (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * arg1) > -2:
                                    revert with 'NH{q', 17
                                if (0 / -arg1 + (mem[ceil32(return_data.size) + 242 len 14] * arg1) - (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * arg1)) + 1 < 0 / -arg1 + (mem[ceil32(return_data.size) + 242 len 14] * arg1) - (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * arg1):
                                    mem[(4 * ceil32(return_data.size)) + 384] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(4 * ceil32(return_data.size)) + 388] = 32
                                    mem[(4 * ceil32(return_data.size)) + 420] = 27
                                    mem[(4 * ceil32(return_data.size)) + 452] = 'SafeMath: addition overflow'
                                    revert with memory
                                      from (4 * ceil32(return_data.size)) + 384
                                       len (5 * ceil32(return_data.size)) + 100
                                mem[(4 * ceil32(return_data.size)) + 416] = (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) + 1
                                mem[(4 * ceil32(return_data.size)) + 448] = (0 / -arg1 + (mem[ceil32(return_data.size) + 242 len 14] * arg1) - (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * arg1)) + 1
                            else:
                                if Mask(112, 0, ext_call.return_data[0]) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * Mask(112, 0, ext_call.return_data[0])) and 1000 > -1 / Mask(112, 0, ext_call.return_data[0]) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * Mask(112, 0, ext_call.return_data[0])):
                                    revert with 'NH{q', 17
                                if not Mask(112, 0, ext_call.return_data[0]) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * Mask(112, 0, ext_call.return_data[0])):
                                    revert with 'NH{q', 18
                                if (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * 1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[0]) + (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * Mask(112, 0, ext_call.return_data[0])) != 1000:
                                    mem[(4 * ceil32(return_data.size)) + 320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(4 * ceil32(return_data.size)) + 324] = 32
                                    mem[(4 * ceil32(return_data.size)) + 356] = 33
                                    mem[(4 * ceil32(return_data.size)) + 388] = 'SafeMath: multiplication overflo'
                                    mem[(4 * ceil32(return_data.size)) + 420] = 'w'
                                    revert with memory
                                      from (4 * ceil32(return_data.size)) + 320
                                       len (5 * ceil32(return_data.size)) + 132
                                mem[(4 * ceil32(return_data.size)) + 320] = 30
                                mem[(4 * ceil32(return_data.size)) + 352] = 'SafeMath: subtraction overflow'
                                if (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) + 1 > mem[ceil32(return_data.size) + 242 len 14]:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if mem[ceil32(return_data.size) + 242 len 14] < (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) + 1:
                                    revert with 'NH{q', 17
                                if not mem[ceil32(return_data.size) + 242 len 14] + -(1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) - 1:
                                    revert with 'NH{q', 18
                                if mem[ceil32(return_data.size) + 242 len 14] + -(1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) - 1 and arg1 > -1 / mem[ceil32(return_data.size) + 242 len 14] + -(1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) - 1:
                                    revert with 'NH{q', 17
                                if not mem[ceil32(return_data.size) + 242 len 14] + -(1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) - 1:
                                    revert with 'NH{q', 18
                                if -arg1 + (mem[ceil32(return_data.size) + 242 len 14] * arg1) - (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * arg1) / mem[ceil32(return_data.size) + 242 len 14] + -(1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) - 1 != arg1:
                                    mem[(4 * ceil32(return_data.size)) + 384] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(4 * ceil32(return_data.size)) + 388] = 32
                                    mem[(4 * ceil32(return_data.size)) + 420] = 33
                                    mem[(4 * ceil32(return_data.size)) + 452] = 'SafeMath: multiplication overflo'
                                    mem[(4 * ceil32(return_data.size)) + 484] = 'w'
                                    revert with memory
                                      from (4 * ceil32(return_data.size)) + 384
                                       len (5 * ceil32(return_data.size)) + 132
                                if not -arg1 + (mem[ceil32(return_data.size) + 242 len 14] * arg1) - (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * arg1):
                                    revert with 'NH{q', 18
                                if (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * 1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * Mask(112, 0, ext_call.return_data[0])) / -arg1 + (mem[ceil32(return_data.size) + 242 len 14] * arg1) - (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * arg1) > -2:
                                    revert with 'NH{q', 17
                                if ((1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * 1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * Mask(112, 0, ext_call.return_data[0])) / -arg1 + (mem[ceil32(return_data.size) + 242 len 14] * arg1) - (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * arg1)) + 1 < (1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * 1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * Mask(112, 0, ext_call.return_data[0])) / -arg1 + (mem[ceil32(return_data.size) + 242 len 14] * arg1) - (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * arg1):
                                    mem[(4 * ceil32(return_data.size)) + 384] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(4 * ceil32(return_data.size)) + 388] = 32
                                    mem[(4 * ceil32(return_data.size)) + 420] = 27
                                    mem[(4 * ceil32(return_data.size)) + 452] = 'SafeMath: addition overflow'
                                    revert with memory
                                      from (4 * ceil32(return_data.size)) + 384
                                       len (5 * ceil32(return_data.size)) + 100
                                mem[(4 * ceil32(return_data.size)) + 416] = (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1)) + 1
                                mem[(4 * ceil32(return_data.size)) + 448] = ((1000 * Mask(112, 0, ext_call.return_data[0])) + (1000 * 1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * Mask(112, 0, ext_call.return_data[0])) / -arg1 + (mem[ceil32(return_data.size) + 242 len 14] * arg1) - (1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (Mask(112, 0, ext_call.return_data[50 len 14]) * arg1) - (arg2 * arg1) * arg1)) + 1
        mem[(4 * ceil32(return_data.size)) + 480] = address(arg3)
        mem[(4 * ceil32(return_data.size)) + 512] = address(arg4)
        mem[(4 * ceil32(return_data.size)) + 544] = bool(arg5)
        mem[(4 * ceil32(return_data.size)) + 576] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
        mem[(4 * ceil32(return_data.size)) + 580] = 0
        mem[(4 * ceil32(return_data.size)) + 612] = arg2
        mem[(4 * ceil32(return_data.size)) + 644] = this.address
        mem[(4 * ceil32(return_data.size)) + 676] = 128
        mem[(4 * ceil32(return_data.size)) + 708] = (5 * ceil32(return_data.size)) + 160
        mem[(4 * ceil32(return_data.size)) + 740 len ceil32(5 * ceil32(return_data.size)) + 5] = mem[(4 * ceil32(return_data.size)) + 416 len ceil32(5 * ceil32(return_data.size)) + 5]
        if ceil32(5 * ceil32(return_data.size)) + 5 > (5 * ceil32(return_data.size)) + 160:
            mem[(10 * ceil32(return_data.size)) + 900] = 0
        require ext_code.size(address(arg4))
        call address(arg4).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
             gas gas_remaining wei
            args 0, arg2, address(this.address), 128, (5 * ceil32(return_data.size)) + 160, mem[(4 * ceil32(return_data.size)) + 740 len ceil32(5 * ceil32(return_data.size)) + 5]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(4 * ceil32(return_data.size)) + 580] = this.address
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0], mem[(6 * ceil32(return_data.size)) + 608 len 9 * ceil32(return_data.size)]
}



}
