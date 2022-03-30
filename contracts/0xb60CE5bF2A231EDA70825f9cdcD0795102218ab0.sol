contract main {




// =====================  Runtime code  =====================


#
#  - sub_45e38b96(?)
#  - sub_490e7aa9(?)
#
const name = 'YakRouter', 0

const WAVAX = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7

const AVAX = 0


address owner;
uint256 sub_d4840641;
uint8 maxSteps;
array of address sub_1ec6a99a;
array of address adapters;

function sub_1ec6a99a(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_1ec6a99a.length
    return address(sub_1ec6a99a[arg1])
}

function adapters(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < adapters.length
    return address(adapters[arg1])
}

function trustedTokensCount() {
    return sub_1ec6a99a.length
}

function adaptersCount() {
    return adapters.length
}

function owner() {
    return owner
}

function maxSteps() {
    return maxSteps
}

function sub_d4840641(?) {
    return sub_d4840641
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_7db1e48d(?) {
    require calldata.size - 4 >= 32
    require arg1 == uint8(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    maxSteps = uint8(arg1)
}

function recoverAVAX(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg1 > 0
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

function getBalance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not arg1:
        return eth.balance(arg2)
    require ext_code.size(arg1)
    staticcall arg1.balanceOf(address rg1) with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function approveTokenForSpender(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    call arg1.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(arg2), -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_00564ede(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(address(arg1))
    call address(arg1).approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function recoverERC20(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg2 > 0
    require ext_code.size(arg1)
    call arg1.transfer(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_call.return_data[0]
}

function setAdapters(address[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    adapters.length = arg1.length
    if not arg1.length:
        idx = 0
        while adapters.length > idx:
            uint256(adapters[idx]) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = arg1 + 36
        while arg1 + (32 * arg1.length) + 36 > idx:
            address(adapters[s]) = address(cd[idx])
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg1.length) + 31) >> 5
        while adapters.length > idx:
            uint256(adapters[idx]) = 0
            idx = idx + 1
            continue 
}

function setTrustedTokens(address[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_1ec6a99a.length = arg1.length
    if not arg1.length:
        idx = 0
        while sub_1ec6a99a.length > idx:
            uint256(sub_1ec6a99a[idx]) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = arg1 + 36
        while arg1 + (32 * arg1.length) + 36 > idx:
            address(sub_1ec6a99a[s]) = address(cd[idx])
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg1.length) + 31) >> 5
        while sub_1ec6a99a.length > idx:
            uint256(sub_1ec6a99a[idx]) = 0
            idx = idx + 1
            continue 
}

function sub_fe6f3c4e(?) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require ceil32(arg1.length) + 128 >= 96 and ceil32(arg1.length) + 128 <= test266151307()
    mem[96] = arg1.length
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require arg1.length / 32 <= test266151307()
    mem[ceil32(arg1.length) + 128] = arg1.length / 32
    mem[64] = ceil32(arg1.length) + floor32(arg1.length) + 160
    if not floor32(arg1.length):
        idx = 0
        while idx < arg1.length / 32:
            require idx < Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
            mem[(32 * idx) + ceil32(arg1.length) + 160] = mem[(32 * idx) + 128]
            idx = idx + 1
            continue 
        mem[ceil32(arg1.length) + floor32(arg1.length) + 160] = 32
        _20 = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
        mem[ceil32(arg1.length) + floor32(arg1.length) + 192] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
        s = 0
        s = ceil32(arg1.length) + 160
        t = mem[64] + 64
        while arg1.length / 32 < _20:
            mem[t] = mem[s]
            s = (arg1.length / 32) + 1
            s = s + 32
            t = t + 32
            continue 
    else:
        mem[ceil32(arg1.length) + 160 len floor32(arg1.length)] = call.data[calldata.size len floor32(arg1.length)]
        idx = 0
        while idx < arg1.length / 32:
            require idx < Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
            mem[(32 * idx) + ceil32(arg1.length) + 160] = mem[(32 * idx) + 128]
            idx = idx + 1
            continue 
        mem[ceil32(arg1.length) + floor32(arg1.length) + 160] = 32
        _21 = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
        mem[ceil32(arg1.length) + floor32(arg1.length) + 192] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
        s = 0
        s = ceil32(arg1.length) + 160
        t = mem[64] + 64
        while arg1.length / 32 < _21:
            mem[t] = mem[s]
            s = (arg1.length / 32) + 1
            s = s + 32
            t = t + 32
            continue 
    return memory
      from mem[64]
       len t - mem[64]
}

function sub_a52bfd74(?) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require ceil32(arg1.length) + 128 >= 96 and ceil32(arg1.length) + 128 <= test266151307()
    mem[96] = arg1.length
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require arg1.length / 32 <= test266151307()
    mem[ceil32(arg1.length) + 128] = arg1.length / 32
    mem[64] = ceil32(arg1.length) + floor32(arg1.length) + 160
    if not floor32(arg1.length):
        idx = 0
        while idx < arg1.length / 32:
            require idx < Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
            mem[(32 * idx) + ceil32(arg1.length) + 160] = mem[(32 * idx) + 140 len 20]
            idx = idx + 1
            continue 
        mem[ceil32(arg1.length) + floor32(arg1.length) + 160] = 32
        _20 = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
        mem[ceil32(arg1.length) + floor32(arg1.length) + 192] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
        s = 0
        s = ceil32(arg1.length) + 160
        t = mem[64] + 64
        while arg1.length / 32 < _20:
            mem[t] = mem[s + 12 len 20]
            s = (arg1.length / 32) + 1
            s = s + 32
            t = t + 32
            continue 
    else:
        mem[ceil32(arg1.length) + 160 len floor32(arg1.length)] = call.data[calldata.size len floor32(arg1.length)]
        idx = 0
        while idx < arg1.length / 32:
            require idx < Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
            mem[(32 * idx) + ceil32(arg1.length) + 160] = mem[(32 * idx) + 140 len 20]
            idx = idx + 1
            continue 
        mem[ceil32(arg1.length) + floor32(arg1.length) + 160] = 32
        _21 = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
        mem[ceil32(arg1.length) + floor32(arg1.length) + 192] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
        s = 0
        s = ceil32(arg1.length) + 160
        t = mem[64] + 64
        while arg1.length / 32 < _21:
            mem[t] = mem[s + 12 len 20]
            s = (arg1.length / 32) + 1
            s = s + 32
            t = t + 32
            continue 
    return memory
      from mem[64]
       len t - mem[64]
}

function queryNoSplit(uint256 arg1, address arg2, address arg3) {
    require calldata.size - 4 >= 96
    require arg2 == arg2
    require arg3 == arg3
    mem[96] = 0
    mem[128] = 96
    mem[160] = 0
    mem[64] = 288
    mem[192] = 0
    mem[224] = 96
    mem[256] = 0
    idx = 0
    s = 192
    while uint8(idx) < adapters.length:
        mem[0] = 4
        mem[mem[64]] = 0xef99893a00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = arg1
        mem[mem[64] + 36] = arg2
        mem[mem[64] + 68] = arg3
        require ext_code.size(address(adapters[uint8(idx)]))
        staticcall address(adapters[uint8(idx)]).0xef99893a with:
                gas gas_remaining wei
               args arg1, address(arg2), arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _28 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 64
        _31 = mem[_28]
        _32 = mem[_28 + 32]
        require mem[_28 + 32] <= test266151307()
        require _28 + return_data.size > _28 + mem[_28 + 32] + 31
        _33 = mem[_28 + mem[_28 + 32]]
        require mem[_28 + mem[_28 + 32]] <= test266151307()
        require (32 * mem[_28 + mem[_28 + 32]]) + 32 >= 0 and _28 + ceil32(return_data.size) + (32 * mem[_28 + mem[_28 + 32]]) + 32 <= test266151307()
        mem[64] = _28 + ceil32(return_data.size) + (32 * mem[_28 + mem[_28 + 32]]) + 32
        mem[_28 + ceil32(return_data.size)] = _33
        require return_data.size >= _32 + (32 * _33) + 32
        u = _28 + _32 + 32
        v = _28 + ceil32(return_data.size) + 32
        t = 0
        while t < _33:
            require mem[u] == mem[u + 12 len 20]
            mem[v] = mem[u]
            u = u + 32
            v = v + 32
            t = t + 1
            continue 
        if 0 == uint8(_28 + _32 + (32 * _33) + 32):
            _44 = mem[64]
            mem[64] = mem[64] + 96
            mem[_44] = address(adapters[uint8(_28 + _32 + (32 * _33) + 32)])
            mem[_44 + 32] = _28 + ceil32(return_data.size)
            mem[_44 + 64] = _31
            u = _28 + _32 + (32 * _33) + 33
            s = _44
            continue 
        if _31 <= mem[s + 64]:
            u = _28 + _32 + (32 * _33) + 33
            s = s
            continue 
        _45 = mem[64]
        mem[64] = mem[64] + 96
        mem[_45] = address(adapters[uint8(_28 + _32 + (32 * _33) + 32)])
        mem[_45 + 32] = _28 + ceil32(return_data.size)
        mem[_45 + 64] = _31
        u = _28 + _32 + (32 * _33) + 33
        s = _45
        continue 
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[s + 12 len 20]
    _24 = mem[s + 32]
    mem[mem[64] + 64] = 96
    _25 = mem[_24]
    mem[mem[64] + 128] = mem[_24]
    idx = 0
    t = _24 + 32
    u = mem[64] + 160
    while idx < _25:
        mem[u] = mem[t + 12 len 20]
        idx = idx + 1
        t = t + 32
        u = u + 32
        continue 
    mem[mem[64] + 96] = mem[s + 64]
    return 32, mem[mem[64] + 32], 96, mem[mem[64] + 96 len (32 * _25) + 64]
}

function queryNoSplit(uint256 arg1, address arg2, address arg3, uint8[] arg4) {
    require calldata.size - 4 >= 128
    require arg2 == arg2
    require arg3 == arg3
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + (32 * arg4.length) + 36 <= calldata.size
    mem[96] = 0
    mem[128] = 96
    mem[160] = 0
    mem[64] = 288
    mem[192] = 0
    mem[224] = 96
    mem[256] = 0
    idx = 0
    s = 192
    while arg4.length > uint8(idx):
        require uint8(idx) < arg4.length
        require cd[((32 * uint8(idx)) + arg4 + 36)] == uint8(cd[((32 * uint8(idx)) + arg4 + 36)])
        require uint8(cd[((32 * uint8(idx)) + arg4 + 36)]) < adapters.length
        mem[0] = 4
        mem[mem[64]] = 0xef99893a00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = arg1
        mem[mem[64] + 36] = arg2
        mem[mem[64] + 68] = arg3
        require ext_code.size(address(adapters[uint8(cd[((32 * uint8(idx)) + arg4 + 36)])]))
        staticcall address(adapters[uint8(cd[((32 * uint8(idx)) + arg4 + 36)])]).0xef99893a with:
                gas gas_remaining wei
               args arg1, address(arg2), arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _30 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 64
        _31 = mem[_30]
        _32 = mem[_30 + 32]
        require mem[_30 + 32] <= test266151307()
        require _30 + return_data.size > _30 + mem[_30 + 32] + 31
        _33 = mem[_30 + mem[_30 + 32]]
        require mem[_30 + mem[_30 + 32]] <= test266151307()
        require (32 * mem[_30 + mem[_30 + 32]]) + 32 >= 0 and _30 + ceil32(return_data.size) + (32 * mem[_30 + mem[_30 + 32]]) + 32 <= test266151307()
        mem[64] = _30 + ceil32(return_data.size) + (32 * mem[_30 + mem[_30 + 32]]) + 32
        mem[_30 + ceil32(return_data.size)] = _33
        require return_data.size >= _32 + (32 * _33) + 32
        u = _30 + _32 + 32
        v = _30 + ceil32(return_data.size) + 32
        t = 0
        while t < _33:
            require mem[u] == mem[u + 12 len 20]
            mem[v] = mem[u]
            u = u + 32
            v = v + 32
            t = t + 1
            continue 
        if 0 == uint8(_30 + _32 + (32 * _33) + 32):
            _44 = mem[64]
            mem[64] = mem[64] + 96
            mem[_44] = address(adapters[uint8(cd[((32 * uint8(_30 + _32 + (32 * _33) + 32)) + arg4 + 36)])])
            mem[_44 + 32] = _30 + ceil32(return_data.size)
            mem[_44 + 64] = _31
            u = _30 + _32 + (32 * _33) + 33
            s = _44
            continue 
        if _31 <= mem[s + 64]:
            u = _30 + _32 + (32 * _33) + 33
            s = s
            continue 
        _45 = mem[64]
        mem[64] = mem[64] + 96
        mem[_45] = address(adapters[uint8(cd[((32 * uint8(_30 + _32 + (32 * _33) + 32)) + arg4 + 36)])])
        mem[_45 + 32] = _30 + ceil32(return_data.size)
        mem[_45 + 64] = _31
        u = _30 + _32 + (32 * _33) + 33
        s = _45
        continue 
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[s + 12 len 20]
    _22 = mem[s + 32]
    mem[mem[64] + 64] = 96
    _23 = mem[_22]
    mem[mem[64] + 128] = mem[_22]
    idx = 0
    t = _22 + 32
    u = mem[64] + 160
    while idx < _23:
        mem[u] = mem[t + 12 len 20]
        idx = idx + 1
        t = t + 32
        u = u + 32
        continue 
    mem[mem[64] + 96] = mem[s + 64]
    return 32, mem[mem[64] + 32], 96, mem[mem[64] + 96 len (32 * _23) + 64]
}

function queryAdapter(uint256 arg1, address arg2, address arg3, uint8 arg4) {
    require calldata.size - 4 >= 128
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg4 < adapters.length
    mem[0] = 4
    mem[96] = 0xef99893a00000000000000000000000000000000000000000000000000000000
    mem[100] = arg1
    mem[132] = arg2
    mem[164] = arg3
    require ext_code.size(address(adapters[arg4]))
    staticcall address(adapters[arg4]).0xef99893a with:
            gas gas_remaining wei
           args arg1, address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 64
    _5 = mem[96 len 4], Mask(224, 32, arg1) >> 32
    require uint32(arg1), address(arg2) << 64 <= test266151307()
    require return_data.size + 96 > uint32(arg1), address(arg2) << 64 + 127
    _7 = mem[uint32(arg1), address(arg2) << 64 + 96]
    require mem[uint32(arg1), address(arg2) << 64 + 96] <= test266151307()
    require (32 * mem[uint32(arg1), address(arg2) << 64 + 96]) + 32 >= 0 and ceil32(return_data.size) + (32 * mem[uint32(arg1), address(arg2) << 64 + 96]) + 128 <= test266151307()
    mem[64] = ceil32(return_data.size) + (32 * mem[uint32(arg1), address(arg2) << 64 + 96]) + 128
    mem[ceil32(return_data.size) + 96] = _7
    require return_data.size >= uint32(arg1), address(arg2) << 64 + (32 * _7) + 32
    s = uint32(arg1), address(arg2) << 64 + 128
    t = ceil32(return_data.size) + 128
    idx = 0
    while idx < _7:
        require mem[s] == mem[s + 12 len 20]
        mem[t] = mem[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    mem[mem[64]] = 0x6fdde0300000000000000000000000000000000000000000000000000000000
    require ext_code.size(address(adapters[arg4]))
    staticcall address(adapters[arg4]).name() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _38 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _39 = mem[_38]
    require mem[_38] <= test266151307()
    require _38 + mem[_38] + 31 < _38 + return_data.size
    _40 = mem[_38 + mem[_38]]
    require mem[_38 + mem[_38]] <= test266151307()
    require ceil32(mem[_38 + mem[_38]]) + 32 >= 0 and _38 + ceil32(return_data.size) + ceil32(mem[_38 + mem[_38]]) + 32 <= test266151307()
    mem[64] = _38 + ceil32(return_data.size) + ceil32(mem[_38 + mem[_38]]) + 32
    mem[_38 + ceil32(return_data.size)] = _40
    require _39 + _40 + 32 <= return_data.size
    mem[_38 + ceil32(return_data.size) + 32 len ceil32(_40)] = mem[_38 + _39 + 32 len ceil32(_40)]
    if ceil32(_40) <= _40:
        _62 = mem[64]
        mem[mem[64]] = 96
        mem[mem[64] + 96] = _40
        mem[mem[64] + 128 len ceil32(_40)] = mem[_38 + ceil32(return_data.size) + 32 len ceil32(_40)]
        if ceil32(_40) > _40:
            mem[_40 + mem[64] + 128] = 0
        mem[mem[64] + 32] = _5
        mem[_62 + 64] = ceil32(_40) + 128
        mem[ceil32(_40) + _62 + 128] = _7
        idx = 0
        s = ceil32(return_data.size) + 128
        t = ceil32(_40) + _62 + 160
        while idx < _7:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len ceil32(_40) + _62 + (32 * _7) + -mem[64] + 160
    mem[_40 + _38 + ceil32(return_data.size) + 32] = 0
    _63 = mem[64]
    mem[mem[64]] = 96
    mem[mem[64] + 96] = _40
    mem[mem[64] + 128 len ceil32(_40)] = mem[_38 + ceil32(return_data.size) + 32 len ceil32(_40)]
    if ceil32(_40) > _40:
        mem[_40 + mem[64] + 128] = 0
    mem[mem[64] + 32] = _5
    mem[_63 + 64] = ceil32(_40) + 128
    mem[ceil32(_40) + _63 + 128] = _7
    idx = 0
    s = ceil32(return_data.size) + 128
    t = ceil32(_40) + _63 + 160
    while idx < _7:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len ceil32(_40) + _63 + (32 * _7) + -mem[64] + 160
}

function sub_0affd35b(?) {
    require calldata.size - 4 >= 128
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require (32 * ('cd', 4).length) + 128 >= 96 and (32 * ('cd', 4).length) + 128 <= test266151307()
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    s = cd[4] + 36
    t = 128
    idx = 0
    while idx < ('cd', 4).length:
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require (32 * ('cd', 36).length) + 160 >= 128 and (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160 <= test266151307()
    mem[(32 * ('cd', 4).length) + 128] = ('cd', 36).length
    require calldata.size >= cd[36] + (32 * ('cd', 36).length) + 36
    idx = 0
    s = cd[36] + 36
    t = (32 * ('cd', 4).length) + 160
    while idx < ('cd', 36).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require (32 * ('cd', 68).length) + 192 >= 160 and (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192 <= test266151307()
    mem[64] = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192
    mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160] = ('cd', 68).length
    require calldata.size >= cd[68] + (32 * ('cd', 68).length) + 36
    idx = 0
    s = cd[68] + 36
    t = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192
    while idx < ('cd', 68).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    idx = 0
    s = 0
    t = 0
    while idx < ('cd', 36).length:
        if idx >= mem[(32 * ('cd', 4).length) + 128] - 1:
            require idx < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
            _313 = mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
            require idx < mem[(32 * ('cd', 4).length) + 128]
            _317 = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
            if not mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 204 len 20]:
                require idx + 1 < mem[96]
                _330 = mem[(32 * idx + 1) + 128]
                require sub_d4840641
                require idx < mem[(32 * ('cd', 4).length) + 128]
                _338 = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
                _342 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                mem[_342 + 32 len 64] = call.data[calldata.size len 64]
                s = idx
                while s < idx + 2:
                    require s < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
                    require s - idx < mem[_342]
                    mem[(32 * s - idx) + _342 + 32] = mem[(32 * s) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 204 len 20]
                    s = s + 1
                    continue 
                mem[mem[64]] = 0xe11c762f00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = eth.balance(_317)
                mem[mem[64] + 36] = 128
                _405 = mem[_342]
                mem[mem[64] + 132] = mem[_342]
                s = 0
                t = _342 + 32
                u = mem[64] + 164
                while s < _405:
                    mem[u] = mem[t + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[mem[64] + 68] = (sub_d4840641 * _330) - (cd[100] * _330) / sub_d4840641
                mem[mem[64] + 100] = this.address
                require ext_code.size(address(_338))
                call address(_338).0xe11c762f with:
                     gas gas_remaining wei
                    args eth.balance(_317), 128, (sub_d4840641 * _330) - (cd[100] * _330) / sub_d4840641, address(this.address), mem[mem[64] + 132 len (32 * _405) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                s = _330
                t = (sub_d4840641 * _330) - (cd[100] * _330) / sub_d4840641
                continue 
            mem[mem[64] + 4] = mem[(32 * idx) + (32 * ('cd', 4).length) + 172 len 20]
            require ext_code.size(address(_313))
            staticcall address(_313).balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args address(_317)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _334 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _340 = mem[_334]
            require idx + 1 < mem[96]
            _348 = mem[(32 * idx + 1) + 128]
            require sub_d4840641
            require idx < mem[(32 * ('cd', 4).length) + 128]
            _356 = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
            _364 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            mem[_364 + 32 len 64] = call.data[calldata.size len 64]
            s = s
            while s < s + 2:
                require s < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
                require 0 < mem[_364]
                mem[_364 + 32] = mem[(32 * s) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 204 len 20]
                s = s + 1
                continue 
            mem[mem[64]] = 0xe11c762f00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _340
            mem[mem[64] + 36] = 128
            _404 = mem[_364]
            mem[mem[64] + 132] = mem[_364]
            idx = 0
            t = _364 + 32
            u = mem[64] + 164
            while idx < _404:
                mem[u] = mem[t + 12 len 20]
                idx = idx + 1
                t = t + 32
                u = u + 32
                continue 
            mem[mem[64] + 68] = (sub_d4840641 * _348) - (cd[100] * _348) / sub_d4840641
            mem[mem[64] + 100] = this.address
            require ext_code.size(address(_356))
            call address(_356).0xe11c762f with:
                 gas gas_remaining wei
                args _340, 128, (sub_d4840641 * _348) - (cd[100] * _348) / sub_d4840641, address(this.address), mem[mem[64] + 132 len (32 * _404) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            s = s + 1
            s = _348
            t = (sub_d4840641 * _348) - (cd[100] * _348) / sub_d4840641
            continue 
        require idx + 1 < mem[(32 * ('cd', 4).length) + 128]
        _309 = mem[(32 * idx + 1) + (32 * ('cd', 4).length) + 160]
        require idx < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
        _315 = mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
        require idx < mem[(32 * ('cd', 4).length) + 128]
        _319 = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
        if not mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 204 len 20]:
            require idx + 1 < mem[96]
            _333 = mem[(32 * idx + 1) + 128]
            require sub_d4840641
            require idx < mem[(32 * ('cd', 4).length) + 128]
            _339 = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
            _343 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            mem[_343 + 32 len 64] = call.data[calldata.size len 64]
            s = idx
            while s < idx + 2:
                require s < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
                require s - idx < mem[_343]
                mem[(32 * s - idx) + _343 + 32] = mem[(32 * s) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 204 len 20]
                s = s + 1
                continue 
            _393 = mem[64]
            mem[mem[64]] = 0xe11c762f00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = eth.balance(_319)
            mem[mem[64] + 36] = 128
            _403 = mem[_343]
            mem[mem[64] + 132] = mem[_343]
            s = 0
            t = _343 + 32
            u = mem[64] + 164
            while s < _403:
                mem[u] = mem[t + 12 len 20]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            mem[_393 + 68] = (sub_d4840641 * _333) - (cd[100] * _333) / sub_d4840641
            mem[_393 + 100] = address(_309)
            require ext_code.size(address(_339))
            call address(_339).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _393 + (32 * _403) + -mem[64] + 160]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            s = _333
            t = (sub_d4840641 * _333) - (cd[100] * _333) / sub_d4840641
            continue 
        mem[mem[64] + 4] = mem[(32 * idx) + (32 * ('cd', 4).length) + 172 len 20]
        require ext_code.size(address(_315))
        staticcall address(_315).balanceOf(address rg1) with:
                gas gas_remaining wei
               args address(_319)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _336 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _341 = mem[_336]
        require idx + 1 < mem[96]
        _351 = mem[(32 * idx + 1) + 128]
        require sub_d4840641
        require idx < mem[(32 * ('cd', 4).length) + 128]
        _360 = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
        _366 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        mem[_366 + 32 len 64] = call.data[calldata.size len 64]
        s = idx
        while s < idx + 2:
            require s < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
            require s - idx < mem[_366]
            mem[(32 * s - idx) + _366 + 32] = mem[(32 * s) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 204 len 20]
            s = s + 1
            continue 
        mem[mem[64]] = 0xe11c762f00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _341
        mem[mem[64] + 36] = 128
        _402 = mem[_366]
        mem[mem[64] + 132] = mem[_366]
        s = 0
        t = _366 + 32
        u = mem[64] + 164
        while s < _402:
            mem[u] = mem[t + 12 len 20]
            s = s + 1
            t = t + 32
            u = u + 32
            continue 
        mem[mem[64] + 68] = (sub_d4840641 * _351) - (cd[100] * _351) / sub_d4840641
        mem[mem[64] + 100] = address(_309)
        require ext_code.size(address(_360))
        call address(_360).0xe11c762f with:
             gas gas_remaining wei
            args _341, 128, (sub_d4840641 * _351) - (cd[100] * _351) / sub_d4840641, address(_309), mem[mem[64] + 132 len (32 * _402) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        s = _351
        t = (sub_d4840641 * _351) - (cd[100] * _351) / sub_d4840641
        continue 
    require mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160] - 1 < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
    _307 = mem[(32 * mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160] - 1) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
    if not mem[(32 * mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160] - 1) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 204 len 20]:
        if eth.balance(this.address) < s:
            return eth.balance(this.address)
        return s
    mem[mem[64] + 4] = this.address
    require ext_code.size(address(_307))
    staticcall address(_307).balanceOf(address rg1) with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _321 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    if mem[_321] >= s:
        return s
    mem[mem[64]] = mem[_321]
    return memory
      from mem[64]
       len 32
}

function sub_d088df22(?) {
    require calldata.size - 4 >= 128
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require (32 * ('cd', 4).length) + 128 >= 96 and (32 * ('cd', 4).length) + 128 <= test266151307()
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    s = cd[4] + 36
    t = 128
    idx = 0
    while idx < ('cd', 4).length:
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require (32 * ('cd', 36).length) + 160 >= 128 and (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160 <= test266151307()
    mem[(32 * ('cd', 4).length) + 128] = ('cd', 36).length
    require calldata.size >= cd[36] + (32 * ('cd', 36).length) + 36
    idx = 0
    s = cd[36] + 36
    t = (32 * ('cd', 4).length) + 160
    while idx < ('cd', 36).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require (32 * ('cd', 68).length) + 192 >= 160 and (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192 <= test266151307()
    mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160] = ('cd', 68).length
    require calldata.size >= cd[68] + (32 * ('cd', 68).length) + 36
    idx = 0
    s = cd[68] + 36
    t = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192
    while idx < ('cd', 68).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ('cd', 68).length - 1 < ('cd', 68).length
    if mem[(32 * ('cd', 68).length - 1) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 204 len 20] != 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
        revert with 0, 'Path needs to end with WAVAX'
    require 0 < ('cd', 68).length
    _270 = mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
    require 0 < ('cd', 36).length
    require 0 < ('cd', 4).length
    mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 196] = msg.sender
    mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 228] = mem[(32 * ('cd', 4).length) + 172 len 20]
    mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 260] = mem[128]
    require ext_code.size(address(_270))
    call address(_270).transferFrom(address rg1, address rg2, uint256 rg3) with:
         gas gas_remaining wei
        args msg.sender, address(mem[(32 * ('cd', 4).length) + 160]), mem[128]
    mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + ceil32(return_data.size) + 192
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    idx = 0
    s = 0
    t = 0
    while idx < ('cd', 36).length:
        if idx >= mem[(32 * ('cd', 4).length) + 128] - 1:
            require idx < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
            _389 = mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
            require idx < mem[(32 * ('cd', 4).length) + 128]
            _393 = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
            if not mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 204 len 20]:
                require idx + 1 < mem[96]
                _404 = mem[(32 * idx + 1) + 128]
                require sub_d4840641
                require idx < mem[(32 * ('cd', 4).length) + 128]
                _410 = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
                _416 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                mem[_416 + 32 len 64] = call.data[calldata.size len 64]
                s = idx
                while s < idx + 2:
                    require s < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
                    require s - idx < mem[_416]
                    mem[(32 * s - idx) + _416 + 32] = mem[(32 * s) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 204 len 20]
                    s = s + 1
                    continue 
                mem[mem[64]] = 0xe11c762f00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = eth.balance(_393)
                mem[mem[64] + 36] = 128
                _485 = mem[_416]
                mem[mem[64] + 132] = mem[_416]
                s = 0
                t = _416 + 32
                u = mem[64] + 164
                while s < _485:
                    mem[u] = mem[t + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[mem[64] + 68] = (sub_d4840641 * _404) - (cd[100] * _404) / sub_d4840641
                mem[mem[64] + 100] = this.address
                require ext_code.size(address(_410))
                call address(_410).0xe11c762f with:
                     gas gas_remaining wei
                    args eth.balance(_393), 128, (sub_d4840641 * _404) - (cd[100] * _404) / sub_d4840641, address(this.address), mem[mem[64] + 132 len (32 * _485) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                s = _404
                t = (sub_d4840641 * _404) - (cd[100] * _404) / sub_d4840641
                continue 
            mem[mem[64] + 4] = mem[(32 * idx) + (32 * ('cd', 4).length) + 172 len 20]
            require ext_code.size(address(_389))
            staticcall address(_389).balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args address(_393)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _406 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _414 = mem[_406]
            require idx + 1 < mem[96]
            _422 = mem[(32 * idx + 1) + 128]
            require sub_d4840641
            require idx < mem[(32 * ('cd', 4).length) + 128]
            _430 = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
            _440 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            mem[_440 + 32 len 64] = call.data[calldata.size len 64]
            s = s
            while s < s + 2:
                require s < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
                require 0 < mem[_440]
                mem[_440 + 32] = mem[(32 * s) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 204 len 20]
                s = s + 1
                continue 
            mem[mem[64]] = 0xe11c762f00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _414
            mem[mem[64] + 36] = 128
            _484 = mem[_440]
            mem[mem[64] + 132] = mem[_440]
            idx = 0
            t = _440 + 32
            u = mem[64] + 164
            while idx < _484:
                mem[u] = mem[t + 12 len 20]
                idx = idx + 1
                t = t + 32
                u = u + 32
                continue 
            mem[mem[64] + 68] = (sub_d4840641 * _422) - (cd[100] * _422) / sub_d4840641
            mem[mem[64] + 100] = this.address
            require ext_code.size(address(_430))
            call address(_430).0xe11c762f with:
                 gas gas_remaining wei
                args _414, 128, (sub_d4840641 * _422) - (cd[100] * _422) / sub_d4840641, address(this.address), mem[mem[64] + 132 len (32 * _484) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            s = s + 1
            s = _422
            t = (sub_d4840641 * _422) - (cd[100] * _422) / sub_d4840641
            continue 
        require idx + 1 < mem[(32 * ('cd', 4).length) + 128]
        _385 = mem[(32 * idx + 1) + (32 * ('cd', 4).length) + 160]
        require idx < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
        _391 = mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
        require idx < mem[(32 * ('cd', 4).length) + 128]
        _395 = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
        if not mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 204 len 20]:
            require idx + 1 < mem[96]
            _405 = mem[(32 * idx + 1) + 128]
            require sub_d4840641
            require idx < mem[(32 * ('cd', 4).length) + 128]
            _413 = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
            _419 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            mem[_419 + 32 len 64] = call.data[calldata.size len 64]
            s = idx
            while s < idx + 2:
                require s < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
                require s - idx < mem[_419]
                mem[(32 * s - idx) + _419 + 32] = mem[(32 * s) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 204 len 20]
                s = s + 1
                continue 
            mem[mem[64]] = 0xe11c762f00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = eth.balance(_395)
            mem[mem[64] + 36] = 128
            _483 = mem[_419]
            mem[mem[64] + 132] = mem[_419]
            s = 0
            t = _419 + 32
            u = mem[64] + 164
            while s < _483:
                mem[u] = mem[t + 12 len 20]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            mem[mem[64] + 68] = (sub_d4840641 * _405) - (cd[100] * _405) / sub_d4840641
            mem[mem[64] + 100] = address(_385)
            require ext_code.size(address(_413))
            call address(_413).0xe11c762f with:
                 gas gas_remaining wei
                args eth.balance(_395), 128, (sub_d4840641 * _405) - (cd[100] * _405) / sub_d4840641, address(_385), mem[mem[64] + 132 len (32 * _483) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            s = _405
            t = (sub_d4840641 * _405) - (cd[100] * _405) / sub_d4840641
            continue 
        mem[mem[64] + 4] = mem[(32 * idx) + (32 * ('cd', 4).length) + 172 len 20]
        require ext_code.size(address(_391))
        staticcall address(_391).balanceOf(address rg1) with:
                gas gas_remaining wei
               args address(_395)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _408 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _415 = mem[_408]
        require idx + 1 < mem[96]
        _425 = mem[(32 * idx + 1) + 128]
        require sub_d4840641
        require idx < mem[(32 * ('cd', 4).length) + 128]
        _436 = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
        _444 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        mem[_444 + 32 len 64] = call.data[calldata.size len 64]
        s = idx
        while s < idx + 2:
            require s < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
            require s - idx < mem[_444]
            mem[(32 * s - idx) + _444 + 32] = mem[(32 * s) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 204 len 20]
            s = s + 1
            continue 
        mem[mem[64]] = 0xe11c762f00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _415
        mem[mem[64] + 36] = 128
        _482 = mem[_444]
        mem[mem[64] + 132] = mem[_444]
        s = 0
        t = _444 + 32
        u = mem[64] + 164
        while s < _482:
            mem[u] = mem[t + 12 len 20]
            s = s + 1
            t = t + 32
            u = u + 32
            continue 
        mem[mem[64] + 68] = (sub_d4840641 * _425) - (cd[100] * _425) / sub_d4840641
        mem[mem[64] + 100] = address(_385)
        require ext_code.size(address(_436))
        call address(_436).0xe11c762f with:
             gas gas_remaining wei
            args _415, 128, (sub_d4840641 * _425) - (cd[100] * _425) / sub_d4840641, address(_385), mem[mem[64] + 132 len (32 * _482) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        s = _425
        t = (sub_d4840641 * _425) - (cd[100] * _425) / sub_d4840641
        continue 
    require mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160] - 1 < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
    _383 = mem[(32 * mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160] - 1) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
    if not mem[(32 * mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160] - 1) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 204 len 20]:
        if eth.balance(this.address) < s:
            if this.address != msg.sender:
                require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.withdraw(uint256 rg1) with:
                     gas gas_remaining wei
                    args eth.balance(this.address)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                call msg.sender with:
                   value eth.balance(this.address) wei
                     gas 2300 * is_zero(value) wei
        else:
            if this.address != msg.sender:
                require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.withdraw(uint256 rg1) with:
                     gas gas_remaining wei
                    args s
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                call msg.sender with:
                   value s wei
                     gas 2300 * is_zero(value) wei
    else:
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(_383))
        staticcall address(_383).balanceOf(address rg1) with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _397 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_397] < s:
            if this.address != msg.sender:
                require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.withdraw(uint256 rg1) with:
                     gas gas_remaining wei
                    args mem[_397]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                call msg.sender with:
                   value mem[_397] wei
                     gas 2300 * is_zero(value) wei
        else:
            if this.address != msg.sender:
                require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.withdraw(uint256 rg1) with:
                     gas gas_remaining wei
                    args s
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                call msg.sender with:
                   value s wei
                     gas 2300 * is_zero(value) wei
}

function sub_ef781986(?) {
    require calldata.size - 4 >= 128
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require (32 * ('cd', 4).length) + 128 >= 96 and (32 * ('cd', 4).length) + 128 <= test266151307()
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    s = cd[4] + 36
    t = 128
    idx = 0
    while idx < ('cd', 4).length:
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require (32 * ('cd', 36).length) + 160 >= 128 and (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160 <= test266151307()
    mem[(32 * ('cd', 4).length) + 128] = ('cd', 36).length
    require calldata.size >= cd[36] + (32 * ('cd', 36).length) + 36
    idx = 0
    s = cd[36] + 36
    t = (32 * ('cd', 4).length) + 160
    while idx < ('cd', 36).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require (32 * ('cd', 68).length) + 192 >= 160 and (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192 <= test266151307()
    mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160] = ('cd', 68).length
    require calldata.size >= cd[68] + (32 * ('cd', 68).length) + 36
    idx = 0
    s = cd[68] + 36
    t = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192
    while idx < ('cd', 68).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require 0 < ('cd', 68).length
    _359 = mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
    require 0 < ('cd', 36).length
    require 0 < ('cd', 4).length
    mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 196] = msg.sender
    mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 228] = mem[(32 * ('cd', 4).length) + 172 len 20]
    mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 260] = mem[128]
    require ext_code.size(address(_359))
    call address(_359).transferFrom(address rg1, address rg2, uint256 rg3) with:
         gas gas_remaining wei
        args msg.sender, address(mem[(32 * ('cd', 4).length) + 160]), mem[128]
    mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + ceil32(return_data.size) + 192
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    idx = 0
    s = 0
    t = 0
    while idx < ('cd', 36).length:
        if idx >= mem[(32 * ('cd', 4).length) + 128] - 1:
            require idx < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
            _513 = mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
            require idx < mem[(32 * ('cd', 4).length) + 128]
            _517 = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
            if not mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 204 len 20]:
                require idx + 1 < mem[96]
                _534 = mem[(32 * idx + 1) + 128]
                require sub_d4840641
                require idx < mem[(32 * ('cd', 4).length) + 128]
                _540 = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
                _548 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                mem[_548 + 32 len 64] = call.data[calldata.size len 64]
                s = idx
                while s < idx + 2:
                    require s < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
                    require s - idx < mem[_548]
                    mem[(32 * s - idx) + _548 + 32] = mem[(32 * s) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 204 len 20]
                    s = s + 1
                    continue 
                mem[mem[64]] = 0xe11c762f00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = eth.balance(_517)
                mem[mem[64] + 36] = 128
                _645 = mem[_548]
                mem[mem[64] + 132] = mem[_548]
                s = 0
                t = _548 + 32
                u = mem[64] + 164
                while s < _645:
                    mem[u] = mem[t + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[mem[64] + 68] = (sub_d4840641 * _534) - (cd[100] * _534) / sub_d4840641
                mem[mem[64] + 100] = this.address
                require ext_code.size(address(_540))
                call address(_540).0xe11c762f with:
                     gas gas_remaining wei
                    args eth.balance(_517), 128, (sub_d4840641 * _534) - (cd[100] * _534) / sub_d4840641, address(this.address), mem[mem[64] + 132 len (32 * _645) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                s = _534
                t = (sub_d4840641 * _534) - (cd[100] * _534) / sub_d4840641
                continue 
            mem[mem[64] + 4] = mem[(32 * idx) + (32 * ('cd', 4).length) + 172 len 20]
            require ext_code.size(address(_513))
            staticcall address(_513).balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args address(_517)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _536 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _544 = mem[_536]
            require idx + 1 < mem[96]
            _564 = mem[(32 * idx + 1) + 128]
            require sub_d4840641
            require idx < mem[(32 * ('cd', 4).length) + 128]
            _574 = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
            _586 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            mem[_586 + 32 len 64] = call.data[calldata.size len 64]
            s = s
            while s < s + 2:
                require s < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
                require 0 < mem[_586]
                mem[_586 + 32] = mem[(32 * s) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 204 len 20]
                s = s + 1
                continue 
            mem[mem[64]] = 0xe11c762f00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _544
            mem[mem[64] + 36] = 128
            _644 = mem[_586]
            mem[mem[64] + 132] = mem[_586]
            idx = 0
            t = _586 + 32
            u = mem[64] + 164
            while idx < _644:
                mem[u] = mem[t + 12 len 20]
                idx = idx + 1
                t = t + 32
                u = u + 32
                continue 
            mem[mem[64] + 68] = (sub_d4840641 * _564) - (cd[100] * _564) / sub_d4840641
            mem[mem[64] + 100] = this.address
            require ext_code.size(address(_574))
            call address(_574).0xe11c762f with:
                 gas gas_remaining wei
                args _544, 128, (sub_d4840641 * _564) - (cd[100] * _564) / sub_d4840641, address(this.address), mem[mem[64] + 132 len (32 * _644) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            s = s + 1
            s = _564
            t = (sub_d4840641 * _564) - (cd[100] * _564) / sub_d4840641
            continue 
        require idx + 1 < mem[(32 * ('cd', 4).length) + 128]
        _509 = mem[(32 * idx + 1) + (32 * ('cd', 4).length) + 160]
        require idx < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
        _515 = mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
        require idx < mem[(32 * ('cd', 4).length) + 128]
        _519 = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
        if not mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 204 len 20]:
            require idx + 1 < mem[96]
            _535 = mem[(32 * idx + 1) + 128]
            require sub_d4840641
            require idx < mem[(32 * ('cd', 4).length) + 128]
            _543 = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
            _551 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            mem[_551 + 32 len 64] = call.data[calldata.size len 64]
            s = idx
            while s < idx + 2:
                require s < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
                require s - idx < mem[_551]
                mem[(32 * s - idx) + _551 + 32] = mem[(32 * s) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 204 len 20]
                s = s + 1
                continue 
            mem[mem[64]] = 0xe11c762f00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = eth.balance(_519)
            mem[mem[64] + 36] = 128
            _643 = mem[_551]
            mem[mem[64] + 132] = mem[_551]
            s = 0
            t = _551 + 32
            u = mem[64] + 164
            while s < _643:
                mem[u] = mem[t + 12 len 20]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            mem[mem[64] + 68] = (sub_d4840641 * _535) - (cd[100] * _535) / sub_d4840641
            mem[mem[64] + 100] = address(_509)
            require ext_code.size(address(_543))
            call address(_543).0xe11c762f with:
                 gas gas_remaining wei
                args eth.balance(_519), 128, (sub_d4840641 * _535) - (cd[100] * _535) / sub_d4840641, address(_509), mem[mem[64] + 132 len (32 * _643) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            s = _535
            t = (sub_d4840641 * _535) - (cd[100] * _535) / sub_d4840641
            continue 
        mem[mem[64] + 4] = mem[(32 * idx) + (32 * ('cd', 4).length) + 172 len 20]
        require ext_code.size(address(_515))
        staticcall address(_515).balanceOf(address rg1) with:
                gas gas_remaining wei
               args address(_519)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _538 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _547 = mem[_538]
        require idx + 1 < mem[96]
        _565 = mem[(32 * idx + 1) + 128]
        require sub_d4840641
        require idx < mem[(32 * ('cd', 4).length) + 128]
        _580 = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
        _592 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        mem[_592 + 32 len 64] = call.data[calldata.size len 64]
        s = idx
        while s < idx + 2:
            require s < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
            require s - idx < mem[_592]
            mem[(32 * s - idx) + _592 + 32] = mem[(32 * s) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 204 len 20]
            s = s + 1
            continue 
        mem[mem[64]] = 0xe11c762f00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _547
        mem[mem[64] + 36] = 128
        _642 = mem[_592]
        mem[mem[64] + 132] = mem[_592]
        s = 0
        t = _592 + 32
        u = mem[64] + 164
        while s < _642:
            mem[u] = mem[t + 12 len 20]
            s = s + 1
            t = t + 32
            u = u + 32
            continue 
        mem[mem[64] + 68] = (sub_d4840641 * _565) - (cd[100] * _565) / sub_d4840641
        mem[mem[64] + 100] = address(_509)
        require ext_code.size(address(_580))
        call address(_580).0xe11c762f with:
             gas gas_remaining wei
            args _547, 128, (sub_d4840641 * _565) - (cd[100] * _565) / sub_d4840641, address(_509), mem[mem[64] + 132 len (32 * _642) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        s = _565
        t = (sub_d4840641 * _565) - (cd[100] * _565) / sub_d4840641
        continue 
    require mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160] - 1 < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
    _507 = mem[(32 * mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160] - 1) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
    if not mem[(32 * mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160] - 1) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 204 len 20]:
        require mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160] - 1 < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
        if eth.balance(this.address) < s:
            _530 = mem[(32 * mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160] - 1) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
            if this.address != msg.sender:
                if not mem[(32 * mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160] - 1) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 204 len 20]:
                    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.withdraw(uint256 rg1) with:
                         gas gas_remaining wei
                        args eth.balance(this.address)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call msg.sender with:
                       value eth.balance(this.address) wei
                         gas 2300 * is_zero(value) wei
                else:
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = eth.balance(this.address)
                    require ext_code.size(address(_530))
                    call address(_530).transfer(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args msg.sender, eth.balance(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _561 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_561] == bool(mem[_561])
                    if not mem[_561]:
                        revert with 0, 'YakAdapter::_return, token'
        else:
            _531 = mem[(32 * mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160] - 1) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
            if this.address != msg.sender:
                if not mem[(32 * mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160] - 1) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 204 len 20]:
                    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.withdraw(uint256 rg1) with:
                         gas gas_remaining wei
                        args s
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call msg.sender with:
                       value s wei
                         gas 2300 * is_zero(value) wei
                else:
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = s
                    require ext_code.size(address(_531))
                    call address(_531).transfer(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args msg.sender, s
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _562 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_562] == bool(mem[_562])
                    if not mem[_562]:
                        revert with 0, 'YakAdapter::_return, token'
    else:
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(_507))
        staticcall address(_507).balanceOf(address rg1) with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _521 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _529 = mem[_521]
        require mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160] - 1 < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
        if mem[_521] < s:
            _559 = mem[(32 * mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160] - 1) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
            if this.address != msg.sender:
                if not mem[(32 * mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160] - 1) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 204 len 20]:
                    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.withdraw(uint256 rg1) with:
                         gas gas_remaining wei
                        args mem[_521]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call msg.sender with:
                       value mem[_521] wei
                         gas 2300 * is_zero(value) wei
                else:
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _529
                    require ext_code.size(address(_559))
                    call address(_559).transfer(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args msg.sender, _529
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _597 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_597] == bool(mem[_597])
                    if not mem[_597]:
                        revert with 0, 'YakAdapter::_return, token'
        else:
            _560 = mem[(32 * mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160] - 1) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
            if this.address != msg.sender:
                if not mem[(32 * mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160] - 1) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 204 len 20]:
                    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.withdraw(uint256 rg1) with:
                         gas gas_remaining wei
                        args s
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call msg.sender with:
                       value s wei
                         gas 2300 * is_zero(value) wei
                else:
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = s
                    require ext_code.size(address(_560))
                    call address(_560).transfer(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args msg.sender, s
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _598 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_598] == bool(mem[_598])
                    if not mem[_598]:
                        revert with 0, 'YakAdapter::_return, token'
}

function sub_41da5b60(?) payable {
    require calldata.size - 4 >= 128
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require (32 * ('cd', 4).length) + 128 >= 96 and (32 * ('cd', 4).length) + 128 <= test266151307()
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    s = cd[4] + 36
    t = 128
    idx = 0
    while idx < ('cd', 4).length:
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require (32 * ('cd', 36).length) + 160 >= 128 and (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160 <= test266151307()
    mem[(32 * ('cd', 4).length) + 128] = ('cd', 36).length
    require calldata.size >= cd[36] + (32 * ('cd', 36).length) + 36
    idx = 0
    s = cd[36] + 36
    t = (32 * ('cd', 4).length) + 160
    while idx < ('cd', 36).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require (32 * ('cd', 68).length) + 192 >= 160 and (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192 <= test266151307()
    mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160] = ('cd', 68).length
    require calldata.size >= cd[68] + (32 * ('cd', 68).length) + 36
    idx = 0
    s = cd[68] + 36
    t = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192
    while idx < ('cd', 68).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require 0 < ('cd', 68).length
    if mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 204 len 20] != 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
        revert with 0, 'Path needs to begin with WAVAX'
    require 0 < ('cd', 4).length
    mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] = 0xd0e30db000000000000000000000000000000000000000000000000000000000
    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.deposit() with:
       value mem[128] wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require 0 < ('cd', 68).length
    _391 = mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
    require 0 < ('cd', 36).length
    require 0 < ('cd', 4).length
    mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 196] = this.address
    mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 228] = mem[(32 * ('cd', 4).length) + 172 len 20]
    mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 260] = mem[128]
    require ext_code.size(address(_391))
    call address(_391).transferFrom(address rg1, address rg2, uint256 rg3) with:
         gas gas_remaining wei
        args address(this.address), address(mem[(32 * ('cd', 4).length) + 160]), mem[128]
    mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + ceil32(return_data.size) + 192
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    idx = 0
    s = 0
    t = 0
    while idx < ('cd', 36).length:
        if idx >= mem[(32 * ('cd', 4).length) + 128] - 1:
            require idx < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
            _545 = mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
            require idx < mem[(32 * ('cd', 4).length) + 128]
            _549 = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
            if not mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 204 len 20]:
                require idx + 1 < mem[96]
                _566 = mem[(32 * idx + 1) + 128]
                require sub_d4840641
                require idx < mem[(32 * ('cd', 4).length) + 128]
                _572 = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
                _580 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                mem[_580 + 32 len 64] = call.data[calldata.size len 64]
                s = idx
                while s < idx + 2:
                    require s < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
                    require s - idx < mem[_580]
                    mem[(32 * s - idx) + _580 + 32] = mem[(32 * s) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 204 len 20]
                    s = s + 1
                    continue 
                _671 = mem[64]
                mem[mem[64]] = 0xe11c762f00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = eth.balance(_549)
                mem[mem[64] + 36] = 128
                _677 = mem[_580]
                mem[mem[64] + 132] = mem[_580]
                s = 0
                t = _580 + 32
                u = mem[64] + 164
                while s < _677:
                    mem[u] = mem[t + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[_671 + 68] = (sub_d4840641 * _566) - (cd[100] * _566) / sub_d4840641
                mem[_671 + 100] = this.address
                require ext_code.size(address(_572))
                call address(_572).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _671 + (32 * _677) + -mem[64] + 160]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                s = _566
                t = (sub_d4840641 * _566) - (cd[100] * _566) / sub_d4840641
                continue 
            mem[mem[64] + 4] = mem[(32 * idx) + (32 * ('cd', 4).length) + 172 len 20]
            require ext_code.size(address(_545))
            staticcall address(_545).balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args address(_549)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _568 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _576 = mem[_568]
            require idx + 1 < mem[96]
            _596 = mem[(32 * idx + 1) + 128]
            require sub_d4840641
            require idx < mem[(32 * ('cd', 4).length) + 128]
            _606 = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
            _618 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            mem[_618 + 32 len 64] = call.data[calldata.size len 64]
            s = s
            while s < s + 2:
                require s < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
                require 0 < mem[_618]
                mem[_618 + 32] = mem[(32 * s) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 204 len 20]
                s = s + 1
                continue 
            _668 = mem[64]
            mem[mem[64]] = 0xe11c762f00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _576
            mem[mem[64] + 36] = 128
            _676 = mem[_618]
            mem[mem[64] + 132] = mem[_618]
            idx = 0
            t = _618 + 32
            u = mem[64] + 164
            while idx < _676:
                mem[u] = mem[t + 12 len 20]
                idx = idx + 1
                t = t + 32
                u = u + 32
                continue 
            mem[_668 + 68] = (sub_d4840641 * _596) - (cd[100] * _596) / sub_d4840641
            mem[_668 + 100] = this.address
            require ext_code.size(address(_606))
            call address(_606).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _668 + (32 * _676) + -mem[64] + 160]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            s = s + 1
            s = _596
            t = (sub_d4840641 * _596) - (cd[100] * _596) / sub_d4840641
            continue 
        require idx + 1 < mem[(32 * ('cd', 4).length) + 128]
        _541 = mem[(32 * idx + 1) + (32 * ('cd', 4).length) + 160]
        require idx < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
        _547 = mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
        require idx < mem[(32 * ('cd', 4).length) + 128]
        _551 = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
        if not mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 204 len 20]:
            require idx + 1 < mem[96]
            _567 = mem[(32 * idx + 1) + 128]
            require sub_d4840641
            require idx < mem[(32 * ('cd', 4).length) + 128]
            _575 = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
            _583 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            mem[_583 + 32 len 64] = call.data[calldata.size len 64]
            s = idx
            while s < idx + 2:
                require s < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
                require s - idx < mem[_583]
                mem[(32 * s - idx) + _583 + 32] = mem[(32 * s) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 204 len 20]
                s = s + 1
                continue 
            mem[mem[64]] = 0xe11c762f00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = eth.balance(_551)
            mem[mem[64] + 36] = 128
            _675 = mem[_583]
            mem[mem[64] + 132] = mem[_583]
            s = 0
            t = _583 + 32
            u = mem[64] + 164
            while s < _675:
                mem[u] = mem[t + 12 len 20]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            mem[mem[64] + 68] = (sub_d4840641 * _567) - (cd[100] * _567) / sub_d4840641
            mem[mem[64] + 100] = address(_541)
            require ext_code.size(address(_575))
            call address(_575).0xe11c762f with:
                 gas gas_remaining wei
                args eth.balance(_551), 128, (sub_d4840641 * _567) - (cd[100] * _567) / sub_d4840641, address(_541), mem[mem[64] + 132 len (32 * _675) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            s = _567
            t = (sub_d4840641 * _567) - (cd[100] * _567) / sub_d4840641
            continue 
        mem[mem[64] + 4] = mem[(32 * idx) + (32 * ('cd', 4).length) + 172 len 20]
        require ext_code.size(address(_547))
        staticcall address(_547).balanceOf(address rg1) with:
                gas gas_remaining wei
               args address(_551)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _570 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _579 = mem[_570]
        require idx + 1 < mem[96]
        _597 = mem[(32 * idx + 1) + 128]
        require sub_d4840641
        require idx < mem[(32 * ('cd', 4).length) + 128]
        _612 = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
        _624 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        mem[_624 + 32 len 64] = call.data[calldata.size len 64]
        s = idx
        while s < idx + 2:
            require s < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
            require s - idx < mem[_624]
            mem[(32 * s - idx) + _624 + 32] = mem[(32 * s) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 204 len 20]
            s = s + 1
            continue 
        mem[mem[64]] = 0xe11c762f00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _579
        mem[mem[64] + 36] = 128
        _674 = mem[_624]
        mem[mem[64] + 132] = mem[_624]
        s = 0
        t = _624 + 32
        u = mem[64] + 164
        while s < _674:
            mem[u] = mem[t + 12 len 20]
            s = s + 1
            t = t + 32
            u = u + 32
            continue 
        mem[mem[64] + 68] = (sub_d4840641 * _597) - (cd[100] * _597) / sub_d4840641
        mem[mem[64] + 100] = address(_541)
        require ext_code.size(address(_612))
        call address(_612).0xe11c762f with:
             gas gas_remaining wei
            args _579, 128, (sub_d4840641 * _597) - (cd[100] * _597) / sub_d4840641, address(_541), mem[mem[64] + 132 len (32 * _674) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        s = _597
        t = (sub_d4840641 * _597) - (cd[100] * _597) / sub_d4840641
        continue 
    require mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160] - 1 < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
    _539 = mem[(32 * mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160] - 1) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
    if not mem[(32 * mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160] - 1) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 204 len 20]:
        require mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160] - 1 < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
        if eth.balance(this.address) < s:
            _562 = mem[(32 * mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160] - 1) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
            if this.address != msg.sender:
                if not mem[(32 * mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160] - 1) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 204 len 20]:
                    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.withdraw(uint256 rg1) with:
                         gas gas_remaining wei
                        args eth.balance(this.address)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call msg.sender with:
                       value eth.balance(this.address) wei
                         gas 2300 * is_zero(value) wei
                else:
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = eth.balance(this.address)
                    require ext_code.size(address(_562))
                    call address(_562).transfer(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args msg.sender, eth.balance(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _593 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_593] == bool(mem[_593])
                    if not mem[_593]:
                        revert with 0, 'YakAdapter::_return, token'
        else:
            _563 = mem[(32 * mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160] - 1) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
            if this.address != msg.sender:
                if not mem[(32 * mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160] - 1) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 204 len 20]:
                    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.withdraw(uint256 rg1) with:
                         gas gas_remaining wei
                        args s
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call msg.sender with:
                       value s wei
                         gas 2300 * is_zero(value) wei
                else:
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = s
                    require ext_code.size(address(_563))
                    call address(_563).transfer(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args msg.sender, s
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _594 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_594] == bool(mem[_594])
                    if not mem[_594]:
                        revert with 0, 'YakAdapter::_return, token'
    else:
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(_539))
        staticcall address(_539).balanceOf(address rg1) with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _553 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _561 = mem[_553]
        require mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160] - 1 < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
        if mem[_553] < s:
            _591 = mem[(32 * mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160] - 1) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
            if this.address != msg.sender:
                if not mem[(32 * mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160] - 1) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 204 len 20]:
                    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.withdraw(uint256 rg1) with:
                         gas gas_remaining wei
                        args mem[_553]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call msg.sender with:
                       value mem[_553] wei
                         gas 2300 * is_zero(value) wei
                else:
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _561
                    require ext_code.size(address(_591))
                    call address(_591).transfer(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args msg.sender, _561
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _629 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_629] == bool(mem[_629])
                    if not mem[_629]:
                        revert with 0, 'YakAdapter::_return, token'
        else:
            _592 = mem[(32 * mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160] - 1) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
            if this.address != msg.sender:
                if not mem[(32 * mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160] - 1) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 204 len 20]:
                    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.withdraw(uint256 rg1) with:
                         gas gas_remaining wei
                        args s
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call msg.sender with:
                       value s wei
                         gas 2300 * is_zero(value) wei
                else:
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = s
                    require ext_code.size(address(_592))
                    call address(_592).transfer(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args msg.sender, s
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _630 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_630] == bool(mem[_630])
                    if not mem[_630]:
                        revert with 0, 'YakAdapter::_return, token'
}



}
