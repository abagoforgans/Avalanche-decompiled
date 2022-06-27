contract main {




// =====================  Runtime code  =====================


address owner;
array of address routers;
array of address baseTokens;
address wethAddress;

function baseTokens(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < baseTokens.length
    return baseTokens[arg1]
}

function weth() {
    return wethAddress
}

function routers(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < routers.length
    return routers[arg1]
}

function owner() {
    return owner
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function addRouter(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    routers.length++
    routers[routers.length] = arg1
}

function addBaseToken(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    baseTokens.length++
    baseTokens[baseTokens.length] = arg1
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

function sub_72882732(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if routers.length < 1:
        revert with 'NH{q', 17
    if routers.length - 1 >= routers.length:
        revert with 'NH{q', 50
    if arg1 >= routers.length:
        revert with 'NH{q', 50
    routers[arg1] = routers[routers.length]
    if not routers.length:
        revert with 'NH{q', 49
    routers[routers.length] = 0
    routers.length--
}

function sub_1a74baa7(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if baseTokens.length < 1:
        revert with 'NH{q', 17
    if baseTokens.length - 1 >= baseTokens.length:
        revert with 'NH{q', 50
    if arg1 >= baseTokens.length:
        revert with 'NH{q', 50
    baseTokens[arg1] = baseTokens[baseTokens.length]
    if not baseTokens.length:
        revert with 'NH{q', 49
    baseTokens[baseTokens.length] = 0
    baseTokens.length--
}

function uniswapV2Call(address arg1, uint256 arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg4.length)) + 97 > test266151307() or ceil32(ceil32(arg4.length)) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = arg4.length
    require arg4 + arg4.length + 36 <= calldata.size
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    if arg1 != this.address:
        revert with 0, 'Not from this contract'
    require arg4.length >= 32
    if not bool(ceil32(ceil32(arg4.length)) + 129 <= test266151307()):
        revert with 'NH{q', 65
    require mem[128] == mem[140 len 20]
    mem[ceil32(ceil32(arg4.length)) + 97] = mem[128]
    require ext_code.size(mem[ceil32(ceil32(arg4.length)) + 109 len 20])
    staticcall mem[ceil32(ceil32(arg4.length)) + 109 len 20].0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[ceil32(ceil32(arg4.length)) + 129] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if arg2 > 0:
        if ext_call.return_data[0] != arg2:
            revert with 0, 'arbtool: not_valid_token'
        mem[ceil32(ceil32(arg4.length)) + ceil32(return_data.size) + 129] = 68
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if ext_code.size(mem[ceil32(ceil32(arg4.length)) + 109 len 20]) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(ceil32(arg4.length)) + ceil32(return_data.size) + 293 len 96] = unknown_0xa9059cbb(?????), msg.sender, arg2, 0
        call mem[ceil32(ceil32(arg4.length)) + 109 len 20] with:
           funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, arg2, 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, arg2, 0) << 288)
    else:
        if ext_call.return_data[0] != arg3:
            revert with 0, 'arbtool: not_valid_token'
        mem[ceil32(ceil32(arg4.length)) + ceil32(return_data.size) + 129] = 68
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if ext_code.size(mem[ceil32(ceil32(arg4.length)) + 109 len 20]) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(ceil32(arg4.length)) + ceil32(return_data.size) + 293 len 96] = unknown_0xa9059cbb(?????), msg.sender, arg3, 0
        call mem[ceil32(ceil32(arg4.length)) + 109 len 20] with:
           funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, arg3, 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, arg3, 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if arg4.length > 0:
                revert with arg4[all]
            revert with 0, 'SafeERC20: low-level call failed'
        if arg4.length > 0:
            require arg4.length >= 32
            require mem[128] == bool(mem[128])
            if not mem[128]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[ceil32(ceil32(arg4.length)) + ceil32(return_data.size) + 325 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            require mem[ceil32(ceil32(arg4.length)) + ceil32(return_data.size) + 325] == bool(mem[ceil32(ceil32(arg4.length)) + ceil32(return_data.size) + 325])
            if not mem[ceil32(ceil32(arg4.length)) + ceil32(return_data.size) + 325]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
}

function _fallback() {
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
    mem[96] = arg4.length
    require arg4 + arg4.length + 36 <= calldata.size
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    if address(arg1) != this.address:
        revert with 0, 'Not from this contract'
    require arg4.length >= 32
    if not bool(ceil32(ceil32(arg4.length)) + 129 <= test266151307()):
        revert with 'NH{q', 65
    require mem[128] == mem[140 len 20]
    mem[ceil32(ceil32(arg4.length)) + 97] = mem[128]
    require ext_code.size(mem[ceil32(ceil32(arg4.length)) + 109 len 20])
    staticcall mem[ceil32(ceil32(arg4.length)) + 109 len 20].0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[ceil32(ceil32(arg4.length)) + 129] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if arg2 > 0:
        if ext_call.return_data[0] != arg2:
            revert with 0, 'arbtool: not_valid_token'
        mem[ceil32(ceil32(arg4.length)) + ceil32(return_data.size) + 129] = 68
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if ext_code.size(mem[ceil32(ceil32(arg4.length)) + 109 len 20]) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(ceil32(arg4.length)) + ceil32(return_data.size) + 293 len 96] = unknown_0xa9059cbb(?????), msg.sender, arg2, 0
        call mem[ceil32(ceil32(arg4.length)) + 109 len 20] with:
           funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, arg2, 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, arg2, 0) << 288)
    else:
        if ext_call.return_data[0] != arg3:
            revert with 0, 'arbtool: not_valid_token'
        mem[ceil32(ceil32(arg4.length)) + ceil32(return_data.size) + 129] = 68
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if ext_code.size(mem[ceil32(ceil32(arg4.length)) + 109 len 20]) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(ceil32(arg4.length)) + ceil32(return_data.size) + 293 len 96] = unknown_0xa9059cbb(?????), msg.sender, arg3, 0
        call mem[ceil32(ceil32(arg4.length)) + 109 len 20] with:
           funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, arg3, 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, arg3, 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if arg4.length > 0:
                revert with arg4[all]
            revert with 0, 'SafeERC20: low-level call failed'
        if arg4.length > 0:
            require arg4.length >= 32
            require mem[128] == bool(mem[128])
            if not mem[128]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[ceil32(ceil32(arg4.length)) + ceil32(return_data.size) + 325 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            require mem[ceil32(ceil32(arg4.length)) + ceil32(return_data.size) + 325] == bool(mem[ceil32(ceil32(arg4.length)) + ceil32(return_data.size) + 325])
            if not mem[ceil32(ceil32(arg4.length)) + ceil32(return_data.size) + 325]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    return arg4[all]
}

function sub_56706db2(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg3 == arg3
    if arg3 < arg2:
        revert with 'NH{q', 17
    if arg3 - arg2 > test266151307():
        revert with 'NH{q', 65
    mem[96] = arg3 - arg2
    if not arg3 - arg2:
        require ext_code.size(address(arg1))
        staticcall address(arg1).factory() with:
                gas gas_remaining wei
        mem[(32 * arg3 - arg2) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * arg3 - arg2) + ceil32(return_data.size) + 128
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        idx = arg2
        s = 0
        while idx < arg3:
            mem[mem[64] + 4] = idx
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x1e3dd18b with:
                    gas gas_remaining wei
                   args idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _135 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _138 = mem[_135]
            require mem[_135] == mem[_135 + 12 len 20]
            _145 = mem[64]
            mem[64] = mem[64] + 192
            mem[_145 + 32] = 96
            mem[_145 + 64] = 0
            mem[_145 + 96] = 0
            mem[_145 + 128] = 0
            mem[_145 + 160] = 0
            mem[_145] = address(_138)
            mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
            require ext_code.size(address(_138))
            staticcall address(_138).0x95d89b41 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _149 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _151 = mem[_149]
            require mem[_149] <= test266151307()
            require _149 + mem[_149] + 31 < _149 + return_data.size
            _154 = mem[_149 + mem[_149]]
            if mem[_149 + mem[_149]] > test266151307():
                revert with 'NH{q', 65
            if _149 + ceil32(return_data.size) + ceil32(ceil32(mem[_149 + mem[_149]])) + 1 > test266151307() or ceil32(ceil32(mem[_149 + mem[_149]])) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _149 + ceil32(return_data.size) + ceil32(ceil32(mem[_149 + mem[_149]])) + 1
            mem[_149 + ceil32(return_data.size)] = _154
            require _151 + _154 + 32 <= return_data.size
            t = 0
            while t < _154:
                mem[_149 + ceil32(return_data.size) + t + 32] = mem[_149 + _151 + t + 32]
                t = t + 32
                continue 
            if ceil32(_154) <= _154:
                mem[_145 + 32] = _149 + ceil32(return_data.size)
                require ext_code.size(address(_138))
                staticcall address(_138).token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _260 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_260] == mem[_260 + 12 len 20]
                mem[_145 + 64] = mem[_260 + 12 len 20]
                require ext_code.size(address(_138))
                staticcall address(_138).token1() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _275 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_275] == mem[_275 + 12 len 20]
                mem[_145 + 96] = mem[_275 + 12 len 20]
                require ext_code.size(address(_138))
                staticcall address(_138).getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _295 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _300 = mem[_295]
                require mem[_295] == mem[_295 + 18 len 14]
                require mem[_295 + 32] == mem[_295 + 50 len 14]
                require mem[_295 + 64] == mem[_295 + 92 len 4]
                mem[_145 + 160] = mem[_295 + 50 len 14]
                mem[_145 + 128] = Mask(112, 0, _300)
            else:
                mem[_149 + ceil32(return_data.size) + _154 + 32] = 0
                mem[_145 + 32] = _149 + ceil32(return_data.size)
                require ext_code.size(address(_138))
                staticcall address(_138).token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _263 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_263] == mem[_263 + 12 len 20]
                mem[_145 + 64] = mem[_263 + 12 len 20]
                require ext_code.size(address(_138))
                staticcall address(_138).token1() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _277 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_277] == mem[_277 + 12 len 20]
                mem[_145 + 96] = mem[_277 + 12 len 20]
                require ext_code.size(address(_138))
                staticcall address(_138).getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _296 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _301 = mem[_296]
                require mem[_296] == mem[_296 + 18 len 14]
                require mem[_296 + 32] == mem[_296 + 50 len 14]
                require mem[_296 + 64] == mem[_296 + 92 len 4]
                mem[_145 + 160] = mem[_296 + 50 len 14]
                mem[_145 + 128] = Mask(112, 0, _301)
            if s >= mem[96]:
                revert with 'NH{q', 50
            mem[(32 * s) + 128] = _145
            if s == -1:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + 1
            continue 
        _129 = mem[64]
        mem[mem[64]] = 32
        _132 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + (32 * mem[96]) + 64
        u = mem[64] + 64
        while idx < _132:
            mem[u] = t + -_129 - 64
            _249 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            _262 = mem[_249 + 32]
            mem[t + 32] = 192
            _264 = mem[_262]
            mem[t + 192] = mem[_262]
            v = 0
            while v < _264:
                mem[t + v + 224] = mem[_262 + v + 32]
                v = v + 32
                continue 
            if ceil32(_264) > _264:
                mem[t + _264 + 224] = 0
            mem[t + 64] = mem[_249 + 76 len 20]
            mem[t + 96] = mem[_249 + 108 len 20]
            mem[t + 128] = mem[_249 + 128]
            mem[t + 160] = mem[_249 + 160]
            idx = idx + 1
            s = s + 32
            t = t + ceil32(_264) + 224
            u = u + 32
            continue 
    else:
        mem[64] = (32 * arg3 - arg2) + 320
        mem[(32 * arg3 - arg2) + 128] = 0
        mem[(32 * arg3 - arg2) + 160] = 96
        mem[(32 * arg3 - arg2) + 192] = 0
        mem[(32 * arg3 - arg2) + 224] = 0
        mem[(32 * arg3 - arg2) + 256] = 0
        mem[(32 * arg3 - arg2) + 288] = 0
        mem[var42001] = (32 * arg3 - arg2) + 128
        s = var42001
        idx = var42002
        while idx - 1:
            mem[64] = mem[64] + 192
            mem[(32 * arg3 - arg2) + 128] = 0
            mem[(32 * arg3 - arg2) + 160] = 96
            mem[(32 * arg3 - arg2) + 192] = 0
            mem[(32 * arg3 - arg2) + 224] = 0
            mem[(32 * arg3 - arg2) + 256] = 0
            mem[(32 * arg3 - arg2) + 288] = 0
            mem[s + 32] = (32 * arg3 - arg2) + 128
            s = s + 32
            idx = idx - 1
            continue 
        require ext_code.size(address(arg1))
        staticcall address(arg1).factory() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _255 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _261 = mem[_255]
        require mem[_255] == mem[_255 + 12 len 20]
        idx = arg2
        s = 0
        while idx < arg3:
            mem[mem[64] + 4] = idx
            require ext_code.size(address(_261))
            staticcall address(_261).0x1e3dd18b with:
                    gas gas_remaining wei
                   args idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _363 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _366 = mem[_363]
            require mem[_363] == mem[_363 + 12 len 20]
            _375 = mem[64]
            mem[64] = mem[64] + 192
            mem[_375 + 32] = 96
            mem[_375 + 64] = 0
            mem[_375 + 96] = 0
            mem[_375 + 128] = 0
            mem[_375 + 160] = 0
            mem[_375] = address(_366)
            mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
            require ext_code.size(address(_366))
            staticcall address(_366).0x95d89b41 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _379 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _380 = mem[_379]
            require mem[_379] <= test266151307()
            require _379 + mem[_379] + 31 < _379 + return_data.size
            _382 = mem[_379 + mem[_379]]
            if mem[_379 + mem[_379]] > test266151307():
                revert with 'NH{q', 65
            if _379 + ceil32(return_data.size) + ceil32(ceil32(mem[_379 + mem[_379]])) + 1 > test266151307() or ceil32(ceil32(mem[_379 + mem[_379]])) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _379 + ceil32(return_data.size) + ceil32(ceil32(mem[_379 + mem[_379]])) + 1
            mem[_379 + ceil32(return_data.size)] = _382
            require _380 + _382 + 32 <= return_data.size
            t = 0
            while t < _382:
                mem[_379 + ceil32(return_data.size) + t + 32] = mem[_379 + _380 + t + 32]
                t = t + 32
                continue 
            if ceil32(_382) <= _382:
                mem[_375 + 32] = _379 + ceil32(return_data.size)
                require ext_code.size(address(_366))
                staticcall address(_366).token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _431 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_431] == mem[_431 + 12 len 20]
                mem[_375 + 64] = mem[_431 + 12 len 20]
                require ext_code.size(address(_366))
                staticcall address(_366).token1() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _443 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_443] == mem[_443 + 12 len 20]
                mem[_375 + 96] = mem[_443 + 12 len 20]
                require ext_code.size(address(_366))
                staticcall address(_366).getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _456 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _460 = mem[_456]
                require mem[_456] == mem[_456 + 18 len 14]
                require mem[_456 + 32] == mem[_456 + 50 len 14]
                require mem[_456 + 64] == mem[_456 + 92 len 4]
                mem[_375 + 160] = mem[_456 + 50 len 14]
                mem[_375 + 128] = Mask(112, 0, _460)
            else:
                mem[_379 + ceil32(return_data.size) + _382 + 32] = 0
                mem[_375 + 32] = _379 + ceil32(return_data.size)
                require ext_code.size(address(_366))
                staticcall address(_366).token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _433 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_433] == mem[_433 + 12 len 20]
                mem[_375 + 64] = mem[_433 + 12 len 20]
                require ext_code.size(address(_366))
                staticcall address(_366).token1() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _445 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_445] == mem[_445 + 12 len 20]
                mem[_375 + 96] = mem[_445 + 12 len 20]
                require ext_code.size(address(_366))
                staticcall address(_366).getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _457 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _461 = mem[_457]
                require mem[_457] == mem[_457 + 18 len 14]
                require mem[_457 + 32] == mem[_457 + 50 len 14]
                require mem[_457 + 64] == mem[_457 + 92 len 4]
                mem[_375 + 160] = mem[_457 + 50 len 14]
                mem[_375 + 128] = Mask(112, 0, _461)
            if s >= mem[96]:
                revert with 'NH{q', 50
            mem[(32 * s) + 128] = _375
            if s == -1:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + 1
            continue 
        _358 = mem[64]
        mem[mem[64]] = 32
        _359 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + (32 * mem[96]) + 64
        u = mem[64] + 64
        while idx < _359:
            mem[u] = t + -_358 - 64
            _423 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            _432 = mem[_423 + 32]
            mem[t + 32] = 192
            _434 = mem[_432]
            mem[t + 192] = mem[_432]
            v = 0
            while v < _434:
                mem[t + v + 224] = mem[_432 + v + 32]
                v = v + 32
                continue 
            if ceil32(_434) > _434:
                mem[t + _434 + 224] = 0
            mem[t + 64] = mem[_423 + 76 len 20]
            mem[t + 96] = mem[_423 + 108 len 20]
            mem[t + 128] = mem[_423 + 128]
            mem[t + 160] = mem[_423 + 160]
            idx = idx + 1
            s = s + 32
            t = t + ceil32(_434) + 224
            u = u + 32
            continue 
    return memory
      from mem[64]
       len t - mem[64]
}

function validToken(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(arg1)
    staticcall arg1.0x313ce567 with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if ext_call.return_data[31 len 1] != 18:
        revert with 0, 'arbtool: not_valid_token'
    idx = 0
    while idx < baseTokens.length:
        mem[0] = 2
        if routers.length > test266151307():
            revert with 'NH{q', 65
        _202 = mem[64]
        mem[mem[64]] = routers.length
        mem[64] = mem[64] + (32 * routers.length) + 32
        if not routers.length:
            s = 0
            while s < routers.length:
                mem[0] = 1
                require ext_code.size(routers[s])
                staticcall routers[s].factory() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _401 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _403 = mem[_401]
                require mem[_401] == mem[_401 + 12 len 20]
                mem[mem[64] + 4] = baseTokens[idx]
                mem[mem[64] + 36] = arg1
                require ext_code.size(address(_403))
                staticcall address(_403).getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args baseTokens[idx], arg1
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _409 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _411 = mem[_409]
                require mem[_409] == mem[_409 + 12 len 20]
                if mem[_409 + 12 len 20]:
                    if s >= mem[_202]:
                        revert with 'NH{q', 50
                    mem[(32 * s) + _202 + 32] = mem[_409 + 12 len 20]
                    require ext_code.size(address(_411))
                    staticcall address(_411).getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _419 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _421 = mem[_419]
                    require mem[_419] == mem[_419 + 18 len 14]
                    _423 = mem[_419 + 32]
                    require mem[_419 + 32] == mem[_419 + 50 len 14]
                    require mem[_419 + 64] == mem[_419 + 92 len 4]
                    if baseTokens[idx] < arg1:
                        if baseTokens[idx] != wethAddress:
                            if mem[_419 + 18 len 14] <= 100 * 10^18:
                                revert with 0, 'arbtool: not_valid_token'
                            if baseTokens[idx] < arg1:
                                _443 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_443] = arg1
                                _459 = mem[64]
                                mem[mem[64] + 32] = arg1
                                _491 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_459 + 64] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_459 + 68] = 0
                                mem[_459 + 100] = Mask(112, 0, _423) / 10
                                mem[_459 + 132] = this.address
                                mem[_459 + 164] = 128
                                _523 = mem[_491]
                                mem[_459 + 196] = mem[_491]
                                idx = 0
                                while idx < _523:
                                    mem[_459 + idx + 228] = mem[_491 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                if ceil32(_523) > _523:
                                    mem[_459 + _523 + 228] = 0
                                require ext_code.size(address(_411))
                                call address(_411).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, Mask(112, 0, _423) / 10, address(this.address), 128, mem[_459 + 196 len ceil32(_523) + 32]
                            else:
                                _444 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_444] = arg1
                                _460 = mem[64]
                                mem[mem[64] + 32] = arg1
                                _493 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_460 + 64] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_460 + 68] = Mask(112, 0, _421) / 10
                                mem[_460 + 100] = 0
                                mem[_460 + 132] = this.address
                                mem[_460 + 164] = 128
                                _524 = mem[_493]
                                mem[_460 + 196] = mem[_493]
                                idx = 0
                                while idx < _524:
                                    mem[_460 + idx + 228] = mem[_493 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                if ceil32(_524) > _524:
                                    mem[_460 + _524 + 228] = 0
                                require ext_code.size(address(_411))
                                call address(_411).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args Mask(112, 0, _421) / 10, 0, address(this.address), 128, mem[_460 + 196 len ceil32(_524) + 32]
                        else:
                            if mem[_419 + 18 len 14] <= 10^18:
                                revert with 0, 'arbtool: not_valid_token'
                            if baseTokens[idx] < arg1:
                                _445 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_445] = arg1
                                _461 = mem[64]
                                mem[mem[64] + 32] = arg1
                                _495 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_461 + 64] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_461 + 68] = 0
                                mem[_461 + 100] = Mask(112, 0, _423) / 10
                                mem[_461 + 132] = this.address
                                mem[_461 + 164] = 128
                                _525 = mem[_495]
                                mem[_461 + 196] = mem[_495]
                                idx = 0
                                while idx < _525:
                                    mem[_461 + idx + 228] = mem[_495 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                if ceil32(_525) > _525:
                                    mem[_461 + _525 + 228] = 0
                                require ext_code.size(address(_411))
                                call address(_411).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, Mask(112, 0, _423) / 10, address(this.address), 128, mem[_461 + 196 len ceil32(_525) + 32]
                            else:
                                _446 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_446] = arg1
                                _462 = mem[64]
                                mem[mem[64] + 32] = arg1
                                _497 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_462 + 64] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_462 + 68] = Mask(112, 0, _421) / 10
                                mem[_462 + 100] = 0
                                mem[_462 + 132] = this.address
                                mem[_462 + 164] = 128
                                _526 = mem[_497]
                                mem[_462 + 196] = mem[_497]
                                idx = 0
                                while idx < _526:
                                    mem[_462 + idx + 228] = mem[_497 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                if ceil32(_526) > _526:
                                    mem[_462 + _526 + 228] = 0
                                require ext_code.size(address(_411))
                                call address(_411).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args Mask(112, 0, _421) / 10, 0, address(this.address), 128, mem[_462 + 196 len ceil32(_526) + 32]
                    else:
                        if baseTokens[idx] != wethAddress:
                            if mem[_419 + 50 len 14] <= 100 * 10^18:
                                revert with 0, 'arbtool: not_valid_token'
                            if baseTokens[idx] < arg1:
                                _447 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_447] = arg1
                                _463 = mem[64]
                                mem[mem[64] + 32] = arg1
                                _499 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_463 + 64] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_463 + 68] = 0
                                mem[_463 + 100] = Mask(112, 0, _423) / 10
                                mem[_463 + 132] = this.address
                                mem[_463 + 164] = 128
                                _527 = mem[_499]
                                mem[_463 + 196] = mem[_499]
                                idx = 0
                                while idx < _527:
                                    mem[_463 + idx + 228] = mem[_499 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                if ceil32(_527) > _527:
                                    mem[_463 + _527 + 228] = 0
                                require ext_code.size(address(_411))
                                call address(_411).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, Mask(112, 0, _423) / 10, address(this.address), 128, mem[_463 + 196 len ceil32(_527) + 32]
                            else:
                                _448 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_448] = arg1
                                _464 = mem[64]
                                mem[mem[64] + 32] = arg1
                                _501 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_464 + 64] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_464 + 68] = Mask(112, 0, _421) / 10
                                mem[_464 + 100] = 0
                                mem[_464 + 132] = this.address
                                mem[_464 + 164] = 128
                                _528 = mem[_501]
                                mem[_464 + 196] = mem[_501]
                                idx = 0
                                while idx < _528:
                                    mem[_464 + idx + 228] = mem[_501 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                if ceil32(_528) > _528:
                                    mem[_464 + _528 + 228] = 0
                                require ext_code.size(address(_411))
                                call address(_411).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args Mask(112, 0, _421) / 10, 0, address(this.address), 128, mem[_464 + 196 len ceil32(_528) + 32]
                        else:
                            if mem[_419 + 50 len 14] <= 10^18:
                                revert with 0, 'arbtool: not_valid_token'
                            if baseTokens[idx] < arg1:
                                _449 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_449] = arg1
                                _465 = mem[64]
                                mem[mem[64] + 32] = arg1
                                _503 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_465 + 64] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_465 + 68] = 0
                                mem[_465 + 100] = Mask(112, 0, _423) / 10
                                mem[_465 + 132] = this.address
                                mem[_465 + 164] = 128
                                _529 = mem[_503]
                                mem[_465 + 196] = mem[_503]
                                idx = 0
                                while idx < _529:
                                    mem[_465 + idx + 228] = mem[_503 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                if ceil32(_529) > _529:
                                    mem[_465 + _529 + 228] = 0
                                require ext_code.size(address(_411))
                                call address(_411).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, Mask(112, 0, _423) / 10, address(this.address), 128, mem[_465 + 196 len ceil32(_529) + 32]
                            else:
                                _450 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_450] = arg1
                                _466 = mem[64]
                                mem[mem[64] + 32] = arg1
                                _505 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_466 + 64] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_466 + 68] = Mask(112, 0, _421) / 10
                                mem[_466 + 100] = 0
                                mem[_466 + 132] = this.address
                                mem[_466 + 164] = 128
                                _530 = mem[_505]
                                mem[_466 + 196] = mem[_505]
                                idx = 0
                                while idx < _530:
                                    mem[_466 + idx + 228] = mem[_505 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                if ceil32(_530) > _530:
                                    mem[_466 + _530 + 228] = 0
                                require ext_code.size(address(_411))
                                call address(_411).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args Mask(112, 0, _421) / 10, 0, address(this.address), 128, mem[_466 + 196 len ceil32(_530) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                if s == -1:
                    revert with 'NH{q', 17
                s = s + 1
                continue 
        else:
            mem[_202 + 32 len 32 * routers.length] = call.data[calldata.size len 32 * routers.length]
            s = 0
            while s < routers.length:
                mem[0] = 1
                require ext_code.size(routers[s])
                staticcall routers[s].factory() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _402 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _404 = mem[_402]
                require mem[_402] == mem[_402 + 12 len 20]
                mem[mem[64] + 4] = baseTokens[idx]
                mem[mem[64] + 36] = arg1
                require ext_code.size(address(_404))
                staticcall address(_404).getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args baseTokens[idx], arg1
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _410 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _412 = mem[_410]
                require mem[_410] == mem[_410 + 12 len 20]
                if mem[_410 + 12 len 20]:
                    if s >= mem[_202]:
                        revert with 'NH{q', 50
                    mem[(32 * s) + _202 + 32] = mem[_410 + 12 len 20]
                    require ext_code.size(address(_412))
                    staticcall address(_412).getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _420 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _422 = mem[_420]
                    require mem[_420] == mem[_420 + 18 len 14]
                    _424 = mem[_420 + 32]
                    require mem[_420 + 32] == mem[_420 + 50 len 14]
                    require mem[_420 + 64] == mem[_420 + 92 len 4]
                    if baseTokens[idx] < arg1:
                        if baseTokens[idx] != wethAddress:
                            if mem[_420 + 18 len 14] <= 100 * 10^18:
                                revert with 0, 'arbtool: not_valid_token'
                            if baseTokens[idx] < arg1:
                                _451 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_451] = arg1
                                _467 = mem[64]
                                mem[mem[64] + 32] = arg1
                                _507 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_467 + 64] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_467 + 68] = 0
                                mem[_467 + 100] = Mask(112, 0, _424) / 10
                                mem[_467 + 132] = this.address
                                mem[_467 + 164] = 128
                                _531 = mem[_507]
                                mem[_467 + 196] = mem[_507]
                                idx = 0
                                while idx < _531:
                                    mem[_467 + idx + 228] = mem[_507 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                if ceil32(_531) > _531:
                                    mem[_467 + _531 + 228] = 0
                                require ext_code.size(address(_412))
                                call address(_412).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, Mask(112, 0, _424) / 10, address(this.address), 128, mem[_467 + 196 len ceil32(_531) + 32]
                            else:
                                _452 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_452] = arg1
                                _468 = mem[64]
                                mem[mem[64] + 32] = arg1
                                _509 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_468 + 64] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_468 + 68] = Mask(112, 0, _422) / 10
                                mem[_468 + 100] = 0
                                mem[_468 + 132] = this.address
                                mem[_468 + 164] = 128
                                _532 = mem[_509]
                                mem[_468 + 196] = mem[_509]
                                idx = 0
                                while idx < _532:
                                    mem[_468 + idx + 228] = mem[_509 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                if ceil32(_532) > _532:
                                    mem[_468 + _532 + 228] = 0
                                require ext_code.size(address(_412))
                                call address(_412).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args Mask(112, 0, _422) / 10, 0, address(this.address), 128, mem[_468 + 196 len ceil32(_532) + 32]
                        else:
                            if mem[_420 + 18 len 14] <= 10^18:
                                revert with 0, 'arbtool: not_valid_token'
                            if baseTokens[idx] < arg1:
                                _453 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_453] = arg1
                                _469 = mem[64]
                                mem[mem[64] + 32] = arg1
                                _511 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_469 + 64] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_469 + 68] = 0
                                mem[_469 + 100] = Mask(112, 0, _424) / 10
                                mem[_469 + 132] = this.address
                                mem[_469 + 164] = 128
                                _533 = mem[_511]
                                mem[_469 + 196] = mem[_511]
                                idx = 0
                                while idx < _533:
                                    mem[_469 + idx + 228] = mem[_511 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                if ceil32(_533) > _533:
                                    mem[_469 + _533 + 228] = 0
                                require ext_code.size(address(_412))
                                call address(_412).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, Mask(112, 0, _424) / 10, address(this.address), 128, mem[_469 + 196 len ceil32(_533) + 32]
                            else:
                                _454 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_454] = arg1
                                _470 = mem[64]
                                mem[mem[64] + 32] = arg1
                                _513 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_470 + 64] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_470 + 68] = Mask(112, 0, _422) / 10
                                mem[_470 + 100] = 0
                                mem[_470 + 132] = this.address
                                mem[_470 + 164] = 128
                                _534 = mem[_513]
                                mem[_470 + 196] = mem[_513]
                                idx = 0
                                while idx < _534:
                                    mem[_470 + idx + 228] = mem[_513 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                if ceil32(_534) > _534:
                                    mem[_470 + _534 + 228] = 0
                                require ext_code.size(address(_412))
                                call address(_412).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args Mask(112, 0, _422) / 10, 0, address(this.address), 128, mem[_470 + 196 len ceil32(_534) + 32]
                    else:
                        if baseTokens[idx] != wethAddress:
                            if mem[_420 + 50 len 14] <= 100 * 10^18:
                                revert with 0, 'arbtool: not_valid_token'
                            if baseTokens[idx] < arg1:
                                _455 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_455] = arg1
                                _471 = mem[64]
                                mem[mem[64] + 32] = arg1
                                _515 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_471 + 64] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_471 + 68] = 0
                                mem[_471 + 100] = Mask(112, 0, _424) / 10
                                mem[_471 + 132] = this.address
                                mem[_471 + 164] = 128
                                _535 = mem[_515]
                                mem[_471 + 196] = mem[_515]
                                idx = 0
                                while idx < _535:
                                    mem[_471 + idx + 228] = mem[_515 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                if ceil32(_535) > _535:
                                    mem[_471 + _535 + 228] = 0
                                require ext_code.size(address(_412))
                                call address(_412).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, Mask(112, 0, _424) / 10, address(this.address), 128, mem[_471 + 196 len ceil32(_535) + 32]
                            else:
                                _456 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_456] = arg1
                                _472 = mem[64]
                                mem[mem[64] + 32] = arg1
                                _517 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_472 + 64] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_472 + 68] = Mask(112, 0, _422) / 10
                                mem[_472 + 100] = 0
                                mem[_472 + 132] = this.address
                                mem[_472 + 164] = 128
                                _536 = mem[_517]
                                mem[_472 + 196] = mem[_517]
                                idx = 0
                                while idx < _536:
                                    mem[_472 + idx + 228] = mem[_517 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                if ceil32(_536) > _536:
                                    mem[_472 + _536 + 228] = 0
                                require ext_code.size(address(_412))
                                call address(_412).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args Mask(112, 0, _422) / 10, 0, address(this.address), 128, mem[_472 + 196 len ceil32(_536) + 32]
                        else:
                            if mem[_420 + 50 len 14] <= 10^18:
                                revert with 0, 'arbtool: not_valid_token'
                            if baseTokens[idx] < arg1:
                                _457 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_457] = arg1
                                _473 = mem[64]
                                mem[mem[64] + 32] = arg1
                                _519 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_473 + 64] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_473 + 68] = 0
                                mem[_473 + 100] = Mask(112, 0, _424) / 10
                                mem[_473 + 132] = this.address
                                mem[_473 + 164] = 128
                                _537 = mem[_519]
                                mem[_473 + 196] = mem[_519]
                                idx = 0
                                while idx < _537:
                                    mem[_473 + idx + 228] = mem[_519 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                if ceil32(_537) > _537:
                                    mem[_473 + _537 + 228] = 0
                                require ext_code.size(address(_412))
                                call address(_412).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, Mask(112, 0, _424) / 10, address(this.address), 128, mem[_473 + 196 len ceil32(_537) + 32]
                            else:
                                _458 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_458] = arg1
                                _474 = mem[64]
                                mem[mem[64] + 32] = arg1
                                _521 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_474 + 64] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_474 + 68] = Mask(112, 0, _422) / 10
                                mem[_474 + 100] = 0
                                mem[_474 + 132] = this.address
                                mem[_474 + 164] = 128
                                _538 = mem[_521]
                                mem[_474 + 196] = mem[_521]
                                idx = 0
                                while idx < _538:
                                    mem[_474 + idx + 228] = mem[_521 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                if ceil32(_538) > _538:
                                    mem[_474 + _538 + 228] = 0
                                require ext_code.size(address(_412))
                                call address(_412).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args Mask(112, 0, _422) / 10, 0, address(this.address), 128, mem[_474 + 196 len ceil32(_538) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                if s == -1:
                    revert with 'NH{q', 17
                s = s + 1
                continue 
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_4c3a4847(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    idx = 0
    while idx < baseTokens.length:
        mem[0] = 2
        if baseTokens[idx] != address(arg1):
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        mem[96] = 0
        mem[64] = 128
        mem[128] = 32
        mem[160] = 0
        idx = 0
        s = 128
        t = (32 * mem[96]) + 192
        u = 192
        while idx < 0:
            mem[u] = t - 192
            _58 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_58 + 44 len 20]
            mem[t + 64] = mem[_58 + 76 len 20]
            _78 = mem[_58 + 96]
            mem[t + 96] = 256
            _80 = mem[_78]
            mem[t + 256] = mem[_78]
            v = 0
            while v < _80:
                mem[t + v + 288] = mem[_78 + v + 32]
                v = v + 32
                continue 
            if ceil32(_80) <= _80:
                mem[t + 128] = mem[_58 + 128]
                mem[t + 160] = mem[_58 + 172 len 20]
                _147 = mem[_58 + 192]
                mem[t + 192] = ceil32(_80) + 288
                _150 = mem[_147]
                mem[t + ceil32(_80) + 288] = mem[_147]
                v = 0
                while v < _150:
                    mem[t + ceil32(_80) + v + 320] = mem[_147 + v + 32]
                    v = v + 32
                    continue 
                if ceil32(_150) > _150:
                    mem[t + ceil32(_80) + _150 + 320] = 0
                mem[t + 224] = mem[_58 + 224]
                idx = idx + 1
                s = s + 32
                t = t + ceil32(_80) + ceil32(_150) + 320
                u = u + 32
                continue 
            mem[t + _80 + 288] = 0
            mem[t + 128] = mem[_58 + 128]
            mem[t + 160] = mem[_58 + 172 len 20]
            _149 = mem[_58 + 192]
            mem[t + 192] = ceil32(_80) + 288
            _151 = mem[_149]
            mem[t + ceil32(_80) + 288] = mem[_149]
            v = 0
            while v < _151:
                mem[t + ceil32(_80) + v + 320] = mem[_149 + v + 32]
                v = v + 32
                continue 
            if ceil32(_151) > _151:
                mem[t + ceil32(_80) + _151 + 320] = 0
            mem[t + 224] = mem[_58 + 224]
            idx = idx + 1
            s = s + 32
            t = t + ceil32(_80) + ceil32(_151) + 320
            u = u + 32
            continue 
        return memory
          from mem[64]
           len t - mem[64]
    mem[96] = 16
    mem[64] = 896
    mem[640] = 0
    mem[672] = 0
    mem[704] = 0
    mem[736] = 96
    mem[768] = 0
    mem[800] = 0
    mem[832] = 96
    mem[864] = 0
    mem[var24001] = 640
    s = var24001
    idx = var24002
    while idx - 1:
        mem[64] = mem[64] + 256
        mem[640] = 0
        mem[672] = 0
        mem[704] = 0
        mem[736] = 96
        mem[768] = 0
        mem[800] = 0
        mem[832] = 96
        mem[864] = 0
        mem[s + 32] = 640
        s = s + 32
        idx = idx - 1
        continue 
    idx = 0
    while idx < baseTokens.length:
        mem[0] = 2
        if routers.length > test266151307():
            revert with 'NH{q', 65
        _194 = mem[64]
        mem[mem[64]] = routers.length
        mem[64] = mem[64] + (32 * routers.length) + 32
        if not routers.length:
            s = 0
            while s < routers.length:
                mem[0] = 1
                require ext_code.size(routers[s])
                staticcall routers[s].factory() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _252 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _254 = mem[_252]
                require mem[_252] == mem[_252 + 12 len 20]
                mem[mem[64] + 4] = baseTokens[idx]
                mem[mem[64] + 36] = address(arg1)
                require ext_code.size(address(_254))
                staticcall address(_254).getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args baseTokens[idx], address(arg1)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _289 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_289] == mem[_289 + 12 len 20]
                if mem[_289 + 12 len 20]:
                    if s >= mem[_194]:
                        revert with 'NH{q', 50
                    mem[(32 * s) + _194 + 32] = mem[_289 + 12 len 20]
                if s == -1:
                    revert with 'NH{q', 17
                s = s + 1
                continue 
            s = 0
            while s < routers.length:
                if s > -2:
                    revert with 'NH{q', 17
                t = s + 1
                u = 0
                while t < routers.length:
                    if s >= mem[_194]:
                        revert with 'NH{q', 50
                    if t >= mem[_194]:
                        revert with 'NH{q', 50
                    if not mem[(32 * s) + _194 + 44 len 20]:
                        if t == -1:
                            revert with 'NH{q', 17
                        t = t + 1
                        u = u
                        continue 
                    if not mem[(32 * t) + _194 + 44 len 20]:
                        if t == -1:
                            revert with 'NH{q', 17
                        t = t + 1
                        u = u
                        continue 
                    _538 = mem[64]
                    mem[64] = mem[64] + 256
                    mem[_538] = 0
                    mem[_538 + 96] = 96
                    mem[_538 + 128] = 0
                    mem[_538 + 160] = 0
                    mem[_538 + 192] = 96
                    mem[_538 + 224] = 0
                    if s >= routers.length:
                        revert with 'NH{q', 50
                    mem[0] = 1
                    mem[_538] = routers[s]
                    if t >= routers.length:
                        revert with 'NH{q', 50
                    mem[0] = 1
                    mem[_538 + 32] = routers[t]
                    mem[_538 + 64] = baseTokens[idx]
                    mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                    require ext_code.size(baseTokens[idx])
                    staticcall baseTokens[idx].0x95d89b41 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _548 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _550 = mem[_548]
                    require mem[_548] <= test266151307()
                    require _548 + mem[_548] + 31 < _548 + return_data.size
                    _552 = mem[_548 + mem[_548]]
                    if mem[_548 + mem[_548]] > test266151307():
                        revert with 'NH{q', 65
                    if _548 + ceil32(return_data.size) + ceil32(ceil32(mem[_548 + mem[_548]])) + 1 > test266151307() or ceil32(ceil32(mem[_548 + mem[_548]])) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _548 + ceil32(return_data.size) + ceil32(ceil32(mem[_548 + mem[_548]])) + 1
                    mem[_548 + ceil32(return_data.size)] = _552
                    require _550 + _552 + 32 <= return_data.size
                    s = 0
                    while s < _552:
                        mem[_548 + ceil32(return_data.size) + s + 32] = mem[_548 + _550 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(_552) <= _552:
                        mem[_538 + 96] = _548 + ceil32(return_data.size)
                        require ext_code.size(baseTokens[idx])
                        staticcall baseTokens[idx].0x313ce567 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _652 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_652] == mem[_652 + 31 len 1]
                        mem[_538 + 128] = mem[_652 + 31 len 1]
                        mem[_538 + 160] = address(arg1)
                        mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                        require ext_code.size(address(arg1))
                        staticcall address(arg1).0x95d89b41 with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _668 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _672 = mem[_668]
                        require mem[_668] <= test266151307()
                        require _668 + mem[_668] + 31 < _668 + return_data.size
                        _676 = mem[_668 + mem[_668]]
                        if mem[_668 + mem[_668]] > test266151307():
                            revert with 'NH{q', 65
                        if _668 + ceil32(return_data.size) + ceil32(ceil32(mem[_668 + mem[_668]])) + 1 > test266151307() or ceil32(ceil32(mem[_668 + mem[_668]])) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _668 + ceil32(return_data.size) + ceil32(ceil32(mem[_668 + mem[_668]])) + 1
                        mem[_668 + ceil32(return_data.size)] = _676
                        require _672 + _676 + 32 <= return_data.size
                        idx = 0
                        while idx < _676:
                            mem[_668 + ceil32(return_data.size) + idx + 32] = mem[_668 + _672 + idx + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_676) <= _676:
                            mem[_538 + 192] = _668 + ceil32(return_data.size)
                            require ext_code.size(address(arg1))
                            staticcall address(arg1).0x313ce567 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _748 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_748] == mem[_748 + 31 len 1]
                            mem[_538 + 224] = mem[_748 + 31 len 1]
                        else:
                            mem[_668 + ceil32(return_data.size) + _676 + 32] = 0
                            mem[_538 + 192] = _668 + ceil32(return_data.size)
                            require ext_code.size(address(arg1))
                            staticcall address(arg1).0x313ce567 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _752 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_752] == mem[_752 + 31 len 1]
                            mem[_538 + 224] = mem[_752 + 31 len 1]
                    else:
                        mem[_548 + ceil32(return_data.size) + _552 + 32] = 0
                        mem[_538 + 96] = _548 + ceil32(return_data.size)
                        require ext_code.size(baseTokens[idx])
                        staticcall baseTokens[idx].0x313ce567 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _654 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_654] == mem[_654 + 31 len 1]
                        mem[_538 + 128] = mem[_654 + 31 len 1]
                        mem[_538 + 160] = address(arg1)
                        mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                        require ext_code.size(address(arg1))
                        staticcall address(arg1).0x95d89b41 with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _670 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _674 = mem[_670]
                        require mem[_670] <= test266151307()
                        require _670 + mem[_670] + 31 < _670 + return_data.size
                        _678 = mem[_670 + mem[_670]]
                        if mem[_670 + mem[_670]] > test266151307():
                            revert with 'NH{q', 65
                        if _670 + ceil32(return_data.size) + ceil32(ceil32(mem[_670 + mem[_670]])) + 1 > test266151307() or ceil32(ceil32(mem[_670 + mem[_670]])) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _670 + ceil32(return_data.size) + ceil32(ceil32(mem[_670 + mem[_670]])) + 1
                        mem[_670 + ceil32(return_data.size)] = _678
                        require _674 + _678 + 32 <= return_data.size
                        idx = 0
                        while idx < _678:
                            mem[_670 + ceil32(return_data.size) + idx + 32] = mem[_670 + _674 + idx + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_678) <= _678:
                            mem[_538 + 192] = _670 + ceil32(return_data.size)
                            require ext_code.size(address(arg1))
                            staticcall address(arg1).0x313ce567 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _749 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_749] == mem[_749 + 31 len 1]
                            mem[_538 + 224] = mem[_749 + 31 len 1]
                        else:
                            mem[_670 + ceil32(return_data.size) + _678 + 32] = 0
                            mem[_538 + 192] = _670 + ceil32(return_data.size)
                            require ext_code.size(address(arg1))
                            staticcall address(arg1).0x313ce567 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _753 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_753] == mem[_753 + 31 len 1]
                            mem[_538 + 224] = mem[_753 + 31 len 1]
                    if u >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * u) + 128] = _538
                    if u == -1:
                        revert with 'NH{q', 17
                    if t == -1:
                        revert with 'NH{q', 17
                    t = t + 1
                    u = u + 1
                    continue 
                if s == -1:
                    revert with 'NH{q', 17
                s = s + 1
                continue 
        else:
            mem[_194 + 32 len 32 * routers.length] = call.data[calldata.size len 32 * routers.length]
            s = 0
            while s < routers.length:
                mem[0] = 1
                require ext_code.size(routers[s])
                staticcall routers[s].factory() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _253 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _255 = mem[_253]
                require mem[_253] == mem[_253 + 12 len 20]
                mem[mem[64] + 4] = baseTokens[idx]
                mem[mem[64] + 36] = address(arg1)
                require ext_code.size(address(_255))
                staticcall address(_255).getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args baseTokens[idx], address(arg1)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _290 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_290] == mem[_290 + 12 len 20]
                if mem[_290 + 12 len 20]:
                    if s >= mem[_194]:
                        revert with 'NH{q', 50
                    mem[(32 * s) + _194 + 32] = mem[_290 + 12 len 20]
                if s == -1:
                    revert with 'NH{q', 17
                s = s + 1
                continue 
            s = 0
            while s < routers.length:
                if s > -2:
                    revert with 'NH{q', 17
                t = s + 1
                u = 0
                while t < routers.length:
                    if s >= mem[_194]:
                        revert with 'NH{q', 50
                    if t >= mem[_194]:
                        revert with 'NH{q', 50
                    if not mem[(32 * s) + _194 + 44 len 20]:
                        if t == -1:
                            revert with 'NH{q', 17
                        t = t + 1
                        u = u
                        continue 
                    if not mem[(32 * t) + _194 + 44 len 20]:
                        if t == -1:
                            revert with 'NH{q', 17
                        t = t + 1
                        u = u
                        continue 
                    _539 = mem[64]
                    mem[64] = mem[64] + 256
                    mem[_539] = 0
                    mem[_539 + 96] = 96
                    mem[_539 + 128] = 0
                    mem[_539 + 160] = 0
                    mem[_539 + 192] = 96
                    mem[_539 + 224] = 0
                    if s >= routers.length:
                        revert with 'NH{q', 50
                    mem[0] = 1
                    mem[_539] = routers[s]
                    if t >= routers.length:
                        revert with 'NH{q', 50
                    mem[0] = 1
                    mem[_539 + 32] = routers[t]
                    mem[_539 + 64] = baseTokens[idx]
                    mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                    require ext_code.size(baseTokens[idx])
                    staticcall baseTokens[idx].0x95d89b41 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _549 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _551 = mem[_549]
                    require mem[_549] <= test266151307()
                    require _549 + mem[_549] + 31 < _549 + return_data.size
                    _553 = mem[_549 + mem[_549]]
                    if mem[_549 + mem[_549]] > test266151307():
                        revert with 'NH{q', 65
                    if _549 + ceil32(return_data.size) + ceil32(ceil32(mem[_549 + mem[_549]])) + 1 > test266151307() or ceil32(ceil32(mem[_549 + mem[_549]])) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _549 + ceil32(return_data.size) + ceil32(ceil32(mem[_549 + mem[_549]])) + 1
                    mem[_549 + ceil32(return_data.size)] = _553
                    require _551 + _553 + 32 <= return_data.size
                    s = 0
                    while s < _553:
                        mem[_549 + ceil32(return_data.size) + s + 32] = mem[_549 + _551 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(_553) <= _553:
                        mem[_539 + 96] = _549 + ceil32(return_data.size)
                        require ext_code.size(baseTokens[idx])
                        staticcall baseTokens[idx].0x313ce567 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _653 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_653] == mem[_653 + 31 len 1]
                        mem[_539 + 128] = mem[_653 + 31 len 1]
                        mem[_539 + 160] = address(arg1)
                        mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                        require ext_code.size(address(arg1))
                        staticcall address(arg1).0x95d89b41 with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _669 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _673 = mem[_669]
                        require mem[_669] <= test266151307()
                        require _669 + mem[_669] + 31 < _669 + return_data.size
                        _677 = mem[_669 + mem[_669]]
                        if mem[_669 + mem[_669]] > test266151307():
                            revert with 'NH{q', 65
                        if _669 + ceil32(return_data.size) + ceil32(ceil32(mem[_669 + mem[_669]])) + 1 > test266151307() or ceil32(ceil32(mem[_669 + mem[_669]])) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _669 + ceil32(return_data.size) + ceil32(ceil32(mem[_669 + mem[_669]])) + 1
                        mem[_669 + ceil32(return_data.size)] = _677
                        require _673 + _677 + 32 <= return_data.size
                        idx = 0
                        while idx < _677:
                            mem[_669 + ceil32(return_data.size) + idx + 32] = mem[_669 + _673 + idx + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_677) <= _677:
                            mem[_539 + 192] = _669 + ceil32(return_data.size)
                            require ext_code.size(address(arg1))
                            staticcall address(arg1).0x313ce567 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _750 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_750] == mem[_750 + 31 len 1]
                            mem[_539 + 224] = mem[_750 + 31 len 1]
                        else:
                            mem[_669 + ceil32(return_data.size) + _677 + 32] = 0
                            mem[_539 + 192] = _669 + ceil32(return_data.size)
                            require ext_code.size(address(arg1))
                            staticcall address(arg1).0x313ce567 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _754 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_754] == mem[_754 + 31 len 1]
                            mem[_539 + 224] = mem[_754 + 31 len 1]
                    else:
                        mem[_549 + ceil32(return_data.size) + _553 + 32] = 0
                        mem[_539 + 96] = _549 + ceil32(return_data.size)
                        require ext_code.size(baseTokens[idx])
                        staticcall baseTokens[idx].0x313ce567 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _655 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_655] == mem[_655 + 31 len 1]
                        mem[_539 + 128] = mem[_655 + 31 len 1]
                        mem[_539 + 160] = address(arg1)
                        mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                        require ext_code.size(address(arg1))
                        staticcall address(arg1).0x95d89b41 with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _671 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _675 = mem[_671]
                        require mem[_671] <= test266151307()
                        require _671 + mem[_671] + 31 < _671 + return_data.size
                        _679 = mem[_671 + mem[_671]]
                        if mem[_671 + mem[_671]] > test266151307():
                            revert with 'NH{q', 65
                        if _671 + ceil32(return_data.size) + ceil32(ceil32(mem[_671 + mem[_671]])) + 1 > test266151307() or ceil32(ceil32(mem[_671 + mem[_671]])) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _671 + ceil32(return_data.size) + ceil32(ceil32(mem[_671 + mem[_671]])) + 1
                        mem[_671 + ceil32(return_data.size)] = _679
                        require _675 + _679 + 32 <= return_data.size
                        idx = 0
                        while idx < _679:
                            mem[_671 + ceil32(return_data.size) + idx + 32] = mem[_671 + _675 + idx + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_679) <= _679:
                            mem[_539 + 192] = _671 + ceil32(return_data.size)
                            require ext_code.size(address(arg1))
                            staticcall address(arg1).0x313ce567 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _751 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_751] == mem[_751 + 31 len 1]
                            mem[_539 + 224] = mem[_751 + 31 len 1]
                        else:
                            mem[_671 + ceil32(return_data.size) + _679 + 32] = 0
                            mem[_539 + 192] = _671 + ceil32(return_data.size)
                            require ext_code.size(address(arg1))
                            staticcall address(arg1).0x313ce567 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _755 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_755] == mem[_755 + 31 len 1]
                            mem[_539 + 224] = mem[_755 + 31 len 1]
                    if u >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * u) + 128] = _539
                    if u == -1:
                        revert with 'NH{q', 17
                    if t == -1:
                        revert with 'NH{q', 17
                    t = t + 1
                    u = u + 1
                    continue 
                if s == -1:
                    revert with 'NH{q', 17
                s = s + 1
                continue 
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    _192 = mem[64]
    mem[64] = mem[64] + 32
    mem[_192 + 32] = 32
    _207 = mem[_192]
    mem[_192 + 64] = mem[_192]
    idx = 0
    s = _192 + 32
    t = _192 + (32 * mem[_192]) + 96
    u = _192 + 96
    while idx < _207:
        mem[u] = t + -_192 - 96
        _243 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_243 + 44 len 20]
        mem[t + 64] = mem[_243 + 76 len 20]
        _272 = mem[_243 + 96]
        mem[t + 96] = 256
        _279 = mem[_272]
        mem[t + 256] = mem[_272]
        v = 0
        while v < _279:
            mem[t + v + 288] = mem[_272 + v + 32]
            v = v + 32
            continue 
        if ceil32(_279) <= _279:
            mem[t + 128] = mem[_243 + 128]
            mem[t + 160] = mem[_243 + 172 len 20]
            _410 = mem[_243 + 192]
            mem[t + 192] = ceil32(_279) + 288
            _414 = mem[_410]
            mem[t + ceil32(_279) + 288] = mem[_410]
            v = 0
            while v < _414:
                mem[t + ceil32(_279) + v + 320] = mem[_410 + v + 32]
                v = v + 32
                continue 
            if ceil32(_414) > _414:
                mem[t + ceil32(_279) + _414 + 320] = 0
            mem[t + 224] = mem[_243 + 224]
            idx = idx + 1
            s = s + 32
            t = t + ceil32(_279) + ceil32(_414) + 320
            u = u + 32
            continue 
        mem[t + _279 + 288] = 0
        mem[t + 128] = mem[_243 + 128]
        mem[t + 160] = mem[_243 + 172 len 20]
        _413 = mem[_243 + 192]
        mem[t + 192] = ceil32(_279) + 288
        _417 = mem[_413]
        mem[t + ceil32(_279) + 288] = mem[_413]
        v = 0
        while v < _417:
            mem[t + ceil32(_279) + v + 320] = mem[_413 + v + 32]
            v = v + 32
            continue 
        if ceil32(_417) > _417:
            mem[t + ceil32(_279) + _417 + 320] = 0
        mem[t + 224] = mem[_243 + 224]
        idx = idx + 1
        s = s + 32
        t = t + ceil32(_279) + ceil32(_417) + 320
        u = u + 32
        continue 
    return memory
      from mem[64]
       len t - mem[64]
}



}
