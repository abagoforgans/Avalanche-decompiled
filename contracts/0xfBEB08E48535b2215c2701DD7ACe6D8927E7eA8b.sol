contract main {




// =====================  Runtime code  =====================


#
#  - getBestOutputAmountMultiExchangeSingleTokenMultiPath(address arg1, address[] arg2, address arg3, uint256[] arg4, uint256 arg5)
#  - getSellBestOutputAmountMultiExchangeMultiTokenMultiPath(address arg1, address[] arg2, address[] arg3, uint256[] arg4, uint256[] arg5)
#  - getBuyBestOutputAmountMultiExchangeMultiTokenMultiPath(address arg1, address[] arg2, address[] arg3, uint256[] arg4, uint256[] arg5)
#  - _fallback()
#
const chi = 0x4946c0e9f43f4dee607b0ef1fa1c


address owner;
array of address exchangesRouters;
array of address exchangesFactories;

function exchangesFactories(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < exchangesFactories.length
    return exchangesFactories[arg1]
}

function owner() {
    return owner
}

function exchangesRouters(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < exchangesRouters.length
    return exchangesRouters[arg1]
}

function selfDestruct() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    selfdestruct(msg.sender)
}

function getETHBalance() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    return eth.balance(this.address)
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function calculateSlippage(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if arg1 and arg2 > -1 / arg1:
        revert with 0, 17
    if arg1 < arg1 * arg2 / 10000:
        revert with 0, 17
    return (arg1 - (arg1 * arg2 / 10000))
}

function calculateAmountMinusPercentageBase10000(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if arg1 and arg2 > -1 / arg1:
        revert with 0, 17
    if arg1 < arg1 * arg2 / 10000:
        revert with 0, 17
    return (arg1 - (arg1 * arg2 / 10000))
}

function withdrawETHAllBalance() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdrawETHAmount(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call msg.sender with:
       value arg1 wei
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
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function getTokenBalance(address arg1) {
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
    return ext_call.return_data[0]
}

function withdrawTokensAmount(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function getAllowance(address arg1, address arg2, address arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    staticcall arg1.0xdd62ed3e with:
            gas gas_remaining wei
           args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function approveTokenInfinite(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    call arg1.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(arg2), test266151307()
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function approveTokenAmount(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    call arg1.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function getPairAddress(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg3 >= exchangesFactories.length:
        revert with 0, 50
    require ext_code.size(exchangesFactories[arg3])
    staticcall exchangesFactories[arg3].getPair(address rg1, address rg2) with:
            gas gas_remaining wei
           args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    return ext_call.return_data[12 len 20]
}

function withdrawTokensAllBalance(address arg1) {
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
}

function getPairReserves(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg3 >= exchangesFactories.length:
        revert with 0, 50
    require ext_code.size(exchangesFactories[arg3])
    staticcall exchangesFactories[arg3].getPair(address rg1, address rg2) with:
            gas gas_remaining wei
           args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    mem[128] = ext_call.return_data[18 len 14]
    mem[160] = ext_call.return_data[50 len 14]
    return Array(len=2, data=mem[128 len 64])
}

function addExchanges(address[] arg1) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < arg1.length:
        require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
        exchangesRouters.length++
        exchangesRouters[exchangesRouters.length] = address(cd[((32 * idx) + arg1 + 36)])
        if exchangesRouters.length < 1:
            revert with 0, 17
        if exchangesRouters.length - 1 >= exchangesRouters.length:
            revert with 0, 50
        mem[0] = 1
        require ext_code.size(exchangesRouters[exchangesRouters.length])
        staticcall exchangesRouters[exchangesRouters.length].factory() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _14 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _15 = mem[_14]
        require mem[_14] == mem[_14 + 12 len 20]
        exchangesFactories.length++
        mem[0] = 2
        exchangesFactories[exchangesFactories.length] = address(_15)
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function getPairTokens(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg3 >= exchangesFactories.length:
        revert with 0, 50
    mem[228] = arg2
    require ext_code.size(exchangesFactories[arg3])
    staticcall exchangesFactories[arg3].getPair(address rg1, address rg2) with:
            gas gas_remaining wei
           args address(arg1), arg2
    mem[192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).token0() with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[128] = ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).token1() with:
            gas gas_remaining wei
    mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[160] = ext_call.return_data[12 len 20]
    mem[(4 * ceil32(return_data.size)) + 192] = 32
    idx = 0
    s = 128
    t = (4 * ceil32(return_data.size)) + 256
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 256 len 64])
}

function checkBeforeStartTrade(address[] arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5) {
    require calldata.size - 4 >= 160
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg4 and arg5 > -1 / arg4:
        revert with 0, 17
    if arg4 < arg4 * arg5 / 10000:
        revert with 0, 17
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg3 >= exchangesRouters.length:
        revert with 0, 50
    mem[0] = 1
    mem[(32 * arg1.length) + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[(32 * arg1.length) + 132] = arg2
    mem[(32 * arg1.length) + 164] = 64
    mem[(32 * arg1.length) + 196] = arg1.length
    idx = 0
    s = 128
    t = (32 * arg1.length) + 228
    while idx < arg1.length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(exchangesRouters[arg3])
    staticcall exchangesRouters[arg3].getAmountsOut(uint256 rg1, address[] rg2) with:
            gas gas_remaining wei
           args mem[(32 * arg1.length) + 132 len (96 * arg1.length) + 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * arg1.length) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * arg1.length) + ceil32(return_data.size) + 128
    require return_data.size >= 32
    _24 = mem[(32 * arg1.length) + 128 len 4], Mask(224, 32, arg2) >> 32
    require mem[(32 * arg1.length) + 128 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
    require (32 * arg1.length) + return_data.size + 128 > (32 * arg1.length) + mem[(32 * arg1.length) + 128 len 4], Mask(224, 32, arg2) >> 32 + 159
    _25 = mem[(32 * arg1.length) + mem[(32 * arg1.length) + 128 len 4], Mask(224, 32, arg2) >> 32 + 128]
    if mem[(32 * arg1.length) + mem[(32 * arg1.length) + 128 len 4], Mask(224, 32, arg2) >> 32 + 128] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[(32 * arg1.length) + mem[(32 * arg1.length) + 128 len 4], Mask(224, 32, arg2) >> 32 + 128]) + 1 < 0 or (32 * arg1.length) + ceil32(return_data.size) + ceil32(32 * mem[(32 * arg1.length) + mem[(32 * arg1.length) + 128 len 4], Mask(224, 32, arg2) >> 32 + 128]) + 129 > test266151307():
        revert with 0, 65
    mem[(32 * arg1.length) + ceil32(return_data.size) + 128] = mem[(32 * arg1.length) + mem[(32 * arg1.length) + 128 len 4], Mask(224, 32, arg2) >> 32 + 128]
    require _24 + (32 * _25) + 32 <= return_data.size
    mem[(32 * arg1.length) + ceil32(return_data.size) + 160 len 32 * _25] = mem[(32 * arg1.length) + _24 + 160 len 32 * _25]
    if _25 < 1:
        revert with 0, 17
    if _25 - 1 >= _25:
        revert with 0, 50
    if mem[(32 * _25 - 1) + (32 * arg1.length) + ceil32(return_data.size) + 160] < arg4 - (arg4 * arg5 / 10000):
        revert with 0, 'Insufficient Output Amount'
}

function getReservesByPairs(address[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    mem[96] = arg1.length
    mem[64] = (32 * arg1.length) + 128
    if not arg1.length:
        idx = 0
        while idx < arg1.length:
            require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
            staticcall address(cd[((32 * idx) + arg1 + 36)]).getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _47 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _51 = mem[_47]
            require mem[_47] == mem[_47 + 18 len 14]
            _55 = mem[_47 + 32]
            require mem[_47 + 32] == mem[_47 + 50 len 14]
            require mem[_47 + 64] == mem[_47 + 92 len 4]
            if idx >= mem[96]:
                revert with 0, 50
            _59 = mem[(32 * idx) + 128]
            if idx >= mem[96]:
                revert with 0, 50
            _62 = mem[(32 * idx) + 128]
            if idx >= mem[96]:
                revert with 0, 50
            mem[mem[(32 * idx) + 128] + 64] = mem[_47 + 92 len 4]
            mem[_62 + 32] = Mask(112, 0, _55)
            mem[_59] = Mask(112, 0, _51)
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        _39 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = mem[64] + 64
        t = 128
        while idx < _39:
            u = 0
            v = s
            w = mem[t]
            while u < 3:
                mem[v] = mem[w]
                u = u + 1
                v = v + 32
                w = w + 32
                continue 
            u = 4
            s = s + 96
            t = t + 32
            continue 
    else:
        mem[64] = (32 * arg1.length) + 224
        mem[(32 * arg1.length) + 128 len 96] = call.data[calldata.size len 96]
        mem[var18001] = (32 * arg1.length) + 128
        s = var18001
        idx = var18002
        while idx - 1:
            mem[64] = mem[64] + 96
            mem[(32 * arg1.length) + 128 len 96] = call.data[calldata.size len 96]
            mem[s + 32] = (32 * arg1.length) + 128
            s = s + 32
            idx = idx - 1
            continue 
        idx = 0
        while idx < arg1.length:
            require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
            staticcall address(cd[((32 * idx) + arg1 + 36)]).getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _101 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _102 = mem[_101]
            require mem[_101] == mem[_101 + 18 len 14]
            _103 = mem[_101 + 32]
            require mem[_101 + 32] == mem[_101 + 50 len 14]
            require mem[_101 + 64] == mem[_101 + 92 len 4]
            if idx >= mem[96]:
                revert with 0, 50
            _106 = mem[(32 * idx) + 128]
            if idx >= mem[96]:
                revert with 0, 50
            _108 = mem[(32 * idx) + 128]
            if idx >= mem[96]:
                revert with 0, 50
            mem[mem[(32 * idx) + 128] + 64] = mem[_101 + 92 len 4]
            mem[_108 + 32] = Mask(112, 0, _103)
            mem[_106] = Mask(112, 0, _102)
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        _95 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = mem[64] + 64
        t = 128
        while idx < _95:
            u = 0
            v = s
            w = mem[t]
            while u < 3:
                mem[v] = mem[w]
                u = u + 1
                v = v + 32
                w = w + 32
                continue 
            u = 4
            s = s + 96
            t = t + 32
            continue 
    return memory
      from mem[64]
       len s - mem[64]
}

function getPairReservesAndDetermineMainAndSecondaryTokens(address[] arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require calldata.size > arg1 + 35
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg1.length) + 97 < 96 or ceil32(32 * arg1.length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg1.length
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    s = arg1 + 36
    t = 128
    idx = 0
    while idx < arg1.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    if 0 >= arg1.length:
        revert with 0, 50
    _61 = mem[128]
    if 1 >= arg1.length:
        revert with 0, 50
    _63 = mem[160]
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[ceil32(32 * arg1.length) + 97] = 2
    if arg2 >= exchangesFactories.length:
        revert with 0, 50
    mem[ceil32(32 * arg1.length) + 229] = address(_63)
    require ext_code.size(exchangesFactories[arg2])
    staticcall exchangesFactories[arg2].getPair(address rg1, address rg2) with:
            gas gas_remaining wei
           args address(_61), address(_63)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    mem[ceil32(32 * arg1.length) + 129] = ext_call.return_data[18 len 14]
    mem[ceil32(32 * arg1.length) + 161] = ext_call.return_data[50 len 14]
    if 0 >= arg1.length:
        revert with 0, 50
    if 1 >= arg1.length:
        revert with 0, 50
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg2 >= exchangesFactories.length:
        revert with 0, 50
    mem[ceil32(32 * arg1.length) + (2 * ceil32(return_data.size)) + 293] = mem[140 len 20]
    mem[ceil32(32 * arg1.length) + (2 * ceil32(return_data.size)) + 325] = mem[172 len 20]
    require ext_code.size(exchangesFactories[arg2])
    staticcall exchangesFactories[arg2].getPair(address rg1, address rg2) with:
            gas gas_remaining wei
           args address(mem[128]), mem[172 len 20]
    mem[ceil32(32 * arg1.length) + (2 * ceil32(return_data.size)) + 289] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[ceil32(32 * arg1.length) + (4 * ceil32(return_data.size)) + 289] = 0xdfe168100000000000000000000000000000000000000000000000000000000
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).token0() with:
            gas gas_remaining wei
           args mem[ceil32(32 * arg1.length) + (4 * ceil32(return_data.size)) + 293 len 5 * ceil32(return_data.size)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[ceil32(32 * arg1.length) + (2 * ceil32(return_data.size)) + 225] = ext_call.return_data[12 len 20]
    mem[ceil32(32 * arg1.length) + (4 * ceil32(return_data.size)) + 289] = 0xd21220a700000000000000000000000000000000000000000000000000000000
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).token1() with:
            gas gas_remaining wei
           args mem[ceil32(32 * arg1.length) + (4 * ceil32(return_data.size)) + 293 len 7 * ceil32(return_data.size)]
    mem[ceil32(32 * arg1.length) + (4 * ceil32(return_data.size)) + 289] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if 0 >= arg1.length:
        revert with 0, 50
    if mem[ceil32(32 * arg1.length) + (2 * ceil32(return_data.size)) + 237 len 20] != mem[140 len 20]:
        mem[ceil32(32 * arg1.length) + (8 * ceil32(return_data.size)) + 289] = Mask(112, 0, ext_call.return_data[32])
        mem[ceil32(32 * arg1.length) + (8 * ceil32(return_data.size)) + 321] = ext_call.return_data[18 len 14]
    else:
        mem[ceil32(32 * arg1.length) + (8 * ceil32(return_data.size)) + 289] = ext_call.return_data[18 len 14]
        mem[ceil32(32 * arg1.length) + (8 * ceil32(return_data.size)) + 321] = Mask(112, 0, ext_call.return_data[32])
    return memory
      from ceil32(32 * arg1.length) + (8 * ceil32(return_data.size)) + 289
       len (13 * ceil32(return_data.size)) + 64
}

function startTrade(address[] arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5, bool arg6) {
    require calldata.size - 4 >= 192
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    require arg6 == arg6
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg4 and arg5 > -1 / arg4:
        revert with 0, 17
    if arg4 < arg4 * arg5 / 10000:
        revert with 0, 17
    if 0 >= arg1.length:
        revert with 0, 50
    require cd[(arg1 + 36)] == address(cd[(arg1 + 36)])
    if arg3 >= exchangesRouters.length:
        revert with 0, 50
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[100] = this.address
    mem[132] = exchangesRouters[arg3]
    require ext_code.size(address(cd[(arg1 + 36)]))
    staticcall address(cd[(arg1 + 36)]).0xdd62ed3e with:
            gas gas_remaining wei
           args address(this.address), exchangesRouters[arg3]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= arg2:
        if not arg6:
            mem[ceil32(return_data.size) + 128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            if arg3 >= exchangesRouters.length:
                revert with 0, 50
            mem[ceil32(return_data.size) + (32 * arg1.length) + 128] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + (32 * arg1.length) + 132] = arg2
            mem[ceil32(return_data.size) + (32 * arg1.length) + 164] = arg4 - (arg4 * arg5 / 10000)
            mem[ceil32(return_data.size) + (32 * arg1.length) + 196] = 160
            mem[ceil32(return_data.size) + (32 * arg1.length) + 292] = arg1.length
            idx = 0
            s = ceil32(return_data.size) + 128
            t = ceil32(return_data.size) + (32 * arg1.length) + 324
            while idx < arg1.length:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[ceil32(return_data.size) + (32 * arg1.length) + 228] = this.address
            mem[ceil32(return_data.size) + (32 * arg1.length) + 260] = block.timestamp
            require ext_code.size(exchangesRouters[arg3])
            call exchangesRouters[arg3].swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args mem[ceil32(return_data.size) + (32 * arg1.length) + 132 len (96 * arg1.length) + 192]
        else:
            if 0 >= arg1.length:
                revert with 0, 50
            require cd[(arg1 + 36)] == address(cd[(arg1 + 36)])
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            mem[ceil32(return_data.size) + 100] = this.address
            require ext_code.size(address(cd[(arg1 + 36)]))
            staticcall address(cd[(arg1 + 36)]).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(2 * ceil32(return_data.size)) + 128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            if arg3 >= exchangesRouters.length:
                revert with 0, 50
            mem[(2 * ceil32(return_data.size)) + (32 * arg1.length) + 128] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
            mem[(2 * ceil32(return_data.size)) + (32 * arg1.length) + 132] = ext_call.return_data[0]
            mem[(2 * ceil32(return_data.size)) + (32 * arg1.length) + 164] = arg4 - (arg4 * arg5 / 10000)
            mem[(2 * ceil32(return_data.size)) + (32 * arg1.length) + 196] = 160
            mem[(2 * ceil32(return_data.size)) + (32 * arg1.length) + 292] = arg1.length
            idx = 0
            s = (2 * ceil32(return_data.size)) + 128
            t = (2 * ceil32(return_data.size)) + (32 * arg1.length) + 324
            while idx < arg1.length:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(2 * ceil32(return_data.size)) + (32 * arg1.length) + 228] = this.address
            mem[(2 * ceil32(return_data.size)) + (32 * arg1.length) + 260] = block.timestamp
            require ext_code.size(exchangesRouters[arg3])
            call exchangesRouters[arg3].swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args mem[(2 * ceil32(return_data.size)) + (32 * arg1.length) + 132 len (96 * arg1.length) + 192]
    else:
        if 0 >= arg1.length:
            revert with 0, 50
        require cd[(arg1 + 36)] == address(cd[(arg1 + 36)])
        if arg3 >= exchangesRouters.length:
            revert with 0, 50
        if owner != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
        mem[ceil32(return_data.size) + 100] = exchangesRouters[arg3]
        mem[ceil32(return_data.size) + 132] = test266151307()
        require ext_code.size(address(cd[(arg1 + 36)]))
        call address(cd[(arg1 + 36)]).approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args exchangesRouters[arg3], test266151307()
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not arg6:
            mem[(2 * ceil32(return_data.size)) + 128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            if arg3 >= exchangesRouters.length:
                revert with 0, 50
            mem[(2 * ceil32(return_data.size)) + (32 * arg1.length) + 128] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
            mem[(2 * ceil32(return_data.size)) + (32 * arg1.length) + 132] = arg2
            mem[(2 * ceil32(return_data.size)) + (32 * arg1.length) + 164] = arg4 - (arg4 * arg5 / 10000)
            mem[(2 * ceil32(return_data.size)) + (32 * arg1.length) + 196] = 160
            mem[(2 * ceil32(return_data.size)) + (32 * arg1.length) + 292] = arg1.length
            idx = 0
            s = (2 * ceil32(return_data.size)) + 128
            t = (2 * ceil32(return_data.size)) + (32 * arg1.length) + 324
            while idx < arg1.length:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(2 * ceil32(return_data.size)) + (32 * arg1.length) + 228] = this.address
            mem[(2 * ceil32(return_data.size)) + (32 * arg1.length) + 260] = block.timestamp
            require ext_code.size(exchangesRouters[arg3])
            call exchangesRouters[arg3].swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args mem[(2 * ceil32(return_data.size)) + (32 * arg1.length) + 132 len (96 * arg1.length) + 192]
        else:
            if 0 >= arg1.length:
                revert with 0, 50
            require cd[(arg1 + 36)] == address(cd[(arg1 + 36)])
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            mem[(2 * ceil32(return_data.size)) + 100] = this.address
            require ext_code.size(address(cd[(arg1 + 36)]))
            staticcall address(cd[(arg1 + 36)]).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(4 * ceil32(return_data.size)) + 128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            if arg3 >= exchangesRouters.length:
                revert with 0, 50
            mem[(4 * ceil32(return_data.size)) + (32 * arg1.length) + 128] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
            mem[(4 * ceil32(return_data.size)) + (32 * arg1.length) + 132] = ext_call.return_data[0]
            mem[(4 * ceil32(return_data.size)) + (32 * arg1.length) + 164] = arg4 - (arg4 * arg5 / 10000)
            mem[(4 * ceil32(return_data.size)) + (32 * arg1.length) + 196] = 160
            mem[(4 * ceil32(return_data.size)) + (32 * arg1.length) + 292] = arg1.length
            idx = 0
            s = (4 * ceil32(return_data.size)) + 128
            t = (4 * ceil32(return_data.size)) + (32 * arg1.length) + 324
            while idx < arg1.length:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(4 * ceil32(return_data.size)) + (32 * arg1.length) + 228] = this.address
            mem[(4 * ceil32(return_data.size)) + (32 * arg1.length) + 260] = block.timestamp
            require ext_code.size(exchangesRouters[arg3])
            call exchangesRouters[arg3].swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args mem[(4 * ceil32(return_data.size)) + (32 * arg1.length) + 132 len (96 * arg1.length) + 192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function getBestOutputAmountMultiExchangeSingleTokenSinglePath(address[] arg1, uint256[] arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    if arg2.length > exchangesRouters.length:
        revert with 0, 'Too much Router provided in Input'
    if arg2.length > test266151307():
        revert with 0, 65
    mem[(32 * arg2.length) + (32 * arg1.length) + 160] = arg2.length
    mem[64] = (64 * arg2.length) + (32 * arg1.length) + 192
    if not arg2.length:
        idx = 0
        while idx < arg2.length:
            if idx >= mem[(32 * arg1.length) + 128]:
                revert with 0, 50
            _99 = mem[(32 * idx) + (32 * arg1.length) + 160]
            if mem[(32 * idx) + (32 * arg1.length) + 160] >= exchangesRouters.length:
                revert with 0, 50
            mem[0] = 1
            _103 = mem[64]
            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = arg3
            mem[mem[64] + 36] = 64
            _115 = mem[96]
            mem[mem[64] + 68] = mem[96]
            s = 0
            t = 128
            u = mem[64] + 100
            while s < _115:
                mem[u] = mem[t + 12 len 20]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            require ext_code.size(exchangesRouters[_99])
            staticcall exchangesRouters[_99].mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _103 + (32 * _115) + -mem[64] + 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _199 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _209 = mem[_199]
            require mem[_199] <= test266151307()
            require _199 + return_data.size > _199 + mem[_199] + 31
            _217 = mem[_199 + mem[_199]]
            if mem[_199 + mem[_199]] > test266151307():
                revert with 0, 65
            if ceil32(32 * mem[_199 + mem[_199]]) + 1 < 0 or _199 + ceil32(return_data.size) + ceil32(32 * mem[_199 + mem[_199]]) + 1 > test266151307():
                revert with 0, 65
            mem[64] = _199 + ceil32(return_data.size) + ceil32(32 * mem[_199 + mem[_199]]) + 1
            mem[_199 + ceil32(return_data.size)] = _217
            require _209 + (32 * _217) + 32 <= return_data.size
            t = _199 + _209 + 32
            u = _199 + ceil32(return_data.size) + 32
            s = 0
            while s < _217:
                mem[u] = mem[t]
                t = t + 32
                u = u + 32
                s = s + 1
                continue 
            if _217 < 1:
                revert with 0, 17
            if _217 - 1 >= _217:
                revert with 0, 50
            if idx >= mem[(32 * arg2.length) + (32 * arg1.length) + 160]:
                revert with 0, 50
            mem[(32 * idx) + (32 * arg2.length) + (32 * arg1.length) + 192] = mem[(32 * _217 - 1) + _199 + ceil32(return_data.size) + 32]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _98 = mem[64]
        mem[64] = mem[64] + (32 * arg2.length) + 32
        mem[_98] = arg2.length
        mem[_98 + 32 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
        mem[_98 + (32 * arg2.length) + 32] = 0
        if owner != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
        if mem[(32 * arg2.length) + (32 * arg1.length) + 160] != arg2.length:
            revert with 0, 'Given output amounts are less than exchanges provided'
        _112 = mem[64]
        mem[mem[64]] = 3
        mem[64] = mem[64] + 128
        mem[_112 + 32 len 96] = call.data[calldata.size len 96]
        if 1 >= mem[_112]:
            revert with 0, 50
        mem[_112 + 64] = 0
        _178 = mem[(32 * arg2.length) + (32 * arg1.length) + 160]
        idx = 0
        while idx < _178:
            if idx >= mem[(32 * arg2.length) + (32 * arg1.length) + 160]:
                revert with 0, 50
            if 1 >= mem[_112]:
                revert with 0, 50
            if mem[_112 + 64] < mem[(32 * idx) + (32 * arg2.length) + (32 * arg1.length) + 192]:
                if idx >= mem[_98]:
                    revert with 0, 50
                if 0 >= mem[_112]:
                    revert with 0, 50
                mem[_112 + 32] = mem[(32 * idx) + _98 + 32]
                if idx >= mem[(32 * arg2.length) + (32 * arg1.length) + 160]:
                    revert with 0, 50
                if 1 >= mem[_112]:
                    revert with 0, 50
                mem[_112 + 64] = mem[(32 * idx) + (32 * arg2.length) + (32 * arg1.length) + 192]
                if 2 >= mem[_112]:
                    revert with 0, 50
                mem[_112 + 96] = idx
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        _196 = mem[_112]
        mem[mem[64] + 32] = mem[_112]
        mem[mem[64] + 64 len 32 * _196] = mem[_112 + 32 len 32 * _196]
        return 32, mem[mem[64] + 32 len (32 * _196) + 32]
    mem[(32 * arg2.length) + (32 * arg1.length) + 192 len 32 * arg2.length] = call.data[calldata.size len 32 * arg2.length]
    idx = 0
    while idx < arg2.length:
        if idx >= mem[(32 * arg1.length) + 128]:
            revert with 0, 50
        _101 = mem[(32 * idx) + (32 * arg1.length) + 160]
        if mem[(32 * idx) + (32 * arg1.length) + 160] >= exchangesRouters.length:
            revert with 0, 50
        mem[0] = 1
        _105 = mem[64]
        mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = arg3
        mem[mem[64] + 36] = 64
        _119 = mem[96]
        mem[mem[64] + 68] = mem[96]
        s = 0
        t = 128
        u = mem[64] + 100
        while s < _119:
            mem[u] = mem[t + 12 len 20]
            s = s + 1
            t = t + 32
            u = u + 32
            continue 
        require ext_code.size(exchangesRouters[_101])
        staticcall exchangesRouters[_101].mem[mem[64] len 4] with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len _105 + (32 * _119) + -mem[64] + 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _203 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _213 = mem[_203]
        require mem[_203] <= test266151307()
        require _203 + return_data.size > _203 + mem[_203] + 31
        _219 = mem[_203 + mem[_203]]
        if mem[_203 + mem[_203]] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[_203 + mem[_203]]) + 1 < 0 or _203 + ceil32(return_data.size) + ceil32(32 * mem[_203 + mem[_203]]) + 1 > test266151307():
            revert with 0, 65
        mem[64] = _203 + ceil32(return_data.size) + ceil32(32 * mem[_203 + mem[_203]]) + 1
        mem[_203 + ceil32(return_data.size)] = _219
        require _213 + (32 * _219) + 32 <= return_data.size
        t = _203 + _213 + 32
        u = _203 + ceil32(return_data.size) + 32
        s = 0
        while s < _219:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s + 1
            continue 
        if _219 < 1:
            revert with 0, 17
        if _219 - 1 >= _219:
            revert with 0, 50
        if idx >= mem[(32 * arg2.length) + (32 * arg1.length) + 160]:
            revert with 0, 50
        mem[(32 * idx) + (32 * arg2.length) + (32 * arg1.length) + 192] = mem[(32 * _219 - 1) + _203 + ceil32(return_data.size) + 32]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    _100 = mem[64]
    mem[64] = mem[64] + (32 * arg2.length) + 32
    mem[_100] = arg2.length
    mem[_100 + 32 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[_100 + (32 * arg2.length) + 32] = 0
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if mem[(32 * arg2.length) + (32 * arg1.length) + 160] != arg2.length:
        revert with 0, 'Given output amounts are less than exchanges provided'
    _116 = mem[64]
    mem[mem[64]] = 3
    mem[64] = mem[64] + 128
    mem[_116 + 32 len 96] = call.data[calldata.size len 96]
    if 1 >= mem[_116]:
        revert with 0, 50
    mem[_116 + 64] = 0
    _179 = mem[(32 * arg2.length) + (32 * arg1.length) + 160]
    idx = 0
    while idx < _179:
        if idx >= mem[(32 * arg2.length) + (32 * arg1.length) + 160]:
            revert with 0, 50
        if 1 >= mem[_116]:
            revert with 0, 50
        if mem[_116 + 64] < mem[(32 * idx) + (32 * arg2.length) + (32 * arg1.length) + 192]:
            if idx >= mem[_100]:
                revert with 0, 50
            if 0 >= mem[_116]:
                revert with 0, 50
            mem[_116 + 32] = mem[(32 * idx) + _100 + 32]
            if idx >= mem[(32 * arg2.length) + (32 * arg1.length) + 160]:
                revert with 0, 50
            if 1 >= mem[_116]:
                revert with 0, 50
            mem[_116 + 64] = mem[(32 * idx) + (32 * arg2.length) + (32 * arg1.length) + 192]
            if 2 >= mem[_116]:
                revert with 0, 50
            mem[_116 + 96] = idx
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    mem[mem[64]] = 32
    _200 = mem[_116]
    mem[mem[64] + 32] = mem[_116]
    mem[mem[64] + 64 len 32 * _200] = mem[_116 + 32 len 32 * _200]
    return 32, mem[mem[64] + 32 len (32 * _200) + 32]
}

function approveAndSwapTokensForTokensSupportingFees(uint256 arg1, address[] arg2, uint256 arg3, uint256 arg4, uint256 arg5, bool arg6) {
    require calldata.size - 4 >= 192
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    require arg6 == arg6
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg4 and arg3 > -1 / arg4:
        revert with 0, 17
    if arg4 < arg4 * arg3 / 10000:
        revert with 0, 17
    if 0 >= arg2.length:
        revert with 0, 50
    require cd[(arg2 + 36)] == address(cd[(arg2 + 36)])
    if arg5 >= exchangesRouters.length:
        revert with 0, 50
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[100] = this.address
    mem[132] = exchangesRouters[arg5]
    require ext_code.size(address(cd[(arg2 + 36)]))
    staticcall address(cd[(arg2 + 36)]).0xdd62ed3e with:
            gas gas_remaining wei
           args address(this.address), exchangesRouters[arg5]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= arg1:
        if not arg6:
            mem[ceil32(return_data.size) + 128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            if arg5 >= exchangesRouters.length:
                revert with 0, 50
            mem[ceil32(return_data.size) + (32 * arg2.length) + 128] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + (32 * arg2.length) + 132] = arg1
            mem[ceil32(return_data.size) + (32 * arg2.length) + 164] = arg4 - (arg4 * arg3 / 10000)
            mem[ceil32(return_data.size) + (32 * arg2.length) + 196] = 160
            mem[ceil32(return_data.size) + (32 * arg2.length) + 292] = arg2.length
            idx = 0
            s = ceil32(return_data.size) + 128
            t = ceil32(return_data.size) + (32 * arg2.length) + 324
            while idx < arg2.length:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[ceil32(return_data.size) + (32 * arg2.length) + 228] = this.address
            mem[ceil32(return_data.size) + (32 * arg2.length) + 260] = block.timestamp
            require ext_code.size(exchangesRouters[arg5])
            call exchangesRouters[arg5].swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args mem[ceil32(return_data.size) + (32 * arg2.length) + 132 len (96 * arg2.length) + 192]
        else:
            if 0 >= arg2.length:
                revert with 0, 50
            require cd[(arg2 + 36)] == address(cd[(arg2 + 36)])
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            mem[ceil32(return_data.size) + 100] = this.address
            require ext_code.size(address(cd[(arg2 + 36)]))
            staticcall address(cd[(arg2 + 36)]).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(2 * ceil32(return_data.size)) + 128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            if arg5 >= exchangesRouters.length:
                revert with 0, 50
            mem[(2 * ceil32(return_data.size)) + (32 * arg2.length) + 128] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
            mem[(2 * ceil32(return_data.size)) + (32 * arg2.length) + 132] = ext_call.return_data[0]
            mem[(2 * ceil32(return_data.size)) + (32 * arg2.length) + 164] = arg4 - (arg4 * arg3 / 10000)
            mem[(2 * ceil32(return_data.size)) + (32 * arg2.length) + 196] = 160
            mem[(2 * ceil32(return_data.size)) + (32 * arg2.length) + 292] = arg2.length
            idx = 0
            s = (2 * ceil32(return_data.size)) + 128
            t = (2 * ceil32(return_data.size)) + (32 * arg2.length) + 324
            while idx < arg2.length:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(2 * ceil32(return_data.size)) + (32 * arg2.length) + 228] = this.address
            mem[(2 * ceil32(return_data.size)) + (32 * arg2.length) + 260] = block.timestamp
            require ext_code.size(exchangesRouters[arg5])
            call exchangesRouters[arg5].swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args mem[(2 * ceil32(return_data.size)) + (32 * arg2.length) + 132 len (96 * arg2.length) + 192]
    else:
        if 0 >= arg2.length:
            revert with 0, 50
        require cd[(arg2 + 36)] == address(cd[(arg2 + 36)])
        if arg5 >= exchangesRouters.length:
            revert with 0, 50
        if owner != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
        mem[ceil32(return_data.size) + 100] = exchangesRouters[arg5]
        mem[ceil32(return_data.size) + 132] = test266151307()
        require ext_code.size(address(cd[(arg2 + 36)]))
        call address(cd[(arg2 + 36)]).approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args exchangesRouters[arg5], test266151307()
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not arg6:
            mem[(2 * ceil32(return_data.size)) + 128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            if arg5 >= exchangesRouters.length:
                revert with 0, 50
            mem[(2 * ceil32(return_data.size)) + (32 * arg2.length) + 128] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
            mem[(2 * ceil32(return_data.size)) + (32 * arg2.length) + 132] = arg1
            mem[(2 * ceil32(return_data.size)) + (32 * arg2.length) + 164] = arg4 - (arg4 * arg3 / 10000)
            mem[(2 * ceil32(return_data.size)) + (32 * arg2.length) + 196] = 160
            mem[(2 * ceil32(return_data.size)) + (32 * arg2.length) + 292] = arg2.length
            idx = 0
            s = (2 * ceil32(return_data.size)) + 128
            t = (2 * ceil32(return_data.size)) + (32 * arg2.length) + 324
            while idx < arg2.length:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(2 * ceil32(return_data.size)) + (32 * arg2.length) + 228] = this.address
            mem[(2 * ceil32(return_data.size)) + (32 * arg2.length) + 260] = block.timestamp
            require ext_code.size(exchangesRouters[arg5])
            call exchangesRouters[arg5].swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args mem[(2 * ceil32(return_data.size)) + (32 * arg2.length) + 132 len (96 * arg2.length) + 192]
        else:
            if 0 >= arg2.length:
                revert with 0, 50
            require cd[(arg2 + 36)] == address(cd[(arg2 + 36)])
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            mem[(2 * ceil32(return_data.size)) + 100] = this.address
            require ext_code.size(address(cd[(arg2 + 36)]))
            staticcall address(cd[(arg2 + 36)]).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(4 * ceil32(return_data.size)) + 128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            if arg5 >= exchangesRouters.length:
                revert with 0, 50
            mem[(4 * ceil32(return_data.size)) + (32 * arg2.length) + 128] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
            mem[(4 * ceil32(return_data.size)) + (32 * arg2.length) + 132] = ext_call.return_data[0]
            mem[(4 * ceil32(return_data.size)) + (32 * arg2.length) + 164] = arg4 - (arg4 * arg3 / 10000)
            mem[(4 * ceil32(return_data.size)) + (32 * arg2.length) + 196] = 160
            mem[(4 * ceil32(return_data.size)) + (32 * arg2.length) + 292] = arg2.length
            idx = 0
            s = (4 * ceil32(return_data.size)) + 128
            t = (4 * ceil32(return_data.size)) + (32 * arg2.length) + 324
            while idx < arg2.length:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(4 * ceil32(return_data.size)) + (32 * arg2.length) + 228] = this.address
            mem[(4 * ceil32(return_data.size)) + (32 * arg2.length) + 260] = block.timestamp
            require ext_code.size(exchangesRouters[arg5])
            call exchangesRouters[arg5].swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args mem[(4 * ceil32(return_data.size)) + (32 * arg2.length) + 132 len (96 * arg2.length) + 192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function startTradeWithChi(address[] arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5, bool arg6) {
    require calldata.size - 4 >= 192
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    require arg6 == arg6
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg4 and arg5 > -1 / arg4:
        revert with 0, 17
    if arg4 < arg4 * arg5 / 10000:
        revert with 0, 17
    if 0 >= arg1.length:
        revert with 0, 50
    require cd[(arg1 + 36)] == address(cd[(arg1 + 36)])
    if arg3 >= exchangesRouters.length:
        revert with 0, 50
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[100] = this.address
    mem[132] = exchangesRouters[arg3]
    require ext_code.size(address(cd[(arg1 + 36)]))
    staticcall address(cd[(arg1 + 36)]).0xdd62ed3e with:
            gas gas_remaining wei
           args address(this.address), exchangesRouters[arg3]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= arg2:
        if not arg6:
            mem[ceil32(return_data.size) + 128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            if arg3 >= exchangesRouters.length:
                revert with 0, 50
            mem[ceil32(return_data.size) + (32 * arg1.length) + 128] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + (32 * arg1.length) + 132] = arg2
            mem[ceil32(return_data.size) + (32 * arg1.length) + 164] = arg4 - (arg4 * arg5 / 10000)
            mem[ceil32(return_data.size) + (32 * arg1.length) + 196] = 160
            mem[ceil32(return_data.size) + (32 * arg1.length) + 292] = arg1.length
            idx = 0
            s = ceil32(return_data.size) + 128
            t = ceil32(return_data.size) + (32 * arg1.length) + 324
            while idx < arg1.length:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[ceil32(return_data.size) + (32 * arg1.length) + 228] = this.address
            mem[ceil32(return_data.size) + (32 * arg1.length) + 260] = block.timestamp
            require ext_code.size(exchangesRouters[arg3])
            call exchangesRouters[arg3].swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args mem[ceil32(return_data.size) + (32 * arg1.length) + 132 len (96 * arg1.length) + 192]
        else:
            if 0 >= arg1.length:
                revert with 0, 50
            require cd[(arg1 + 36)] == address(cd[(arg1 + 36)])
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            mem[ceil32(return_data.size) + 100] = this.address
            require ext_code.size(address(cd[(arg1 + 36)]))
            staticcall address(cd[(arg1 + 36)]).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(2 * ceil32(return_data.size)) + 128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            if arg3 >= exchangesRouters.length:
                revert with 0, 50
            mem[(2 * ceil32(return_data.size)) + (32 * arg1.length) + 128] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
            mem[(2 * ceil32(return_data.size)) + (32 * arg1.length) + 132] = ext_call.return_data[0]
            mem[(2 * ceil32(return_data.size)) + (32 * arg1.length) + 164] = arg4 - (arg4 * arg5 / 10000)
            mem[(2 * ceil32(return_data.size)) + (32 * arg1.length) + 196] = 160
            mem[(2 * ceil32(return_data.size)) + (32 * arg1.length) + 292] = arg1.length
            idx = 0
            s = (2 * ceil32(return_data.size)) + 128
            t = (2 * ceil32(return_data.size)) + (32 * arg1.length) + 324
            while idx < arg1.length:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(2 * ceil32(return_data.size)) + (32 * arg1.length) + 228] = this.address
            mem[(2 * ceil32(return_data.size)) + (32 * arg1.length) + 260] = block.timestamp
            require ext_code.size(exchangesRouters[arg3])
            call exchangesRouters[arg3].swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args mem[(2 * ceil32(return_data.size)) + (32 * arg1.length) + 132 len (96 * arg1.length) + 192]
    else:
        if 0 >= arg1.length:
            revert with 0, 50
        require cd[(arg1 + 36)] == address(cd[(arg1 + 36)])
        if arg3 >= exchangesRouters.length:
            revert with 0, 50
        if owner != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
        mem[ceil32(return_data.size) + 100] = exchangesRouters[arg3]
        mem[ceil32(return_data.size) + 132] = test266151307()
        require ext_code.size(address(cd[(arg1 + 36)]))
        call address(cd[(arg1 + 36)]).approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args exchangesRouters[arg3], test266151307()
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not arg6:
            mem[(2 * ceil32(return_data.size)) + 128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            if arg3 >= exchangesRouters.length:
                revert with 0, 50
            mem[(2 * ceil32(return_data.size)) + (32 * arg1.length) + 128] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
            mem[(2 * ceil32(return_data.size)) + (32 * arg1.length) + 132] = arg2
            mem[(2 * ceil32(return_data.size)) + (32 * arg1.length) + 164] = arg4 - (arg4 * arg5 / 10000)
            mem[(2 * ceil32(return_data.size)) + (32 * arg1.length) + 196] = 160
            mem[(2 * ceil32(return_data.size)) + (32 * arg1.length) + 292] = arg1.length
            idx = 0
            s = (2 * ceil32(return_data.size)) + 128
            t = (2 * ceil32(return_data.size)) + (32 * arg1.length) + 324
            while idx < arg1.length:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(2 * ceil32(return_data.size)) + (32 * arg1.length) + 228] = this.address
            mem[(2 * ceil32(return_data.size)) + (32 * arg1.length) + 260] = block.timestamp
            require ext_code.size(exchangesRouters[arg3])
            call exchangesRouters[arg3].swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args mem[(2 * ceil32(return_data.size)) + (32 * arg1.length) + 132 len (96 * arg1.length) + 192]
        else:
            if 0 >= arg1.length:
                revert with 0, 50
            require cd[(arg1 + 36)] == address(cd[(arg1 + 36)])
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            mem[(2 * ceil32(return_data.size)) + 100] = this.address
            require ext_code.size(address(cd[(arg1 + 36)]))
            staticcall address(cd[(arg1 + 36)]).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(4 * ceil32(return_data.size)) + 128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            if arg3 >= exchangesRouters.length:
                revert with 0, 50
            mem[(4 * ceil32(return_data.size)) + (32 * arg1.length) + 128] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
            mem[(4 * ceil32(return_data.size)) + (32 * arg1.length) + 132] = ext_call.return_data[0]
            mem[(4 * ceil32(return_data.size)) + (32 * arg1.length) + 164] = arg4 - (arg4 * arg5 / 10000)
            mem[(4 * ceil32(return_data.size)) + (32 * arg1.length) + 196] = 160
            mem[(4 * ceil32(return_data.size)) + (32 * arg1.length) + 292] = arg1.length
            idx = 0
            s = (4 * ceil32(return_data.size)) + 128
            t = (4 * ceil32(return_data.size)) + (32 * arg1.length) + 324
            while idx < arg1.length:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(4 * ceil32(return_data.size)) + (32 * arg1.length) + 228] = this.address
            mem[(4 * ceil32(return_data.size)) + (32 * arg1.length) + 260] = block.timestamp
            require ext_code.size(exchangesRouters[arg3])
            call exchangesRouters[arg3].swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args mem[(4 * ceil32(return_data.size)) + (32 * arg1.length) + 132 len (96 * arg1.length) + 192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if calldata.size > 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 0, 17
    if 21000 > !gas_remaining:
        revert with 0, 17
    if gas_remaining + 21000 < gas_remaining:
        revert with 0, 17
    if 21000 > !(16 * calldata.size):
        revert with 0, 17
    if 14154 > !((16 * calldata.size) + 21000):
        revert with 0, 17
    require ext_code.size(0x4946c0e9f43f4dee607b0ef1fa1c)
    call 0x0000000000004946c0e9f43f4dee607b0ef1fa1c.freeFromUpTo(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args msg.sender, (16 * calldata.size) + 35154 / 41947
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function checkAndStartTrade(address[] arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5, bool arg6) {
    require calldata.size - 4 >= 192
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    require arg6 == arg6
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg4 and arg5 > -1 / arg4:
        revert with 0, 17
    if arg4 < arg4 * arg5 / 10000:
        revert with 0, 17
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg3 >= exchangesRouters.length:
        revert with 0, 50
    mem[0] = 1
    mem[(32 * arg1.length) + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[(32 * arg1.length) + 132] = arg2
    mem[(32 * arg1.length) + 164] = 64
    mem[(32 * arg1.length) + 196] = arg1.length
    idx = 0
    s = 128
    t = (32 * arg1.length) + 228
    while idx < arg1.length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(exchangesRouters[arg3])
    staticcall exchangesRouters[arg3].getAmountsOut(uint256 rg1, address[] rg2) with:
            gas gas_remaining wei
           args mem[(32 * arg1.length) + 132 len (96 * arg1.length) + 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * arg1.length) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * arg1.length) + ceil32(return_data.size) + 128
    require return_data.size >= 32
    _84 = mem[(32 * arg1.length) + 128 len 4], Mask(224, 32, arg2) >> 32
    require mem[(32 * arg1.length) + 128 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
    require (32 * arg1.length) + return_data.size + 128 > (32 * arg1.length) + mem[(32 * arg1.length) + 128 len 4], Mask(224, 32, arg2) >> 32 + 159
    _85 = mem[(32 * arg1.length) + mem[(32 * arg1.length) + 128 len 4], Mask(224, 32, arg2) >> 32 + 128]
    if mem[(32 * arg1.length) + mem[(32 * arg1.length) + 128 len 4], Mask(224, 32, arg2) >> 32 + 128] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[(32 * arg1.length) + mem[(32 * arg1.length) + 128 len 4], Mask(224, 32, arg2) >> 32 + 128]) + 1 < 0 or (32 * arg1.length) + ceil32(return_data.size) + ceil32(32 * mem[(32 * arg1.length) + mem[(32 * arg1.length) + 128 len 4], Mask(224, 32, arg2) >> 32 + 128]) + 129 > test266151307():
        revert with 0, 65
    mem[64] = (32 * arg1.length) + ceil32(return_data.size) + ceil32(32 * mem[(32 * arg1.length) + mem[(32 * arg1.length) + 128 len 4], Mask(224, 32, arg2) >> 32 + 128]) + 129
    mem[(32 * arg1.length) + ceil32(return_data.size) + 128] = _85
    require _84 + (32 * _85) + 32 <= return_data.size
    mem[(32 * arg1.length) + ceil32(return_data.size) + 160 len 32 * _85] = mem[(32 * arg1.length) + _84 + 160 len 32 * _85]
    if _85 < 1:
        revert with 0, 17
    if _85 - 1 >= _85:
        revert with 0, 50
    if mem[(32 * _85 - 1) + (32 * arg1.length) + ceil32(return_data.size) + 160] < arg4 - (arg4 * arg5 / 10000):
        revert with 0, 'Insufficient Output Amount'
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg4 and arg5 > -1 / arg4:
        revert with 0, 17
    if arg4 < arg4 * arg5 / 10000:
        revert with 0, 17
    if 0 >= arg1.length:
        revert with 0, 50
    require cd[(arg1 + 36)] == address(cd[(arg1 + 36)])
    if arg3 >= exchangesRouters.length:
        revert with 0, 50
    mem[0] = 1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[mem[64] + 4] = this.address
    mem[mem[64] + 36] = exchangesRouters[arg3]
    require ext_code.size(address(cd[(arg1 + 36)]))
    staticcall address(cd[(arg1 + 36)]).0xdd62ed3e with:
            gas gas_remaining wei
           args address(this.address), exchangesRouters[arg3]
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _165 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    if mem[_165] >= arg2:
        if not arg6:
            _168 = mem[64]
            mem[64] = mem[64] + (32 * arg1.length) + 32
            mem[_168] = arg1.length
            mem[_168 + 32 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
            mem[_168 + (32 * arg1.length) + 32] = 0
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            if arg3 >= exchangesRouters.length:
                revert with 0, 50
            _171 = mem[64]
            mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = arg2
            mem[mem[64] + 36] = arg4 - (arg4 * arg5 / 10000)
            mem[mem[64] + 68] = 160
            mem[mem[64] + 164] = arg1.length
            idx = 0
            s = _168 + 32
            t = mem[64] + 196
            while idx < arg1.length:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_171 + 100] = this.address
            mem[_171 + 132] = block.timestamp
            require ext_code.size(exchangesRouters[arg3])
            call exchangesRouters[arg3].mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _171 + (32 * arg1.length) + -mem[64] + 192]
        else:
            if 0 >= arg1.length:
                revert with 0, 50
            require cd[(arg1 + 36)] == address(cd[(arg1 + 36)])
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(cd[(arg1 + 36)]))
            staticcall address(cd[(arg1 + 36)]).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _183 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _187 = mem[_183]
            _189 = mem[64]
            mem[64] = mem[64] + (32 * arg1.length) + 32
            mem[_189] = arg1.length
            mem[_189 + 32 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
            mem[_189 + (32 * arg1.length) + 32] = 0
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            if arg3 >= exchangesRouters.length:
                revert with 0, 50
            _192 = mem[64]
            mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _187
            mem[mem[64] + 36] = arg4 - (arg4 * arg5 / 10000)
            mem[mem[64] + 68] = 160
            mem[mem[64] + 164] = arg1.length
            idx = 0
            s = _189 + 32
            t = mem[64] + 196
            while idx < arg1.length:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_192 + 100] = this.address
            mem[_192 + 132] = block.timestamp
            require ext_code.size(exchangesRouters[arg3])
            call exchangesRouters[arg3].mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _192 + (32 * arg1.length) + -mem[64] + 192]
    else:
        if 0 >= arg1.length:
            revert with 0, 50
        require cd[(arg1 + 36)] == address(cd[(arg1 + 36)])
        if arg3 >= exchangesRouters.length:
            revert with 0, 50
        mem[0] = 1
        if owner != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
        mem[mem[64] + 4] = exchangesRouters[arg3]
        mem[mem[64] + 36] = test266151307()
        require ext_code.size(address(cd[(arg1 + 36)]))
        call address(cd[(arg1 + 36)]).approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args exchangesRouters[arg3], test266151307()
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _186 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_186] == bool(mem[_186])
        if not arg6:
            _193 = mem[64]
            mem[64] = mem[64] + (32 * arg1.length) + 32
            mem[_193] = arg1.length
            mem[_193 + 32 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
            mem[_193 + (32 * arg1.length) + 32] = 0
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            if arg3 >= exchangesRouters.length:
                revert with 0, 50
            _198 = mem[64]
            mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = arg2
            mem[mem[64] + 36] = arg4 - (arg4 * arg5 / 10000)
            mem[mem[64] + 68] = 160
            mem[mem[64] + 164] = arg1.length
            idx = 0
            s = _193 + 32
            t = mem[64] + 196
            while idx < arg1.length:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_198 + 100] = this.address
            mem[_198 + 132] = block.timestamp
            require ext_code.size(exchangesRouters[arg3])
            call exchangesRouters[arg3].mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _198 + (32 * arg1.length) + -mem[64] + 192]
        else:
            if 0 >= arg1.length:
                revert with 0, 50
            require cd[(arg1 + 36)] == address(cd[(arg1 + 36)])
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(cd[(arg1 + 36)]))
            staticcall address(cd[(arg1 + 36)]).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _208 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _210 = mem[_208]
            _211 = mem[64]
            mem[64] = mem[64] + (32 * arg1.length) + 32
            mem[_211] = arg1.length
            mem[_211 + 32 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
            mem[_211 + (32 * arg1.length) + 32] = 0
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            if arg3 >= exchangesRouters.length:
                revert with 0, 50
            _214 = mem[64]
            mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _210
            mem[mem[64] + 36] = arg4 - (arg4 * arg5 / 10000)
            mem[mem[64] + 68] = 160
            mem[mem[64] + 164] = arg1.length
            idx = 0
            s = _211 + 32
            t = mem[64] + 196
            while idx < arg1.length:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_214 + 100] = this.address
            mem[_214 + 132] = block.timestamp
            require ext_code.size(exchangesRouters[arg3])
            call exchangesRouters[arg3].mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _214 + (32 * arg1.length) + -mem[64] + 192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function checkAndStartTradeWithChi(address[] arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5, bool arg6) {
    require calldata.size - 4 >= 192
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    require arg6 == arg6
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg4 and arg5 > -1 / arg4:
        revert with 0, 17
    if arg4 < arg4 * arg5 / 10000:
        revert with 0, 17
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg3 >= exchangesRouters.length:
        revert with 0, 50
    mem[0] = 1
    mem[(32 * arg1.length) + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[(32 * arg1.length) + 132] = arg2
    mem[(32 * arg1.length) + 164] = 64
    mem[(32 * arg1.length) + 196] = arg1.length
    idx = 0
    s = 128
    t = (32 * arg1.length) + 228
    while idx < arg1.length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(exchangesRouters[arg3])
    staticcall exchangesRouters[arg3].getAmountsOut(uint256 rg1, address[] rg2) with:
            gas gas_remaining wei
           args mem[(32 * arg1.length) + 132 len (96 * arg1.length) + 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * arg1.length) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * arg1.length) + ceil32(return_data.size) + 128
    require return_data.size >= 32
    _92 = mem[(32 * arg1.length) + 128 len 4], Mask(224, 32, arg2) >> 32
    require mem[(32 * arg1.length) + 128 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
    require (32 * arg1.length) + return_data.size + 128 > (32 * arg1.length) + mem[(32 * arg1.length) + 128 len 4], Mask(224, 32, arg2) >> 32 + 159
    _93 = mem[(32 * arg1.length) + mem[(32 * arg1.length) + 128 len 4], Mask(224, 32, arg2) >> 32 + 128]
    if mem[(32 * arg1.length) + mem[(32 * arg1.length) + 128 len 4], Mask(224, 32, arg2) >> 32 + 128] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[(32 * arg1.length) + mem[(32 * arg1.length) + 128 len 4], Mask(224, 32, arg2) >> 32 + 128]) + 1 < 0 or (32 * arg1.length) + ceil32(return_data.size) + ceil32(32 * mem[(32 * arg1.length) + mem[(32 * arg1.length) + 128 len 4], Mask(224, 32, arg2) >> 32 + 128]) + 129 > test266151307():
        revert with 0, 65
    mem[64] = (32 * arg1.length) + ceil32(return_data.size) + ceil32(32 * mem[(32 * arg1.length) + mem[(32 * arg1.length) + 128 len 4], Mask(224, 32, arg2) >> 32 + 128]) + 129
    mem[(32 * arg1.length) + ceil32(return_data.size) + 128] = _93
    require _92 + (32 * _93) + 32 <= return_data.size
    mem[(32 * arg1.length) + ceil32(return_data.size) + 160 len 32 * _93] = mem[(32 * arg1.length) + _92 + 160 len 32 * _93]
    if _93 < 1:
        revert with 0, 17
    if _93 - 1 >= _93:
        revert with 0, 50
    if mem[(32 * _93 - 1) + (32 * arg1.length) + ceil32(return_data.size) + 160] < arg4 - (arg4 * arg5 / 10000):
        revert with 0, 'Insufficient Output Amount'
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg4 and arg5 > -1 / arg4:
        revert with 0, 17
    if arg4 < arg4 * arg5 / 10000:
        revert with 0, 17
    if 0 >= arg1.length:
        revert with 0, 50
    require cd[(arg1 + 36)] == address(cd[(arg1 + 36)])
    if arg3 >= exchangesRouters.length:
        revert with 0, 50
    mem[0] = 1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[mem[64] + 4] = this.address
    mem[mem[64] + 36] = exchangesRouters[arg3]
    require ext_code.size(address(cd[(arg1 + 36)]))
    staticcall address(cd[(arg1 + 36)]).0xdd62ed3e with:
            gas gas_remaining wei
           args address(this.address), exchangesRouters[arg3]
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _181 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    if mem[_181] >= arg2:
        if not arg6:
            _184 = mem[64]
            mem[64] = mem[64] + (32 * arg1.length) + 32
            mem[_184] = arg1.length
            mem[_184 + 32 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
            mem[_184 + (32 * arg1.length) + 32] = 0
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            if arg3 >= exchangesRouters.length:
                revert with 0, 50
            _187 = mem[64]
            mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = arg2
            mem[mem[64] + 36] = arg4 - (arg4 * arg5 / 10000)
            mem[mem[64] + 68] = 160
            mem[mem[64] + 164] = arg1.length
            idx = 0
            s = _184 + 32
            t = mem[64] + 196
            while idx < arg1.length:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_187 + 100] = this.address
            mem[_187 + 132] = block.timestamp
            require ext_code.size(exchangesRouters[arg3])
            call exchangesRouters[arg3].mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _187 + (32 * arg1.length) + -mem[64] + 192]
        else:
            if 0 >= arg1.length:
                revert with 0, 50
            require cd[(arg1 + 36)] == address(cd[(arg1 + 36)])
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(cd[(arg1 + 36)]))
            staticcall address(cd[(arg1 + 36)]).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _199 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _203 = mem[_199]
            _205 = mem[64]
            mem[64] = mem[64] + (32 * arg1.length) + 32
            mem[_205] = arg1.length
            mem[_205 + 32 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
            mem[_205 + (32 * arg1.length) + 32] = 0
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            if arg3 >= exchangesRouters.length:
                revert with 0, 50
            _208 = mem[64]
            mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _203
            mem[mem[64] + 36] = arg4 - (arg4 * arg5 / 10000)
            mem[mem[64] + 68] = 160
            mem[mem[64] + 164] = arg1.length
            idx = 0
            s = _205 + 32
            t = mem[64] + 196
            while idx < arg1.length:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_208 + 100] = this.address
            mem[_208 + 132] = block.timestamp
            require ext_code.size(exchangesRouters[arg3])
            call exchangesRouters[arg3].mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _208 + (32 * arg1.length) + -mem[64] + 192]
    else:
        if 0 >= arg1.length:
            revert with 0, 50
        require cd[(arg1 + 36)] == address(cd[(arg1 + 36)])
        if arg3 >= exchangesRouters.length:
            revert with 0, 50
        mem[0] = 1
        if owner != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
        mem[mem[64] + 4] = exchangesRouters[arg3]
        mem[mem[64] + 36] = test266151307()
        require ext_code.size(address(cd[(arg1 + 36)]))
        call address(cd[(arg1 + 36)]).approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args exchangesRouters[arg3], test266151307()
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _202 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_202] == bool(mem[_202])
        if not arg6:
            _209 = mem[64]
            mem[64] = mem[64] + (32 * arg1.length) + 32
            mem[_209] = arg1.length
            mem[_209 + 32 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
            mem[_209 + (32 * arg1.length) + 32] = 0
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            if arg3 >= exchangesRouters.length:
                revert with 0, 50
            _214 = mem[64]
            mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = arg2
            mem[mem[64] + 36] = arg4 - (arg4 * arg5 / 10000)
            mem[mem[64] + 68] = 160
            mem[mem[64] + 164] = arg1.length
            idx = 0
            s = _209 + 32
            t = mem[64] + 196
            while idx < arg1.length:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_214 + 100] = this.address
            mem[_214 + 132] = block.timestamp
            require ext_code.size(exchangesRouters[arg3])
            call exchangesRouters[arg3].mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _214 + (32 * arg1.length) + -mem[64] + 192]
        else:
            if 0 >= arg1.length:
                revert with 0, 50
            require cd[(arg1 + 36)] == address(cd[(arg1 + 36)])
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(cd[(arg1 + 36)]))
            staticcall address(cd[(arg1 + 36)]).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _224 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _228 = mem[_224]
            _229 = mem[64]
            mem[64] = mem[64] + (32 * arg1.length) + 32
            mem[_229] = arg1.length
            mem[_229 + 32 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
            mem[_229 + (32 * arg1.length) + 32] = 0
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            if arg3 >= exchangesRouters.length:
                revert with 0, 50
            _232 = mem[64]
            mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _228
            mem[mem[64] + 36] = arg4 - (arg4 * arg5 / 10000)
            mem[mem[64] + 68] = 160
            mem[mem[64] + 164] = arg1.length
            idx = 0
            s = _229 + 32
            t = mem[64] + 196
            while idx < arg1.length:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_232 + 100] = this.address
            mem[_232 + 132] = block.timestamp
            require ext_code.size(exchangesRouters[arg3])
            call exchangesRouters[arg3].mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _232 + (32 * arg1.length) + -mem[64] + 192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if calldata.size > 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 0, 17
    if 21000 > !gas_remaining:
        revert with 0, 17
    if gas_remaining + 21000 < gas_remaining:
        revert with 0, 17
    if 21000 > !(16 * calldata.size):
        revert with 0, 17
    if 14154 > !((16 * calldata.size) + 21000):
        revert with 0, 17
    require ext_code.size(0x4946c0e9f43f4dee607b0ef1fa1c)
    call 0x0000000000004946c0e9f43f4dee607b0ef1fa1c.freeFromUpTo(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args msg.sender, (16 * calldata.size) + 35154 / 41947
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function getPairsByIndexRange(uint256 arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if arg1 >= exchangesFactories.length:
        revert with 0, 50
    mem[0] = 2
    require ext_code.size(exchangesFactories[arg1])
    staticcall exchangesFactories[arg1].allPairsLength() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg3 <= ext_call.return_data[0]:
        if arg3 < arg2:
            revert with 0, 'start cannot be higher than stop'
        if arg3 - arg2 > test266151307():
            revert with 0, 65
        mem[ceil32(return_data.size) + 96] = arg3 - arg2
        mem[64] = ceil32(return_data.size) + (32 * arg3 - arg2) + 128
        if not arg3 - arg2:
            idx = 0
            while idx < arg3 - arg2:
                if arg1 >= exchangesFactories.length:
                    revert with 0, 50
                mem[0] = 2
                if arg2 > !idx:
                    revert with 0, 17
                mem[mem[64] + 4] = arg2 + idx
                require ext_code.size(exchangesFactories[arg1])
                staticcall exchangesFactories[arg1].allPairs(uint256 rg1) with:
                        gas gas_remaining wei
                       args (arg2 + idx)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _132 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _136 = mem[_132]
                require mem[_132] == mem[_132 + 12 len 20]
                require ext_code.size(mem[_132 + 12 len 20])
                staticcall mem[_132 + 12 len 20].token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _156 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_156] == mem[_156 + 12 len 20]
                if idx >= mem[ceil32(return_data.size) + 96]:
                    revert with 0, 50
                mem[mem[(32 * idx) + ceil32(return_data.size) + 128]] = mem[_156 + 12 len 20]
                require ext_code.size(address(_136))
                staticcall address(_136).token1() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _176 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_176] == mem[_176 + 12 len 20]
                if idx >= mem[ceil32(return_data.size) + 96]:
                    revert with 0, 50
                mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 32] = mem[_176 + 12 len 20]
                if idx >= mem[ceil32(return_data.size) + 96]:
                    revert with 0, 50
                mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 64] = address(_136)
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            mem[mem[64]] = 32
            _116 = mem[ceil32(return_data.size) + 96]
            mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
            idx = 0
            s = mem[64] + 64
            t = ceil32(return_data.size) + 128
            while idx < _116:
                u = 0
                v = s
                w = mem[t]
                while u < 3:
                    mem[v] = mem[w + 12 len 20]
                    u = u + 1
                    v = v + 32
                    w = w + 32
                    continue 
                u = 4
                s = s + 96
                t = t + 32
                continue 
        else:
            mem[64] = ceil32(return_data.size) + (32 * arg3 - arg2) + 224
            mem[ceil32(return_data.size) + (32 * arg3 - arg2) + 128 len 96] = call.data[calldata.size len 96]
            mem[var23001] = ceil32(return_data.size) + (32 * arg3 - arg2) + 128
            s = var23001
            idx = var23002
            while idx - 1:
                mem[64] = mem[64] + 96
                mem[ceil32(return_data.size) + (32 * arg3 - arg2) + 128 len 96] = call.data[calldata.size len 96]
                mem[s + 32] = ceil32(return_data.size) + (32 * arg3 - arg2) + 128
                s = s + 32
                idx = idx - 1
                continue 
            idx = 0
            while idx < arg3 - arg2:
                if arg1 >= exchangesFactories.length:
                    revert with 0, 50
                mem[0] = 2
                if arg2 > !idx:
                    revert with 0, 17
                mem[mem[64] + 4] = arg2 + idx
                require ext_code.size(exchangesFactories[arg1])
                staticcall exchangesFactories[arg1].allPairs(uint256 rg1) with:
                        gas gas_remaining wei
                       args (arg2 + idx)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _282 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _284 = mem[_282]
                require mem[_282] == mem[_282 + 12 len 20]
                require ext_code.size(mem[_282 + 12 len 20])
                staticcall mem[_282 + 12 len 20].token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _290 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_290] == mem[_290 + 12 len 20]
                if idx >= mem[ceil32(return_data.size) + 96]:
                    revert with 0, 50
                mem[mem[(32 * idx) + ceil32(return_data.size) + 128]] = mem[_290 + 12 len 20]
                require ext_code.size(address(_284))
                staticcall address(_284).token1() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _302 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_302] == mem[_302 + 12 len 20]
                if idx >= mem[ceil32(return_data.size) + 96]:
                    revert with 0, 50
                mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 32] = mem[_302 + 12 len 20]
                if idx >= mem[ceil32(return_data.size) + 96]:
                    revert with 0, 50
                mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 64] = address(_284)
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            mem[mem[64]] = 32
            _269 = mem[ceil32(return_data.size) + 96]
            mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
            idx = 0
            s = mem[64] + 64
            t = ceil32(return_data.size) + 128
            while idx < _269:
                u = 0
                v = s
                w = mem[t]
                while u < 3:
                    mem[v] = mem[w + 12 len 20]
                    u = u + 1
                    v = v + 32
                    w = w + 32
                    continue 
                u = 4
                s = s + 96
                t = t + 32
                continue 
    else:
        if ext_call.return_data[0] < arg2:
            revert with 0, 'start cannot be higher than stop'
        if ext_call.return_data[0] - arg2 > test266151307():
            revert with 0, 65
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0] - arg2
        mem[64] = ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 128
        if not ext_call.return_data[0] - arg2:
            idx = 0
            while idx < ext_call.return_data[0] - arg2:
                if arg1 >= exchangesFactories.length:
                    revert with 0, 50
                mem[0] = 2
                if arg2 > !idx:
                    revert with 0, 17
                mem[mem[64] + 4] = arg2 + idx
                require ext_code.size(exchangesFactories[arg1])
                staticcall exchangesFactories[arg1].allPairs(uint256 rg1) with:
                        gas gas_remaining wei
                       args (arg2 + idx)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _134 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _139 = mem[_134]
                require mem[_134] == mem[_134 + 12 len 20]
                require ext_code.size(mem[_134 + 12 len 20])
                staticcall mem[_134 + 12 len 20].token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _157 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_157] == mem[_157 + 12 len 20]
                if idx >= mem[ceil32(return_data.size) + 96]:
                    revert with 0, 50
                mem[mem[(32 * idx) + ceil32(return_data.size) + 128]] = mem[_157 + 12 len 20]
                require ext_code.size(address(_139))
                staticcall address(_139).token1() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _177 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_177] == mem[_177 + 12 len 20]
                if idx >= mem[ceil32(return_data.size) + 96]:
                    revert with 0, 50
                mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 32] = mem[_177 + 12 len 20]
                if idx >= mem[ceil32(return_data.size) + 96]:
                    revert with 0, 50
                mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 64] = address(_139)
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            mem[mem[64]] = 32
            _117 = mem[ceil32(return_data.size) + 96]
            mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
            idx = 0
            s = mem[64] + 64
            t = ceil32(return_data.size) + 128
            while idx < _117:
                u = 0
                v = s
                w = mem[t]
                while u < 3:
                    mem[v] = mem[w + 12 len 20]
                    u = u + 1
                    v = v + 32
                    w = w + 32
                    continue 
                u = 4
                s = s + 96
                t = t + 32
                continue 
        else:
            mem[64] = ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 224
            mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 128 len 96] = call.data[calldata.size len 96]
            mem[var24001] = ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 128
            s = var24001
            idx = var24002
            while idx - 1:
                mem[64] = mem[64] + 96
                mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 128 len 96] = call.data[calldata.size len 96]
                mem[s + 32] = ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 128
                s = s + 32
                idx = idx - 1
                continue 
            idx = 0
            while idx < ext_call.return_data[0] - arg2:
                if arg1 >= exchangesFactories.length:
                    revert with 0, 50
                mem[0] = 2
                if arg2 > !idx:
                    revert with 0, 17
                mem[mem[64] + 4] = arg2 + idx
                require ext_code.size(exchangesFactories[arg1])
                staticcall exchangesFactories[arg1].allPairs(uint256 rg1) with:
                        gas gas_remaining wei
                       args (arg2 + idx)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _283 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _285 = mem[_283]
                require mem[_283] == mem[_283 + 12 len 20]
                require ext_code.size(mem[_283 + 12 len 20])
                staticcall mem[_283 + 12 len 20].token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _291 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_291] == mem[_291 + 12 len 20]
                if idx >= mem[ceil32(return_data.size) + 96]:
                    revert with 0, 50
                mem[mem[(32 * idx) + ceil32(return_data.size) + 128]] = mem[_291 + 12 len 20]
                require ext_code.size(address(_285))
                staticcall address(_285).token1() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _303 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_303] == mem[_303 + 12 len 20]
                if idx >= mem[ceil32(return_data.size) + 96]:
                    revert with 0, 50
                mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 32] = mem[_303 + 12 len 20]
                if idx >= mem[ceil32(return_data.size) + 96]:
                    revert with 0, 50
                mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 64] = address(_285)
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            mem[mem[64]] = 32
            _271 = mem[ceil32(return_data.size) + 96]
            mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
            idx = 0
            s = mem[64] + 64
            t = ceil32(return_data.size) + 128
            while idx < _271:
                u = 0
                v = s
                w = mem[t]
                while u < 3:
                    mem[v] = mem[w + 12 len 20]
                    u = u + 1
                    v = v + 32
                    w = w + 32
                    continue 
                u = 4
                s = s + 96
                t = t + 32
                continue 
    return memory
      from mem[64]
       len s - mem[64]
}

function startTrades(address[] arg1, address[] arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256 arg7, uint256 arg8, bool arg9) {
    require calldata.size - 4 >= 288
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    require test266151307() >= arg2
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    require arg9 == arg9
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg5 and arg8 > -1 / arg5:
        revert with 0, 17
    if arg5 < arg5 * arg8 / 10000:
        revert with 0, 17
    if 0 >= arg1.length:
        revert with 0, 50
    require cd[(arg1 + 36)] == address(cd[(arg1 + 36)])
    if arg4 >= exchangesRouters.length:
        revert with 0, 50
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[100] = this.address
    mem[132] = exchangesRouters[arg4]
    require ext_code.size(address(cd[(arg1 + 36)]))
    staticcall address(cd[(arg1 + 36)]).0xdd62ed3e with:
            gas gas_remaining wei
           args address(this.address), exchangesRouters[arg4]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= arg3:
        if not arg9:
            mem[ceil32(return_data.size) + 96] = arg1.length
            mem[ceil32(return_data.size) + 128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            if arg4 >= exchangesRouters.length:
                revert with 0, 50
            mem[ceil32(return_data.size) + (32 * arg1.length) + 128] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + (32 * arg1.length) + 132] = arg3
            mem[ceil32(return_data.size) + (32 * arg1.length) + 164] = arg5 - (arg5 * arg8 / 10000)
            mem[ceil32(return_data.size) + (32 * arg1.length) + 196] = 160
            mem[ceil32(return_data.size) + (32 * arg1.length) + 292] = arg1.length
            idx = 0
            s = ceil32(return_data.size) + 128
            t = ceil32(return_data.size) + (32 * arg1.length) + 324
            while idx < arg1.length:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[ceil32(return_data.size) + (32 * arg1.length) + 228] = this.address
            mem[ceil32(return_data.size) + (32 * arg1.length) + 260] = block.timestamp
            require ext_code.size(exchangesRouters[arg4])
            call exchangesRouters[arg4].swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args mem[ceil32(return_data.size) + (32 * arg1.length) + 132 len (96 * arg1.length) + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if 0 >= arg2.length:
                revert with 0, 50
            require cd[(arg2 + 36)] == address(cd[(arg2 + 36)])
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            mem[ceil32(return_data.size) + (32 * arg1.length) + 132] = this.address
            require ext_code.size(address(cd[(arg2 + 36)]))
            staticcall address(cd[(arg2 + 36)]).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[ceil32(return_data.size) + (32 * arg1.length) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            if arg7 and arg8 > -1 / arg7:
                revert with 0, 17
            if arg7 < arg7 * arg8 / 10000:
                revert with 0, 17
            if 0 >= arg2.length:
                revert with 0, 50
            require cd[(arg2 + 36)] == address(cd[(arg2 + 36)])
            if arg6 >= exchangesRouters.length:
                revert with 0, 50
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            mem[(2 * ceil32(return_data.size)) + (32 * arg1.length) + 132] = this.address
            mem[(2 * ceil32(return_data.size)) + (32 * arg1.length) + 164] = exchangesRouters[arg6]
            require ext_code.size(address(cd[(arg2 + 36)]))
            staticcall address(cd[(arg2 + 36)]).0xdd62ed3e with:
                    gas gas_remaining wei
                   args address(this.address), exchangesRouters[arg6]
            mem[(2 * ceil32(return_data.size)) + (32 * arg1.length) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] >= ext_call.return_data[0]:
                if not arg9:
                    mem[(4 * ceil32(return_data.size)) + (32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    if arg6 >= exchangesRouters.length:
                        revert with 0, 50
                    mem[(4 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 160] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 164] = ext_call.return_data[0]
                    mem[(4 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 196] = arg7 - (arg7 * arg8 / 10000)
                    mem[(4 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 228] = 160
                    mem[(4 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 324] = arg2.length
                    idx = 0
                    s = (4 * ceil32(return_data.size)) + (32 * arg1.length) + 160
                    t = (4 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 356
                    while idx < arg2.length:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(4 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 260] = this.address
                    mem[(4 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 292] = block.timestamp
                    require ext_code.size(exchangesRouters[arg6])
                    call exchangesRouters[arg6].swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args mem[(4 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 164 len (96 * arg2.length) + 192]
                else:
                    if 0 >= arg2.length:
                        revert with 0, 50
                    require cd[(arg2 + 36)] == address(cd[(arg2 + 36)])
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    mem[(4 * ceil32(return_data.size)) + (32 * arg1.length) + 132] = this.address
                    require ext_code.size(address(cd[(arg2 + 36)]))
                    staticcall address(cd[(arg2 + 36)]).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(6 * ceil32(return_data.size)) + (32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    if arg6 >= exchangesRouters.length:
                        revert with 0, 50
                    mem[(6 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 160] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                    mem[(6 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 164] = ext_call.return_data[0]
                    mem[(6 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 196] = arg7 - (arg7 * arg8 / 10000)
                    mem[(6 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 228] = 160
                    mem[(6 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 324] = arg2.length
                    idx = 0
                    s = (6 * ceil32(return_data.size)) + (32 * arg1.length) + 160
                    t = (6 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 356
                    while idx < arg2.length:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(6 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 260] = this.address
                    mem[(6 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 292] = block.timestamp
                    require ext_code.size(exchangesRouters[arg6])
                    call exchangesRouters[arg6].swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args mem[(6 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 164 len (96 * arg2.length) + 192]
            else:
                if 0 >= arg2.length:
                    revert with 0, 50
                require cd[(arg2 + 36)] == address(cd[(arg2 + 36)])
                if arg6 >= exchangesRouters.length:
                    revert with 0, 50
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                mem[(4 * ceil32(return_data.size)) + (32 * arg1.length) + 132] = exchangesRouters[arg6]
                mem[(4 * ceil32(return_data.size)) + (32 * arg1.length) + 164] = test266151307()
                require ext_code.size(address(cd[(arg2 + 36)]))
                call address(cd[(arg2 + 36)]).approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args exchangesRouters[arg6], test266151307()
                mem[(4 * ceil32(return_data.size)) + (32 * arg1.length) + 128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if not arg9:
                    mem[(6 * ceil32(return_data.size)) + (32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    if arg6 >= exchangesRouters.length:
                        revert with 0, 50
                    mem[(6 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 160] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                    mem[(6 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 164] = ext_call.return_data[0]
                    mem[(6 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 196] = arg7 - (arg7 * arg8 / 10000)
                    mem[(6 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 228] = 160
                    mem[(6 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 324] = arg2.length
                    idx = 0
                    s = (6 * ceil32(return_data.size)) + (32 * arg1.length) + 160
                    t = (6 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 356
                    while idx < arg2.length:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(6 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 260] = this.address
                    mem[(6 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 292] = block.timestamp
                    require ext_code.size(exchangesRouters[arg6])
                    call exchangesRouters[arg6].swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args mem[(6 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 164 len (96 * arg2.length) + 192]
                else:
                    if 0 >= arg2.length:
                        revert with 0, 50
                    require cd[(arg2 + 36)] == address(cd[(arg2 + 36)])
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    mem[(6 * ceil32(return_data.size)) + (32 * arg1.length) + 132] = this.address
                    require ext_code.size(address(cd[(arg2 + 36)]))
                    staticcall address(cd[(arg2 + 36)]).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(7 * ceil32(return_data.size)) + (32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    if arg6 >= exchangesRouters.length:
                        revert with 0, 50
                    mem[(7 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 160] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                    mem[(7 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 164] = ext_call.return_data[0]
                    mem[(7 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 196] = arg7 - (arg7 * arg8 / 10000)
                    mem[(7 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 228] = 160
                    mem[(7 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 324] = arg2.length
                    idx = 0
                    s = (7 * ceil32(return_data.size)) + (32 * arg1.length) + 160
                    t = (7 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 356
                    while idx < arg2.length:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(7 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 260] = this.address
                    mem[(7 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 292] = block.timestamp
                    require ext_code.size(exchangesRouters[arg6])
                    call exchangesRouters[arg6].swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args mem[(7 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 164 len (96 * arg2.length) + 192]
        else:
            if 0 >= arg1.length:
                revert with 0, 50
            require cd[(arg1 + 36)] == address(cd[(arg1 + 36)])
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            mem[ceil32(return_data.size) + 100] = this.address
            require ext_code.size(address(cd[(arg1 + 36)]))
            staticcall address(cd[(arg1 + 36)]).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(2 * ceil32(return_data.size)) + 96] = arg1.length
            mem[(2 * ceil32(return_data.size)) + 128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            if arg4 >= exchangesRouters.length:
                revert with 0, 50
            mem[(2 * ceil32(return_data.size)) + (32 * arg1.length) + 128] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
            mem[(2 * ceil32(return_data.size)) + (32 * arg1.length) + 132] = ext_call.return_data[0]
            mem[(2 * ceil32(return_data.size)) + (32 * arg1.length) + 164] = arg5 - (arg5 * arg8 / 10000)
            mem[(2 * ceil32(return_data.size)) + (32 * arg1.length) + 196] = 160
            mem[(2 * ceil32(return_data.size)) + (32 * arg1.length) + 292] = arg1.length
            idx = 0
            s = (2 * ceil32(return_data.size)) + 128
            t = (2 * ceil32(return_data.size)) + (32 * arg1.length) + 324
            while idx < arg1.length:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(2 * ceil32(return_data.size)) + (32 * arg1.length) + 228] = this.address
            mem[(2 * ceil32(return_data.size)) + (32 * arg1.length) + 260] = block.timestamp
            require ext_code.size(exchangesRouters[arg4])
            call exchangesRouters[arg4].swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args mem[(2 * ceil32(return_data.size)) + (32 * arg1.length) + 132 len (96 * arg1.length) + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if 0 >= arg2.length:
                revert with 0, 50
            require cd[(arg2 + 36)] == address(cd[(arg2 + 36)])
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            mem[(2 * ceil32(return_data.size)) + (32 * arg1.length) + 132] = this.address
            require ext_code.size(address(cd[(arg2 + 36)]))
            staticcall address(cd[(arg2 + 36)]).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[(2 * ceil32(return_data.size)) + (32 * arg1.length) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            if arg7 and arg8 > -1 / arg7:
                revert with 0, 17
            if arg7 < arg7 * arg8 / 10000:
                revert with 0, 17
            if 0 >= arg2.length:
                revert with 0, 50
            require cd[(arg2 + 36)] == address(cd[(arg2 + 36)])
            if arg6 >= exchangesRouters.length:
                revert with 0, 50
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            mem[(4 * ceil32(return_data.size)) + (32 * arg1.length) + 132] = this.address
            mem[(4 * ceil32(return_data.size)) + (32 * arg1.length) + 164] = exchangesRouters[arg6]
            require ext_code.size(address(cd[(arg2 + 36)]))
            staticcall address(cd[(arg2 + 36)]).0xdd62ed3e with:
                    gas gas_remaining wei
                   args address(this.address), exchangesRouters[arg6]
            mem[(4 * ceil32(return_data.size)) + (32 * arg1.length) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] >= ext_call.return_data[0]:
                if not arg9:
                    mem[(6 * ceil32(return_data.size)) + (32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    if arg6 >= exchangesRouters.length:
                        revert with 0, 50
                    mem[(6 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 160] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                    mem[(6 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 164] = ext_call.return_data[0]
                    mem[(6 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 196] = arg7 - (arg7 * arg8 / 10000)
                    mem[(6 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 228] = 160
                    mem[(6 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 324] = arg2.length
                    idx = 0
                    s = (6 * ceil32(return_data.size)) + (32 * arg1.length) + 160
                    t = (6 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 356
                    while idx < arg2.length:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(6 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 260] = this.address
                    mem[(6 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 292] = block.timestamp
                    require ext_code.size(exchangesRouters[arg6])
                    call exchangesRouters[arg6].swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args mem[(6 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 164 len (96 * arg2.length) + 192]
                else:
                    if 0 >= arg2.length:
                        revert with 0, 50
                    require cd[(arg2 + 36)] == address(cd[(arg2 + 36)])
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    mem[(6 * ceil32(return_data.size)) + (32 * arg1.length) + 132] = this.address
                    require ext_code.size(address(cd[(arg2 + 36)]))
                    staticcall address(cd[(arg2 + 36)]).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(7 * ceil32(return_data.size)) + (32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    if arg6 >= exchangesRouters.length:
                        revert with 0, 50
                    mem[(7 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 160] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                    mem[(7 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 164] = ext_call.return_data[0]
                    mem[(7 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 196] = arg7 - (arg7 * arg8 / 10000)
                    mem[(7 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 228] = 160
                    mem[(7 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 324] = arg2.length
                    idx = 0
                    s = (7 * ceil32(return_data.size)) + (32 * arg1.length) + 160
                    t = (7 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 356
                    while idx < arg2.length:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(7 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 260] = this.address
                    mem[(7 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 292] = block.timestamp
                    require ext_code.size(exchangesRouters[arg6])
                    call exchangesRouters[arg6].swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args mem[(7 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 164 len (96 * arg2.length) + 192]
            else:
                if 0 >= arg2.length:
                    revert with 0, 50
                require cd[(arg2 + 36)] == address(cd[(arg2 + 36)])
                if arg6 >= exchangesRouters.length:
                    revert with 0, 50
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                mem[(6 * ceil32(return_data.size)) + (32 * arg1.length) + 132] = exchangesRouters[arg6]
                mem[(6 * ceil32(return_data.size)) + (32 * arg1.length) + 164] = test266151307()
                require ext_code.size(address(cd[(arg2 + 36)]))
                call address(cd[(arg2 + 36)]).approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args exchangesRouters[arg6], test266151307()
                mem[(6 * ceil32(return_data.size)) + (32 * arg1.length) + 128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if not arg9:
                    mem[(7 * ceil32(return_data.size)) + (32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    if arg6 >= exchangesRouters.length:
                        revert with 0, 50
                    mem[(7 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 160] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                    mem[(7 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 164] = ext_call.return_data[0]
                    mem[(7 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 196] = arg7 - (arg7 * arg8 / 10000)
                    mem[(7 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 228] = 160
                    mem[(7 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 324] = arg2.length
                    idx = 0
                    s = (7 * ceil32(return_data.size)) + (32 * arg1.length) + 160
                    t = (7 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 356
                    while idx < arg2.length:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(7 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 260] = this.address
                    mem[(7 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 292] = block.timestamp
                    require ext_code.size(exchangesRouters[arg6])
                    call exchangesRouters[arg6].swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args mem[(7 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 164 len (96 * arg2.length) + 192]
                else:
                    if 0 >= arg2.length:
                        revert with 0, 50
                    require cd[(arg2 + 36)] == address(cd[(arg2 + 36)])
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    mem[(7 * ceil32(return_data.size)) + (32 * arg1.length) + 132] = this.address
                    require ext_code.size(address(cd[(arg2 + 36)]))
                    staticcall address(cd[(arg2 + 36)]).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[(7 * ceil32(return_data.size)) + (32 * arg1.length) + 128] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(8 * ceil32(return_data.size)) + (32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    if arg6 >= exchangesRouters.length:
                        revert with 0, 50
                    mem[(8 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 160] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                    mem[(8 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 164] = ext_call.return_data[0]
                    mem[(8 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 196] = arg7 - (arg7 * arg8 / 10000)
                    mem[(8 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 228] = 160
                    mem[(8 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 324] = arg2.length
                    idx = 0
                    s = (8 * ceil32(return_data.size)) + (32 * arg1.length) + 160
                    t = (8 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 356
                    while idx < arg2.length:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(8 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 260] = this.address
                    mem[(8 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 292] = block.timestamp
                    require ext_code.size(exchangesRouters[arg6])
                    call exchangesRouters[arg6].swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args mem[(8 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 164 len (96 * arg2.length) + 192]
    else:
        if 0 >= arg1.length:
            revert with 0, 50
        require cd[(arg1 + 36)] == address(cd[(arg1 + 36)])
        if arg4 >= exchangesRouters.length:
            revert with 0, 50
        if owner != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
        mem[ceil32(return_data.size) + 100] = exchangesRouters[arg4]
        mem[ceil32(return_data.size) + 132] = test266151307()
        require ext_code.size(address(cd[(arg1 + 36)]))
        call address(cd[(arg1 + 36)]).approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args exchangesRouters[arg4], test266151307()
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not arg9:
            mem[(2 * ceil32(return_data.size)) + 96] = arg1.length
            mem[(2 * ceil32(return_data.size)) + 128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            if arg4 >= exchangesRouters.length:
                revert with 0, 50
            mem[(2 * ceil32(return_data.size)) + (32 * arg1.length) + 128] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
            mem[(2 * ceil32(return_data.size)) + (32 * arg1.length) + 132] = arg3
            mem[(2 * ceil32(return_data.size)) + (32 * arg1.length) + 164] = arg5 - (arg5 * arg8 / 10000)
            mem[(2 * ceil32(return_data.size)) + (32 * arg1.length) + 196] = 160
            mem[(2 * ceil32(return_data.size)) + (32 * arg1.length) + 292] = arg1.length
            idx = 0
            s = (2 * ceil32(return_data.size)) + 128
            t = (2 * ceil32(return_data.size)) + (32 * arg1.length) + 324
            while idx < arg1.length:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(2 * ceil32(return_data.size)) + (32 * arg1.length) + 228] = this.address
            mem[(2 * ceil32(return_data.size)) + (32 * arg1.length) + 260] = block.timestamp
            require ext_code.size(exchangesRouters[arg4])
            call exchangesRouters[arg4].swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args mem[(2 * ceil32(return_data.size)) + (32 * arg1.length) + 132 len (96 * arg1.length) + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if 0 >= arg2.length:
                revert with 0, 50
            require cd[(arg2 + 36)] == address(cd[(arg2 + 36)])
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            mem[(2 * ceil32(return_data.size)) + (32 * arg1.length) + 132] = this.address
            require ext_code.size(address(cd[(arg2 + 36)]))
            staticcall address(cd[(arg2 + 36)]).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[(2 * ceil32(return_data.size)) + (32 * arg1.length) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            if arg7 and arg8 > -1 / arg7:
                revert with 0, 17
            if arg7 < arg7 * arg8 / 10000:
                revert with 0, 17
            if 0 >= arg2.length:
                revert with 0, 50
            require cd[(arg2 + 36)] == address(cd[(arg2 + 36)])
            if arg6 >= exchangesRouters.length:
                revert with 0, 50
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            mem[(4 * ceil32(return_data.size)) + (32 * arg1.length) + 132] = this.address
            mem[(4 * ceil32(return_data.size)) + (32 * arg1.length) + 164] = exchangesRouters[arg6]
            require ext_code.size(address(cd[(arg2 + 36)]))
            staticcall address(cd[(arg2 + 36)]).0xdd62ed3e with:
                    gas gas_remaining wei
                   args address(this.address), exchangesRouters[arg6]
            mem[(4 * ceil32(return_data.size)) + (32 * arg1.length) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] >= ext_call.return_data[0]:
                if not arg9:
                    mem[(6 * ceil32(return_data.size)) + (32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    if arg6 >= exchangesRouters.length:
                        revert with 0, 50
                    mem[(6 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 160] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                    mem[(6 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 164] = ext_call.return_data[0]
                    mem[(6 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 196] = arg7 - (arg7 * arg8 / 10000)
                    mem[(6 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 228] = 160
                    mem[(6 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 324] = arg2.length
                    idx = 0
                    s = (6 * ceil32(return_data.size)) + (32 * arg1.length) + 160
                    t = (6 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 356
                    while idx < arg2.length:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(6 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 260] = this.address
                    mem[(6 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 292] = block.timestamp
                    require ext_code.size(exchangesRouters[arg6])
                    call exchangesRouters[arg6].swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args mem[(6 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 164 len (96 * arg2.length) + 192]
                else:
                    if 0 >= arg2.length:
                        revert with 0, 50
                    require cd[(arg2 + 36)] == address(cd[(arg2 + 36)])
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    mem[(6 * ceil32(return_data.size)) + (32 * arg1.length) + 132] = this.address
                    require ext_code.size(address(cd[(arg2 + 36)]))
                    staticcall address(cd[(arg2 + 36)]).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(7 * ceil32(return_data.size)) + (32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    if arg6 >= exchangesRouters.length:
                        revert with 0, 50
                    mem[(7 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 160] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                    mem[(7 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 164] = ext_call.return_data[0]
                    mem[(7 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 196] = arg7 - (arg7 * arg8 / 10000)
                    mem[(7 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 228] = 160
                    mem[(7 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 324] = arg2.length
                    idx = 0
                    s = (7 * ceil32(return_data.size)) + (32 * arg1.length) + 160
                    t = (7 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 356
                    while idx < arg2.length:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(7 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 260] = this.address
                    mem[(7 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 292] = block.timestamp
                    require ext_code.size(exchangesRouters[arg6])
                    call exchangesRouters[arg6].swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args mem[(7 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 164 len (96 * arg2.length) + 192]
            else:
                if 0 >= arg2.length:
                    revert with 0, 50
                require cd[(arg2 + 36)] == address(cd[(arg2 + 36)])
                if arg6 >= exchangesRouters.length:
                    revert with 0, 50
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                mem[(6 * ceil32(return_data.size)) + (32 * arg1.length) + 132] = exchangesRouters[arg6]
                mem[(6 * ceil32(return_data.size)) + (32 * arg1.length) + 164] = test266151307()
                require ext_code.size(address(cd[(arg2 + 36)]))
                call address(cd[(arg2 + 36)]).approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args exchangesRouters[arg6], test266151307()
                mem[(6 * ceil32(return_data.size)) + (32 * arg1.length) + 128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if not arg9:
                    mem[(7 * ceil32(return_data.size)) + (32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    if arg6 >= exchangesRouters.length:
                        revert with 0, 50
                    mem[(7 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 160] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                    mem[(7 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 164] = ext_call.return_data[0]
                    mem[(7 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 196] = arg7 - (arg7 * arg8 / 10000)
                    mem[(7 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 228] = 160
                    mem[(7 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 324] = arg2.length
                    idx = 0
                    s = (7 * ceil32(return_data.size)) + (32 * arg1.length) + 160
                    t = (7 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 356
                    while idx < arg2.length:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(7 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 260] = this.address
                    mem[(7 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 292] = block.timestamp
                    require ext_code.size(exchangesRouters[arg6])
                    call exchangesRouters[arg6].swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args mem[(7 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 164 len (96 * arg2.length) + 192]
                else:
                    if 0 >= arg2.length:
                        revert with 0, 50
                    require cd[(arg2 + 36)] == address(cd[(arg2 + 36)])
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    mem[(7 * ceil32(return_data.size)) + (32 * arg1.length) + 132] = this.address
                    require ext_code.size(address(cd[(arg2 + 36)]))
                    staticcall address(cd[(arg2 + 36)]).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[(7 * ceil32(return_data.size)) + (32 * arg1.length) + 128] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(8 * ceil32(return_data.size)) + (32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    if arg6 >= exchangesRouters.length:
                        revert with 0, 50
                    mem[(8 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 160] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                    mem[(8 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 164] = ext_call.return_data[0]
                    mem[(8 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 196] = arg7 - (arg7 * arg8 / 10000)
                    mem[(8 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 228] = 160
                    mem[(8 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 324] = arg2.length
                    idx = 0
                    s = (8 * ceil32(return_data.size)) + (32 * arg1.length) + 160
                    t = (8 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 356
                    while idx < arg2.length:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(8 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 260] = this.address
                    mem[(8 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 292] = block.timestamp
                    require ext_code.size(exchangesRouters[arg6])
                    call exchangesRouters[arg6].swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args mem[(8 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 164 len (96 * arg2.length) + 192]
        else:
            if 0 >= arg1.length:
                revert with 0, 50
            require cd[(arg1 + 36)] == address(cd[(arg1 + 36)])
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            mem[(2 * ceil32(return_data.size)) + 100] = this.address
            require ext_code.size(address(cd[(arg1 + 36)]))
            staticcall address(cd[(arg1 + 36)]).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(4 * ceil32(return_data.size)) + 96] = arg1.length
            mem[(4 * ceil32(return_data.size)) + 128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            if arg4 >= exchangesRouters.length:
                revert with 0, 50
            mem[(4 * ceil32(return_data.size)) + (32 * arg1.length) + 128] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
            mem[(4 * ceil32(return_data.size)) + (32 * arg1.length) + 132] = ext_call.return_data[0]
            mem[(4 * ceil32(return_data.size)) + (32 * arg1.length) + 164] = arg5 - (arg5 * arg8 / 10000)
            mem[(4 * ceil32(return_data.size)) + (32 * arg1.length) + 196] = 160
            mem[(4 * ceil32(return_data.size)) + (32 * arg1.length) + 292] = arg1.length
            idx = 0
            s = (4 * ceil32(return_data.size)) + 128
            t = (4 * ceil32(return_data.size)) + (32 * arg1.length) + 324
            while idx < arg1.length:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(4 * ceil32(return_data.size)) + (32 * arg1.length) + 228] = this.address
            mem[(4 * ceil32(return_data.size)) + (32 * arg1.length) + 260] = block.timestamp
            require ext_code.size(exchangesRouters[arg4])
            call exchangesRouters[arg4].swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args mem[(4 * ceil32(return_data.size)) + (32 * arg1.length) + 132 len (96 * arg1.length) + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if 0 >= arg2.length:
                revert with 0, 50
            require cd[(arg2 + 36)] == address(cd[(arg2 + 36)])
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            mem[(4 * ceil32(return_data.size)) + (32 * arg1.length) + 132] = this.address
            require ext_code.size(address(cd[(arg2 + 36)]))
            staticcall address(cd[(arg2 + 36)]).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[(4 * ceil32(return_data.size)) + (32 * arg1.length) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            if arg7 and arg8 > -1 / arg7:
                revert with 0, 17
            if arg7 < arg7 * arg8 / 10000:
                revert with 0, 17
            if 0 >= arg2.length:
                revert with 0, 50
            require cd[(arg2 + 36)] == address(cd[(arg2 + 36)])
            if arg6 >= exchangesRouters.length:
                revert with 0, 50
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            mem[(6 * ceil32(return_data.size)) + (32 * arg1.length) + 132] = this.address
            mem[(6 * ceil32(return_data.size)) + (32 * arg1.length) + 164] = exchangesRouters[arg6]
            require ext_code.size(address(cd[(arg2 + 36)]))
            staticcall address(cd[(arg2 + 36)]).0xdd62ed3e with:
                    gas gas_remaining wei
                   args address(this.address), exchangesRouters[arg6]
            mem[(6 * ceil32(return_data.size)) + (32 * arg1.length) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] >= ext_call.return_data[0]:
                if not arg9:
                    mem[(7 * ceil32(return_data.size)) + (32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    if arg6 >= exchangesRouters.length:
                        revert with 0, 50
                    mem[(7 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 160] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                    mem[(7 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 164] = ext_call.return_data[0]
                    mem[(7 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 196] = arg7 - (arg7 * arg8 / 10000)
                    mem[(7 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 228] = 160
                    mem[(7 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 324] = arg2.length
                    idx = 0
                    s = (7 * ceil32(return_data.size)) + (32 * arg1.length) + 160
                    t = (7 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 356
                    while idx < arg2.length:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(7 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 260] = this.address
                    mem[(7 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 292] = block.timestamp
                    require ext_code.size(exchangesRouters[arg6])
                    call exchangesRouters[arg6].swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args mem[(7 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 164 len (96 * arg2.length) + 192]
                else:
                    if 0 >= arg2.length:
                        revert with 0, 50
                    require cd[(arg2 + 36)] == address(cd[(arg2 + 36)])
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    mem[(7 * ceil32(return_data.size)) + (32 * arg1.length) + 132] = this.address
                    require ext_code.size(address(cd[(arg2 + 36)]))
                    staticcall address(cd[(arg2 + 36)]).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[(7 * ceil32(return_data.size)) + (32 * arg1.length) + 128] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(8 * ceil32(return_data.size)) + (32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    if arg6 >= exchangesRouters.length:
                        revert with 0, 50
                    mem[(8 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 160] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                    mem[(8 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 164] = ext_call.return_data[0]
                    mem[(8 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 196] = arg7 - (arg7 * arg8 / 10000)
                    mem[(8 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 228] = 160
                    mem[(8 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 324] = arg2.length
                    idx = 0
                    s = (8 * ceil32(return_data.size)) + (32 * arg1.length) + 160
                    t = (8 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 356
                    while idx < arg2.length:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(8 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 260] = this.address
                    mem[(8 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 292] = block.timestamp
                    require ext_code.size(exchangesRouters[arg6])
                    call exchangesRouters[arg6].swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args mem[(8 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 164 len (96 * arg2.length) + 192]
            else:
                if 0 >= arg2.length:
                    revert with 0, 50
                require cd[(arg2 + 36)] == address(cd[(arg2 + 36)])
                if arg6 >= exchangesRouters.length:
                    revert with 0, 50
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                mem[(7 * ceil32(return_data.size)) + (32 * arg1.length) + 132] = exchangesRouters[arg6]
                mem[(7 * ceil32(return_data.size)) + (32 * arg1.length) + 164] = test266151307()
                require ext_code.size(address(cd[(arg2 + 36)]))
                call address(cd[(arg2 + 36)]).approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args exchangesRouters[arg6], test266151307()
                mem[(7 * ceil32(return_data.size)) + (32 * arg1.length) + 128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if not arg9:
                    mem[(8 * ceil32(return_data.size)) + (32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    if arg6 >= exchangesRouters.length:
                        revert with 0, 50
                    mem[(8 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 160] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                    mem[(8 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 164] = ext_call.return_data[0]
                    mem[(8 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 196] = arg7 - (arg7 * arg8 / 10000)
                    mem[(8 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 228] = 160
                    mem[(8 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 324] = arg2.length
                    idx = 0
                    s = (8 * ceil32(return_data.size)) + (32 * arg1.length) + 160
                    t = (8 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 356
                    while idx < arg2.length:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(8 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 260] = this.address
                    mem[(8 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 292] = block.timestamp
                    require ext_code.size(exchangesRouters[arg6])
                    call exchangesRouters[arg6].swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args mem[(8 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 164 len (96 * arg2.length) + 192]
                else:
                    if 0 >= arg2.length:
                        revert with 0, 50
                    require cd[(arg2 + 36)] == address(cd[(arg2 + 36)])
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    mem[(8 * ceil32(return_data.size)) + (32 * arg1.length) + 132] = this.address
                    require ext_code.size(address(cd[(arg2 + 36)]))
                    staticcall address(cd[(arg2 + 36)]).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(10 * ceil32(return_data.size)) + (32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    if arg6 >= exchangesRouters.length:
                        revert with 0, 50
                    mem[(10 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 160] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                    mem[(10 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 164] = ext_call.return_data[0]
                    mem[(10 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 196] = arg7 - (arg7 * arg8 / 10000)
                    mem[(10 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 228] = 160
                    mem[(10 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 324] = arg2.length
                    idx = 0
                    s = (10 * ceil32(return_data.size)) + (32 * arg1.length) + 160
                    t = (10 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 356
                    while idx < arg2.length:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(10 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 260] = this.address
                    mem[(10 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 292] = block.timestamp
                    require ext_code.size(exchangesRouters[arg6])
                    call exchangesRouters[arg6].swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args mem[(10 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 164 len (96 * arg2.length) + 192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function startTradesWithChi(address[] arg1, address[] arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256 arg7, uint256 arg8, bool arg9) {
    require calldata.size - 4 >= 288
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    require test266151307() >= arg2
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    require arg9 == arg9
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg5 and arg8 > -1 / arg5:
        revert with 0, 17
    if arg5 < arg5 * arg8 / 10000:
        revert with 0, 17
    if 0 >= arg1.length:
        revert with 0, 50
    require cd[(arg1 + 36)] == address(cd[(arg1 + 36)])
    if arg4 >= exchangesRouters.length:
        revert with 0, 50
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[100] = this.address
    mem[132] = exchangesRouters[arg4]
    require ext_code.size(address(cd[(arg1 + 36)]))
    staticcall address(cd[(arg1 + 36)]).0xdd62ed3e with:
            gas gas_remaining wei
           args address(this.address), exchangesRouters[arg4]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= arg3:
        if not arg9:
            mem[ceil32(return_data.size) + 96] = arg1.length
            mem[ceil32(return_data.size) + 128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            if arg4 >= exchangesRouters.length:
                revert with 0, 50
            mem[ceil32(return_data.size) + (32 * arg1.length) + 128] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + (32 * arg1.length) + 132] = arg3
            mem[ceil32(return_data.size) + (32 * arg1.length) + 164] = arg5 - (arg5 * arg8 / 10000)
            mem[ceil32(return_data.size) + (32 * arg1.length) + 196] = 160
            mem[ceil32(return_data.size) + (32 * arg1.length) + 292] = arg1.length
            idx = 0
            s = ceil32(return_data.size) + 128
            t = ceil32(return_data.size) + (32 * arg1.length) + 324
            while idx < arg1.length:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[ceil32(return_data.size) + (32 * arg1.length) + 228] = this.address
            mem[ceil32(return_data.size) + (32 * arg1.length) + 260] = block.timestamp
            require ext_code.size(exchangesRouters[arg4])
            call exchangesRouters[arg4].swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args mem[ceil32(return_data.size) + (32 * arg1.length) + 132 len (96 * arg1.length) + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if 0 >= arg2.length:
                revert with 0, 50
            require cd[(arg2 + 36)] == address(cd[(arg2 + 36)])
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            mem[ceil32(return_data.size) + (32 * arg1.length) + 132] = this.address
            require ext_code.size(address(cd[(arg2 + 36)]))
            staticcall address(cd[(arg2 + 36)]).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[ceil32(return_data.size) + (32 * arg1.length) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            if arg7 and arg8 > -1 / arg7:
                revert with 0, 17
            if arg7 < arg7 * arg8 / 10000:
                revert with 0, 17
            if 0 >= arg2.length:
                revert with 0, 50
            require cd[(arg2 + 36)] == address(cd[(arg2 + 36)])
            if arg6 >= exchangesRouters.length:
                revert with 0, 50
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            mem[(2 * ceil32(return_data.size)) + (32 * arg1.length) + 132] = this.address
            mem[(2 * ceil32(return_data.size)) + (32 * arg1.length) + 164] = exchangesRouters[arg6]
            require ext_code.size(address(cd[(arg2 + 36)]))
            staticcall address(cd[(arg2 + 36)]).0xdd62ed3e with:
                    gas gas_remaining wei
                   args address(this.address), exchangesRouters[arg6]
            mem[(2 * ceil32(return_data.size)) + (32 * arg1.length) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] >= ext_call.return_data[0]:
                if not arg9:
                    mem[(4 * ceil32(return_data.size)) + (32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    if arg6 >= exchangesRouters.length:
                        revert with 0, 50
                    mem[(4 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 160] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 164] = ext_call.return_data[0]
                    mem[(4 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 196] = arg7 - (arg7 * arg8 / 10000)
                    mem[(4 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 228] = 160
                    mem[(4 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 324] = arg2.length
                    idx = 0
                    s = (4 * ceil32(return_data.size)) + (32 * arg1.length) + 160
                    t = (4 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 356
                    while idx < arg2.length:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(4 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 260] = this.address
                    mem[(4 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 292] = block.timestamp
                    require ext_code.size(exchangesRouters[arg6])
                    call exchangesRouters[arg6].swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args mem[(4 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 164 len (96 * arg2.length) + 192]
                else:
                    if 0 >= arg2.length:
                        revert with 0, 50
                    require cd[(arg2 + 36)] == address(cd[(arg2 + 36)])
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    mem[(4 * ceil32(return_data.size)) + (32 * arg1.length) + 132] = this.address
                    require ext_code.size(address(cd[(arg2 + 36)]))
                    staticcall address(cd[(arg2 + 36)]).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(6 * ceil32(return_data.size)) + (32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    if arg6 >= exchangesRouters.length:
                        revert with 0, 50
                    mem[(6 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 160] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                    mem[(6 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 164] = ext_call.return_data[0]
                    mem[(6 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 196] = arg7 - (arg7 * arg8 / 10000)
                    mem[(6 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 228] = 160
                    mem[(6 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 324] = arg2.length
                    idx = 0
                    s = (6 * ceil32(return_data.size)) + (32 * arg1.length) + 160
                    t = (6 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 356
                    while idx < arg2.length:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(6 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 260] = this.address
                    mem[(6 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 292] = block.timestamp
                    require ext_code.size(exchangesRouters[arg6])
                    call exchangesRouters[arg6].swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args mem[(6 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 164 len (96 * arg2.length) + 192]
            else:
                if 0 >= arg2.length:
                    revert with 0, 50
                require cd[(arg2 + 36)] == address(cd[(arg2 + 36)])
                if arg6 >= exchangesRouters.length:
                    revert with 0, 50
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                mem[(4 * ceil32(return_data.size)) + (32 * arg1.length) + 132] = exchangesRouters[arg6]
                mem[(4 * ceil32(return_data.size)) + (32 * arg1.length) + 164] = test266151307()
                require ext_code.size(address(cd[(arg2 + 36)]))
                call address(cd[(arg2 + 36)]).approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args exchangesRouters[arg6], test266151307()
                mem[(4 * ceil32(return_data.size)) + (32 * arg1.length) + 128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if not arg9:
                    mem[(6 * ceil32(return_data.size)) + (32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    if arg6 >= exchangesRouters.length:
                        revert with 0, 50
                    mem[(6 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 160] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                    mem[(6 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 164] = ext_call.return_data[0]
                    mem[(6 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 196] = arg7 - (arg7 * arg8 / 10000)
                    mem[(6 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 228] = 160
                    mem[(6 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 324] = arg2.length
                    idx = 0
                    s = (6 * ceil32(return_data.size)) + (32 * arg1.length) + 160
                    t = (6 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 356
                    while idx < arg2.length:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(6 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 260] = this.address
                    mem[(6 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 292] = block.timestamp
                    require ext_code.size(exchangesRouters[arg6])
                    call exchangesRouters[arg6].swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args mem[(6 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 164 len (96 * arg2.length) + 192]
                else:
                    if 0 >= arg2.length:
                        revert with 0, 50
                    require cd[(arg2 + 36)] == address(cd[(arg2 + 36)])
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    mem[(6 * ceil32(return_data.size)) + (32 * arg1.length) + 132] = this.address
                    require ext_code.size(address(cd[(arg2 + 36)]))
                    staticcall address(cd[(arg2 + 36)]).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(7 * ceil32(return_data.size)) + (32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    if arg6 >= exchangesRouters.length:
                        revert with 0, 50
                    mem[(7 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 160] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                    mem[(7 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 164] = ext_call.return_data[0]
                    mem[(7 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 196] = arg7 - (arg7 * arg8 / 10000)
                    mem[(7 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 228] = 160
                    mem[(7 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 324] = arg2.length
                    idx = 0
                    s = (7 * ceil32(return_data.size)) + (32 * arg1.length) + 160
                    t = (7 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 356
                    while idx < arg2.length:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(7 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 260] = this.address
                    mem[(7 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 292] = block.timestamp
                    require ext_code.size(exchangesRouters[arg6])
                    call exchangesRouters[arg6].swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args mem[(7 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 164 len (96 * arg2.length) + 192]
        else:
            if 0 >= arg1.length:
                revert with 0, 50
            require cd[(arg1 + 36)] == address(cd[(arg1 + 36)])
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            mem[ceil32(return_data.size) + 100] = this.address
            require ext_code.size(address(cd[(arg1 + 36)]))
            staticcall address(cd[(arg1 + 36)]).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(2 * ceil32(return_data.size)) + 96] = arg1.length
            mem[(2 * ceil32(return_data.size)) + 128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            if arg4 >= exchangesRouters.length:
                revert with 0, 50
            mem[(2 * ceil32(return_data.size)) + (32 * arg1.length) + 128] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
            mem[(2 * ceil32(return_data.size)) + (32 * arg1.length) + 132] = ext_call.return_data[0]
            mem[(2 * ceil32(return_data.size)) + (32 * arg1.length) + 164] = arg5 - (arg5 * arg8 / 10000)
            mem[(2 * ceil32(return_data.size)) + (32 * arg1.length) + 196] = 160
            mem[(2 * ceil32(return_data.size)) + (32 * arg1.length) + 292] = arg1.length
            idx = 0
            s = (2 * ceil32(return_data.size)) + 128
            t = (2 * ceil32(return_data.size)) + (32 * arg1.length) + 324
            while idx < arg1.length:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(2 * ceil32(return_data.size)) + (32 * arg1.length) + 228] = this.address
            mem[(2 * ceil32(return_data.size)) + (32 * arg1.length) + 260] = block.timestamp
            require ext_code.size(exchangesRouters[arg4])
            call exchangesRouters[arg4].swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args mem[(2 * ceil32(return_data.size)) + (32 * arg1.length) + 132 len (96 * arg1.length) + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if 0 >= arg2.length:
                revert with 0, 50
            require cd[(arg2 + 36)] == address(cd[(arg2 + 36)])
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            mem[(2 * ceil32(return_data.size)) + (32 * arg1.length) + 132] = this.address
            require ext_code.size(address(cd[(arg2 + 36)]))
            staticcall address(cd[(arg2 + 36)]).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[(2 * ceil32(return_data.size)) + (32 * arg1.length) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            if arg7 and arg8 > -1 / arg7:
                revert with 0, 17
            if arg7 < arg7 * arg8 / 10000:
                revert with 0, 17
            if 0 >= arg2.length:
                revert with 0, 50
            require cd[(arg2 + 36)] == address(cd[(arg2 + 36)])
            if arg6 >= exchangesRouters.length:
                revert with 0, 50
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            mem[(4 * ceil32(return_data.size)) + (32 * arg1.length) + 132] = this.address
            mem[(4 * ceil32(return_data.size)) + (32 * arg1.length) + 164] = exchangesRouters[arg6]
            require ext_code.size(address(cd[(arg2 + 36)]))
            staticcall address(cd[(arg2 + 36)]).0xdd62ed3e with:
                    gas gas_remaining wei
                   args address(this.address), exchangesRouters[arg6]
            mem[(4 * ceil32(return_data.size)) + (32 * arg1.length) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] >= ext_call.return_data[0]:
                if not arg9:
                    mem[(6 * ceil32(return_data.size)) + (32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    if arg6 >= exchangesRouters.length:
                        revert with 0, 50
                    mem[(6 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 160] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                    mem[(6 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 164] = ext_call.return_data[0]
                    mem[(6 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 196] = arg7 - (arg7 * arg8 / 10000)
                    mem[(6 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 228] = 160
                    mem[(6 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 324] = arg2.length
                    idx = 0
                    s = (6 * ceil32(return_data.size)) + (32 * arg1.length) + 160
                    t = (6 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 356
                    while idx < arg2.length:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(6 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 260] = this.address
                    mem[(6 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 292] = block.timestamp
                    require ext_code.size(exchangesRouters[arg6])
                    call exchangesRouters[arg6].swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args mem[(6 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 164 len (96 * arg2.length) + 192]
                else:
                    if 0 >= arg2.length:
                        revert with 0, 50
                    require cd[(arg2 + 36)] == address(cd[(arg2 + 36)])
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    mem[(6 * ceil32(return_data.size)) + (32 * arg1.length) + 132] = this.address
                    require ext_code.size(address(cd[(arg2 + 36)]))
                    staticcall address(cd[(arg2 + 36)]).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(7 * ceil32(return_data.size)) + (32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    if arg6 >= exchangesRouters.length:
                        revert with 0, 50
                    mem[(7 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 160] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                    mem[(7 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 164] = ext_call.return_data[0]
                    mem[(7 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 196] = arg7 - (arg7 * arg8 / 10000)
                    mem[(7 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 228] = 160
                    mem[(7 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 324] = arg2.length
                    idx = 0
                    s = (7 * ceil32(return_data.size)) + (32 * arg1.length) + 160
                    t = (7 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 356
                    while idx < arg2.length:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(7 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 260] = this.address
                    mem[(7 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 292] = block.timestamp
                    require ext_code.size(exchangesRouters[arg6])
                    call exchangesRouters[arg6].swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args mem[(7 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 164 len (96 * arg2.length) + 192]
            else:
                if 0 >= arg2.length:
                    revert with 0, 50
                require cd[(arg2 + 36)] == address(cd[(arg2 + 36)])
                if arg6 >= exchangesRouters.length:
                    revert with 0, 50
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                mem[(6 * ceil32(return_data.size)) + (32 * arg1.length) + 132] = exchangesRouters[arg6]
                mem[(6 * ceil32(return_data.size)) + (32 * arg1.length) + 164] = test266151307()
                require ext_code.size(address(cd[(arg2 + 36)]))
                call address(cd[(arg2 + 36)]).approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args exchangesRouters[arg6], test266151307()
                mem[(6 * ceil32(return_data.size)) + (32 * arg1.length) + 128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if not arg9:
                    mem[(7 * ceil32(return_data.size)) + (32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    if arg6 >= exchangesRouters.length:
                        revert with 0, 50
                    mem[(7 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 160] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                    mem[(7 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 164] = ext_call.return_data[0]
                    mem[(7 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 196] = arg7 - (arg7 * arg8 / 10000)
                    mem[(7 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 228] = 160
                    mem[(7 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 324] = arg2.length
                    idx = 0
                    s = (7 * ceil32(return_data.size)) + (32 * arg1.length) + 160
                    t = (7 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 356
                    while idx < arg2.length:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(7 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 260] = this.address
                    mem[(7 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 292] = block.timestamp
                    require ext_code.size(exchangesRouters[arg6])
                    call exchangesRouters[arg6].swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args mem[(7 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 164 len (96 * arg2.length) + 192]
                else:
                    if 0 >= arg2.length:
                        revert with 0, 50
                    require cd[(arg2 + 36)] == address(cd[(arg2 + 36)])
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    mem[(7 * ceil32(return_data.size)) + (32 * arg1.length) + 132] = this.address
                    require ext_code.size(address(cd[(arg2 + 36)]))
                    staticcall address(cd[(arg2 + 36)]).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[(7 * ceil32(return_data.size)) + (32 * arg1.length) + 128] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(8 * ceil32(return_data.size)) + (32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    if arg6 >= exchangesRouters.length:
                        revert with 0, 50
                    mem[(8 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 160] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                    mem[(8 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 164] = ext_call.return_data[0]
                    mem[(8 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 196] = arg7 - (arg7 * arg8 / 10000)
                    mem[(8 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 228] = 160
                    mem[(8 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 324] = arg2.length
                    idx = 0
                    s = (8 * ceil32(return_data.size)) + (32 * arg1.length) + 160
                    t = (8 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 356
                    while idx < arg2.length:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(8 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 260] = this.address
                    mem[(8 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 292] = block.timestamp
                    require ext_code.size(exchangesRouters[arg6])
                    call exchangesRouters[arg6].swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args mem[(8 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 164 len (96 * arg2.length) + 192]
    else:
        if 0 >= arg1.length:
            revert with 0, 50
        require cd[(arg1 + 36)] == address(cd[(arg1 + 36)])
        if arg4 >= exchangesRouters.length:
            revert with 0, 50
        if owner != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
        mem[ceil32(return_data.size) + 100] = exchangesRouters[arg4]
        mem[ceil32(return_data.size) + 132] = test266151307()
        require ext_code.size(address(cd[(arg1 + 36)]))
        call address(cd[(arg1 + 36)]).approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args exchangesRouters[arg4], test266151307()
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not arg9:
            mem[(2 * ceil32(return_data.size)) + 96] = arg1.length
            mem[(2 * ceil32(return_data.size)) + 128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            if arg4 >= exchangesRouters.length:
                revert with 0, 50
            mem[(2 * ceil32(return_data.size)) + (32 * arg1.length) + 128] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
            mem[(2 * ceil32(return_data.size)) + (32 * arg1.length) + 132] = arg3
            mem[(2 * ceil32(return_data.size)) + (32 * arg1.length) + 164] = arg5 - (arg5 * arg8 / 10000)
            mem[(2 * ceil32(return_data.size)) + (32 * arg1.length) + 196] = 160
            mem[(2 * ceil32(return_data.size)) + (32 * arg1.length) + 292] = arg1.length
            idx = 0
            s = (2 * ceil32(return_data.size)) + 128
            t = (2 * ceil32(return_data.size)) + (32 * arg1.length) + 324
            while idx < arg1.length:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(2 * ceil32(return_data.size)) + (32 * arg1.length) + 228] = this.address
            mem[(2 * ceil32(return_data.size)) + (32 * arg1.length) + 260] = block.timestamp
            require ext_code.size(exchangesRouters[arg4])
            call exchangesRouters[arg4].swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args mem[(2 * ceil32(return_data.size)) + (32 * arg1.length) + 132 len (96 * arg1.length) + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if 0 >= arg2.length:
                revert with 0, 50
            require cd[(arg2 + 36)] == address(cd[(arg2 + 36)])
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            mem[(2 * ceil32(return_data.size)) + (32 * arg1.length) + 132] = this.address
            require ext_code.size(address(cd[(arg2 + 36)]))
            staticcall address(cd[(arg2 + 36)]).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[(2 * ceil32(return_data.size)) + (32 * arg1.length) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            if arg7 and arg8 > -1 / arg7:
                revert with 0, 17
            if arg7 < arg7 * arg8 / 10000:
                revert with 0, 17
            if 0 >= arg2.length:
                revert with 0, 50
            require cd[(arg2 + 36)] == address(cd[(arg2 + 36)])
            if arg6 >= exchangesRouters.length:
                revert with 0, 50
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            mem[(4 * ceil32(return_data.size)) + (32 * arg1.length) + 132] = this.address
            mem[(4 * ceil32(return_data.size)) + (32 * arg1.length) + 164] = exchangesRouters[arg6]
            require ext_code.size(address(cd[(arg2 + 36)]))
            staticcall address(cd[(arg2 + 36)]).0xdd62ed3e with:
                    gas gas_remaining wei
                   args address(this.address), exchangesRouters[arg6]
            mem[(4 * ceil32(return_data.size)) + (32 * arg1.length) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] >= ext_call.return_data[0]:
                if not arg9:
                    mem[(6 * ceil32(return_data.size)) + (32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    if arg6 >= exchangesRouters.length:
                        revert with 0, 50
                    mem[(6 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 160] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                    mem[(6 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 164] = ext_call.return_data[0]
                    mem[(6 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 196] = arg7 - (arg7 * arg8 / 10000)
                    mem[(6 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 228] = 160
                    mem[(6 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 324] = arg2.length
                    idx = 0
                    s = (6 * ceil32(return_data.size)) + (32 * arg1.length) + 160
                    t = (6 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 356
                    while idx < arg2.length:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(6 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 260] = this.address
                    mem[(6 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 292] = block.timestamp
                    require ext_code.size(exchangesRouters[arg6])
                    call exchangesRouters[arg6].swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args mem[(6 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 164 len (96 * arg2.length) + 192]
                else:
                    if 0 >= arg2.length:
                        revert with 0, 50
                    require cd[(arg2 + 36)] == address(cd[(arg2 + 36)])
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    mem[(6 * ceil32(return_data.size)) + (32 * arg1.length) + 132] = this.address
                    require ext_code.size(address(cd[(arg2 + 36)]))
                    staticcall address(cd[(arg2 + 36)]).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(7 * ceil32(return_data.size)) + (32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    if arg6 >= exchangesRouters.length:
                        revert with 0, 50
                    mem[(7 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 160] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                    mem[(7 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 164] = ext_call.return_data[0]
                    mem[(7 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 196] = arg7 - (arg7 * arg8 / 10000)
                    mem[(7 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 228] = 160
                    mem[(7 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 324] = arg2.length
                    idx = 0
                    s = (7 * ceil32(return_data.size)) + (32 * arg1.length) + 160
                    t = (7 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 356
                    while idx < arg2.length:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(7 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 260] = this.address
                    mem[(7 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 292] = block.timestamp
                    require ext_code.size(exchangesRouters[arg6])
                    call exchangesRouters[arg6].swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args mem[(7 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 164 len (96 * arg2.length) + 192]
            else:
                if 0 >= arg2.length:
                    revert with 0, 50
                require cd[(arg2 + 36)] == address(cd[(arg2 + 36)])
                if arg6 >= exchangesRouters.length:
                    revert with 0, 50
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                mem[(6 * ceil32(return_data.size)) + (32 * arg1.length) + 132] = exchangesRouters[arg6]
                mem[(6 * ceil32(return_data.size)) + (32 * arg1.length) + 164] = test266151307()
                require ext_code.size(address(cd[(arg2 + 36)]))
                call address(cd[(arg2 + 36)]).approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args exchangesRouters[arg6], test266151307()
                mem[(6 * ceil32(return_data.size)) + (32 * arg1.length) + 128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if not arg9:
                    mem[(7 * ceil32(return_data.size)) + (32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    if arg6 >= exchangesRouters.length:
                        revert with 0, 50
                    mem[(7 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 160] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                    mem[(7 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 164] = ext_call.return_data[0]
                    mem[(7 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 196] = arg7 - (arg7 * arg8 / 10000)
                    mem[(7 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 228] = 160
                    mem[(7 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 324] = arg2.length
                    idx = 0
                    s = (7 * ceil32(return_data.size)) + (32 * arg1.length) + 160
                    t = (7 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 356
                    while idx < arg2.length:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(7 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 260] = this.address
                    mem[(7 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 292] = block.timestamp
                    require ext_code.size(exchangesRouters[arg6])
                    call exchangesRouters[arg6].swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args mem[(7 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 164 len (96 * arg2.length) + 192]
                else:
                    if 0 >= arg2.length:
                        revert with 0, 50
                    require cd[(arg2 + 36)] == address(cd[(arg2 + 36)])
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    mem[(7 * ceil32(return_data.size)) + (32 * arg1.length) + 132] = this.address
                    require ext_code.size(address(cd[(arg2 + 36)]))
                    staticcall address(cd[(arg2 + 36)]).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[(7 * ceil32(return_data.size)) + (32 * arg1.length) + 128] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(8 * ceil32(return_data.size)) + (32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    if arg6 >= exchangesRouters.length:
                        revert with 0, 50
                    mem[(8 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 160] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                    mem[(8 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 164] = ext_call.return_data[0]
                    mem[(8 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 196] = arg7 - (arg7 * arg8 / 10000)
                    mem[(8 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 228] = 160
                    mem[(8 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 324] = arg2.length
                    idx = 0
                    s = (8 * ceil32(return_data.size)) + (32 * arg1.length) + 160
                    t = (8 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 356
                    while idx < arg2.length:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(8 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 260] = this.address
                    mem[(8 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 292] = block.timestamp
                    require ext_code.size(exchangesRouters[arg6])
                    call exchangesRouters[arg6].swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args mem[(8 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 164 len (96 * arg2.length) + 192]
        else:
            if 0 >= arg1.length:
                revert with 0, 50
            require cd[(arg1 + 36)] == address(cd[(arg1 + 36)])
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            mem[(2 * ceil32(return_data.size)) + 100] = this.address
            require ext_code.size(address(cd[(arg1 + 36)]))
            staticcall address(cd[(arg1 + 36)]).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(4 * ceil32(return_data.size)) + 96] = arg1.length
            mem[(4 * ceil32(return_data.size)) + 128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            if arg4 >= exchangesRouters.length:
                revert with 0, 50
            mem[(4 * ceil32(return_data.size)) + (32 * arg1.length) + 128] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
            mem[(4 * ceil32(return_data.size)) + (32 * arg1.length) + 132] = ext_call.return_data[0]
            mem[(4 * ceil32(return_data.size)) + (32 * arg1.length) + 164] = arg5 - (arg5 * arg8 / 10000)
            mem[(4 * ceil32(return_data.size)) + (32 * arg1.length) + 196] = 160
            mem[(4 * ceil32(return_data.size)) + (32 * arg1.length) + 292] = arg1.length
            idx = 0
            s = (4 * ceil32(return_data.size)) + 128
            t = (4 * ceil32(return_data.size)) + (32 * arg1.length) + 324
            while idx < arg1.length:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(4 * ceil32(return_data.size)) + (32 * arg1.length) + 228] = this.address
            mem[(4 * ceil32(return_data.size)) + (32 * arg1.length) + 260] = block.timestamp
            require ext_code.size(exchangesRouters[arg4])
            call exchangesRouters[arg4].swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args mem[(4 * ceil32(return_data.size)) + (32 * arg1.length) + 132 len (96 * arg1.length) + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if 0 >= arg2.length:
                revert with 0, 50
            require cd[(arg2 + 36)] == address(cd[(arg2 + 36)])
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            mem[(4 * ceil32(return_data.size)) + (32 * arg1.length) + 132] = this.address
            require ext_code.size(address(cd[(arg2 + 36)]))
            staticcall address(cd[(arg2 + 36)]).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[(4 * ceil32(return_data.size)) + (32 * arg1.length) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            if arg7 and arg8 > -1 / arg7:
                revert with 0, 17
            if arg7 < arg7 * arg8 / 10000:
                revert with 0, 17
            if 0 >= arg2.length:
                revert with 0, 50
            require cd[(arg2 + 36)] == address(cd[(arg2 + 36)])
            if arg6 >= exchangesRouters.length:
                revert with 0, 50
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            mem[(6 * ceil32(return_data.size)) + (32 * arg1.length) + 132] = this.address
            mem[(6 * ceil32(return_data.size)) + (32 * arg1.length) + 164] = exchangesRouters[arg6]
            require ext_code.size(address(cd[(arg2 + 36)]))
            staticcall address(cd[(arg2 + 36)]).0xdd62ed3e with:
                    gas gas_remaining wei
                   args address(this.address), exchangesRouters[arg6]
            mem[(6 * ceil32(return_data.size)) + (32 * arg1.length) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] >= ext_call.return_data[0]:
                if not arg9:
                    mem[(7 * ceil32(return_data.size)) + (32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    if arg6 >= exchangesRouters.length:
                        revert with 0, 50
                    mem[(7 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 160] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                    mem[(7 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 164] = ext_call.return_data[0]
                    mem[(7 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 196] = arg7 - (arg7 * arg8 / 10000)
                    mem[(7 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 228] = 160
                    mem[(7 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 324] = arg2.length
                    idx = 0
                    s = (7 * ceil32(return_data.size)) + (32 * arg1.length) + 160
                    t = (7 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 356
                    while idx < arg2.length:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(7 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 260] = this.address
                    mem[(7 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 292] = block.timestamp
                    require ext_code.size(exchangesRouters[arg6])
                    call exchangesRouters[arg6].swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args mem[(7 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 164 len (96 * arg2.length) + 192]
                else:
                    if 0 >= arg2.length:
                        revert with 0, 50
                    require cd[(arg2 + 36)] == address(cd[(arg2 + 36)])
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    mem[(7 * ceil32(return_data.size)) + (32 * arg1.length) + 132] = this.address
                    require ext_code.size(address(cd[(arg2 + 36)]))
                    staticcall address(cd[(arg2 + 36)]).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[(7 * ceil32(return_data.size)) + (32 * arg1.length) + 128] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(8 * ceil32(return_data.size)) + (32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    if arg6 >= exchangesRouters.length:
                        revert with 0, 50
                    mem[(8 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 160] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                    mem[(8 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 164] = ext_call.return_data[0]
                    mem[(8 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 196] = arg7 - (arg7 * arg8 / 10000)
                    mem[(8 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 228] = 160
                    mem[(8 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 324] = arg2.length
                    idx = 0
                    s = (8 * ceil32(return_data.size)) + (32 * arg1.length) + 160
                    t = (8 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 356
                    while idx < arg2.length:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(8 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 260] = this.address
                    mem[(8 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 292] = block.timestamp
                    require ext_code.size(exchangesRouters[arg6])
                    call exchangesRouters[arg6].swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args mem[(8 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 164 len (96 * arg2.length) + 192]
            else:
                if 0 >= arg2.length:
                    revert with 0, 50
                require cd[(arg2 + 36)] == address(cd[(arg2 + 36)])
                if arg6 >= exchangesRouters.length:
                    revert with 0, 50
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                mem[(7 * ceil32(return_data.size)) + (32 * arg1.length) + 132] = exchangesRouters[arg6]
                mem[(7 * ceil32(return_data.size)) + (32 * arg1.length) + 164] = test266151307()
                require ext_code.size(address(cd[(arg2 + 36)]))
                call address(cd[(arg2 + 36)]).approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args exchangesRouters[arg6], test266151307()
                mem[(7 * ceil32(return_data.size)) + (32 * arg1.length) + 128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if not arg9:
                    mem[(8 * ceil32(return_data.size)) + (32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    if arg6 >= exchangesRouters.length:
                        revert with 0, 50
                    mem[(8 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 160] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                    mem[(8 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 164] = ext_call.return_data[0]
                    mem[(8 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 196] = arg7 - (arg7 * arg8 / 10000)
                    mem[(8 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 228] = 160
                    mem[(8 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 324] = arg2.length
                    idx = 0
                    s = (8 * ceil32(return_data.size)) + (32 * arg1.length) + 160
                    t = (8 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 356
                    while idx < arg2.length:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(8 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 260] = this.address
                    mem[(8 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 292] = block.timestamp
                    require ext_code.size(exchangesRouters[arg6])
                    call exchangesRouters[arg6].swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args mem[(8 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 164 len (96 * arg2.length) + 192]
                else:
                    if 0 >= arg2.length:
                        revert with 0, 50
                    require cd[(arg2 + 36)] == address(cd[(arg2 + 36)])
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    mem[(8 * ceil32(return_data.size)) + (32 * arg1.length) + 132] = this.address
                    require ext_code.size(address(cd[(arg2 + 36)]))
                    staticcall address(cd[(arg2 + 36)]).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(10 * ceil32(return_data.size)) + (32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    if arg6 >= exchangesRouters.length:
                        revert with 0, 50
                    mem[(10 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 160] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                    mem[(10 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 164] = ext_call.return_data[0]
                    mem[(10 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 196] = arg7 - (arg7 * arg8 / 10000)
                    mem[(10 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 228] = 160
                    mem[(10 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 324] = arg2.length
                    idx = 0
                    s = (10 * ceil32(return_data.size)) + (32 * arg1.length) + 160
                    t = (10 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 356
                    while idx < arg2.length:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(10 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 260] = this.address
                    mem[(10 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 292] = block.timestamp
                    require ext_code.size(exchangesRouters[arg6])
                    call exchangesRouters[arg6].swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args mem[(10 * ceil32(return_data.size)) + (32 * arg1.length) + (32 * arg2.length) + 164 len (96 * arg2.length) + 192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if calldata.size > 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 0, 17
    if 21000 > !gas_remaining:
        revert with 0, 17
    if gas_remaining + 21000 < gas_remaining:
        revert with 0, 17
    if 21000 > !(16 * calldata.size):
        revert with 0, 17
    if 14154 > !((16 * calldata.size) + 21000):
        revert with 0, 17
    require ext_code.size(0x4946c0e9f43f4dee607b0ef1fa1c)
    call 0x0000000000004946c0e9f43f4dee607b0ef1fa1c.freeFromUpTo(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args msg.sender, (16 * calldata.size) + 35154 / 41947
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function filterPairAndSetInvalidToDefault(address arg1, address[] arg2, address arg3, uint256 arg4, uint256 arg5) {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg2.length > test266151307():
        revert with 0, 65
    mem[96] = arg2.length
    if not arg2.length:
        mem[(32 * arg2.length) + 128] = 2
        mem[64] = (32 * arg2.length) + 224
        mem[(32 * arg2.length) + 160 len 64] = call.data[calldata.size len 64]
        idx = 0
        while idx < arg2.length:
            require cd[((32 * idx) + arg2 + 36)] == address(cd[((32 * idx) + arg2 + 36)])
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            if arg4 >= exchangesFactories.length:
                revert with 0, 50
            mem[0] = 2
            mem[mem[64] + 4] = arg1
            mem[mem[64] + 36] = address(cd[((32 * idx) + arg2 + 36)])
            require ext_code.size(exchangesFactories[arg4])
            staticcall exchangesFactories[arg4].getPair(address rg1, address rg2) with:
                    gas gas_remaining wei
                   args address(arg1), address(cd[((32 * idx) + arg2 + 36)])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _288 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_288] == mem[_288 + 12 len 20]
            if mem[_288 + 12 len 20]:
                if idx >= arg2.length:
                    revert with 0, 50
                require cd[((32 * idx) + arg2 + 36)] == address(cd[((32 * idx) + arg2 + 36)])
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                if arg4 >= exchangesFactories.length:
                    revert with 0, 50
                mem[0] = 2
                mem[mem[64] + 4] = address(cd[((32 * idx) + arg2 + 36)])
                mem[mem[64] + 36] = arg3
                require ext_code.size(exchangesFactories[arg4])
                staticcall exchangesFactories[arg4].getPair(address rg1, address rg2) with:
                        gas gas_remaining wei
                       args address(cd[((32 * idx) + arg2 + 36)]), arg3
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _302 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_302] == mem[_302 + 12 len 20]
                if mem[_302 + 12 len 20]:
                    if 0 >= mem[(32 * arg2.length) + 128]:
                        revert with 0, 50
                    mem[(32 * arg2.length) + 160] = arg1
                    if idx >= arg2.length:
                        revert with 0, 50
                    require cd[((32 * idx) + arg2 + 36)] == address(cd[((32 * idx) + arg2 + 36)])
                    if 1 >= mem[(32 * arg2.length) + 128]:
                        revert with 0, 50
                    mem[(32 * arg2.length) + 192] = address(cd[((32 * idx) + arg2 + 36)])
                    if 0 >= mem[(32 * arg2.length) + 128]:
                        revert with 0, 50
                    if 1 >= mem[(32 * arg2.length) + 128]:
                        revert with 0, 50
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    _318 = mem[64]
                    mem[mem[64]] = 2
                    if arg4 >= exchangesFactories.length:
                        revert with 0, 50
                    mem[0] = 2
                    mem[mem[64] + 100] = arg1
                    mem[mem[64] + 132] = address(cd[((32 * idx) + arg2 + 36)])
                    require ext_code.size(exchangesFactories[arg4])
                    staticcall exchangesFactories[arg4].getPair(address rg1, address rg2) with:
                            gas gas_remaining wei
                           args address(arg1), address(cd[((32 * idx) + arg2 + 36)])
                    mem[mem[64] + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] + ceil32(return_data.size) + 96 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + (2 * ceil32(return_data.size)) + 96
                    require return_data.size >= 96
                    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                    if 0 >= mem[_318]:
                        revert with 0, 50
                    mem[_318 + 32] = ext_call.return_data[18 len 14]
                    if 1 >= mem[_318]:
                        revert with 0, 50
                    mem[_318 + 64] = ext_call.return_data[50 len 14]
                    if 0 >= mem[(32 * arg2.length) + 128]:
                        revert with 0, 50
                    if 1 >= mem[(32 * arg2.length) + 128]:
                        revert with 0, 50
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    mem[_318 + (2 * ceil32(return_data.size)) + 96] = 2
                    if arg4 >= exchangesFactories.length:
                        revert with 0, 50
                    mem[0] = 2
                    mem[_318 + (2 * ceil32(return_data.size)) + 196] = arg1
                    mem[_318 + (2 * ceil32(return_data.size)) + 228] = address(cd[((32 * idx) + arg2 + 36)])
                    require ext_code.size(exchangesFactories[arg4])
                    staticcall exchangesFactories[arg4].getPair(address rg1, address rg2) with:
                            gas gas_remaining wei
                           args address(arg1), address(cd[((32 * idx) + arg2 + 36)])
                    mem[_318 + (2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[_318 + (4 * ceil32(return_data.size)) + 192] = 0xdfe168100000000000000000000000000000000000000000000000000000000
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).token0() with:
                            gas gas_remaining wei
                           args mem[_318 + (4 * ceil32(return_data.size)) + 196 len 5 * ceil32(return_data.size)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[_318 + (2 * ceil32(return_data.size)) + 128] = ext_call.return_data[12 len 20]
                    mem[_318 + (4 * ceil32(return_data.size)) + 192] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).token1() with:
                            gas gas_remaining wei
                           args mem[_318 + (4 * ceil32(return_data.size)) + 196 len 7 * ceil32(return_data.size)]
                    mem[_318 + (4 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _318 + (8 * ceil32(return_data.size)) + 192
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[_318 + (2 * ceil32(return_data.size)) + 160] = ext_call.return_data[12 len 20]
                    if 0 >= mem[(32 * arg2.length) + 128]:
                        revert with 0, 50
                    if mem[_318 + (2 * ceil32(return_data.size)) + 140 len 20] != arg1:
                        if 1 >= mem[_318]:
                            revert with 0, 50
                        if 0 >= mem[_318]:
                            revert with 0, 50
                        if Mask(112, 0, ext_call.return_data[32]) > arg5:
                            if owner != msg.sender:
                                mem[_318 + (8 * ceil32(return_data.size)) + 192] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_318 + (8 * ceil32(return_data.size)) + 196] = 32
                                mem[_318 + (8 * ceil32(return_data.size)) + 228] = 32
                                mem[_318 + (8 * ceil32(return_data.size)) + 260] = 'Ownable: caller is not the owner'
                                revert with memory
                                  from _318 + (8 * ceil32(return_data.size)) + 192
                                   len (13 * ceil32(return_data.size)) + 100
                            if arg4 >= exchangesRouters.length:
                                revert with 0, 50
                            mem[0] = 1
                            mem[_318 + (8 * ceil32(return_data.size)) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[_318 + (8 * ceil32(return_data.size)) + 196] = arg5
                            mem[_318 + (8 * ceil32(return_data.size)) + 228] = 64
                            _434 = mem[(32 * arg2.length) + 128]
                            mem[_318 + (8 * ceil32(return_data.size)) + 260] = mem[(32 * arg2.length) + 128]
                            s = 0
                            t = (32 * arg2.length) + 160
                            u = _318 + (8 * ceil32(return_data.size)) + 292
                            while s < _434:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            require ext_code.size(exchangesRouters[arg4])
                            staticcall exchangesRouters[arg4].getAmountsOut(uint256 rg1, address[] rg2) with:
                                    gas gas_remaining wei
                                   args arg5, 64, mem[_318 + (8 * ceil32(return_data.size)) + 260 len (32 * _434) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_318 + (8 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = _318 + (10 * ceil32(return_data.size)) + 192
                            require return_data.size >= 32
                            _598 = mem[_318 + (8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5) >> 32
                            require mem[_318 + (8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5) >> 32 <= test266151307()
                            require _318 + (8 * ceil32(return_data.size)) + return_data.size + 192 > _318 + (8 * ceil32(return_data.size)) + mem[_318 + (8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5) >> 32 + 223
                            _602 = mem[_318 + (8 * ceil32(return_data.size)) + mem[_318 + (8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5) >> 32 + 192]
                            if mem[_318 + (8 * ceil32(return_data.size)) + mem[_318 + (8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5) >> 32 + 192] > test266151307():
                                revert with 0, 65
                            if ceil32(32 * mem[_318 + (8 * ceil32(return_data.size)) + mem[_318 + (8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5) >> 32 + 192]) + 1 < 0 or _318 + (10 * ceil32(return_data.size)) + ceil32(32 * mem[_318 + (8 * ceil32(return_data.size)) + mem[_318 + (8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5) >> 32 + 192]) + 193 > test266151307():
                                revert with 0, 65
                            mem[64] = _318 + (10 * ceil32(return_data.size)) + ceil32(32 * mem[_318 + (8 * ceil32(return_data.size)) + mem[_318 + (8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5) >> 32 + 192]) + 193
                            mem[_318 + (10 * ceil32(return_data.size)) + 192] = _602
                            require _598 + (32 * _602) + 32 <= return_data.size
                            t = _318 + (8 * ceil32(return_data.size)) + _598 + 224
                            u = _318 + (10 * ceil32(return_data.size)) + 224
                            s = 0
                            while s < _602:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s + 1
                                continue 
                            if _602 < 1:
                                revert with 0, 17
                            if _602 - 1 >= _602:
                                revert with 0, 50
                            _870 = mem[(32 * _602 - 1) + _318 + (10 * ceil32(return_data.size)) + 224]
                            if idx >= arg2.length:
                                revert with 0, 50
                            require cd[((32 * idx) + arg2 + 36)] == address(cd[((32 * idx) + arg2 + 36)])
                            if 0 >= mem[(32 * arg2.length) + 128]:
                                revert with 0, 50
                            mem[(32 * arg2.length) + 160] = address(cd[((32 * idx) + arg2 + 36)])
                            if 1 >= mem[(32 * arg2.length) + 128]:
                                revert with 0, 50
                            mem[(32 * arg2.length) + 192] = arg3
                            if 0 >= mem[(32 * arg2.length) + 128]:
                                revert with 0, 50
                            if 1 >= mem[(32 * arg2.length) + 128]:
                                revert with 0, 50
                            if owner != msg.sender:
                                revert with 0, 'Ownable: caller is not the owner'
                            _898 = mem[64]
                            mem[mem[64]] = 2
                            if arg4 >= exchangesFactories.length:
                                revert with 0, 50
                            mem[0] = 2
                            mem[mem[64] + 100] = address(cd[((32 * idx) + arg2 + 36)])
                            mem[mem[64] + 132] = arg3
                            require ext_code.size(exchangesFactories[arg4])
                            staticcall exchangesFactories[arg4].getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * idx) + arg2 + 36)]), arg3
                            mem[mem[64] + 96] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).getReserves() with:
                                    gas gas_remaining wei
                            mem[mem[64] + ceil32(return_data.size) + 96 len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + (2 * ceil32(return_data.size)) + 96
                            require return_data.size >= 96
                            require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                            require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                            if 0 >= mem[_898]:
                                revert with 0, 50
                            mem[_898 + 32] = ext_call.return_data[18 len 14]
                            if 1 >= mem[_898]:
                                revert with 0, 50
                            mem[_898 + 64] = ext_call.return_data[50 len 14]
                            if 0 >= mem[(32 * arg2.length) + 128]:
                                revert with 0, 50
                            if 1 >= mem[(32 * arg2.length) + 128]:
                                revert with 0, 50
                            if owner != msg.sender:
                                revert with 0, 'Ownable: caller is not the owner'
                            mem[_898 + (2 * ceil32(return_data.size)) + 96] = 2
                            if arg4 >= exchangesFactories.length:
                                revert with 0, 50
                            mem[0] = 2
                            mem[_898 + (2 * ceil32(return_data.size)) + 196] = address(cd[((32 * idx) + arg2 + 36)])
                            mem[_898 + (2 * ceil32(return_data.size)) + 228] = arg3
                            require ext_code.size(exchangesFactories[arg4])
                            staticcall exchangesFactories[arg4].getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * idx) + arg2 + 36)]), arg3
                            mem[_898 + (2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[_898 + (4 * ceil32(return_data.size)) + 192] = 0xdfe168100000000000000000000000000000000000000000000000000000000
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).token0() with:
                                    gas gas_remaining wei
                                   args mem[_898 + (4 * ceil32(return_data.size)) + 196 len 5 * ceil32(return_data.size)]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[_898 + (2 * ceil32(return_data.size)) + 128] = ext_call.return_data[12 len 20]
                            mem[_898 + (4 * ceil32(return_data.size)) + 192] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).token1() with:
                                    gas gas_remaining wei
                                   args mem[_898 + (4 * ceil32(return_data.size)) + 196 len 7 * ceil32(return_data.size)]
                            mem[_898 + (4 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _898 + (8 * ceil32(return_data.size)) + 192
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[_898 + (2 * ceil32(return_data.size)) + 160] = ext_call.return_data[12 len 20]
                            if 0 >= mem[(32 * arg2.length) + 128]:
                                revert with 0, 50
                            if mem[_898 + (2 * ceil32(return_data.size)) + 140 len 20] != address(cd[((32 * idx) + arg2 + 36)]):
                                if 1 >= mem[_898]:
                                    revert with 0, 50
                                if 0 >= mem[_898]:
                                    revert with 0, 50
                                if Mask(112, 0, ext_call.return_data[32]) > _870:
                                    if idx >= arg2.length:
                                        revert with 0, 50
                                    require cd[((32 * idx) + arg2 + 36)] == address(cd[((32 * idx) + arg2 + 36)])
                                    if idx >= mem[96]:
                                        revert with 0, 50
                                    mem[(32 * idx) + 128] = address(cd[((32 * idx) + arg2 + 36)])
                            else:
                                if 0 >= mem[_898]:
                                    revert with 0, 50
                                if 1 >= mem[_898]:
                                    revert with 0, 50
                                if ext_call.return_data[18 len 14] > _870:
                                    if idx >= arg2.length:
                                        revert with 0, 50
                                    require cd[((32 * idx) + arg2 + 36)] == address(cd[((32 * idx) + arg2 + 36)])
                                    if idx >= mem[96]:
                                        revert with 0, 50
                                    mem[(32 * idx) + 128] = address(cd[((32 * idx) + arg2 + 36)])
                    else:
                        if 0 >= mem[_318]:
                            revert with 0, 50
                        if 1 >= mem[_318]:
                            revert with 0, 50
                        if ext_call.return_data[18 len 14] > arg5:
                            if owner != msg.sender:
                                mem[_318 + (8 * ceil32(return_data.size)) + 192] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_318 + (8 * ceil32(return_data.size)) + 196] = 32
                                mem[_318 + (8 * ceil32(return_data.size)) + 228] = 32
                                mem[_318 + (8 * ceil32(return_data.size)) + 260] = 'Ownable: caller is not the owner'
                                revert with memory
                                  from _318 + (8 * ceil32(return_data.size)) + 192
                                   len (13 * ceil32(return_data.size)) + 100
                            if arg4 >= exchangesRouters.length:
                                revert with 0, 50
                            mem[0] = 1
                            mem[_318 + (8 * ceil32(return_data.size)) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[_318 + (8 * ceil32(return_data.size)) + 196] = arg5
                            mem[_318 + (8 * ceil32(return_data.size)) + 228] = 64
                            _435 = mem[(32 * arg2.length) + 128]
                            mem[_318 + (8 * ceil32(return_data.size)) + 260] = mem[(32 * arg2.length) + 128]
                            s = 0
                            t = (32 * arg2.length) + 160
                            u = _318 + (8 * ceil32(return_data.size)) + 292
                            while s < _435:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            require ext_code.size(exchangesRouters[arg4])
                            staticcall exchangesRouters[arg4].getAmountsOut(uint256 rg1, address[] rg2) with:
                                    gas gas_remaining wei
                                   args arg5, 64, mem[_318 + (8 * ceil32(return_data.size)) + 260 len (32 * _435) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_318 + (8 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = _318 + (10 * ceil32(return_data.size)) + 192
                            require return_data.size >= 32
                            _599 = mem[_318 + (8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5) >> 32
                            require mem[_318 + (8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5) >> 32 <= test266151307()
                            require _318 + (8 * ceil32(return_data.size)) + return_data.size + 192 > _318 + (8 * ceil32(return_data.size)) + mem[_318 + (8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5) >> 32 + 223
                            _603 = mem[_318 + (8 * ceil32(return_data.size)) + mem[_318 + (8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5) >> 32 + 192]
                            if mem[_318 + (8 * ceil32(return_data.size)) + mem[_318 + (8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5) >> 32 + 192] > test266151307():
                                revert with 0, 65
                            if ceil32(32 * mem[_318 + (8 * ceil32(return_data.size)) + mem[_318 + (8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5) >> 32 + 192]) + 1 < 0 or _318 + (10 * ceil32(return_data.size)) + ceil32(32 * mem[_318 + (8 * ceil32(return_data.size)) + mem[_318 + (8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5) >> 32 + 192]) + 193 > test266151307():
                                revert with 0, 65
                            mem[64] = _318 + (10 * ceil32(return_data.size)) + ceil32(32 * mem[_318 + (8 * ceil32(return_data.size)) + mem[_318 + (8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5) >> 32 + 192]) + 193
                            mem[_318 + (10 * ceil32(return_data.size)) + 192] = _603
                            require _599 + (32 * _603) + 32 <= return_data.size
                            t = _318 + (8 * ceil32(return_data.size)) + _599 + 224
                            u = _318 + (10 * ceil32(return_data.size)) + 224
                            s = 0
                            while s < _603:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s + 1
                                continue 
                            if _603 < 1:
                                revert with 0, 17
                            if _603 - 1 >= _603:
                                revert with 0, 50
                            _871 = mem[(32 * _603 - 1) + _318 + (10 * ceil32(return_data.size)) + 224]
                            if idx >= arg2.length:
                                revert with 0, 50
                            require cd[((32 * idx) + arg2 + 36)] == address(cd[((32 * idx) + arg2 + 36)])
                            if 0 >= mem[(32 * arg2.length) + 128]:
                                revert with 0, 50
                            mem[(32 * arg2.length) + 160] = address(cd[((32 * idx) + arg2 + 36)])
                            if 1 >= mem[(32 * arg2.length) + 128]:
                                revert with 0, 50
                            mem[(32 * arg2.length) + 192] = arg3
                            if 0 >= mem[(32 * arg2.length) + 128]:
                                revert with 0, 50
                            if 1 >= mem[(32 * arg2.length) + 128]:
                                revert with 0, 50
                            if owner != msg.sender:
                                revert with 0, 'Ownable: caller is not the owner'
                            _900 = mem[64]
                            mem[mem[64]] = 2
                            if arg4 >= exchangesFactories.length:
                                revert with 0, 50
                            mem[0] = 2
                            mem[mem[64] + 100] = address(cd[((32 * idx) + arg2 + 36)])
                            mem[mem[64] + 132] = arg3
                            require ext_code.size(exchangesFactories[arg4])
                            staticcall exchangesFactories[arg4].getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * idx) + arg2 + 36)]), arg3
                            mem[mem[64] + 96] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).getReserves() with:
                                    gas gas_remaining wei
                            mem[mem[64] + ceil32(return_data.size) + 96 len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + (2 * ceil32(return_data.size)) + 96
                            require return_data.size >= 96
                            require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                            require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                            if 0 >= mem[_900]:
                                revert with 0, 50
                            mem[_900 + 32] = ext_call.return_data[18 len 14]
                            if 1 >= mem[_900]:
                                revert with 0, 50
                            mem[_900 + 64] = ext_call.return_data[50 len 14]
                            if 0 >= mem[(32 * arg2.length) + 128]:
                                revert with 0, 50
                            if 1 >= mem[(32 * arg2.length) + 128]:
                                revert with 0, 50
                            if owner != msg.sender:
                                revert with 0, 'Ownable: caller is not the owner'
                            mem[_900 + (2 * ceil32(return_data.size)) + 96] = 2
                            if arg4 >= exchangesFactories.length:
                                revert with 0, 50
                            mem[0] = 2
                            mem[_900 + (2 * ceil32(return_data.size)) + 196] = address(cd[((32 * idx) + arg2 + 36)])
                            mem[_900 + (2 * ceil32(return_data.size)) + 228] = arg3
                            require ext_code.size(exchangesFactories[arg4])
                            staticcall exchangesFactories[arg4].getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * idx) + arg2 + 36)]), arg3
                            mem[_900 + (2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[_900 + (4 * ceil32(return_data.size)) + 192] = 0xdfe168100000000000000000000000000000000000000000000000000000000
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).token0() with:
                                    gas gas_remaining wei
                                   args mem[_900 + (4 * ceil32(return_data.size)) + 196 len 5 * ceil32(return_data.size)]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[_900 + (2 * ceil32(return_data.size)) + 128] = ext_call.return_data[12 len 20]
                            mem[_900 + (4 * ceil32(return_data.size)) + 192] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).token1() with:
                                    gas gas_remaining wei
                                   args mem[_900 + (4 * ceil32(return_data.size)) + 196 len 7 * ceil32(return_data.size)]
                            mem[_900 + (4 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _900 + (8 * ceil32(return_data.size)) + 192
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[_900 + (2 * ceil32(return_data.size)) + 160] = ext_call.return_data[12 len 20]
                            if 0 >= mem[(32 * arg2.length) + 128]:
                                revert with 0, 50
                            if mem[_900 + (2 * ceil32(return_data.size)) + 140 len 20] != address(cd[((32 * idx) + arg2 + 36)]):
                                if 1 >= mem[_900]:
                                    revert with 0, 50
                                if 0 >= mem[_900]:
                                    revert with 0, 50
                                if Mask(112, 0, ext_call.return_data[32]) > _871:
                                    if idx >= arg2.length:
                                        revert with 0, 50
                                    require cd[((32 * idx) + arg2 + 36)] == address(cd[((32 * idx) + arg2 + 36)])
                                    if idx >= mem[96]:
                                        revert with 0, 50
                                    mem[(32 * idx) + 128] = address(cd[((32 * idx) + arg2 + 36)])
                            else:
                                if 0 >= mem[_900]:
                                    revert with 0, 50
                                if 1 >= mem[_900]:
                                    revert with 0, 50
                                if ext_call.return_data[18 len 14] > _871:
                                    if idx >= arg2.length:
                                        revert with 0, 50
                                    require cd[((32 * idx) + arg2 + 36)] == address(cd[((32 * idx) + arg2 + 36)])
                                    if idx >= mem[96]:
                                        revert with 0, 50
                                    mem[(32 * idx) + 128] = address(cd[((32 * idx) + arg2 + 36)])
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _270 = mem[64]
        mem[mem[64]] = 32
        _272 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < mem[96]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _270 + (32 * _272) + -mem[64] + 64
    mem[128 len 32 * arg2.length] = call.data[calldata.size len 32 * arg2.length]
    mem[(32 * arg2.length) + 128] = 2
    mem[64] = (32 * arg2.length) + 224
    mem[(32 * arg2.length) + 160 len 64] = call.data[calldata.size len 64]
    idx = 0
    while idx < arg2.length:
        require cd[((32 * idx) + arg2 + 36)] == address(cd[((32 * idx) + arg2 + 36)])
        if owner != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
        if arg4 >= exchangesFactories.length:
            revert with 0, 50
        mem[0] = 2
        mem[mem[64] + 4] = arg1
        mem[mem[64] + 36] = address(cd[((32 * idx) + arg2 + 36)])
        require ext_code.size(exchangesFactories[arg4])
        staticcall exchangesFactories[arg4].getPair(address rg1, address rg2) with:
                gas gas_remaining wei
               args address(arg1), address(cd[((32 * idx) + arg2 + 36)])
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _289 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_289] == mem[_289 + 12 len 20]
        if mem[_289 + 12 len 20]:
            if idx >= arg2.length:
                revert with 0, 50
            require cd[((32 * idx) + arg2 + 36)] == address(cd[((32 * idx) + arg2 + 36)])
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            if arg4 >= exchangesFactories.length:
                revert with 0, 50
            mem[0] = 2
            mem[mem[64] + 4] = address(cd[((32 * idx) + arg2 + 36)])
            mem[mem[64] + 36] = arg3
            require ext_code.size(exchangesFactories[arg4])
            staticcall exchangesFactories[arg4].getPair(address rg1, address rg2) with:
                    gas gas_remaining wei
                   args address(cd[((32 * idx) + arg2 + 36)]), arg3
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _303 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_303] == mem[_303 + 12 len 20]
            if mem[_303 + 12 len 20]:
                if 0 >= mem[(32 * arg2.length) + 128]:
                    revert with 0, 50
                mem[(32 * arg2.length) + 160] = arg1
                if idx >= arg2.length:
                    revert with 0, 50
                require cd[((32 * idx) + arg2 + 36)] == address(cd[((32 * idx) + arg2 + 36)])
                if 1 >= mem[(32 * arg2.length) + 128]:
                    revert with 0, 50
                mem[(32 * arg2.length) + 192] = address(cd[((32 * idx) + arg2 + 36)])
                if 0 >= mem[(32 * arg2.length) + 128]:
                    revert with 0, 50
                if 1 >= mem[(32 * arg2.length) + 128]:
                    revert with 0, 50
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                _320 = mem[64]
                mem[mem[64]] = 2
                if arg4 >= exchangesFactories.length:
                    revert with 0, 50
                mem[0] = 2
                mem[mem[64] + 100] = arg1
                mem[mem[64] + 132] = address(cd[((32 * idx) + arg2 + 36)])
                require ext_code.size(exchangesFactories[arg4])
                staticcall exchangesFactories[arg4].getPair(address rg1, address rg2) with:
                        gas gas_remaining wei
                       args address(arg1), address(cd[((32 * idx) + arg2 + 36)])
                mem[mem[64] + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] + ceil32(return_data.size) + 96 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + (2 * ceil32(return_data.size)) + 96
                require return_data.size >= 96
                require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                if 0 >= mem[_320]:
                    revert with 0, 50
                mem[_320 + 32] = ext_call.return_data[18 len 14]
                if 1 >= mem[_320]:
                    revert with 0, 50
                mem[_320 + 64] = ext_call.return_data[50 len 14]
                if 0 >= mem[(32 * arg2.length) + 128]:
                    revert with 0, 50
                if 1 >= mem[(32 * arg2.length) + 128]:
                    revert with 0, 50
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                mem[_320 + (2 * ceil32(return_data.size)) + 96] = 2
                if arg4 >= exchangesFactories.length:
                    revert with 0, 50
                mem[0] = 2
                mem[_320 + (2 * ceil32(return_data.size)) + 196] = arg1
                mem[_320 + (2 * ceil32(return_data.size)) + 228] = address(cd[((32 * idx) + arg2 + 36)])
                require ext_code.size(exchangesFactories[arg4])
                staticcall exchangesFactories[arg4].getPair(address rg1, address rg2) with:
                        gas gas_remaining wei
                       args address(arg1), address(cd[((32 * idx) + arg2 + 36)])
                mem[_320 + (2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[_320 + (4 * ceil32(return_data.size)) + 192] = 0xdfe168100000000000000000000000000000000000000000000000000000000
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).token0() with:
                        gas gas_remaining wei
                       args mem[_320 + (4 * ceil32(return_data.size)) + 196 len 5 * ceil32(return_data.size)]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[_320 + (2 * ceil32(return_data.size)) + 128] = ext_call.return_data[12 len 20]
                mem[_320 + (4 * ceil32(return_data.size)) + 192] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).token1() with:
                        gas gas_remaining wei
                       args mem[_320 + (4 * ceil32(return_data.size)) + 196 len 7 * ceil32(return_data.size)]
                mem[_320 + (4 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = _320 + (8 * ceil32(return_data.size)) + 192
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[_320 + (2 * ceil32(return_data.size)) + 160] = ext_call.return_data[12 len 20]
                if 0 >= mem[(32 * arg2.length) + 128]:
                    revert with 0, 50
                if mem[_320 + (2 * ceil32(return_data.size)) + 140 len 20] != arg1:
                    if 1 >= mem[_320]:
                        revert with 0, 50
                    if 0 >= mem[_320]:
                        revert with 0, 50
                    if Mask(112, 0, ext_call.return_data[32]) > arg5:
                        if owner != msg.sender:
                            mem[_320 + (8 * ceil32(return_data.size)) + 192] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_320 + (8 * ceil32(return_data.size)) + 196] = 32
                            mem[_320 + (8 * ceil32(return_data.size)) + 228] = 32
                            mem[_320 + (8 * ceil32(return_data.size)) + 260] = 'Ownable: caller is not the owner'
                            revert with memory
                              from _320 + (8 * ceil32(return_data.size)) + 192
                               len (13 * ceil32(return_data.size)) + 100
                        if arg4 >= exchangesRouters.length:
                            revert with 0, 50
                        mem[0] = 1
                        mem[_320 + (8 * ceil32(return_data.size)) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_320 + (8 * ceil32(return_data.size)) + 196] = arg5
                        mem[_320 + (8 * ceil32(return_data.size)) + 228] = 64
                        _436 = mem[(32 * arg2.length) + 128]
                        mem[_320 + (8 * ceil32(return_data.size)) + 260] = mem[(32 * arg2.length) + 128]
                        s = 0
                        t = (32 * arg2.length) + 160
                        u = _320 + (8 * ceil32(return_data.size)) + 292
                        while s < _436:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        require ext_code.size(exchangesRouters[arg4])
                        staticcall exchangesRouters[arg4].getAmountsOut(uint256 rg1, address[] rg2) with:
                                gas gas_remaining wei
                               args arg5, 64, mem[_320 + (8 * ceil32(return_data.size)) + 260 len (32 * _436) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_320 + (8 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = _320 + (10 * ceil32(return_data.size)) + 192
                        require return_data.size >= 32
                        _600 = mem[_320 + (8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5) >> 32
                        require mem[_320 + (8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5) >> 32 <= test266151307()
                        require _320 + (8 * ceil32(return_data.size)) + return_data.size + 192 > _320 + (8 * ceil32(return_data.size)) + mem[_320 + (8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5) >> 32 + 223
                        _604 = mem[_320 + (8 * ceil32(return_data.size)) + mem[_320 + (8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5) >> 32 + 192]
                        if mem[_320 + (8 * ceil32(return_data.size)) + mem[_320 + (8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5) >> 32 + 192] > test266151307():
                            revert with 0, 65
                        if ceil32(32 * mem[_320 + (8 * ceil32(return_data.size)) + mem[_320 + (8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5) >> 32 + 192]) + 1 < 0 or _320 + (10 * ceil32(return_data.size)) + ceil32(32 * mem[_320 + (8 * ceil32(return_data.size)) + mem[_320 + (8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5) >> 32 + 192]) + 193 > test266151307():
                            revert with 0, 65
                        mem[64] = _320 + (10 * ceil32(return_data.size)) + ceil32(32 * mem[_320 + (8 * ceil32(return_data.size)) + mem[_320 + (8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5) >> 32 + 192]) + 193
                        mem[_320 + (10 * ceil32(return_data.size)) + 192] = _604
                        require _600 + (32 * _604) + 32 <= return_data.size
                        t = _320 + (8 * ceil32(return_data.size)) + _600 + 224
                        u = _320 + (10 * ceil32(return_data.size)) + 224
                        s = 0
                        while s < _604:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s + 1
                            continue 
                        if _604 < 1:
                            revert with 0, 17
                        if _604 - 1 >= _604:
                            revert with 0, 50
                        _872 = mem[(32 * _604 - 1) + _320 + (10 * ceil32(return_data.size)) + 224]
                        if idx >= arg2.length:
                            revert with 0, 50
                        require cd[((32 * idx) + arg2 + 36)] == address(cd[((32 * idx) + arg2 + 36)])
                        if 0 >= mem[(32 * arg2.length) + 128]:
                            revert with 0, 50
                        mem[(32 * arg2.length) + 160] = address(cd[((32 * idx) + arg2 + 36)])
                        if 1 >= mem[(32 * arg2.length) + 128]:
                            revert with 0, 50
                        mem[(32 * arg2.length) + 192] = arg3
                        if 0 >= mem[(32 * arg2.length) + 128]:
                            revert with 0, 50
                        if 1 >= mem[(32 * arg2.length) + 128]:
                            revert with 0, 50
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        _902 = mem[64]
                        mem[mem[64]] = 2
                        if arg4 >= exchangesFactories.length:
                            revert with 0, 50
                        mem[0] = 2
                        mem[mem[64] + 100] = address(cd[((32 * idx) + arg2 + 36)])
                        mem[mem[64] + 132] = arg3
                        require ext_code.size(exchangesFactories[arg4])
                        staticcall exchangesFactories[arg4].getPair(address rg1, address rg2) with:
                                gas gas_remaining wei
                               args address(cd[((32 * idx) + arg2 + 36)]), arg3
                        mem[mem[64] + 96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).getReserves() with:
                                gas gas_remaining wei
                        mem[mem[64] + ceil32(return_data.size) + 96 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + (2 * ceil32(return_data.size)) + 96
                        require return_data.size >= 96
                        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                        if 0 >= mem[_902]:
                            revert with 0, 50
                        mem[_902 + 32] = ext_call.return_data[18 len 14]
                        if 1 >= mem[_902]:
                            revert with 0, 50
                        mem[_902 + 64] = ext_call.return_data[50 len 14]
                        if 0 >= mem[(32 * arg2.length) + 128]:
                            revert with 0, 50
                        if 1 >= mem[(32 * arg2.length) + 128]:
                            revert with 0, 50
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        mem[_902 + (2 * ceil32(return_data.size)) + 96] = 2
                        if arg4 >= exchangesFactories.length:
                            revert with 0, 50
                        mem[0] = 2
                        mem[_902 + (2 * ceil32(return_data.size)) + 196] = address(cd[((32 * idx) + arg2 + 36)])
                        mem[_902 + (2 * ceil32(return_data.size)) + 228] = arg3
                        require ext_code.size(exchangesFactories[arg4])
                        staticcall exchangesFactories[arg4].getPair(address rg1, address rg2) with:
                                gas gas_remaining wei
                               args address(cd[((32 * idx) + arg2 + 36)]), arg3
                        mem[_902 + (2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[_902 + (4 * ceil32(return_data.size)) + 192] = 0xdfe168100000000000000000000000000000000000000000000000000000000
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                               args mem[_902 + (4 * ceil32(return_data.size)) + 196 len 5 * ceil32(return_data.size)]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[_902 + (2 * ceil32(return_data.size)) + 128] = ext_call.return_data[12 len 20]
                        mem[_902 + (4 * ceil32(return_data.size)) + 192] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token1() with:
                                gas gas_remaining wei
                               args mem[_902 + (4 * ceil32(return_data.size)) + 196 len 7 * ceil32(return_data.size)]
                        mem[_902 + (4 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _902 + (8 * ceil32(return_data.size)) + 192
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[_902 + (2 * ceil32(return_data.size)) + 160] = ext_call.return_data[12 len 20]
                        if 0 >= mem[(32 * arg2.length) + 128]:
                            revert with 0, 50
                        if mem[_902 + (2 * ceil32(return_data.size)) + 140 len 20] != address(cd[((32 * idx) + arg2 + 36)]):
                            if 1 >= mem[_902]:
                                revert with 0, 50
                            if 0 >= mem[_902]:
                                revert with 0, 50
                            if Mask(112, 0, ext_call.return_data[32]) > _872:
                                if idx >= arg2.length:
                                    revert with 0, 50
                                require cd[((32 * idx) + arg2 + 36)] == address(cd[((32 * idx) + arg2 + 36)])
                                if idx >= mem[96]:
                                    revert with 0, 50
                                mem[(32 * idx) + 128] = address(cd[((32 * idx) + arg2 + 36)])
                        else:
                            if 0 >= mem[_902]:
                                revert with 0, 50
                            if 1 >= mem[_902]:
                                revert with 0, 50
                            if ext_call.return_data[18 len 14] > _872:
                                if idx >= arg2.length:
                                    revert with 0, 50
                                require cd[((32 * idx) + arg2 + 36)] == address(cd[((32 * idx) + arg2 + 36)])
                                if idx >= mem[96]:
                                    revert with 0, 50
                                mem[(32 * idx) + 128] = address(cd[((32 * idx) + arg2 + 36)])
                else:
                    if 0 >= mem[_320]:
                        revert with 0, 50
                    if 1 >= mem[_320]:
                        revert with 0, 50
                    if ext_call.return_data[18 len 14] > arg5:
                        if owner != msg.sender:
                            mem[_320 + (8 * ceil32(return_data.size)) + 192] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_320 + (8 * ceil32(return_data.size)) + 196] = 32
                            mem[_320 + (8 * ceil32(return_data.size)) + 228] = 32
                            mem[_320 + (8 * ceil32(return_data.size)) + 260] = 'Ownable: caller is not the owner'
                            revert with memory
                              from _320 + (8 * ceil32(return_data.size)) + 192
                               len (13 * ceil32(return_data.size)) + 100
                        if arg4 >= exchangesRouters.length:
                            revert with 0, 50
                        mem[0] = 1
                        mem[_320 + (8 * ceil32(return_data.size)) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_320 + (8 * ceil32(return_data.size)) + 196] = arg5
                        mem[_320 + (8 * ceil32(return_data.size)) + 228] = 64
                        _437 = mem[(32 * arg2.length) + 128]
                        mem[_320 + (8 * ceil32(return_data.size)) + 260] = mem[(32 * arg2.length) + 128]
                        s = 0
                        t = (32 * arg2.length) + 160
                        u = _320 + (8 * ceil32(return_data.size)) + 292
                        while s < _437:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        require ext_code.size(exchangesRouters[arg4])
                        staticcall exchangesRouters[arg4].getAmountsOut(uint256 rg1, address[] rg2) with:
                                gas gas_remaining wei
                               args arg5, 64, mem[_320 + (8 * ceil32(return_data.size)) + 260 len (32 * _437) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_320 + (8 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = _320 + (10 * ceil32(return_data.size)) + 192
                        require return_data.size >= 32
                        _601 = mem[_320 + (8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5) >> 32
                        require mem[_320 + (8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5) >> 32 <= test266151307()
                        require _320 + (8 * ceil32(return_data.size)) + return_data.size + 192 > _320 + (8 * ceil32(return_data.size)) + mem[_320 + (8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5) >> 32 + 223
                        _605 = mem[_320 + (8 * ceil32(return_data.size)) + mem[_320 + (8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5) >> 32 + 192]
                        if mem[_320 + (8 * ceil32(return_data.size)) + mem[_320 + (8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5) >> 32 + 192] > test266151307():
                            revert with 0, 65
                        if ceil32(32 * mem[_320 + (8 * ceil32(return_data.size)) + mem[_320 + (8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5) >> 32 + 192]) + 1 < 0 or _320 + (10 * ceil32(return_data.size)) + ceil32(32 * mem[_320 + (8 * ceil32(return_data.size)) + mem[_320 + (8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5) >> 32 + 192]) + 193 > test266151307():
                            revert with 0, 65
                        mem[64] = _320 + (10 * ceil32(return_data.size)) + ceil32(32 * mem[_320 + (8 * ceil32(return_data.size)) + mem[_320 + (8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5) >> 32 + 192]) + 193
                        mem[_320 + (10 * ceil32(return_data.size)) + 192] = _605
                        require _601 + (32 * _605) + 32 <= return_data.size
                        t = _320 + (8 * ceil32(return_data.size)) + _601 + 224
                        u = _320 + (10 * ceil32(return_data.size)) + 224
                        s = 0
                        while s < _605:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s + 1
                            continue 
                        if _605 < 1:
                            revert with 0, 17
                        if _605 - 1 >= _605:
                            revert with 0, 50
                        _873 = mem[(32 * _605 - 1) + _320 + (10 * ceil32(return_data.size)) + 224]
                        if idx >= arg2.length:
                            revert with 0, 50
                        require cd[((32 * idx) + arg2 + 36)] == address(cd[((32 * idx) + arg2 + 36)])
                        if 0 >= mem[(32 * arg2.length) + 128]:
                            revert with 0, 50
                        mem[(32 * arg2.length) + 160] = address(cd[((32 * idx) + arg2 + 36)])
                        if 1 >= mem[(32 * arg2.length) + 128]:
                            revert with 0, 50
                        mem[(32 * arg2.length) + 192] = arg3
                        if 0 >= mem[(32 * arg2.length) + 128]:
                            revert with 0, 50
                        if 1 >= mem[(32 * arg2.length) + 128]:
                            revert with 0, 50
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        _904 = mem[64]
                        mem[mem[64]] = 2
                        if arg4 >= exchangesFactories.length:
                            revert with 0, 50
                        mem[0] = 2
                        mem[mem[64] + 100] = address(cd[((32 * idx) + arg2 + 36)])
                        mem[mem[64] + 132] = arg3
                        require ext_code.size(exchangesFactories[arg4])
                        staticcall exchangesFactories[arg4].getPair(address rg1, address rg2) with:
                                gas gas_remaining wei
                               args address(cd[((32 * idx) + arg2 + 36)]), arg3
                        mem[mem[64] + 96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).getReserves() with:
                                gas gas_remaining wei
                        mem[mem[64] + ceil32(return_data.size) + 96 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + (2 * ceil32(return_data.size)) + 96
                        require return_data.size >= 96
                        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                        if 0 >= mem[_904]:
                            revert with 0, 50
                        mem[_904 + 32] = ext_call.return_data[18 len 14]
                        if 1 >= mem[_904]:
                            revert with 0, 50
                        mem[_904 + 64] = ext_call.return_data[50 len 14]
                        if 0 >= mem[(32 * arg2.length) + 128]:
                            revert with 0, 50
                        if 1 >= mem[(32 * arg2.length) + 128]:
                            revert with 0, 50
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        mem[_904 + (2 * ceil32(return_data.size)) + 96] = 2
                        if arg4 >= exchangesFactories.length:
                            revert with 0, 50
                        mem[0] = 2
                        mem[_904 + (2 * ceil32(return_data.size)) + 196] = address(cd[((32 * idx) + arg2 + 36)])
                        mem[_904 + (2 * ceil32(return_data.size)) + 228] = arg3
                        require ext_code.size(exchangesFactories[arg4])
                        staticcall exchangesFactories[arg4].getPair(address rg1, address rg2) with:
                                gas gas_remaining wei
                               args address(cd[((32 * idx) + arg2 + 36)]), arg3
                        mem[_904 + (2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[_904 + (4 * ceil32(return_data.size)) + 192] = 0xdfe168100000000000000000000000000000000000000000000000000000000
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                               args mem[_904 + (4 * ceil32(return_data.size)) + 196 len 5 * ceil32(return_data.size)]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[_904 + (2 * ceil32(return_data.size)) + 128] = ext_call.return_data[12 len 20]
                        mem[_904 + (4 * ceil32(return_data.size)) + 192] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token1() with:
                                gas gas_remaining wei
                               args mem[_904 + (4 * ceil32(return_data.size)) + 196 len 7 * ceil32(return_data.size)]
                        mem[_904 + (4 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _904 + (8 * ceil32(return_data.size)) + 192
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[_904 + (2 * ceil32(return_data.size)) + 160] = ext_call.return_data[12 len 20]
                        if 0 >= mem[(32 * arg2.length) + 128]:
                            revert with 0, 50
                        if mem[_904 + (2 * ceil32(return_data.size)) + 140 len 20] != address(cd[((32 * idx) + arg2 + 36)]):
                            if 1 >= mem[_904]:
                                revert with 0, 50
                            if 0 >= mem[_904]:
                                revert with 0, 50
                            if Mask(112, 0, ext_call.return_data[32]) > _873:
                                if idx >= arg2.length:
                                    revert with 0, 50
                                require cd[((32 * idx) + arg2 + 36)] == address(cd[((32 * idx) + arg2 + 36)])
                                if idx >= mem[96]:
                                    revert with 0, 50
                                mem[(32 * idx) + 128] = address(cd[((32 * idx) + arg2 + 36)])
                        else:
                            if 0 >= mem[_904]:
                                revert with 0, 50
                            if 1 >= mem[_904]:
                                revert with 0, 50
                            if ext_call.return_data[18 len 14] > _873:
                                if idx >= arg2.length:
                                    revert with 0, 50
                                require cd[((32 * idx) + arg2 + 36)] == address(cd[((32 * idx) + arg2 + 36)])
                                if idx >= mem[96]:
                                    revert with 0, 50
                                mem[(32 * idx) + 128] = address(cd[((32 * idx) + arg2 + 36)])
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    _271 = mem[64]
    mem[mem[64]] = 32
    _273 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _273:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len _271 + (32 * _273) + -mem[64] + 64
}

function getBest3WayPathAndHisOutputAmount(address arg1, address[] arg2, address arg3, uint256 arg4, uint256 arg5) {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if 1 > !arg2.length:
        revert with 0, 17
    if arg2.length + 1 > test266151307():
        revert with 0, 65
    mem[96] = arg2.length + 1
    if not arg2.length + 1:
        mem[(32 * arg2.length + 1) + 128] = 3
        mem[(32 * arg2.length + 1) + 160 len 96] = call.data[calldata.size len 96]
        if owner != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
        if arg2.length > test266151307():
            revert with 0, 65
        mem[(32 * arg2.length + 1) + 256] = arg2.length
        if not arg2.length:
            mem[(32 * arg2.length + 1) + (32 * arg2.length) + 288] = 2
            mem[64] = (32 * arg2.length + 1) + (32 * arg2.length) + 384
            mem[(32 * arg2.length + 1) + (32 * arg2.length) + 320 len 64] = call.data[calldata.size len 64]
            idx = 0
            while idx < arg2.length:
                require cd[((32 * idx) + arg2 + 36)] == address(cd[((32 * idx) + arg2 + 36)])
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                if arg4 >= exchangesFactories.length:
                    revert with 0, 50
                mem[0] = 2
                mem[mem[64] + 4] = arg1
                mem[mem[64] + 36] = address(cd[((32 * idx) + arg2 + 36)])
                require ext_code.size(exchangesFactories[arg4])
                staticcall exchangesFactories[arg4].getPair(address rg1, address rg2) with:
                        gas gas_remaining wei
                       args address(arg1), address(cd[((32 * idx) + arg2 + 36)])
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _758 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_758] == mem[_758 + 12 len 20]
                if mem[_758 + 12 len 20]:
                    if idx >= arg2.length:
                        revert with 0, 50
                    require cd[((32 * idx) + arg2 + 36)] == address(cd[((32 * idx) + arg2 + 36)])
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    if arg4 >= exchangesFactories.length:
                        revert with 0, 50
                    mem[0] = 2
                    mem[mem[64] + 4] = address(cd[((32 * idx) + arg2 + 36)])
                    mem[mem[64] + 36] = arg3
                    require ext_code.size(exchangesFactories[arg4])
                    staticcall exchangesFactories[arg4].getPair(address rg1, address rg2) with:
                            gas gas_remaining wei
                           args address(cd[((32 * idx) + arg2 + 36)]), arg3
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _846 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_846] == mem[_846 + 12 len 20]
                    if mem[_846 + 12 len 20]:
                        if 0 >= mem[(32 * arg2.length + 1) + (32 * arg2.length) + 288]:
                            revert with 0, 50
                        mem[(32 * arg2.length + 1) + (32 * arg2.length) + 320] = arg1
                        if idx >= arg2.length:
                            revert with 0, 50
                        require cd[((32 * idx) + arg2 + 36)] == address(cd[((32 * idx) + arg2 + 36)])
                        if 1 >= mem[(32 * arg2.length + 1) + (32 * arg2.length) + 288]:
                            revert with 0, 50
                        mem[(32 * arg2.length + 1) + (32 * arg2.length) + 352] = address(cd[((32 * idx) + arg2 + 36)])
                        if 0 >= mem[(32 * arg2.length + 1) + (32 * arg2.length) + 288]:
                            revert with 0, 50
                        if 1 >= mem[(32 * arg2.length + 1) + (32 * arg2.length) + 288]:
                            revert with 0, 50
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        _898 = mem[64]
                        mem[mem[64]] = 2
                        if arg4 >= exchangesFactories.length:
                            revert with 0, 50
                        mem[0] = 2
                        mem[mem[64] + 100] = arg1
                        mem[mem[64] + 132] = address(cd[((32 * idx) + arg2 + 36)])
                        require ext_code.size(exchangesFactories[arg4])
                        staticcall exchangesFactories[arg4].getPair(address rg1, address rg2) with:
                                gas gas_remaining wei
                               args address(arg1), address(cd[((32 * idx) + arg2 + 36)])
                        mem[mem[64] + 96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).getReserves() with:
                                gas gas_remaining wei
                        mem[mem[64] + ceil32(return_data.size) + 96 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + (2 * ceil32(return_data.size)) + 96
                        require return_data.size >= 96
                        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                        if 0 >= mem[_898]:
                            revert with 0, 50
                        mem[_898 + 32] = ext_call.return_data[18 len 14]
                        if 1 >= mem[_898]:
                            revert with 0, 50
                        mem[_898 + 64] = ext_call.return_data[50 len 14]
                        if 0 >= mem[(32 * arg2.length + 1) + (32 * arg2.length) + 288]:
                            revert with 0, 50
                        if 1 >= mem[(32 * arg2.length + 1) + (32 * arg2.length) + 288]:
                            revert with 0, 50
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        mem[_898 + (2 * ceil32(return_data.size)) + 96] = 2
                        if arg4 >= exchangesFactories.length:
                            revert with 0, 50
                        mem[0] = 2
                        mem[_898 + (2 * ceil32(return_data.size)) + 196] = arg1
                        mem[_898 + (2 * ceil32(return_data.size)) + 228] = address(cd[((32 * idx) + arg2 + 36)])
                        require ext_code.size(exchangesFactories[arg4])
                        staticcall exchangesFactories[arg4].getPair(address rg1, address rg2) with:
                                gas gas_remaining wei
                               args address(arg1), address(cd[((32 * idx) + arg2 + 36)])
                        mem[_898 + (2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[_898 + (4 * ceil32(return_data.size)) + 192] = 0xdfe168100000000000000000000000000000000000000000000000000000000
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                               args mem[_898 + (4 * ceil32(return_data.size)) + 196 len 5 * ceil32(return_data.size)]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[_898 + (2 * ceil32(return_data.size)) + 128] = ext_call.return_data[12 len 20]
                        mem[_898 + (4 * ceil32(return_data.size)) + 192] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token1() with:
                                gas gas_remaining wei
                               args mem[_898 + (4 * ceil32(return_data.size)) + 196 len 7 * ceil32(return_data.size)]
                        mem[_898 + (4 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _898 + (8 * ceil32(return_data.size)) + 192
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[_898 + (2 * ceil32(return_data.size)) + 160] = ext_call.return_data[12 len 20]
                        if 0 >= mem[(32 * arg2.length + 1) + (32 * arg2.length) + 288]:
                            revert with 0, 50
                        if mem[_898 + (2 * ceil32(return_data.size)) + 140 len 20] != arg1:
                            if 1 >= mem[_898]:
                                revert with 0, 50
                            if 0 >= mem[_898]:
                                revert with 0, 50
                            if Mask(112, 0, ext_call.return_data[32]) > arg5:
                                if owner != msg.sender:
                                    mem[_898 + (8 * ceil32(return_data.size)) + 192] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_898 + (8 * ceil32(return_data.size)) + 196] = 32
                                    mem[_898 + (8 * ceil32(return_data.size)) + 228] = 32
                                    mem[_898 + (8 * ceil32(return_data.size)) + 260] = 'Ownable: caller is not the owner'
                                    revert with memory
                                      from _898 + (8 * ceil32(return_data.size)) + 192
                                       len (13 * ceil32(return_data.size)) + 100
                                if arg4 >= exchangesRouters.length:
                                    revert with 0, 50
                                mem[_898 + (8 * ceil32(return_data.size)) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[_898 + (8 * ceil32(return_data.size)) + 196] = arg5
                                mem[_898 + (8 * ceil32(return_data.size)) + 228] = 64
                                _1130 = mem[(32 * arg2.length + 1) + (32 * arg2.length) + 288]
                                mem[_898 + (8 * ceil32(return_data.size)) + 260] = mem[(32 * arg2.length + 1) + (32 * arg2.length) + 288]
                                s = 0
                                t = (32 * arg2.length + 1) + (32 * arg2.length) + 320
                                u = _898 + (8 * ceil32(return_data.size)) + 292
                                while s < _1130:
                                    mem[u] = mem[t + 12 len 20]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                require ext_code.size(exchangesRouters[arg4])
                                staticcall exchangesRouters[arg4].getAmountsOut(uint256 rg1, address[] rg2) with:
                                        gas gas_remaining wei
                                       args arg5, 64, mem[_898 + (8 * ceil32(return_data.size)) + 260 len (32 * _1130) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_898 + (8 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = _898 + (10 * ceil32(return_data.size)) + 192
                                require return_data.size >= 32
                                _1512 = mem[_898 + (8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5) >> 32
                                require mem[_898 + (8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5) >> 32 <= test266151307()
                                require _898 + (8 * ceil32(return_data.size)) + return_data.size + 192 > _898 + (8 * ceil32(return_data.size)) + mem[_898 + (8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5) >> 32 + 223
                                _1536 = mem[_898 + (8 * ceil32(return_data.size)) + mem[_898 + (8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5) >> 32 + 192]
                                if mem[_898 + (8 * ceil32(return_data.size)) + mem[_898 + (8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5) >> 32 + 192] > test266151307():
                                    revert with 0, 65
                                if ceil32(32 * mem[_898 + (8 * ceil32(return_data.size)) + mem[_898 + (8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5) >> 32 + 192]) + 1 < 0 or _898 + (10 * ceil32(return_data.size)) + ceil32(32 * mem[_898 + (8 * ceil32(return_data.size)) + mem[_898 + (8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5) >> 32 + 192]) + 193 > test266151307():
                                    revert with 0, 65
                                mem[64] = _898 + (10 * ceil32(return_data.size)) + ceil32(32 * mem[_898 + (8 * ceil32(return_data.size)) + mem[_898 + (8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5) >> 32 + 192]) + 193
                                mem[_898 + (10 * ceil32(return_data.size)) + 192] = mem[_898 + (8 * ceil32(return_data.size)) + mem[_898 + (8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5) >> 32 + 192]
                                require _1512 + (32 * _1536) + 32 <= return_data.size
                                t = _898 + (8 * ceil32(return_data.size)) + _1512 + 224
                                u = _898 + (10 * ceil32(return_data.size)) + 224
                                s = 0
                                while s < _1536:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s + 1
                                    continue 
                                if _1536 < 1:
                                    revert with 0, 17
                                if _1536 - 1 >= _1536:
                                    revert with 0, 50
                                _2212 = mem[(32 * _1536 - 1) + _898 + (10 * ceil32(return_data.size)) + 224]
                                if idx >= arg2.length:
                                    revert with 0, 50
                                require cd[((32 * idx) + arg2 + 36)] == address(cd[((32 * idx) + arg2 + 36)])
                                if 0 >= mem[(32 * arg2.length + 1) + (32 * arg2.length) + 288]:
                                    revert with 0, 50
                                mem[(32 * arg2.length + 1) + (32 * arg2.length) + 320] = address(cd[((32 * idx) + arg2 + 36)])
                                if 1 >= mem[(32 * arg2.length + 1) + (32 * arg2.length) + 288]:
                                    revert with 0, 50
                                mem[(32 * arg2.length + 1) + (32 * arg2.length) + 352] = arg3
                                if 0 >= mem[(32 * arg2.length + 1) + (32 * arg2.length) + 288]:
                                    revert with 0, 50
                                if 1 >= mem[(32 * arg2.length + 1) + (32 * arg2.length) + 288]:
                                    revert with 0, 50
                                if owner != msg.sender:
                                    revert with 0, 'Ownable: caller is not the owner'
                                _2302 = mem[64]
                                mem[mem[64]] = 2
                                if arg4 >= exchangesFactories.length:
                                    revert with 0, 50
                                mem[0] = 2
                                mem[mem[64] + 100] = address(cd[((32 * idx) + arg2 + 36)])
                                mem[mem[64] + 132] = arg3
                                require ext_code.size(exchangesFactories[arg4])
                                staticcall exchangesFactories[arg4].getPair(address rg1, address rg2) with:
                                        gas gas_remaining wei
                                       args address(cd[((32 * idx) + arg2 + 36)]), arg3
                                mem[mem[64] + 96] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).getReserves() with:
                                        gas gas_remaining wei
                                mem[mem[64] + ceil32(return_data.size) + 96 len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + (2 * ceil32(return_data.size)) + 96
                                require return_data.size >= 96
                                require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                                require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                                require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                                if 0 >= mem[_2302]:
                                    revert with 0, 50
                                mem[_2302 + 32] = ext_call.return_data[18 len 14]
                                if 1 >= mem[_2302]:
                                    revert with 0, 50
                                mem[_2302 + 64] = ext_call.return_data[50 len 14]
                                if 0 >= mem[(32 * arg2.length + 1) + (32 * arg2.length) + 288]:
                                    revert with 0, 50
                                if 1 >= mem[(32 * arg2.length + 1) + (32 * arg2.length) + 288]:
                                    revert with 0, 50
                                if owner != msg.sender:
                                    revert with 0, 'Ownable: caller is not the owner'
                                mem[_2302 + (2 * ceil32(return_data.size)) + 96] = 2
                                if arg4 >= exchangesFactories.length:
                                    revert with 0, 50
                                mem[0] = 2
                                mem[_2302 + (2 * ceil32(return_data.size)) + 196] = address(cd[((32 * idx) + arg2 + 36)])
                                mem[_2302 + (2 * ceil32(return_data.size)) + 228] = arg3
                                require ext_code.size(exchangesFactories[arg4])
                                staticcall exchangesFactories[arg4].getPair(address rg1, address rg2) with:
                                        gas gas_remaining wei
                                       args address(cd[((32 * idx) + arg2 + 36)]), arg3
                                mem[_2302 + (2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                mem[_2302 + (4 * ceil32(return_data.size)) + 192] = 0xdfe168100000000000000000000000000000000000000000000000000000000
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).token0() with:
                                        gas gas_remaining wei
                                       args mem[_2302 + (4 * ceil32(return_data.size)) + 196 len 5 * ceil32(return_data.size)]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                mem[_2302 + (2 * ceil32(return_data.size)) + 128] = ext_call.return_data[12 len 20]
                                mem[_2302 + (4 * ceil32(return_data.size)) + 192] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).token1() with:
                                        gas gas_remaining wei
                                       args mem[_2302 + (4 * ceil32(return_data.size)) + 196 len 7 * ceil32(return_data.size)]
                                mem[_2302 + (4 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _2302 + (8 * ceil32(return_data.size)) + 192
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                mem[_2302 + (2 * ceil32(return_data.size)) + 160] = ext_call.return_data[12 len 20]
                                if 0 >= mem[(32 * arg2.length + 1) + (32 * arg2.length) + 288]:
                                    revert with 0, 50
                                if mem[_2302 + (2 * ceil32(return_data.size)) + 140 len 20] != address(cd[((32 * idx) + arg2 + 36)]):
                                    if 1 >= mem[_2302]:
                                        revert with 0, 50
                                    if 0 >= mem[_2302]:
                                        revert with 0, 50
                                    if Mask(112, 0, ext_call.return_data[32]) > _2212:
                                        if idx >= arg2.length:
                                            revert with 0, 50
                                        require cd[((32 * idx) + arg2 + 36)] == address(cd[((32 * idx) + arg2 + 36)])
                                        if idx >= mem[(32 * arg2.length + 1) + 256]:
                                            revert with 0, 50
                                        mem[(32 * idx) + (32 * arg2.length + 1) + 288] = address(cd[((32 * idx) + arg2 + 36)])
                                else:
                                    if 0 >= mem[_2302]:
                                        revert with 0, 50
                                    if 1 >= mem[_2302]:
                                        revert with 0, 50
                                    if ext_call.return_data[18 len 14] > _2212:
                                        if idx >= arg2.length:
                                            revert with 0, 50
                                        require cd[((32 * idx) + arg2 + 36)] == address(cd[((32 * idx) + arg2 + 36)])
                                        if idx >= mem[(32 * arg2.length + 1) + 256]:
                                            revert with 0, 50
                                        mem[(32 * idx) + (32 * arg2.length + 1) + 288] = address(cd[((32 * idx) + arg2 + 36)])
                        else:
                            if 0 >= mem[_898]:
                                revert with 0, 50
                            if 1 >= mem[_898]:
                                revert with 0, 50
                            if ext_call.return_data[18 len 14] > arg5:
                                if owner != msg.sender:
                                    mem[_898 + (8 * ceil32(return_data.size)) + 192] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_898 + (8 * ceil32(return_data.size)) + 196] = 32
                                    mem[_898 + (8 * ceil32(return_data.size)) + 228] = 32
                                    mem[_898 + (8 * ceil32(return_data.size)) + 260] = 'Ownable: caller is not the owner'
                                    revert with memory
                                      from _898 + (8 * ceil32(return_data.size)) + 192
                                       len (13 * ceil32(return_data.size)) + 100
                                if arg4 >= exchangesRouters.length:
                                    revert with 0, 50
                                mem[_898 + (8 * ceil32(return_data.size)) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[_898 + (8 * ceil32(return_data.size)) + 196] = arg5
                                mem[_898 + (8 * ceil32(return_data.size)) + 228] = 64
                                _1131 = mem[(32 * arg2.length + 1) + (32 * arg2.length) + 288]
                                mem[_898 + (8 * ceil32(return_data.size)) + 260] = mem[(32 * arg2.length + 1) + (32 * arg2.length) + 288]
                                s = 0
                                t = (32 * arg2.length + 1) + (32 * arg2.length) + 320
                                u = _898 + (8 * ceil32(return_data.size)) + 292
                                while s < _1131:
                                    mem[u] = mem[t + 12 len 20]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                require ext_code.size(exchangesRouters[arg4])
                                staticcall exchangesRouters[arg4].getAmountsOut(uint256 rg1, address[] rg2) with:
                                        gas gas_remaining wei
                                       args arg5, 64, mem[_898 + (8 * ceil32(return_data.size)) + 260 len (32 * _1131) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_898 + (8 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = _898 + (10 * ceil32(return_data.size)) + 192
                                require return_data.size >= 32
                                _1513 = mem[_898 + (8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5) >> 32
                                require mem[_898 + (8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5) >> 32 <= test266151307()
                                require _898 + (8 * ceil32(return_data.size)) + return_data.size + 192 > _898 + (8 * ceil32(return_data.size)) + mem[_898 + (8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5) >> 32 + 223
                                _1537 = mem[_898 + (8 * ceil32(return_data.size)) + mem[_898 + (8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5) >> 32 + 192]
                                if mem[_898 + (8 * ceil32(return_data.size)) + mem[_898 + (8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5) >> 32 + 192] > test266151307():
                                    revert with 0, 65
                                if ceil32(32 * mem[_898 + (8 * ceil32(return_data.size)) + mem[_898 + (8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5) >> 32 + 192]) + 1 < 0 or _898 + (10 * ceil32(return_data.size)) + ceil32(32 * mem[_898 + (8 * ceil32(return_data.size)) + mem[_898 + (8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5) >> 32 + 192]) + 193 > test266151307():
                                    revert with 0, 65
                                mem[64] = _898 + (10 * ceil32(return_data.size)) + ceil32(32 * mem[_898 + (8 * ceil32(return_data.size)) + mem[_898 + (8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5) >> 32 + 192]) + 193
                                mem[_898 + (10 * ceil32(return_data.size)) + 192] = mem[_898 + (8 * ceil32(return_data.size)) + mem[_898 + (8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5) >> 32 + 192]
                                require _1513 + (32 * _1537) + 32 <= return_data.size
                                t = _898 + (8 * ceil32(return_data.size)) + _1513 + 224
                                u = _898 + (10 * ceil32(return_data.size)) + 224
                                s = 0
                                while s < _1537:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s + 1
                                    continue 
                                if _1537 < 1:
                                    revert with 0, 17
                                if _1537 - 1 >= _1537:
                                    revert with 0, 50
                                _2213 = mem[(32 * _1537 - 1) + _898 + (10 * ceil32(return_data.size)) + 224]
                                if idx >= arg2.length:
                                    revert with 0, 50
                                require cd[((32 * idx) + arg2 + 36)] == address(cd[((32 * idx) + arg2 + 36)])
                                if 0 >= mem[(32 * arg2.length + 1) + (32 * arg2.length) + 288]:
                                    revert with 0, 50
                                mem[(32 * arg2.length + 1) + (32 * arg2.length) + 320] = address(cd[((32 * idx) + arg2 + 36)])
                                if 1 >= mem[(32 * arg2.length + 1) + (32 * arg2.length) + 288]:
                                    revert with 0, 50
                                mem[(32 * arg2.length + 1) + (32 * arg2.length) + 352] = arg3
                                if 0 >= mem[(32 * arg2.length + 1) + (32 * arg2.length) + 288]:
                                    revert with 0, 50
                                if 1 >= mem[(32 * arg2.length + 1) + (32 * arg2.length) + 288]:
                                    revert with 0, 50
                                if owner != msg.sender:
                                    revert with 0, 'Ownable: caller is not the owner'
                                _2304 = mem[64]
                                mem[mem[64]] = 2
                                if arg4 >= exchangesFactories.length:
                                    revert with 0, 50
                                mem[0] = 2
                                mem[mem[64] + 100] = address(cd[((32 * idx) + arg2 + 36)])
                                mem[mem[64] + 132] = arg3
                                require ext_code.size(exchangesFactories[arg4])
                                staticcall exchangesFactories[arg4].getPair(address rg1, address rg2) with:
                                        gas gas_remaining wei
                                       args address(cd[((32 * idx) + arg2 + 36)]), arg3
                                mem[mem[64] + 96] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).getReserves() with:
                                        gas gas_remaining wei
                                mem[mem[64] + ceil32(return_data.size) + 96 len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + (2 * ceil32(return_data.size)) + 96
                                require return_data.size >= 96
                                require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                                require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                                require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                                if 0 >= mem[_2304]:
                                    revert with 0, 50
                                mem[_2304 + 32] = ext_call.return_data[18 len 14]
                                if 1 >= mem[_2304]:
                                    revert with 0, 50
                                mem[_2304 + 64] = ext_call.return_data[50 len 14]
                                if 0 >= mem[(32 * arg2.length + 1) + (32 * arg2.length) + 288]:
                                    revert with 0, 50
                                if 1 >= mem[(32 * arg2.length + 1) + (32 * arg2.length) + 288]:
                                    revert with 0, 50
                                if owner != msg.sender:
                                    revert with 0, 'Ownable: caller is not the owner'
                                mem[_2304 + (2 * ceil32(return_data.size)) + 96] = 2
                                if arg4 >= exchangesFactories.length:
                                    revert with 0, 50
                                mem[0] = 2
                                mem[_2304 + (2 * ceil32(return_data.size)) + 196] = address(cd[((32 * idx) + arg2 + 36)])
                                mem[_2304 + (2 * ceil32(return_data.size)) + 228] = arg3
                                require ext_code.size(exchangesFactories[arg4])
                                staticcall exchangesFactories[arg4].getPair(address rg1, address rg2) with:
                                        gas gas_remaining wei
                                       args address(cd[((32 * idx) + arg2 + 36)]), arg3
                                mem[_2304 + (2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                mem[_2304 + (4 * ceil32(return_data.size)) + 192] = 0xdfe168100000000000000000000000000000000000000000000000000000000
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).token0() with:
                                        gas gas_remaining wei
                                       args mem[_2304 + (4 * ceil32(return_data.size)) + 196 len 5 * ceil32(return_data.size)]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                mem[_2304 + (2 * ceil32(return_data.size)) + 128] = ext_call.return_data[12 len 20]
                                mem[_2304 + (4 * ceil32(return_data.size)) + 192] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).token1() with:
                                        gas gas_remaining wei
                                       args mem[_2304 + (4 * ceil32(return_data.size)) + 196 len 7 * ceil32(return_data.size)]
                                mem[_2304 + (4 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _2304 + (8 * ceil32(return_data.size)) + 192
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                mem[_2304 + (2 * ceil32(return_data.size)) + 160] = ext_call.return_data[12 len 20]
                                if 0 >= mem[(32 * arg2.length + 1) + (32 * arg2.length) + 288]:
                                    revert with 0, 50
                                if mem[_2304 + (2 * ceil32(return_data.size)) + 140 len 20] != address(cd[((32 * idx) + arg2 + 36)]):
                                    if 1 >= mem[_2304]:
                                        revert with 0, 50
                                    if 0 >= mem[_2304]:
                                        revert with 0, 50
                                    if Mask(112, 0, ext_call.return_data[32]) > _2213:
                                        if idx >= arg2.length:
                                            revert with 0, 50
                                        require cd[((32 * idx) + arg2 + 36)] == address(cd[((32 * idx) + arg2 + 36)])
                                        if idx >= mem[(32 * arg2.length + 1) + 256]:
                                            revert with 0, 50
                                        mem[(32 * idx) + (32 * arg2.length + 1) + 288] = address(cd[((32 * idx) + arg2 + 36)])
                                else:
                                    if 0 >= mem[_2304]:
                                        revert with 0, 50
                                    if 1 >= mem[_2304]:
                                        revert with 0, 50
                                    if ext_call.return_data[18 len 14] > _2213:
                                        if idx >= arg2.length:
                                            revert with 0, 50
                                        require cd[((32 * idx) + arg2 + 36)] == address(cd[((32 * idx) + arg2 + 36)])
                                        if idx >= mem[(32 * arg2.length + 1) + 256]:
                                            revert with 0, 50
                                        mem[(32 * idx) + (32 * arg2.length + 1) + 288] = address(cd[((32 * idx) + arg2 + 36)])
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _1426 = mem[(32 * arg2.length + 1) + 256]
            idx = 0
            while idx < _1426:
                if idx >= mem[(32 * arg2.length + 1) + 256]:
                    revert with 0, 50
                if not mem[(32 * idx) + (32 * arg2.length + 1) + 300 len 20]:
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[(32 * idx) + 128] = 0
                else:
                    if 0 >= mem[(32 * arg2.length + 1) + 128]:
                        revert with 0, 50
                    mem[(32 * arg2.length + 1) + 160] = arg1
                    if idx >= mem[(32 * arg2.length + 1) + 256]:
                        revert with 0, 50
                    if 1 >= mem[(32 * arg2.length + 1) + 128]:
                        revert with 0, 50
                    mem[(32 * arg2.length + 1) + 192] = mem[(32 * idx) + (32 * arg2.length + 1) + 300 len 20]
                    if 2 >= mem[(32 * arg2.length + 1) + 128]:
                        revert with 0, 50
                    mem[(32 * arg2.length + 1) + 224] = arg3
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    if arg4 >= exchangesRouters.length:
                        revert with 0, 50
                    mem[0] = 1
                    _1553 = mem[64]
                    mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = arg5
                    mem[mem[64] + 36] = 64
                    _1579 = mem[(32 * arg2.length + 1) + 128]
                    mem[mem[64] + 68] = mem[(32 * arg2.length + 1) + 128]
                    s = 0
                    t = (32 * arg2.length + 1) + 160
                    u = mem[64] + 100
                    while s < _1579:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    require ext_code.size(exchangesRouters[arg4])
                    staticcall exchangesRouters[arg4].mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _1553 + (32 * _1579) + -mem[64] + 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2192 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2227 = mem[_2192]
                    require mem[_2192] <= test266151307()
                    require _2192 + return_data.size > _2192 + mem[_2192] + 31
                    _2235 = mem[_2192 + mem[_2192]]
                    if mem[_2192 + mem[_2192]] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[_2192 + mem[_2192]]) + 1 < 0 or _2192 + ceil32(return_data.size) + ceil32(32 * mem[_2192 + mem[_2192]]) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = _2192 + ceil32(return_data.size) + ceil32(32 * mem[_2192 + mem[_2192]]) + 1
                    mem[_2192 + ceil32(return_data.size)] = _2235
                    require _2227 + (32 * _2235) + 32 <= return_data.size
                    t = _2192 + _2227 + 32
                    u = _2192 + ceil32(return_data.size) + 32
                    s = 0
                    while s < _2235:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s + 1
                        continue 
                    if _2235 < 1:
                        revert with 0, 17
                    if _2235 - 1 >= _2235:
                        revert with 0, 50
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[(32 * idx) + 128] = mem[(32 * _2235 - 1) + _2192 + ceil32(return_data.size) + 32]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            _1446 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            mem[_1446 + 32 len 64] = call.data[calldata.size len 64]
            if 1 >= mem[_1446]:
                revert with 0, 50
            mem[_1446 + 64] = 0
            _2138 = mem[96]
            idx = 0
            while idx < _2138:
                if idx >= mem[96]:
                    revert with 0, 50
                if 1 >= mem[_1446]:
                    revert with 0, 50
                if mem[_1446 + 64] < mem[(32 * idx) + 128]:
                    if 0 >= mem[_1446]:
                        revert with 0, 50
                    mem[_1446 + 32] = idx
                    if idx >= mem[96]:
                        revert with 0, 50
                    if 1 >= mem[_1446]:
                        revert with 0, 50
                    mem[_1446 + 64] = mem[(32 * idx) + 128]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            mem[mem[64]] = 32
            _2190 = mem[_1446]
            mem[mem[64] + 32] = mem[_1446]
            mem[mem[64] + 64 len 32 * _2190] = mem[_1446 + 32 len 32 * _2190]
            return 32, mem[mem[64] + 32 len (32 * _2190) + 32]
        mem[(32 * arg2.length + 1) + 288 len 32 * arg2.length] = call.data[calldata.size len 32 * arg2.length]
        mem[(32 * arg2.length + 1) + (32 * arg2.length) + 288] = 2
        mem[64] = (32 * arg2.length + 1) + (32 * arg2.length) + 384
        mem[(32 * arg2.length + 1) + (32 * arg2.length) + 320 len 64] = call.data[calldata.size len 64]
        idx = 0
        while idx < arg2.length:
            require cd[((32 * idx) + arg2 + 36)] == address(cd[((32 * idx) + arg2 + 36)])
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            if arg4 >= exchangesFactories.length:
                revert with 0, 50
            mem[0] = 2
            mem[mem[64] + 4] = arg1
            mem[mem[64] + 36] = address(cd[((32 * idx) + arg2 + 36)])
            require ext_code.size(exchangesFactories[arg4])
            staticcall exchangesFactories[arg4].getPair(address rg1, address rg2) with:
                    gas gas_remaining wei
                   args address(arg1), address(cd[((32 * idx) + arg2 + 36)])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _763 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_763] == mem[_763 + 12 len 20]
            if mem[_763 + 12 len 20]:
                if idx >= arg2.length:
                    revert with 0, 50
                require cd[((32 * idx) + arg2 + 36)] == address(cd[((32 * idx) + arg2 + 36)])
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                if arg4 >= exchangesFactories.length:
                    revert with 0, 50
                mem[0] = 2
                mem[mem[64] + 4] = address(cd[((32 * idx) + arg2 + 36)])
                mem[mem[64] + 36] = arg3
                require ext_code.size(exchangesFactories[arg4])
                staticcall exchangesFactories[arg4].getPair(address rg1, address rg2) with:
                        gas gas_remaining wei
                       args address(cd[((32 * idx) + arg2 + 36)]), arg3
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _847 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_847] == mem[_847 + 12 len 20]
                if mem[_847 + 12 len 20]:
                    if 0 >= mem[(32 * arg2.length + 1) + (32 * arg2.length) + 288]:
                        revert with 0, 50
                    mem[(32 * arg2.length + 1) + (32 * arg2.length) + 320] = arg1
                    if idx >= arg2.length:
                        revert with 0, 50
                    require cd[((32 * idx) + arg2 + 36)] == address(cd[((32 * idx) + arg2 + 36)])
                    if 1 >= mem[(32 * arg2.length + 1) + (32 * arg2.length) + 288]:
                        revert with 0, 50
                    mem[(32 * arg2.length + 1) + (32 * arg2.length) + 352] = address(cd[((32 * idx) + arg2 + 36)])
                    if 0 >= mem[(32 * arg2.length + 1) + (32 * arg2.length) + 288]:
                        revert with 0, 50
                    if 1 >= mem[(32 * arg2.length + 1) + (32 * arg2.length) + 288]:
                        revert with 0, 50
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    _900 = mem[64]
                    mem[mem[64]] = 2
                    if arg4 >= exchangesFactories.length:
                        revert with 0, 50
                    mem[0] = 2
                    mem[mem[64] + 100] = arg1
                    mem[mem[64] + 132] = address(cd[((32 * idx) + arg2 + 36)])
                    require ext_code.size(exchangesFactories[arg4])
                    staticcall exchangesFactories[arg4].getPair(address rg1, address rg2) with:
                            gas gas_remaining wei
                           args address(arg1), address(cd[((32 * idx) + arg2 + 36)])
                    mem[mem[64] + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] + ceil32(return_data.size) + 96 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + (2 * ceil32(return_data.size)) + 96
                    require return_data.size >= 96
                    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                    if 0 >= mem[_900]:
                        revert with 0, 50
                    mem[_900 + 32] = ext_call.return_data[18 len 14]
                    if 1 >= mem[_900]:
                        revert with 0, 50
                    mem[_900 + 64] = ext_call.return_data[50 len 14]
                    if 0 >= mem[(32 * arg2.length + 1) + (32 * arg2.length) + 288]:
                        revert with 0, 50
                    if 1 >= mem[(32 * arg2.length + 1) + (32 * arg2.length) + 288]:
                        revert with 0, 50
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    mem[_900 + (2 * ceil32(return_data.size)) + 96] = 2
                    if arg4 >= exchangesFactories.length:
                        revert with 0, 50
                    mem[0] = 2
                    mem[_900 + (2 * ceil32(return_data.size)) + 196] = arg1
                    mem[_900 + (2 * ceil32(return_data.size)) + 228] = address(cd[((32 * idx) + arg2 + 36)])
                    require ext_code.size(exchangesFactories[arg4])
                    staticcall exchangesFactories[arg4].getPair(address rg1, address rg2) with:
                            gas gas_remaining wei
                           args address(arg1), address(cd[((32 * idx) + arg2 + 36)])
                    mem[_900 + (2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[_900 + (4 * ceil32(return_data.size)) + 192] = 0xdfe168100000000000000000000000000000000000000000000000000000000
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).token0() with:
                            gas gas_remaining wei
                           args mem[_900 + (4 * ceil32(return_data.size)) + 196 len 5 * ceil32(return_data.size)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[_900 + (2 * ceil32(return_data.size)) + 128] = ext_call.return_data[12 len 20]
                    mem[_900 + (4 * ceil32(return_data.size)) + 192] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).token1() with:
                            gas gas_remaining wei
                           args mem[_900 + (4 * ceil32(return_data.size)) + 196 len 7 * ceil32(return_data.size)]
                    mem[_900 + (4 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _900 + (8 * ceil32(return_data.size)) + 192
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[_900 + (2 * ceil32(return_data.size)) + 160] = ext_call.return_data[12 len 20]
                    if 0 >= mem[(32 * arg2.length + 1) + (32 * arg2.length) + 288]:
                        revert with 0, 50
                    if mem[_900 + (2 * ceil32(return_data.size)) + 140 len 20] != arg1:
                        if 1 >= mem[_900]:
                            revert with 0, 50
                        if 0 >= mem[_900]:
                            revert with 0, 50
                        if Mask(112, 0, ext_call.return_data[32]) > arg5:
                            if owner != msg.sender:
                                mem[_900 + (8 * ceil32(return_data.size)) + 192] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_900 + (8 * ceil32(return_data.size)) + 196] = 32
                                mem[_900 + (8 * ceil32(return_data.size)) + 228] = 32
                                mem[_900 + (8 * ceil32(return_data.size)) + 260] = 'Ownable: caller is not the owner'
                                revert with memory
                                  from _900 + (8 * ceil32(return_data.size)) + 192
                                   len (13 * ceil32(return_data.size)) + 100
                            if arg4 >= exchangesRouters.length:
                                revert with 0, 50
                            mem[0] = 1
                            mem[_900 + (8 * ceil32(return_data.size)) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[_900 + (8 * ceil32(return_data.size)) + 196] = arg5
                            mem[_900 + (8 * ceil32(return_data.size)) + 228] = 64
                            _1132 = mem[(32 * arg2.length + 1) + (32 * arg2.length) + 288]
                            mem[_900 + (8 * ceil32(return_data.size)) + 260] = mem[(32 * arg2.length + 1) + (32 * arg2.length) + 288]
                            s = 0
                            t = (32 * arg2.length + 1) + (32 * arg2.length) + 320
                            u = _900 + (8 * ceil32(return_data.size)) + 292
                            while s < _1132:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            require ext_code.size(exchangesRouters[arg4])
                            staticcall exchangesRouters[arg4].getAmountsOut(uint256 rg1, address[] rg2) with:
                                    gas gas_remaining wei
                                   args arg5, 64, mem[_900 + (8 * ceil32(return_data.size)) + 260 len (32 * _1132) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_900 + (8 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = _900 + (10 * ceil32(return_data.size)) + 192
                            require return_data.size >= 32
                            _1516 = mem[_900 + (8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5) >> 32
                            require mem[_900 + (8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5) >> 32 <= test266151307()
                            require _900 + (8 * ceil32(return_data.size)) + return_data.size + 192 > _900 + (8 * ceil32(return_data.size)) + mem[_900 + (8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5) >> 32 + 223
                            _1540 = mem[_900 + (8 * ceil32(return_data.size)) + mem[_900 + (8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5) >> 32 + 192]
                            if mem[_900 + (8 * ceil32(return_data.size)) + mem[_900 + (8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5) >> 32 + 192] > test266151307():
                                revert with 0, 65
                            if ceil32(32 * mem[_900 + (8 * ceil32(return_data.size)) + mem[_900 + (8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5) >> 32 + 192]) + 1 < 0 or _900 + (10 * ceil32(return_data.size)) + ceil32(32 * mem[_900 + (8 * ceil32(return_data.size)) + mem[_900 + (8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5) >> 32 + 192]) + 193 > test266151307():
                                revert with 0, 65
                            mem[64] = _900 + (10 * ceil32(return_data.size)) + ceil32(32 * mem[_900 + (8 * ceil32(return_data.size)) + mem[_900 + (8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5) >> 32 + 192]) + 193
                            mem[_900 + (10 * ceil32(return_data.size)) + 192] = _1540
                            require _1516 + (32 * _1540) + 32 <= return_data.size
                            t = _900 + (8 * ceil32(return_data.size)) + _1516 + 224
                            u = _900 + (10 * ceil32(return_data.size)) + 224
                            s = 0
                            while s < _1540:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s + 1
                                continue 
                            if _1540 < 1:
                                revert with 0, 17
                            if _1540 - 1 >= _1540:
                                revert with 0, 50
                            _2216 = mem[(32 * _1540 - 1) + _900 + (10 * ceil32(return_data.size)) + 224]
                            if idx >= arg2.length:
                                revert with 0, 50
                            require cd[((32 * idx) + arg2 + 36)] == address(cd[((32 * idx) + arg2 + 36)])
                            if 0 >= mem[(32 * arg2.length + 1) + (32 * arg2.length) + 288]:
                                revert with 0, 50
                            mem[(32 * arg2.length + 1) + (32 * arg2.length) + 320] = address(cd[((32 * idx) + arg2 + 36)])
                            if 1 >= mem[(32 * arg2.length + 1) + (32 * arg2.length) + 288]:
                                revert with 0, 50
                            mem[(32 * arg2.length + 1) + (32 * arg2.length) + 352] = arg3
                            if 0 >= mem[(32 * arg2.length + 1) + (32 * arg2.length) + 288]:
                                revert with 0, 50
                            if 1 >= mem[(32 * arg2.length + 1) + (32 * arg2.length) + 288]:
                                revert with 0, 50
                            if owner != msg.sender:
                                revert with 0, 'Ownable: caller is not the owner'
                            _2306 = mem[64]
                            mem[mem[64]] = 2
                            if arg4 >= exchangesFactories.length:
                                revert with 0, 50
                            mem[0] = 2
                            mem[mem[64] + 100] = address(cd[((32 * idx) + arg2 + 36)])
                            mem[mem[64] + 132] = arg3
                            require ext_code.size(exchangesFactories[arg4])
                            staticcall exchangesFactories[arg4].getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * idx) + arg2 + 36)]), arg3
                            mem[mem[64] + 96] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).getReserves() with:
                                    gas gas_remaining wei
                            mem[mem[64] + ceil32(return_data.size) + 96 len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + (2 * ceil32(return_data.size)) + 96
                            require return_data.size >= 96
                            require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                            require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                            if 0 >= mem[_2306]:
                                revert with 0, 50
                            mem[_2306 + 32] = ext_call.return_data[18 len 14]
                            if 1 >= mem[_2306]:
                                revert with 0, 50
                            mem[_2306 + 64] = ext_call.return_data[50 len 14]
                            if 0 >= mem[(32 * arg2.length + 1) + (32 * arg2.length) + 288]:
                                revert with 0, 50
                            if 1 >= mem[(32 * arg2.length + 1) + (32 * arg2.length) + 288]:
                                revert with 0, 50
                            if owner != msg.sender:
                                revert with 0, 'Ownable: caller is not the owner'
                            mem[_2306 + (2 * ceil32(return_data.size)) + 96] = 2
                            if arg4 >= exchangesFactories.length:
                                revert with 0, 50
                            mem[0] = 2
                            mem[_2306 + (2 * ceil32(return_data.size)) + 196] = address(cd[((32 * idx) + arg2 + 36)])
                            mem[_2306 + (2 * ceil32(return_data.size)) + 228] = arg3
                            require ext_code.size(exchangesFactories[arg4])
                            staticcall exchangesFactories[arg4].getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * idx) + arg2 + 36)]), arg3
                            mem[_2306 + (2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[_2306 + (4 * ceil32(return_data.size)) + 192] = 0xdfe168100000000000000000000000000000000000000000000000000000000
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).token0() with:
                                    gas gas_remaining wei
                                   args mem[_2306 + (4 * ceil32(return_data.size)) + 196 len 5 * ceil32(return_data.size)]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[_2306 + (2 * ceil32(return_data.size)) + 128] = ext_call.return_data[12 len 20]
                            mem[_2306 + (4 * ceil32(return_data.size)) + 192] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).token1() with:
                                    gas gas_remaining wei
                                   args mem[_2306 + (4 * ceil32(return_data.size)) + 196 len 7 * ceil32(return_data.size)]
                            mem[_2306 + (4 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _2306 + (8 * ceil32(return_data.size)) + 192
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[_2306 + (2 * ceil32(return_data.size)) + 160] = ext_call.return_data[12 len 20]
                            if 0 >= mem[(32 * arg2.length + 1) + (32 * arg2.length) + 288]:
                                revert with 0, 50
                            if mem[_2306 + (2 * ceil32(return_data.size)) + 140 len 20] != address(cd[((32 * idx) + arg2 + 36)]):
                                if 1 >= mem[_2306]:
                                    revert with 0, 50
                                if 0 >= mem[_2306]:
                                    revert with 0, 50
                                if Mask(112, 0, ext_call.return_data[32]) > _2216:
                                    if idx >= arg2.length:
                                        revert with 0, 50
                                    require cd[((32 * idx) + arg2 + 36)] == address(cd[((32 * idx) + arg2 + 36)])
                                    if idx >= mem[(32 * arg2.length + 1) + 256]:
                                        revert with 0, 50
                                    mem[(32 * idx) + (32 * arg2.length + 1) + 288] = address(cd[((32 * idx) + arg2 + 36)])
                            else:
                                if 0 >= mem[_2306]:
                                    revert with 0, 50
                                if 1 >= mem[_2306]:
                                    revert with 0, 50
                                if ext_call.return_data[18 len 14] > _2216:
                                    if idx >= arg2.length:
                                        revert with 0, 50
                                    require cd[((32 * idx) + arg2 + 36)] == address(cd[((32 * idx) + arg2 + 36)])
                                    if idx >= mem[(32 * arg2.length + 1) + 256]:
                                        revert with 0, 50
                                    mem[(32 * idx) + (32 * arg2.length + 1) + 288] = address(cd[((32 * idx) + arg2 + 36)])
                    else:
                        if 0 >= mem[_900]:
                            revert with 0, 50
                        if 1 >= mem[_900]:
                            revert with 0, 50
                        if ext_call.return_data[18 len 14] > arg5:
                            if owner != msg.sender:
                                mem[_900 + (8 * ceil32(return_data.size)) + 192] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_900 + (8 * ceil32(return_data.size)) + 196] = 32
                                mem[_900 + (8 * ceil32(return_data.size)) + 228] = 32
                                mem[_900 + (8 * ceil32(return_data.size)) + 260] = 'Ownable: caller is not the owner'
                                revert with memory
                                  from _900 + (8 * ceil32(return_data.size)) + 192
                                   len (13 * ceil32(return_data.size)) + 100
                            if arg4 >= exchangesRouters.length:
                                revert with 0, 50
                            mem[0] = 1
                            mem[_900 + (8 * ceil32(return_data.size)) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[_900 + (8 * ceil32(return_data.size)) + 196] = arg5
                            mem[_900 + (8 * ceil32(return_data.size)) + 228] = 64
                            _1133 = mem[(32 * arg2.length + 1) + (32 * arg2.length) + 288]
                            mem[_900 + (8 * ceil32(return_data.size)) + 260] = mem[(32 * arg2.length + 1) + (32 * arg2.length) + 288]
                            s = 0
                            t = (32 * arg2.length + 1) + (32 * arg2.length) + 320
                            u = _900 + (8 * ceil32(return_data.size)) + 292
                            while s < _1133:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            require ext_code.size(exchangesRouters[arg4])
                            staticcall exchangesRouters[arg4].getAmountsOut(uint256 rg1, address[] rg2) with:
                                    gas gas_remaining wei
                                   args arg5, 64, mem[_900 + (8 * ceil32(return_data.size)) + 260 len (32 * _1133) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_900 + (8 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = _900 + (10 * ceil32(return_data.size)) + 192
                            require return_data.size >= 32
                            _1517 = mem[_900 + (8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5) >> 32
                            require mem[_900 + (8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5) >> 32 <= test266151307()
                            require _900 + (8 * ceil32(return_data.size)) + return_data.size + 192 > _900 + (8 * ceil32(return_data.size)) + mem[_900 + (8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5) >> 32 + 223
                            _1541 = mem[_900 + (8 * ceil32(return_data.size)) + mem[_900 + (8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5) >> 32 + 192]
                            if mem[_900 + (8 * ceil32(return_data.size)) + mem[_900 + (8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5) >> 32 + 192] > test266151307():
                                revert with 0, 65
                            if ceil32(32 * mem[_900 + (8 * ceil32(return_data.size)) + mem[_900 + (8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5) >> 32 + 192]) + 1 < 0 or _900 + (10 * ceil32(return_data.size)) + ceil32(32 * mem[_900 + (8 * ceil32(return_data.size)) + mem[_900 + (8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5) >> 32 + 192]) + 193 > test266151307():
                                revert with 0, 65
                            mem[64] = _900 + (10 * ceil32(return_data.size)) + ceil32(32 * mem[_900 + (8 * ceil32(return_data.size)) + mem[_900 + (8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5) >> 32 + 192]) + 193
                            mem[_900 + (10 * ceil32(return_data.size)) + 192] = _1541
                            require _1517 + (32 * _1541) + 32 <= return_data.size
                            t = _900 + (8 * ceil32(return_data.size)) + _1517 + 224
                            u = _900 + (10 * ceil32(return_data.size)) + 224
                            s = 0
                            while s < _1541:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s + 1
                                continue 
                            if _1541 < 1:
                                revert with 0, 17
                            if _1541 - 1 >= _1541:
                                revert with 0, 50
                            _2217 = mem[(32 * _1541 - 1) + _900 + (10 * ceil32(return_data.size)) + 224]
                            if idx >= arg2.length:
                                revert with 0, 50
                            require cd[((32 * idx) + arg2 + 36)] == address(cd[((32 * idx) + arg2 + 36)])
                            if 0 >= mem[(32 * arg2.length + 1) + (32 * arg2.length) + 288]:
                                revert with 0, 50
                            mem[(32 * arg2.length + 1) + (32 * arg2.length) + 320] = address(cd[((32 * idx) + arg2 + 36)])
                            if 1 >= mem[(32 * arg2.length + 1) + (32 * arg2.length) + 288]:
                                revert with 0, 50
                            mem[(32 * arg2.length + 1) + (32 * arg2.length) + 352] = arg3
                            if 0 >= mem[(32 * arg2.length + 1) + (32 * arg2.length) + 288]:
                                revert with 0, 50
                            if 1 >= mem[(32 * arg2.length + 1) + (32 * arg2.length) + 288]:
                                revert with 0, 50
                            if owner != msg.sender:
                                revert with 0, 'Ownable: caller is not the owner'
                            _2308 = mem[64]
                            mem[mem[64]] = 2
                            if arg4 >= exchangesFactories.length:
                                revert with 0, 50
                            mem[0] = 2
                            mem[mem[64] + 100] = address(cd[((32 * idx) + arg2 + 36)])
                            mem[mem[64] + 132] = arg3
                            require ext_code.size(exchangesFactories[arg4])
                            staticcall exchangesFactories[arg4].getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * idx) + arg2 + 36)]), arg3
                            mem[mem[64] + 96] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).getReserves() with:
                                    gas gas_remaining wei
                            mem[mem[64] + ceil32(return_data.size) + 96 len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + (2 * ceil32(return_data.size)) + 96
                            require return_data.size >= 96
                            require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                            require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                            if 0 >= mem[_2308]:
                                revert with 0, 50
                            mem[_2308 + 32] = ext_call.return_data[18 len 14]
                            if 1 >= mem[_2308]:
                                revert with 0, 50
                            mem[_2308 + 64] = ext_call.return_data[50 len 14]
                            if 0 >= mem[(32 * arg2.length + 1) + (32 * arg2.length) + 288]:
                                revert with 0, 50
                            if 1 >= mem[(32 * arg2.length + 1) + (32 * arg2.length) + 288]:
                                revert with 0, 50
                            if owner != msg.sender:
                                revert with 0, 'Ownable: caller is not the owner'
                            mem[_2308 + (2 * ceil32(return_data.size)) + 96] = 2
                            if arg4 >= exchangesFactories.length:
                                revert with 0, 50
                            mem[0] = 2
                            mem[_2308 + (2 * ceil32(return_data.size)) + 196] = address(cd[((32 * idx) + arg2 + 36)])
                            mem[_2308 + (2 * ceil32(return_data.size)) + 228] = arg3
                            require ext_code.size(exchangesFactories[arg4])
                            staticcall exchangesFactories[arg4].getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * idx) + arg2 + 36)]), arg3
                            mem[_2308 + (2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[_2308 + (4 * ceil32(return_data.size)) + 192] = 0xdfe168100000000000000000000000000000000000000000000000000000000
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).token0() with:
                                    gas gas_remaining wei
                                   args mem[_2308 + (4 * ceil32(return_data.size)) + 196 len 5 * ceil32(return_data.size)]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[_2308 + (2 * ceil32(return_data.size)) + 128] = ext_call.return_data[12 len 20]
                            mem[_2308 + (4 * ceil32(return_data.size)) + 192] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).token1() with:
                                    gas gas_remaining wei
                                   args mem[_2308 + (4 * ceil32(return_data.size)) + 196 len 7 * ceil32(return_data.size)]
                            mem[_2308 + (4 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _2308 + (8 * ceil32(return_data.size)) + 192
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[_2308 + (2 * ceil32(return_data.size)) + 160] = ext_call.return_data[12 len 20]
                            if 0 >= mem[(32 * arg2.length + 1) + (32 * arg2.length) + 288]:
                                revert with 0, 50
                            if mem[_2308 + (2 * ceil32(return_data.size)) + 140 len 20] != address(cd[((32 * idx) + arg2 + 36)]):
                                if 1 >= mem[_2308]:
                                    revert with 0, 50
                                if 0 >= mem[_2308]:
                                    revert with 0, 50
                                if Mask(112, 0, ext_call.return_data[32]) > _2217:
                                    if idx >= arg2.length:
                                        revert with 0, 50
                                    require cd[((32 * idx) + arg2 + 36)] == address(cd[((32 * idx) + arg2 + 36)])
                                    if idx >= mem[(32 * arg2.length + 1) + 256]:
                                        revert with 0, 50
                                    mem[(32 * idx) + (32 * arg2.length + 1) + 288] = address(cd[((32 * idx) + arg2 + 36)])
                            else:
                                if 0 >= mem[_2308]:
                                    revert with 0, 50
                                if 1 >= mem[_2308]:
                                    revert with 0, 50
                                if ext_call.return_data[18 len 14] > _2217:
                                    if idx >= arg2.length:
                                        revert with 0, 50
                                    require cd[((32 * idx) + arg2 + 36)] == address(cd[((32 * idx) + arg2 + 36)])
                                    if idx >= mem[(32 * arg2.length + 1) + 256]:
                                        revert with 0, 50
                                    mem[(32 * idx) + (32 * arg2.length + 1) + 288] = address(cd[((32 * idx) + arg2 + 36)])
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _1427 = mem[(32 * arg2.length + 1) + 256]
        idx = 0
        while idx < _1427:
            if idx >= mem[(32 * arg2.length + 1) + 256]:
                revert with 0, 50
            if not mem[(32 * idx) + (32 * arg2.length + 1) + 300 len 20]:
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = 0
            else:
                if 0 >= mem[(32 * arg2.length + 1) + 128]:
                    revert with 0, 50
                mem[(32 * arg2.length + 1) + 160] = arg1
                if idx >= mem[(32 * arg2.length + 1) + 256]:
                    revert with 0, 50
                if 1 >= mem[(32 * arg2.length + 1) + 128]:
                    revert with 0, 50
                mem[(32 * arg2.length + 1) + 192] = mem[(32 * idx) + (32 * arg2.length + 1) + 300 len 20]
                if 2 >= mem[(32 * arg2.length + 1) + 128]:
                    revert with 0, 50
                mem[(32 * arg2.length + 1) + 224] = arg3
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                if arg4 >= exchangesRouters.length:
                    revert with 0, 50
                mem[0] = 1
                mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = arg5
                mem[mem[64] + 36] = 64
                _1581 = mem[(32 * arg2.length + 1) + 128]
                mem[mem[64] + 68] = mem[(32 * arg2.length + 1) + 128]
                s = 0
                t = (32 * arg2.length + 1) + 160
                u = mem[64] + 100
                while s < _1581:
                    mem[u] = mem[t + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                require ext_code.size(exchangesRouters[arg4])
                staticcall exchangesRouters[arg4].getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args arg5, 64, mem[mem[64] + 68 len (32 * _1581) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2197 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2229 = mem[_2197]
                require mem[_2197] <= test266151307()
                require _2197 + return_data.size > _2197 + mem[_2197] + 31
                _2237 = mem[_2197 + mem[_2197]]
                if mem[_2197 + mem[_2197]] > test266151307():
                    revert with 0, 65
                if ceil32(32 * mem[_2197 + mem[_2197]]) + 1 < 0 or _2197 + ceil32(return_data.size) + ceil32(32 * mem[_2197 + mem[_2197]]) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = _2197 + ceil32(return_data.size) + ceil32(32 * mem[_2197 + mem[_2197]]) + 1
                mem[_2197 + ceil32(return_data.size)] = _2237
                require _2229 + (32 * _2237) + 32 <= return_data.size
                t = _2197 + _2229 + 32
                u = _2197 + ceil32(return_data.size) + 32
                s = 0
                while s < _2237:
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s + 1
                    continue 
                if _2237 < 1:
                    revert with 0, 17
                if _2237 - 1 >= _2237:
                    revert with 0, 50
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = mem[(32 * _2237 - 1) + _2197 + ceil32(return_data.size) + 32]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if owner != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
        _1453 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        mem[_1453 + 32 len 64] = call.data[calldata.size len 64]
        if 1 >= mem[_1453]:
            revert with 0, 50
        mem[_1453 + 64] = 0
        _2139 = mem[96]
        idx = 0
        while idx < _2139:
            if idx >= mem[96]:
                revert with 0, 50
            if 1 >= mem[_1453]:
                revert with 0, 50
            if mem[_1453 + 64] < mem[(32 * idx) + 128]:
                if 0 >= mem[_1453]:
                    revert with 0, 50
                mem[_1453 + 32] = idx
                if idx >= mem[96]:
                    revert with 0, 50
                if 1 >= mem[_1453]:
                    revert with 0, 50
                mem[_1453 + 64] = mem[(32 * idx) + 128]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        _2195 = mem[_1453]
        mem[mem[64] + 32] = mem[_1453]
        mem[mem[64] + 64 len 32 * _2195] = mem[_1453 + 32 len 32 * _2195]
        return 32, mem[mem[64] + 32 len (32 * _2195) + 32]
    mem[128 len 32 * arg2.length + 1] = call.data[calldata.size len 32 * arg2.length + 1]
    mem[(32 * arg2.length + 1) + 128] = 3
    mem[(32 * arg2.length + 1) + 160 len 96] = call.data[calldata.size len 96]
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg2.length > test266151307():
        revert with 0, 65
    mem[(32 * arg2.length + 1) + 256] = arg2.length
    if not arg2.length:
        mem[(32 * arg2.length + 1) + (32 * arg2.length) + 288] = 2
        mem[64] = (32 * arg2.length + 1) + (32 * arg2.length) + 384
        mem[(32 * arg2.length + 1) + (32 * arg2.length) + 320 len 64] = call.data[calldata.size len 64]
        idx = 0
        while idx < arg2.length:
            require cd[((32 * idx) + arg2 + 36)] == address(cd[((32 * idx) + arg2 + 36)])
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            if arg4 >= exchangesFactories.length:
                revert with 0, 50
            mem[0] = 2
            mem[mem[64] + 4] = arg1
            mem[mem[64] + 36] = address(cd[((32 * idx) + arg2 + 36)])
            require ext_code.size(exchangesFactories[arg4])
            staticcall exchangesFactories[arg4].getPair(address rg1, address rg2) with:
                    gas gas_remaining wei
                   args address(arg1), address(cd[((32 * idx) + arg2 + 36)])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _768 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_768] == mem[_768 + 12 len 20]
            if mem[_768 + 12 len 20]:
                if idx >= arg2.length:
                    revert with 0, 50
                require cd[((32 * idx) + arg2 + 36)] == address(cd[((32 * idx) + arg2 + 36)])
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                if arg4 >= exchangesFactories.length:
                    revert with 0, 50
                mem[0] = 2
                mem[mem[64] + 4] = address(cd[((32 * idx) + arg2 + 36)])
                mem[mem[64] + 36] = arg3
                require ext_code.size(exchangesFactories[arg4])
                staticcall exchangesFactories[arg4].getPair(address rg1, address rg2) with:
                        gas gas_remaining wei
                       args address(cd[((32 * idx) + arg2 + 36)]), arg3
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _848 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_848] == mem[_848 + 12 len 20]
                if mem[_848 + 12 len 20]:
                    if 0 >= mem[(32 * arg2.length + 1) + (32 * arg2.length) + 288]:
                        revert with 0, 50
                    mem[(32 * arg2.length + 1) + (32 * arg2.length) + 320] = arg1
                    if idx >= arg2.length:
                        revert with 0, 50
                    require cd[((32 * idx) + arg2 + 36)] == address(cd[((32 * idx) + arg2 + 36)])
                    if 1 >= mem[(32 * arg2.length + 1) + (32 * arg2.length) + 288]:
                        revert with 0, 50
                    mem[(32 * arg2.length + 1) + (32 * arg2.length) + 352] = address(cd[((32 * idx) + arg2 + 36)])
                    if 0 >= mem[(32 * arg2.length + 1) + (32 * arg2.length) + 288]:
                        revert with 0, 50
                    if 1 >= mem[(32 * arg2.length + 1) + (32 * arg2.length) + 288]:
                        revert with 0, 50
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    _902 = mem[64]
                    mem[mem[64]] = 2
                    if arg4 >= exchangesFactories.length:
                        revert with 0, 50
                    mem[0] = 2
                    mem[mem[64] + 100] = arg1
                    mem[mem[64] + 132] = address(cd[((32 * idx) + arg2 + 36)])
                    require ext_code.size(exchangesFactories[arg4])
                    staticcall exchangesFactories[arg4].getPair(address rg1, address rg2) with:
                            gas gas_remaining wei
                           args address(arg1), address(cd[((32 * idx) + arg2 + 36)])
                    mem[mem[64] + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] + ceil32(return_data.size) + 96 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + (2 * ceil32(return_data.size)) + 96
                    require return_data.size >= 96
                    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                    if 0 >= mem[_902]:
                        revert with 0, 50
                    mem[_902 + 32] = ext_call.return_data[18 len 14]
                    if 1 >= mem[_902]:
                        revert with 0, 50
                    mem[_902 + 64] = ext_call.return_data[50 len 14]
                    if 0 >= mem[(32 * arg2.length + 1) + (32 * arg2.length) + 288]:
                        revert with 0, 50
                    if 1 >= mem[(32 * arg2.length + 1) + (32 * arg2.length) + 288]:
                        revert with 0, 50
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    mem[_902 + (2 * ceil32(return_data.size)) + 96] = 2
                    if arg4 >= exchangesFactories.length:
                        revert with 0, 50
                    mem[0] = 2
                    mem[_902 + (2 * ceil32(return_data.size)) + 196] = arg1
                    mem[_902 + (2 * ceil32(return_data.size)) + 228] = address(cd[((32 * idx) + arg2 + 36)])
                    require ext_code.size(exchangesFactories[arg4])
                    staticcall exchangesFactories[arg4].getPair(address rg1, address rg2) with:
                            gas gas_remaining wei
                           args address(arg1), address(cd[((32 * idx) + arg2 + 36)])
                    mem[_902 + (2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[_902 + (4 * ceil32(return_data.size)) + 192] = 0xdfe168100000000000000000000000000000000000000000000000000000000
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).token0() with:
                            gas gas_remaining wei
                           args mem[_902 + (4 * ceil32(return_data.size)) + 196 len 5 * ceil32(return_data.size)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[_902 + (2 * ceil32(return_data.size)) + 128] = ext_call.return_data[12 len 20]
                    mem[_902 + (4 * ceil32(return_data.size)) + 192] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).token1() with:
                            gas gas_remaining wei
                           args mem[_902 + (4 * ceil32(return_data.size)) + 196 len 7 * ceil32(return_data.size)]
                    mem[_902 + (4 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _902 + (8 * ceil32(return_data.size)) + 192
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[_902 + (2 * ceil32(return_data.size)) + 160] = ext_call.return_data[12 len 20]
                    if 0 >= mem[(32 * arg2.length + 1) + (32 * arg2.length) + 288]:
                        revert with 0, 50
                    if mem[_902 + (2 * ceil32(return_data.size)) + 140 len 20] != arg1:
                        if 1 >= mem[_902]:
                            revert with 0, 50
                        if 0 >= mem[_902]:
                            revert with 0, 50
                        if Mask(112, 0, ext_call.return_data[32]) > arg5:
                            if owner != msg.sender:
                                mem[_902 + (8 * ceil32(return_data.size)) + 192] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_902 + (8 * ceil32(return_data.size)) + 196] = 32
                                mem[_902 + (8 * ceil32(return_data.size)) + 228] = 32
                                mem[_902 + (8 * ceil32(return_data.size)) + 260] = 'Ownable: caller is not the owner'
                                revert with memory
                                  from _902 + (8 * ceil32(return_data.size)) + 192
                                   len (13 * ceil32(return_data.size)) + 100
                            if arg4 >= exchangesRouters.length:
                                revert with 0, 50
                            mem[0] = 1
                            mem[_902 + (8 * ceil32(return_data.size)) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[_902 + (8 * ceil32(return_data.size)) + 196] = arg5
                            mem[_902 + (8 * ceil32(return_data.size)) + 228] = 64
                            _1134 = mem[(32 * arg2.length + 1) + (32 * arg2.length) + 288]
                            mem[_902 + (8 * ceil32(return_data.size)) + 260] = mem[(32 * arg2.length + 1) + (32 * arg2.length) + 288]
                            s = 0
                            t = (32 * arg2.length + 1) + (32 * arg2.length) + 320
                            u = _902 + (8 * ceil32(return_data.size)) + 292
                            while s < _1134:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            require ext_code.size(exchangesRouters[arg4])
                            staticcall exchangesRouters[arg4].getAmountsOut(uint256 rg1, address[] rg2) with:
                                    gas gas_remaining wei
                                   args arg5, 64, mem[_902 + (8 * ceil32(return_data.size)) + 260 len (32 * _1134) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_902 + (8 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = _902 + (10 * ceil32(return_data.size)) + 192
                            require return_data.size >= 32
                            _1520 = mem[_902 + (8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5) >> 32
                            require mem[_902 + (8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5) >> 32 <= test266151307()
                            require _902 + (8 * ceil32(return_data.size)) + return_data.size + 192 > _902 + (8 * ceil32(return_data.size)) + mem[_902 + (8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5) >> 32 + 223
                            _1544 = mem[_902 + (8 * ceil32(return_data.size)) + mem[_902 + (8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5) >> 32 + 192]
                            if mem[_902 + (8 * ceil32(return_data.size)) + mem[_902 + (8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5) >> 32 + 192] > test266151307():
                                revert with 0, 65
                            if ceil32(32 * mem[_902 + (8 * ceil32(return_data.size)) + mem[_902 + (8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5) >> 32 + 192]) + 1 < 0 or _902 + (10 * ceil32(return_data.size)) + ceil32(32 * mem[_902 + (8 * ceil32(return_data.size)) + mem[_902 + (8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5) >> 32 + 192]) + 193 > test266151307():
                                revert with 0, 65
                            mem[64] = _902 + (10 * ceil32(return_data.size)) + ceil32(32 * mem[_902 + (8 * ceil32(return_data.size)) + mem[_902 + (8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5) >> 32 + 192]) + 193
                            mem[_902 + (10 * ceil32(return_data.size)) + 192] = _1544
                            require _1520 + (32 * _1544) + 32 <= return_data.size
                            t = _902 + (8 * ceil32(return_data.size)) + _1520 + 224
                            u = _902 + (10 * ceil32(return_data.size)) + 224
                            s = 0
                            while s < _1544:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s + 1
                                continue 
                            if _1544 < 1:
                                revert with 0, 17
                            if _1544 - 1 >= _1544:
                                revert with 0, 50
                            _2220 = mem[(32 * _1544 - 1) + _902 + (10 * ceil32(return_data.size)) + 224]
                            if idx >= arg2.length:
                                revert with 0, 50
                            require cd[((32 * idx) + arg2 + 36)] == address(cd[((32 * idx) + arg2 + 36)])
                            if 0 >= mem[(32 * arg2.length + 1) + (32 * arg2.length) + 288]:
                                revert with 0, 50
                            mem[(32 * arg2.length + 1) + (32 * arg2.length) + 320] = address(cd[((32 * idx) + arg2 + 36)])
                            if 1 >= mem[(32 * arg2.length + 1) + (32 * arg2.length) + 288]:
                                revert with 0, 50
                            mem[(32 * arg2.length + 1) + (32 * arg2.length) + 352] = arg3
                            if 0 >= mem[(32 * arg2.length + 1) + (32 * arg2.length) + 288]:
                                revert with 0, 50
                            if 1 >= mem[(32 * arg2.length + 1) + (32 * arg2.length) + 288]:
                                revert with 0, 50
                            if owner != msg.sender:
                                revert with 0, 'Ownable: caller is not the owner'
                            _2310 = mem[64]
                            mem[mem[64]] = 2
                            if arg4 >= exchangesFactories.length:
                                revert with 0, 50
                            mem[0] = 2
                            mem[mem[64] + 100] = address(cd[((32 * idx) + arg2 + 36)])
                            mem[mem[64] + 132] = arg3
                            require ext_code.size(exchangesFactories[arg4])
                            staticcall exchangesFactories[arg4].getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * idx) + arg2 + 36)]), arg3
                            mem[mem[64] + 96] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).getReserves() with:
                                    gas gas_remaining wei
                            mem[mem[64] + ceil32(return_data.size) + 96 len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + (2 * ceil32(return_data.size)) + 96
                            require return_data.size >= 96
                            require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                            require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                            if 0 >= mem[_2310]:
                                revert with 0, 50
                            mem[_2310 + 32] = ext_call.return_data[18 len 14]
                            if 1 >= mem[_2310]:
                                revert with 0, 50
                            mem[_2310 + 64] = ext_call.return_data[50 len 14]
                            if 0 >= mem[(32 * arg2.length + 1) + (32 * arg2.length) + 288]:
                                revert with 0, 50
                            if 1 >= mem[(32 * arg2.length + 1) + (32 * arg2.length) + 288]:
                                revert with 0, 50
                            if owner != msg.sender:
                                revert with 0, 'Ownable: caller is not the owner'
                            mem[_2310 + (2 * ceil32(return_data.size)) + 96] = 2
                            if arg4 >= exchangesFactories.length:
                                revert with 0, 50
                            mem[0] = 2
                            mem[_2310 + (2 * ceil32(return_data.size)) + 196] = address(cd[((32 * idx) + arg2 + 36)])
                            mem[_2310 + (2 * ceil32(return_data.size)) + 228] = arg3
                            require ext_code.size(exchangesFactories[arg4])
                            staticcall exchangesFactories[arg4].getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * idx) + arg2 + 36)]), arg3
                            mem[_2310 + (2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[_2310 + (4 * ceil32(return_data.size)) + 192] = 0xdfe168100000000000000000000000000000000000000000000000000000000
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).token0() with:
                                    gas gas_remaining wei
                                   args mem[_2310 + (4 * ceil32(return_data.size)) + 196 len 5 * ceil32(return_data.size)]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[_2310 + (2 * ceil32(return_data.size)) + 128] = ext_call.return_data[12 len 20]
                            mem[_2310 + (4 * ceil32(return_data.size)) + 192] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).token1() with:
                                    gas gas_remaining wei
                                   args mem[_2310 + (4 * ceil32(return_data.size)) + 196 len 7 * ceil32(return_data.size)]
                            mem[_2310 + (4 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _2310 + (8 * ceil32(return_data.size)) + 192
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[_2310 + (2 * ceil32(return_data.size)) + 160] = ext_call.return_data[12 len 20]
                            if 0 >= mem[(32 * arg2.length + 1) + (32 * arg2.length) + 288]:
                                revert with 0, 50
                            if mem[_2310 + (2 * ceil32(return_data.size)) + 140 len 20] != address(cd[((32 * idx) + arg2 + 36)]):
                                if 1 >= mem[_2310]:
                                    revert with 0, 50
                                if 0 >= mem[_2310]:
                                    revert with 0, 50
                                if Mask(112, 0, ext_call.return_data[32]) > _2220:
                                    if idx >= arg2.length:
                                        revert with 0, 50
                                    require cd[((32 * idx) + arg2 + 36)] == address(cd[((32 * idx) + arg2 + 36)])
                                    if idx >= mem[(32 * arg2.length + 1) + 256]:
                                        revert with 0, 50
                                    mem[(32 * idx) + (32 * arg2.length + 1) + 288] = address(cd[((32 * idx) + arg2 + 36)])
                            else:
                                if 0 >= mem[_2310]:
                                    revert with 0, 50
                                if 1 >= mem[_2310]:
                                    revert with 0, 50
                                if ext_call.return_data[18 len 14] > _2220:
                                    if idx >= arg2.length:
                                        revert with 0, 50
                                    require cd[((32 * idx) + arg2 + 36)] == address(cd[((32 * idx) + arg2 + 36)])
                                    if idx >= mem[(32 * arg2.length + 1) + 256]:
                                        revert with 0, 50
                                    mem[(32 * idx) + (32 * arg2.length + 1) + 288] = address(cd[((32 * idx) + arg2 + 36)])
                    else:
                        if 0 >= mem[_902]:
                            revert with 0, 50
                        if 1 >= mem[_902]:
                            revert with 0, 50
                        if ext_call.return_data[18 len 14] > arg5:
                            if owner != msg.sender:
                                mem[_902 + (8 * ceil32(return_data.size)) + 192] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_902 + (8 * ceil32(return_data.size)) + 196] = 32
                                mem[_902 + (8 * ceil32(return_data.size)) + 228] = 32
                                mem[_902 + (8 * ceil32(return_data.size)) + 260] = 'Ownable: caller is not the owner'
                                revert with memory
                                  from _902 + (8 * ceil32(return_data.size)) + 192
                                   len (13 * ceil32(return_data.size)) + 100
                            if arg4 >= exchangesRouters.length:
                                revert with 0, 50
                            mem[0] = 1
                            mem[_902 + (8 * ceil32(return_data.size)) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[_902 + (8 * ceil32(return_data.size)) + 196] = arg5
                            mem[_902 + (8 * ceil32(return_data.size)) + 228] = 64
                            _1135 = mem[(32 * arg2.length + 1) + (32 * arg2.length) + 288]
                            mem[_902 + (8 * ceil32(return_data.size)) + 260] = mem[(32 * arg2.length + 1) + (32 * arg2.length) + 288]
                            s = 0
                            t = (32 * arg2.length + 1) + (32 * arg2.length) + 320
                            u = _902 + (8 * ceil32(return_data.size)) + 292
                            while s < _1135:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            require ext_code.size(exchangesRouters[arg4])
                            staticcall exchangesRouters[arg4].getAmountsOut(uint256 rg1, address[] rg2) with:
                                    gas gas_remaining wei
                                   args arg5, 64, mem[_902 + (8 * ceil32(return_data.size)) + 260 len (32 * _1135) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_902 + (8 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = _902 + (10 * ceil32(return_data.size)) + 192
                            require return_data.size >= 32
                            _1521 = mem[_902 + (8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5) >> 32
                            require mem[_902 + (8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5) >> 32 <= test266151307()
                            require _902 + (8 * ceil32(return_data.size)) + return_data.size + 192 > _902 + (8 * ceil32(return_data.size)) + mem[_902 + (8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5) >> 32 + 223
                            _1545 = mem[_902 + (8 * ceil32(return_data.size)) + mem[_902 + (8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5) >> 32 + 192]
                            if mem[_902 + (8 * ceil32(return_data.size)) + mem[_902 + (8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5) >> 32 + 192] > test266151307():
                                revert with 0, 65
                            if ceil32(32 * mem[_902 + (8 * ceil32(return_data.size)) + mem[_902 + (8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5) >> 32 + 192]) + 1 < 0 or _902 + (10 * ceil32(return_data.size)) + ceil32(32 * mem[_902 + (8 * ceil32(return_data.size)) + mem[_902 + (8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5) >> 32 + 192]) + 193 > test266151307():
                                revert with 0, 65
                            mem[64] = _902 + (10 * ceil32(return_data.size)) + ceil32(32 * mem[_902 + (8 * ceil32(return_data.size)) + mem[_902 + (8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5) >> 32 + 192]) + 193
                            mem[_902 + (10 * ceil32(return_data.size)) + 192] = _1545
                            require _1521 + (32 * _1545) + 32 <= return_data.size
                            t = _902 + (8 * ceil32(return_data.size)) + _1521 + 224
                            u = _902 + (10 * ceil32(return_data.size)) + 224
                            s = 0
                            while s < _1545:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s + 1
                                continue 
                            if _1545 < 1:
                                revert with 0, 17
                            if _1545 - 1 >= _1545:
                                revert with 0, 50
                            _2221 = mem[(32 * _1545 - 1) + _902 + (10 * ceil32(return_data.size)) + 224]
                            if idx >= arg2.length:
                                revert with 0, 50
                            require cd[((32 * idx) + arg2 + 36)] == address(cd[((32 * idx) + arg2 + 36)])
                            if 0 >= mem[(32 * arg2.length + 1) + (32 * arg2.length) + 288]:
                                revert with 0, 50
                            mem[(32 * arg2.length + 1) + (32 * arg2.length) + 320] = address(cd[((32 * idx) + arg2 + 36)])
                            if 1 >= mem[(32 * arg2.length + 1) + (32 * arg2.length) + 288]:
                                revert with 0, 50
                            mem[(32 * arg2.length + 1) + (32 * arg2.length) + 352] = arg3
                            if 0 >= mem[(32 * arg2.length + 1) + (32 * arg2.length) + 288]:
                                revert with 0, 50
                            if 1 >= mem[(32 * arg2.length + 1) + (32 * arg2.length) + 288]:
                                revert with 0, 50
                            if owner != msg.sender:
                                revert with 0, 'Ownable: caller is not the owner'
                            _2312 = mem[64]
                            mem[mem[64]] = 2
                            if arg4 >= exchangesFactories.length:
                                revert with 0, 50
                            mem[0] = 2
                            mem[mem[64] + 100] = address(cd[((32 * idx) + arg2 + 36)])
                            mem[mem[64] + 132] = arg3
                            require ext_code.size(exchangesFactories[arg4])
                            staticcall exchangesFactories[arg4].getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * idx) + arg2 + 36)]), arg3
                            mem[mem[64] + 96] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).getReserves() with:
                                    gas gas_remaining wei
                            mem[mem[64] + ceil32(return_data.size) + 96 len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + (2 * ceil32(return_data.size)) + 96
                            require return_data.size >= 96
                            require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                            require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                            if 0 >= mem[_2312]:
                                revert with 0, 50
                            mem[_2312 + 32] = ext_call.return_data[18 len 14]
                            if 1 >= mem[_2312]:
                                revert with 0, 50
                            mem[_2312 + 64] = ext_call.return_data[50 len 14]
                            if 0 >= mem[(32 * arg2.length + 1) + (32 * arg2.length) + 288]:
                                revert with 0, 50
                            if 1 >= mem[(32 * arg2.length + 1) + (32 * arg2.length) + 288]:
                                revert with 0, 50
                            if owner != msg.sender:
                                revert with 0, 'Ownable: caller is not the owner'
                            mem[_2312 + (2 * ceil32(return_data.size)) + 96] = 2
                            if arg4 >= exchangesFactories.length:
                                revert with 0, 50
                            mem[0] = 2
                            mem[_2312 + (2 * ceil32(return_data.size)) + 196] = address(cd[((32 * idx) + arg2 + 36)])
                            mem[_2312 + (2 * ceil32(return_data.size)) + 228] = arg3
                            require ext_code.size(exchangesFactories[arg4])
                            staticcall exchangesFactories[arg4].getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * idx) + arg2 + 36)]), arg3
                            mem[_2312 + (2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[_2312 + (4 * ceil32(return_data.size)) + 192] = 0xdfe168100000000000000000000000000000000000000000000000000000000
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).token0() with:
                                    gas gas_remaining wei
                                   args mem[_2312 + (4 * ceil32(return_data.size)) + 196 len 5 * ceil32(return_data.size)]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[_2312 + (2 * ceil32(return_data.size)) + 128] = ext_call.return_data[12 len 20]
                            mem[_2312 + (4 * ceil32(return_data.size)) + 192] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).token1() with:
                                    gas gas_remaining wei
                                   args mem[_2312 + (4 * ceil32(return_data.size)) + 196 len 7 * ceil32(return_data.size)]
                            mem[_2312 + (4 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _2312 + (8 * ceil32(return_data.size)) + 192
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[_2312 + (2 * ceil32(return_data.size)) + 160] = ext_call.return_data[12 len 20]
                            if 0 >= mem[(32 * arg2.length + 1) + (32 * arg2.length) + 288]:
                                revert with 0, 50
                            if mem[_2312 + (2 * ceil32(return_data.size)) + 140 len 20] != address(cd[((32 * idx) + arg2 + 36)]):
                                if 1 >= mem[_2312]:
                                    revert with 0, 50
                                if 0 >= mem[_2312]:
                                    revert with 0, 50
                                if Mask(112, 0, ext_call.return_data[32]) > _2221:
                                    if idx >= arg2.length:
                                        revert with 0, 50
                                    require cd[((32 * idx) + arg2 + 36)] == address(cd[((32 * idx) + arg2 + 36)])
                                    if idx >= mem[(32 * arg2.length + 1) + 256]:
                                        revert with 0, 50
                                    mem[(32 * idx) + (32 * arg2.length + 1) + 288] = address(cd[((32 * idx) + arg2 + 36)])
                            else:
                                if 0 >= mem[_2312]:
                                    revert with 0, 50
                                if 1 >= mem[_2312]:
                                    revert with 0, 50
                                if ext_call.return_data[18 len 14] > _2221:
                                    if idx >= arg2.length:
                                        revert with 0, 50
                                    require cd[((32 * idx) + arg2 + 36)] == address(cd[((32 * idx) + arg2 + 36)])
                                    if idx >= mem[(32 * arg2.length + 1) + 256]:
                                        revert with 0, 50
                                    mem[(32 * idx) + (32 * arg2.length + 1) + 288] = address(cd[((32 * idx) + arg2 + 36)])
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _1428 = mem[(32 * arg2.length + 1) + 256]
        idx = 0
        while idx < _1428:
            if idx >= mem[(32 * arg2.length + 1) + 256]:
                revert with 0, 50
            if not mem[(32 * idx) + (32 * arg2.length + 1) + 300 len 20]:
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = 0
            else:
                if 0 >= mem[(32 * arg2.length + 1) + 128]:
                    revert with 0, 50
                mem[(32 * arg2.length + 1) + 160] = arg1
                if idx >= mem[(32 * arg2.length + 1) + 256]:
                    revert with 0, 50
                if 1 >= mem[(32 * arg2.length + 1) + 128]:
                    revert with 0, 50
                mem[(32 * arg2.length + 1) + 192] = mem[(32 * idx) + (32 * arg2.length + 1) + 300 len 20]
                if 2 >= mem[(32 * arg2.length + 1) + 128]:
                    revert with 0, 50
                mem[(32 * arg2.length + 1) + 224] = arg3
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                if arg4 >= exchangesRouters.length:
                    revert with 0, 50
                mem[0] = 1
                _1561 = mem[64]
                mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = arg5
                mem[mem[64] + 36] = 64
                _1583 = mem[(32 * arg2.length + 1) + 128]
                mem[mem[64] + 68] = mem[(32 * arg2.length + 1) + 128]
                s = 0
                t = (32 * arg2.length + 1) + 160
                u = mem[64] + 100
                while s < _1583:
                    mem[u] = mem[t + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                require ext_code.size(exchangesRouters[arg4])
                staticcall exchangesRouters[arg4].mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _1561 + (32 * _1583) + -mem[64] + 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2202 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2231 = mem[_2202]
                require mem[_2202] <= test266151307()
                require _2202 + return_data.size > _2202 + mem[_2202] + 31
                _2239 = mem[_2202 + mem[_2202]]
                if mem[_2202 + mem[_2202]] > test266151307():
                    revert with 0, 65
                if ceil32(32 * mem[_2202 + mem[_2202]]) + 1 < 0 or _2202 + ceil32(return_data.size) + ceil32(32 * mem[_2202 + mem[_2202]]) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = _2202 + ceil32(return_data.size) + ceil32(32 * mem[_2202 + mem[_2202]]) + 1
                mem[_2202 + ceil32(return_data.size)] = _2239
                require _2231 + (32 * _2239) + 32 <= return_data.size
                t = _2202 + _2231 + 32
                u = _2202 + ceil32(return_data.size) + 32
                s = 0
                while s < _2239:
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s + 1
                    continue 
                if _2239 < 1:
                    revert with 0, 17
                if _2239 - 1 >= _2239:
                    revert with 0, 50
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = mem[(32 * _2239 - 1) + _2202 + ceil32(return_data.size) + 32]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if owner != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
        _1460 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        mem[_1460 + 32 len 64] = call.data[calldata.size len 64]
        if 1 >= mem[_1460]:
            revert with 0, 50
        mem[_1460 + 64] = 0
        _2140 = mem[96]
        idx = 0
        while idx < _2140:
            if idx >= mem[96]:
                revert with 0, 50
            if 1 >= mem[_1460]:
                revert with 0, 50
            if mem[_1460 + 64] < mem[(32 * idx) + 128]:
                if 0 >= mem[_1460]:
                    revert with 0, 50
                mem[_1460 + 32] = idx
                if idx >= mem[96]:
                    revert with 0, 50
                if 1 >= mem[_1460]:
                    revert with 0, 50
                mem[_1460 + 64] = mem[(32 * idx) + 128]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        _2200 = mem[_1460]
        mem[mem[64] + 32] = mem[_1460]
        mem[mem[64] + 64 len 32 * _2200] = mem[_1460 + 32 len 32 * _2200]
        return 32, mem[mem[64] + 32 len (32 * _2200) + 32]
    mem[(32 * arg2.length + 1) + 288 len 32 * arg2.length] = call.data[calldata.size len 32 * arg2.length]
    mem[(32 * arg2.length + 1) + (32 * arg2.length) + 288] = 2
    mem[64] = (32 * arg2.length + 1) + (32 * arg2.length) + 384
    mem[(32 * arg2.length + 1) + (32 * arg2.length) + 320 len 64] = call.data[calldata.size len 64]
    idx = 0
    while idx < arg2.length:
        require cd[((32 * idx) + arg2 + 36)] == address(cd[((32 * idx) + arg2 + 36)])
        if owner != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
        if arg4 >= exchangesFactories.length:
            revert with 0, 50
        mem[0] = 2
        mem[mem[64] + 4] = arg1
        mem[mem[64] + 36] = address(cd[((32 * idx) + arg2 + 36)])
        require ext_code.size(exchangesFactories[arg4])
        staticcall exchangesFactories[arg4].getPair(address rg1, address rg2) with:
                gas gas_remaining wei
               args address(arg1), address(cd[((32 * idx) + arg2 + 36)])
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _773 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_773] == mem[_773 + 12 len 20]
        if mem[_773 + 12 len 20]:
            if idx >= arg2.length:
                revert with 0, 50
            require cd[((32 * idx) + arg2 + 36)] == address(cd[((32 * idx) + arg2 + 36)])
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            if arg4 >= exchangesFactories.length:
                revert with 0, 50
            mem[0] = 2
            mem[mem[64] + 4] = address(cd[((32 * idx) + arg2 + 36)])
            mem[mem[64] + 36] = arg3
            require ext_code.size(exchangesFactories[arg4])
            staticcall exchangesFactories[arg4].getPair(address rg1, address rg2) with:
                    gas gas_remaining wei
                   args address(cd[((32 * idx) + arg2 + 36)]), arg3
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _849 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_849] == mem[_849 + 12 len 20]
            if mem[_849 + 12 len 20]:
                if 0 >= mem[(32 * arg2.length + 1) + (32 * arg2.length) + 288]:
                    revert with 0, 50
                mem[(32 * arg2.length + 1) + (32 * arg2.length) + 320] = arg1
                if idx >= arg2.length:
                    revert with 0, 50
                require cd[((32 * idx) + arg2 + 36)] == address(cd[((32 * idx) + arg2 + 36)])
                if 1 >= mem[(32 * arg2.length + 1) + (32 * arg2.length) + 288]:
                    revert with 0, 50
                mem[(32 * arg2.length + 1) + (32 * arg2.length) + 352] = address(cd[((32 * idx) + arg2 + 36)])
                if 0 >= mem[(32 * arg2.length + 1) + (32 * arg2.length) + 288]:
                    revert with 0, 50
                if 1 >= mem[(32 * arg2.length + 1) + (32 * arg2.length) + 288]:
                    revert with 0, 50
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                _904 = mem[64]
                mem[mem[64]] = 2
                if arg4 >= exchangesFactories.length:
                    revert with 0, 50
                mem[0] = 2
                mem[mem[64] + 100] = arg1
                mem[mem[64] + 132] = address(cd[((32 * idx) + arg2 + 36)])
                require ext_code.size(exchangesFactories[arg4])
                staticcall exchangesFactories[arg4].getPair(address rg1, address rg2) with:
                        gas gas_remaining wei
                       args address(arg1), address(cd[((32 * idx) + arg2 + 36)])
                mem[mem[64] + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] + ceil32(return_data.size) + 96 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + (2 * ceil32(return_data.size)) + 96
                require return_data.size >= 96
                require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                if 0 >= mem[_904]:
                    revert with 0, 50
                mem[_904 + 32] = ext_call.return_data[18 len 14]
                if 1 >= mem[_904]:
                    revert with 0, 50
                mem[_904 + 64] = ext_call.return_data[50 len 14]
                if 0 >= mem[(32 * arg2.length + 1) + (32 * arg2.length) + 288]:
                    revert with 0, 50
                if 1 >= mem[(32 * arg2.length + 1) + (32 * arg2.length) + 288]:
                    revert with 0, 50
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                mem[_904 + (2 * ceil32(return_data.size)) + 96] = 2
                if arg4 >= exchangesFactories.length:
                    revert with 0, 50
                mem[0] = 2
                mem[_904 + (2 * ceil32(return_data.size)) + 196] = arg1
                mem[_904 + (2 * ceil32(return_data.size)) + 228] = address(cd[((32 * idx) + arg2 + 36)])
                require ext_code.size(exchangesFactories[arg4])
                staticcall exchangesFactories[arg4].getPair(address rg1, address rg2) with:
                        gas gas_remaining wei
                       args address(arg1), address(cd[((32 * idx) + arg2 + 36)])
                mem[_904 + (2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[_904 + (4 * ceil32(return_data.size)) + 192] = 0xdfe168100000000000000000000000000000000000000000000000000000000
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).token0() with:
                        gas gas_remaining wei
                       args mem[_904 + (4 * ceil32(return_data.size)) + 196 len 5 * ceil32(return_data.size)]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[_904 + (2 * ceil32(return_data.size)) + 128] = ext_call.return_data[12 len 20]
                mem[_904 + (4 * ceil32(return_data.size)) + 192] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).token1() with:
                        gas gas_remaining wei
                       args mem[_904 + (4 * ceil32(return_data.size)) + 196 len 7 * ceil32(return_data.size)]
                mem[_904 + (4 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = _904 + (8 * ceil32(return_data.size)) + 192
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[_904 + (2 * ceil32(return_data.size)) + 160] = ext_call.return_data[12 len 20]
                if 0 >= mem[(32 * arg2.length + 1) + (32 * arg2.length) + 288]:
                    revert with 0, 50
                if mem[_904 + (2 * ceil32(return_data.size)) + 140 len 20] != arg1:
                    if 1 >= mem[_904]:
                        revert with 0, 50
                    if 0 >= mem[_904]:
                        revert with 0, 50
                    if Mask(112, 0, ext_call.return_data[32]) > arg5:
                        if owner != msg.sender:
                            mem[_904 + (8 * ceil32(return_data.size)) + 192] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_904 + (8 * ceil32(return_data.size)) + 196] = 32
                            mem[_904 + (8 * ceil32(return_data.size)) + 228] = 32
                            mem[_904 + (8 * ceil32(return_data.size)) + 260] = 'Ownable: caller is not the owner'
                            revert with memory
                              from _904 + (8 * ceil32(return_data.size)) + 192
                               len (13 * ceil32(return_data.size)) + 100
                        if arg4 >= exchangesRouters.length:
                            revert with 0, 50
                        mem[0] = 1
                        mem[_904 + (8 * ceil32(return_data.size)) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_904 + (8 * ceil32(return_data.size)) + 196] = arg5
                        mem[_904 + (8 * ceil32(return_data.size)) + 228] = 64
                        _1136 = mem[(32 * arg2.length + 1) + (32 * arg2.length) + 288]
                        mem[_904 + (8 * ceil32(return_data.size)) + 260] = mem[(32 * arg2.length + 1) + (32 * arg2.length) + 288]
                        s = 0
                        t = (32 * arg2.length + 1) + (32 * arg2.length) + 320
                        u = _904 + (8 * ceil32(return_data.size)) + 292
                        while s < _1136:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        require ext_code.size(exchangesRouters[arg4])
                        staticcall exchangesRouters[arg4].getAmountsOut(uint256 rg1, address[] rg2) with:
                                gas gas_remaining wei
                               args arg5, 64, mem[_904 + (8 * ceil32(return_data.size)) + 260 len (32 * _1136) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_904 + (8 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = _904 + (10 * ceil32(return_data.size)) + 192
                        require return_data.size >= 32
                        _1524 = mem[_904 + (8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5) >> 32
                        require mem[_904 + (8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5) >> 32 <= test266151307()
                        require _904 + (8 * ceil32(return_data.size)) + return_data.size + 192 > _904 + (8 * ceil32(return_data.size)) + mem[_904 + (8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5) >> 32 + 223
                        _1548 = mem[_904 + (8 * ceil32(return_data.size)) + mem[_904 + (8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5) >> 32 + 192]
                        if mem[_904 + (8 * ceil32(return_data.size)) + mem[_904 + (8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5) >> 32 + 192] > test266151307():
                            revert with 0, 65
                        if ceil32(32 * mem[_904 + (8 * ceil32(return_data.size)) + mem[_904 + (8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5) >> 32 + 192]) + 1 < 0 or _904 + (10 * ceil32(return_data.size)) + ceil32(32 * mem[_904 + (8 * ceil32(return_data.size)) + mem[_904 + (8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5) >> 32 + 192]) + 193 > test266151307():
                            revert with 0, 65
                        mem[64] = _904 + (10 * ceil32(return_data.size)) + ceil32(32 * mem[_904 + (8 * ceil32(return_data.size)) + mem[_904 + (8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5) >> 32 + 192]) + 193
                        mem[_904 + (10 * ceil32(return_data.size)) + 192] = _1548
                        require _1524 + (32 * _1548) + 32 <= return_data.size
                        t = _904 + (8 * ceil32(return_data.size)) + _1524 + 224
                        u = _904 + (10 * ceil32(return_data.size)) + 224
                        s = 0
                        while s < _1548:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s + 1
                            continue 
                        if _1548 < 1:
                            revert with 0, 17
                        if _1548 - 1 >= _1548:
                            revert with 0, 50
                        _2224 = mem[(32 * _1548 - 1) + _904 + (10 * ceil32(return_data.size)) + 224]
                        if idx >= arg2.length:
                            revert with 0, 50
                        require cd[((32 * idx) + arg2 + 36)] == address(cd[((32 * idx) + arg2 + 36)])
                        if 0 >= mem[(32 * arg2.length + 1) + (32 * arg2.length) + 288]:
                            revert with 0, 50
                        mem[(32 * arg2.length + 1) + (32 * arg2.length) + 320] = address(cd[((32 * idx) + arg2 + 36)])
                        if 1 >= mem[(32 * arg2.length + 1) + (32 * arg2.length) + 288]:
                            revert with 0, 50
                        mem[(32 * arg2.length + 1) + (32 * arg2.length) + 352] = arg3
                        if 0 >= mem[(32 * arg2.length + 1) + (32 * arg2.length) + 288]:
                            revert with 0, 50
                        if 1 >= mem[(32 * arg2.length + 1) + (32 * arg2.length) + 288]:
                            revert with 0, 50
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        _2314 = mem[64]
                        mem[mem[64]] = 2
                        if arg4 >= exchangesFactories.length:
                            revert with 0, 50
                        mem[0] = 2
                        mem[mem[64] + 100] = address(cd[((32 * idx) + arg2 + 36)])
                        mem[mem[64] + 132] = arg3
                        require ext_code.size(exchangesFactories[arg4])
                        staticcall exchangesFactories[arg4].getPair(address rg1, address rg2) with:
                                gas gas_remaining wei
                               args address(cd[((32 * idx) + arg2 + 36)]), arg3
                        mem[mem[64] + 96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).getReserves() with:
                                gas gas_remaining wei
                        mem[mem[64] + ceil32(return_data.size) + 96 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + (2 * ceil32(return_data.size)) + 96
                        require return_data.size >= 96
                        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                        if 0 >= mem[_2314]:
                            revert with 0, 50
                        mem[_2314 + 32] = ext_call.return_data[18 len 14]
                        if 1 >= mem[_2314]:
                            revert with 0, 50
                        mem[_2314 + 64] = ext_call.return_data[50 len 14]
                        if 0 >= mem[(32 * arg2.length + 1) + (32 * arg2.length) + 288]:
                            revert with 0, 50
                        if 1 >= mem[(32 * arg2.length + 1) + (32 * arg2.length) + 288]:
                            revert with 0, 50
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        mem[_2314 + (2 * ceil32(return_data.size)) + 96] = 2
                        if arg4 >= exchangesFactories.length:
                            revert with 0, 50
                        mem[0] = 2
                        mem[_2314 + (2 * ceil32(return_data.size)) + 196] = address(cd[((32 * idx) + arg2 + 36)])
                        mem[_2314 + (2 * ceil32(return_data.size)) + 228] = arg3
                        require ext_code.size(exchangesFactories[arg4])
                        staticcall exchangesFactories[arg4].getPair(address rg1, address rg2) with:
                                gas gas_remaining wei
                               args address(cd[((32 * idx) + arg2 + 36)]), arg3
                        mem[_2314 + (2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[_2314 + (4 * ceil32(return_data.size)) + 192] = 0xdfe168100000000000000000000000000000000000000000000000000000000
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                               args mem[_2314 + (4 * ceil32(return_data.size)) + 196 len 5 * ceil32(return_data.size)]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[_2314 + (2 * ceil32(return_data.size)) + 128] = ext_call.return_data[12 len 20]
                        mem[_2314 + (4 * ceil32(return_data.size)) + 192] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token1() with:
                                gas gas_remaining wei
                               args mem[_2314 + (4 * ceil32(return_data.size)) + 196 len 7 * ceil32(return_data.size)]
                        mem[_2314 + (4 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _2314 + (8 * ceil32(return_data.size)) + 192
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[_2314 + (2 * ceil32(return_data.size)) + 160] = ext_call.return_data[12 len 20]
                        if 0 >= mem[(32 * arg2.length + 1) + (32 * arg2.length) + 288]:
                            revert with 0, 50
                        if mem[_2314 + (2 * ceil32(return_data.size)) + 140 len 20] != address(cd[((32 * idx) + arg2 + 36)]):
                            if 1 >= mem[_2314]:
                                revert with 0, 50
                            if 0 >= mem[_2314]:
                                revert with 0, 50
                            if Mask(112, 0, ext_call.return_data[32]) > _2224:
                                if idx >= arg2.length:
                                    revert with 0, 50
                                require cd[((32 * idx) + arg2 + 36)] == address(cd[((32 * idx) + arg2 + 36)])
                                if idx >= mem[(32 * arg2.length + 1) + 256]:
                                    revert with 0, 50
                                mem[(32 * idx) + (32 * arg2.length + 1) + 288] = address(cd[((32 * idx) + arg2 + 36)])
                        else:
                            if 0 >= mem[_2314]:
                                revert with 0, 50
                            if 1 >= mem[_2314]:
                                revert with 0, 50
                            if ext_call.return_data[18 len 14] > _2224:
                                if idx >= arg2.length:
                                    revert with 0, 50
                                require cd[((32 * idx) + arg2 + 36)] == address(cd[((32 * idx) + arg2 + 36)])
                                if idx >= mem[(32 * arg2.length + 1) + 256]:
                                    revert with 0, 50
                                mem[(32 * idx) + (32 * arg2.length + 1) + 288] = address(cd[((32 * idx) + arg2 + 36)])
                else:
                    if 0 >= mem[_904]:
                        revert with 0, 50
                    if 1 >= mem[_904]:
                        revert with 0, 50
                    if ext_call.return_data[18 len 14] > arg5:
                        if owner != msg.sender:
                            mem[_904 + (8 * ceil32(return_data.size)) + 192] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_904 + (8 * ceil32(return_data.size)) + 196] = 32
                            mem[_904 + (8 * ceil32(return_data.size)) + 228] = 32
                            mem[_904 + (8 * ceil32(return_data.size)) + 260] = 'Ownable: caller is not the owner'
                            revert with memory
                              from _904 + (8 * ceil32(return_data.size)) + 192
                               len (13 * ceil32(return_data.size)) + 100
                        if arg4 >= exchangesRouters.length:
                            revert with 0, 50
                        mem[0] = 1
                        mem[_904 + (8 * ceil32(return_data.size)) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_904 + (8 * ceil32(return_data.size)) + 196] = arg5
                        mem[_904 + (8 * ceil32(return_data.size)) + 228] = 64
                        _1137 = mem[(32 * arg2.length + 1) + (32 * arg2.length) + 288]
                        mem[_904 + (8 * ceil32(return_data.size)) + 260] = mem[(32 * arg2.length + 1) + (32 * arg2.length) + 288]
                        s = 0
                        t = (32 * arg2.length + 1) + (32 * arg2.length) + 320
                        u = _904 + (8 * ceil32(return_data.size)) + 292
                        while s < _1137:
                            mem[u] = mem[t + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        require ext_code.size(exchangesRouters[arg4])
                        staticcall exchangesRouters[arg4].getAmountsOut(uint256 rg1, address[] rg2) with:
                                gas gas_remaining wei
                               args arg5, 64, mem[_904 + (8 * ceil32(return_data.size)) + 260 len (32 * _1137) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_904 + (8 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = _904 + (10 * ceil32(return_data.size)) + 192
                        require return_data.size >= 32
                        _1525 = mem[_904 + (8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5) >> 32
                        require mem[_904 + (8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5) >> 32 <= test266151307()
                        require _904 + (8 * ceil32(return_data.size)) + return_data.size + 192 > _904 + (8 * ceil32(return_data.size)) + mem[_904 + (8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5) >> 32 + 223
                        _1549 = mem[_904 + (8 * ceil32(return_data.size)) + mem[_904 + (8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5) >> 32 + 192]
                        if mem[_904 + (8 * ceil32(return_data.size)) + mem[_904 + (8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5) >> 32 + 192] > test266151307():
                            revert with 0, 65
                        if ceil32(32 * mem[_904 + (8 * ceil32(return_data.size)) + mem[_904 + (8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5) >> 32 + 192]) + 1 < 0 or _904 + (10 * ceil32(return_data.size)) + ceil32(32 * mem[_904 + (8 * ceil32(return_data.size)) + mem[_904 + (8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5) >> 32 + 192]) + 193 > test266151307():
                            revert with 0, 65
                        mem[64] = _904 + (10 * ceil32(return_data.size)) + ceil32(32 * mem[_904 + (8 * ceil32(return_data.size)) + mem[_904 + (8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg5) >> 32 + 192]) + 193
                        mem[_904 + (10 * ceil32(return_data.size)) + 192] = _1549
                        require _1525 + (32 * _1549) + 32 <= return_data.size
                        t = _904 + (8 * ceil32(return_data.size)) + _1525 + 224
                        u = _904 + (10 * ceil32(return_data.size)) + 224
                        s = 0
                        while s < _1549:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s + 1
                            continue 
                        if _1549 < 1:
                            revert with 0, 17
                        if _1549 - 1 >= _1549:
                            revert with 0, 50
                        _2225 = mem[(32 * _1549 - 1) + _904 + (10 * ceil32(return_data.size)) + 224]
                        if idx >= arg2.length:
                            revert with 0, 50
                        require cd[((32 * idx) + arg2 + 36)] == address(cd[((32 * idx) + arg2 + 36)])
                        if 0 >= mem[(32 * arg2.length + 1) + (32 * arg2.length) + 288]:
                            revert with 0, 50
                        mem[(32 * arg2.length + 1) + (32 * arg2.length) + 320] = address(cd[((32 * idx) + arg2 + 36)])
                        if 1 >= mem[(32 * arg2.length + 1) + (32 * arg2.length) + 288]:
                            revert with 0, 50
                        mem[(32 * arg2.length + 1) + (32 * arg2.length) + 352] = arg3
                        if 0 >= mem[(32 * arg2.length + 1) + (32 * arg2.length) + 288]:
                            revert with 0, 50
                        if 1 >= mem[(32 * arg2.length + 1) + (32 * arg2.length) + 288]:
                            revert with 0, 50
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        _2316 = mem[64]
                        mem[mem[64]] = 2
                        if arg4 >= exchangesFactories.length:
                            revert with 0, 50
                        mem[0] = 2
                        mem[mem[64] + 100] = address(cd[((32 * idx) + arg2 + 36)])
                        mem[mem[64] + 132] = arg3
                        require ext_code.size(exchangesFactories[arg4])
                        staticcall exchangesFactories[arg4].getPair(address rg1, address rg2) with:
                                gas gas_remaining wei
                               args address(cd[((32 * idx) + arg2 + 36)]), arg3
                        mem[mem[64] + 96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).getReserves() with:
                                gas gas_remaining wei
                        mem[mem[64] + ceil32(return_data.size) + 96 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + (2 * ceil32(return_data.size)) + 96
                        require return_data.size >= 96
                        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                        if 0 >= mem[_2316]:
                            revert with 0, 50
                        mem[_2316 + 32] = ext_call.return_data[18 len 14]
                        if 1 >= mem[_2316]:
                            revert with 0, 50
                        mem[_2316 + 64] = ext_call.return_data[50 len 14]
                        if 0 >= mem[(32 * arg2.length + 1) + (32 * arg2.length) + 288]:
                            revert with 0, 50
                        if 1 >= mem[(32 * arg2.length + 1) + (32 * arg2.length) + 288]:
                            revert with 0, 50
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        mem[_2316 + (2 * ceil32(return_data.size)) + 96] = 2
                        if arg4 >= exchangesFactories.length:
                            revert with 0, 50
                        mem[0] = 2
                        mem[_2316 + (2 * ceil32(return_data.size)) + 196] = address(cd[((32 * idx) + arg2 + 36)])
                        mem[_2316 + (2 * ceil32(return_data.size)) + 228] = arg3
                        require ext_code.size(exchangesFactories[arg4])
                        staticcall exchangesFactories[arg4].getPair(address rg1, address rg2) with:
                                gas gas_remaining wei
                               args address(cd[((32 * idx) + arg2 + 36)]), arg3
                        mem[_2316 + (2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[_2316 + (4 * ceil32(return_data.size)) + 192] = 0xdfe168100000000000000000000000000000000000000000000000000000000
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                               args mem[_2316 + (4 * ceil32(return_data.size)) + 196 len 5 * ceil32(return_data.size)]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[_2316 + (2 * ceil32(return_data.size)) + 128] = ext_call.return_data[12 len 20]
                        mem[_2316 + (4 * ceil32(return_data.size)) + 192] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token1() with:
                                gas gas_remaining wei
                               args mem[_2316 + (4 * ceil32(return_data.size)) + 196 len 7 * ceil32(return_data.size)]
                        mem[_2316 + (4 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _2316 + (8 * ceil32(return_data.size)) + 192
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[_2316 + (2 * ceil32(return_data.size)) + 160] = ext_call.return_data[12 len 20]
                        if 0 >= mem[(32 * arg2.length + 1) + (32 * arg2.length) + 288]:
                            revert with 0, 50
                        if mem[_2316 + (2 * ceil32(return_data.size)) + 140 len 20] != address(cd[((32 * idx) + arg2 + 36)]):
                            if 1 >= mem[_2316]:
                                revert with 0, 50
                            if 0 >= mem[_2316]:
                                revert with 0, 50
                            if Mask(112, 0, ext_call.return_data[32]) > _2225:
                                if idx >= arg2.length:
                                    revert with 0, 50
                                require cd[((32 * idx) + arg2 + 36)] == address(cd[((32 * idx) + arg2 + 36)])
                                if idx >= mem[(32 * arg2.length + 1) + 256]:
                                    revert with 0, 50
                                mem[(32 * idx) + (32 * arg2.length + 1) + 288] = address(cd[((32 * idx) + arg2 + 36)])
                        else:
                            if 0 >= mem[_2316]:
                                revert with 0, 50
                            if 1 >= mem[_2316]:
                                revert with 0, 50
                            if ext_call.return_data[18 len 14] > _2225:
                                if idx >= arg2.length:
                                    revert with 0, 50
                                require cd[((32 * idx) + arg2 + 36)] == address(cd[((32 * idx) + arg2 + 36)])
                                if idx >= mem[(32 * arg2.length + 1) + 256]:
                                    revert with 0, 50
                                mem[(32 * idx) + (32 * arg2.length + 1) + 288] = address(cd[((32 * idx) + arg2 + 36)])
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    _1429 = mem[(32 * arg2.length + 1) + 256]
    idx = 0
    while idx < _1429:
        if idx >= mem[(32 * arg2.length + 1) + 256]:
            revert with 0, 50
        if not mem[(32 * idx) + (32 * arg2.length + 1) + 300 len 20]:
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = 0
        else:
            if 0 >= mem[(32 * arg2.length + 1) + 128]:
                revert with 0, 50
            mem[(32 * arg2.length + 1) + 160] = arg1
            if idx >= mem[(32 * arg2.length + 1) + 256]:
                revert with 0, 50
            if 1 >= mem[(32 * arg2.length + 1) + 128]:
                revert with 0, 50
            mem[(32 * arg2.length + 1) + 192] = mem[(32 * idx) + (32 * arg2.length + 1) + 300 len 20]
            if 2 >= mem[(32 * arg2.length + 1) + 128]:
                revert with 0, 50
            mem[(32 * arg2.length + 1) + 224] = arg3
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            if arg4 >= exchangesRouters.length:
                revert with 0, 50
            mem[0] = 1
            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = arg5
            mem[mem[64] + 36] = 64
            _1585 = mem[(32 * arg2.length + 1) + 128]
            mem[mem[64] + 68] = mem[(32 * arg2.length + 1) + 128]
            s = 0
            t = (32 * arg2.length + 1) + 160
            u = mem[64] + 100
            while s < _1585:
                mem[u] = mem[t + 12 len 20]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            require ext_code.size(exchangesRouters[arg4])
            staticcall exchangesRouters[arg4].getAmountsOut(uint256 rg1, address[] rg2) with:
                    gas gas_remaining wei
                   args arg5, 64, mem[mem[64] + 68 len (32 * _1585) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2207 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _2233 = mem[_2207]
            require mem[_2207] <= test266151307()
            require _2207 + return_data.size > _2207 + mem[_2207] + 31
            _2241 = mem[_2207 + mem[_2207]]
            if mem[_2207 + mem[_2207]] > test266151307():
                revert with 0, 65
            if ceil32(32 * mem[_2207 + mem[_2207]]) + 1 < 0 or _2207 + ceil32(return_data.size) + ceil32(32 * mem[_2207 + mem[_2207]]) + 1 > test266151307():
                revert with 0, 65
            mem[64] = _2207 + ceil32(return_data.size) + ceil32(32 * mem[_2207 + mem[_2207]]) + 1
            mem[_2207 + ceil32(return_data.size)] = _2241
            require _2233 + (32 * _2241) + 32 <= return_data.size
            t = _2207 + _2233 + 32
            u = _2207 + ceil32(return_data.size) + 32
            s = 0
            while s < _2241:
                mem[u] = mem[t]
                t = t + 32
                u = u + 32
                s = s + 1
                continue 
            if _2241 < 1:
                revert with 0, 17
            if _2241 - 1 >= _2241:
                revert with 0, 50
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = mem[(32 * _2241 - 1) + _2207 + ceil32(return_data.size) + 32]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    _1467 = mem[64]
    mem[mem[64]] = 2
    mem[64] = mem[64] + 96
    mem[_1467 + 32 len 64] = call.data[calldata.size len 64]
    if 1 >= mem[_1467]:
        revert with 0, 50
    mem[_1467 + 64] = 0
    _2141 = mem[96]
    idx = 0
    while idx < _2141:
        if idx >= mem[96]:
            revert with 0, 50
        if 1 >= mem[_1467]:
            revert with 0, 50
        if mem[_1467 + 64] < mem[(32 * idx) + 128]:
            if 0 >= mem[_1467]:
                revert with 0, 50
            mem[_1467 + 32] = idx
            if idx >= mem[96]:
                revert with 0, 50
            if 1 >= mem[_1467]:
                revert with 0, 50
            mem[_1467 + 64] = mem[(32 * idx) + 128]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    mem[mem[64]] = 32
    _2205 = mem[_1467]
    mem[mem[64] + 32] = mem[_1467]
    mem[mem[64] + 64 len 32 * _2205] = mem[_1467 + 32 len 32 * _2205]
    return 32, mem[mem[64] + 32 len (32 * _2205) + 32]
}



}
