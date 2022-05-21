contract main {




// =====================  Runtime code  =====================


address owner;
address wethAddress;
address usdcAddress;
uint256 usdcPrice;
array of struct sub_5f349a11;
mapping of uint256 sub_0ea9abd4;

function sub_0ea9abd4(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_0ea9abd4[arg1]
}

function usdc() {
    return usdcAddress
}

function weth() {
    return wethAddress
}

function sub_5f349a11(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < sub_5f349a11.length
    return sub_5f349a11[arg1].field_0
}

function owner() {
    return owner
}

function routerLength() {
    return sub_5f349a11.length
}

function usdcPrice() {
    return usdcPrice
}

function _fallback() payable {
  stop
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function updateWeth(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    wethAddress = arg1
    emit 0xf1e0ae15: wethAddress
}

function updateUsdc(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    usdcAddress = arg1
    emit 0x9bc6fc3b: usdcAddress
}

function addRouter(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_0ea9abd4[address(arg1)] = sub_5f349a11.length
    sub_5f349a11.length++
    sub_5f349a11[sub_5f349a11.length].field_0 = arg1
    emit 0x6e3a52fd: arg1
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

function removeRouter(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if sub_5f349a11.length <= 0:
        revert with 0, 'no routers in array'
    if sub_0ea9abd4[address(arg1)] >= sub_5f349a11.length:
        revert with 'NH{q', 50
    sub_5f349a11[stor6[address(arg1)]].field_0 = 0
}

function tokenBalance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function getRouters() {
    mem[64] = (32 * sub_5f349a11.length) + 128
    mem[96] = sub_5f349a11.length
    if not sub_5f349a11.length:
        mem[(32 * sub_5f349a11.length) + 128] = 32
        mem[(32 * sub_5f349a11.length) + 160] = sub_5f349a11.length
        idx = 0
        s = 128
        t = (32 * sub_5f349a11.length) + 192
        while idx < sub_5f349a11.length:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (32 * sub_5f349a11.length) + 128
           len (96 * sub_5f349a11.length) + 64
    mem[128] = address(sub_5f349a11.field_0)
    idx = 128
    s = 0
    while (32 * sub_5f349a11.length) + 96 > idx:
        mem[idx + 32] = sub_5f349a11[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * sub_5f349a11.length) + 128] = 32
    mem[(32 * sub_5f349a11.length) + 160] = sub_5f349a11.length
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < sub_5f349a11.length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * sub_5f349a11.length) + -mem[64] + 192
}

function getAmountsOut(address arg1, uint256 arg2, address[] arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require arg3 + (32 * arg3.length) + 36 <= calldata.size
    mem[96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[100] = arg2
    mem[132] = 64
    mem[164] = arg3.length
    idx = 0
    s = arg3 + 36
    t = 196
    while idx < arg3.length:
        require cd[s] == address(cd[s])
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(arg1)
    staticcall arg1.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args arg2, Array(len=arg3.length, data=mem[196 len 32 * arg3.length])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _14 = mem[96 len 4], Mask(224, 32, arg2) >> 32
    require mem[96 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
    require mem[96 len 4], Mask(224, 32, arg2) >> 32 + 127 < return_data.size + 96
    _15 = mem[mem[96 len 4], Mask(224, 32, arg2) >> 32 + 96]
    if mem[mem[96 len 4], Mask(224, 32, arg2) >> 32 + 96] > test266151307():
        revert with 'NH{q', 65
    if ceil32(return_data.size) + floor32(mem[mem[96 len 4], Mask(224, 32, arg2) >> 32 + 96]) + 97 > test266151307() or floor32(mem[mem[96 len 4], Mask(224, 32, arg2) >> 32 + 96]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = ceil32(return_data.size) + floor32(mem[mem[96 len 4], Mask(224, 32, arg2) >> 32 + 96]) + 97
    mem[ceil32(return_data.size) + 96] = _15
    require _14 + (32 * _15) + 32 <= return_data.size
    idx = 0
    s = _14 + 128
    t = ceil32(return_data.size) + 128
    while idx < _15:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64]] = 32
    mem[mem[64] + 32] = _15
    mem[mem[64] + 64 len 32 * _15] = mem[ceil32(return_data.size) + 128 len 32 * _15]
    return Array(len=_15, data=mem[mem[64] + 64 len 32 * _15])
}

function sub_059e5b0e(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    idx = 0
    s = 0
    t = 0
    while idx < sub_5f349a11.length:
        mem[0] = 5
        if ext_code.size(sub_5f349a11[idx].field_0) <= 0:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s
            t = t
            continue 
        if idx >= sub_5f349a11.length:
            revert with 'NH{q', 50
        mem[0] = 5
        require ext_code.size(sub_5f349a11[idx].field_0)
        staticcall sub_5f349a11[idx].field_0.factory() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _22 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _24 = mem[_22]
        require mem[_22] == mem[_22 + 12 len 20]
        mem[mem[64] + 4] = address(arg1)
        mem[mem[64] + 36] = wethAddress
        require ext_code.size(address(_24))
        staticcall address(_24).getPair(address arg1, address arg2) with:
                gas gas_remaining wei
               args address(arg1), wethAddress
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _27 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _28 = mem[_27]
        require mem[_27] == mem[_27 + 12 len 20]
        if ext_code.size(mem[_27]) <= 0:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s
            t = t
            continue 
        mem[mem[64] + 4] = mem[_27 + 12 len 20]
        require ext_code.size(wethAddress)
        staticcall wethAddress.0x70a08231 with:
                gas gas_remaining wei
               args address(_28)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _31 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_31] == mem[_31]
        if idx == -1:
            revert with 'NH{q', 17
        if mem[_31] <= t:
            idx = idx + 1
            s = s
            t = t
            continue 
        idx = idx + 1
        s = _28
        t = mem[_31]
        continue 
    return address(s)
}

function sub_92798ead(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if ext_code.size(arg1) <= 0:
        revert with 0, 'not a contract'
    idx = 0
    s = 0
    t = 0
    while idx < sub_5f349a11.length:
        mem[0] = 5
        if ext_code.size(sub_5f349a11[idx].field_0) <= 0:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s
            t = t
            continue 
        if idx >= sub_5f349a11.length:
            revert with 'NH{q', 50
        mem[0] = 5
        require ext_code.size(sub_5f349a11[idx].field_0)
        staticcall sub_5f349a11[idx].field_0.factory() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _24 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _26 = mem[_24]
        require mem[_24] == mem[_24 + 12 len 20]
        mem[mem[64] + 4] = address(arg1)
        mem[mem[64] + 36] = usdcAddress
        require ext_code.size(address(_26))
        staticcall address(_26).getPair(address arg1, address arg2) with:
                gas gas_remaining wei
               args address(arg1), usdcAddress
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _29 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _30 = mem[_29]
        require mem[_29] == mem[_29 + 12 len 20]
        if ext_code.size(mem[_29]) <= 0:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s
            t = t
            continue 
        mem[mem[64] + 4] = mem[_29 + 12 len 20]
        require ext_code.size(usdcAddress)
        staticcall usdcAddress.0x70a08231 with:
                gas gas_remaining wei
               args address(_30)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _33 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_33] == mem[_33]
        if idx == -1:
            revert with 'NH{q', 17
        if mem[_33] <= t:
            idx = idx + 1
            s = s
            t = t
            continue 
        idx = idx + 1
        s = _30
        t = mem[_33]
        continue 
    return address(s)
}

function sub_0a1ab71b(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if ext_code.size(arg1) <= 0:
        revert with 0, 'not a contract'
    require ext_code.size(address(arg1))
    staticcall address(arg1).token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(arg1))
    staticcall address(arg1).token1() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(arg1))
    staticcall address(arg1).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if address(ext_call.return_data[0]) == wethAddress:
        if not ext_call.return_data[31 len 1]:
            if Mask(112, 0, ext_call.return_data[0]) and 1 > -1 / Mask(112, 0, ext_call.return_data[0]):
                revert with 'NH{q', 17
            if Mask(112, 0, ext_call.return_data[0]) > -1:
                revert with 'NH{q', 17
            if not Mask(112, 0, ext_call.return_data[32]):
                revert with 'NH{q', 18
            return (Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
        if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
            if 10^ext_call.return_data[31 len 1] > -1:
                revert with 'NH{q', 17
            if Mask(112, 0, ext_call.return_data[0]) and 10^ext_call.return_data[31 len 1] > -1 / Mask(112, 0, ext_call.return_data[0]):
                revert with 'NH{q', 17
            if Mask(112, 0, ext_call.return_data[0]) * 10^ext_call.return_data[31 len 1] > -1:
                revert with 'NH{q', 17
            if not Mask(112, 0, ext_call.return_data[32]):
                revert with 'NH{q', 18
            return (Mask(112, 0, ext_call.return_data[0]) * 10^ext_call.return_data[31 len 1] / Mask(112, 0, ext_call.return_data[32]))
        s = 10
        t = 1
        idx = ext_call.return_data[31 len 1]
        while idx > 1:
            if s > -1 / s:
                revert with 'NH{q', 17
            if not bool(idx):
                s = s * s
                t = t
                idx = uint255(idx) * 0.5
                continue 
            s = s * s
            t = t * s
            idx = uint255(idx) * 0.5
            continue 
        if t > -1 / s:
            revert with 'NH{q', 17
        if Mask(112, 0, ext_call.return_data[0]) and t * s > -1 / Mask(112, 0, ext_call.return_data[0]):
            revert with 'NH{q', 17
        if Mask(112, 0, ext_call.return_data[0]) * t * s > -1:
            revert with 'NH{q', 17
        if not Mask(112, 0, ext_call.return_data[32]):
            revert with 'NH{q', 18
        return (Mask(112, 0, ext_call.return_data[0]) * t * s / Mask(112, 0, ext_call.return_data[32]))
    if address(ext_call.return_data[0]) == usdcAddress:
        if not ext_call.return_data[31 len 1]:
            if Mask(112, 0, ext_call.return_data[0]) and 1 > -1 / Mask(112, 0, ext_call.return_data[0]):
                revert with 'NH{q', 17
            if Mask(112, 0, ext_call.return_data[0]) > -1:
                revert with 'NH{q', 17
            if not Mask(112, 0, ext_call.return_data[32]):
                revert with 'NH{q', 18
            return (Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
        if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
            if 10^ext_call.return_data[31 len 1] > -1:
                revert with 'NH{q', 17
            if Mask(112, 0, ext_call.return_data[0]) and 10^ext_call.return_data[31 len 1] > -1 / Mask(112, 0, ext_call.return_data[0]):
                revert with 'NH{q', 17
            if Mask(112, 0, ext_call.return_data[0]) * 10^ext_call.return_data[31 len 1] > -1:
                revert with 'NH{q', 17
            if not Mask(112, 0, ext_call.return_data[32]):
                revert with 'NH{q', 18
            return (Mask(112, 0, ext_call.return_data[0]) * 10^ext_call.return_data[31 len 1] / Mask(112, 0, ext_call.return_data[32]))
        s = 10
        t = 1
        idx = ext_call.return_data[31 len 1]
        while idx > 1:
            if s > -1 / s:
                revert with 'NH{q', 17
            if not bool(idx):
                s = s * s
                t = t
                idx = uint255(idx) * 0.5
                continue 
            s = s * s
            t = t * s
            idx = uint255(idx) * 0.5
            continue 
        if t > -1 / s:
            revert with 'NH{q', 17
        if Mask(112, 0, ext_call.return_data[0]) and t * s > -1 / Mask(112, 0, ext_call.return_data[0]):
            revert with 'NH{q', 17
        if Mask(112, 0, ext_call.return_data[0]) * t * s > -1:
            revert with 'NH{q', 17
        if not Mask(112, 0, ext_call.return_data[32]):
            revert with 'NH{q', 18
        return (Mask(112, 0, ext_call.return_data[0]) * t * s / Mask(112, 0, ext_call.return_data[32]))
    if not ext_call.return_data[31 len 1]:
        if Mask(112, 0, ext_call.return_data[32]) and 1 > -1 / Mask(112, 0, ext_call.return_data[32]):
            revert with 'NH{q', 17
        if Mask(112, 0, ext_call.return_data[32]) > -1:
            revert with 'NH{q', 17
        if not Mask(112, 0, ext_call.return_data[0]):
            revert with 'NH{q', 18
        return (Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))
    if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
        if 10^ext_call.return_data[31 len 1] > -1:
            revert with 'NH{q', 17
        if Mask(112, 0, ext_call.return_data[32]) and 10^ext_call.return_data[31 len 1] > -1 / Mask(112, 0, ext_call.return_data[32]):
            revert with 'NH{q', 17
        if Mask(112, 0, ext_call.return_data[32]) * 10^ext_call.return_data[31 len 1] > -1:
            revert with 'NH{q', 17
        if not Mask(112, 0, ext_call.return_data[0]):
            revert with 'NH{q', 18
        return (Mask(112, 0, ext_call.return_data[32]) * 10^ext_call.return_data[31 len 1] / Mask(112, 0, ext_call.return_data[0]))
    s = 10
    t = 1
    idx = ext_call.return_data[31 len 1]
    while idx > 1:
        if s > -1 / s:
            revert with 'NH{q', 17
        if not bool(idx):
            s = s * s
            t = t
            idx = uint255(idx) * 0.5
            continue 
        s = s * s
        t = t * s
        idx = uint255(idx) * 0.5
        continue 
    if t > -1 / s:
        revert with 'NH{q', 17
    if Mask(112, 0, ext_call.return_data[32]) and t * s > -1 / Mask(112, 0, ext_call.return_data[32]):
        revert with 'NH{q', 17
    if Mask(112, 0, ext_call.return_data[32]) * t * s > -1:
        revert with 'NH{q', 17
    if not Mask(112, 0, ext_call.return_data[0]):
        revert with 'NH{q', 18
    return (Mask(112, 0, ext_call.return_data[32]) * t * s / Mask(112, 0, ext_call.return_data[0]))
}

function sub_49a8ce2b(?) payable {
    mem[64] = 96
    require not msg.value
    if ext_code.size(wethAddress) <= 0:
        revert with 0, 'not a contract'
    idx = 0
    s = 0
    t = 0
    while idx < sub_5f349a11.length:
        mem[0] = 5
        if ext_code.size(sub_5f349a11[idx].field_0) <= 0:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s
            t = t
            continue 
        if idx >= sub_5f349a11.length:
            revert with 'NH{q', 50
        mem[0] = 5
        require ext_code.size(sub_5f349a11[idx].field_0)
        staticcall sub_5f349a11[idx].field_0.factory() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _67 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _68 = mem[_67]
        require mem[_67] == mem[_67 + 12 len 20]
        mem[mem[64] + 4] = wethAddress
        mem[mem[64] + 36] = usdcAddress
        require ext_code.size(address(_68))
        staticcall address(_68).getPair(address arg1, address arg2) with:
                gas gas_remaining wei
               args wethAddress, usdcAddress
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _79 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _80 = mem[_79]
        require mem[_79] == mem[_79 + 12 len 20]
        if ext_code.size(mem[_79]) <= 0:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s
            t = t
            continue 
        mem[mem[64] + 4] = mem[_79 + 12 len 20]
        require ext_code.size(usdcAddress)
        staticcall usdcAddress.0x70a08231 with:
                gas gas_remaining wei
               args address(_80)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _91 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_91] == mem[_91]
        if idx == -1:
            revert with 'NH{q', 17
        if mem[_91] <= t:
            idx = idx + 1
            s = s
            t = t
            continue 
        idx = idx + 1
        s = _80
        t = mem[_91]
        continue 
    require ext_code.size(address(s))
    staticcall address(s).token0() with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _62 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _66 = mem[_62]
    require mem[_62] == mem[_62 + 12 len 20]
    require ext_code.size(address(s))
    staticcall address(s).token1() with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _71 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _73 = mem[_71]
    require mem[_71] == mem[_71 + 12 len 20]
    require ext_code.size(address(s))
    staticcall address(s).getReserves() with:
            gas gas_remaining wei
    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _76 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 96
    _78 = mem[_76]
    require mem[_76] == mem[_76 + 18 len 14]
    _81 = mem[_76 + 32]
    require mem[_76 + 32] == mem[_76 + 50 len 14]
    require mem[_76 + 64] == mem[_76 + 92 len 4]
    if address(_66) == wethAddress:
        require ext_code.size(address(_66))
        staticcall address(_66).0x313ce567 with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _89 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _92 = mem[_89]
        require mem[_89] == mem[_89 + 31 len 1]
        require ext_code.size(address(_73))
        staticcall address(_73).0x313ce567 with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _99 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_99] == mem[_99 + 31 len 1]
        if not uint8(_92):
            if Mask(112, 0, _81) and 1 > -1 / Mask(112, 0, _81):
                revert with 'NH{q', 17
            if Mask(112, 0, _81) > -1:
                revert with 'NH{q', 17
            if not Mask(112, 0, _78):
                revert with 'NH{q', 18
            return (Mask(112, 0, _81) / Mask(112, 0, _78))
        if bool(bool(uint8(_92) < 78)) or bool(bool(uint8(_92) < 32)):
            if 10^uint8(_92) > -1:
                revert with 'NH{q', 17
            if Mask(112, 0, _81) and 10^uint8(_92) > -1 / Mask(112, 0, _81):
                revert with 'NH{q', 17
            if Mask(112, 0, _81) * 10^uint8(_92) > -1:
                revert with 'NH{q', 17
            if not Mask(112, 0, _78):
                revert with 'NH{q', 18
            return (Mask(112, 0, _81) * 10^uint8(_92) / Mask(112, 0, _78))
        s = 10
        t = 1
        idx = uint8(_92)
        while idx > 1:
            if s > -1 / s:
                revert with 'NH{q', 17
            if not bool(idx):
                s = s * s
                t = t
                idx = uint255(idx) * 0.5
                continue 
            s = s * s
            t = t * s
            idx = uint255(idx) * 0.5
            continue 
        if t > -1 / s:
            revert with 'NH{q', 17
        if Mask(112, 0, _81) and t * s > -1 / Mask(112, 0, _81):
            revert with 'NH{q', 17
        if Mask(112, 0, _81) * t * s > -1:
            revert with 'NH{q', 17
        if not Mask(112, 0, _78):
            revert with 'NH{q', 18
        return (Mask(112, 0, _81) * t * s / Mask(112, 0, _78))
    require ext_code.size(address(_73))
    staticcall address(_73).0x313ce567 with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _90 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _93 = mem[_90]
    require mem[_90] == mem[_90 + 31 len 1]
    require ext_code.size(address(_66))
    staticcall address(_66).0x313ce567 with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _100 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_100] == mem[_100 + 31 len 1]
    if not uint8(_93):
        if Mask(112, 0, _78) and 1 > -1 / Mask(112, 0, _78):
            revert with 'NH{q', 17
        if Mask(112, 0, _78) > -1:
            revert with 'NH{q', 17
        if not Mask(112, 0, _81):
            revert with 'NH{q', 18
        return (Mask(112, 0, _78) / Mask(112, 0, _81))
    if bool(bool(uint8(_93) < 78)) or bool(bool(uint8(_93) < 32)):
        if 10^uint8(_93) > -1:
            revert with 'NH{q', 17
        if Mask(112, 0, _78) and 10^uint8(_93) > -1 / Mask(112, 0, _78):
            revert with 'NH{q', 17
        if Mask(112, 0, _78) * 10^uint8(_93) > -1:
            revert with 'NH{q', 17
        if not Mask(112, 0, _81):
            revert with 'NH{q', 18
        return (Mask(112, 0, _78) * 10^uint8(_93) / Mask(112, 0, _81))
    s = 10
    t = 1
    idx = uint8(_93)
    while idx > 1:
        if s > -1 / s:
            revert with 'NH{q', 17
        if not bool(idx):
            s = s * s
            t = t
            idx = uint255(idx) * 0.5
            continue 
        s = s * s
        t = t * s
        idx = uint255(idx) * 0.5
        continue 
    if t > -1 / s:
        revert with 'NH{q', 17
    if Mask(112, 0, _78) and t * s > -1 / Mask(112, 0, _78):
        revert with 'NH{q', 17
    if Mask(112, 0, _78) * t * s > -1:
        revert with 'NH{q', 17
    if not Mask(112, 0, _81):
        revert with 'NH{q', 18
    return (Mask(112, 0, _78) * t * s / Mask(112, 0, _81))
}

function sub_cbe67e37(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if arg2:
        idx = 0
        s = 0
        t = 0
        while idx < sub_5f349a11.length:
            mem[0] = 5
            if ext_code.size(sub_5f349a11[idx].field_0) <= 0:
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s
                t = t
                continue 
            if idx >= sub_5f349a11.length:
                revert with 'NH{q', 50
            mem[0] = 5
            require ext_code.size(sub_5f349a11[idx].field_0)
            staticcall sub_5f349a11[idx].field_0.factory() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _162 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _166 = mem[_162]
            require mem[_162] == mem[_162 + 12 len 20]
            mem[mem[64] + 4] = address(arg1)
            mem[mem[64] + 36] = wethAddress
            require ext_code.size(address(_166))
            staticcall address(_166).getPair(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args address(arg1), wethAddress
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _188 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _192 = mem[_188]
            require mem[_188] == mem[_188 + 12 len 20]
            if ext_code.size(mem[_188]) <= 0:
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s
                t = t
                continue 
            mem[mem[64] + 4] = mem[_188 + 12 len 20]
            require ext_code.size(wethAddress)
            staticcall wethAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args address(_192)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _204 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_204] == mem[_204]
            if idx == -1:
                revert with 'NH{q', 17
            if mem[_204] <= t:
                idx = idx + 1
                s = s
                t = t
                continue 
            idx = idx + 1
            s = _192
            t = mem[_204]
            continue 
        if ext_code.size(s) <= 0:
            revert with 0, 'not a contract'
        require ext_code.size(address(s))
        staticcall address(s).token0() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _164 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _168 = mem[_164]
        require mem[_164] == mem[_164 + 12 len 20]
        require ext_code.size(address(s))
        staticcall address(s).token1() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _178 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _180 = mem[_178]
        require mem[_178] == mem[_178 + 12 len 20]
        require ext_code.size(address(s))
        staticcall address(s).getReserves() with:
                gas gas_remaining wei
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _190 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        _194 = mem[_190]
        require mem[_190] == mem[_190 + 18 len 14]
        _196 = mem[_190 + 32]
        require mem[_190 + 32] == mem[_190 + 50 len 14]
        require mem[_190 + 64] == mem[_190 + 92 len 4]
        if address(_168) == wethAddress:
            require ext_code.size(address(_168))
            staticcall address(_168).0x313ce567 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _220 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_220] == mem[_220 + 31 len 1]
            require ext_code.size(address(_180))
            staticcall address(_180).0x313ce567 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _244 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_244] == mem[_244 + 31 len 1]
            if not mem[_244 + 31 len 1]:
                if Mask(112, 0, _194) and 1 > -1 / Mask(112, 0, _194):
                    revert with 'NH{q', 17
                if Mask(112, 0, _194) > -1:
                    revert with 'NH{q', 17
                if not Mask(112, 0, _196):
                    revert with 'NH{q', 18
                return (Mask(112, 0, _194) / Mask(112, 0, _196))
            if not bool(mem[_244 + 31 len 1] < 78) and not bool(mem[_244 + 31 len 1] < 32):
                s = 10
                t = 1
                idx = mem[_244 + 31 len 1]
                while idx > 1:
                    if s > -1 / s:
                        revert with 'NH{q', 17
                    if not bool(idx):
                        s = s * s
                        t = t
                        idx = uint255(idx) * 0.5
                        continue 
                    s = s * s
                    t = t * s
                    idx = uint255(idx) * 0.5
                    continue 
                if t > -1 / s:
                    revert with 'NH{q', 17
                if Mask(112, 0, _194) and t * s > -1 / Mask(112, 0, _194):
                    revert with 'NH{q', 17
                if Mask(112, 0, _194) * t * s > -1:
                    revert with 'NH{q', 17
                if not Mask(112, 0, _196):
                    revert with 'NH{q', 18
                return (Mask(112, 0, _194) * t * s / Mask(112, 0, _196))
            if 10^mem[_244 + 31 len 1] > -1:
                revert with 'NH{q', 17
            if Mask(112, 0, _194) and 10^mem[_244 + 31 len 1] > -1 / Mask(112, 0, _194):
                revert with 'NH{q', 17
            if Mask(112, 0, _194) * 10^mem[_244 + 31 len 1] > -1:
                revert with 'NH{q', 17
            if not Mask(112, 0, _196):
                revert with 'NH{q', 18
            mem[mem[64]] = Mask(112, 0, _194) * 10^mem[_244 + 31 len 1] / Mask(112, 0, _196)
        else:
            if address(_168) == usdcAddress:
                require ext_code.size(address(_168))
                staticcall address(_168).0x313ce567 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _223 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_223] == mem[_223 + 31 len 1]
                require ext_code.size(address(_180))
                staticcall address(_180).0x313ce567 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _247 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_247] == mem[_247 + 31 len 1]
                if not mem[_247 + 31 len 1]:
                    if Mask(112, 0, _194) and 1 > -1 / Mask(112, 0, _194):
                        revert with 'NH{q', 17
                    if Mask(112, 0, _194) > -1:
                        revert with 'NH{q', 17
                    if not Mask(112, 0, _196):
                        revert with 'NH{q', 18
                    return (Mask(112, 0, _194) / Mask(112, 0, _196))
                if not bool(mem[_247 + 31 len 1] < 78) and not bool(mem[_247 + 31 len 1] < 32):
                    s = 10
                    t = 1
                    idx = mem[_247 + 31 len 1]
                    while idx > 1:
                        if s > -1 / s:
                            revert with 'NH{q', 17
                        if not bool(idx):
                            s = s * s
                            t = t
                            idx = uint255(idx) * 0.5
                            continue 
                        s = s * s
                        t = t * s
                        idx = uint255(idx) * 0.5
                        continue 
                    if t > -1 / s:
                        revert with 'NH{q', 17
                    if Mask(112, 0, _194) and t * s > -1 / Mask(112, 0, _194):
                        revert with 'NH{q', 17
                    if Mask(112, 0, _194) * t * s > -1:
                        revert with 'NH{q', 17
                    if not Mask(112, 0, _196):
                        revert with 'NH{q', 18
                    return (Mask(112, 0, _194) * t * s / Mask(112, 0, _196))
                if 10^mem[_247 + 31 len 1] > -1:
                    revert with 'NH{q', 17
                if Mask(112, 0, _194) and 10^mem[_247 + 31 len 1] > -1 / Mask(112, 0, _194):
                    revert with 'NH{q', 17
                if Mask(112, 0, _194) * 10^mem[_247 + 31 len 1] > -1:
                    revert with 'NH{q', 17
                if not Mask(112, 0, _196):
                    revert with 'NH{q', 18
                mem[mem[64]] = Mask(112, 0, _194) * 10^mem[_247 + 31 len 1] / Mask(112, 0, _196)
            else:
                require ext_code.size(address(_180))
                staticcall address(_180).0x313ce567 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _224 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_224] == mem[_224 + 31 len 1]
                require ext_code.size(address(_168))
                staticcall address(_168).0x313ce567 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _248 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_248] == mem[_248 + 31 len 1]
                if not mem[_248 + 31 len 1]:
                    if Mask(112, 0, _196) and 1 > -1 / Mask(112, 0, _196):
                        revert with 'NH{q', 17
                    if Mask(112, 0, _196) > -1:
                        revert with 'NH{q', 17
                    if not Mask(112, 0, _194):
                        revert with 'NH{q', 18
                    return (Mask(112, 0, _196) / Mask(112, 0, _194))
                if not bool(mem[_248 + 31 len 1] < 78) and not bool(mem[_248 + 31 len 1] < 32):
                    s = 10
                    t = 1
                    idx = mem[_248 + 31 len 1]
                    while idx > 1:
                        if s > -1 / s:
                            revert with 'NH{q', 17
                        if not bool(idx):
                            s = s * s
                            t = t
                            idx = uint255(idx) * 0.5
                            continue 
                        s = s * s
                        t = t * s
                        idx = uint255(idx) * 0.5
                        continue 
                    if t > -1 / s:
                        revert with 'NH{q', 17
                    if Mask(112, 0, _196) and t * s > -1 / Mask(112, 0, _196):
                        revert with 'NH{q', 17
                    if Mask(112, 0, _196) * t * s > -1:
                        revert with 'NH{q', 17
                    if not Mask(112, 0, _194):
                        revert with 'NH{q', 18
                    return (Mask(112, 0, _196) * t * s / Mask(112, 0, _194))
                if 10^mem[_248 + 31 len 1] > -1:
                    revert with 'NH{q', 17
                if Mask(112, 0, _196) and 10^mem[_248 + 31 len 1] > -1 / Mask(112, 0, _196):
                    revert with 'NH{q', 17
                if Mask(112, 0, _196) * 10^mem[_248 + 31 len 1] > -1:
                    revert with 'NH{q', 17
                if not Mask(112, 0, _194):
                    revert with 'NH{q', 18
                mem[mem[64]] = Mask(112, 0, _196) * 10^mem[_248 + 31 len 1] / Mask(112, 0, _194)
    else:
        if ext_code.size(arg1) <= 0:
            revert with 0, 'not a contract'
        idx = 0
        s = 0
        t = 0
        while idx < sub_5f349a11.length:
            mem[0] = 5
            if ext_code.size(sub_5f349a11[idx].field_0) <= 0:
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s
                t = t
                continue 
            if idx >= sub_5f349a11.length:
                revert with 'NH{q', 50
            mem[0] = 5
            require ext_code.size(sub_5f349a11[idx].field_0)
            staticcall sub_5f349a11[idx].field_0.factory() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _161 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _165 = mem[_161]
            require mem[_161] == mem[_161 + 12 len 20]
            mem[mem[64] + 4] = address(arg1)
            mem[mem[64] + 36] = usdcAddress
            require ext_code.size(address(_165))
            staticcall address(_165).getPair(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args address(arg1), usdcAddress
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _187 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _191 = mem[_187]
            require mem[_187] == mem[_187 + 12 len 20]
            if ext_code.size(mem[_187]) <= 0:
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s
                t = t
                continue 
            mem[mem[64] + 4] = mem[_187 + 12 len 20]
            require ext_code.size(usdcAddress)
            staticcall usdcAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args address(_191)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _203 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_203] == mem[_203]
            if idx == -1:
                revert with 'NH{q', 17
            if mem[_203] <= t:
                idx = idx + 1
                s = s
                t = t
                continue 
            idx = idx + 1
            s = _191
            t = mem[_203]
            continue 
        if ext_code.size(s) <= 0:
            revert with 0, 'not a contract'
        require ext_code.size(address(s))
        staticcall address(s).token0() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _163 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _167 = mem[_163]
        require mem[_163] == mem[_163 + 12 len 20]
        require ext_code.size(address(s))
        staticcall address(s).token1() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _177 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _179 = mem[_177]
        require mem[_177] == mem[_177 + 12 len 20]
        require ext_code.size(address(s))
        staticcall address(s).getReserves() with:
                gas gas_remaining wei
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _189 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        _193 = mem[_189]
        require mem[_189] == mem[_189 + 18 len 14]
        _195 = mem[_189 + 32]
        require mem[_189 + 32] == mem[_189 + 50 len 14]
        require mem[_189 + 64] == mem[_189 + 92 len 4]
        if address(_167) == wethAddress:
            require ext_code.size(address(_167))
            staticcall address(_167).0x313ce567 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _219 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_219] == mem[_219 + 31 len 1]
            require ext_code.size(address(_179))
            staticcall address(_179).0x313ce567 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _243 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_243] == mem[_243 + 31 len 1]
            if not mem[_243 + 31 len 1]:
                if Mask(112, 0, _193) and 1 > -1 / Mask(112, 0, _193):
                    revert with 'NH{q', 17
                if Mask(112, 0, _193) > -1:
                    revert with 'NH{q', 17
                if not Mask(112, 0, _195):
                    revert with 'NH{q', 18
                return (Mask(112, 0, _193) / Mask(112, 0, _195))
            if not bool(mem[_243 + 31 len 1] < 78) and not bool(mem[_243 + 31 len 1] < 32):
                s = 10
                t = 1
                idx = mem[_243 + 31 len 1]
                while idx > 1:
                    if s > -1 / s:
                        revert with 'NH{q', 17
                    if not bool(idx):
                        s = s * s
                        t = t
                        idx = uint255(idx) * 0.5
                        continue 
                    s = s * s
                    t = t * s
                    idx = uint255(idx) * 0.5
                    continue 
                if t > -1 / s:
                    revert with 'NH{q', 17
                if Mask(112, 0, _193) and t * s > -1 / Mask(112, 0, _193):
                    revert with 'NH{q', 17
                if Mask(112, 0, _193) * t * s > -1:
                    revert with 'NH{q', 17
                if not Mask(112, 0, _195):
                    revert with 'NH{q', 18
                return (Mask(112, 0, _193) * t * s / Mask(112, 0, _195))
            if 10^mem[_243 + 31 len 1] > -1:
                revert with 'NH{q', 17
            if Mask(112, 0, _193) and 10^mem[_243 + 31 len 1] > -1 / Mask(112, 0, _193):
                revert with 'NH{q', 17
            if Mask(112, 0, _193) * 10^mem[_243 + 31 len 1] > -1:
                revert with 'NH{q', 17
            if not Mask(112, 0, _195):
                revert with 'NH{q', 18
            mem[mem[64]] = Mask(112, 0, _193) * 10^mem[_243 + 31 len 1] / Mask(112, 0, _195)
        else:
            if address(_167) == usdcAddress:
                require ext_code.size(address(_167))
                staticcall address(_167).0x313ce567 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _221 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_221] == mem[_221 + 31 len 1]
                require ext_code.size(address(_179))
                staticcall address(_179).0x313ce567 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _245 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_245] == mem[_245 + 31 len 1]
                if not mem[_245 + 31 len 1]:
                    if Mask(112, 0, _193) and 1 > -1 / Mask(112, 0, _193):
                        revert with 'NH{q', 17
                    if Mask(112, 0, _193) > -1:
                        revert with 'NH{q', 17
                    if not Mask(112, 0, _195):
                        revert with 'NH{q', 18
                    return (Mask(112, 0, _193) / Mask(112, 0, _195))
                if not bool(mem[_245 + 31 len 1] < 78) and not bool(mem[_245 + 31 len 1] < 32):
                    s = 10
                    t = 1
                    idx = mem[_245 + 31 len 1]
                    while idx > 1:
                        if s > -1 / s:
                            revert with 'NH{q', 17
                        if not bool(idx):
                            s = s * s
                            t = t
                            idx = uint255(idx) * 0.5
                            continue 
                        s = s * s
                        t = t * s
                        idx = uint255(idx) * 0.5
                        continue 
                    if t > -1 / s:
                        revert with 'NH{q', 17
                    if Mask(112, 0, _193) and t * s > -1 / Mask(112, 0, _193):
                        revert with 'NH{q', 17
                    if Mask(112, 0, _193) * t * s > -1:
                        revert with 'NH{q', 17
                    if not Mask(112, 0, _195):
                        revert with 'NH{q', 18
                    return (Mask(112, 0, _193) * t * s / Mask(112, 0, _195))
                if 10^mem[_245 + 31 len 1] > -1:
                    revert with 'NH{q', 17
                if Mask(112, 0, _193) and 10^mem[_245 + 31 len 1] > -1 / Mask(112, 0, _193):
                    revert with 'NH{q', 17
                if Mask(112, 0, _193) * 10^mem[_245 + 31 len 1] > -1:
                    revert with 'NH{q', 17
                if not Mask(112, 0, _195):
                    revert with 'NH{q', 18
                mem[mem[64]] = Mask(112, 0, _193) * 10^mem[_245 + 31 len 1] / Mask(112, 0, _195)
            else:
                require ext_code.size(address(_179))
                staticcall address(_179).0x313ce567 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _222 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_222] == mem[_222 + 31 len 1]
                require ext_code.size(address(_167))
                staticcall address(_167).0x313ce567 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _246 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_246] == mem[_246 + 31 len 1]
                if not mem[_246 + 31 len 1]:
                    if Mask(112, 0, _195) and 1 > -1 / Mask(112, 0, _195):
                        revert with 'NH{q', 17
                    if Mask(112, 0, _195) > -1:
                        revert with 'NH{q', 17
                    if not Mask(112, 0, _193):
                        revert with 'NH{q', 18
                    return (Mask(112, 0, _195) / Mask(112, 0, _193))
                if not bool(mem[_246 + 31 len 1] < 78) and not bool(mem[_246 + 31 len 1] < 32):
                    s = 10
                    t = 1
                    idx = mem[_246 + 31 len 1]
                    while idx > 1:
                        if s > -1 / s:
                            revert with 'NH{q', 17
                        if not bool(idx):
                            s = s * s
                            t = t
                            idx = uint255(idx) * 0.5
                            continue 
                        s = s * s
                        t = t * s
                        idx = uint255(idx) * 0.5
                        continue 
                    if t > -1 / s:
                        revert with 'NH{q', 17
                    if Mask(112, 0, _195) and t * s > -1 / Mask(112, 0, _195):
                        revert with 'NH{q', 17
                    if Mask(112, 0, _195) * t * s > -1:
                        revert with 'NH{q', 17
                    if not Mask(112, 0, _193):
                        revert with 'NH{q', 18
                    return (Mask(112, 0, _195) * t * s / Mask(112, 0, _193))
                if 10^mem[_246 + 31 len 1] > -1:
                    revert with 'NH{q', 17
                if Mask(112, 0, _195) and 10^mem[_246 + 31 len 1] > -1 / Mask(112, 0, _195):
                    revert with 'NH{q', 17
                if Mask(112, 0, _195) * 10^mem[_246 + 31 len 1] > -1:
                    revert with 'NH{q', 17
                if not Mask(112, 0, _193):
                    revert with 'NH{q', 18
                mem[mem[64]] = Mask(112, 0, _195) * 10^mem[_246 + 31 len 1] / Mask(112, 0, _193)
    return memory
      from mem[64]
       len 32
}



}
