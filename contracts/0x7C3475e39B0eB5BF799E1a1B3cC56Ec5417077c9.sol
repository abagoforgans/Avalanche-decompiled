contract main {




// =====================  Runtime code  =====================


const PRECISION = 10^18


function _fallback() payable {
    revert
}

function getState(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    staticcall arg1.getTradeInfo() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[82 len 14]
    require ext_call.return_data[96] == ext_call.return_data[114 len 14]
    return 0, 
           ext_call.return_data[32] << 144,
           ext_call.return_data[64] << 144,
           ext_call.return_data[96] << 144,
           ext_call.return_data[128],
           block.number
}

function sub_6e505263(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 4).length
    mem[64] = (32 * ('cd', 4).length) + 128
    if not ('cd', 4).length:
        idx = 0
        while idx < ('cd', 4).length:
            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
            _56 = mem[64]
            mem[64] = mem[64] + 192
            mem[_56] = 0
            mem[_56 + 32] = 0
            mem[_56 + 64] = 0
            mem[_56 + 96] = 0
            mem[_56 + 128] = 0
            mem[_56 + 160] = block.number
            staticcall address(cd[((32 * idx) + cd[4] + 36)]).getTradeInfo() with:
                    gas gas_remaining wei
            mem[mem[64] len 160] = ext_call.return_data[0 len 160]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _67 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 160
            _68 = mem[_67]
            require mem[_67] == mem[_67 + 18 len 14]
            _73 = mem[_67 + 32]
            require mem[_67 + 32] == mem[_67 + 50 len 14]
            _75 = mem[_67 + 64]
            require mem[_67 + 64] == mem[_67 + 82 len 14]
            _77 = mem[_67 + 96]
            require mem[_67 + 96] == mem[_67 + 114 len 14]
            mem[_56 + 128] = mem[_67 + 128]
            mem[_56 + 96] = Mask(112, 0, _77)
            mem[_56 + 64] = Mask(112, 0, _75)
            mem[_56 + 32] = Mask(112, 0, _73)
            mem[_56] = Mask(112, 0, _68)
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = _56
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _44 = mem[64]
        mem[mem[64]] = 32
        _45 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = mem[64] + 64
        t = 128
        while idx < _45:
            _85 = mem[t]
            mem[s] = mem[mem[t] + 18 len 14]
            mem[s + 32] = mem[_85 + 50 len 14]
            mem[s + 64] = mem[_85 + 82 len 14]
            mem[s + 96] = mem[_85 + 114 len 14]
            mem[s + 128] = mem[_85 + 128]
            mem[s + 160] = mem[_85 + 160]
            idx = idx + 1
            s = s + 192
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _44 + (192 * _45) + -mem[64] + 64
    mem[64] = (32 * ('cd', 4).length) + 320
    mem[(32 * ('cd', 4).length) + 128] = 0
    mem[(32 * ('cd', 4).length) + 160] = 0
    mem[(32 * ('cd', 4).length) + 192] = 0
    mem[(32 * ('cd', 4).length) + 224] = 0
    mem[(32 * ('cd', 4).length) + 256] = 0
    mem[(32 * ('cd', 4).length) + 288] = 0
    mem[var17001] = (32 * ('cd', 4).length) + 128
    s = var17001
    idx = var17002
    while idx - 1:
        mem[64] = mem[64] + 192
        mem[(32 * ('cd', 4).length) + 128] = 0
        mem[(32 * ('cd', 4).length) + 160] = 0
        mem[(32 * ('cd', 4).length) + 192] = 0
        mem[(32 * ('cd', 4).length) + 224] = 0
        mem[(32 * ('cd', 4).length) + 256] = 0
        mem[(32 * ('cd', 4).length) + 288] = 0
        mem[s + 32] = (32 * ('cd', 4).length) + 128
        s = s + 32
        idx = idx - 1
        continue 
    idx = 0
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        _123 = mem[64]
        mem[64] = mem[64] + 192
        mem[_123] = 0
        mem[_123 + 32] = 0
        mem[_123 + 64] = 0
        mem[_123 + 96] = 0
        mem[_123 + 128] = 0
        mem[_123 + 160] = block.number
        staticcall address(cd[((32 * idx) + cd[4] + 36)]).getTradeInfo() with:
                gas gas_remaining wei
        mem[mem[64] len 160] = ext_call.return_data[0 len 160]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _126 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 160
        _127 = mem[_126]
        require mem[_126] == mem[_126 + 18 len 14]
        _128 = mem[_126 + 32]
        require mem[_126 + 32] == mem[_126 + 50 len 14]
        _129 = mem[_126 + 64]
        require mem[_126 + 64] == mem[_126 + 82 len 14]
        _130 = mem[_126 + 96]
        require mem[_126 + 96] == mem[_126 + 114 len 14]
        mem[_123 + 128] = mem[_126 + 128]
        mem[_123 + 96] = Mask(112, 0, _130)
        mem[_123 + 64] = Mask(112, 0, _129)
        mem[_123 + 32] = Mask(112, 0, _128)
        mem[_123] = Mask(112, 0, _127)
        if idx >= mem[96]:
            revert with 0, 50
        mem[(32 * idx) + 128] = _123
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    _113 = mem[64]
    mem[mem[64]] = 32
    _114 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = mem[64] + 64
    t = 128
    while idx < _114:
        _133 = mem[t]
        mem[s] = mem[mem[t] + 18 len 14]
        mem[s + 32] = mem[_133 + 50 len 14]
        mem[s + 64] = mem[_133 + 82 len 14]
        mem[s + 96] = mem[_133 + 114 len 14]
        mem[s + 128] = mem[_133 + 128]
        mem[s + 160] = mem[_133 + 160]
        idx = idx + 1
        s = s + 192
        t = t + 32
        continue 
    return memory
      from mem[64]
       len _113 + (192 * _114) + -mem[64] + 64
}

function sub_9701eaa8(?) payable {
    require calldata.size - 4 >= 128
    require arg2 == address(arg2)
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + (32 * arg4.length) + 36 <= calldata.size
    staticcall address(arg2).getTradeInfo() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[82 len 14]
    require ext_call.return_data[96] == ext_call.return_data[114 len 14]
    if arg1 <= 0:
        revert with 0, 'DMMAdaptor: INSUFFICIENT_INPUT_AMOUNT'
    if arg3 != 1:
        if ext_call.return_data[18 len 14] <= 0:
            revert with 0, 'DMMAdaptor: INSUFFICIENT_LIQUIDITY'
        if ext_call.return_data[50 len 14] <= 0:
            revert with 0, 'DMMAdaptor: INSUFFICIENT_LIQUIDITY'
        if 10^18 < ext_call.return_data[128]:
            revert with 0, 17
        require -ext_call.return_data[128] + 10^18 <= 10^18
        if not arg1:
            if ext_call.return_data[82 len 14] > -1:
                revert with 0, 17
            require ext_call.return_data[82 len 14] >= ext_call.return_data[82 len 14]
            if ext_call.return_data[82 len 14] <= 0:
                revert with 0, 'DIVIDING_ERROR'
            if not ext_call.return_data[82 len 14]:
                revert with 0, 18
            if ext_call.return_data[50 len 14] <= 0 / ext_call.return_data[82 len 14]:
                revert with 0, 'DMMAdaptor: INSUFFICIENT_LIQUIDITY'
            return (0 / ext_call.return_data[82 len 14])
        if arg1 and -ext_call.return_data[128] + 10^18 > -1 / arg1:
            revert with 0, 17
        if not arg1:
            revert with 0, 18
        require (10^18 * arg1) - (ext_call.return_data[128] * arg1) / arg1 == -ext_call.return_data[128] + 10^18
        if not (10^18 * arg1) - (ext_call.return_data[128] * arg1) / 10^18:
            if ext_call.return_data[82 len 14] > !((10^18 * arg1) - (ext_call.return_data[128] * arg1) / 10^18):
                revert with 0, 17
            require ext_call.return_data[82 len 14] + ((10^18 * arg1) - (ext_call.return_data[128] * arg1) / 10^18) >= ext_call.return_data[82 len 14]
            if ext_call.return_data[82 len 14] + ((10^18 * arg1) - (ext_call.return_data[128] * arg1) / 10^18) <= 0:
                revert with 0, 'DIVIDING_ERROR'
            if not ext_call.return_data[82 len 14] + ((10^18 * arg1) - (ext_call.return_data[128] * arg1) / 10^18):
                revert with 0, 18
            if ext_call.return_data[50 len 14] <= 0 / ext_call.return_data[82 len 14] + ((10^18 * arg1) - (ext_call.return_data[128] * arg1) / 10^18):
                revert with 0, 'DMMAdaptor: INSUFFICIENT_LIQUIDITY'
            return (0 / ext_call.return_data[82 len 14] + ((10^18 * arg1) - (ext_call.return_data[128] * arg1) / 10^18))
        if (10^18 * arg1) - (ext_call.return_data[128] * arg1) / 10^18 and ext_call.return_data[114 len 14] > -1 / (10^18 * arg1) - (ext_call.return_data[128] * arg1) / 10^18:
            revert with 0, 17
        if not (10^18 * arg1) - (ext_call.return_data[128] * arg1) / 10^18:
            revert with 0, 18
        require (10^18 * arg1) - (ext_call.return_data[128] * arg1) / 10^18 * ext_call.return_data[114 len 14] / (10^18 * arg1) - (ext_call.return_data[128] * arg1) / 10^18 == ext_call.return_data[114 len 14]
        if ext_call.return_data[82 len 14] > !((10^18 * arg1) - (ext_call.return_data[128] * arg1) / 10^18):
            revert with 0, 17
        require ext_call.return_data[82 len 14] + ((10^18 * arg1) - (ext_call.return_data[128] * arg1) / 10^18) >= ext_call.return_data[82 len 14]
        if ext_call.return_data[82 len 14] + ((10^18 * arg1) - (ext_call.return_data[128] * arg1) / 10^18) <= 0:
            revert with 0, 'DIVIDING_ERROR'
        if not ext_call.return_data[82 len 14] + ((10^18 * arg1) - (ext_call.return_data[128] * arg1) / 10^18):
            revert with 0, 18
        if ext_call.return_data[50 len 14] <= (10^18 * arg1) - (ext_call.return_data[128] * arg1) / 10^18 * ext_call.return_data[114 len 14] / ext_call.return_data[82 len 14] + ((10^18 * arg1) - (ext_call.return_data[128] * arg1) / 10^18):
            revert with 0, 'DMMAdaptor: INSUFFICIENT_LIQUIDITY'
        return ((10^18 * arg1) - (ext_call.return_data[128] * arg1) / 10^18 * ext_call.return_data[114 len 14] / ext_call.return_data[82 len 14] + ((10^18 * arg1) - (ext_call.return_data[128] * arg1) / 10^18))
    if ext_call.return_data[50 len 14] <= 0:
        revert with 0, 'DMMAdaptor: INSUFFICIENT_LIQUIDITY'
    if ext_call.return_data[18 len 14] <= 0:
        revert with 0, 'DMMAdaptor: INSUFFICIENT_LIQUIDITY'
    if 10^18 < ext_call.return_data[128]:
        revert with 0, 17
    require -ext_call.return_data[128] + 10^18 <= 10^18
    if not arg1:
        if ext_call.return_data[114 len 14] > -1:
            revert with 0, 17
        require ext_call.return_data[114 len 14] >= ext_call.return_data[114 len 14]
        if ext_call.return_data[114 len 14] <= 0:
            revert with 0, 'DIVIDING_ERROR'
        if not ext_call.return_data[114 len 14]:
            revert with 0, 18
        if ext_call.return_data[18 len 14] <= 0 / ext_call.return_data[114 len 14]:
            revert with 0, 'DMMAdaptor: INSUFFICIENT_LIQUIDITY'
        return (0 / ext_call.return_data[114 len 14])
    if arg1 and -ext_call.return_data[128] + 10^18 > -1 / arg1:
        revert with 0, 17
    if not arg1:
        revert with 0, 18
    require (10^18 * arg1) - (ext_call.return_data[128] * arg1) / arg1 == -ext_call.return_data[128] + 10^18
    if not (10^18 * arg1) - (ext_call.return_data[128] * arg1) / 10^18:
        if ext_call.return_data[114 len 14] > !((10^18 * arg1) - (ext_call.return_data[128] * arg1) / 10^18):
            revert with 0, 17
        require ext_call.return_data[114 len 14] + ((10^18 * arg1) - (ext_call.return_data[128] * arg1) / 10^18) >= ext_call.return_data[114 len 14]
        if ext_call.return_data[114 len 14] + ((10^18 * arg1) - (ext_call.return_data[128] * arg1) / 10^18) <= 0:
            revert with 0, 'DIVIDING_ERROR'
        if not ext_call.return_data[114 len 14] + ((10^18 * arg1) - (ext_call.return_data[128] * arg1) / 10^18):
            revert with 0, 18
        if ext_call.return_data[18 len 14] <= 0 / ext_call.return_data[114 len 14] + ((10^18 * arg1) - (ext_call.return_data[128] * arg1) / 10^18):
            revert with 0, 'DMMAdaptor: INSUFFICIENT_LIQUIDITY'
        return (0 / ext_call.return_data[114 len 14] + ((10^18 * arg1) - (ext_call.return_data[128] * arg1) / 10^18))
    if (10^18 * arg1) - (ext_call.return_data[128] * arg1) / 10^18 and ext_call.return_data[82 len 14] > -1 / (10^18 * arg1) - (ext_call.return_data[128] * arg1) / 10^18:
        revert with 0, 17
    if not (10^18 * arg1) - (ext_call.return_data[128] * arg1) / 10^18:
        revert with 0, 18
    require (10^18 * arg1) - (ext_call.return_data[128] * arg1) / 10^18 * ext_call.return_data[82 len 14] / (10^18 * arg1) - (ext_call.return_data[128] * arg1) / 10^18 == ext_call.return_data[82 len 14]
    if ext_call.return_data[114 len 14] > !((10^18 * arg1) - (ext_call.return_data[128] * arg1) / 10^18):
        revert with 0, 17
    require ext_call.return_data[114 len 14] + ((10^18 * arg1) - (ext_call.return_data[128] * arg1) / 10^18) >= ext_call.return_data[114 len 14]
    if ext_call.return_data[114 len 14] + ((10^18 * arg1) - (ext_call.return_data[128] * arg1) / 10^18) <= 0:
        revert with 0, 'DIVIDING_ERROR'
    if not ext_call.return_data[114 len 14] + ((10^18 * arg1) - (ext_call.return_data[128] * arg1) / 10^18):
        revert with 0, 18
    if ext_call.return_data[18 len 14] <= (10^18 * arg1) - (ext_call.return_data[128] * arg1) / 10^18 * ext_call.return_data[82 len 14] / ext_call.return_data[114 len 14] + ((10^18 * arg1) - (ext_call.return_data[128] * arg1) / 10^18):
        revert with 0, 'DMMAdaptor: INSUFFICIENT_LIQUIDITY'
    return ((10^18 * arg1) - (ext_call.return_data[128] * arg1) / 10^18 * ext_call.return_data[82 len 14] / ext_call.return_data[114 len 14] + ((10^18 * arg1) - (ext_call.return_data[128] * arg1) / 10^18))
}

function sub_a20e5faf(?) payable {
    require calldata.size - 4 >= 224
    require arg3 == address(arg3)
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    require arg5.length <= test266151307()
    require arg5 + (32 * arg5.length) + 36 <= calldata.size
    require arg6 == address(arg6)
    require arg7 <= test266151307()
    require arg7 + 35 < calldata.size
    require arg7.length <= test266151307()
    require arg7 + arg7.length + 36 <= calldata.size
    staticcall address(arg3).getTradeInfo() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[82 len 14]
    require ext_call.return_data[96] == ext_call.return_data[114 len 14]
    if arg1 <= 0:
        revert with 0, 'DMMAdaptor: INSUFFICIENT_INPUT_AMOUNT'
    if arg4 != 1:
        if ext_call.return_data[18 len 14] <= 0:
            revert with 0, 'DMMAdaptor: INSUFFICIENT_LIQUIDITY'
        if ext_call.return_data[50 len 14] <= 0:
            revert with 0, 'DMMAdaptor: INSUFFICIENT_LIQUIDITY'
        if 10^18 < ext_call.return_data[128]:
            revert with 0, 17
        require -ext_call.return_data[128] + 10^18 <= 10^18
        if not arg1:
            if ext_call.return_data[82 len 14] > -1:
                revert with 0, 17
            require ext_call.return_data[82 len 14] >= ext_call.return_data[82 len 14]
            if ext_call.return_data[82 len 14] <= 0:
                revert with 0, 'DIVIDING_ERROR'
            if not ext_call.return_data[82 len 14]:
                revert with 0, 18
            if ext_call.return_data[50 len 14] <= 0 / ext_call.return_data[82 len 14]:
                revert with 0, 'DMMAdaptor: INSUFFICIENT_LIQUIDITY'
            if 0 / ext_call.return_data[82 len 14] < arg2:
                revert with 0, 'DMMAdaptor: INSUFFICIENT_OUTPUT_AMOUNT'
            mem[ceil32(return_data.size) + 260 len arg7.length] = arg7[all]
            mem[arg7.length + ceil32(return_data.size) + 260] = 0
            require ext_code.size(address(arg3))
            if arg4 != 1:
                call address(arg3).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 0, 0 / Mask(112, 0, ext_call.return_data[64]), address(arg6), 128, arg7.length, arg7[all], mem[ceil32(return_data.size) + arg7.length + 260 len ceil32(arg7.length) - arg7.length]
            else:
                call address(arg3).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 0 / Mask(112, 0, ext_call.return_data[64]), 0, address(arg6), 128, arg7.length, arg7[all], mem[ceil32(return_data.size) + arg7.length + 260 len ceil32(arg7.length) - arg7.length]
        else:
            if arg1 and -ext_call.return_data[128] + 10^18 > -1 / arg1:
                revert with 0, 17
            if not arg1:
                revert with 0, 18
            require (10^18 * arg1) - (ext_call.return_data[128] * arg1) / arg1 == -ext_call.return_data[128] + 10^18
            if not (10^18 * arg1) - (ext_call.return_data[128] * arg1) / 10^18:
                if ext_call.return_data[82 len 14] > !((10^18 * arg1) - (ext_call.return_data[128] * arg1) / 10^18):
                    revert with 0, 17
                require ext_call.return_data[82 len 14] + ((10^18 * arg1) - (ext_call.return_data[128] * arg1) / 10^18) >= ext_call.return_data[82 len 14]
                if ext_call.return_data[82 len 14] + ((10^18 * arg1) - (ext_call.return_data[128] * arg1) / 10^18) <= 0:
                    revert with 0, 'DIVIDING_ERROR'
                if not ext_call.return_data[82 len 14] + ((10^18 * arg1) - (ext_call.return_data[128] * arg1) / 10^18):
                    revert with 0, 18
                if ext_call.return_data[50 len 14] <= 0 / ext_call.return_data[82 len 14] + ((10^18 * arg1) - (ext_call.return_data[128] * arg1) / 10^18):
                    revert with 0, 'DMMAdaptor: INSUFFICIENT_LIQUIDITY'
                if 0 / ext_call.return_data[82 len 14] + ((10^18 * arg1) - (ext_call.return_data[128] * arg1) / 10^18) < arg2:
                    revert with 0, 'DMMAdaptor: INSUFFICIENT_OUTPUT_AMOUNT'
                mem[ceil32(return_data.size) + 260 len arg7.length] = arg7[all]
                mem[arg7.length + ceil32(return_data.size) + 260] = 0
                require ext_code.size(address(arg3))
                if arg4 != 1:
                    call address(arg3).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, 0 / Mask(112, 0, ext_call.return_data[64]) + ((10^18 * arg1) - (ext_call.return_data[128] * arg1) / 10^18), address(arg6), 128, arg7.length, arg7[all], mem[ceil32(return_data.size) + arg7.length + 260 len ceil32(arg7.length) - arg7.length]
                else:
                    call address(arg3).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0 / Mask(112, 0, ext_call.return_data[64]) + ((10^18 * arg1) - (ext_call.return_data[128] * arg1) / 10^18), 0, address(arg6), 128, arg7.length, arg7[all], mem[ceil32(return_data.size) + arg7.length + 260 len ceil32(arg7.length) - arg7.length]
            else:
                if (10^18 * arg1) - (ext_call.return_data[128] * arg1) / 10^18 and ext_call.return_data[114 len 14] > -1 / (10^18 * arg1) - (ext_call.return_data[128] * arg1) / 10^18:
                    revert with 0, 17
                if not (10^18 * arg1) - (ext_call.return_data[128] * arg1) / 10^18:
                    revert with 0, 18
                require (10^18 * arg1) - (ext_call.return_data[128] * arg1) / 10^18 * ext_call.return_data[114 len 14] / (10^18 * arg1) - (ext_call.return_data[128] * arg1) / 10^18 == ext_call.return_data[114 len 14]
                if ext_call.return_data[82 len 14] > !((10^18 * arg1) - (ext_call.return_data[128] * arg1) / 10^18):
                    revert with 0, 17
                require ext_call.return_data[82 len 14] + ((10^18 * arg1) - (ext_call.return_data[128] * arg1) / 10^18) >= ext_call.return_data[82 len 14]
                if ext_call.return_data[82 len 14] + ((10^18 * arg1) - (ext_call.return_data[128] * arg1) / 10^18) <= 0:
                    revert with 0, 'DIVIDING_ERROR'
                if not ext_call.return_data[82 len 14] + ((10^18 * arg1) - (ext_call.return_data[128] * arg1) / 10^18):
                    revert with 0, 18
                if ext_call.return_data[50 len 14] <= (10^18 * arg1) - (ext_call.return_data[128] * arg1) / 10^18 * ext_call.return_data[114 len 14] / ext_call.return_data[82 len 14] + ((10^18 * arg1) - (ext_call.return_data[128] * arg1) / 10^18):
                    revert with 0, 'DMMAdaptor: INSUFFICIENT_LIQUIDITY'
                if (10^18 * arg1) - (ext_call.return_data[128] * arg1) / 10^18 * ext_call.return_data[114 len 14] / ext_call.return_data[82 len 14] + ((10^18 * arg1) - (ext_call.return_data[128] * arg1) / 10^18) < arg2:
                    revert with 0, 'DMMAdaptor: INSUFFICIENT_OUTPUT_AMOUNT'
                mem[ceil32(return_data.size) + 260 len arg7.length] = arg7[all]
                mem[arg7.length + ceil32(return_data.size) + 260] = 0
                require ext_code.size(address(arg3))
                if arg4 != 1:
                    call address(arg3).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, (10^18 * arg1) - (ext_call.return_data[128] * arg1) / 10^18 * Mask(112, 0, ext_call.return_data[96]) / Mask(112, 0, ext_call.return_data[64]) + ((10^18 * arg1) - (ext_call.return_data[128] * arg1) / 10^18), address(arg6), 128, arg7.length, arg7[all], mem[ceil32(return_data.size) + arg7.length + 260 len ceil32(arg7.length) - arg7.length]
                else:
                    call address(arg3).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args (10^18 * arg1) - (ext_call.return_data[128] * arg1) / 10^18 * Mask(112, 0, ext_call.return_data[96]) / Mask(112, 0, ext_call.return_data[64]) + ((10^18 * arg1) - (ext_call.return_data[128] * arg1) / 10^18), 0, address(arg6), 128, arg7.length, arg7[all], mem[ceil32(return_data.size) + arg7.length + 260 len ceil32(arg7.length) - arg7.length]
    else:
        if ext_call.return_data[50 len 14] <= 0:
            revert with 0, 'DMMAdaptor: INSUFFICIENT_LIQUIDITY'
        if ext_call.return_data[18 len 14] <= 0:
            revert with 0, 'DMMAdaptor: INSUFFICIENT_LIQUIDITY'
        if 10^18 < ext_call.return_data[128]:
            revert with 0, 17
        require -ext_call.return_data[128] + 10^18 <= 10^18
        if not arg1:
            if ext_call.return_data[114 len 14] > -1:
                revert with 0, 17
            require ext_call.return_data[114 len 14] >= ext_call.return_data[114 len 14]
            if ext_call.return_data[114 len 14] <= 0:
                revert with 0, 'DIVIDING_ERROR'
            if not ext_call.return_data[114 len 14]:
                revert with 0, 18
            if ext_call.return_data[18 len 14] <= 0 / ext_call.return_data[114 len 14]:
                revert with 0, 'DMMAdaptor: INSUFFICIENT_LIQUIDITY'
            if 0 / ext_call.return_data[114 len 14] < arg2:
                revert with 0, 'DMMAdaptor: INSUFFICIENT_OUTPUT_AMOUNT'
            mem[ceil32(return_data.size) + 260 len arg7.length] = arg7[all]
            mem[arg7.length + ceil32(return_data.size) + 260] = 0
            require ext_code.size(address(arg3))
            if arg4 != 1:
                call address(arg3).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 0, 0 / Mask(112, 0, ext_call.return_data[96]), address(arg6), 128, arg7.length, arg7[all], mem[ceil32(return_data.size) + arg7.length + 260 len ceil32(arg7.length) - arg7.length]
            else:
                call address(arg3).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 0 / Mask(112, 0, ext_call.return_data[96]), 0, address(arg6), 128, arg7.length, arg7[all], mem[ceil32(return_data.size) + arg7.length + 260 len ceil32(arg7.length) - arg7.length]
        else:
            if arg1 and -ext_call.return_data[128] + 10^18 > -1 / arg1:
                revert with 0, 17
            if not arg1:
                revert with 0, 18
            require (10^18 * arg1) - (ext_call.return_data[128] * arg1) / arg1 == -ext_call.return_data[128] + 10^18
            if not (10^18 * arg1) - (ext_call.return_data[128] * arg1) / 10^18:
                if ext_call.return_data[114 len 14] > !((10^18 * arg1) - (ext_call.return_data[128] * arg1) / 10^18):
                    revert with 0, 17
                require ext_call.return_data[114 len 14] + ((10^18 * arg1) - (ext_call.return_data[128] * arg1) / 10^18) >= ext_call.return_data[114 len 14]
                if ext_call.return_data[114 len 14] + ((10^18 * arg1) - (ext_call.return_data[128] * arg1) / 10^18) <= 0:
                    revert with 0, 'DIVIDING_ERROR'
                if not ext_call.return_data[114 len 14] + ((10^18 * arg1) - (ext_call.return_data[128] * arg1) / 10^18):
                    revert with 0, 18
                if ext_call.return_data[18 len 14] <= 0 / ext_call.return_data[114 len 14] + ((10^18 * arg1) - (ext_call.return_data[128] * arg1) / 10^18):
                    revert with 0, 'DMMAdaptor: INSUFFICIENT_LIQUIDITY'
                if 0 / ext_call.return_data[114 len 14] + ((10^18 * arg1) - (ext_call.return_data[128] * arg1) / 10^18) < arg2:
                    revert with 0, 'DMMAdaptor: INSUFFICIENT_OUTPUT_AMOUNT'
                mem[ceil32(return_data.size) + 260 len arg7.length] = arg7[all]
                mem[arg7.length + ceil32(return_data.size) + 260] = 0
                require ext_code.size(address(arg3))
                if arg4 != 1:
                    call address(arg3).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, 0 / Mask(112, 0, ext_call.return_data[96]) + ((10^18 * arg1) - (ext_call.return_data[128] * arg1) / 10^18), address(arg6), 128, arg7.length, arg7[all], mem[ceil32(return_data.size) + arg7.length + 260 len ceil32(arg7.length) - arg7.length]
                else:
                    call address(arg3).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0 / Mask(112, 0, ext_call.return_data[96]) + ((10^18 * arg1) - (ext_call.return_data[128] * arg1) / 10^18), 0, address(arg6), 128, arg7.length, arg7[all], mem[ceil32(return_data.size) + arg7.length + 260 len ceil32(arg7.length) - arg7.length]
            else:
                if (10^18 * arg1) - (ext_call.return_data[128] * arg1) / 10^18 and ext_call.return_data[82 len 14] > -1 / (10^18 * arg1) - (ext_call.return_data[128] * arg1) / 10^18:
                    revert with 0, 17
                if not (10^18 * arg1) - (ext_call.return_data[128] * arg1) / 10^18:
                    revert with 0, 18
                require (10^18 * arg1) - (ext_call.return_data[128] * arg1) / 10^18 * ext_call.return_data[82 len 14] / (10^18 * arg1) - (ext_call.return_data[128] * arg1) / 10^18 == ext_call.return_data[82 len 14]
                if ext_call.return_data[114 len 14] > !((10^18 * arg1) - (ext_call.return_data[128] * arg1) / 10^18):
                    revert with 0, 17
                require ext_call.return_data[114 len 14] + ((10^18 * arg1) - (ext_call.return_data[128] * arg1) / 10^18) >= ext_call.return_data[114 len 14]
                if ext_call.return_data[114 len 14] + ((10^18 * arg1) - (ext_call.return_data[128] * arg1) / 10^18) <= 0:
                    revert with 0, 'DIVIDING_ERROR'
                if not ext_call.return_data[114 len 14] + ((10^18 * arg1) - (ext_call.return_data[128] * arg1) / 10^18):
                    revert with 0, 18
                if ext_call.return_data[18 len 14] <= (10^18 * arg1) - (ext_call.return_data[128] * arg1) / 10^18 * ext_call.return_data[82 len 14] / ext_call.return_data[114 len 14] + ((10^18 * arg1) - (ext_call.return_data[128] * arg1) / 10^18):
                    revert with 0, 'DMMAdaptor: INSUFFICIENT_LIQUIDITY'
                if (10^18 * arg1) - (ext_call.return_data[128] * arg1) / 10^18 * ext_call.return_data[82 len 14] / ext_call.return_data[114 len 14] + ((10^18 * arg1) - (ext_call.return_data[128] * arg1) / 10^18) < arg2:
                    revert with 0, 'DMMAdaptor: INSUFFICIENT_OUTPUT_AMOUNT'
                mem[ceil32(return_data.size) + 260 len arg7.length] = arg7[all]
                mem[arg7.length + ceil32(return_data.size) + 260] = 0
                require ext_code.size(address(arg3))
                if arg4 != 1:
                    call address(arg3).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, (10^18 * arg1) - (ext_call.return_data[128] * arg1) / 10^18 * Mask(112, 0, ext_call.return_data[64]) / Mask(112, 0, ext_call.return_data[96]) + ((10^18 * arg1) - (ext_call.return_data[128] * arg1) / 10^18), address(arg6), 128, arg7.length, arg7[all], mem[ceil32(return_data.size) + arg7.length + 260 len ceil32(arg7.length) - arg7.length]
                else:
                    call address(arg3).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args (10^18 * arg1) - (ext_call.return_data[128] * arg1) / 10^18 * Mask(112, 0, ext_call.return_data[64]) / Mask(112, 0, ext_call.return_data[96]) + ((10^18 * arg1) - (ext_call.return_data[128] * arg1) / 10^18), 0, address(arg6), 128, arg7.length, arg7[all], mem[ceil32(return_data.size) + arg7.length + 260 len ceil32(arg7.length) - arg7.length]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
