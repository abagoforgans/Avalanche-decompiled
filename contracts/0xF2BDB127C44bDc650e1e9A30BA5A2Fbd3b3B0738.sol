contract main {




// =====================  Runtime code  =====================


#
#  - sub_7c4e2a76(?)
#
address owner;
uint256 maxPercentSell;
address assetOwner;
mapping of uint8 stor3;

function callers(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor3[arg1])
}

function owner() {
    return owner
}

function assetOwner() {
    return assetOwner
}

function maxPercentSell() {
    return maxPercentSell
}

function _fallback() payable {
    revert
}

function sub_86be6394(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    assetOwner = arg1
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function withdraw(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
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
}

function sub_59f97c21(?) {
    require calldata.size - 4 >= 96
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[96] = arg2.length
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    mem[64] = (32 * arg2.length) + (32 * arg3.length) + 160
    mem[(32 * arg2.length) + 128] = arg3.length
    mem[(32 * arg2.length) + 160 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg2.length) + (32 * arg3.length) + 160] = 0
    idx = 0
    s = arg1
    while idx < arg3.length - 1:
        _30 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        mem[_30 + 32 len 64] = call.data[calldata.size len 64]
        require idx < mem[(32 * arg2.length) + 128]
        require 0 < mem[_30]
        mem[_30 + 32] = mem[(32 * idx) + (32 * arg2.length) + 172 len 20]
        require idx + 1 < mem[(32 * arg2.length) + 128]
        require 1 < mem[_30]
        mem[_30 + 64] = mem[(32 * idx + 1) + (32 * arg2.length) + 172 len 20]
        require idx < mem[96]
        _40 = mem[(32 * idx) + 128]
        mem[_30 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[_30 + 100] = s
        mem[_30 + 132] = 64
        mem[_30 + 164] = mem[_30]
        t = 0
        while t < 32 * mem[_30]:
            mem[t + _30 + 196] = mem[t + _30 + 32]
            t = t + 32
            continue 
        require ext_code.size(address(_40))
        staticcall address(_40).getAmountsOut(uint256 rg1, address[] rg2) with:
                gas gas_remaining wei
               args s, 64, mem[_30 + 164 len (32 * mem[_30]) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[_30 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = _30 + ceil32(return_data.size) + 96
        require return_data.size >= 32
        _58 = mem[_30 + 96 len 4], Mask(224, 32, s) >> 32
        require mem[_30 + 96 len 4], Mask(224, 32, s) >> 32 <= 4294967296
        require mem[_30 + 96 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
        require mem[_30 + mem[_30 + 96 len 4], Mask(224, 32, s) >> 32 + 96] <= 4294967296 and mem[_30 + 96 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_30 + mem[_30 + 96 len 4], Mask(224, 32, s) >> 32 + 96]) + 32 <= return_data.size
        mem[_30 + ceil32(return_data.size) + 96] = mem[_30 + mem[_30 + 96 len 4], Mask(224, 32, s) >> 32 + 96]
        _61 = mem[_30 + _58 + 96]
        s = 0
        while s < 32 * _61:
            mem[s + _30 + ceil32(return_data.size) + 128] = mem[s + _30 + _58 + 128]
            s = s + 32
            continue 
        mem[64] = (32 * _61) + _30 + ceil32(return_data.size) + 128
        if mem[_30 + ceil32(return_data.size) + 96] - 1 < mem[_30 + ceil32(return_data.size) + 96]:
            idx = idx + 1
            s = mem[(32 * mem[_30 + ceil32(return_data.size) + 96] - 1) + _30 + ceil32(return_data.size) + 128]
            continue 
        revert
    return s
}

function getReservesByPairs(address[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    require arg1.length <= test266151307()
    mem[96] = arg1.length
    mem[64] = (32 * arg1.length) + 128
    if not arg1.length:
        idx = 0
        while idx < arg1.length:
            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
            staticcall address(cd[((32 * idx) + arg1 + 36)]).getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require idx < mem[96]
            _52 = mem[(32 * idx) + 128]
            require idx < mem[96]
            _57 = mem[(32 * idx) + 128]
            require idx < mem[96]
            mem[mem[(32 * idx) + 128] + 64] = uint32(ext_call.return_data[64])
            mem[_57 + 32] = Mask(112, 0, ext_call.return_data[32])
            mem[_52] = Mask(112, 0, ext_call.return_data[0])
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        mem[mem[64] + 32] = mem[96]
        _44 = mem[96]
        s = mem[64] + 64
        idx = 0
        while idx < _44:
            _97 = mem[(32 * idx) + 128]
            t = 0
            while t < 96:
                mem[2 * t] = mem[t + _97]
                t = t + 32
                continue 
            t = 192
            idx = idx + 1
            continue 
    else:
        mem[64] = (32 * arg1.length) + 224
        mem[(32 * arg1.length) + 128 len 96] = call.data[calldata.size len 96]
        mem[var13001] = (32 * arg1.length) + 128
        s = var13001
        idx = var13002
        while idx - 1:
            mem[64] = mem[64] + 96
            mem[(32 * arg1.length) + 128 len 96] = call.data[calldata.size len 96]
            mem[s + 32] = (32 * arg1.length) + 128
            s = s + 32
            idx = idx - 1
            continue 
        idx = 0
        while idx < arg1.length:
            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
            staticcall address(cd[((32 * idx) + arg1 + 36)]).getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require idx < mem[96]
            _111 = mem[(32 * idx) + 128]
            require idx < mem[96]
            _114 = mem[(32 * idx) + 128]
            require idx < mem[96]
            mem[mem[(32 * idx) + 128] + 64] = uint32(ext_call.return_data[64])
            mem[_114 + 32] = Mask(112, 0, ext_call.return_data[32])
            mem[_111] = Mask(112, 0, ext_call.return_data[0])
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        mem[mem[64] + 32] = mem[96]
        _103 = mem[96]
        s = mem[64] + 64
        idx = 0
        while idx < _103:
            _120 = mem[(32 * idx) + 128]
            t = 0
            while t < 96:
                mem[2 * t] = mem[t + _120]
                t = t + 32
                continue 
            t = 192
            idx = idx + 1
            continue 
    return memory
      from mem[64]
       len s - mem[64]
}

function getPairsByIndexRange(address arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require ext_code.size(arg1)
    staticcall arg1.allPairsLength() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg3 <= ext_call.return_data[0]:
        if arg3 < arg2:
            revert with 0, 'start cannot be higher than stop'
        require arg3 - arg2 <= test266151307()
        mem[96] = arg3 - arg2
        mem[64] = (32 * arg3 - arg2) + 128
        if not arg3 - arg2:
            idx = 0
            while idx < arg3 - arg2:
                mem[mem[64] + 4] = arg2 + idx
                require ext_code.size(arg1)
                staticcall arg1.allPairs(uint256 rg1) with:
                        gas gas_remaining wei
                       args (arg2 + idx)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require idx < mem[96]
                mem[mem[(32 * idx) + 128]] = address(ext_call.return_data[0])
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).token1() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require idx < mem[96]
                mem[mem[(32 * idx) + 128] + 32] = address(ext_call.return_data[0])
                require idx < mem[96]
                mem[mem[(32 * idx) + 128] + 64] = address(ext_call.return_data[0])
                idx = idx + 1
                continue 
            mem[mem[64]] = 32
            mem[mem[64] + 32] = mem[96]
            _117 = mem[96]
            s = mem[64] + 64
            idx = 0
            while idx < _117:
                _260 = mem[(32 * idx) + 128]
                t = 0
                while t < 96:
                    mem[2 * t] = mem[t + _260]
                    t = t + 32
                    continue 
                t = 192
                idx = idx + 1
                continue 
        else:
            mem[64] = (32 * arg3 - arg2) + 224
            mem[(32 * arg3 - arg2) + 128 len 96] = call.data[calldata.size len 96]
            mem[var15001] = (32 * arg3 - arg2) + 128
            s = var15001
            idx = var15002
            while idx - 1:
                mem[64] = mem[64] + 96
                mem[(32 * arg3 - arg2) + 128 len 96] = call.data[calldata.size len 96]
                mem[s + 32] = (32 * arg3 - arg2) + 128
                s = s + 32
                idx = idx - 1
                continue 
            idx = 0
            while idx < arg3 - arg2:
                mem[mem[64] + 4] = arg2 + idx
                require ext_code.size(arg1)
                staticcall arg1.allPairs(uint256 rg1) with:
                        gas gas_remaining wei
                       args (arg2 + idx)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require idx < mem[96]
                mem[mem[(32 * idx) + 128]] = address(ext_call.return_data[0])
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).token1() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require idx < mem[96]
                mem[mem[(32 * idx) + 128] + 32] = address(ext_call.return_data[0])
                require idx < mem[96]
                mem[mem[(32 * idx) + 128] + 64] = address(ext_call.return_data[0])
                idx = idx + 1
                continue 
            mem[mem[64]] = 32
            mem[mem[64] + 32] = mem[96]
            _269 = mem[96]
            s = mem[64] + 64
            idx = 0
            while idx < _269:
                _318 = mem[(32 * idx) + 128]
                t = 0
                while t < 96:
                    mem[2 * t] = mem[t + _318]
                    t = t + 32
                    continue 
                t = 192
                idx = idx + 1
                continue 
    else:
        if ext_call.return_data[0] < arg2:
            revert with 0, 'start cannot be higher than stop'
        require ext_call.return_data[0] - arg2 <= test266151307()
        mem[96] = ext_call.return_data[0] - arg2
        mem[64] = (32 * ext_call.return_data[0] - arg2) + 128
        if not ext_call.return_data[0] - arg2:
            idx = 0
            while idx < ext_call.return_data[0] - arg2:
                mem[mem[64] + 4] = arg2 + idx
                require ext_code.size(arg1)
                staticcall arg1.allPairs(uint256 rg1) with:
                        gas gas_remaining wei
                       args (arg2 + idx)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require idx < mem[96]
                mem[mem[(32 * idx) + 128]] = address(ext_call.return_data[0])
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).token1() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require idx < mem[96]
                mem[mem[(32 * idx) + 128] + 32] = address(ext_call.return_data[0])
                require idx < mem[96]
                mem[mem[(32 * idx) + 128] + 64] = address(ext_call.return_data[0])
                idx = idx + 1
                continue 
            mem[mem[64]] = 32
            mem[mem[64] + 32] = mem[96]
            _120 = mem[96]
            s = mem[64] + 64
            idx = 0
            while idx < _120:
                _264 = mem[(32 * idx) + 128]
                t = 0
                while t < 96:
                    mem[2 * t] = mem[t + _264]
                    t = t + 32
                    continue 
                t = 192
                idx = idx + 1
                continue 
        else:
            mem[64] = (32 * ext_call.return_data[0] - arg2) + 224
            mem[(32 * ext_call.return_data[0] - arg2) + 128 len 96] = call.data[calldata.size len 96]
            mem[var16001] = (32 * ext_call.return_data[0] - arg2) + 128
            s = var16001
            idx = var16002
            while idx - 1:
                mem[64] = mem[64] + 96
                mem[(32 * ext_call.return_data[0] - arg2) + 128 len 96] = call.data[calldata.size len 96]
                mem[s + 32] = (32 * ext_call.return_data[0] - arg2) + 128
                s = s + 32
                idx = idx - 1
                continue 
            idx = 0
            while idx < ext_call.return_data[0] - arg2:
                mem[mem[64] + 4] = arg2 + idx
                require ext_code.size(arg1)
                staticcall arg1.allPairs(uint256 rg1) with:
                        gas gas_remaining wei
                       args (arg2 + idx)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require idx < mem[96]
                mem[mem[(32 * idx) + 128]] = address(ext_call.return_data[0])
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).token1() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require idx < mem[96]
                mem[mem[(32 * idx) + 128] + 32] = address(ext_call.return_data[0])
                require idx < mem[96]
                mem[mem[(32 * idx) + 128] + 64] = address(ext_call.return_data[0])
                idx = idx + 1
                continue 
            mem[mem[64]] = 32
            mem[mem[64] + 32] = mem[96]
            _272 = mem[96]
            s = mem[64] + 64
            idx = 0
            while idx < _272:
                _320 = mem[(32 * idx) + 128]
                t = 0
                while t < 96:
                    mem[2 * t] = mem[t + _320]
                    t = t + 32
                    continue 
                t = 192
                idx = idx + 1
                continue 
    return memory
      from mem[64]
       len s - mem[64]
}

function sub_a8716800(?) {
    require calldata.size - 4 >= 96
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = 26
    mem[(32 * arg1.length) + (32 * arg2.length) + 192] = 'SafeMath: division by zero'
    if not arg3:
        return 0
    if maxPercentSell / 1000 * arg3 / arg3 != maxPercentSell / 1000:
        revert with 0, 
                    32,
                    33,
                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[(32 * arg1.length) + (32 * arg2.length) + 325 len 31]
    mem[(32 * arg1.length) + (32 * arg2.length) + 224] = 26
    mem[(32 * arg1.length) + (32 * arg2.length) + 256] = 'SafeMath: division by zero'
    if not maxPercentSell / 1000 * arg3 / 100000:
        return 0
    if 10^18 * maxPercentSell / 1000 * arg3 / 100000 / maxPercentSell / 1000 * arg3 / 100000 != 10^18:
        revert with 0, 
                    32,
                    33,
                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[(32 * arg1.length) + (32 * arg2.length) + 389 len 31]
    mem[64] = (32 * arg1.length) + (32 * arg2.length) + 352
    mem[(32 * arg1.length) + (32 * arg2.length) + 288] = 26
    mem[(32 * arg1.length) + (32 * arg2.length) + 320] = 'SafeMath: division by zero'
    idx = 0
    s = maxPercentSell / 1000 * arg3 / 100000
    while idx < arg2.length - 1:
        _1461 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        mem[_1461 + 32 len 64] = call.data[calldata.size len 64]
        require idx < mem[(32 * arg1.length) + 128]
        require 0 < mem[_1461]
        mem[_1461 + 32] = mem[(32 * idx) + (32 * arg1.length) + 172 len 20]
        require idx + 1 < mem[(32 * arg1.length) + 128]
        require 1 < mem[_1461]
        mem[_1461 + 64] = mem[(32 * idx + 1) + (32 * arg1.length) + 172 len 20]
        require idx < mem[96]
        _1471 = mem[(32 * idx) + 128]
        mem[_1461 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[_1461 + 100] = s
        mem[_1461 + 132] = 64
        mem[_1461 + 164] = mem[_1461]
        t = 0
        while t < 32 * mem[_1461]:
            mem[t + _1461 + 196] = mem[t + _1461 + 32]
            t = t + 32
            continue 
        require ext_code.size(address(_1471))
        staticcall address(_1471).getAmountsOut(uint256 rg1, address[] rg2) with:
                gas gas_remaining wei
               args s, 64, mem[_1461 + 164 len (32 * mem[_1461]) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[_1461 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = _1461 + ceil32(return_data.size) + 96
        require return_data.size >= 32
        _2968 = mem[_1461 + 96 len 4], Mask(224, 32, s) >> 32
        require mem[_1461 + 96 len 4], Mask(224, 32, s) >> 32 <= 4294967296
        require mem[_1461 + 96 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
        require mem[_1461 + mem[_1461 + 96 len 4], Mask(224, 32, s) >> 32 + 96] <= 4294967296 and mem[_1461 + 96 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_1461 + mem[_1461 + 96 len 4], Mask(224, 32, s) >> 32 + 96]) + 32 <= return_data.size
        mem[_1461 + ceil32(return_data.size) + 96] = mem[_1461 + mem[_1461 + 96 len 4], Mask(224, 32, s) >> 32 + 96]
        _3013 = mem[_1461 + _2968 + 96]
        s = 0
        while s < 32 * _3013:
            mem[s + _1461 + ceil32(return_data.size) + 128] = mem[s + _1461 + _2968 + 128]
            s = s + 32
            continue 
        mem[64] = (32 * _3013) + _1461 + ceil32(return_data.size) + 128
        if mem[_1461 + ceil32(return_data.size) + 96] - 1 < mem[_1461 + ceil32(return_data.size) + 96]:
            idx = idx + 1
            s = mem[(32 * mem[_1461 + ceil32(return_data.size) + 96] - 1) + _1461 + ceil32(return_data.size) + 128]
            continue 
        revert
    if s <= 10^18 * maxPercentSell / 1000 * arg3 / 100000 / 10^18:
        return 0
    if not s:
        _1479 = mem[64]
        mem[64] = mem[64] + 64
        mem[_1479] = 26
        mem[_1479 + 32] = 'SafeMath: division by zero'
        _1492 = mem[64]
        mem[64] = mem[64] + 64
        mem[_1492] = 26
        mem[_1492 + 32] = 'SafeMath: division by zero'
        if not maxPercentSell / 1000 * arg3 / 100000:
            revert with 0, 'SafeMath: division by zero'
        if not arg3:
            _1520 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1520] = 26
            mem[_1520 + 32] = 'SafeMath: division by zero'
            _2910 = mem[(32 * arg1.length) + 128]
            idx = 0
            s = 0
            while idx < _2910 - 1:
                _2923 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                mem[_2923 + 32 len 64] = call.data[calldata.size len 64]
                require idx < mem[(32 * arg1.length) + 128]
                require 0 < mem[_2923]
                mem[_2923 + 32] = mem[(32 * idx) + (32 * arg1.length) + 172 len 20]
                require idx + 1 < mem[(32 * arg1.length) + 128]
                require 1 < mem[_2923]
                mem[_2923 + 64] = mem[(32 * idx + 1) + (32 * arg1.length) + 172 len 20]
                require idx < mem[96]
                _2996 = mem[(32 * idx) + 128]
                mem[_2923 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_2923 + 100] = s
                mem[_2923 + 132] = 64
                mem[_2923 + 164] = mem[_2923]
                t = 0
                while t < 32 * mem[_2923]:
                    mem[t + _2923 + 196] = mem[t + _2923 + 32]
                    t = t + 32
                    continue 
                require ext_code.size(address(_2996))
                staticcall address(_2996).getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args s, 64, mem[_2923 + 164 len (32 * mem[_2923]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_2923 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _2923 + ceil32(return_data.size) + 96
                require return_data.size >= 32
                _4832 = mem[_2923 + 96 len 4], Mask(224, 32, s) >> 32
                require mem[_2923 + 96 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                require mem[_2923 + 96 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                require mem[_2923 + mem[_2923 + 96 len 4], Mask(224, 32, s) >> 32 + 96] <= 4294967296 and mem[_2923 + 96 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_2923 + mem[_2923 + 96 len 4], Mask(224, 32, s) >> 32 + 96]) + 32 <= return_data.size
                mem[_2923 + ceil32(return_data.size) + 96] = mem[_2923 + mem[_2923 + 96 len 4], Mask(224, 32, s) >> 32 + 96]
                _4845 = mem[_2923 + _4832 + 96]
                s = 0
                while s < 32 * _4845:
                    mem[s + _2923 + ceil32(return_data.size) + 128] = mem[s + _2923 + _4832 + 128]
                    s = s + 32
                    continue 
                mem[64] = (32 * _4845) + _2923 + ceil32(return_data.size) + 128
                if mem[_2923 + ceil32(return_data.size) + 96] - 1 < mem[_2923 + ceil32(return_data.size) + 96]:
                    idx = idx + 1
                    s = mem[(32 * mem[_2923 + ceil32(return_data.size) + 96] - 1) + _2923 + ceil32(return_data.size) + 128]
                    continue 
                revert
            if s:
                if 10^18 * s / s != 10^18:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _3037 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3037] = 26
                mem[_3037 + 32] = 'SafeMath: division by zero'
                if 10^18 * s / 10^18:
                    if 10^18 * 10^18 * s / 10^18 / 10^18 * s / 10^18 != 10^18:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            revert with 0, 'SafeMath: division by zero'
        if maxPercentSell * arg3 / arg3 != maxPercentSell:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        _1524 = mem[64]
        mem[64] = mem[64] + 64
        mem[_1524] = 26
        mem[_1524 + 32] = 'SafeMath: division by zero'
        _2909 = mem[(32 * arg1.length) + 128]
        idx = 0
        s = maxPercentSell * arg3 / 100000
        while idx < _2909 - 1:
            _2921 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            mem[_2921 + 32 len 64] = call.data[calldata.size len 64]
            require idx < mem[(32 * arg1.length) + 128]
            require 0 < mem[_2921]
            mem[_2921 + 32] = mem[(32 * idx) + (32 * arg1.length) + 172 len 20]
            require idx + 1 < mem[(32 * arg1.length) + 128]
            require 1 < mem[_2921]
            mem[_2921 + 64] = mem[(32 * idx + 1) + (32 * arg1.length) + 172 len 20]
            require idx < mem[96]
            _2992 = mem[(32 * idx) + 128]
            mem[_2921 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_2921 + 100] = s
            mem[_2921 + 132] = 64
            mem[_2921 + 164] = mem[_2921]
            t = 0
            while t < 32 * mem[_2921]:
                mem[t + _2921 + 196] = mem[t + _2921 + 32]
                t = t + 32
                continue 
            require ext_code.size(address(_2992))
            staticcall address(_2992).getAmountsOut(uint256 rg1, address[] rg2) with:
                    gas gas_remaining wei
                   args s, 64, mem[_2921 + 164 len (32 * mem[_2921]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_2921 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = _2921 + ceil32(return_data.size) + 96
            require return_data.size >= 32
            _4830 = mem[_2921 + 96 len 4], Mask(224, 32, s) >> 32
            require mem[_2921 + 96 len 4], Mask(224, 32, s) >> 32 <= 4294967296
            require mem[_2921 + 96 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
            require mem[_2921 + mem[_2921 + 96 len 4], Mask(224, 32, s) >> 32 + 96] <= 4294967296 and mem[_2921 + 96 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_2921 + mem[_2921 + 96 len 4], Mask(224, 32, s) >> 32 + 96]) + 32 <= return_data.size
            mem[_2921 + ceil32(return_data.size) + 96] = mem[_2921 + mem[_2921 + 96 len 4], Mask(224, 32, s) >> 32 + 96]
            _4844 = mem[_2921 + _4830 + 96]
            s = 0
            while s < 32 * _4844:
                mem[s + _2921 + ceil32(return_data.size) + 128] = mem[s + _2921 + _4830 + 128]
                s = s + 32
                continue 
            mem[64] = (32 * _4844) + _2921 + ceil32(return_data.size) + 128
            if mem[_2921 + ceil32(return_data.size) + 96] - 1 < mem[_2921 + ceil32(return_data.size) + 96]:
                idx = idx + 1
                s = mem[(32 * mem[_2921 + ceil32(return_data.size) + 96] - 1) + _2921 + ceil32(return_data.size) + 128]
                continue 
            revert
        if not s:
            _3026 = mem[64]
            mem[64] = mem[64] + 64
            mem[_3026] = 26
            mem[_3026 + 32] = 'SafeMath: division by zero'
            _3110 = mem[64]
            mem[64] = mem[64] + 64
            mem[_3110] = 26
            mem[_3110 + 32] = 'SafeMath: division by zero'
            if not maxPercentSell * arg3 / 100000:
                revert with 0, 'SafeMath: division by zero'
            if 0 / maxPercentSell * arg3 / 100000 < 0 / maxPercentSell / 1000 * arg3 / 100000:
                _3272 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3272] = 30
                mem[_3272 + 32] = 'SafeMath: subtraction overflow'
                if maxPercentSell / 1000 * arg3 / 100000 > maxPercentSell * arg3 / 100000:
                    revert with 0, 'SafeMath: subtraction overflow'
                _3333 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3333] = 30
                mem[_3333 + 32] = 'SafeMath: subtraction overflow'
                if 0 / maxPercentSell * arg3 / 100000 > 0 / maxPercentSell / 1000 * arg3 / 100000:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not (0 / maxPercentSell / 1000 * arg3 / 100000) - (0 / maxPercentSell * arg3 / 100000):
                    _3500 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3500] = 26
                    mem[_3500 + 32] = 'SafeMath: division by zero'
                    if not (maxPercentSell * arg3 / 100000) - (maxPercentSell / 1000 * arg3 / 100000):
                        revert with 0, 'SafeMath: division by zero'
                    _3613 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3613] = 30
                    mem[_3613 + 32] = 'SafeMath: subtraction overflow'
                    if 10^18 > 0 / maxPercentSell / 1000 * arg3 / 100000:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not (0 / maxPercentSell / 1000 * arg3 / 100000) - 10^18:
                        if not 0 / (maxPercentSell * arg3 / 100000) - (maxPercentSell / 1000 * arg3 / 100000):
                            revert with 0, 'SafeMath: division by zero'
                        if 0 / 0 / (maxPercentSell * arg3 / 100000) - (maxPercentSell / 1000 * arg3 / 100000) / 2 <= maxPercentSell * arg3 / 100000:
                            return (0 / 0 / (maxPercentSell * arg3 / 100000) - (maxPercentSell / 1000 * arg3 / 100000) / 2)
                    else:
                        if (10^18 * 0 / maxPercentSell / 1000 * arg3 / 100000) - 1000000000000000000 * 10^18 / (0 / maxPercentSell / 1000 * arg3 / 100000) - 10^18 != 10^18:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if not 0 / (maxPercentSell * arg3 / 100000) - (maxPercentSell / 1000 * arg3 / 100000):
                            revert with 0, 'SafeMath: division by zero'
                        if (10^18 * 0 / maxPercentSell / 1000 * arg3 / 100000) - 1000000000000000000 * 10^18 / 0 / (maxPercentSell * arg3 / 100000) - (maxPercentSell / 1000 * arg3 / 100000) / 2 <= maxPercentSell * arg3 / 100000:
                            return ((10^18 * 0 / maxPercentSell / 1000 * arg3 / 100000) - 1000000000000000000 * 10^18 / 0 / (maxPercentSell * arg3 / 100000) - (maxPercentSell / 1000 * arg3 / 100000) / 2)
                else:
                    if (10^18 * 0 / maxPercentSell / 1000 * arg3 / 100000) - (10^18 * 0 / maxPercentSell * arg3 / 100000) / (0 / maxPercentSell / 1000 * arg3 / 100000) - (0 / maxPercentSell * arg3 / 100000) != 10^18:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _3512 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3512] = 26
                    mem[_3512 + 32] = 'SafeMath: division by zero'
                    if not (maxPercentSell * arg3 / 100000) - (maxPercentSell / 1000 * arg3 / 100000):
                        revert with 0, 'SafeMath: division by zero'
                    _3640 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3640] = 30
                    mem[_3640 + 32] = 'SafeMath: subtraction overflow'
                    if 10^18 > 0 / maxPercentSell / 1000 * arg3 / 100000:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not (0 / maxPercentSell / 1000 * arg3 / 100000) - 10^18:
                        if not (10^18 * 0 / maxPercentSell / 1000 * arg3 / 100000) - (10^18 * 0 / maxPercentSell * arg3 / 100000) / (maxPercentSell * arg3 / 100000) - (maxPercentSell / 1000 * arg3 / 100000):
                            revert with 0, 'SafeMath: division by zero'
                        if 0 / (10^18 * 0 / maxPercentSell / 1000 * arg3 / 100000) - (10^18 * 0 / maxPercentSell * arg3 / 100000) / (maxPercentSell * arg3 / 100000) - (maxPercentSell / 1000 * arg3 / 100000) / 2 <= maxPercentSell * arg3 / 100000:
                            return (0 / (10^18 * 0 / maxPercentSell / 1000 * arg3 / 100000) - (10^18 * 0 / maxPercentSell * arg3 / 100000) / (maxPercentSell * arg3 / 100000) - (maxPercentSell / 1000 * arg3 / 100000) / 2)
                    else:
                        if (10^18 * 0 / maxPercentSell / 1000 * arg3 / 100000) - 1000000000000000000 * 10^18 / (0 / maxPercentSell / 1000 * arg3 / 100000) - 10^18 != 10^18:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if not (10^18 * 0 / maxPercentSell / 1000 * arg3 / 100000) - (10^18 * 0 / maxPercentSell * arg3 / 100000) / (maxPercentSell * arg3 / 100000) - (maxPercentSell / 1000 * arg3 / 100000):
                            revert with 0, 'SafeMath: division by zero'
                        if (10^18 * 0 / maxPercentSell / 1000 * arg3 / 100000) - 1000000000000000000 * 10^18 / (10^18 * 0 / maxPercentSell / 1000 * arg3 / 100000) - (10^18 * 0 / maxPercentSell * arg3 / 100000) / (maxPercentSell * arg3 / 100000) - (maxPercentSell / 1000 * arg3 / 100000) / 2 <= maxPercentSell * arg3 / 100000:
                            return ((10^18 * 0 / maxPercentSell / 1000 * arg3 / 100000) - 1000000000000000000 * 10^18 / (10^18 * 0 / maxPercentSell / 1000 * arg3 / 100000) - (10^18 * 0 / maxPercentSell * arg3 / 100000) / (maxPercentSell * arg3 / 100000) - (maxPercentSell / 1000 * arg3 / 100000) / 2)
        else:
            if 10^18 * s / s != 10^18:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _3036 = mem[64]
            mem[64] = mem[64] + 64
            mem[_3036] = 26
            mem[_3036 + 32] = 'SafeMath: division by zero'
            if not 10^18 * s / 10^18:
                _3118 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3118] = 26
                mem[_3118 + 32] = 'SafeMath: division by zero'
                if not maxPercentSell * arg3 / 100000:
                    revert with 0, 'SafeMath: division by zero'
                if 0 / maxPercentSell * arg3 / 100000 < 0 / maxPercentSell / 1000 * arg3 / 100000:
                    _3275 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3275] = 30
                    mem[_3275 + 32] = 'SafeMath: subtraction overflow'
                    if maxPercentSell / 1000 * arg3 / 100000 > maxPercentSell * arg3 / 100000:
                        revert with 0, 'SafeMath: subtraction overflow'
                    _3352 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3352] = 30
                    mem[_3352 + 32] = 'SafeMath: subtraction overflow'
                    if 0 / maxPercentSell * arg3 / 100000 > 0 / maxPercentSell / 1000 * arg3 / 100000:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not (0 / maxPercentSell / 1000 * arg3 / 100000) - (0 / maxPercentSell * arg3 / 100000):
                        _3511 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3511] = 26
                        mem[_3511 + 32] = 'SafeMath: division by zero'
                        if not (maxPercentSell * arg3 / 100000) - (maxPercentSell / 1000 * arg3 / 100000):
                            revert with 0, 'SafeMath: division by zero'
                        _3638 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3638] = 30
                        mem[_3638 + 32] = 'SafeMath: subtraction overflow'
                        if 10^18 > 0 / maxPercentSell / 1000 * arg3 / 100000:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not (0 / maxPercentSell / 1000 * arg3 / 100000) - 10^18:
                            if not 0 / (maxPercentSell * arg3 / 100000) - (maxPercentSell / 1000 * arg3 / 100000):
                                revert with 0, 'SafeMath: division by zero'
                            if 0 / 0 / (maxPercentSell * arg3 / 100000) - (maxPercentSell / 1000 * arg3 / 100000) / 2 <= maxPercentSell * arg3 / 100000:
                                return (0 / 0 / (maxPercentSell * arg3 / 100000) - (maxPercentSell / 1000 * arg3 / 100000) / 2)
                        else:
                            if (10^18 * 0 / maxPercentSell / 1000 * arg3 / 100000) - 1000000000000000000 * 10^18 / (0 / maxPercentSell / 1000 * arg3 / 100000) - 10^18 != 10^18:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if not 0 / (maxPercentSell * arg3 / 100000) - (maxPercentSell / 1000 * arg3 / 100000):
                                revert with 0, 'SafeMath: division by zero'
                            if (10^18 * 0 / maxPercentSell / 1000 * arg3 / 100000) - 1000000000000000000 * 10^18 / 0 / (maxPercentSell * arg3 / 100000) - (maxPercentSell / 1000 * arg3 / 100000) / 2 <= maxPercentSell * arg3 / 100000:
                                return ((10^18 * 0 / maxPercentSell / 1000 * arg3 / 100000) - 1000000000000000000 * 10^18 / 0 / (maxPercentSell * arg3 / 100000) - (maxPercentSell / 1000 * arg3 / 100000) / 2)
                    else:
                        if (10^18 * 0 / maxPercentSell / 1000 * arg3 / 100000) - (10^18 * 0 / maxPercentSell * arg3 / 100000) / (0 / maxPercentSell / 1000 * arg3 / 100000) - (0 / maxPercentSell * arg3 / 100000) != 10^18:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _3524 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3524] = 26
                        mem[_3524 + 32] = 'SafeMath: division by zero'
                        if not (maxPercentSell * arg3 / 100000) - (maxPercentSell / 1000 * arg3 / 100000):
                            revert with 0, 'SafeMath: division by zero'
                        _3664 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3664] = 30
                        mem[_3664 + 32] = 'SafeMath: subtraction overflow'
                        if 10^18 > 0 / maxPercentSell / 1000 * arg3 / 100000:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not (0 / maxPercentSell / 1000 * arg3 / 100000) - 10^18:
                            if not (10^18 * 0 / maxPercentSell / 1000 * arg3 / 100000) - (10^18 * 0 / maxPercentSell * arg3 / 100000) / (maxPercentSell * arg3 / 100000) - (maxPercentSell / 1000 * arg3 / 100000):
                                revert with 0, 'SafeMath: division by zero'
                            if 0 / (10^18 * 0 / maxPercentSell / 1000 * arg3 / 100000) - (10^18 * 0 / maxPercentSell * arg3 / 100000) / (maxPercentSell * arg3 / 100000) - (maxPercentSell / 1000 * arg3 / 100000) / 2 <= maxPercentSell * arg3 / 100000:
                                return (0 / (10^18 * 0 / maxPercentSell / 1000 * arg3 / 100000) - (10^18 * 0 / maxPercentSell * arg3 / 100000) / (maxPercentSell * arg3 / 100000) - (maxPercentSell / 1000 * arg3 / 100000) / 2)
                        else:
                            if (10^18 * 0 / maxPercentSell / 1000 * arg3 / 100000) - 1000000000000000000 * 10^18 / (0 / maxPercentSell / 1000 * arg3 / 100000) - 10^18 != 10^18:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if not (10^18 * 0 / maxPercentSell / 1000 * arg3 / 100000) - (10^18 * 0 / maxPercentSell * arg3 / 100000) / (maxPercentSell * arg3 / 100000) - (maxPercentSell / 1000 * arg3 / 100000):
                                revert with 0, 'SafeMath: division by zero'
                            if (10^18 * 0 / maxPercentSell / 1000 * arg3 / 100000) - 1000000000000000000 * 10^18 / (10^18 * 0 / maxPercentSell / 1000 * arg3 / 100000) - (10^18 * 0 / maxPercentSell * arg3 / 100000) / (maxPercentSell * arg3 / 100000) - (maxPercentSell / 1000 * arg3 / 100000) / 2 <= maxPercentSell * arg3 / 100000:
                                return ((10^18 * 0 / maxPercentSell / 1000 * arg3 / 100000) - 1000000000000000000 * 10^18 / (10^18 * 0 / maxPercentSell / 1000 * arg3 / 100000) - (10^18 * 0 / maxPercentSell * arg3 / 100000) / (maxPercentSell * arg3 / 100000) - (maxPercentSell / 1000 * arg3 / 100000) / 2)
            else:
                if 10^18 * 10^18 * s / 10^18 / 10^18 * s / 10^18 != 10^18:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _3136 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3136] = 26
                mem[_3136 + 32] = 'SafeMath: division by zero'
                if not maxPercentSell * arg3 / 100000:
                    revert with 0, 'SafeMath: division by zero'
                if 10^18 * 10^18 * s / 10^18 / maxPercentSell * arg3 / 100000 < 0 / maxPercentSell / 1000 * arg3 / 100000:
                    _3284 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3284] = 30
                    mem[_3284 + 32] = 'SafeMath: subtraction overflow'
                    if maxPercentSell / 1000 * arg3 / 100000 > maxPercentSell * arg3 / 100000:
                        revert with 0, 'SafeMath: subtraction overflow'
                    _3375 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3375] = 30
                    mem[_3375 + 32] = 'SafeMath: subtraction overflow'
                    if 10^18 * 10^18 * s / 10^18 / maxPercentSell * arg3 / 100000 > 0 / maxPercentSell / 1000 * arg3 / 100000:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not (0 / maxPercentSell / 1000 * arg3 / 100000) - (10^18 * 10^18 * s / 10^18 / maxPercentSell * arg3 / 100000):
                        _3523 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3523] = 26
                        mem[_3523 + 32] = 'SafeMath: division by zero'
                        if not (maxPercentSell * arg3 / 100000) - (maxPercentSell / 1000 * arg3 / 100000):
                            revert with 0, 'SafeMath: division by zero'
                        _3662 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3662] = 30
                        mem[_3662 + 32] = 'SafeMath: subtraction overflow'
                        if 10^18 > 0 / maxPercentSell / 1000 * arg3 / 100000:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not (0 / maxPercentSell / 1000 * arg3 / 100000) - 10^18:
                            if not 0 / (maxPercentSell * arg3 / 100000) - (maxPercentSell / 1000 * arg3 / 100000):
                                revert with 0, 'SafeMath: division by zero'
                            if 0 / 0 / (maxPercentSell * arg3 / 100000) - (maxPercentSell / 1000 * arg3 / 100000) / 2 <= maxPercentSell * arg3 / 100000:
                                return (0 / 0 / (maxPercentSell * arg3 / 100000) - (maxPercentSell / 1000 * arg3 / 100000) / 2)
                        else:
                            if (10^18 * 0 / maxPercentSell / 1000 * arg3 / 100000) - 1000000000000000000 * 10^18 / (0 / maxPercentSell / 1000 * arg3 / 100000) - 10^18 != 10^18:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if not 0 / (maxPercentSell * arg3 / 100000) - (maxPercentSell / 1000 * arg3 / 100000):
                                revert with 0, 'SafeMath: division by zero'
                            if (10^18 * 0 / maxPercentSell / 1000 * arg3 / 100000) - 1000000000000000000 * 10^18 / 0 / (maxPercentSell * arg3 / 100000) - (maxPercentSell / 1000 * arg3 / 100000) / 2 <= maxPercentSell * arg3 / 100000:
                                return ((10^18 * 0 / maxPercentSell / 1000 * arg3 / 100000) - 1000000000000000000 * 10^18 / 0 / (maxPercentSell * arg3 / 100000) - (maxPercentSell / 1000 * arg3 / 100000) / 2)
                    else:
                        if (10^18 * 0 / maxPercentSell / 1000 * arg3 / 100000) - (10^18 * 10^18 * 10^18 * s / 10^18 / maxPercentSell * arg3 / 100000) / (0 / maxPercentSell / 1000 * arg3 / 100000) - (10^18 * 10^18 * s / 10^18 / maxPercentSell * arg3 / 100000) != 10^18:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _3542 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3542] = 26
                        mem[_3542 + 32] = 'SafeMath: division by zero'
                        if not (maxPercentSell * arg3 / 100000) - (maxPercentSell / 1000 * arg3 / 100000):
                            revert with 0, 'SafeMath: division by zero'
                        _3687 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3687] = 30
                        mem[_3687 + 32] = 'SafeMath: subtraction overflow'
                        if 10^18 > 0 / maxPercentSell / 1000 * arg3 / 100000:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not (0 / maxPercentSell / 1000 * arg3 / 100000) - 10^18:
                            if not (10^18 * 0 / maxPercentSell / 1000 * arg3 / 100000) - (10^18 * 10^18 * 10^18 * s / 10^18 / maxPercentSell * arg3 / 100000) / (maxPercentSell * arg3 / 100000) - (maxPercentSell / 1000 * arg3 / 100000):
                                revert with 0, 'SafeMath: division by zero'
                            if 0 / (10^18 * 0 / maxPercentSell / 1000 * arg3 / 100000) - (10^18 * 10^18 * 10^18 * s / 10^18 / maxPercentSell * arg3 / 100000) / (maxPercentSell * arg3 / 100000) - (maxPercentSell / 1000 * arg3 / 100000) / 2 <= maxPercentSell * arg3 / 100000:
                                return (0 / (10^18 * 0 / maxPercentSell / 1000 * arg3 / 100000) - (10^18 * 10^18 * 10^18 * s / 10^18 / maxPercentSell * arg3 / 100000) / (maxPercentSell * arg3 / 100000) - (maxPercentSell / 1000 * arg3 / 100000) / 2)
                        else:
                            if (10^18 * 0 / maxPercentSell / 1000 * arg3 / 100000) - 1000000000000000000 * 10^18 / (0 / maxPercentSell / 1000 * arg3 / 100000) - 10^18 != 10^18:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if not (10^18 * 0 / maxPercentSell / 1000 * arg3 / 100000) - (10^18 * 10^18 * 10^18 * s / 10^18 / maxPercentSell * arg3 / 100000) / (maxPercentSell * arg3 / 100000) - (maxPercentSell / 1000 * arg3 / 100000):
                                revert with 0, 'SafeMath: division by zero'
                            if (10^18 * 0 / maxPercentSell / 1000 * arg3 / 100000) - 1000000000000000000 * 10^18 / (10^18 * 0 / maxPercentSell / 1000 * arg3 / 100000) - (10^18 * 10^18 * 10^18 * s / 10^18 / maxPercentSell * arg3 / 100000) / (maxPercentSell * arg3 / 100000) - (maxPercentSell / 1000 * arg3 / 100000) / 2 <= maxPercentSell * arg3 / 100000:
                                return ((10^18 * 0 / maxPercentSell / 1000 * arg3 / 100000) - 1000000000000000000 * 10^18 / (10^18 * 0 / maxPercentSell / 1000 * arg3 / 100000) - (10^18 * 10^18 * 10^18 * s / 10^18 / maxPercentSell * arg3 / 100000) / (maxPercentSell * arg3 / 100000) - (maxPercentSell / 1000 * arg3 / 100000) / 2)
    else:
        if 10^18 * s / s != 10^18:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        _1480 = mem[64]
        mem[64] = mem[64] + 64
        mem[_1480] = 26
        mem[_1480 + 32] = 'SafeMath: division by zero'
        if not 10^18 * s / 10^18:
            _1493 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1493] = 26
            mem[_1493 + 32] = 'SafeMath: division by zero'
            if not maxPercentSell / 1000 * arg3 / 100000:
                revert with 0, 'SafeMath: division by zero'
            if not arg3:
                _1523 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1523] = 26
                mem[_1523 + 32] = 'SafeMath: division by zero'
                _2908 = mem[(32 * arg1.length) + 128]
                idx = 0
                s = 0
                while idx < _2908 - 1:
                    _2918 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    mem[_2918 + 32 len 64] = call.data[calldata.size len 64]
                    require idx < mem[(32 * arg1.length) + 128]
                    require 0 < mem[_2918]
                    mem[_2918 + 32] = mem[(32 * idx) + (32 * arg1.length) + 172 len 20]
                    require idx + 1 < mem[(32 * arg1.length) + 128]
                    require 1 < mem[_2918]
                    mem[_2918 + 64] = mem[(32 * idx + 1) + (32 * arg1.length) + 172 len 20]
                    require idx < mem[96]
                    _2988 = mem[(32 * idx) + 128]
                    mem[_2918 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_2918 + 100] = s
                    mem[_2918 + 132] = 64
                    mem[_2918 + 164] = mem[_2918]
                    t = 0
                    while t < 32 * mem[_2918]:
                        mem[t + _2918 + 196] = mem[t + _2918 + 32]
                        t = t + 32
                        continue 
                    require ext_code.size(address(_2988))
                    staticcall address(_2988).getAmountsOut(uint256 rg1, address[] rg2) with:
                            gas gas_remaining wei
                           args s, 64, mem[_2918 + 164 len (32 * mem[_2918]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_2918 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _2918 + ceil32(return_data.size) + 96
                    require return_data.size >= 32
                    _4828 = mem[_2918 + 96 len 4], Mask(224, 32, s) >> 32
                    require mem[_2918 + 96 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                    require mem[_2918 + 96 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                    require mem[_2918 + mem[_2918 + 96 len 4], Mask(224, 32, s) >> 32 + 96] <= 4294967296 and mem[_2918 + 96 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_2918 + mem[_2918 + 96 len 4], Mask(224, 32, s) >> 32 + 96]) + 32 <= return_data.size
                    mem[_2918 + ceil32(return_data.size) + 96] = mem[_2918 + mem[_2918 + 96 len 4], Mask(224, 32, s) >> 32 + 96]
                    _4843 = mem[_2918 + _4828 + 96]
                    s = 0
                    while s < 32 * _4843:
                        mem[s + _2918 + ceil32(return_data.size) + 128] = mem[s + _2918 + _4828 + 128]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _4843) + _2918 + ceil32(return_data.size) + 128
                    if mem[_2918 + ceil32(return_data.size) + 96] - 1 < mem[_2918 + ceil32(return_data.size) + 96]:
                        idx = idx + 1
                        s = mem[(32 * mem[_2918 + ceil32(return_data.size) + 96] - 1) + _2918 + ceil32(return_data.size) + 128]
                        continue 
                    revert
                if s:
                    if 10^18 * s / s != 10^18:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _3035 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3035] = 26
                    mem[_3035 + 32] = 'SafeMath: division by zero'
                    if 10^18 * s / 10^18:
                        if 10^18 * 10^18 * s / 10^18 / 10^18 * s / 10^18 != 10^18:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                revert with 0, 'SafeMath: division by zero'
            if maxPercentSell * arg3 / arg3 != maxPercentSell:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _1526 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1526] = 26
            mem[_1526 + 32] = 'SafeMath: division by zero'
            _2907 = mem[(32 * arg1.length) + 128]
            idx = 0
            s = maxPercentSell * arg3 / 100000
            while idx < _2907 - 1:
                _2916 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                mem[_2916 + 32 len 64] = call.data[calldata.size len 64]
                require idx < mem[(32 * arg1.length) + 128]
                require 0 < mem[_2916]
                mem[_2916 + 32] = mem[(32 * idx) + (32 * arg1.length) + 172 len 20]
                require idx + 1 < mem[(32 * arg1.length) + 128]
                require 1 < mem[_2916]
                mem[_2916 + 64] = mem[(32 * idx + 1) + (32 * arg1.length) + 172 len 20]
                require idx < mem[96]
                _2984 = mem[(32 * idx) + 128]
                mem[_2916 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_2916 + 100] = s
                mem[_2916 + 132] = 64
                mem[_2916 + 164] = mem[_2916]
                t = 0
                while t < 32 * mem[_2916]:
                    mem[t + _2916 + 196] = mem[t + _2916 + 32]
                    t = t + 32
                    continue 
                require ext_code.size(address(_2984))
                staticcall address(_2984).getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args s, 64, mem[_2916 + 164 len (32 * mem[_2916]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_2916 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _2916 + ceil32(return_data.size) + 96
                require return_data.size >= 32
                _4826 = mem[_2916 + 96 len 4], Mask(224, 32, s) >> 32
                require mem[_2916 + 96 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                require mem[_2916 + 96 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                require mem[_2916 + mem[_2916 + 96 len 4], Mask(224, 32, s) >> 32 + 96] <= 4294967296 and mem[_2916 + 96 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_2916 + mem[_2916 + 96 len 4], Mask(224, 32, s) >> 32 + 96]) + 32 <= return_data.size
                mem[_2916 + ceil32(return_data.size) + 96] = mem[_2916 + mem[_2916 + 96 len 4], Mask(224, 32, s) >> 32 + 96]
                _4842 = mem[_2916 + _4826 + 96]
                s = 0
                while s < 32 * _4842:
                    mem[s + _2916 + ceil32(return_data.size) + 128] = mem[s + _2916 + _4826 + 128]
                    s = s + 32
                    continue 
                mem[64] = (32 * _4842) + _2916 + ceil32(return_data.size) + 128
                if mem[_2916 + ceil32(return_data.size) + 96] - 1 < mem[_2916 + ceil32(return_data.size) + 96]:
                    idx = idx + 1
                    s = mem[(32 * mem[_2916 + ceil32(return_data.size) + 96] - 1) + _2916 + ceil32(return_data.size) + 128]
                    continue 
                revert
            if not s:
                _3020 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3020] = 26
                mem[_3020 + 32] = 'SafeMath: division by zero'
                _3104 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3104] = 26
                mem[_3104 + 32] = 'SafeMath: division by zero'
                if not maxPercentSell * arg3 / 100000:
                    revert with 0, 'SafeMath: division by zero'
                if 0 / maxPercentSell * arg3 / 100000 < 0 / maxPercentSell / 1000 * arg3 / 100000:
                    _3271 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3271] = 30
                    mem[_3271 + 32] = 'SafeMath: subtraction overflow'
                    if maxPercentSell / 1000 * arg3 / 100000 > maxPercentSell * arg3 / 100000:
                        revert with 0, 'SafeMath: subtraction overflow'
                    _3327 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3327] = 30
                    mem[_3327 + 32] = 'SafeMath: subtraction overflow'
                    if 0 / maxPercentSell * arg3 / 100000 > 0 / maxPercentSell / 1000 * arg3 / 100000:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not (0 / maxPercentSell / 1000 * arg3 / 100000) - (0 / maxPercentSell * arg3 / 100000):
                        _3496 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3496] = 26
                        mem[_3496 + 32] = 'SafeMath: division by zero'
                        if not (maxPercentSell * arg3 / 100000) - (maxPercentSell / 1000 * arg3 / 100000):
                            revert with 0, 'SafeMath: division by zero'
                        _3605 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3605] = 30
                        mem[_3605 + 32] = 'SafeMath: subtraction overflow'
                        if 10^18 > 0 / maxPercentSell / 1000 * arg3 / 100000:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not (0 / maxPercentSell / 1000 * arg3 / 100000) - 10^18:
                            if not 0 / (maxPercentSell * arg3 / 100000) - (maxPercentSell / 1000 * arg3 / 100000):
                                revert with 0, 'SafeMath: division by zero'
                            if 0 / 0 / (maxPercentSell * arg3 / 100000) - (maxPercentSell / 1000 * arg3 / 100000) / 2 <= maxPercentSell * arg3 / 100000:
                                return (0 / 0 / (maxPercentSell * arg3 / 100000) - (maxPercentSell / 1000 * arg3 / 100000) / 2)
                        else:
                            if (10^18 * 0 / maxPercentSell / 1000 * arg3 / 100000) - 1000000000000000000 * 10^18 / (0 / maxPercentSell / 1000 * arg3 / 100000) - 10^18 != 10^18:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if not 0 / (maxPercentSell * arg3 / 100000) - (maxPercentSell / 1000 * arg3 / 100000):
                                revert with 0, 'SafeMath: division by zero'
                            if (10^18 * 0 / maxPercentSell / 1000 * arg3 / 100000) - 1000000000000000000 * 10^18 / 0 / (maxPercentSell * arg3 / 100000) - (maxPercentSell / 1000 * arg3 / 100000) / 2 <= maxPercentSell * arg3 / 100000:
                                return ((10^18 * 0 / maxPercentSell / 1000 * arg3 / 100000) - 1000000000000000000 * 10^18 / 0 / (maxPercentSell * arg3 / 100000) - (maxPercentSell / 1000 * arg3 / 100000) / 2)
                    else:
                        if (10^18 * 0 / maxPercentSell / 1000 * arg3 / 100000) - (10^18 * 0 / maxPercentSell * arg3 / 100000) / (0 / maxPercentSell / 1000 * arg3 / 100000) - (0 / maxPercentSell * arg3 / 100000) != 10^18:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _3508 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3508] = 26
                        mem[_3508 + 32] = 'SafeMath: division by zero'
                        if not (maxPercentSell * arg3 / 100000) - (maxPercentSell / 1000 * arg3 / 100000):
                            revert with 0, 'SafeMath: division by zero'
                        _3631 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3631] = 30
                        mem[_3631 + 32] = 'SafeMath: subtraction overflow'
                        if 10^18 > 0 / maxPercentSell / 1000 * arg3 / 100000:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not (0 / maxPercentSell / 1000 * arg3 / 100000) - 10^18:
                            if not (10^18 * 0 / maxPercentSell / 1000 * arg3 / 100000) - (10^18 * 0 / maxPercentSell * arg3 / 100000) / (maxPercentSell * arg3 / 100000) - (maxPercentSell / 1000 * arg3 / 100000):
                                revert with 0, 'SafeMath: division by zero'
                            if 0 / (10^18 * 0 / maxPercentSell / 1000 * arg3 / 100000) - (10^18 * 0 / maxPercentSell * arg3 / 100000) / (maxPercentSell * arg3 / 100000) - (maxPercentSell / 1000 * arg3 / 100000) / 2 <= maxPercentSell * arg3 / 100000:
                                return (0 / (10^18 * 0 / maxPercentSell / 1000 * arg3 / 100000) - (10^18 * 0 / maxPercentSell * arg3 / 100000) / (maxPercentSell * arg3 / 100000) - (maxPercentSell / 1000 * arg3 / 100000) / 2)
                        else:
                            if (10^18 * 0 / maxPercentSell / 1000 * arg3 / 100000) - 1000000000000000000 * 10^18 / (0 / maxPercentSell / 1000 * arg3 / 100000) - 10^18 != 10^18:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if not (10^18 * 0 / maxPercentSell / 1000 * arg3 / 100000) - (10^18 * 0 / maxPercentSell * arg3 / 100000) / (maxPercentSell * arg3 / 100000) - (maxPercentSell / 1000 * arg3 / 100000):
                                revert with 0, 'SafeMath: division by zero'
                            if (10^18 * 0 / maxPercentSell / 1000 * arg3 / 100000) - 1000000000000000000 * 10^18 / (10^18 * 0 / maxPercentSell / 1000 * arg3 / 100000) - (10^18 * 0 / maxPercentSell * arg3 / 100000) / (maxPercentSell * arg3 / 100000) - (maxPercentSell / 1000 * arg3 / 100000) / 2 <= maxPercentSell * arg3 / 100000:
                                return ((10^18 * 0 / maxPercentSell / 1000 * arg3 / 100000) - 1000000000000000000 * 10^18 / (10^18 * 0 / maxPercentSell / 1000 * arg3 / 100000) - (10^18 * 0 / maxPercentSell * arg3 / 100000) / (maxPercentSell * arg3 / 100000) - (maxPercentSell / 1000 * arg3 / 100000) / 2)
            else:
                if 10^18 * s / s != 10^18:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _3034 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3034] = 26
                mem[_3034 + 32] = 'SafeMath: division by zero'
                if not 10^18 * s / 10^18:
                    _3116 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3116] = 26
                    mem[_3116 + 32] = 'SafeMath: division by zero'
                    if not maxPercentSell * arg3 / 100000:
                        revert with 0, 'SafeMath: division by zero'
                    if 0 / maxPercentSell * arg3 / 100000 < 0 / maxPercentSell / 1000 * arg3 / 100000:
                        _3274 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3274] = 30
                        mem[_3274 + 32] = 'SafeMath: subtraction overflow'
                        if maxPercentSell / 1000 * arg3 / 100000 > maxPercentSell * arg3 / 100000:
                            revert with 0, 'SafeMath: subtraction overflow'
                        _3345 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3345] = 30
                        mem[_3345 + 32] = 'SafeMath: subtraction overflow'
                        if 0 / maxPercentSell * arg3 / 100000 > 0 / maxPercentSell / 1000 * arg3 / 100000:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not (0 / maxPercentSell / 1000 * arg3 / 100000) - (0 / maxPercentSell * arg3 / 100000):
                            _3507 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3507] = 26
                            mem[_3507 + 32] = 'SafeMath: division by zero'
                            if not (maxPercentSell * arg3 / 100000) - (maxPercentSell / 1000 * arg3 / 100000):
                                revert with 0, 'SafeMath: division by zero'
                            _3629 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3629] = 30
                            mem[_3629 + 32] = 'SafeMath: subtraction overflow'
                            if 10^18 > 0 / maxPercentSell / 1000 * arg3 / 100000:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not (0 / maxPercentSell / 1000 * arg3 / 100000) - 10^18:
                                if not 0 / (maxPercentSell * arg3 / 100000) - (maxPercentSell / 1000 * arg3 / 100000):
                                    revert with 0, 'SafeMath: division by zero'
                                if 0 / 0 / (maxPercentSell * arg3 / 100000) - (maxPercentSell / 1000 * arg3 / 100000) / 2 <= maxPercentSell * arg3 / 100000:
                                    return (0 / 0 / (maxPercentSell * arg3 / 100000) - (maxPercentSell / 1000 * arg3 / 100000) / 2)
                            else:
                                if (10^18 * 0 / maxPercentSell / 1000 * arg3 / 100000) - 1000000000000000000 * 10^18 / (0 / maxPercentSell / 1000 * arg3 / 100000) - 10^18 != 10^18:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                if not 0 / (maxPercentSell * arg3 / 100000) - (maxPercentSell / 1000 * arg3 / 100000):
                                    revert with 0, 'SafeMath: division by zero'
                                if (10^18 * 0 / maxPercentSell / 1000 * arg3 / 100000) - 1000000000000000000 * 10^18 / 0 / (maxPercentSell * arg3 / 100000) - (maxPercentSell / 1000 * arg3 / 100000) / 2 <= maxPercentSell * arg3 / 100000:
                                    return ((10^18 * 0 / maxPercentSell / 1000 * arg3 / 100000) - 1000000000000000000 * 10^18 / 0 / (maxPercentSell * arg3 / 100000) - (maxPercentSell / 1000 * arg3 / 100000) / 2)
                        else:
                            if (10^18 * 0 / maxPercentSell / 1000 * arg3 / 100000) - (10^18 * 0 / maxPercentSell * arg3 / 100000) / (0 / maxPercentSell / 1000 * arg3 / 100000) - (0 / maxPercentSell * arg3 / 100000) != 10^18:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _3519 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3519] = 26
                            mem[_3519 + 32] = 'SafeMath: division by zero'
                            if not (maxPercentSell * arg3 / 100000) - (maxPercentSell / 1000 * arg3 / 100000):
                                revert with 0, 'SafeMath: division by zero'
                            _3655 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3655] = 30
                            mem[_3655 + 32] = 'SafeMath: subtraction overflow'
                            if 10^18 > 0 / maxPercentSell / 1000 * arg3 / 100000:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not (0 / maxPercentSell / 1000 * arg3 / 100000) - 10^18:
                                if not (10^18 * 0 / maxPercentSell / 1000 * arg3 / 100000) - (10^18 * 0 / maxPercentSell * arg3 / 100000) / (maxPercentSell * arg3 / 100000) - (maxPercentSell / 1000 * arg3 / 100000):
                                    revert with 0, 'SafeMath: division by zero'
                                if 0 / (10^18 * 0 / maxPercentSell / 1000 * arg3 / 100000) - (10^18 * 0 / maxPercentSell * arg3 / 100000) / (maxPercentSell * arg3 / 100000) - (maxPercentSell / 1000 * arg3 / 100000) / 2 <= maxPercentSell * arg3 / 100000:
                                    return (0 / (10^18 * 0 / maxPercentSell / 1000 * arg3 / 100000) - (10^18 * 0 / maxPercentSell * arg3 / 100000) / (maxPercentSell * arg3 / 100000) - (maxPercentSell / 1000 * arg3 / 100000) / 2)
                            else:
                                if (10^18 * 0 / maxPercentSell / 1000 * arg3 / 100000) - 1000000000000000000 * 10^18 / (0 / maxPercentSell / 1000 * arg3 / 100000) - 10^18 != 10^18:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                if not (10^18 * 0 / maxPercentSell / 1000 * arg3 / 100000) - (10^18 * 0 / maxPercentSell * arg3 / 100000) / (maxPercentSell * arg3 / 100000) - (maxPercentSell / 1000 * arg3 / 100000):
                                    revert with 0, 'SafeMath: division by zero'
                                if (10^18 * 0 / maxPercentSell / 1000 * arg3 / 100000) - 1000000000000000000 * 10^18 / (10^18 * 0 / maxPercentSell / 1000 * arg3 / 100000) - (10^18 * 0 / maxPercentSell * arg3 / 100000) / (maxPercentSell * arg3 / 100000) - (maxPercentSell / 1000 * arg3 / 100000) / 2 <= maxPercentSell * arg3 / 100000:
                                    return ((10^18 * 0 / maxPercentSell / 1000 * arg3 / 100000) - 1000000000000000000 * 10^18 / (10^18 * 0 / maxPercentSell / 1000 * arg3 / 100000) - (10^18 * 0 / maxPercentSell * arg3 / 100000) / (maxPercentSell * arg3 / 100000) - (maxPercentSell / 1000 * arg3 / 100000) / 2)
                else:
                    if 10^18 * 10^18 * s / 10^18 / 10^18 * s / 10^18 != 10^18:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _3128 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3128] = 26
                    mem[_3128 + 32] = 'SafeMath: division by zero'
                    if not maxPercentSell * arg3 / 100000:
                        revert with 0, 'SafeMath: division by zero'
                    if 10^18 * 10^18 * s / 10^18 / maxPercentSell * arg3 / 100000 < 0 / maxPercentSell / 1000 * arg3 / 100000:
                        _3280 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3280] = 30
                        mem[_3280 + 32] = 'SafeMath: subtraction overflow'
                        if maxPercentSell / 1000 * arg3 / 100000 > maxPercentSell * arg3 / 100000:
                            revert with 0, 'SafeMath: subtraction overflow'
                        _3366 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3366] = 30
                        mem[_3366 + 32] = 'SafeMath: subtraction overflow'
                        if 10^18 * 10^18 * s / 10^18 / maxPercentSell * arg3 / 100000 > 0 / maxPercentSell / 1000 * arg3 / 100000:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not (0 / maxPercentSell / 1000 * arg3 / 100000) - (10^18 * 10^18 * s / 10^18 / maxPercentSell * arg3 / 100000):
                            _3518 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3518] = 26
                            mem[_3518 + 32] = 'SafeMath: division by zero'
                            if not (maxPercentSell * arg3 / 100000) - (maxPercentSell / 1000 * arg3 / 100000):
                                revert with 0, 'SafeMath: division by zero'
                            _3653 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3653] = 30
                            mem[_3653 + 32] = 'SafeMath: subtraction overflow'
                            if 10^18 > 0 / maxPercentSell / 1000 * arg3 / 100000:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not (0 / maxPercentSell / 1000 * arg3 / 100000) - 10^18:
                                if not 0 / (maxPercentSell * arg3 / 100000) - (maxPercentSell / 1000 * arg3 / 100000):
                                    revert with 0, 'SafeMath: division by zero'
                                if 0 / 0 / (maxPercentSell * arg3 / 100000) - (maxPercentSell / 1000 * arg3 / 100000) / 2 <= maxPercentSell * arg3 / 100000:
                                    return (0 / 0 / (maxPercentSell * arg3 / 100000) - (maxPercentSell / 1000 * arg3 / 100000) / 2)
                            else:
                                if (10^18 * 0 / maxPercentSell / 1000 * arg3 / 100000) - 1000000000000000000 * 10^18 / (0 / maxPercentSell / 1000 * arg3 / 100000) - 10^18 != 10^18:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                if not 0 / (maxPercentSell * arg3 / 100000) - (maxPercentSell / 1000 * arg3 / 100000):
                                    revert with 0, 'SafeMath: division by zero'
                                if (10^18 * 0 / maxPercentSell / 1000 * arg3 / 100000) - 1000000000000000000 * 10^18 / 0 / (maxPercentSell * arg3 / 100000) - (maxPercentSell / 1000 * arg3 / 100000) / 2 <= maxPercentSell * arg3 / 100000:
                                    return ((10^18 * 0 / maxPercentSell / 1000 * arg3 / 100000) - 1000000000000000000 * 10^18 / 0 / (maxPercentSell * arg3 / 100000) - (maxPercentSell / 1000 * arg3 / 100000) / 2)
                        else:
                            if (10^18 * 0 / maxPercentSell / 1000 * arg3 / 100000) - (10^18 * 10^18 * 10^18 * s / 10^18 / maxPercentSell * arg3 / 100000) / (0 / maxPercentSell / 1000 * arg3 / 100000) - (10^18 * 10^18 * s / 10^18 / maxPercentSell * arg3 / 100000) != 10^18:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _3535 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3535] = 26
                            mem[_3535 + 32] = 'SafeMath: division by zero'
                            if not (maxPercentSell * arg3 / 100000) - (maxPercentSell / 1000 * arg3 / 100000):
                                revert with 0, 'SafeMath: division by zero'
                            _3678 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3678] = 30
                            mem[_3678 + 32] = 'SafeMath: subtraction overflow'
                            if 10^18 > 0 / maxPercentSell / 1000 * arg3 / 100000:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not (0 / maxPercentSell / 1000 * arg3 / 100000) - 10^18:
                                if not (10^18 * 0 / maxPercentSell / 1000 * arg3 / 100000) - (10^18 * 10^18 * 10^18 * s / 10^18 / maxPercentSell * arg3 / 100000) / (maxPercentSell * arg3 / 100000) - (maxPercentSell / 1000 * arg3 / 100000):
                                    revert with 0, 'SafeMath: division by zero'
                                if 0 / (10^18 * 0 / maxPercentSell / 1000 * arg3 / 100000) - (10^18 * 10^18 * 10^18 * s / 10^18 / maxPercentSell * arg3 / 100000) / (maxPercentSell * arg3 / 100000) - (maxPercentSell / 1000 * arg3 / 100000) / 2 <= maxPercentSell * arg3 / 100000:
                                    return (0 / (10^18 * 0 / maxPercentSell / 1000 * arg3 / 100000) - (10^18 * 10^18 * 10^18 * s / 10^18 / maxPercentSell * arg3 / 100000) / (maxPercentSell * arg3 / 100000) - (maxPercentSell / 1000 * arg3 / 100000) / 2)
                            else:
                                if (10^18 * 0 / maxPercentSell / 1000 * arg3 / 100000) - 1000000000000000000 * 10^18 / (0 / maxPercentSell / 1000 * arg3 / 100000) - 10^18 != 10^18:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                if not (10^18 * 0 / maxPercentSell / 1000 * arg3 / 100000) - (10^18 * 10^18 * 10^18 * s / 10^18 / maxPercentSell * arg3 / 100000) / (maxPercentSell * arg3 / 100000) - (maxPercentSell / 1000 * arg3 / 100000):
                                    revert with 0, 'SafeMath: division by zero'
                                if (10^18 * 0 / maxPercentSell / 1000 * arg3 / 100000) - 1000000000000000000 * 10^18 / (10^18 * 0 / maxPercentSell / 1000 * arg3 / 100000) - (10^18 * 10^18 * 10^18 * s / 10^18 / maxPercentSell * arg3 / 100000) / (maxPercentSell * arg3 / 100000) - (maxPercentSell / 1000 * arg3 / 100000) / 2 <= maxPercentSell * arg3 / 100000:
                                    return ((10^18 * 0 / maxPercentSell / 1000 * arg3 / 100000) - 1000000000000000000 * 10^18 / (10^18 * 0 / maxPercentSell / 1000 * arg3 / 100000) - (10^18 * 10^18 * 10^18 * s / 10^18 / maxPercentSell * arg3 / 100000) / (maxPercentSell * arg3 / 100000) - (maxPercentSell / 1000 * arg3 / 100000) / 2)
        else:
            if 10^18 * 10^18 * s / 10^18 / 10^18 * s / 10^18 != 10^18:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _1494 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1494] = 26
            mem[_1494 + 32] = 'SafeMath: division by zero'
            if not maxPercentSell / 1000 * arg3 / 100000:
                revert with 0, 'SafeMath: division by zero'
            if not arg3:
                _1525 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1525] = 26
                mem[_1525 + 32] = 'SafeMath: division by zero'
                _2906 = mem[(32 * arg1.length) + 128]
                idx = 0
                s = 0
                while idx < _2906 - 1:
                    _2913 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    mem[_2913 + 32 len 64] = call.data[calldata.size len 64]
                    require idx < mem[(32 * arg1.length) + 128]
                    require 0 < mem[_2913]
                    mem[_2913 + 32] = mem[(32 * idx) + (32 * arg1.length) + 172 len 20]
                    require idx + 1 < mem[(32 * arg1.length) + 128]
                    require 1 < mem[_2913]
                    mem[_2913 + 64] = mem[(32 * idx + 1) + (32 * arg1.length) + 172 len 20]
                    require idx < mem[96]
                    _2980 = mem[(32 * idx) + 128]
                    mem[_2913 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_2913 + 100] = s
                    mem[_2913 + 132] = 64
                    mem[_2913 + 164] = mem[_2913]
                    t = 0
                    while t < 32 * mem[_2913]:
                        mem[t + _2913 + 196] = mem[t + _2913 + 32]
                        t = t + 32
                        continue 
                    require ext_code.size(address(_2980))
                    staticcall address(_2980).getAmountsOut(uint256 rg1, address[] rg2) with:
                            gas gas_remaining wei
                           args s, 64, mem[_2913 + 164 len (32 * mem[_2913]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_2913 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _2913 + ceil32(return_data.size) + 96
                    require return_data.size >= 32
                    _4824 = mem[_2913 + 96 len 4], Mask(224, 32, s) >> 32
                    require mem[_2913 + 96 len 4], Mask(224, 32, s) >> 32 <= 4294967296
                    require mem[_2913 + 96 len 4], Mask(224, 32, s) >> 32 + 32 <= return_data.size
                    require mem[_2913 + mem[_2913 + 96 len 4], Mask(224, 32, s) >> 32 + 96] <= 4294967296 and mem[_2913 + 96 len 4], Mask(224, 32, s) >> 32 + (32 * mem[_2913 + mem[_2913 + 96 len 4], Mask(224, 32, s) >> 32 + 96]) + 32 <= return_data.size
                    mem[_2913 + ceil32(return_data.size) + 96] = mem[_2913 + mem[_2913 + 96 len 4], Mask(224, 32, s) >> 32 + 96]
                    _4841 = mem[_2913 + _4824 + 96]
                    s = 0
                    while s < 32 * _4841:
                        mem[s + _2913 + ceil32(return_data.size) + 128] = mem[s + _2913 + _4824 + 128]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _4841) + _2913 + ceil32(return_data.size) + 128
                    if mem[_2913 + ceil32(return_data.size) + 96] - 1 < mem[_2913 + ceil32(return_data.size) + 96]:
                        idx = idx + 1
                        s = mem[(32 * mem[_2913 + ceil32(return_data.size) + 96] - 1) + _2913 + ceil32(return_data.size) + 128]
                        continue 
                    revert
                if s:
                    if 10^18 * s / s != 10^18:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _3033 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3033] = 26
                    mem[_3033 + 32] = 'SafeMath: division by zero'
                    if 10^18 * s / 10^18:
                        if 10^18 * 10^18 * s / 10^18 / 10^18 * s / 10^18 != 10^18:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                revert with 0, 'SafeMath: division by zero'
            if maxPercentSell * arg3 / arg3 != maxPercentSell:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _1527 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1527] = 26
            mem[_1527 + 32] = 'SafeMath: division by zero'
            _2905 = mem[(32 * arg1.length) + 128]
            idx = 0
            t = maxPercentSell * arg3 / 100000
            while idx < _2905 - 1:
                _2911 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                mem[_2911 + 32 len 64] = call.data[calldata.size len 64]
                require idx < mem[(32 * arg1.length) + 128]
                require 0 < mem[_2911]
                mem[_2911 + 32] = mem[(32 * idx) + (32 * arg1.length) + 172 len 20]
                require idx + 1 < mem[(32 * arg1.length) + 128]
                require 1 < mem[_2911]
                mem[_2911 + 64] = mem[(32 * idx + 1) + (32 * arg1.length) + 172 len 20]
                require idx < mem[96]
                _2976 = mem[(32 * idx) + 128]
                mem[_2911 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_2911 + 100] = t
                mem[_2911 + 132] = 64
                mem[_2911 + 164] = mem[_2911]
                s = 0
                while s < 32 * mem[_2911]:
                    mem[s + _2911 + 196] = mem[s + _2911 + 32]
                    s = s + 32
                    continue 
                require ext_code.size(address(_2976))
                staticcall address(_2976).getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args t, 64, mem[_2911 + 164 len (32 * mem[_2911]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_2911 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _2911 + ceil32(return_data.size) + 96
                require return_data.size >= 32
                _4822 = mem[_2911 + 96 len 4], Mask(224, 32, t) >> 32
                require mem[_2911 + 96 len 4], Mask(224, 32, t) >> 32 <= 4294967296
                require mem[_2911 + 96 len 4], Mask(224, 32, t) >> 32 + 32 <= return_data.size
                require mem[_2911 + mem[_2911 + 96 len 4], Mask(224, 32, t) >> 32 + 96] <= 4294967296 and mem[_2911 + 96 len 4], Mask(224, 32, t) >> 32 + (32 * mem[_2911 + mem[_2911 + 96 len 4], Mask(224, 32, t) >> 32 + 96]) + 32 <= return_data.size
                mem[_2911 + ceil32(return_data.size) + 96] = mem[_2911 + mem[_2911 + 96 len 4], Mask(224, 32, t) >> 32 + 96]
                _4840 = mem[_2911 + _4822 + 96]
                s = 0
                while s < 32 * _4840:
                    mem[s + _2911 + ceil32(return_data.size) + 128] = mem[s + _2911 + _4822 + 128]
                    s = s + 32
                    continue 
                mem[64] = (32 * _4840) + _2911 + ceil32(return_data.size) + 128
                if mem[_2911 + ceil32(return_data.size) + 96] - 1 < mem[_2911 + ceil32(return_data.size) + 96]:
                    idx = idx + 1
                    t = mem[(32 * mem[_2911 + ceil32(return_data.size) + 96] - 1) + _2911 + ceil32(return_data.size) + 128]
                    continue 
                revert
            if not t:
                _3014 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3014] = 26
                mem[_3014 + 32] = 'SafeMath: division by zero'
                _3098 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3098] = 26
                mem[_3098 + 32] = 'SafeMath: division by zero'
                if not maxPercentSell * arg3 / 100000:
                    revert with 0, 'SafeMath: division by zero'
                if 0 / maxPercentSell * arg3 / 100000 < 10^18 * 10^18 * s / 10^18 / maxPercentSell / 1000 * arg3 / 100000:
                    _3270 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3270] = 30
                    mem[_3270 + 32] = 'SafeMath: subtraction overflow'
                    if maxPercentSell / 1000 * arg3 / 100000 > maxPercentSell * arg3 / 100000:
                        revert with 0, 'SafeMath: subtraction overflow'
                    _3321 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3321] = 30
                    mem[_3321 + 32] = 'SafeMath: subtraction overflow'
                    if 0 / maxPercentSell * arg3 / 100000 > 10^18 * 10^18 * s / 10^18 / maxPercentSell / 1000 * arg3 / 100000:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not (10^18 * 10^18 * s / 10^18 / maxPercentSell / 1000 * arg3 / 100000) - (0 / maxPercentSell * arg3 / 100000):
                        _3492 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3492] = 26
                        mem[_3492 + 32] = 'SafeMath: division by zero'
                        if not (maxPercentSell * arg3 / 100000) - (maxPercentSell / 1000 * arg3 / 100000):
                            revert with 0, 'SafeMath: division by zero'
                        _3597 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3597] = 30
                        mem[_3597 + 32] = 'SafeMath: subtraction overflow'
                        if 10^18 > 10^18 * 10^18 * s / 10^18 / maxPercentSell / 1000 * arg3 / 100000:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not (10^18 * 10^18 * s / 10^18 / maxPercentSell / 1000 * arg3 / 100000) - 10^18:
                            if not 0 / (maxPercentSell * arg3 / 100000) - (maxPercentSell / 1000 * arg3 / 100000):
                                revert with 0, 'SafeMath: division by zero'
                            if 0 / 0 / (maxPercentSell * arg3 / 100000) - (maxPercentSell / 1000 * arg3 / 100000) / 2 <= maxPercentSell * arg3 / 100000:
                                return (0 / 0 / (maxPercentSell * arg3 / 100000) - (maxPercentSell / 1000 * arg3 / 100000) / 2)
                        else:
                            if (10^18 * 10^18 * 10^18 * s / 10^18 / maxPercentSell / 1000 * arg3 / 100000) - 1000000000000000000 * 10^18 / (10^18 * 10^18 * s / 10^18 / maxPercentSell / 1000 * arg3 / 100000) - 10^18 != 10^18:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if not 0 / (maxPercentSell * arg3 / 100000) - (maxPercentSell / 1000 * arg3 / 100000):
                                revert with 0, 'SafeMath: division by zero'
                            if (10^18 * 10^18 * 10^18 * s / 10^18 / maxPercentSell / 1000 * arg3 / 100000) - 1000000000000000000 * 10^18 / 0 / (maxPercentSell * arg3 / 100000) - (maxPercentSell / 1000 * arg3 / 100000) / 2 <= maxPercentSell * arg3 / 100000:
                                return ((10^18 * 10^18 * 10^18 * s / 10^18 / maxPercentSell / 1000 * arg3 / 100000) - 1000000000000000000 * 10^18 / 0 / (maxPercentSell * arg3 / 100000) - (maxPercentSell / 1000 * arg3 / 100000) / 2)
                    else:
                        if (10^18 * 10^18 * 10^18 * s / 10^18 / maxPercentSell / 1000 * arg3 / 100000) - (10^18 * 0 / maxPercentSell * arg3 / 100000) / (10^18 * 10^18 * s / 10^18 / maxPercentSell / 1000 * arg3 / 100000) - (0 / maxPercentSell * arg3 / 100000) != 10^18:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _3504 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3504] = 26
                        mem[_3504 + 32] = 'SafeMath: division by zero'
                        if not (maxPercentSell * arg3 / 100000) - (maxPercentSell / 1000 * arg3 / 100000):
                            revert with 0, 'SafeMath: division by zero'
                        _3622 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3622] = 30
                        mem[_3622 + 32] = 'SafeMath: subtraction overflow'
                        if 10^18 > 10^18 * 10^18 * s / 10^18 / maxPercentSell / 1000 * arg3 / 100000:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not (10^18 * 10^18 * s / 10^18 / maxPercentSell / 1000 * arg3 / 100000) - 10^18:
                            if not (10^18 * 10^18 * 10^18 * s / 10^18 / maxPercentSell / 1000 * arg3 / 100000) - (10^18 * 0 / maxPercentSell * arg3 / 100000) / (maxPercentSell * arg3 / 100000) - (maxPercentSell / 1000 * arg3 / 100000):
                                revert with 0, 'SafeMath: division by zero'
                            if 0 / (10^18 * 10^18 * 10^18 * s / 10^18 / maxPercentSell / 1000 * arg3 / 100000) - (10^18 * 0 / maxPercentSell * arg3 / 100000) / (maxPercentSell * arg3 / 100000) - (maxPercentSell / 1000 * arg3 / 100000) / 2 <= maxPercentSell * arg3 / 100000:
                                return (0 / (10^18 * 10^18 * 10^18 * s / 10^18 / maxPercentSell / 1000 * arg3 / 100000) - (10^18 * 0 / maxPercentSell * arg3 / 100000) / (maxPercentSell * arg3 / 100000) - (maxPercentSell / 1000 * arg3 / 100000) / 2)
                        else:
                            if (10^18 * 10^18 * 10^18 * s / 10^18 / maxPercentSell / 1000 * arg3 / 100000) - 1000000000000000000 * 10^18 / (10^18 * 10^18 * s / 10^18 / maxPercentSell / 1000 * arg3 / 100000) - 10^18 != 10^18:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if not (10^18 * 10^18 * 10^18 * s / 10^18 / maxPercentSell / 1000 * arg3 / 100000) - (10^18 * 0 / maxPercentSell * arg3 / 100000) / (maxPercentSell * arg3 / 100000) - (maxPercentSell / 1000 * arg3 / 100000):
                                revert with 0, 'SafeMath: division by zero'
                            if (10^18 * 10^18 * 10^18 * s / 10^18 / maxPercentSell / 1000 * arg3 / 100000) - 1000000000000000000 * 10^18 / (10^18 * 10^18 * 10^18 * s / 10^18 / maxPercentSell / 1000 * arg3 / 100000) - (10^18 * 0 / maxPercentSell * arg3 / 100000) / (maxPercentSell * arg3 / 100000) - (maxPercentSell / 1000 * arg3 / 100000) / 2 <= maxPercentSell * arg3 / 100000:
                                return ((10^18 * 10^18 * 10^18 * s / 10^18 / maxPercentSell / 1000 * arg3 / 100000) - 1000000000000000000 * 10^18 / (10^18 * 10^18 * 10^18 * s / 10^18 / maxPercentSell / 1000 * arg3 / 100000) - (10^18 * 0 / maxPercentSell * arg3 / 100000) / (maxPercentSell * arg3 / 100000) - (maxPercentSell / 1000 * arg3 / 100000) / 2)
            else:
                if 10^18 * t / t != 10^18:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _3032 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3032] = 26
                mem[_3032 + 32] = 'SafeMath: division by zero'
                if not 10^18 * t / 10^18:
                    _3114 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3114] = 26
                    mem[_3114 + 32] = 'SafeMath: division by zero'
                    if not maxPercentSell * arg3 / 100000:
                        revert with 0, 'SafeMath: division by zero'
                    if 0 / maxPercentSell * arg3 / 100000 < 10^18 * 10^18 * s / 10^18 / maxPercentSell / 1000 * arg3 / 100000:
                        _3273 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3273] = 30
                        mem[_3273 + 32] = 'SafeMath: subtraction overflow'
                        if maxPercentSell / 1000 * arg3 / 100000 > maxPercentSell * arg3 / 100000:
                            revert with 0, 'SafeMath: subtraction overflow'
                        _3338 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3338] = 30
                        mem[_3338 + 32] = 'SafeMath: subtraction overflow'
                        if 0 / maxPercentSell * arg3 / 100000 > 10^18 * 10^18 * s / 10^18 / maxPercentSell / 1000 * arg3 / 100000:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not (10^18 * 10^18 * s / 10^18 / maxPercentSell / 1000 * arg3 / 100000) - (0 / maxPercentSell * arg3 / 100000):
                            _3503 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3503] = 26
                            mem[_3503 + 32] = 'SafeMath: division by zero'
                            if not (maxPercentSell * arg3 / 100000) - (maxPercentSell / 1000 * arg3 / 100000):
                                revert with 0, 'SafeMath: division by zero'
                            _3620 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3620] = 30
                            mem[_3620 + 32] = 'SafeMath: subtraction overflow'
                            if 10^18 > 10^18 * 10^18 * s / 10^18 / maxPercentSell / 1000 * arg3 / 100000:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not (10^18 * 10^18 * s / 10^18 / maxPercentSell / 1000 * arg3 / 100000) - 10^18:
                                if not 0 / (maxPercentSell * arg3 / 100000) - (maxPercentSell / 1000 * arg3 / 100000):
                                    revert with 0, 'SafeMath: division by zero'
                                if 0 / 0 / (maxPercentSell * arg3 / 100000) - (maxPercentSell / 1000 * arg3 / 100000) / 2 <= maxPercentSell * arg3 / 100000:
                                    return (0 / 0 / (maxPercentSell * arg3 / 100000) - (maxPercentSell / 1000 * arg3 / 100000) / 2)
                            else:
                                if (10^18 * 10^18 * 10^18 * s / 10^18 / maxPercentSell / 1000 * arg3 / 100000) - 1000000000000000000 * 10^18 / (10^18 * 10^18 * s / 10^18 / maxPercentSell / 1000 * arg3 / 100000) - 10^18 != 10^18:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                if not 0 / (maxPercentSell * arg3 / 100000) - (maxPercentSell / 1000 * arg3 / 100000):
                                    revert with 0, 'SafeMath: division by zero'
                                if (10^18 * 10^18 * 10^18 * s / 10^18 / maxPercentSell / 1000 * arg3 / 100000) - 1000000000000000000 * 10^18 / 0 / (maxPercentSell * arg3 / 100000) - (maxPercentSell / 1000 * arg3 / 100000) / 2 <= maxPercentSell * arg3 / 100000:
                                    return ((10^18 * 10^18 * 10^18 * s / 10^18 / maxPercentSell / 1000 * arg3 / 100000) - 1000000000000000000 * 10^18 / 0 / (maxPercentSell * arg3 / 100000) - (maxPercentSell / 1000 * arg3 / 100000) / 2)
                        else:
                            if (10^18 * 10^18 * 10^18 * s / 10^18 / maxPercentSell / 1000 * arg3 / 100000) - (10^18 * 0 / maxPercentSell * arg3 / 100000) / (10^18 * 10^18 * s / 10^18 / maxPercentSell / 1000 * arg3 / 100000) - (0 / maxPercentSell * arg3 / 100000) != 10^18:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _3514 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3514] = 26
                            mem[_3514 + 32] = 'SafeMath: division by zero'
                            if not (maxPercentSell * arg3 / 100000) - (maxPercentSell / 1000 * arg3 / 100000):
                                revert with 0, 'SafeMath: division by zero'
                            _3646 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3646] = 30
                            mem[_3646 + 32] = 'SafeMath: subtraction overflow'
                            if 10^18 > 10^18 * 10^18 * s / 10^18 / maxPercentSell / 1000 * arg3 / 100000:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not (10^18 * 10^18 * s / 10^18 / maxPercentSell / 1000 * arg3 / 100000) - 10^18:
                                if not (10^18 * 10^18 * 10^18 * s / 10^18 / maxPercentSell / 1000 * arg3 / 100000) - (10^18 * 0 / maxPercentSell * arg3 / 100000) / (maxPercentSell * arg3 / 100000) - (maxPercentSell / 1000 * arg3 / 100000):
                                    revert with 0, 'SafeMath: division by zero'
                                if 0 / (10^18 * 10^18 * 10^18 * s / 10^18 / maxPercentSell / 1000 * arg3 / 100000) - (10^18 * 0 / maxPercentSell * arg3 / 100000) / (maxPercentSell * arg3 / 100000) - (maxPercentSell / 1000 * arg3 / 100000) / 2 <= maxPercentSell * arg3 / 100000:
                                    return (0 / (10^18 * 10^18 * 10^18 * s / 10^18 / maxPercentSell / 1000 * arg3 / 100000) - (10^18 * 0 / maxPercentSell * arg3 / 100000) / (maxPercentSell * arg3 / 100000) - (maxPercentSell / 1000 * arg3 / 100000) / 2)
                            else:
                                if (10^18 * 10^18 * 10^18 * s / 10^18 / maxPercentSell / 1000 * arg3 / 100000) - 1000000000000000000 * 10^18 / (10^18 * 10^18 * s / 10^18 / maxPercentSell / 1000 * arg3 / 100000) - 10^18 != 10^18:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                if not (10^18 * 10^18 * 10^18 * s / 10^18 / maxPercentSell / 1000 * arg3 / 100000) - (10^18 * 0 / maxPercentSell * arg3 / 100000) / (maxPercentSell * arg3 / 100000) - (maxPercentSell / 1000 * arg3 / 100000):
                                    revert with 0, 'SafeMath: division by zero'
                                if (10^18 * 10^18 * 10^18 * s / 10^18 / maxPercentSell / 1000 * arg3 / 100000) - 1000000000000000000 * 10^18 / (10^18 * 10^18 * 10^18 * s / 10^18 / maxPercentSell / 1000 * arg3 / 100000) - (10^18 * 0 / maxPercentSell * arg3 / 100000) / (maxPercentSell * arg3 / 100000) - (maxPercentSell / 1000 * arg3 / 100000) / 2 <= maxPercentSell * arg3 / 100000:
                                    return ((10^18 * 10^18 * 10^18 * s / 10^18 / maxPercentSell / 1000 * arg3 / 100000) - 1000000000000000000 * 10^18 / (10^18 * 10^18 * 10^18 * s / 10^18 / maxPercentSell / 1000 * arg3 / 100000) - (10^18 * 0 / maxPercentSell * arg3 / 100000) / (maxPercentSell * arg3 / 100000) - (maxPercentSell / 1000 * arg3 / 100000) / 2)
                else:
                    if 10^18 * 10^18 * t / 10^18 / 10^18 * t / 10^18 != 10^18:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _3120 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3120] = 26
                    mem[_3120 + 32] = 'SafeMath: division by zero'
                    if not maxPercentSell * arg3 / 100000:
                        revert with 0, 'SafeMath: division by zero'
                    if 10^18 * 10^18 * t / 10^18 / maxPercentSell * arg3 / 100000 < 10^18 * 10^18 * s / 10^18 / maxPercentSell / 1000 * arg3 / 100000:
                        _3276 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3276] = 30
                        mem[_3276 + 32] = 'SafeMath: subtraction overflow'
                        if maxPercentSell / 1000 * arg3 / 100000 > maxPercentSell * arg3 / 100000:
                            revert with 0, 'SafeMath: subtraction overflow'
                        _3357 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3357] = 30
                        mem[_3357 + 32] = 'SafeMath: subtraction overflow'
                        if 10^18 * 10^18 * t / 10^18 / maxPercentSell * arg3 / 100000 > 10^18 * 10^18 * s / 10^18 / maxPercentSell / 1000 * arg3 / 100000:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not (10^18 * 10^18 * s / 10^18 / maxPercentSell / 1000 * arg3 / 100000) - (10^18 * 10^18 * t / 10^18 / maxPercentSell * arg3 / 100000):
                            _3513 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3513] = 26
                            mem[_3513 + 32] = 'SafeMath: division by zero'
                            if not (maxPercentSell * arg3 / 100000) - (maxPercentSell / 1000 * arg3 / 100000):
                                revert with 0, 'SafeMath: division by zero'
                            _3644 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3644] = 30
                            mem[_3644 + 32] = 'SafeMath: subtraction overflow'
                            if 10^18 > 10^18 * 10^18 * s / 10^18 / maxPercentSell / 1000 * arg3 / 100000:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not (10^18 * 10^18 * s / 10^18 / maxPercentSell / 1000 * arg3 / 100000) - 10^18:
                                if not 0 / (maxPercentSell * arg3 / 100000) - (maxPercentSell / 1000 * arg3 / 100000):
                                    revert with 0, 'SafeMath: division by zero'
                                if 0 / 0 / (maxPercentSell * arg3 / 100000) - (maxPercentSell / 1000 * arg3 / 100000) / 2 <= maxPercentSell * arg3 / 100000:
                                    return (0 / 0 / (maxPercentSell * arg3 / 100000) - (maxPercentSell / 1000 * arg3 / 100000) / 2)
                            else:
                                if (10^18 * 10^18 * 10^18 * s / 10^18 / maxPercentSell / 1000 * arg3 / 100000) - 1000000000000000000 * 10^18 / (10^18 * 10^18 * s / 10^18 / maxPercentSell / 1000 * arg3 / 100000) - 10^18 != 10^18:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                if not 0 / (maxPercentSell * arg3 / 100000) - (maxPercentSell / 1000 * arg3 / 100000):
                                    revert with 0, 'SafeMath: division by zero'
                                if (10^18 * 10^18 * 10^18 * s / 10^18 / maxPercentSell / 1000 * arg3 / 100000) - 1000000000000000000 * 10^18 / 0 / (maxPercentSell * arg3 / 100000) - (maxPercentSell / 1000 * arg3 / 100000) / 2 <= maxPercentSell * arg3 / 100000:
                                    return ((10^18 * 10^18 * 10^18 * s / 10^18 / maxPercentSell / 1000 * arg3 / 100000) - 1000000000000000000 * 10^18 / 0 / (maxPercentSell * arg3 / 100000) - (maxPercentSell / 1000 * arg3 / 100000) / 2)
                        else:
                            if (10^18 * 10^18 * 10^18 * s / 10^18 / maxPercentSell / 1000 * arg3 / 100000) - (10^18 * 10^18 * 10^18 * t / 10^18 / maxPercentSell * arg3 / 100000) / (10^18 * 10^18 * s / 10^18 / maxPercentSell / 1000 * arg3 / 100000) - (10^18 * 10^18 * t / 10^18 / maxPercentSell * arg3 / 100000) != 10^18:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _3528 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3528] = 26
                            mem[_3528 + 32] = 'SafeMath: division by zero'
                            if not (maxPercentSell * arg3 / 100000) - (maxPercentSell / 1000 * arg3 / 100000):
                                revert with 0, 'SafeMath: division by zero'
                            _3669 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3669] = 30
                            mem[_3669 + 32] = 'SafeMath: subtraction overflow'
                            if 10^18 > 10^18 * 10^18 * s / 10^18 / maxPercentSell / 1000 * arg3 / 100000:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not (10^18 * 10^18 * s / 10^18 / maxPercentSell / 1000 * arg3 / 100000) - 10^18:
                                if not (10^18 * 10^18 * 10^18 * s / 10^18 / maxPercentSell / 1000 * arg3 / 100000) - (10^18 * 10^18 * 10^18 * t / 10^18 / maxPercentSell * arg3 / 100000) / (maxPercentSell * arg3 / 100000) - (maxPercentSell / 1000 * arg3 / 100000):
                                    revert with 0, 'SafeMath: division by zero'
                                if 0 / (10^18 * 10^18 * 10^18 * s / 10^18 / maxPercentSell / 1000 * arg3 / 100000) - (10^18 * 10^18 * 10^18 * t / 10^18 / maxPercentSell * arg3 / 100000) / (maxPercentSell * arg3 / 100000) - (maxPercentSell / 1000 * arg3 / 100000) / 2 <= maxPercentSell * arg3 / 100000:
                                    return (0 / (10^18 * 10^18 * 10^18 * s / 10^18 / maxPercentSell / 1000 * arg3 / 100000) - (10^18 * 10^18 * 10^18 * t / 10^18 / maxPercentSell * arg3 / 100000) / (maxPercentSell * arg3 / 100000) - (maxPercentSell / 1000 * arg3 / 100000) / 2)
                            else:
                                if (10^18 * 10^18 * 10^18 * s / 10^18 / maxPercentSell / 1000 * arg3 / 100000) - 1000000000000000000 * 10^18 / (10^18 * 10^18 * s / 10^18 / maxPercentSell / 1000 * arg3 / 100000) - 10^18 != 10^18:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                if not (10^18 * 10^18 * 10^18 * s / 10^18 / maxPercentSell / 1000 * arg3 / 100000) - (10^18 * 10^18 * 10^18 * t / 10^18 / maxPercentSell * arg3 / 100000) / (maxPercentSell * arg3 / 100000) - (maxPercentSell / 1000 * arg3 / 100000):
                                    revert with 0, 'SafeMath: division by zero'
                                if (10^18 * 10^18 * 10^18 * s / 10^18 / maxPercentSell / 1000 * arg3 / 100000) - 1000000000000000000 * 10^18 / (10^18 * 10^18 * 10^18 * s / 10^18 / maxPercentSell / 1000 * arg3 / 100000) - (10^18 * 10^18 * 10^18 * t / 10^18 / maxPercentSell * arg3 / 100000) / (maxPercentSell * arg3 / 100000) - (maxPercentSell / 1000 * arg3 / 100000) / 2 <= maxPercentSell * arg3 / 100000:
                                    return ((10^18 * 10^18 * 10^18 * s / 10^18 / maxPercentSell / 1000 * arg3 / 100000) - 1000000000000000000 * 10^18 / (10^18 * 10^18 * 10^18 * s / 10^18 / maxPercentSell / 1000 * arg3 / 100000) - (10^18 * 10^18 * 10^18 * t / 10^18 / maxPercentSell * arg3 / 100000) / (maxPercentSell * arg3 / 100000) - (maxPercentSell / 1000 * arg3 / 100000) / 2)
    return (maxPercentSell * arg3 / 100000)
}



}
