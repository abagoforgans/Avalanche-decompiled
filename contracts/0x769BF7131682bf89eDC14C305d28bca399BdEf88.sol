contract main {




// =====================  Runtime code  =====================


#
#  - uniswapV2Call(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#  - sub_2e858bd1(?)
#  - sub_6c869e63(?)
#  - sub_b12387d2(?)
#  - approveToken(address arg1, address arg2, uint256 arg3)
#  - lydiaCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#  - sub_df9aee68(?)
#  - joeCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#  - pangolinCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#  - _fallback()
#
address owner;

function owner() {
    return owner
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function recoverEth() {
    call owner with:
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

function recoverToken(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
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
        args owner, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require 1 == bool(ext_call.return_data[0])
}

function sub_afe53bd5(?) {
    require calldata.size - 4 >= 160
    require calldata.size - 4 >= 96
    require arg1 == bool(arg1)
    require arg2 == address(arg2)
    require arg3 == Mask(32, 224, arg3)
    require arg4 == address(arg4)
    require arg5 == address(arg5)
    mem[292 len 96] = uint32(arg3), address(arg4) << 64, 0, address(arg2), mem[292 len 28]
    mem[360] = 0
    staticcall address(arg2).mem[292 len 4] with:
            gas gas_remaining wei
           args mem[296 len 64]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, '!rate'
        require arg1 >= 64
        return arg2, arg3
    mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        revert with 0, '!rate'
    require return_data.size >= 64
    _66 = mem[356 len 4], 0
    mem[ceil32(return_data.size) + 293] = mem[324]
    return mem[ceil32(return_data.size) + 293], _66
}

function sub_281f7142(?) {
    require calldata.size - 4 >= 96
    require arg1 == bool(arg1)
    require arg2 == address(arg2)
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg3.length)) + 97 < 96 or ceil32(ceil32(arg3.length)) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg3.length
    require arg3 + arg3.length + 36 <= calldata.size
    mem[128 len arg3.length] = arg3[all]
    mem[arg3.length + 128] = 0
    mem[ceil32(ceil32(arg3.length)) + 97 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
    if ceil32(arg3.length) > arg3.length:
        mem[arg3.length + ceil32(ceil32(arg3.length)) + 97] = 0
    if not arg1:
        call address(arg2).mem[ceil32(ceil32(arg3.length)) + 97 len 4] with:
             gas gas_remaining wei
            args mem[ceil32(ceil32(arg3.length)) + 101 len arg3.length - 4]
        if not ext_call.success:
            revert with 0, '!transform'
    else:
        delegate address(arg2).mem[ceil32(ceil32(arg3.length)) + 97 len 4] with:
             gas gas_remaining wei
            args mem[ceil32(ceil32(arg3.length)) + 101 len arg3.length - 4]
        if not delegate.return_code:
            revert with 0, '!transform'
}

function sub_d0228b3a(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require calldata.size + -cd[4] - 4 >= 96
    require ('cd', 4).length == bool(('cd', 4).length)
    require ('cd', 4)[0] == address(('cd', 4)[0])
    require ('cd', 4)[1] <= test266151307()
    require cd[4] + ('cd', 4)[1] + 35 < calldata.size
    if cd[(cd[4] + ('cd', 4)[1] + 4)] > test266151307():
        revert with 0, 65
    if ceil32(ceil32(cd[(cd[4] + ('cd', 4)[1] + 4)])) + 193 < 192 or ceil32(ceil32(cd[(cd[4] + ('cd', 4)[1] + 4)])) + 193 > test266151307():
        revert with 0, 65
    mem[192] = cd[(cd[4] + ('cd', 4)[1] + 4)]
    require cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + 4)] + 36 <= calldata.size
    mem[224 len cd[(cd[4] + ('cd', 4)[1] + 4)]] = call.data[cd[4] + ('cd', 4)[1] + 36 len cd[(cd[4] + ('cd', 4)[1] + 4)]]
    mem[cd[(cd[4] + ('cd', 4)[1] + 4)] + 224] = 0
    mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[1] + 4)])) + 193 len ceil32(cd[(cd[4] + ('cd', 4)[1] + 4)])] = call.data[cd[4] + ('cd', 4)[1] + 36 len cd[(cd[4] + ('cd', 4)[1] + 4)]], mem[cd[(cd[4] + ('cd', 4)[1] + 4)] + 224 len ceil32(cd[(cd[4] + ('cd', 4)[1] + 4)]) - cd[(cd[4] + ('cd', 4)[1] + 4)]]
    if ceil32(cd[(cd[4] + ('cd', 4)[1] + 4)]) > cd[(cd[4] + ('cd', 4)[1] + 4)]:
        mem[cd[(cd[4] + ('cd', 4)[1] + 4)] + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[1] + 4)])) + 193] = 0
    staticcall address(('cd', 4)[0]).mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[1] + 4)])) + 193 len 4] with:
            gas gas_remaining wei
           args mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[1] + 4)])) + 197 len cd[(cd[4] + ('cd', 4)[1] + 4)] - 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, '!rate'
        require ('cd', 4).length >= 32
        return ('cd', 4)[0]
    mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[1] + 4)])) + 225 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        revert with 0, '!rate'
    require return_data.size >= 32
    mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[1] + 4)])) + ceil32(return_data.size) + 194] = mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[1] + 4)])) + 225]
    return memory
      from ceil32(ceil32(cd[(cd[4] + ('cd', 4)[1] + 4)])) + ceil32(return_data.size) + 194
       len 32
}

function sub_c3027d32(?) {
    require calldata.size - 4 >= 96
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(32 * ('cd', 4).length) + 97
    mem[96] = ('cd', 4).length
    require cd[4] + (('cd', 4).length << 7) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require calldata.size - s >= 128
        _48 = mem[64]
        if mem[64] + 128 < mem[64] or mem[64] + 128 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + 128
        mem[_48] = cd[s]
        mem[_48 + 32] = cd[(s + 32)]
        require cd[(s + 64)] == uint8(cd[(s + 64)])
        mem[_48 + 64] = cd[(s + 64)]
        require cd[(s + 96)] == uint8(cd[(s + 96)])
        mem[_48 + 96] = cd[(s + 96)]
        mem[t] = _48
        idx = idx + 1
        s = s + 128
        t = t + 32
        continue 
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    _49 = mem[64]
    if mem[64] + ceil32(32 * ('cd', 36).length) + 1 < mem[64] or mem[64] + ceil32(32 * ('cd', 36).length) + 1 > test266151307():
        revert with 0, 65
    mem[64] = mem[64] + ceil32(32 * ('cd', 36).length) + 1
    mem[_49] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = _49 + 32
    while idx < ('cd', 36).length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    _94 = mem[96]
    if mem[96] > test266151307():
        revert with 0, 65
    _95 = mem[64]
    mem[mem[64]] = mem[96]
    mem[64] = mem[64] + (32 * _94) + 32
    if not _94:
        if 0 >= mem[_95]:
            revert with 0, 50
        mem[_95 + 32] = cd[68]
        _138 = mem[96]
        idx = 0
        while idx < _138 - 1:
            if idx >= mem[96]:
                revert with 0, 50
            if idx >= mem[_95]:
                revert with 0, 50
            if idx >= mem[_49]:
                revert with 0, 50
            if mem[(32 * idx) + _95 + 32] <= 0:
                revert with 0, 'UniswapV2LikeLibrary: INSUFFICIENT_INPUT_AMOUNT'
            if mem[mem[(32 * idx) + 128]] <= 0:
                revert with 0, 'UniswapV2LikeLibrary: INSUFFICIENT_LIQUIDITY'
            if mem[mem[(32 * idx) + 128] + 32] <= 0:
                revert with 0, 'UniswapV2LikeLibrary: INSUFFICIENT_LIQUIDITY'
            if mem[(32 * idx) + _95 + 32] and -mem[(32 * idx) + _49 + 32] + 1000 > -1 / mem[(32 * idx) + _95 + 32]:
                revert with 0, 17
            if (1000 * mem[(32 * idx) + _95 + 32]) - (mem[(32 * idx) + _49 + 32] * mem[(32 * idx) + _95 + 32]) and mem[mem[(32 * idx) + 128] + 32] > -1 / (1000 * mem[(32 * idx) + _95 + 32]) - (mem[(32 * idx) + _49 + 32] * mem[(32 * idx) + _95 + 32]):
                revert with 0, 17
            if mem[mem[(32 * idx) + 128]] and 1000 > -1 / mem[mem[(32 * idx) + 128]]:
                revert with 0, 17
            if 1000 * mem[mem[(32 * idx) + 128]] > !((1000 * mem[(32 * idx) + _95 + 32]) - (mem[(32 * idx) + _49 + 32] * mem[(32 * idx) + _95 + 32])):
                revert with 0, 17
            if not (1000 * mem[mem[(32 * idx) + 128]]) + (1000 * mem[(32 * idx) + _95 + 32]) - (mem[(32 * idx) + _49 + 32] * mem[(32 * idx) + _95 + 32]):
                revert with 0, 18
            if idx + 1 >= mem[_95]:
                revert with 0, 50
            mem[(32 * idx + 1) + _95 + 32] = (1000 * mem[(32 * idx) + _95 + 32] * mem[mem[(32 * idx) + 128] + 32]) - (mem[(32 * idx) + _49 + 32] * mem[(32 * idx) + _95 + 32] * mem[mem[(32 * idx) + 128] + 32]) / (1000 * mem[mem[(32 * idx) + 128]]) + (1000 * mem[(32 * idx) + _95 + 32]) - (mem[(32 * idx) + _49 + 32] * mem[(32 * idx) + _95 + 32])
            _138 = mem[96]
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        _156 = mem[_95]
        mem[mem[64] + 32] = mem[_95]
        mem[mem[64] + 64 len 32 * _156] = mem[_95 + 32 len 32 * _156]
        return 32, mem[mem[64] + 32 len (32 * _156) + 32]
    mem[_95 + 32 len 32 * _94] = call.data[calldata.size len 32 * _94]
    if 0 >= mem[_95]:
        revert with 0, 50
    mem[_95 + 32] = cd[68]
    _139 = mem[96]
    idx = 0
    while idx < _139 - 1:
        if idx >= mem[96]:
            revert with 0, 50
        if idx >= mem[_95]:
            revert with 0, 50
        if idx >= mem[_49]:
            revert with 0, 50
        if mem[(32 * idx) + _95 + 32] <= 0:
            revert with 0, 'UniswapV2LikeLibrary: INSUFFICIENT_INPUT_AMOUNT'
        if mem[mem[(32 * idx) + 128]] <= 0:
            revert with 0, 'UniswapV2LikeLibrary: INSUFFICIENT_LIQUIDITY'
        if mem[mem[(32 * idx) + 128] + 32] <= 0:
            revert with 0, 'UniswapV2LikeLibrary: INSUFFICIENT_LIQUIDITY'
        if mem[(32 * idx) + _95 + 32] and -mem[(32 * idx) + _49 + 32] + 1000 > -1 / mem[(32 * idx) + _95 + 32]:
            revert with 0, 17
        if (1000 * mem[(32 * idx) + _95 + 32]) - (mem[(32 * idx) + _49 + 32] * mem[(32 * idx) + _95 + 32]) and mem[mem[(32 * idx) + 128] + 32] > -1 / (1000 * mem[(32 * idx) + _95 + 32]) - (mem[(32 * idx) + _49 + 32] * mem[(32 * idx) + _95 + 32]):
            revert with 0, 17
        if mem[mem[(32 * idx) + 128]] and 1000 > -1 / mem[mem[(32 * idx) + 128]]:
            revert with 0, 17
        if 1000 * mem[mem[(32 * idx) + 128]] > !((1000 * mem[(32 * idx) + _95 + 32]) - (mem[(32 * idx) + _49 + 32] * mem[(32 * idx) + _95 + 32])):
            revert with 0, 17
        if not (1000 * mem[mem[(32 * idx) + 128]]) + (1000 * mem[(32 * idx) + _95 + 32]) - (mem[(32 * idx) + _49 + 32] * mem[(32 * idx) + _95 + 32]):
            revert with 0, 18
        if idx + 1 >= mem[_95]:
            revert with 0, 50
        mem[(32 * idx + 1) + _95 + 32] = (1000 * mem[(32 * idx) + _95 + 32] * mem[mem[(32 * idx) + 128] + 32]) - (mem[(32 * idx) + _49 + 32] * mem[(32 * idx) + _95 + 32] * mem[mem[(32 * idx) + 128] + 32]) / (1000 * mem[mem[(32 * idx) + 128]]) + (1000 * mem[(32 * idx) + _95 + 32]) - (mem[(32 * idx) + _49 + 32] * mem[(32 * idx) + _95 + 32])
        _139 = mem[96]
        idx = idx + 1
        continue 
    mem[mem[64]] = 32
    _158 = mem[_95]
    mem[mem[64] + 32] = mem[_95]
    mem[mem[64] + 64 len 32 * _158] = mem[_95 + 32 len 32 * _158]
    return 32, mem[mem[64] + 32 len (32 * _158) + 32]
}

function sub_2d13cbdf(?) {
    require calldata.size - 4 >= 96
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(32 * ('cd', 4).length) + 97
    mem[96] = ('cd', 4).length
    require cd[4] + (('cd', 4).length << 7) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require calldata.size - s >= 128
        _48 = mem[64]
        if mem[64] + 128 < mem[64] or mem[64] + 128 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + 128
        mem[_48] = cd[s]
        mem[_48 + 32] = cd[(s + 32)]
        require cd[(s + 64)] == uint8(cd[(s + 64)])
        mem[_48 + 64] = cd[(s + 64)]
        require cd[(s + 96)] == uint8(cd[(s + 96)])
        mem[_48 + 96] = cd[(s + 96)]
        mem[t] = _48
        idx = idx + 1
        s = s + 128
        t = t + 32
        continue 
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    _49 = mem[64]
    if mem[64] + ceil32(32 * ('cd', 36).length) + 1 < mem[64] or mem[64] + ceil32(32 * ('cd', 36).length) + 1 > test266151307():
        revert with 0, 65
    mem[64] = mem[64] + ceil32(32 * ('cd', 36).length) + 1
    mem[_49] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = _49 + 32
    while idx < ('cd', 36).length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    _94 = mem[96]
    if mem[96] > test266151307():
        revert with 0, 65
    _95 = mem[64]
    mem[mem[64]] = mem[96]
    mem[64] = mem[64] + (32 * _94) + 32
    if not _94:
        if 0 >= mem[_95]:
            revert with 0, 50
        mem[_95 + 32] = cd[68]
        _138 = mem[96]
        idx = 0
        while idx < _138 - 1:
            if idx >= mem[96]:
                revert with 0, 50
            if idx >= mem[_95]:
                revert with 0, 50
            if idx >= mem[_49]:
                revert with 0, 50
            if mem[(32 * idx) + _95 + 32] <= 0:
                revert with 0, 'UniswapV2LikeLibrary: INSUFFICIENT_OUTPUT_AMOUNT'
            if mem[mem[(32 * idx) + 128] + 32] <= 0:
                revert with 0, 'UniswapV2LikeLibrary: INSUFFICIENT_LIQUIDITY'
            if mem[mem[(32 * idx) + 128]] <= 0:
                revert with 0, 'UniswapV2LikeLibrary: INSUFFICIENT_LIQUIDITY'
            if mem[mem[(32 * idx) + 128] + 32] and mem[(32 * idx) + _95 + 32] > -1 / mem[mem[(32 * idx) + 128] + 32]:
                revert with 0, 17
            if mem[mem[(32 * idx) + 128] + 32] * mem[(32 * idx) + _95 + 32] and 1000 > -1 / mem[mem[(32 * idx) + 128] + 32] * mem[(32 * idx) + _95 + 32]:
                revert with 0, 17
            if mem[mem[(32 * idx) + 128]] < mem[(32 * idx) + _95 + 32]:
                revert with 0, 17
            if mem[mem[(32 * idx) + 128]] - mem[(32 * idx) + _95 + 32] and -mem[(32 * idx) + _49 + 32] + 1000 > -1 / mem[mem[(32 * idx) + 128]] - mem[(32 * idx) + _95 + 32]:
                revert with 0, 17
            if not (1000 * mem[mem[(32 * idx) + 128]]) - (mem[(32 * idx) + _49 + 32] * mem[mem[(32 * idx) + 128]]) - (1000 * mem[(32 * idx) + _95 + 32]) + (mem[(32 * idx) + _49 + 32] * mem[(32 * idx) + _95 + 32]):
                revert with 0, 18
            if 1000 * mem[mem[(32 * idx) + 128] + 32] * mem[(32 * idx) + _95 + 32] / (1000 * mem[mem[(32 * idx) + 128]]) - (mem[(32 * idx) + _49 + 32] * mem[mem[(32 * idx) + 128]]) - (1000 * mem[(32 * idx) + _95 + 32]) + (mem[(32 * idx) + _49 + 32] * mem[(32 * idx) + _95 + 32]) > -2:
                revert with 0, 17
            if idx + 1 >= mem[_95]:
                revert with 0, 50
            mem[(32 * idx + 1) + _95 + 32] = (1000 * mem[mem[(32 * idx) + 128] + 32] * mem[(32 * idx) + _95 + 32] / (1000 * mem[mem[(32 * idx) + 128]]) - (mem[(32 * idx) + _49 + 32] * mem[mem[(32 * idx) + 128]]) - (1000 * mem[(32 * idx) + _95 + 32]) + (mem[(32 * idx) + _49 + 32] * mem[(32 * idx) + _95 + 32])) + 1
            _138 = mem[96]
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        _156 = mem[_95]
        mem[mem[64] + 32] = mem[_95]
        mem[mem[64] + 64 len 32 * _156] = mem[_95 + 32 len 32 * _156]
        return 32, mem[mem[64] + 32 len (32 * _156) + 32]
    mem[_95 + 32 len 32 * _94] = call.data[calldata.size len 32 * _94]
    if 0 >= mem[_95]:
        revert with 0, 50
    mem[_95 + 32] = cd[68]
    _139 = mem[96]
    idx = 0
    while idx < _139 - 1:
        if idx >= mem[96]:
            revert with 0, 50
        if idx >= mem[_95]:
            revert with 0, 50
        if idx >= mem[_49]:
            revert with 0, 50
        if mem[(32 * idx) + _95 + 32] <= 0:
            revert with 0, 'UniswapV2LikeLibrary: INSUFFICIENT_OUTPUT_AMOUNT'
        if mem[mem[(32 * idx) + 128] + 32] <= 0:
            revert with 0, 'UniswapV2LikeLibrary: INSUFFICIENT_LIQUIDITY'
        if mem[mem[(32 * idx) + 128]] <= 0:
            revert with 0, 'UniswapV2LikeLibrary: INSUFFICIENT_LIQUIDITY'
        if mem[mem[(32 * idx) + 128] + 32] and mem[(32 * idx) + _95 + 32] > -1 / mem[mem[(32 * idx) + 128] + 32]:
            revert with 0, 17
        if mem[mem[(32 * idx) + 128] + 32] * mem[(32 * idx) + _95 + 32] and 1000 > -1 / mem[mem[(32 * idx) + 128] + 32] * mem[(32 * idx) + _95 + 32]:
            revert with 0, 17
        if mem[mem[(32 * idx) + 128]] < mem[(32 * idx) + _95 + 32]:
            revert with 0, 17
        if mem[mem[(32 * idx) + 128]] - mem[(32 * idx) + _95 + 32] and -mem[(32 * idx) + _49 + 32] + 1000 > -1 / mem[mem[(32 * idx) + 128]] - mem[(32 * idx) + _95 + 32]:
            revert with 0, 17
        if not (1000 * mem[mem[(32 * idx) + 128]]) - (mem[(32 * idx) + _49 + 32] * mem[mem[(32 * idx) + 128]]) - (1000 * mem[(32 * idx) + _95 + 32]) + (mem[(32 * idx) + _49 + 32] * mem[(32 * idx) + _95 + 32]):
            revert with 0, 18
        if 1000 * mem[mem[(32 * idx) + 128] + 32] * mem[(32 * idx) + _95 + 32] / (1000 * mem[mem[(32 * idx) + 128]]) - (mem[(32 * idx) + _49 + 32] * mem[mem[(32 * idx) + 128]]) - (1000 * mem[(32 * idx) + _95 + 32]) + (mem[(32 * idx) + _49 + 32] * mem[(32 * idx) + _95 + 32]) > -2:
            revert with 0, 17
        if idx + 1 >= mem[_95]:
            revert with 0, 50
        mem[(32 * idx + 1) + _95 + 32] = (1000 * mem[mem[(32 * idx) + 128] + 32] * mem[(32 * idx) + _95 + 32] / (1000 * mem[mem[(32 * idx) + 128]]) - (mem[(32 * idx) + _49 + 32] * mem[mem[(32 * idx) + 128]]) - (1000 * mem[(32 * idx) + _95 + 32]) + (mem[(32 * idx) + _49 + 32] * mem[(32 * idx) + _95 + 32])) + 1
        _139 = mem[96]
        idx = idx + 1
        continue 
    mem[mem[64]] = 32
    _158 = mem[_95]
    mem[mem[64] + 32] = mem[_95]
    mem[mem[64] + 64 len 32 * _158] = mem[_95 + 32 len 32 * _158]
    return 32, mem[mem[64] + 32 len (32 * _158) + 32]
}

function sub_5d397e9d(?) {
    require calldata.size - 4 >= 256
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 36).length) + 98 < 97 or ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98
    mem[ceil32(32 * ('cd', 4).length) + 97] = ('cd', 36).length
    require cd[36] + (('cd', 36).length << 7) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = ceil32(32 * ('cd', 4).length) + 129
    while idx < ('cd', 36).length:
        require calldata.size - s >= 128
        _326 = mem[64]
        if mem[64] + 128 < mem[64] or mem[64] + 128 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + 128
        mem[_326] = cd[s]
        mem[_326 + 32] = cd[(s + 32)]
        require cd[(s + 64)] == uint8(cd[(s + 64)])
        mem[_326 + 64] = cd[(s + 64)]
        require cd[(s + 96)] == uint8(cd[(s + 96)])
        mem[_326 + 96] = cd[(s + 96)]
        mem[t] = _326
        idx = idx + 1
        s = s + 128
        t = t + 32
        continue 
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    if ('cd', 100).length > test266151307():
        revert with 0, 65
    _327 = mem[64]
    if mem[64] + ceil32(32 * ('cd', 100).length) + 1 < mem[64] or mem[64] + ceil32(32 * ('cd', 100).length) + 1 > test266151307():
        revert with 0, 65
    mem[64] = mem[64] + ceil32(32 * ('cd', 100).length) + 1
    mem[_327] = ('cd', 100).length
    require calldata.size >= cd[100] + (96 * ('cd', 100).length) + 36
    idx = 0
    s = cd[100] + 36
    t = _327 + 32
    while idx < ('cd', 100).length:
        require calldata.size - s >= 96
        _487 = mem[64]
        if mem[64] + 96 < mem[64] or mem[64] + 96 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + 96
        require cd[s] == address(cd[s])
        mem[_487] = cd[s]
        require cd[(s + 32)] == address(cd[(s + 32)])
        mem[_487 + 32] = cd[(s + 32)]
        require cd[(s + 64)] == address(cd[(s + 64)])
        mem[_487 + 64] = cd[(s + 64)]
        mem[t] = _487
        idx = idx + 1
        s = s + 96
        t = t + 32
        continue 
    require cd[132] <= test266151307()
    require cd[132] + 35 < calldata.size
    if ('cd', 132).length > test266151307():
        revert with 0, 65
    _488 = mem[64]
    if mem[64] + ceil32(32 * ('cd', 132).length) + 1 < mem[64] or mem[64] + ceil32(32 * ('cd', 132).length) + 1 > test266151307():
        revert with 0, 65
    mem[64] = mem[64] + ceil32(32 * ('cd', 132).length) + 1
    mem[_488] = ('cd', 132).length
    require cd[132] + (32 * ('cd', 132).length) + 36 <= calldata.size
    idx = 0
    s = cd[132] + 36
    t = _488 + 32
    while idx < ('cd', 132).length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require calldata.size - 164 >= 96
    _646 = mem[64]
    if mem[64] + 96 < mem[64] or mem[64] + 96 > test266151307():
        revert with 0, 65
    mem[64] = mem[64] + 96
    require cd[164] == bool(cd[164])
    mem[_646] = cd[164]
    require cd[196] == address(cd[196])
    mem[_646 + 32] = cd[196]
    require cd[228] == Mask(32, 224, cd[228])
    mem[_646 + 64] = cd[228]
    if mem[ceil32(32 * ('cd', 4).length) + 97] - 1 >= mem[ceil32(32 * ('cd', 4).length) + 97]:
        revert with 0, 50
    _650 = mem[mem[(32 * mem[ceil32(32 * ('cd', 4).length) + 97] - 1) + ceil32(32 * ('cd', 4).length) + 129] + 96]
    if 0 >= mem[96]:
        revert with 0, 50
    _652 = mem[128]
    if not cd[68] - 1:
        revert with 0, 18
    _653 = mem[64]
    mem[64] = mem[64] + 160
    mem[_653] = 0
    mem[_653 + 32] = 0
    mem[_653 + 64] = 0
    mem[_653 + 96] = 0
    mem[_653 + 128] = 0
    if mem[_327] - 1 >= mem[_327]:
        revert with 0, 50
    _656 = mem[(32 * mem[_327] - 1) + _327 + 32]
    if mem[ceil32(32 * ('cd', 4).length) + 97] - 1 >= mem[ceil32(32 * ('cd', 4).length) + 97]:
        revert with 0, 50
    _659 = mem[(32 * mem[ceil32(32 * ('cd', 4).length) + 97] - 1) + ceil32(32 * ('cd', 4).length) + 129]
    mem[_653] = mem[mem[(32 * mem[_327] - 1) + _327 + 32] + 12 len 20]
    mem[_653 + 32] = mem[_656 + 76 len 20]
    mem[_653 + 64] = mem[_656 + 44 len 20]
    mem[_653 + 128] = (_652 * 10^uint8(_650) / cd[68] - 1) + 1
    if ('cd', 132).length - 1 >= ('cd', 132).length:
        revert with 0, 50
    if (_652 * 10^uint8(_650) / cd[68] - 1) + 1 <= 0:
        revert with 0, 'UniswapV2LikeLibrary: INSUFFICIENT_OUTPUT_AMOUNT'
    if mem[_659] <= 0:
        revert with 0, 'UniswapV2LikeLibrary: INSUFFICIENT_LIQUIDITY'
    if mem[_659 + 32] <= 0:
        revert with 0, 'UniswapV2LikeLibrary: INSUFFICIENT_LIQUIDITY'
    if mem[_659] and (_652 * 10^uint8(_650) / cd[68] - 1) + 1 > -1 / mem[_659]:
        revert with 0, 17
    if mem[_659] + (_652 * 10^uint8(_650) / cd[68] - 1 * mem[_659]) and 1000 > -1 / mem[_659] + (_652 * 10^uint8(_650) / cd[68] - 1 * mem[_659]):
        revert with 0, 17
    if mem[_659 + 32] < (_652 * 10^uint8(_650) / cd[68] - 1) + 1:
        revert with 0, 17
    if mem[_659 + 32] + -(_652 * 10^uint8(_650) / cd[68] - 1) - 1 and -mem[(32 * ('cd', 132).length - 1) + _488 + 32] + 1000 > -1 / mem[_659 + 32] + -(_652 * 10^uint8(_650) / cd[68] - 1) - 1:
        revert with 0, 17
    if not mem[(32 * ('cd', 132).length - 1) + _488 + 32] + (1000 * mem[_659 + 32]) + (-1 * mem[(32 * ('cd', 132).length - 1) + _488 + 32] * mem[_659 + 32]) + (-1000 * _652 * 10^uint8(_650) / cd[68] - 1) + (mem[(32 * ('cd', 132).length - 1) + _488 + 32] * _652 * 10^uint8(_650) / cd[68] - 1) - 1000:
        revert with 0, 18
    if (1000 * mem[_659]) + (1000 * _652 * 10^uint8(_650) / cd[68] - 1 * mem[_659]) / mem[(32 * ('cd', 132).length - 1) + _488 + 32] + (1000 * mem[_659 + 32]) + (-1 * mem[(32 * ('cd', 132).length - 1) + _488 + 32] * mem[_659 + 32]) + (-1000 * _652 * 10^uint8(_650) / cd[68] - 1) + (mem[(32 * ('cd', 132).length - 1) + _488 + 32] * _652 * 10^uint8(_650) / cd[68] - 1) - 1000 > -2:
        revert with 0, 17
    mem[_653 + 96] = ((1000 * mem[_659]) + (1000 * _652 * 10^uint8(_650) / cd[68] - 1 * mem[_659]) / mem[(32 * ('cd', 132).length - 1) + _488 + 32] + (1000 * mem[_659 + 32]) + (-1 * mem[(32 * ('cd', 132).length - 1) + _488 + 32] * mem[_659 + 32]) + (-1000 * _652 * 10^uint8(_650) / cd[68] - 1) + (mem[(32 * ('cd', 132).length - 1) + _488 + 32] * _652 * 10^uint8(_650) / cd[68] - 1) - 1000) + 1
    _673 = mem[64]
    mem[mem[64] + 32] = 160
    _674 = mem[_327]
    mem[mem[64] + 192] = mem[_327]
    idx = 0
    s = _327 + 32
    t = mem[64] + 224
    while idx < _674:
        _806 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_806 + 44 len 20]
        mem[t + 64] = mem[_806 + 76 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 96
        continue 
    mem[_673 + 64] = bool(mem[_646])
    mem[_673 + 96] = mem[_646 + 44 len 20]
    mem[_673 + 128] = Mask(32, 224, mem[_646 + 64])
    mem[_673 + 160] = (96 * _674) + 192
    _810 = mem[96]
    mem[_673 + (96 * _674) + 224] = mem[96]
    mem[_673 + (96 * _674) + 256 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
    _932 = mem[64]
    mem[mem[64]] = _673 + (96 * _674) + (32 * mem[96]) + -mem[64] + 224
    mem[64] = _673 + (96 * _674) + (32 * _810) + 256
    _933 = mem[_653 + 32]
    _934 = mem[_653 + 64]
    _935 = mem[_653 + 128]
    _936 = mem[_653]
    mem[_673 + (96 * _674) + (32 * _810) + 260] = mem[_653 + 44 len 20]
    mem[_673 + (96 * _674) + (32 * _810) + 292] = address(_934)
    require ext_code.size(address(_936))
    staticcall address(_936).getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(_933), address(_934)
    mem[_673 + (96 * _674) + (32 * _810) + 256] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = _673 + (96 * _674) + (32 * _810) + ceil32(return_data.size) + 256
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if address(_933) == address(_934):
        revert with 0, 'UniswapV2LikeLibrary: IDENTICAL_ADDRESSES'
    if address(_933) < address(_934):
        if not address(_933):
            revert with 0, 'UniswapV2LikeLibrary: ZERO_ADDRESS'
        mem[_673 + (96 * _674) + (32 * _810) + ceil32(return_data.size) + 288] = mem[_653 + 12 len 20]
        mem[_673 + (96 * _674) + (32 * _810) + ceil32(return_data.size) + 320] = mem[_653 + 44 len 20]
        mem[_673 + (96 * _674) + (32 * _810) + ceil32(return_data.size) + 352] = mem[_653 + 76 len 20]
        mem[_673 + (96 * _674) + (32 * _810) + ceil32(return_data.size) + 384] = mem[_653 + 96]
        mem[_673 + (96 * _674) + (32 * _810) + ceil32(return_data.size) + 416] = mem[_653 + 128]
        mem[_673 + (96 * _674) + (32 * _810) + ceil32(return_data.size) + 448] = 192
        if address(_933) == address(_933):
            _971 = mem[_932]
            mem[_673 + (96 * _674) + (32 * _810) + ceil32(return_data.size) + 480] = mem[_932]
            mem[_673 + (96 * _674) + (32 * _810) + ceil32(return_data.size) + 512 len ceil32(_971)] = mem[_932 + 32 len ceil32(_971)]
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args _935, 0, address(this.address), 128, ceil32(_971) + 224, mem[_673 + (96 * _674) + (32 * _810) + ceil32(return_data.size) + 288 len ceil32(ceil32(_971)) + 7]
        else:
            _972 = mem[_932]
            mem[_673 + (96 * _674) + (32 * _810) + ceil32(return_data.size) + 480] = mem[_932]
            mem[_673 + (96 * _674) + (32 * _810) + ceil32(return_data.size) + 512 len ceil32(_972)] = mem[_932 + 32 len ceil32(_972)]
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 0, _935, address(this.address), 128, ceil32(_972) + 224, mem[_673 + (96 * _674) + (32 * _810) + ceil32(return_data.size) + 288 len ceil32(ceil32(_972)) + 7]
    else:
        if not address(_934):
            revert with 0, 'UniswapV2LikeLibrary: ZERO_ADDRESS'
        mem[_673 + (96 * _674) + (32 * _810) + ceil32(return_data.size) + 288] = mem[_653 + 12 len 20]
        mem[_673 + (96 * _674) + (32 * _810) + ceil32(return_data.size) + 320] = mem[_653 + 44 len 20]
        mem[_673 + (96 * _674) + (32 * _810) + ceil32(return_data.size) + 352] = mem[_653 + 76 len 20]
        mem[_673 + (96 * _674) + (32 * _810) + ceil32(return_data.size) + 384] = mem[_653 + 96]
        mem[_673 + (96 * _674) + (32 * _810) + ceil32(return_data.size) + 416] = mem[_653 + 128]
        mem[_673 + (96 * _674) + (32 * _810) + ceil32(return_data.size) + 448] = 192
        if address(_933) == address(_934):
            _973 = mem[_932]
            mem[_673 + (96 * _674) + (32 * _810) + ceil32(return_data.size) + 480] = mem[_932]
            mem[_673 + (96 * _674) + (32 * _810) + ceil32(return_data.size) + 512 len ceil32(_973)] = mem[_932 + 32 len ceil32(_973)]
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args _935, 0, address(this.address), 128, ceil32(_973) + 224, mem[_673 + (96 * _674) + (32 * _810) + ceil32(return_data.size) + 288 len ceil32(ceil32(_973)) + 7]
        else:
            _974 = mem[_932]
            mem[_673 + (96 * _674) + (32 * _810) + ceil32(return_data.size) + 480] = mem[_932]
            mem[_673 + (96 * _674) + (32 * _810) + ceil32(return_data.size) + 512 len ceil32(_974)] = mem[_932 + 32 len ceil32(_974)]
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 0, _935, address(this.address), 128, ceil32(_974) + 224, mem[_673 + (96 * _674) + (32 * _810) + ceil32(return_data.size) + 288 len ceil32(ceil32(_974)) + 7]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 0
}

function sub_cfd89b1c(?) {
    require calldata.size - 4 >= 256
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 36).length) + 98 < 97 or ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98
    mem[ceil32(32 * ('cd', 4).length) + 97] = ('cd', 36).length
    require cd[36] + (('cd', 36).length << 7) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = ceil32(32 * ('cd', 4).length) + 129
    while idx < ('cd', 36).length:
        require calldata.size - s >= 128
        _324 = mem[64]
        if mem[64] + 128 < mem[64] or mem[64] + 128 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + 128
        mem[_324] = cd[s]
        mem[_324 + 32] = cd[(s + 32)]
        require cd[(s + 64)] == uint8(cd[(s + 64)])
        mem[_324 + 64] = cd[(s + 64)]
        require cd[(s + 96)] == uint8(cd[(s + 96)])
        mem[_324 + 96] = cd[(s + 96)]
        mem[t] = _324
        idx = idx + 1
        s = s + 128
        t = t + 32
        continue 
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    if ('cd', 100).length > test266151307():
        revert with 0, 65
    _325 = mem[64]
    if mem[64] + ceil32(32 * ('cd', 100).length) + 1 < mem[64] or mem[64] + ceil32(32 * ('cd', 100).length) + 1 > test266151307():
        revert with 0, 65
    mem[64] = mem[64] + ceil32(32 * ('cd', 100).length) + 1
    mem[_325] = ('cd', 100).length
    require calldata.size >= cd[100] + (96 * ('cd', 100).length) + 36
    idx = 0
    s = cd[100] + 36
    t = _325 + 32
    while idx < ('cd', 100).length:
        require calldata.size - s >= 96
        _484 = mem[64]
        if mem[64] + 96 < mem[64] or mem[64] + 96 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + 96
        require cd[s] == address(cd[s])
        mem[_484] = cd[s]
        require cd[(s + 32)] == address(cd[(s + 32)])
        mem[_484 + 32] = cd[(s + 32)]
        require cd[(s + 64)] == address(cd[(s + 64)])
        mem[_484 + 64] = cd[(s + 64)]
        mem[t] = _484
        idx = idx + 1
        s = s + 96
        t = t + 32
        continue 
    require cd[132] <= test266151307()
    require cd[132] + 35 < calldata.size
    if ('cd', 132).length > test266151307():
        revert with 0, 65
    _485 = mem[64]
    if mem[64] + ceil32(32 * ('cd', 132).length) + 1 < mem[64] or mem[64] + ceil32(32 * ('cd', 132).length) + 1 > test266151307():
        revert with 0, 65
    mem[64] = mem[64] + ceil32(32 * ('cd', 132).length) + 1
    mem[_485] = ('cd', 132).length
    require cd[132] + (32 * ('cd', 132).length) + 36 <= calldata.size
    idx = 0
    s = cd[132] + 36
    t = _485 + 32
    while idx < ('cd', 132).length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require calldata.size - 164 >= 96
    _642 = mem[64]
    if mem[64] + 96 < mem[64] or mem[64] + 96 > test266151307():
        revert with 0, 65
    mem[64] = mem[64] + 96
    require cd[164] == bool(cd[164])
    mem[_642] = cd[164]
    require cd[196] == address(cd[196])
    mem[_642 + 32] = cd[196]
    require cd[228] == Mask(32, 224, cd[228])
    mem[_642 + 64] = cd[228]
    if 0 >= mem[ceil32(32 * ('cd', 4).length) + 97]:
        revert with 0, 50
    _645 = mem[mem[ceil32(32 * ('cd', 4).length) + 129] + 64]
    if 0 >= mem[96]:
        revert with 0, 50
    _647 = mem[128]
    if not 10^mem[mem[ceil32(32 * ('cd', 4).length) + 129] + 95 len 1]:
        revert with 0, 18
    _648 = mem[64]
    mem[64] = mem[64] + 160
    mem[_648] = 0
    mem[_648 + 32] = 0
    mem[_648 + 64] = 0
    mem[_648 + 96] = 0
    mem[_648 + 128] = 0
    if mem[_325] - 1 >= mem[_325]:
        revert with 0, 50
    _651 = mem[(32 * mem[_325] - 1) + _325 + 32]
    mem[_648] = mem[mem[(32 * mem[_325] - 1) + _325 + 32] + 12 len 20]
    mem[_648 + 64] = mem[_651 + 76 len 20]
    mem[_648 + 96] = (-_647 + (cd[68] * _647) / 10^uint8(_645)) - 1
    mem[_648 + 32] = mem[_651 + 44 len 20]
    if mem[ceil32(32 * ('cd', 4).length) + 97] - 1 >= mem[ceil32(32 * ('cd', 4).length) + 97]:
        revert with 0, 50
    if ('cd', 132).length - 1 >= ('cd', 132).length:
        revert with 0, 50
    if (-_647 + (cd[68] * _647) / 10^uint8(_645)) - 1 <= 0:
        revert with 0, 'UniswapV2LikeLibrary: INSUFFICIENT_INPUT_AMOUNT'
    if mem[mem[(32 * mem[ceil32(32 * ('cd', 4).length) + 97] - 1) + ceil32(32 * ('cd', 4).length) + 129] + 32] <= 0:
        revert with 0, 'UniswapV2LikeLibrary: INSUFFICIENT_LIQUIDITY'
    if mem[mem[(32 * mem[ceil32(32 * ('cd', 4).length) + 97] - 1) + ceil32(32 * ('cd', 4).length) + 129]] <= 0:
        revert with 0, 'UniswapV2LikeLibrary: INSUFFICIENT_LIQUIDITY'
    if (-_647 + (cd[68] * _647) / 10^uint8(_645)) - 1 and -mem[(32 * ('cd', 132).length - 1) + _485 + 32] + 1000 > -1 / (-_647 + (cd[68] * _647) / 10^uint8(_645)) - 1:
        revert with 0, 17
    if mem[(32 * ('cd', 132).length - 1) + _485 + 32] + (1000 * -_647 + (cd[68] * _647) / 10^uint8(_645)) + (-1 * mem[(32 * ('cd', 132).length - 1) + _485 + 32] * -_647 + (cd[68] * _647) / 10^uint8(_645)) - 1000 and mem[mem[(32 * mem[ceil32(32 * ('cd', 4).length) + 97] - 1) + ceil32(32 * ('cd', 4).length) + 129]] > -1 / mem[(32 * ('cd', 132).length - 1) + _485 + 32] + (1000 * -_647 + (cd[68] * _647) / 10^uint8(_645)) + (-1 * mem[(32 * ('cd', 132).length - 1) + _485 + 32] * -_647 + (cd[68] * _647) / 10^uint8(_645)) - 1000:
        revert with 0, 17
    if mem[mem[(32 * mem[ceil32(32 * ('cd', 4).length) + 97] - 1) + ceil32(32 * ('cd', 4).length) + 129] + 32] and 1000 > -1 / mem[mem[(32 * mem[ceil32(32 * ('cd', 4).length) + 97] - 1) + ceil32(32 * ('cd', 4).length) + 129] + 32]:
        revert with 0, 17
    if 1000 * mem[mem[(32 * mem[ceil32(32 * ('cd', 4).length) + 97] - 1) + ceil32(32 * ('cd', 4).length) + 129] + 32] > !(mem[(32 * ('cd', 132).length - 1) + _485 + 32] + (1000 * -_647 + (cd[68] * _647) / 10^uint8(_645)) + (-1 * mem[(32 * ('cd', 132).length - 1) + _485 + 32] * -_647 + (cd[68] * _647) / 10^uint8(_645)) - 1000):
        revert with 0, 17
    if not (1000 * mem[mem[(32 * mem[ceil32(32 * ('cd', 4).length) + 97] - 1) + ceil32(32 * ('cd', 4).length) + 129] + 32]) + mem[(32 * ('cd', 132).length - 1) + _485 + 32] + (1000 * -_647 + (cd[68] * _647) / 10^uint8(_645)) + (-1 * mem[(32 * ('cd', 132).length - 1) + _485 + 32] * -_647 + (cd[68] * _647) / 10^uint8(_645)) - 1000:
        revert with 0, 18
    mem[_648 + 128] = (-1000 * mem[mem[(32 * mem[ceil32(32 * ('cd', 4).length) + 97] - 1) + ceil32(32 * ('cd', 4).length) + 129]]) + (mem[(32 * ('cd', 132).length - 1) + _485 + 32] * mem[mem[(32 * mem[ceil32(32 * ('cd', 4).length) + 97] - 1) + ceil32(32 * ('cd', 4).length) + 129]]) + (1000 * -_647 + (cd[68] * _647) / 10^uint8(_645) * mem[mem[(32 * mem[ceil32(32 * ('cd', 4).length) + 97] - 1) + ceil32(32 * ('cd', 4).length) + 129]]) - (mem[(32 * ('cd', 132).length - 1) + _485 + 32] * -_647 + (cd[68] * _647) / 10^uint8(_645) * mem[mem[(32 * mem[ceil32(32 * ('cd', 4).length) + 97] - 1) + ceil32(32 * ('cd', 4).length) + 129]]) / (1000 * mem[mem[(32 * mem[ceil32(32 * ('cd', 4).length) + 97] - 1) + ceil32(32 * ('cd', 4).length) + 129] + 32]) + mem[(32 * ('cd', 132).length - 1) + _485 + 32] + (1000 * -_647 + (cd[68] * _647) / 10^uint8(_645)) + (-1 * mem[(32 * ('cd', 132).length - 1) + _485 + 32] * -_647 + (cd[68] * _647) / 10^uint8(_645)) - 1000
    _668 = mem[64]
    mem[mem[64] + 32] = 160
    _669 = mem[_325]
    mem[mem[64] + 192] = mem[_325]
    idx = 0
    s = _325 + 32
    t = mem[64] + 224
    while idx < _669:
        _801 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_801 + 44 len 20]
        mem[t + 64] = mem[_801 + 76 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 96
        continue 
    mem[_668 + 64] = bool(mem[_642])
    mem[_668 + 96] = mem[_642 + 44 len 20]
    mem[_668 + 128] = Mask(32, 224, mem[_642 + 64])
    mem[_668 + 160] = (96 * _669) + 192
    _805 = mem[96]
    mem[_668 + (96 * _669) + 224] = mem[96]
    mem[_668 + (96 * _669) + 256 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
    _927 = mem[64]
    mem[mem[64]] = _668 + (96 * _669) + (32 * mem[96]) + -mem[64] + 224
    mem[64] = _668 + (96 * _669) + (32 * _805) + 256
    _928 = mem[_648 + 32]
    _929 = mem[_648 + 64]
    _930 = mem[_648 + 128]
    _931 = mem[_648]
    mem[_668 + (96 * _669) + (32 * _805) + 260] = mem[_648 + 44 len 20]
    mem[_668 + (96 * _669) + (32 * _805) + 292] = address(_929)
    require ext_code.size(address(_931))
    staticcall address(_931).getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(_928), address(_929)
    mem[_668 + (96 * _669) + (32 * _805) + 256] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = _668 + (96 * _669) + (32 * _805) + ceil32(return_data.size) + 256
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if address(_928) == address(_929):
        revert with 0, 'UniswapV2LikeLibrary: IDENTICAL_ADDRESSES'
    if address(_928) < address(_929):
        if not address(_928):
            revert with 0, 'UniswapV2LikeLibrary: ZERO_ADDRESS'
        mem[_668 + (96 * _669) + (32 * _805) + ceil32(return_data.size) + 288] = mem[_648 + 12 len 20]
        mem[_668 + (96 * _669) + (32 * _805) + ceil32(return_data.size) + 320] = mem[_648 + 44 len 20]
        mem[_668 + (96 * _669) + (32 * _805) + ceil32(return_data.size) + 352] = mem[_648 + 76 len 20]
        mem[_668 + (96 * _669) + (32 * _805) + ceil32(return_data.size) + 384] = mem[_648 + 96]
        mem[_668 + (96 * _669) + (32 * _805) + ceil32(return_data.size) + 416] = mem[_648 + 128]
        mem[_668 + (96 * _669) + (32 * _805) + ceil32(return_data.size) + 448] = 192
        if address(_928) == address(_928):
            _966 = mem[_927]
            mem[_668 + (96 * _669) + (32 * _805) + ceil32(return_data.size) + 480] = mem[_927]
            mem[_668 + (96 * _669) + (32 * _805) + ceil32(return_data.size) + 512 len ceil32(_966)] = mem[_927 + 32 len ceil32(_966)]
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args _930, 0, address(this.address), 128, ceil32(_966) + 224, mem[_668 + (96 * _669) + (32 * _805) + ceil32(return_data.size) + 288 len ceil32(ceil32(_966)) + 7]
        else:
            _967 = mem[_927]
            mem[_668 + (96 * _669) + (32 * _805) + ceil32(return_data.size) + 480] = mem[_927]
            mem[_668 + (96 * _669) + (32 * _805) + ceil32(return_data.size) + 512 len ceil32(_967)] = mem[_927 + 32 len ceil32(_967)]
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 0, _930, address(this.address), 128, ceil32(_967) + 224, mem[_668 + (96 * _669) + (32 * _805) + ceil32(return_data.size) + 288 len ceil32(ceil32(_967)) + 7]
    else:
        if not address(_929):
            revert with 0, 'UniswapV2LikeLibrary: ZERO_ADDRESS'
        mem[_668 + (96 * _669) + (32 * _805) + ceil32(return_data.size) + 288] = mem[_648 + 12 len 20]
        mem[_668 + (96 * _669) + (32 * _805) + ceil32(return_data.size) + 320] = mem[_648 + 44 len 20]
        mem[_668 + (96 * _669) + (32 * _805) + ceil32(return_data.size) + 352] = mem[_648 + 76 len 20]
        mem[_668 + (96 * _669) + (32 * _805) + ceil32(return_data.size) + 384] = mem[_648 + 96]
        mem[_668 + (96 * _669) + (32 * _805) + ceil32(return_data.size) + 416] = mem[_648 + 128]
        mem[_668 + (96 * _669) + (32 * _805) + ceil32(return_data.size) + 448] = 192
        if address(_928) == address(_929):
            _968 = mem[_927]
            mem[_668 + (96 * _669) + (32 * _805) + ceil32(return_data.size) + 480] = mem[_927]
            mem[_668 + (96 * _669) + (32 * _805) + ceil32(return_data.size) + 512 len ceil32(_968)] = mem[_927 + 32 len ceil32(_968)]
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args _930, 0, address(this.address), 128, ceil32(_968) + 224, mem[_668 + (96 * _669) + (32 * _805) + ceil32(return_data.size) + 288 len ceil32(ceil32(_968)) + 7]
        else:
            _969 = mem[_927]
            mem[_668 + (96 * _669) + (32 * _805) + ceil32(return_data.size) + 480] = mem[_927]
            mem[_668 + (96 * _669) + (32 * _805) + ceil32(return_data.size) + 512 len ceil32(_969)] = mem[_927 + 32 len ceil32(_969)]
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 0, _930, address(this.address), 128, ceil32(_969) + 224, mem[_668 + (96 * _669) + (32 * _805) + ceil32(return_data.size) + 288 len ceil32(ceil32(_969)) + 7]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 0
}

function sub_dcf17f74(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(32 * ('cd', 4).length) + 97
    mem[96] = ('cd', 4).length
    require calldata.size >= cd[4] + (96 * ('cd', 4).length) + 36
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require calldata.size - s >= 96
        _852 = mem[64]
        if mem[64] + 96 < mem[64] or mem[64] + 96 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + 96
        require cd[s] == address(cd[s])
        mem[_852] = cd[s]
        require cd[(s + 32)] == address(cd[(s + 32)])
        mem[_852 + 32] = cd[(s + 32)]
        require cd[(s + 64)] == address(cd[(s + 64)])
        mem[_852 + 64] = cd[(s + 64)]
        mem[t] = _852
        idx = idx + 1
        s = s + 96
        t = t + 32
        continue 
    _853 = mem[96]
    if mem[96] > test266151307():
        revert with 0, 65
    _854 = mem[64]
    mem[mem[64]] = mem[96]
    mem[64] = mem[64] + (32 * _853) + 32
    if not _853:
        if 0 >= mem[96]:
            revert with 0, 50
        _856 = mem[128]
        _857 = mem[mem[128]]
        _858 = mem[mem[128] + 32]
        _859 = mem[mem[128] + 64]
        if mem[mem[128] + 44 len 20] == mem[mem[128] + 76 len 20]:
            revert with 0, 'UniswapV2LikeLibrary: IDENTICAL_ADDRESSES'
        if mem[mem[128] + 44 len 20] < mem[mem[128] + 76 len 20]:
            if not mem[mem[128] + 44 len 20]:
                revert with 0, 'UniswapV2LikeLibrary: ZERO_ADDRESS'
            mem[_854 + (32 * _853) + 36] = mem[mem[128] + 44 len 20]
            mem[_854 + (32 * _853) + 68] = address(_859)
            require ext_code.size(address(_857))
            staticcall address(_857).getPair(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args address(_858), address(_859)
            mem[_854 + (32 * _853) + 32] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).getReserves() with:
                    gas gas_remaining wei
            mem[_854 + (32 * _853) + ceil32(return_data.size) + 32 len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_call.return_data[0] == ext_call.return_data[18 len 14]
            require ext_call.return_data[32] == ext_call.return_data[50 len 14]
            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
            mem[64] = _854 + (32 * _853) + (2 * ceil32(return_data.size)) + 160
            if address(_858) == address(_858):
                mem[_854 + (32 * _853) + (2 * ceil32(return_data.size)) + 32] = Mask(112, 0, ext_call.return_data[0])
                mem[_854 + (32 * _853) + (2 * ceil32(return_data.size)) + 64] = Mask(112, 0, ext_call.return_data[32])
                require ext_code.size(mem[_856 + 44 len 20])
                staticcall mem[_856 + 44 len 20].0x313ce567 with:
                        gas gas_remaining wei
                mem[_854 + (32 * _853) + (2 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = _854 + (32 * _853) + (4 * ceil32(return_data.size)) + 160
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                mem[_854 + (32 * _853) + (2 * ceil32(return_data.size)) + 96] = ext_call.return_data[31 len 1]
                require ext_code.size(mem[_856 + 76 len 20])
                staticcall mem[_856 + 76 len 20].0x313ce567 with:
                        gas gas_remaining wei
                mem[_854 + (32 * _853) + (4 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = _854 + (32 * _853) + (6 * ceil32(return_data.size)) + 160
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                mem[_854 + (32 * _853) + (2 * ceil32(return_data.size)) + 128] = ext_call.return_data[31 len 1]
                if 0 >= mem[_854]:
                    revert with 0, 50
                mem[_854 + 32] = _854 + (32 * _853) + (2 * ceil32(return_data.size)) + 32
                _1702 = mem[96]
                idx = 1
                while idx < _1702:
                    if idx >= mem[96]:
                        revert with 0, 50
                    _1712 = mem[(32 * idx) + 128]
                    if idx < 1:
                        revert with 0, 17
                    if idx - 1 >= mem[96]:
                        revert with 0, 50
                    if mem[mem[(32 * idx) + 128] + 44 len 20] != mem[mem[(32 * idx - 1) + 128] + 76 len 20]:
                        revert with 0, '!'
                    _1769 = mem[mem[(32 * idx) + 128]]
                    _1770 = mem[mem[(32 * idx) + 128] + 32]
                    _1771 = mem[mem[(32 * idx) + 128] + 64]
                    if mem[mem[(32 * idx) + 128] + 44 len 20] == mem[mem[(32 * idx) + 128] + 76 len 20]:
                        revert with 0, 'UniswapV2LikeLibrary: IDENTICAL_ADDRESSES'
                    if mem[mem[(32 * idx) + 128] + 44 len 20] < mem[mem[(32 * idx) + 128] + 76 len 20]:
                        if not mem[mem[(32 * idx) + 128] + 44 len 20]:
                            revert with 0, 'UniswapV2LikeLibrary: ZERO_ADDRESS'
                        mem[mem[64] + 4] = mem[mem[(32 * idx) + 128] + 44 len 20]
                        mem[mem[64] + 36] = address(_1771)
                        require ext_code.size(address(_1769))
                        staticcall address(_1769).getPair(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4], address(_1771)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1842 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1842] == mem[_1842 + 12 len 20]
                        require ext_code.size(mem[_1842 + 12 len 20])
                        staticcall mem[_1842 + 12 len 20].getReserves() with:
                                gas gas_remaining wei
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1882 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        _1892 = mem[_1882]
                        require mem[_1882] == mem[_1882 + 18 len 14]
                        _1902 = mem[_1882 + 32]
                        require mem[_1882 + 32] == mem[_1882 + 50 len 14]
                        require mem[_1882 + 64] == mem[_1882 + 92 len 4]
                        if address(_1770) == address(_1770):
                            _1938 = mem[64]
                            mem[64] = mem[64] + 128
                            mem[_1938] = Mask(112, 0, _1892)
                            mem[_1938 + 32] = Mask(112, 0, _1902)
                            if idx < 1:
                                revert with 0, 17
                            if idx - 1 >= mem[_854]:
                                revert with 0, 50
                            mem[_1938 + 64] = mem[mem[(32 * idx - 1) + _854 + 32] + 127 len 1]
                            require ext_code.size(mem[_1712 + 76 len 20])
                            staticcall mem[_1712 + 76 len 20].0x313ce567 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2066 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2066] == mem[_2066 + 31 len 1]
                            mem[_1938 + 96] = mem[_2066 + 31 len 1]
                            if idx >= mem[_854]:
                                revert with 0, 50
                            mem[(32 * idx) + _854 + 32] = _1938
                        else:
                            _1939 = mem[64]
                            mem[64] = mem[64] + 128
                            mem[_1939] = Mask(112, 0, _1902)
                            mem[_1939 + 32] = Mask(112, 0, _1892)
                            if idx < 1:
                                revert with 0, 17
                            if idx - 1 >= mem[_854]:
                                revert with 0, 50
                            mem[_1939 + 64] = mem[mem[(32 * idx - 1) + _854 + 32] + 127 len 1]
                            require ext_code.size(mem[_1712 + 76 len 20])
                            staticcall mem[_1712 + 76 len 20].0x313ce567 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2067 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2067] == mem[_2067 + 31 len 1]
                            mem[_1939 + 96] = mem[_2067 + 31 len 1]
                            if idx >= mem[_854]:
                                revert with 0, 50
                            mem[(32 * idx) + _854 + 32] = _1939
                    else:
                        if not mem[mem[(32 * idx) + 128] + 76 len 20]:
                            revert with 0, 'UniswapV2LikeLibrary: ZERO_ADDRESS'
                        mem[mem[64] + 4] = mem[mem[(32 * idx) + 128] + 44 len 20]
                        mem[mem[64] + 36] = address(_1771)
                        require ext_code.size(address(_1769))
                        staticcall address(_1769).getPair(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4], address(_1771)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1843 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1843] == mem[_1843 + 12 len 20]
                        require ext_code.size(mem[_1843 + 12 len 20])
                        staticcall mem[_1843 + 12 len 20].getReserves() with:
                                gas gas_remaining wei
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1883 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        _1893 = mem[_1883]
                        require mem[_1883] == mem[_1883 + 18 len 14]
                        _1903 = mem[_1883 + 32]
                        require mem[_1883 + 32] == mem[_1883 + 50 len 14]
                        require mem[_1883 + 64] == mem[_1883 + 92 len 4]
                        if address(_1770) == address(_1771):
                            _1940 = mem[64]
                            mem[64] = mem[64] + 128
                            mem[_1940] = Mask(112, 0, _1893)
                            mem[_1940 + 32] = Mask(112, 0, _1903)
                            if idx < 1:
                                revert with 0, 17
                            if idx - 1 >= mem[_854]:
                                revert with 0, 50
                            mem[_1940 + 64] = mem[mem[(32 * idx - 1) + _854 + 32] + 127 len 1]
                            require ext_code.size(mem[_1712 + 76 len 20])
                            staticcall mem[_1712 + 76 len 20].0x313ce567 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2068 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2068] == mem[_2068 + 31 len 1]
                            mem[_1940 + 96] = mem[_2068 + 31 len 1]
                            if idx >= mem[_854]:
                                revert with 0, 50
                            mem[(32 * idx) + _854 + 32] = _1940
                        else:
                            _1941 = mem[64]
                            mem[64] = mem[64] + 128
                            mem[_1941] = Mask(112, 0, _1903)
                            mem[_1941 + 32] = Mask(112, 0, _1893)
                            if idx < 1:
                                revert with 0, 17
                            if idx - 1 >= mem[_854]:
                                revert with 0, 50
                            mem[_1941 + 64] = mem[mem[(32 * idx - 1) + _854 + 32] + 127 len 1]
                            require ext_code.size(mem[_1712 + 76 len 20])
                            staticcall mem[_1712 + 76 len 20].0x313ce567 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2069 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2069] == mem[_2069 + 31 len 1]
                            mem[_1941 + 96] = mem[_2069 + 31 len 1]
                            if idx >= mem[_854]:
                                revert with 0, 50
                            mem[(32 * idx) + _854 + 32] = _1941
                    if idx == -1:
                        revert with 0, 17
                    _1702 = mem[96]
                    idx = idx + 1
                    continue 
                _1711 = mem[64]
                mem[mem[64]] = 32
                _1720 = mem[_854]
                mem[mem[64] + 32] = mem[_854]
                idx = 0
                s = _854 + 32
                t = mem[64] + 64
                while idx < _1720:
                    _2474 = mem[s]
                    mem[t] = mem[mem[s]]
                    mem[t + 32] = mem[_2474 + 32]
                    mem[t + 64] = mem[_2474 + 95 len 1]
                    mem[t + 96] = mem[_2474 + 127 len 1]
                    idx = idx + 1
                    s = s + 32
                    t = t + 128
                    continue 
                return memory
                  from mem[64]
                   len _1711 + (128 * _1720) + -mem[64] + 64
            mem[_854 + (32 * _853) + (2 * ceil32(return_data.size)) + 32] = Mask(112, 0, ext_call.return_data[32])
            mem[_854 + (32 * _853) + (2 * ceil32(return_data.size)) + 64] = Mask(112, 0, ext_call.return_data[0])
            require ext_code.size(mem[_856 + 44 len 20])
            staticcall mem[_856 + 44 len 20].0x313ce567 with:
                    gas gas_remaining wei
            mem[_854 + (32 * _853) + (2 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = _854 + (32 * _853) + (4 * ceil32(return_data.size)) + 160
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            mem[_854 + (32 * _853) + (2 * ceil32(return_data.size)) + 96] = ext_call.return_data[31 len 1]
            require ext_code.size(mem[_856 + 76 len 20])
            staticcall mem[_856 + 76 len 20].0x313ce567 with:
                    gas gas_remaining wei
            mem[_854 + (32 * _853) + (4 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = _854 + (32 * _853) + (6 * ceil32(return_data.size)) + 160
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            mem[_854 + (32 * _853) + (2 * ceil32(return_data.size)) + 128] = ext_call.return_data[31 len 1]
            if 0 >= mem[_854]:
                revert with 0, 50
            mem[_854 + 32] = _854 + (32 * _853) + (2 * ceil32(return_data.size)) + 32
            _1703 = mem[96]
            idx = 1
            while idx < _1703:
                if idx >= mem[96]:
                    revert with 0, 50
                _1714 = mem[(32 * idx) + 128]
                if idx < 1:
                    revert with 0, 17
                if idx - 1 >= mem[96]:
                    revert with 0, 50
                if mem[mem[(32 * idx) + 128] + 44 len 20] != mem[mem[(32 * idx - 1) + 128] + 76 len 20]:
                    revert with 0, '!'
                _1773 = mem[mem[(32 * idx) + 128]]
                _1774 = mem[mem[(32 * idx) + 128] + 32]
                _1775 = mem[mem[(32 * idx) + 128] + 64]
                if mem[mem[(32 * idx) + 128] + 44 len 20] == mem[mem[(32 * idx) + 128] + 76 len 20]:
                    revert with 0, 'UniswapV2LikeLibrary: IDENTICAL_ADDRESSES'
                if mem[mem[(32 * idx) + 128] + 44 len 20] < mem[mem[(32 * idx) + 128] + 76 len 20]:
                    if not mem[mem[(32 * idx) + 128] + 44 len 20]:
                        revert with 0, 'UniswapV2LikeLibrary: ZERO_ADDRESS'
                    mem[mem[64] + 4] = mem[mem[(32 * idx) + 128] + 44 len 20]
                    mem[mem[64] + 36] = address(_1775)
                    require ext_code.size(address(_1773))
                    staticcall address(_1773).getPair(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4], address(_1775)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1844 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1844] == mem[_1844 + 12 len 20]
                    require ext_code.size(mem[_1844 + 12 len 20])
                    staticcall mem[_1844 + 12 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1884 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _1894 = mem[_1884]
                    require mem[_1884] == mem[_1884 + 18 len 14]
                    _1904 = mem[_1884 + 32]
                    require mem[_1884 + 32] == mem[_1884 + 50 len 14]
                    require mem[_1884 + 64] == mem[_1884 + 92 len 4]
                    if address(_1774) == address(_1774):
                        _1942 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_1942] = Mask(112, 0, _1894)
                        mem[_1942 + 32] = Mask(112, 0, _1904)
                        if idx < 1:
                            revert with 0, 17
                        if idx - 1 >= mem[_854]:
                            revert with 0, 50
                        mem[_1942 + 64] = mem[mem[(32 * idx - 1) + _854 + 32] + 127 len 1]
                        require ext_code.size(mem[_1714 + 76 len 20])
                        staticcall mem[_1714 + 76 len 20].0x313ce567 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2070 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2070] == mem[_2070 + 31 len 1]
                        mem[_1942 + 96] = mem[_2070 + 31 len 1]
                        if idx >= mem[_854]:
                            revert with 0, 50
                        mem[(32 * idx) + _854 + 32] = _1942
                    else:
                        _1943 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_1943] = Mask(112, 0, _1904)
                        mem[_1943 + 32] = Mask(112, 0, _1894)
                        if idx < 1:
                            revert with 0, 17
                        if idx - 1 >= mem[_854]:
                            revert with 0, 50
                        mem[_1943 + 64] = mem[mem[(32 * idx - 1) + _854 + 32] + 127 len 1]
                        require ext_code.size(mem[_1714 + 76 len 20])
                        staticcall mem[_1714 + 76 len 20].0x313ce567 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2071 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2071] == mem[_2071 + 31 len 1]
                        mem[_1943 + 96] = mem[_2071 + 31 len 1]
                        if idx >= mem[_854]:
                            revert with 0, 50
                        mem[(32 * idx) + _854 + 32] = _1943
                else:
                    if not mem[mem[(32 * idx) + 128] + 76 len 20]:
                        revert with 0, 'UniswapV2LikeLibrary: ZERO_ADDRESS'
                    mem[mem[64] + 4] = mem[mem[(32 * idx) + 128] + 44 len 20]
                    mem[mem[64] + 36] = address(_1775)
                    require ext_code.size(address(_1773))
                    staticcall address(_1773).getPair(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4], address(_1775)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1845 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1845] == mem[_1845 + 12 len 20]
                    require ext_code.size(mem[_1845 + 12 len 20])
                    staticcall mem[_1845 + 12 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1885 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _1895 = mem[_1885]
                    require mem[_1885] == mem[_1885 + 18 len 14]
                    _1905 = mem[_1885 + 32]
                    require mem[_1885 + 32] == mem[_1885 + 50 len 14]
                    require mem[_1885 + 64] == mem[_1885 + 92 len 4]
                    if address(_1774) == address(_1775):
                        _1944 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_1944] = Mask(112, 0, _1895)
                        mem[_1944 + 32] = Mask(112, 0, _1905)
                        if idx < 1:
                            revert with 0, 17
                        if idx - 1 >= mem[_854]:
                            revert with 0, 50
                        mem[_1944 + 64] = mem[mem[(32 * idx - 1) + _854 + 32] + 127 len 1]
                        require ext_code.size(mem[_1714 + 76 len 20])
                        staticcall mem[_1714 + 76 len 20].0x313ce567 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2072 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2072] == mem[_2072 + 31 len 1]
                        mem[_1944 + 96] = mem[_2072 + 31 len 1]
                        if idx >= mem[_854]:
                            revert with 0, 50
                        mem[(32 * idx) + _854 + 32] = _1944
                    else:
                        _1945 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_1945] = Mask(112, 0, _1905)
                        mem[_1945 + 32] = Mask(112, 0, _1895)
                        if idx < 1:
                            revert with 0, 17
                        if idx - 1 >= mem[_854]:
                            revert with 0, 50
                        mem[_1945 + 64] = mem[mem[(32 * idx - 1) + _854 + 32] + 127 len 1]
                        require ext_code.size(mem[_1714 + 76 len 20])
                        staticcall mem[_1714 + 76 len 20].0x313ce567 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2073 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2073] == mem[_2073 + 31 len 1]
                        mem[_1945 + 96] = mem[_2073 + 31 len 1]
                        if idx >= mem[_854]:
                            revert with 0, 50
                        mem[(32 * idx) + _854 + 32] = _1945
                if idx == -1:
                    revert with 0, 17
                _1703 = mem[96]
                idx = idx + 1
                continue 
            _1713 = mem[64]
            mem[mem[64]] = 32
            _1721 = mem[_854]
            mem[mem[64] + 32] = mem[_854]
            idx = 0
            s = _854 + 32
            t = mem[64] + 64
            while idx < _1721:
                _2479 = mem[s]
                mem[t] = mem[mem[s]]
                mem[t + 32] = mem[_2479 + 32]
                mem[t + 64] = mem[_2479 + 95 len 1]
                mem[t + 96] = mem[_2479 + 127 len 1]
                idx = idx + 1
                s = s + 32
                t = t + 128
                continue 
            return memory
              from mem[64]
               len _1713 + (128 * _1721) + -mem[64] + 64
        if not mem[mem[128] + 76 len 20]:
            revert with 0, 'UniswapV2LikeLibrary: ZERO_ADDRESS'
        mem[_854 + (32 * _853) + 36] = mem[mem[128] + 44 len 20]
        mem[_854 + (32 * _853) + 68] = address(_859)
        require ext_code.size(address(_857))
        staticcall address(_857).getPair(address arg1, address arg2) with:
                gas gas_remaining wei
               args address(_858), address(_859)
        mem[_854 + (32 * _853) + 32] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).getReserves() with:
                gas gas_remaining wei
        mem[_854 + (32 * _853) + ceil32(return_data.size) + 32 len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        mem[64] = _854 + (32 * _853) + (2 * ceil32(return_data.size)) + 160
        if address(_858) == address(_859):
            mem[_854 + (32 * _853) + (2 * ceil32(return_data.size)) + 32] = Mask(112, 0, ext_call.return_data[0])
            mem[_854 + (32 * _853) + (2 * ceil32(return_data.size)) + 64] = Mask(112, 0, ext_call.return_data[32])
            require ext_code.size(mem[_856 + 44 len 20])
            staticcall mem[_856 + 44 len 20].0x313ce567 with:
                    gas gas_remaining wei
            mem[_854 + (32 * _853) + (2 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = _854 + (32 * _853) + (4 * ceil32(return_data.size)) + 160
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            mem[_854 + (32 * _853) + (2 * ceil32(return_data.size)) + 96] = ext_call.return_data[31 len 1]
            require ext_code.size(mem[_856 + 76 len 20])
            staticcall mem[_856 + 76 len 20].0x313ce567 with:
                    gas gas_remaining wei
            mem[_854 + (32 * _853) + (4 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = _854 + (32 * _853) + (6 * ceil32(return_data.size)) + 160
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            mem[_854 + (32 * _853) + (2 * ceil32(return_data.size)) + 128] = ext_call.return_data[31 len 1]
            if 0 >= mem[_854]:
                revert with 0, 50
            mem[_854 + 32] = _854 + (32 * _853) + (2 * ceil32(return_data.size)) + 32
            _1704 = mem[96]
            idx = 1
            while idx < _1704:
                if idx >= mem[96]:
                    revert with 0, 50
                _1716 = mem[(32 * idx) + 128]
                if idx < 1:
                    revert with 0, 17
                if idx - 1 >= mem[96]:
                    revert with 0, 50
                if mem[mem[(32 * idx) + 128] + 44 len 20] != mem[mem[(32 * idx - 1) + 128] + 76 len 20]:
                    revert with 0, '!'
                _1777 = mem[mem[(32 * idx) + 128]]
                _1778 = mem[mem[(32 * idx) + 128] + 32]
                _1779 = mem[mem[(32 * idx) + 128] + 64]
                if mem[mem[(32 * idx) + 128] + 44 len 20] == mem[mem[(32 * idx) + 128] + 76 len 20]:
                    revert with 0, 'UniswapV2LikeLibrary: IDENTICAL_ADDRESSES'
                if mem[mem[(32 * idx) + 128] + 44 len 20] < mem[mem[(32 * idx) + 128] + 76 len 20]:
                    if not mem[mem[(32 * idx) + 128] + 44 len 20]:
                        revert with 0, 'UniswapV2LikeLibrary: ZERO_ADDRESS'
                    mem[mem[64] + 4] = mem[mem[(32 * idx) + 128] + 44 len 20]
                    mem[mem[64] + 36] = address(_1779)
                    require ext_code.size(address(_1777))
                    staticcall address(_1777).getPair(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4], address(_1779)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1846 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1846] == mem[_1846 + 12 len 20]
                    require ext_code.size(mem[_1846 + 12 len 20])
                    staticcall mem[_1846 + 12 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1886 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _1896 = mem[_1886]
                    require mem[_1886] == mem[_1886 + 18 len 14]
                    _1906 = mem[_1886 + 32]
                    require mem[_1886 + 32] == mem[_1886 + 50 len 14]
                    require mem[_1886 + 64] == mem[_1886 + 92 len 4]
                    if address(_1778) == address(_1778):
                        _1946 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_1946] = Mask(112, 0, _1896)
                        mem[_1946 + 32] = Mask(112, 0, _1906)
                        if idx < 1:
                            revert with 0, 17
                        if idx - 1 >= mem[_854]:
                            revert with 0, 50
                        mem[_1946 + 64] = mem[mem[(32 * idx - 1) + _854 + 32] + 127 len 1]
                        require ext_code.size(mem[_1716 + 76 len 20])
                        staticcall mem[_1716 + 76 len 20].0x313ce567 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2074 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2074] == mem[_2074 + 31 len 1]
                        mem[_1946 + 96] = mem[_2074 + 31 len 1]
                        if idx >= mem[_854]:
                            revert with 0, 50
                        mem[(32 * idx) + _854 + 32] = _1946
                    else:
                        _1947 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_1947] = Mask(112, 0, _1906)
                        mem[_1947 + 32] = Mask(112, 0, _1896)
                        if idx < 1:
                            revert with 0, 17
                        if idx - 1 >= mem[_854]:
                            revert with 0, 50
                        mem[_1947 + 64] = mem[mem[(32 * idx - 1) + _854 + 32] + 127 len 1]
                        require ext_code.size(mem[_1716 + 76 len 20])
                        staticcall mem[_1716 + 76 len 20].0x313ce567 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2075 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2075] == mem[_2075 + 31 len 1]
                        mem[_1947 + 96] = mem[_2075 + 31 len 1]
                        if idx >= mem[_854]:
                            revert with 0, 50
                        mem[(32 * idx) + _854 + 32] = _1947
                else:
                    if not mem[mem[(32 * idx) + 128] + 76 len 20]:
                        revert with 0, 'UniswapV2LikeLibrary: ZERO_ADDRESS'
                    mem[mem[64] + 4] = mem[mem[(32 * idx) + 128] + 44 len 20]
                    mem[mem[64] + 36] = address(_1779)
                    require ext_code.size(address(_1777))
                    staticcall address(_1777).getPair(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4], address(_1779)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1847 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1847] == mem[_1847 + 12 len 20]
                    require ext_code.size(mem[_1847 + 12 len 20])
                    staticcall mem[_1847 + 12 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1887 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _1897 = mem[_1887]
                    require mem[_1887] == mem[_1887 + 18 len 14]
                    _1907 = mem[_1887 + 32]
                    require mem[_1887 + 32] == mem[_1887 + 50 len 14]
                    require mem[_1887 + 64] == mem[_1887 + 92 len 4]
                    if address(_1778) == address(_1779):
                        _1948 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_1948] = Mask(112, 0, _1897)
                        mem[_1948 + 32] = Mask(112, 0, _1907)
                        if idx < 1:
                            revert with 0, 17
                        if idx - 1 >= mem[_854]:
                            revert with 0, 50
                        mem[_1948 + 64] = mem[mem[(32 * idx - 1) + _854 + 32] + 127 len 1]
                        require ext_code.size(mem[_1716 + 76 len 20])
                        staticcall mem[_1716 + 76 len 20].0x313ce567 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2076 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2076] == mem[_2076 + 31 len 1]
                        mem[_1948 + 96] = mem[_2076 + 31 len 1]
                        if idx >= mem[_854]:
                            revert with 0, 50
                        mem[(32 * idx) + _854 + 32] = _1948
                    else:
                        _1949 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_1949] = Mask(112, 0, _1907)
                        mem[_1949 + 32] = Mask(112, 0, _1897)
                        if idx < 1:
                            revert with 0, 17
                        if idx - 1 >= mem[_854]:
                            revert with 0, 50
                        mem[_1949 + 64] = mem[mem[(32 * idx - 1) + _854 + 32] + 127 len 1]
                        require ext_code.size(mem[_1716 + 76 len 20])
                        staticcall mem[_1716 + 76 len 20].0x313ce567 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2077 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2077] == mem[_2077 + 31 len 1]
                        mem[_1949 + 96] = mem[_2077 + 31 len 1]
                        if idx >= mem[_854]:
                            revert with 0, 50
                        mem[(32 * idx) + _854 + 32] = _1949
                if idx == -1:
                    revert with 0, 17
                _1704 = mem[96]
                idx = idx + 1
                continue 
            _1715 = mem[64]
            mem[mem[64]] = 32
            _1722 = mem[_854]
            mem[mem[64] + 32] = mem[_854]
            idx = 0
            s = _854 + 32
            t = mem[64] + 64
            while idx < _1722:
                _2484 = mem[s]
                mem[t] = mem[mem[s]]
                mem[t + 32] = mem[_2484 + 32]
                mem[t + 64] = mem[_2484 + 95 len 1]
                mem[t + 96] = mem[_2484 + 127 len 1]
                idx = idx + 1
                s = s + 32
                t = t + 128
                continue 
            return memory
              from mem[64]
               len _1715 + (128 * _1722) + -mem[64] + 64
        mem[_854 + (32 * _853) + (2 * ceil32(return_data.size)) + 32] = Mask(112, 0, ext_call.return_data[32])
        mem[_854 + (32 * _853) + (2 * ceil32(return_data.size)) + 64] = Mask(112, 0, ext_call.return_data[0])
        require ext_code.size(mem[_856 + 44 len 20])
        staticcall mem[_856 + 44 len 20].0x313ce567 with:
                gas gas_remaining wei
        mem[_854 + (32 * _853) + (2 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = _854 + (32 * _853) + (4 * ceil32(return_data.size)) + 160
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        mem[_854 + (32 * _853) + (2 * ceil32(return_data.size)) + 96] = ext_call.return_data[31 len 1]
        require ext_code.size(mem[_856 + 76 len 20])
        staticcall mem[_856 + 76 len 20].0x313ce567 with:
                gas gas_remaining wei
        mem[_854 + (32 * _853) + (4 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = _854 + (32 * _853) + (6 * ceil32(return_data.size)) + 160
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        mem[_854 + (32 * _853) + (2 * ceil32(return_data.size)) + 128] = ext_call.return_data[31 len 1]
        if 0 >= mem[_854]:
            revert with 0, 50
        mem[_854 + 32] = _854 + (32 * _853) + (2 * ceil32(return_data.size)) + 32
        _1705 = mem[96]
        idx = 1
        while idx < _1705:
            if idx >= mem[96]:
                revert with 0, 50
            _1718 = mem[(32 * idx) + 128]
            if idx < 1:
                revert with 0, 17
            if idx - 1 >= mem[96]:
                revert with 0, 50
            if mem[mem[(32 * idx) + 128] + 44 len 20] != mem[mem[(32 * idx - 1) + 128] + 76 len 20]:
                revert with 0, '!'
            _1781 = mem[mem[(32 * idx) + 128]]
            _1782 = mem[mem[(32 * idx) + 128] + 32]
            _1783 = mem[mem[(32 * idx) + 128] + 64]
            if mem[mem[(32 * idx) + 128] + 44 len 20] == mem[mem[(32 * idx) + 128] + 76 len 20]:
                revert with 0, 'UniswapV2LikeLibrary: IDENTICAL_ADDRESSES'
            if mem[mem[(32 * idx) + 128] + 44 len 20] < mem[mem[(32 * idx) + 128] + 76 len 20]:
                if not mem[mem[(32 * idx) + 128] + 44 len 20]:
                    revert with 0, 'UniswapV2LikeLibrary: ZERO_ADDRESS'
                mem[mem[64] + 4] = mem[mem[(32 * idx) + 128] + 44 len 20]
                mem[mem[64] + 36] = address(_1783)
                require ext_code.size(address(_1781))
                staticcall address(_1781).getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4], address(_1783)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1848 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1848] == mem[_1848 + 12 len 20]
                require ext_code.size(mem[_1848 + 12 len 20])
                staticcall mem[_1848 + 12 len 20].getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1888 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _1898 = mem[_1888]
                require mem[_1888] == mem[_1888 + 18 len 14]
                _1908 = mem[_1888 + 32]
                require mem[_1888 + 32] == mem[_1888 + 50 len 14]
                require mem[_1888 + 64] == mem[_1888 + 92 len 4]
                if address(_1782) == address(_1782):
                    _1950 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_1950] = Mask(112, 0, _1898)
                    mem[_1950 + 32] = Mask(112, 0, _1908)
                    if idx < 1:
                        revert with 0, 17
                    if idx - 1 >= mem[_854]:
                        revert with 0, 50
                    mem[_1950 + 64] = mem[mem[(32 * idx - 1) + _854 + 32] + 127 len 1]
                    require ext_code.size(mem[_1718 + 76 len 20])
                    staticcall mem[_1718 + 76 len 20].0x313ce567 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2078 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2078] == mem[_2078 + 31 len 1]
                    mem[_1950 + 96] = mem[_2078 + 31 len 1]
                    if idx >= mem[_854]:
                        revert with 0, 50
                    mem[(32 * idx) + _854 + 32] = _1950
                else:
                    _1951 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_1951] = Mask(112, 0, _1908)
                    mem[_1951 + 32] = Mask(112, 0, _1898)
                    if idx < 1:
                        revert with 0, 17
                    if idx - 1 >= mem[_854]:
                        revert with 0, 50
                    mem[_1951 + 64] = mem[mem[(32 * idx - 1) + _854 + 32] + 127 len 1]
                    require ext_code.size(mem[_1718 + 76 len 20])
                    staticcall mem[_1718 + 76 len 20].0x313ce567 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2079 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2079] == mem[_2079 + 31 len 1]
                    mem[_1951 + 96] = mem[_2079 + 31 len 1]
                    if idx >= mem[_854]:
                        revert with 0, 50
                    mem[(32 * idx) + _854 + 32] = _1951
            else:
                if not mem[mem[(32 * idx) + 128] + 76 len 20]:
                    revert with 0, 'UniswapV2LikeLibrary: ZERO_ADDRESS'
                mem[mem[64] + 4] = mem[mem[(32 * idx) + 128] + 44 len 20]
                mem[mem[64] + 36] = address(_1783)
                require ext_code.size(address(_1781))
                staticcall address(_1781).getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4], address(_1783)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1849 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1849] == mem[_1849 + 12 len 20]
                require ext_code.size(mem[_1849 + 12 len 20])
                staticcall mem[_1849 + 12 len 20].getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1889 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _1899 = mem[_1889]
                require mem[_1889] == mem[_1889 + 18 len 14]
                _1909 = mem[_1889 + 32]
                require mem[_1889 + 32] == mem[_1889 + 50 len 14]
                require mem[_1889 + 64] == mem[_1889 + 92 len 4]
                if address(_1782) == address(_1783):
                    _1952 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_1952] = Mask(112, 0, _1899)
                    mem[_1952 + 32] = Mask(112, 0, _1909)
                    if idx < 1:
                        revert with 0, 17
                    if idx - 1 >= mem[_854]:
                        revert with 0, 50
                    mem[_1952 + 64] = mem[mem[(32 * idx - 1) + _854 + 32] + 127 len 1]
                    require ext_code.size(mem[_1718 + 76 len 20])
                    staticcall mem[_1718 + 76 len 20].0x313ce567 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2080 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2080] == mem[_2080 + 31 len 1]
                    mem[_1952 + 96] = mem[_2080 + 31 len 1]
                    if idx >= mem[_854]:
                        revert with 0, 50
                    mem[(32 * idx) + _854 + 32] = _1952
                else:
                    _1953 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_1953] = Mask(112, 0, _1909)
                    mem[_1953 + 32] = Mask(112, 0, _1899)
                    if idx < 1:
                        revert with 0, 17
                    if idx - 1 >= mem[_854]:
                        revert with 0, 50
                    mem[_1953 + 64] = mem[mem[(32 * idx - 1) + _854 + 32] + 127 len 1]
                    require ext_code.size(mem[_1718 + 76 len 20])
                    staticcall mem[_1718 + 76 len 20].0x313ce567 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2081 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2081] == mem[_2081 + 31 len 1]
                    mem[_1953 + 96] = mem[_2081 + 31 len 1]
                    if idx >= mem[_854]:
                        revert with 0, 50
                    mem[(32 * idx) + _854 + 32] = _1953
            if idx == -1:
                revert with 0, 17
            _1705 = mem[96]
            idx = idx + 1
            continue 
        _1717 = mem[64]
        mem[mem[64]] = 32
        _1723 = mem[_854]
        mem[mem[64] + 32] = mem[_854]
        idx = 0
        s = _854 + 32
        t = mem[64] + 64
        while idx < _1723:
            _2489 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_2489 + 32]
            mem[t + 64] = mem[_2489 + 95 len 1]
            mem[t + 96] = mem[_2489 + 127 len 1]
            idx = idx + 1
            s = s + 32
            t = t + 128
            continue 
        return memory
          from mem[64]
           len _1717 + (128 * _1723) + -mem[64] + 64
    mem[64] = _854 + (32 * _853) + 160
    mem[_854 + (32 * _853) + 32] = 0
    mem[_854 + (32 * _853) + 64] = 0
    mem[_854 + (32 * _853) + 96] = 0
    mem[_854 + (32 * _853) + 128] = 0
    mem[_854 + 32] = _854 + (32 * _853) + 32
    s = _854 + 32
    idx = _853
    while idx - 1:
        mem[64] = mem[64] + 128
        mem[_854 + (32 * _853) + 32] = 0
        mem[_854 + (32 * _853) + 64] = 0
        mem[_854 + (32 * _853) + 96] = 0
        mem[_854 + (32 * _853) + 128] = 0
        mem[s + 32] = _854 + (32 * _853) + 32
        s = s + 32
        idx = idx - 1
        continue 
    if 0 >= mem[96]:
        revert with 0, 50
    _1724 = mem[128]
    _1725 = mem[mem[128]]
    _1726 = mem[mem[128] + 32]
    _1727 = mem[mem[128] + 64]
    if mem[mem[128] + 44 len 20] == mem[mem[128] + 76 len 20]:
        revert with 0, 'UniswapV2LikeLibrary: IDENTICAL_ADDRESSES'
    if mem[mem[128] + 44 len 20] < mem[mem[128] + 76 len 20]:
        if not mem[mem[128] + 44 len 20]:
            revert with 0, 'UniswapV2LikeLibrary: ZERO_ADDRESS'
        mem[mem[64] + 4] = mem[mem[128] + 44 len 20]
        mem[mem[64] + 36] = address(_1727)
        require ext_code.size(address(_1725))
        staticcall address(_1725).getPair(address arg1, address arg2) with:
                gas gas_remaining wei
               args mem[mem[64] + 4], address(_1727)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1806 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_1806] == mem[_1806 + 12 len 20]
        require ext_code.size(mem[_1806 + 12 len 20])
        staticcall mem[_1806 + 12 len 20].getReserves() with:
                gas gas_remaining wei
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1862 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        _1880 = mem[_1862]
        require mem[_1862] == mem[_1862 + 18 len 14]
        _1890 = mem[_1862 + 32]
        require mem[_1862 + 32] == mem[_1862 + 50 len 14]
        require mem[_1862 + 64] == mem[_1862 + 92 len 4]
        if address(_1726) == address(_1726):
            _1918 = mem[64]
            mem[64] = mem[64] + 128
            mem[_1918] = Mask(112, 0, _1880)
            mem[_1918 + 32] = Mask(112, 0, _1890)
            require ext_code.size(mem[_1724 + 44 len 20])
            staticcall mem[_1724 + 44 len 20].0x313ce567 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1934 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1934] == mem[_1934 + 31 len 1]
            mem[_1918 + 64] = mem[_1934 + 31 len 1]
            require ext_code.size(mem[_1724 + 76 len 20])
            staticcall mem[_1724 + 76 len 20].0x313ce567 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2082 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_2082] == mem[_2082 + 31 len 1]
            mem[_1918 + 96] = mem[_2082 + 31 len 1]
            if 0 >= mem[_854]:
                revert with 0, 50
            mem[_854 + 32] = _1918
            _2470 = mem[96]
            idx = 1
            while idx < _2470:
                if idx >= mem[96]:
                    revert with 0, 50
                _2503 = mem[(32 * idx) + 128]
                if idx < 1:
                    revert with 0, 17
                if idx - 1 >= mem[96]:
                    revert with 0, 50
                if mem[mem[(32 * idx) + 128] + 44 len 20] != mem[mem[(32 * idx - 1) + 128] + 76 len 20]:
                    revert with 0, '!'
                _2554 = mem[mem[(32 * idx) + 128]]
                _2555 = mem[mem[(32 * idx) + 128] + 32]
                _2556 = mem[mem[(32 * idx) + 128] + 64]
                if mem[mem[(32 * idx) + 128] + 44 len 20] == mem[mem[(32 * idx) + 128] + 76 len 20]:
                    revert with 0, 'UniswapV2LikeLibrary: IDENTICAL_ADDRESSES'
                if mem[mem[(32 * idx) + 128] + 44 len 20] < mem[mem[(32 * idx) + 128] + 76 len 20]:
                    if not mem[mem[(32 * idx) + 128] + 44 len 20]:
                        revert with 0, 'UniswapV2LikeLibrary: ZERO_ADDRESS'
                    mem[mem[64] + 4] = mem[mem[(32 * idx) + 128] + 44 len 20]
                    mem[mem[64] + 36] = address(_2556)
                    require ext_code.size(address(_2554))
                    staticcall address(_2554).getPair(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4], address(_2556)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2614 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2614] == mem[_2614 + 12 len 20]
                    require ext_code.size(mem[_2614 + 12 len 20])
                    staticcall mem[_2614 + 12 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2646 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _2654 = mem[_2646]
                    require mem[_2646] == mem[_2646 + 18 len 14]
                    _2662 = mem[_2646 + 32]
                    require mem[_2646 + 32] == mem[_2646 + 50 len 14]
                    require mem[_2646 + 64] == mem[_2646 + 92 len 4]
                    if address(_2555) == address(_2555):
                        _2678 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_2678] = Mask(112, 0, _2654)
                        mem[_2678 + 32] = Mask(112, 0, _2662)
                        if idx < 1:
                            revert with 0, 17
                        if idx - 1 >= mem[_854]:
                            revert with 0, 50
                        mem[_2678 + 64] = mem[mem[(32 * idx - 1) + _854 + 32] + 127 len 1]
                        require ext_code.size(mem[_2503 + 76 len 20])
                        staticcall mem[_2503 + 76 len 20].0x313ce567 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2790 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2790] == mem[_2790 + 31 len 1]
                        mem[_2678 + 96] = mem[_2790 + 31 len 1]
                        if idx >= mem[_854]:
                            revert with 0, 50
                        mem[(32 * idx) + _854 + 32] = _2678
                    else:
                        _2679 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_2679] = Mask(112, 0, _2662)
                        mem[_2679 + 32] = Mask(112, 0, _2654)
                        if idx < 1:
                            revert with 0, 17
                        if idx - 1 >= mem[_854]:
                            revert with 0, 50
                        mem[_2679 + 64] = mem[mem[(32 * idx - 1) + _854 + 32] + 127 len 1]
                        require ext_code.size(mem[_2503 + 76 len 20])
                        staticcall mem[_2503 + 76 len 20].0x313ce567 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2791 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2791] == mem[_2791 + 31 len 1]
                        mem[_2679 + 96] = mem[_2791 + 31 len 1]
                        if idx >= mem[_854]:
                            revert with 0, 50
                        mem[(32 * idx) + _854 + 32] = _2679
                else:
                    if not mem[mem[(32 * idx) + 128] + 76 len 20]:
                        revert with 0, 'UniswapV2LikeLibrary: ZERO_ADDRESS'
                    mem[mem[64] + 4] = mem[mem[(32 * idx) + 128] + 44 len 20]
                    mem[mem[64] + 36] = address(_2556)
                    require ext_code.size(address(_2554))
                    staticcall address(_2554).getPair(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4], address(_2556)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2615 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2615] == mem[_2615 + 12 len 20]
                    require ext_code.size(mem[_2615 + 12 len 20])
                    staticcall mem[_2615 + 12 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2647 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _2655 = mem[_2647]
                    require mem[_2647] == mem[_2647 + 18 len 14]
                    _2663 = mem[_2647 + 32]
                    require mem[_2647 + 32] == mem[_2647 + 50 len 14]
                    require mem[_2647 + 64] == mem[_2647 + 92 len 4]
                    if address(_2555) == address(_2556):
                        _2680 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_2680] = Mask(112, 0, _2655)
                        mem[_2680 + 32] = Mask(112, 0, _2663)
                        if idx < 1:
                            revert with 0, 17
                        if idx - 1 >= mem[_854]:
                            revert with 0, 50
                        mem[_2680 + 64] = mem[mem[(32 * idx - 1) + _854 + 32] + 127 len 1]
                        require ext_code.size(mem[_2503 + 76 len 20])
                        staticcall mem[_2503 + 76 len 20].0x313ce567 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2792 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2792] == mem[_2792 + 31 len 1]
                        mem[_2680 + 96] = mem[_2792 + 31 len 1]
                        if idx >= mem[_854]:
                            revert with 0, 50
                        mem[(32 * idx) + _854 + 32] = _2680
                    else:
                        _2681 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_2681] = Mask(112, 0, _2663)
                        mem[_2681 + 32] = Mask(112, 0, _2655)
                        if idx < 1:
                            revert with 0, 17
                        if idx - 1 >= mem[_854]:
                            revert with 0, 50
                        mem[_2681 + 64] = mem[mem[(32 * idx - 1) + _854 + 32] + 127 len 1]
                        require ext_code.size(mem[_2503 + 76 len 20])
                        staticcall mem[_2503 + 76 len 20].0x313ce567 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2793 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2793] == mem[_2793 + 31 len 1]
                        mem[_2681 + 96] = mem[_2793 + 31 len 1]
                        if idx >= mem[_854]:
                            revert with 0, 50
                        mem[(32 * idx) + _854 + 32] = _2681
                if idx == -1:
                    revert with 0, 17
                _2470 = mem[96]
                idx = idx + 1
                continue 
            _2502 = mem[64]
            mem[mem[64]] = 32
            _2510 = mem[_854]
            mem[mem[64] + 32] = mem[_854]
            idx = 0
            s = _854 + 32
            t = mem[64] + 64
            while idx < _2510:
                _2838 = mem[s]
                mem[t] = mem[mem[s]]
                mem[t + 32] = mem[_2838 + 32]
                mem[t + 64] = mem[_2838 + 95 len 1]
                mem[t + 96] = mem[_2838 + 127 len 1]
                idx = idx + 1
                s = s + 32
                t = t + 128
                continue 
            return memory
              from mem[64]
               len _2502 + (128 * _2510) + -mem[64] + 64
        _1922 = mem[64]
        mem[64] = mem[64] + 128
        mem[_1922] = Mask(112, 0, _1890)
        mem[_1922 + 32] = Mask(112, 0, _1880)
        require ext_code.size(mem[_1724 + 44 len 20])
        staticcall mem[_1724 + 44 len 20].0x313ce567 with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1935 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_1935] == mem[_1935 + 31 len 1]
        mem[_1922 + 64] = mem[_1935 + 31 len 1]
        require ext_code.size(mem[_1724 + 76 len 20])
        staticcall mem[_1724 + 76 len 20].0x313ce567 with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _2083 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_2083] == mem[_2083 + 31 len 1]
        mem[_1922 + 96] = mem[_2083 + 31 len 1]
        if 0 >= mem[_854]:
            revert with 0, 50
        mem[_854 + 32] = _1922
        _2471 = mem[96]
        idx = 1
        while idx < _2471:
            if idx >= mem[96]:
                revert with 0, 50
            _2505 = mem[(32 * idx) + 128]
            if idx < 1:
                revert with 0, 17
            if idx - 1 >= mem[96]:
                revert with 0, 50
            if mem[mem[(32 * idx) + 128] + 44 len 20] != mem[mem[(32 * idx - 1) + 128] + 76 len 20]:
                revert with 0, '!'
            _2558 = mem[mem[(32 * idx) + 128]]
            _2559 = mem[mem[(32 * idx) + 128] + 32]
            _2560 = mem[mem[(32 * idx) + 128] + 64]
            if mem[mem[(32 * idx) + 128] + 44 len 20] == mem[mem[(32 * idx) + 128] + 76 len 20]:
                revert with 0, 'UniswapV2LikeLibrary: IDENTICAL_ADDRESSES'
            if mem[mem[(32 * idx) + 128] + 44 len 20] < mem[mem[(32 * idx) + 128] + 76 len 20]:
                if not mem[mem[(32 * idx) + 128] + 44 len 20]:
                    revert with 0, 'UniswapV2LikeLibrary: ZERO_ADDRESS'
                mem[mem[64] + 4] = mem[mem[(32 * idx) + 128] + 44 len 20]
                mem[mem[64] + 36] = address(_2560)
                require ext_code.size(address(_2558))
                staticcall address(_2558).getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4], address(_2560)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2616 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2616] == mem[_2616 + 12 len 20]
                require ext_code.size(mem[_2616 + 12 len 20])
                staticcall mem[_2616 + 12 len 20].getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2648 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _2656 = mem[_2648]
                require mem[_2648] == mem[_2648 + 18 len 14]
                _2664 = mem[_2648 + 32]
                require mem[_2648 + 32] == mem[_2648 + 50 len 14]
                require mem[_2648 + 64] == mem[_2648 + 92 len 4]
                if address(_2559) == address(_2559):
                    _2682 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_2682] = Mask(112, 0, _2656)
                    mem[_2682 + 32] = Mask(112, 0, _2664)
                    if idx < 1:
                        revert with 0, 17
                    if idx - 1 >= mem[_854]:
                        revert with 0, 50
                    mem[_2682 + 64] = mem[mem[(32 * idx - 1) + _854 + 32] + 127 len 1]
                    require ext_code.size(mem[_2505 + 76 len 20])
                    staticcall mem[_2505 + 76 len 20].0x313ce567 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2794 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2794] == mem[_2794 + 31 len 1]
                    mem[_2682 + 96] = mem[_2794 + 31 len 1]
                    if idx >= mem[_854]:
                        revert with 0, 50
                    mem[(32 * idx) + _854 + 32] = _2682
                else:
                    _2683 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_2683] = Mask(112, 0, _2664)
                    mem[_2683 + 32] = Mask(112, 0, _2656)
                    if idx < 1:
                        revert with 0, 17
                    if idx - 1 >= mem[_854]:
                        revert with 0, 50
                    mem[_2683 + 64] = mem[mem[(32 * idx - 1) + _854 + 32] + 127 len 1]
                    require ext_code.size(mem[_2505 + 76 len 20])
                    staticcall mem[_2505 + 76 len 20].0x313ce567 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2795 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2795] == mem[_2795 + 31 len 1]
                    mem[_2683 + 96] = mem[_2795 + 31 len 1]
                    if idx >= mem[_854]:
                        revert with 0, 50
                    mem[(32 * idx) + _854 + 32] = _2683
            else:
                if not mem[mem[(32 * idx) + 128] + 76 len 20]:
                    revert with 0, 'UniswapV2LikeLibrary: ZERO_ADDRESS'
                mem[mem[64] + 4] = mem[mem[(32 * idx) + 128] + 44 len 20]
                mem[mem[64] + 36] = address(_2560)
                require ext_code.size(address(_2558))
                staticcall address(_2558).getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4], address(_2560)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2617 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2617] == mem[_2617 + 12 len 20]
                require ext_code.size(mem[_2617 + 12 len 20])
                staticcall mem[_2617 + 12 len 20].getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2649 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _2657 = mem[_2649]
                require mem[_2649] == mem[_2649 + 18 len 14]
                _2665 = mem[_2649 + 32]
                require mem[_2649 + 32] == mem[_2649 + 50 len 14]
                require mem[_2649 + 64] == mem[_2649 + 92 len 4]
                if address(_2559) == address(_2560):
                    _2684 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_2684] = Mask(112, 0, _2657)
                    mem[_2684 + 32] = Mask(112, 0, _2665)
                    if idx < 1:
                        revert with 0, 17
                    if idx - 1 >= mem[_854]:
                        revert with 0, 50
                    mem[_2684 + 64] = mem[mem[(32 * idx - 1) + _854 + 32] + 127 len 1]
                    require ext_code.size(mem[_2505 + 76 len 20])
                    staticcall mem[_2505 + 76 len 20].0x313ce567 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2796 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2796] == mem[_2796 + 31 len 1]
                    mem[_2684 + 96] = mem[_2796 + 31 len 1]
                    if idx >= mem[_854]:
                        revert with 0, 50
                    mem[(32 * idx) + _854 + 32] = _2684
                else:
                    _2685 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_2685] = Mask(112, 0, _2665)
                    mem[_2685 + 32] = Mask(112, 0, _2657)
                    if idx < 1:
                        revert with 0, 17
                    if idx - 1 >= mem[_854]:
                        revert with 0, 50
                    mem[_2685 + 64] = mem[mem[(32 * idx - 1) + _854 + 32] + 127 len 1]
                    require ext_code.size(mem[_2505 + 76 len 20])
                    staticcall mem[_2505 + 76 len 20].0x313ce567 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2797 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2797] == mem[_2797 + 31 len 1]
                    mem[_2685 + 96] = mem[_2797 + 31 len 1]
                    if idx >= mem[_854]:
                        revert with 0, 50
                    mem[(32 * idx) + _854 + 32] = _2685
            if idx == -1:
                revert with 0, 17
            _2471 = mem[96]
            idx = idx + 1
            continue 
        _2504 = mem[64]
        mem[mem[64]] = 32
        _2511 = mem[_854]
        mem[mem[64] + 32] = mem[_854]
        idx = 0
        s = _854 + 32
        t = mem[64] + 64
        while idx < _2511:
            _2843 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_2843 + 32]
            mem[t + 64] = mem[_2843 + 95 len 1]
            mem[t + 96] = mem[_2843 + 127 len 1]
            idx = idx + 1
            s = s + 32
            t = t + 128
            continue 
        return memory
          from mem[64]
           len _2504 + (128 * _2511) + -mem[64] + 64
    if not mem[mem[128] + 76 len 20]:
        revert with 0, 'UniswapV2LikeLibrary: ZERO_ADDRESS'
    mem[mem[64] + 4] = mem[mem[128] + 44 len 20]
    mem[mem[64] + 36] = address(_1727)
    require ext_code.size(address(_1725))
    staticcall address(_1725).getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args mem[mem[64] + 4], address(_1727)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _1807 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_1807] == mem[_1807 + 12 len 20]
    require ext_code.size(mem[_1807 + 12 len 20])
    staticcall mem[_1807 + 12 len 20].getReserves() with:
            gas gas_remaining wei
    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _1863 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 96
    _1881 = mem[_1863]
    require mem[_1863] == mem[_1863 + 18 len 14]
    _1891 = mem[_1863 + 32]
    require mem[_1863 + 32] == mem[_1863 + 50 len 14]
    require mem[_1863 + 64] == mem[_1863 + 92 len 4]
    if address(_1726) == address(_1727):
        _1926 = mem[64]
        mem[64] = mem[64] + 128
        mem[_1926] = Mask(112, 0, _1881)
        mem[_1926 + 32] = Mask(112, 0, _1891)
        require ext_code.size(mem[_1724 + 44 len 20])
        staticcall mem[_1724 + 44 len 20].0x313ce567 with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1936 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_1936] == mem[_1936 + 31 len 1]
        mem[_1926 + 64] = mem[_1936 + 31 len 1]
        require ext_code.size(mem[_1724 + 76 len 20])
        staticcall mem[_1724 + 76 len 20].0x313ce567 with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _2084 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_2084] == mem[_2084 + 31 len 1]
        mem[_1926 + 96] = mem[_2084 + 31 len 1]
        if 0 >= mem[_854]:
            revert with 0, 50
        mem[_854 + 32] = _1926
        _2472 = mem[96]
        idx = 1
        while idx < _2472:
            if idx >= mem[96]:
                revert with 0, 50
            _2507 = mem[(32 * idx) + 128]
            if idx < 1:
                revert with 0, 17
            if idx - 1 >= mem[96]:
                revert with 0, 50
            if mem[mem[(32 * idx) + 128] + 44 len 20] != mem[mem[(32 * idx - 1) + 128] + 76 len 20]:
                revert with 0, '!'
            _2562 = mem[mem[(32 * idx) + 128]]
            _2563 = mem[mem[(32 * idx) + 128] + 32]
            _2564 = mem[mem[(32 * idx) + 128] + 64]
            if mem[mem[(32 * idx) + 128] + 44 len 20] == mem[mem[(32 * idx) + 128] + 76 len 20]:
                revert with 0, 'UniswapV2LikeLibrary: IDENTICAL_ADDRESSES'
            if mem[mem[(32 * idx) + 128] + 44 len 20] < mem[mem[(32 * idx) + 128] + 76 len 20]:
                if not mem[mem[(32 * idx) + 128] + 44 len 20]:
                    revert with 0, 'UniswapV2LikeLibrary: ZERO_ADDRESS'
                mem[mem[64] + 4] = mem[mem[(32 * idx) + 128] + 44 len 20]
                mem[mem[64] + 36] = address(_2564)
                require ext_code.size(address(_2562))
                staticcall address(_2562).getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4], address(_2564)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2618 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2618] == mem[_2618 + 12 len 20]
                require ext_code.size(mem[_2618 + 12 len 20])
                staticcall mem[_2618 + 12 len 20].getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2650 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _2658 = mem[_2650]
                require mem[_2650] == mem[_2650 + 18 len 14]
                _2666 = mem[_2650 + 32]
                require mem[_2650 + 32] == mem[_2650 + 50 len 14]
                require mem[_2650 + 64] == mem[_2650 + 92 len 4]
                if address(_2563) == address(_2563):
                    _2686 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_2686] = Mask(112, 0, _2658)
                    mem[_2686 + 32] = Mask(112, 0, _2666)
                    if idx < 1:
                        revert with 0, 17
                    if idx - 1 >= mem[_854]:
                        revert with 0, 50
                    mem[_2686 + 64] = mem[mem[(32 * idx - 1) + _854 + 32] + 127 len 1]
                    require ext_code.size(mem[_2507 + 76 len 20])
                    staticcall mem[_2507 + 76 len 20].0x313ce567 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2798 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2798] == mem[_2798 + 31 len 1]
                    mem[_2686 + 96] = mem[_2798 + 31 len 1]
                    if idx >= mem[_854]:
                        revert with 0, 50
                    mem[(32 * idx) + _854 + 32] = _2686
                else:
                    _2687 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_2687] = Mask(112, 0, _2666)
                    mem[_2687 + 32] = Mask(112, 0, _2658)
                    if idx < 1:
                        revert with 0, 17
                    if idx - 1 >= mem[_854]:
                        revert with 0, 50
                    mem[_2687 + 64] = mem[mem[(32 * idx - 1) + _854 + 32] + 127 len 1]
                    require ext_code.size(mem[_2507 + 76 len 20])
                    staticcall mem[_2507 + 76 len 20].0x313ce567 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2799 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2799] == mem[_2799 + 31 len 1]
                    mem[_2687 + 96] = mem[_2799 + 31 len 1]
                    if idx >= mem[_854]:
                        revert with 0, 50
                    mem[(32 * idx) + _854 + 32] = _2687
            else:
                if not mem[mem[(32 * idx) + 128] + 76 len 20]:
                    revert with 0, 'UniswapV2LikeLibrary: ZERO_ADDRESS'
                mem[mem[64] + 4] = mem[mem[(32 * idx) + 128] + 44 len 20]
                mem[mem[64] + 36] = address(_2564)
                require ext_code.size(address(_2562))
                staticcall address(_2562).getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4], address(_2564)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2619 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2619] == mem[_2619 + 12 len 20]
                require ext_code.size(mem[_2619 + 12 len 20])
                staticcall mem[_2619 + 12 len 20].getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2651 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _2659 = mem[_2651]
                require mem[_2651] == mem[_2651 + 18 len 14]
                _2667 = mem[_2651 + 32]
                require mem[_2651 + 32] == mem[_2651 + 50 len 14]
                require mem[_2651 + 64] == mem[_2651 + 92 len 4]
                if address(_2563) == address(_2564):
                    _2688 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_2688] = Mask(112, 0, _2659)
                    mem[_2688 + 32] = Mask(112, 0, _2667)
                    if idx < 1:
                        revert with 0, 17
                    if idx - 1 >= mem[_854]:
                        revert with 0, 50
                    mem[_2688 + 64] = mem[mem[(32 * idx - 1) + _854 + 32] + 127 len 1]
                    require ext_code.size(mem[_2507 + 76 len 20])
                    staticcall mem[_2507 + 76 len 20].0x313ce567 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2800 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2800] == mem[_2800 + 31 len 1]
                    mem[_2688 + 96] = mem[_2800 + 31 len 1]
                    if idx >= mem[_854]:
                        revert with 0, 50
                    mem[(32 * idx) + _854 + 32] = _2688
                else:
                    _2689 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_2689] = Mask(112, 0, _2667)
                    mem[_2689 + 32] = Mask(112, 0, _2659)
                    if idx < 1:
                        revert with 0, 17
                    if idx - 1 >= mem[_854]:
                        revert with 0, 50
                    mem[_2689 + 64] = mem[mem[(32 * idx - 1) + _854 + 32] + 127 len 1]
                    require ext_code.size(mem[_2507 + 76 len 20])
                    staticcall mem[_2507 + 76 len 20].0x313ce567 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2801 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2801] == mem[_2801 + 31 len 1]
                    mem[_2689 + 96] = mem[_2801 + 31 len 1]
                    if idx >= mem[_854]:
                        revert with 0, 50
                    mem[(32 * idx) + _854 + 32] = _2689
            if idx == -1:
                revert with 0, 17
            _2472 = mem[96]
            idx = idx + 1
            continue 
        _2506 = mem[64]
        mem[mem[64]] = 32
        _2512 = mem[_854]
        mem[mem[64] + 32] = mem[_854]
        idx = 0
        s = _854 + 32
        t = mem[64] + 64
        while idx < _2512:
            _2848 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_2848 + 32]
            mem[t + 64] = mem[_2848 + 95 len 1]
            mem[t + 96] = mem[_2848 + 127 len 1]
            idx = idx + 1
            s = s + 32
            t = t + 128
            continue 
        return memory
          from mem[64]
           len _2506 + (128 * _2512) + -mem[64] + 64
    _1930 = mem[64]
    mem[64] = mem[64] + 128
    mem[_1930] = Mask(112, 0, _1891)
    mem[_1930 + 32] = Mask(112, 0, _1881)
    require ext_code.size(mem[_1724 + 44 len 20])
    staticcall mem[_1724 + 44 len 20].0x313ce567 with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _1937 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_1937] == mem[_1937 + 31 len 1]
    mem[_1930 + 64] = mem[_1937 + 31 len 1]
    require ext_code.size(mem[_1724 + 76 len 20])
    staticcall mem[_1724 + 76 len 20].0x313ce567 with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _2085 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_2085] == mem[_2085 + 31 len 1]
    mem[_1930 + 96] = mem[_2085 + 31 len 1]
    if 0 >= mem[_854]:
        revert with 0, 50
    mem[_854 + 32] = _1930
    _2473 = mem[96]
    idx = 1
    while idx < _2473:
        if idx >= mem[96]:
            revert with 0, 50
        _2509 = mem[(32 * idx) + 128]
        if idx < 1:
            revert with 0, 17
        if idx - 1 >= mem[96]:
            revert with 0, 50
        if mem[mem[(32 * idx) + 128] + 44 len 20] != mem[mem[(32 * idx - 1) + 128] + 76 len 20]:
            revert with 0, '!'
        _2566 = mem[mem[(32 * idx) + 128]]
        _2567 = mem[mem[(32 * idx) + 128] + 32]
        _2568 = mem[mem[(32 * idx) + 128] + 64]
        if mem[mem[(32 * idx) + 128] + 44 len 20] == mem[mem[(32 * idx) + 128] + 76 len 20]:
            revert with 0, 'UniswapV2LikeLibrary: IDENTICAL_ADDRESSES'
        if mem[mem[(32 * idx) + 128] + 44 len 20] < mem[mem[(32 * idx) + 128] + 76 len 20]:
            if not mem[mem[(32 * idx) + 128] + 44 len 20]:
                revert with 0, 'UniswapV2LikeLibrary: ZERO_ADDRESS'
            mem[mem[64] + 4] = mem[mem[(32 * idx) + 128] + 44 len 20]
            mem[mem[64] + 36] = address(_2568)
            require ext_code.size(address(_2566))
            staticcall address(_2566).getPair(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4], address(_2568)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2620 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_2620] == mem[_2620 + 12 len 20]
            require ext_code.size(mem[_2620 + 12 len 20])
            staticcall mem[_2620 + 12 len 20].getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2652 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _2660 = mem[_2652]
            require mem[_2652] == mem[_2652 + 18 len 14]
            _2668 = mem[_2652 + 32]
            require mem[_2652 + 32] == mem[_2652 + 50 len 14]
            require mem[_2652 + 64] == mem[_2652 + 92 len 4]
            if address(_2567) == address(_2567):
                _2690 = mem[64]
                mem[64] = mem[64] + 128
                mem[_2690] = Mask(112, 0, _2660)
                mem[_2690 + 32] = Mask(112, 0, _2668)
                if idx < 1:
                    revert with 0, 17
                if idx - 1 >= mem[_854]:
                    revert with 0, 50
                mem[_2690 + 64] = mem[mem[(32 * idx - 1) + _854 + 32] + 127 len 1]
                require ext_code.size(mem[_2509 + 76 len 20])
                staticcall mem[_2509 + 76 len 20].0x313ce567 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2802 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2802] == mem[_2802 + 31 len 1]
                mem[_2690 + 96] = mem[_2802 + 31 len 1]
                if idx >= mem[_854]:
                    revert with 0, 50
                mem[(32 * idx) + _854 + 32] = _2690
            else:
                _2691 = mem[64]
                mem[64] = mem[64] + 128
                mem[_2691] = Mask(112, 0, _2668)
                mem[_2691 + 32] = Mask(112, 0, _2660)
                if idx < 1:
                    revert with 0, 17
                if idx - 1 >= mem[_854]:
                    revert with 0, 50
                mem[_2691 + 64] = mem[mem[(32 * idx - 1) + _854 + 32] + 127 len 1]
                require ext_code.size(mem[_2509 + 76 len 20])
                staticcall mem[_2509 + 76 len 20].0x313ce567 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2803 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2803] == mem[_2803 + 31 len 1]
                mem[_2691 + 96] = mem[_2803 + 31 len 1]
                if idx >= mem[_854]:
                    revert with 0, 50
                mem[(32 * idx) + _854 + 32] = _2691
        else:
            if not mem[mem[(32 * idx) + 128] + 76 len 20]:
                revert with 0, 'UniswapV2LikeLibrary: ZERO_ADDRESS'
            mem[mem[64] + 4] = mem[mem[(32 * idx) + 128] + 44 len 20]
            mem[mem[64] + 36] = address(_2568)
            require ext_code.size(address(_2566))
            staticcall address(_2566).getPair(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4], address(_2568)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2621 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_2621] == mem[_2621 + 12 len 20]
            require ext_code.size(mem[_2621 + 12 len 20])
            staticcall mem[_2621 + 12 len 20].getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2653 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _2661 = mem[_2653]
            require mem[_2653] == mem[_2653 + 18 len 14]
            _2669 = mem[_2653 + 32]
            require mem[_2653 + 32] == mem[_2653 + 50 len 14]
            require mem[_2653 + 64] == mem[_2653 + 92 len 4]
            if address(_2567) == address(_2568):
                _2692 = mem[64]
                mem[64] = mem[64] + 128
                mem[_2692] = Mask(112, 0, _2661)
                mem[_2692 + 32] = Mask(112, 0, _2669)
                if idx < 1:
                    revert with 0, 17
                if idx - 1 >= mem[_854]:
                    revert with 0, 50
                mem[_2692 + 64] = mem[mem[(32 * idx - 1) + _854 + 32] + 127 len 1]
                require ext_code.size(mem[_2509 + 76 len 20])
                staticcall mem[_2509 + 76 len 20].0x313ce567 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2804 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2804] == mem[_2804 + 31 len 1]
                mem[_2692 + 96] = mem[_2804 + 31 len 1]
                if idx >= mem[_854]:
                    revert with 0, 50
                mem[(32 * idx) + _854 + 32] = _2692
            else:
                _2693 = mem[64]
                mem[64] = mem[64] + 128
                mem[_2693] = Mask(112, 0, _2669)
                mem[_2693 + 32] = Mask(112, 0, _2661)
                if idx < 1:
                    revert with 0, 17
                if idx - 1 >= mem[_854]:
                    revert with 0, 50
                mem[_2693 + 64] = mem[mem[(32 * idx - 1) + _854 + 32] + 127 len 1]
                require ext_code.size(mem[_2509 + 76 len 20])
                staticcall mem[_2509 + 76 len 20].0x313ce567 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2805 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2805] == mem[_2805 + 31 len 1]
                mem[_2693 + 96] = mem[_2805 + 31 len 1]
                if idx >= mem[_854]:
                    revert with 0, 50
                mem[(32 * idx) + _854 + 32] = _2693
        if idx == -1:
            revert with 0, 17
        _2473 = mem[96]
        idx = idx + 1
        continue 
    _2508 = mem[64]
    mem[mem[64]] = 32
    _2513 = mem[_854]
    mem[mem[64] + 32] = mem[_854]
    idx = 0
    s = _854 + 32
    t = mem[64] + 64
    while idx < _2513:
        _2853 = mem[s]
        mem[t] = mem[mem[s]]
        mem[t + 32] = mem[_2853 + 32]
        mem[t + 64] = mem[_2853 + 95 len 1]
        mem[t + 96] = mem[_2853 + 127 len 1]
        idx = idx + 1
        s = s + 32
        t = t + 128
        continue 
    return memory
      from mem[64]
       len _2508 + (128 * _2513) + -mem[64] + 64
}



}
