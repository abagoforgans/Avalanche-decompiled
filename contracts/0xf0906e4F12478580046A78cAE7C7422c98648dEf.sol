contract main {




// =====================  Runtime code  =====================


#
#  - sub_6122c573(?)
#  - _fallback()
#
function uniswapV2Call(address arg1, uint256 arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require ceil32(arg4.length) + 128 >= 96 and ceil32(arg4.length) + 128 <= test266151307()
    mem[96] = arg4.length
    require arg4 + arg4.length + 36 <= calldata.size
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    require arg4.length >= 32
    _3 = mem[128]
    require mem[128] <= test266151307()
    require arg4.length - mem[128] >= 96
    require bool(ceil32(arg4.length) + 224 <= test266151307())
    mem[64] = ceil32(arg4.length) + 224
    _5 = mem[mem[128] + 128]
    require mem[mem[128] + 128] <= test266151307()
    require mem[128] + mem[mem[128] + 128] + 159 < arg4.length + 128
    _6 = mem[mem[128] + mem[mem[128] + 128] + 128]
    require mem[mem[128] + mem[mem[128] + 128] + 128] <= test266151307()
    require (32 * mem[mem[128] + mem[mem[128] + 128] + 128]) + 256 >= 224 and ceil32(arg4.length) + (32 * mem[mem[128] + mem[mem[128] + 128] + 128]) + 256 <= test266151307()
    mem[64] = ceil32(arg4.length) + (32 * mem[mem[128] + mem[mem[128] + 128] + 128]) + 256
    mem[ceil32(arg4.length) + 224] = mem[mem[128] + mem[mem[128] + 128] + 128]
    require arg4.length + 32 >= mem[128] + _5 + (32 * _6) + 64
    idx = 0
    s = mem[128] + _5 + 160
    t = ceil32(arg4.length) + 256
    while idx < _6:
        require mem[s] == bool(mem[s])
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[ceil32(arg4.length) + 128] = ceil32(arg4.length) + 224
    _910 = mem[_3 + 160]
    require mem[_3 + 160] <= test266151307()
    require _3 + mem[_3 + 160] + 159 < arg4.length + 128
    _912 = mem[_3 + mem[_3 + 160] + 128]
    require mem[_3 + mem[_3 + 160] + 128] <= test266151307()
    _913 = mem[64]
    require mem[64] + (32 * mem[_3 + mem[_3 + 160] + 128]) + 32 >= mem[64] and mem[64] + (32 * mem[_3 + mem[_3 + 160] + 128]) + 32 <= test266151307()
    mem[64] = mem[64] + (32 * mem[_3 + mem[_3 + 160] + 128]) + 32
    mem[_913] = mem[_3 + mem[_3 + 160] + 128]
    require arg4.length + 32 >= _3 + _910 + (32 * _912) + 64
    idx = 0
    s = _3 + _910 + 160
    t = _913 + 32
    while idx < _912:
        require mem[s] == mem[s + 12 len 20]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[ceil32(arg4.length) + 160] = _913
    _1813 = mem[_3 + 192]
    require mem[_3 + 192] <= test266151307()
    require _3 + mem[_3 + 192] + 159 < arg4.length + 128
    _1814 = mem[_3 + mem[_3 + 192] + 128]
    require mem[_3 + mem[_3 + 192] + 128] <= test266151307()
    _1815 = mem[64]
    require mem[64] + (32 * mem[_3 + mem[_3 + 192] + 128]) + 32 >= mem[64] and mem[64] + (32 * mem[_3 + mem[_3 + 192] + 128]) + 32 <= test266151307()
    mem[64] = mem[64] + (32 * mem[_3 + mem[_3 + 192] + 128]) + 32
    mem[_1815] = mem[_3 + mem[_3 + 192] + 128]
    require arg4.length + 32 >= _3 + _1813 + (32 * _1814) + 64
    mem[_1815 + 32 len 32 * _1814] = mem[_3 + _1813 + 160 len 32 * _1814]
    mem[ceil32(arg4.length) + 192] = _1815
    require 0 < mem[mem[ceil32(arg4.length) + 128]]
    require 0 < mem[_913]
    require 0 < mem[_1815]
    if mem[mem[ceil32(arg4.length) + 128] + 32]:
        _2725 = mem[_1815 + 32]
        _2729 = mem[64]
        mem[mem[64] + 36] = mem[_913 + 44 len 20]
        mem[mem[64] + 68] = _2725
        _2730 = mem[64]
        mem[mem[64]] = 68
        mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
        mem[64] = mem[64] + 164
        mem[_2729 + 100] = 32
        mem[_2729 + 132] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_2729 + 270 len 26]
        if not ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83):
            revert with 0, 'Address: call to non-contract'
        _2743 = mem[_2730]
        mem[_2729 + 164 len floor32(mem[_2730])] = mem[_2730 + 32 len floor32(mem[_2730])]
        mem[_2729 + floor32(mem[_2730]) + -(mem[_2730] % 32) + 196 len mem[_2730] % 32] = mem[_2730 + floor32(mem[_2730]) + -(mem[_2730] % 32) + 64 len mem[_2730] % 32]
        call 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 with:
             gas gas_remaining wei
            args mem[_2729 + 168 len _2743 - 4]
        if not return_data.size:
            if not ext_call.success:
                if mem[96]:
                    revert with memory
                      from 128
                       len mem[96]
                revert with 0, 'SafeERC20: low-level call failed'
            if not mem[96]:
                require 1 < mem[mem[ceil32(arg4.length) + 128]]
                require 0 < mem[_913]
                if mem[mem[ceil32(arg4.length) + 128] + 64]:
                    _3720 = mem[_913 + 32]
                    require 1 < mem[_1815]
                    _3754 = mem[_1815 + 64]
                    require 1 < mem[_913]
                    _3790 = mem[_913 + 64]
                    mem[_2729 + 196] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_2729 + 200] = 0
                    mem[_2729 + 232] = _3754
                    mem[_2729 + 264] = address(_3790)
                    mem[_2729 + 296] = 128
                    mem[_2729 + 328] = mem[_2729 + 164]
                    mem[_2729 + 360 len ceil32(mem[_2729 + 164])] = mem[_2729 + 196 len ceil32(mem[_2729 + 164])]
                    if ceil32(mem[_2729 + 164]) > mem[_2729 + 164]:
                        mem[_2729 + mem[_2729 + 164] + 360] = 0
                    require ext_code.size(address(_3720))
                    call address(_3720).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, _3754, address(_3790), 128, mem[_2729 + 164], mem[_2729 + 360 len ceil32(mem[_2729 + 164])]
                else:
                    _3723 = mem[_913 + 32]
                    require 1 < mem[_1815]
                    _3757 = mem[_1815 + 64]
                    require 1 < mem[_913]
                    _3791 = mem[_913 + 64]
                    mem[_2729 + 196] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_2729 + 200] = _3757
                    mem[_2729 + 232] = 0
                    mem[_2729 + 264] = address(_3791)
                    mem[_2729 + 296] = 128
                    mem[_2729 + 328] = mem[_2729 + 164]
                    mem[_2729 + 360 len ceil32(mem[_2729 + 164])] = mem[_2729 + 196 len ceil32(mem[_2729 + 164])]
                    if ceil32(mem[_2729 + 164]) > mem[_2729 + 164]:
                        mem[_2729 + mem[_2729 + 164] + 360] = 0
                    require ext_code.size(address(_3723))
                    call address(_3723).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args _3757, 0, address(_3791), 128, mem[_2729 + 164], mem[_2729 + 360 len ceil32(mem[_2729 + 164])]
            else:
                require mem[96] >= 32
                if not mem[128]:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[_2729 + 274 len 22]
                require 1 < mem[mem[ceil32(arg4.length) + 128]]
                require 0 < mem[_913]
                if mem[mem[ceil32(arg4.length) + 128] + 64]:
                    _3792 = mem[_913 + 32]
                    require 1 < mem[_1815]
                    _3824 = mem[_1815 + 64]
                    require 1 < mem[_913]
                    _3848 = mem[_913 + 64]
                    mem[_2729 + 196] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_2729 + 200] = 0
                    mem[_2729 + 232] = _3824
                    mem[_2729 + 264] = address(_3848)
                    mem[_2729 + 296] = 128
                    mem[_2729 + 328] = mem[_2729 + 164]
                    mem[_2729 + 360 len ceil32(mem[_2729 + 164])] = mem[_2729 + 196 len ceil32(mem[_2729 + 164])]
                    if ceil32(mem[_2729 + 164]) > mem[_2729 + 164]:
                        mem[_2729 + mem[_2729 + 164] + 360] = 0
                    require ext_code.size(address(_3792))
                    call address(_3792).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, _3824, address(_3848), 128, mem[_2729 + 164], mem[_2729 + 360 len ceil32(mem[_2729 + 164])]
                else:
                    _3795 = mem[_913 + 32]
                    require 1 < mem[_1815]
                    _3827 = mem[_1815 + 64]
                    require 1 < mem[_913]
                    _3849 = mem[_913 + 64]
                    mem[_2729 + 196] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_2729 + 200] = _3827
                    mem[_2729 + 232] = 0
                    mem[_2729 + 264] = address(_3849)
                    mem[_2729 + 296] = 128
                    mem[_2729 + 328] = mem[_2729 + 164]
                    mem[_2729 + 360 len ceil32(mem[_2729 + 164])] = mem[_2729 + 196 len ceil32(mem[_2729 + 164])]
                    if ceil32(mem[_2729 + 164]) > mem[_2729 + 164]:
                        mem[_2729 + mem[_2729 + 164] + 360] = 0
                    require ext_code.size(address(_3795))
                    call address(_3795).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args _3827, 0, address(_3849), 128, mem[_2729 + 164], mem[_2729 + 360 len ceil32(mem[_2729 + 164])]
        else:
            mem[64] = _2729 + ceil32(return_data.size) + 165
            mem[_2729 + 164] = return_data.size
            mem[_2729 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if not return_data.size:
                require 1 < mem[mem[ceil32(arg4.length) + 128]]
                require 0 < mem[_913]
                if mem[mem[ceil32(arg4.length) + 128] + 64]:
                    _3727 = mem[_913 + 32]
                    require 1 < mem[_1815]
                    _3764 = mem[_1815 + 64]
                    require 1 < mem[_913]
                    _3798 = mem[_913 + 64]
                    mem[_2729 + ceil32(return_data.size) + 197] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_2729 + ceil32(return_data.size) + 201] = 0
                    mem[_2729 + ceil32(return_data.size) + 233] = _3764
                    mem[_2729 + ceil32(return_data.size) + 265] = address(_3798)
                    mem[_2729 + ceil32(return_data.size) + 297] = 128
                    mem[_2729 + ceil32(return_data.size) + 329] = mem[_2729 + ceil32(return_data.size) + 165]
                    mem[_2729 + ceil32(return_data.size) + 361 len ceil32(mem[_2729 + ceil32(return_data.size) + 165])] = mem[_2729 + ceil32(return_data.size) + 197 len ceil32(mem[_2729 + ceil32(return_data.size) + 165])]
                    if ceil32(mem[_2729 + ceil32(return_data.size) + 165]) > mem[_2729 + ceil32(return_data.size) + 165]:
                        mem[_2729 + ceil32(return_data.size) + mem[_2729 + ceil32(return_data.size) + 165] + 361] = 0
                    require ext_code.size(address(_3727))
                    call address(_3727).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, _3764, address(_3798), 128, mem[_2729 + ceil32(return_data.size) + 165], mem[_2729 + ceil32(return_data.size) + 361 len ceil32(mem[_2729 + ceil32(return_data.size) + 165])]
                else:
                    _3730 = mem[_913 + 32]
                    require 1 < mem[_1815]
                    _3767 = mem[_1815 + 64]
                    require 1 < mem[_913]
                    _3799 = mem[_913 + 64]
                    mem[_2729 + ceil32(return_data.size) + 197] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_2729 + ceil32(return_data.size) + 201] = _3767
                    mem[_2729 + ceil32(return_data.size) + 233] = 0
                    mem[_2729 + ceil32(return_data.size) + 265] = address(_3799)
                    mem[_2729 + ceil32(return_data.size) + 297] = 128
                    mem[_2729 + ceil32(return_data.size) + 329] = mem[_2729 + ceil32(return_data.size) + 165]
                    mem[_2729 + ceil32(return_data.size) + 361 len ceil32(mem[_2729 + ceil32(return_data.size) + 165])] = mem[_2729 + ceil32(return_data.size) + 197 len ceil32(mem[_2729 + ceil32(return_data.size) + 165])]
                    if ceil32(mem[_2729 + ceil32(return_data.size) + 165]) > mem[_2729 + ceil32(return_data.size) + 165]:
                        mem[_2729 + ceil32(return_data.size) + mem[_2729 + ceil32(return_data.size) + 165] + 361] = 0
                    require ext_code.size(address(_3730))
                    call address(_3730).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args _3767, 0, address(_3799), 128, mem[_2729 + ceil32(return_data.size) + 165], mem[_2729 + ceil32(return_data.size) + 361 len ceil32(mem[_2729 + ceil32(return_data.size) + 165])]
            else:
                require return_data.size >= 32
                if not mem[_2729 + 196]:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[_2729 + ceil32(return_data.size) + 275 len 22]
                require 1 < mem[mem[ceil32(arg4.length) + 128]]
                require 0 < mem[_913]
                if mem[mem[ceil32(arg4.length) + 128] + 64]:
                    _3800 = mem[_913 + 32]
                    require 1 < mem[_1815]
                    _3832 = mem[_1815 + 64]
                    require 1 < mem[_913]
                    _3852 = mem[_913 + 64]
                    mem[_2729 + ceil32(return_data.size) + 197] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_2729 + ceil32(return_data.size) + 201] = 0
                    mem[_2729 + ceil32(return_data.size) + 233] = _3832
                    mem[_2729 + ceil32(return_data.size) + 265] = address(_3852)
                    mem[_2729 + ceil32(return_data.size) + 297] = 128
                    mem[_2729 + ceil32(return_data.size) + 329] = mem[_2729 + ceil32(return_data.size) + 165]
                    mem[_2729 + ceil32(return_data.size) + 361 len ceil32(mem[_2729 + ceil32(return_data.size) + 165])] = mem[_2729 + ceil32(return_data.size) + 197 len ceil32(mem[_2729 + ceil32(return_data.size) + 165])]
                    if ceil32(mem[_2729 + ceil32(return_data.size) + 165]) > mem[_2729 + ceil32(return_data.size) + 165]:
                        mem[_2729 + ceil32(return_data.size) + mem[_2729 + ceil32(return_data.size) + 165] + 361] = 0
                    require ext_code.size(address(_3800))
                    call address(_3800).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, _3832, address(_3852), 128, mem[_2729 + ceil32(return_data.size) + 165], mem[_2729 + ceil32(return_data.size) + 361 len ceil32(mem[_2729 + ceil32(return_data.size) + 165])]
                else:
                    _3803 = mem[_913 + 32]
                    require 1 < mem[_1815]
                    _3835 = mem[_1815 + 64]
                    require 1 < mem[_913]
                    _3853 = mem[_913 + 64]
                    mem[_2729 + ceil32(return_data.size) + 197] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_2729 + ceil32(return_data.size) + 201] = _3835
                    mem[_2729 + ceil32(return_data.size) + 233] = 0
                    mem[_2729 + ceil32(return_data.size) + 265] = address(_3853)
                    mem[_2729 + ceil32(return_data.size) + 297] = 128
                    mem[_2729 + ceil32(return_data.size) + 329] = mem[_2729 + ceil32(return_data.size) + 165]
                    mem[_2729 + ceil32(return_data.size) + 361 len ceil32(mem[_2729 + ceil32(return_data.size) + 165])] = mem[_2729 + ceil32(return_data.size) + 197 len ceil32(mem[_2729 + ceil32(return_data.size) + 165])]
                    if ceil32(mem[_2729 + ceil32(return_data.size) + 165]) > mem[_2729 + ceil32(return_data.size) + 165]:
                        mem[_2729 + ceil32(return_data.size) + mem[_2729 + ceil32(return_data.size) + 165] + 361] = 0
                    require ext_code.size(address(_3803))
                    call address(_3803).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args _3835, 0, address(_3853), 128, mem[_2729 + ceil32(return_data.size) + 165], mem[_2729 + ceil32(return_data.size) + 361 len ceil32(mem[_2729 + ceil32(return_data.size) + 165])]
    else:
        _2724 = mem[_1815 + 32]
        _2726 = mem[64]
        mem[mem[64] + 36] = mem[_913 + 44 len 20]
        mem[mem[64] + 68] = _2724
        _2727 = mem[64]
        mem[mem[64]] = 68
        mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
        mem[64] = mem[64] + 164
        mem[_2726 + 100] = 32
        mem[_2726 + 132] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_2726 + 270 len 26]
        if not ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83):
            revert with 0, 'Address: call to non-contract'
        _2739 = mem[_2727]
        mem[_2726 + 164 len floor32(mem[_2727])] = mem[_2727 + 32 len floor32(mem[_2727])]
        mem[_2726 + floor32(mem[_2727]) + -(mem[_2727] % 32) + 196 len mem[_2727] % 32] = mem[_2727 + floor32(mem[_2727]) + -(mem[_2727] % 32) + 64 len mem[_2727] % 32]
        call 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 with:
             gas gas_remaining wei
            args mem[_2726 + 168 len _2739 - 4]
        if not return_data.size:
            if not ext_call.success:
                if mem[96]:
                    revert with memory
                      from 128
                       len mem[96]
                revert with 0, 'SafeERC20: low-level call failed'
            if not mem[96]:
                require 1 < mem[mem[ceil32(arg4.length) + 128]]
                require 0 < mem[_913]
                if mem[mem[ceil32(arg4.length) + 128] + 64]:
                    _3706 = mem[_913 + 32]
                    require 1 < mem[_1815]
                    _3734 = mem[_1815 + 64]
                    require 1 < mem[_913]
                    _3774 = mem[_913 + 64]
                    mem[64] = _2726 + 196
                    mem[_2726 + 196] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_2726 + 200] = 0
                    mem[_2726 + 232] = _3734
                    mem[_2726 + 264] = address(_3774)
                    mem[_2726 + 296] = 128
                    mem[_2726 + 328] = mem[_2726 + 164]
                    mem[_2726 + 360 len ceil32(mem[_2726 + 164])] = mem[_2726 + 196 len ceil32(mem[_2726 + 164])]
                    if ceil32(mem[_2726 + 164]) > mem[_2726 + 164]:
                        mem[_2726 + mem[_2726 + 164] + 360] = 0
                    require ext_code.size(address(_3706))
                    call address(_3706).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, _3734, address(_3774), 128, mem[_2726 + 164], mem[_2726 + 360 len ceil32(mem[_2726 + 164])]
                else:
                    _3709 = mem[_913 + 32]
                    require 1 < mem[_1815]
                    _3737 = mem[_1815 + 64]
                    require 1 < mem[_913]
                    _3775 = mem[_913 + 64]
                    mem[64] = _2726 + 196
                    mem[_2726 + 196] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_2726 + 200] = _3737
                    mem[_2726 + 232] = 0
                    mem[_2726 + 264] = address(_3775)
                    mem[_2726 + 296] = 128
                    mem[_2726 + 328] = mem[_2726 + 164]
                    mem[_2726 + 360 len ceil32(mem[_2726 + 164])] = mem[_2726 + 196 len ceil32(mem[_2726 + 164])]
                    if ceil32(mem[_2726 + 164]) > mem[_2726 + 164]:
                        mem[_2726 + mem[_2726 + 164] + 360] = 0
                    require ext_code.size(address(_3709))
                    call address(_3709).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args _3737, 0, address(_3775), 128, mem[_2726 + 164], mem[_2726 + 360 len ceil32(mem[_2726 + 164])]
            else:
                require mem[96] >= 32
                if not mem[128]:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[_2726 + 274 len 22]
                require 1 < mem[mem[ceil32(arg4.length) + 128]]
                require 0 < mem[_913]
                if mem[mem[ceil32(arg4.length) + 128] + 64]:
                    _3776 = mem[_913 + 32]
                    require 1 < mem[_1815]
                    _3808 = mem[_1815 + 64]
                    require 1 < mem[_913]
                    _3840 = mem[_913 + 64]
                    mem[64] = _2726 + 196
                    mem[_2726 + 196] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_2726 + 200] = 0
                    mem[_2726 + 232] = _3808
                    mem[_2726 + 264] = address(_3840)
                    mem[_2726 + 296] = 128
                    mem[_2726 + 328] = mem[_2726 + 164]
                    mem[_2726 + 360 len ceil32(mem[_2726 + 164])] = mem[_2726 + 196 len ceil32(mem[_2726 + 164])]
                    if ceil32(mem[_2726 + 164]) > mem[_2726 + 164]:
                        mem[_2726 + mem[_2726 + 164] + 360] = 0
                    require ext_code.size(address(_3776))
                    call address(_3776).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, _3808, address(_3840), 128, mem[_2726 + 164], mem[_2726 + 360 len ceil32(mem[_2726 + 164])]
                else:
                    _3779 = mem[_913 + 32]
                    require 1 < mem[_1815]
                    _3811 = mem[_1815 + 64]
                    require 1 < mem[_913]
                    _3841 = mem[_913 + 64]
                    mem[64] = _2726 + 196
                    mem[_2726 + 196] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_2726 + 200] = _3811
                    mem[_2726 + 232] = 0
                    mem[_2726 + 264] = address(_3841)
                    mem[_2726 + 296] = 128
                    mem[_2726 + 328] = mem[_2726 + 164]
                    mem[_2726 + 360 len ceil32(mem[_2726 + 164])] = mem[_2726 + 196 len ceil32(mem[_2726 + 164])]
                    if ceil32(mem[_2726 + 164]) > mem[_2726 + 164]:
                        mem[_2726 + mem[_2726 + 164] + 360] = 0
                    require ext_code.size(address(_3779))
                    call address(_3779).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args _3811, 0, address(_3841), 128, mem[_2726 + 164], mem[_2726 + 360 len ceil32(mem[_2726 + 164])]
        else:
            mem[64] = _2726 + ceil32(return_data.size) + 165
            mem[_2726 + 164] = return_data.size
            mem[_2726 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if not return_data.size:
                require 1 < mem[mem[ceil32(arg4.length) + 128]]
                require 0 < mem[_913]
                if mem[mem[ceil32(arg4.length) + 128] + 64]:
                    _3713 = mem[_913 + 32]
                    require 1 < mem[_1815]
                    _3744 = mem[_1815 + 64]
                    require 1 < mem[_913]
                    _3782 = mem[_913 + 64]
                    mem[64] = _2726 + ceil32(return_data.size) + 197
                    mem[_2726 + ceil32(return_data.size) + 197] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_2726 + ceil32(return_data.size) + 201] = 0
                    mem[_2726 + ceil32(return_data.size) + 233] = _3744
                    mem[_2726 + ceil32(return_data.size) + 265] = address(_3782)
                    mem[_2726 + ceil32(return_data.size) + 297] = 128
                    mem[_2726 + ceil32(return_data.size) + 329] = mem[_2726 + ceil32(return_data.size) + 165]
                    mem[_2726 + ceil32(return_data.size) + 361 len ceil32(mem[_2726 + ceil32(return_data.size) + 165])] = mem[_2726 + ceil32(return_data.size) + 197 len ceil32(mem[_2726 + ceil32(return_data.size) + 165])]
                    if ceil32(mem[_2726 + ceil32(return_data.size) + 165]) > mem[_2726 + ceil32(return_data.size) + 165]:
                        mem[_2726 + ceil32(return_data.size) + mem[_2726 + ceil32(return_data.size) + 165] + 361] = 0
                    require ext_code.size(address(_3713))
                    call address(_3713).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, _3744, address(_3782), 128, mem[_2726 + ceil32(return_data.size) + 165], mem[_2726 + ceil32(return_data.size) + 361 len ceil32(mem[_2726 + ceil32(return_data.size) + 165])]
                else:
                    _3716 = mem[_913 + 32]
                    require 1 < mem[_1815]
                    _3747 = mem[_1815 + 64]
                    require 1 < mem[_913]
                    _3783 = mem[_913 + 64]
                    mem[64] = _2726 + ceil32(return_data.size) + 197
                    mem[_2726 + ceil32(return_data.size) + 197] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_2726 + ceil32(return_data.size) + 201] = _3747
                    mem[_2726 + ceil32(return_data.size) + 233] = 0
                    mem[_2726 + ceil32(return_data.size) + 265] = address(_3783)
                    mem[_2726 + ceil32(return_data.size) + 297] = 128
                    mem[_2726 + ceil32(return_data.size) + 329] = mem[_2726 + ceil32(return_data.size) + 165]
                    mem[_2726 + ceil32(return_data.size) + 361 len ceil32(mem[_2726 + ceil32(return_data.size) + 165])] = mem[_2726 + ceil32(return_data.size) + 197 len ceil32(mem[_2726 + ceil32(return_data.size) + 165])]
                    if ceil32(mem[_2726 + ceil32(return_data.size) + 165]) > mem[_2726 + ceil32(return_data.size) + 165]:
                        mem[_2726 + ceil32(return_data.size) + mem[_2726 + ceil32(return_data.size) + 165] + 361] = 0
                    require ext_code.size(address(_3716))
                    call address(_3716).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args _3747, 0, address(_3783), 128, mem[_2726 + ceil32(return_data.size) + 165], mem[_2726 + ceil32(return_data.size) + 361 len ceil32(mem[_2726 + ceil32(return_data.size) + 165])]
            else:
                require return_data.size >= 32
                if not mem[_2726 + 196]:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[_2726 + ceil32(return_data.size) + 275 len 22]
                require 1 < mem[mem[ceil32(arg4.length) + 128]]
                require 0 < mem[_913]
                if mem[mem[ceil32(arg4.length) + 128] + 64]:
                    _3784 = mem[_913 + 32]
                    require 1 < mem[_1815]
                    _3816 = mem[_1815 + 64]
                    require 1 < mem[_913]
                    _3844 = mem[_913 + 64]
                    mem[64] = _2726 + ceil32(return_data.size) + 197
                    mem[_2726 + ceil32(return_data.size) + 197] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_2726 + ceil32(return_data.size) + 201] = 0
                    mem[_2726 + ceil32(return_data.size) + 233] = _3816
                    mem[_2726 + ceil32(return_data.size) + 265] = address(_3844)
                    mem[_2726 + ceil32(return_data.size) + 297] = 128
                    mem[_2726 + ceil32(return_data.size) + 329] = mem[_2726 + ceil32(return_data.size) + 165]
                    mem[_2726 + ceil32(return_data.size) + 361 len ceil32(mem[_2726 + ceil32(return_data.size) + 165])] = mem[_2726 + ceil32(return_data.size) + 197 len ceil32(mem[_2726 + ceil32(return_data.size) + 165])]
                    if ceil32(mem[_2726 + ceil32(return_data.size) + 165]) > mem[_2726 + ceil32(return_data.size) + 165]:
                        mem[_2726 + ceil32(return_data.size) + mem[_2726 + ceil32(return_data.size) + 165] + 361] = 0
                    require ext_code.size(address(_3784))
                    call address(_3784).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, _3816, address(_3844), 128, mem[_2726 + ceil32(return_data.size) + 165], mem[_2726 + ceil32(return_data.size) + 361 len ceil32(mem[_2726 + ceil32(return_data.size) + 165])]
                else:
                    _3787 = mem[_913 + 32]
                    require 1 < mem[_1815]
                    _3819 = mem[_1815 + 64]
                    require 1 < mem[_913]
                    _3845 = mem[_913 + 64]
                    mem[64] = _2726 + ceil32(return_data.size) + 197
                    mem[_2726 + ceil32(return_data.size) + 197] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_2726 + ceil32(return_data.size) + 201] = _3819
                    mem[_2726 + ceil32(return_data.size) + 233] = 0
                    mem[_2726 + ceil32(return_data.size) + 265] = address(_3845)
                    mem[_2726 + ceil32(return_data.size) + 297] = 128
                    mem[_2726 + ceil32(return_data.size) + 329] = mem[_2726 + ceil32(return_data.size) + 165]
                    mem[_2726 + ceil32(return_data.size) + 361 len ceil32(mem[_2726 + ceil32(return_data.size) + 165])] = mem[_2726 + ceil32(return_data.size) + 197 len ceil32(mem[_2726 + ceil32(return_data.size) + 165])]
                    if ceil32(mem[_2726 + ceil32(return_data.size) + 165]) > mem[_2726 + ceil32(return_data.size) + 165]:
                        mem[_2726 + ceil32(return_data.size) + mem[_2726 + ceil32(return_data.size) + 165] + 361] = 0
                    require ext_code.size(address(_3787))
                    call address(_3787).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args _3819, 0, address(_3845), 128, mem[_2726 + ceil32(return_data.size) + 165], mem[_2726 + ceil32(return_data.size) + 361 len ceil32(mem[_2726 + ceil32(return_data.size) + 165])]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require 2 < mem[mem[ceil32(arg4.length) + 128]]
        require 1 < mem[_913]
        require 2 < mem[_1815]
        require 2 < mem[_913]
        require ext_code.size(mem[_913 + 76 len 20])
        if mem[mem[ceil32(arg4.length) + 128] + 96]:
            call mem[_913 + 76 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 0, mem[_1815 + 96], address(mem[_913 + 96]), 128, 0
        else:
            call mem[_913 + 76 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args mem[_1815 + 96], 0, address(mem[_913 + 96]), 128, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
