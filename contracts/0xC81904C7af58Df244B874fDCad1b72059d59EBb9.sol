contract main {




// =====================  Runtime code  =====================


#
#  - sub_490e7aa9(?)
#  - sub_c71570ce(?)
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
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require arg1.length / 32 <= test266151307()
    mem[ceil32(arg1.length) + 128] = arg1.length / 32
    if floor32(arg1.length):
        mem[ceil32(arg1.length) + 160 len floor32(arg1.length)] = call.data[calldata.size len floor32(arg1.length)]
    idx = 0
    while idx < arg1.length / 32:
        require idx < Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
        mem[(32 * idx) + ceil32(arg1.length) + 160] = mem[(32 * idx) + 128]
        idx = idx + 1
        continue 
    mem[ceil32(arg1.length) + floor32(arg1.length) + 160] = 32
    mem[ceil32(arg1.length) + floor32(arg1.length) + 192] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + 224 len 32 * Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]] = mem[ceil32(arg1.length) + 160 len 32 * Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]]
    return memory
      from ceil32(arg1.length) + floor32(arg1.length) + 160
       len (32 * Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + 64
}

function queryNoSplit(uint256 arg1, address arg2, address arg3) {
    require calldata.size - 4 >= 96
    require arg2 == arg2
    require arg3 == arg3
    mem[96] = 0
    mem[128] = 0
    mem[160] = 0
    mem[192] = 0
    mem[64] = 352
    mem[224] = 0
    mem[256] = 0
    mem[288] = 0
    mem[320] = 0
    idx = 0
    s = 224
    while uint8(idx) < adapters.length:
        mem[0] = 4
        mem[mem[64] + 4] = arg1
        mem[mem[64] + 36] = arg2
        mem[mem[64] + 68] = arg3
        require ext_code.size(address(adapters[uint8(idx)]))
        staticcall address(adapters[uint8(idx)]).0xef99893a with:
                gas gas_remaining wei
               args arg1, address(arg2), arg3
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _24 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _25 = mem[_24]
        if not uint8(idx):
            _27 = mem[64]
            mem[64] = mem[64] + 128
            mem[_27] = address(adapters[uint8(idx)])
            mem[_27 + 32] = arg2
            mem[_27 + 64] = arg3
            mem[_27 + 96] = _25
            idx = idx + 1
            s = _27
            continue 
        if mem[_24] <= mem[s + 96]:
            idx = idx + 1
            s = s
            continue 
        _28 = mem[64]
        mem[64] = mem[64] + 128
        mem[_28] = address(adapters[uint8(idx)])
        mem[_28 + 32] = arg2
        mem[_28 + 64] = arg3
        mem[_28 + 96] = _25
        idx = idx + 1
        s = _28
        continue 
    mem[mem[64]] = mem[s + 12 len 20]
    mem[mem[64] + 32] = mem[s + 44 len 20]
    mem[mem[64] + 64] = mem[s + 76 len 20]
    mem[mem[64] + 96] = mem[s + 96]
    return memory
      from mem[64]
       len 128
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
    mem[128] = 0
    mem[160] = 0
    mem[192] = 0
    mem[64] = 352
    mem[224] = 0
    mem[256] = 0
    mem[288] = 0
    mem[320] = 0
    idx = 0
    s = 224
    while arg4.length > uint8(idx):
        require uint8(idx) < arg4.length
        require cd[((32 * uint8(idx)) + arg4 + 36)] == uint8(cd[((32 * uint8(idx)) + arg4 + 36)])
        require uint8(cd[((32 * uint8(idx)) + arg4 + 36)]) < adapters.length
        mem[0] = 4
        mem[mem[64] + 4] = arg1
        mem[mem[64] + 36] = arg2
        mem[mem[64] + 68] = arg3
        require ext_code.size(address(adapters[uint8(cd[((32 * uint8(idx)) + arg4 + 36)])]))
        staticcall address(adapters[uint8(cd[((32 * uint8(idx)) + arg4 + 36)])]).0xef99893a with:
                gas gas_remaining wei
               args arg1, address(arg2), arg3
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _24 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _25 = mem[_24]
        if not uint8(idx):
            _27 = mem[64]
            mem[64] = mem[64] + 128
            mem[_27] = address(adapters[uint8(cd[((32 * uint8(idx)) + arg4 + 36)])])
            mem[_27 + 32] = arg2
            mem[_27 + 64] = arg3
            mem[_27 + 96] = _25
            idx = idx + 1
            s = _27
            continue 
        if mem[_24] <= mem[s + 96]:
            idx = idx + 1
            s = s
            continue 
        _28 = mem[64]
        mem[64] = mem[64] + 128
        mem[_28] = address(adapters[uint8(cd[((32 * uint8(idx)) + arg4 + 36)])])
        mem[_28 + 32] = arg2
        mem[_28 + 64] = arg3
        mem[_28 + 96] = _25
        idx = idx + 1
        s = _28
        continue 
    mem[mem[64]] = mem[s + 12 len 20]
    mem[mem[64] + 32] = mem[s + 44 len 20]
    mem[mem[64] + 64] = mem[s + 76 len 20]
    mem[mem[64] + 96] = mem[s + 96]
    return memory
      from mem[64]
       len 128
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
        idx = 0
        s = ceil32(arg1.length) + 160
        t = mem[64] + 64
        while idx < _20:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len ceil32(arg1.length) + floor32(arg1.length) + (32 * _20) + -mem[64] + 224
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
    idx = 0
    s = ceil32(arg1.length) + 160
    t = mem[64] + 64
    while idx < _21:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len ceil32(arg1.length) + floor32(arg1.length) + (32 * _21) + -mem[64] + 224
}

function queryAdapter(uint256 arg1, address arg2, address arg3, uint8 arg4) {
    require calldata.size - 4 >= 128
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg4 < adapters.length
    mem[0] = 4
    mem[100] = arg1
    mem[132] = arg2
    mem[164] = arg3
    require ext_code.size(address(adapters[arg4]))
    staticcall address(adapters[arg4]).0xef99893a with:
            gas gas_remaining wei
           args arg1, address(arg2), arg3
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 96] = 0x6fdde0300000000000000000000000000000000000000000000000000000000
    require ext_code.size(address(adapters[arg4]))
    staticcall address(adapters[arg4]).name() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 96
    require return_data.size >= 32
    _9 = mem[ceil32(return_data.size) + 96]
    require mem[ceil32(return_data.size) + 96] <= test266151307()
    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 127 < ceil32(return_data.size) + return_data.size + 96
    _10 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96]
    require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96] <= test266151307()
    require ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96]) + 32 >= 0 and (2 * ceil32(return_data.size)) + ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96]) + 128 <= test266151307()
    mem[64] = (2 * ceil32(return_data.size)) + ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96]) + 128
    mem[(2 * ceil32(return_data.size)) + 96] = _10
    require _9 + _10 + 32 <= return_data.size
    mem[(2 * ceil32(return_data.size)) + 128 len ceil32(_10)] = mem[ceil32(return_data.size) + _9 + 128 len ceil32(_10)]
    if ceil32(_10) <= _10:
        _24 = mem[64]
        mem[mem[64]] = 64
        mem[mem[64] + 64] = _10
        mem[mem[64] + 96 len ceil32(_10)] = mem[(2 * ceil32(return_data.size)) + 128 len ceil32(_10)]
        if ceil32(_10) > _10:
            mem[_10 + mem[64] + 96] = 0
        mem[mem[64] + 32] = ext_call.return_data[0]
        return memory
          from mem[64]
           len ceil32(_10) + _24 + -mem[64] + 96
    mem[_10 + (2 * ceil32(return_data.size)) + 128] = 0
    _25 = mem[64]
    mem[mem[64]] = 64
    mem[mem[64] + 64] = _10
    mem[mem[64] + 96 len ceil32(_10)] = mem[(2 * ceil32(return_data.size)) + 128 len ceil32(_10)]
    if ceil32(_10) > _10:
        mem[_10 + mem[64] + 96] = 0
    mem[mem[64] + 32] = ext_call.return_data[0]
    return memory
      from mem[64]
       len ceil32(_10) + _25 + -mem[64] + 96
}

function sub_d088df22(?) {
    require calldata.size - 4 >= 128
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    require ('cd', 68).length - 1 < ('cd', 68).length
    require cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)] == address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)])
    if address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)]) != 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
        revert with 0, 'Path needs to end with WAVAX'
    require 0 < ('cd', 68).length
    require ('cd', 68)[0] == address(('cd', 68)[0])
    require 0 < ('cd', 36).length
    require ('cd', 36)[0] == address(('cd', 36)[0])
    require 0 < ('cd', 4).length
    mem[100] = msg.sender
    mem[132] = address(('cd', 36)[0])
    mem[164] = ('cd', 4)[0]
    require ext_code.size(address(('cd', 68)[0]))
    call address(('cd', 68)[0]).transferFrom(address rg1, address rg2, uint256 rg3) with:
         gas gas_remaining wei
        args msg.sender, address(('cd', 36)[0]), ('cd', 4)[0]
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    idx = 0
    s = 0
    t = 0
    while idx < ('cd', 36).length:
        require idx + 1 < ('cd', 36).length
        require cd[((32 * idx + 1) + cd[36] + 36)] == address(cd[((32 * idx + 1) + cd[36] + 36)])
        require idx < ('cd', 68).length
        require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
        require idx < ('cd', 36).length
        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
        if not address(cd[((32 * idx) + cd[68] + 36)]):
            require idx + 1 < ('cd', 4).length
            require sub_d4840641
            require idx < ('cd', 36).length
            require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
            _71 = mem[64]
            mem[64] = mem[64] + (32 * ('cd', 68).length) + 32
            mem[_71] = ('cd', 68).length
            mem[_71 + 32 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
            mem[_71 + (32 * ('cd', 68).length) + 32] = 0
            _72 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            mem[_72 + 32 len 64] = call.data[calldata.size len 64]
            s = idx
            while s < idx + 2:
                require s < mem[_71]
                require s - idx < mem[_72]
                mem[(32 * s - idx) + _72 + 32] = mem[(32 * s) + _71 + 44 len 20]
                s = s + 1
                continue 
            _94 = mem[64]
            mem[mem[64]] = 0xe11c762f00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = eth.balance(cd[((32 * idx) + cd[36] + 36)])
            mem[mem[64] + 36] = 128
            _98 = mem[_72]
            mem[mem[64] + 132] = mem[_72]
            s = 0
            t = _72 + 32
            u = mem[64] + 164
            while s < _98:
                mem[u] = mem[t + 12 len 20]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            mem[_94 + 68] = (sub_d4840641 * cd[((32 * idx + 1) + cd[4] + 36)]) - (cd[100] * cd[((32 * idx + 1) + cd[4] + 36)]) / sub_d4840641
            mem[_94 + 100] = address(cd[((32 * idx + 1) + cd[36] + 36)])
            require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
            call address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _94 + (32 * _98) + -mem[64] + 160]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            s = cd[((32 * idx + 1) + cd[4] + 36)]
            t = (sub_d4840641 * cd[((32 * idx + 1) + cd[4] + 36)]) - (cd[100] * cd[((32 * idx + 1) + cd[4] + 36)]) / sub_d4840641
            continue 
        mem[mem[64] + 4] = address(cd[((32 * idx) + cd[36] + 36)])
        require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
        staticcall address(cd[((32 * idx) + cd[68] + 36)]).balanceOf(address rg1) with:
                gas gas_remaining wei
               args address(cd[((32 * idx) + cd[36] + 36)])
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _69 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _70 = mem[_69]
        require idx + 1 < ('cd', 4).length
        require sub_d4840641
        require idx < ('cd', 36).length
        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
        _74 = mem[64]
        mem[64] = mem[64] + (32 * ('cd', 68).length) + 32
        mem[_74] = ('cd', 68).length
        mem[_74 + 32 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
        mem[_74 + (32 * ('cd', 68).length) + 32] = 0
        _78 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        mem[_78 + 32 len 64] = call.data[calldata.size len 64]
        s = s
        while s < s + 2:
            require s < mem[_74]
            require 0 < mem[_78]
            mem[_78 + 32] = mem[(32 * s) + _74 + 44 len 20]
            s = s + 1
            continue 
        _91 = mem[64]
        mem[mem[64]] = 0xe11c762f00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _70
        mem[mem[64] + 36] = 128
        _97 = mem[_78]
        mem[mem[64] + 132] = mem[_78]
        idx = 0
        t = _78 + 32
        u = mem[64] + 164
        while idx < _97:
            mem[u] = mem[t + 12 len 20]
            idx = idx + 1
            t = t + 32
            u = u + 32
            continue 
        mem[_91 + 68] = (sub_d4840641 * cd[((32 * s + 1) + cd[4] + 36)]) - (cd[100] * cd[((32 * s + 1) + cd[4] + 36)]) / sub_d4840641
        mem[_91 + 100] = address(cd[((32 * s + 1) + cd[36] + 36)])
        require ext_code.size(address(cd[((32 * s) + cd[36] + 36)]))
        call address(cd[((32 * s) + cd[36] + 36)]).mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _91 + (32 * _97) + -mem[64] + 160]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        s = s + 1
        s = cd[((32 * s + 1) + cd[4] + 36)]
        t = (sub_d4840641 * cd[((32 * s + 1) + cd[4] + 36)]) - (cd[100] * cd[((32 * s + 1) + cd[4] + 36)]) / sub_d4840641
        continue 
    require ('cd', 68).length - 1 < ('cd', 68).length
    require cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)] == address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)])
    if not address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)]):
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
        require ext_code.size(address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)]))
        staticcall address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)]).balanceOf(address rg1) with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _53 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_53] < s:
            if this.address != msg.sender:
                require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.withdraw(uint256 rg1) with:
                     gas gas_remaining wei
                    args mem[_53]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                call msg.sender with:
                   value mem[_53] wei
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

function sub_55396f62(?) {
    require calldata.size - 4 >= 256
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require test266151307() >= cd[36]
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require test266151307() >= cd[68]
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    require cd[164] == uint8(cd[164])
    require 0 < ('cd', 68).length
    require ('cd', 68)[0] == address(('cd', 68)[0])
    require 0 < ('cd', 4).length
    mem[196] = cd[132]
    mem[228] = uint8(cd[164])
    mem[260] = cd[196]
    mem[292] = cd[228]
    require ext_code.size(address(('cd', 68)[0]))
    call address(('cd', 68)[0]).permit(address rg1, address rg2, uint256 rg3, uint256 rg4, uint8 rg5, bytes32 rg6, bytes32 rg7) with:
         gas gas_remaining wei
        args 0, uint32(msg.sender), address(this.address), ('cd', 4)[0], cd[132], cd[164] << 248, cd[196], cd[228]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ('cd', 68).length - 1 < ('cd', 68).length
    require cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)] == address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)])
    if address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)]) != 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
        revert with 0, 'Path needs to end with WAVAX'
    require 0 < ('cd', 68).length
    require ('cd', 68)[0] == address(('cd', 68)[0])
    require 0 < ('cd', 36).length
    require ('cd', 36)[0] == address(('cd', 36)[0])
    require 0 < ('cd', 4).length
    mem[100] = msg.sender
    mem[132] = address(('cd', 36)[0])
    mem[164] = ('cd', 4)[0]
    require ext_code.size(address(('cd', 68)[0]))
    call address(('cd', 68)[0]).transferFrom(address rg1, address rg2, uint256 rg3) with:
         gas gas_remaining wei
        args msg.sender, address(('cd', 36)[0]), ('cd', 4)[0]
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    idx = 0
    s = 0
    t = 0
    while idx < ('cd', 36).length:
        require idx + 1 < ('cd', 36).length
        require cd[((32 * idx + 1) + cd[36] + 36)] == address(cd[((32 * idx + 1) + cd[36] + 36)])
        require idx < ('cd', 68).length
        require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
        require idx < ('cd', 36).length
        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
        if not address(cd[((32 * idx) + cd[68] + 36)]):
            require idx + 1 < ('cd', 4).length
            require sub_d4840641
            require idx < ('cd', 36).length
            require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
            _73 = mem[64]
            mem[64] = mem[64] + (32 * ('cd', 68).length) + 32
            mem[_73] = ('cd', 68).length
            mem[_73 + 32 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
            mem[_73 + (32 * ('cd', 68).length) + 32] = 0
            _74 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            mem[_74 + 32 len 64] = call.data[calldata.size len 64]
            s = idx
            while s < idx + 2:
                require s < mem[_73]
                require s - idx < mem[_74]
                mem[(32 * s - idx) + _74 + 32] = mem[(32 * s) + _73 + 44 len 20]
                s = s + 1
                continue 
            _96 = mem[64]
            mem[mem[64]] = 0xe11c762f00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = eth.balance(cd[((32 * idx) + cd[36] + 36)])
            mem[mem[64] + 36] = 128
            _100 = mem[_74]
            mem[mem[64] + 132] = mem[_74]
            s = 0
            t = _74 + 32
            u = mem[64] + 164
            while s < _100:
                mem[u] = mem[t + 12 len 20]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            mem[_96 + 68] = (sub_d4840641 * cd[((32 * idx + 1) + cd[4] + 36)]) - (cd[100] * cd[((32 * idx + 1) + cd[4] + 36)]) / sub_d4840641
            mem[_96 + 100] = address(cd[((32 * idx + 1) + cd[36] + 36)])
            require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
            call address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _96 + (32 * _100) + -mem[64] + 160]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            s = cd[((32 * idx + 1) + cd[4] + 36)]
            t = (sub_d4840641 * cd[((32 * idx + 1) + cd[4] + 36)]) - (cd[100] * cd[((32 * idx + 1) + cd[4] + 36)]) / sub_d4840641
            continue 
        mem[mem[64] + 4] = address(cd[((32 * idx) + cd[36] + 36)])
        require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
        staticcall address(cd[((32 * idx) + cd[68] + 36)]).balanceOf(address rg1) with:
                gas gas_remaining wei
               args address(cd[((32 * idx) + cd[36] + 36)])
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _71 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _72 = mem[_71]
        require idx + 1 < ('cd', 4).length
        require sub_d4840641
        require idx < ('cd', 36).length
        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
        _76 = mem[64]
        mem[64] = mem[64] + (32 * ('cd', 68).length) + 32
        mem[_76] = ('cd', 68).length
        mem[_76 + 32 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
        mem[_76 + (32 * ('cd', 68).length) + 32] = 0
        _80 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        mem[_80 + 32 len 64] = call.data[calldata.size len 64]
        s = s
        while s < s + 2:
            require s < mem[_76]
            require 0 < mem[_80]
            mem[_80 + 32] = mem[(32 * s) + _76 + 44 len 20]
            s = s + 1
            continue 
        mem[mem[64]] = 0xe11c762f00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _72
        mem[mem[64] + 36] = 128
        _99 = mem[_80]
        mem[mem[64] + 132] = mem[_80]
        idx = 0
        t = _80 + 32
        u = mem[64] + 164
        while idx < _99:
            mem[u] = mem[t + 12 len 20]
            idx = idx + 1
            t = t + 32
            u = u + 32
            continue 
        mem[mem[64] + 68] = (sub_d4840641 * cd[((32 * s + 1) + cd[4] + 36)]) - (cd[100] * cd[((32 * s + 1) + cd[4] + 36)]) / sub_d4840641
        mem[mem[64] + 100] = address(cd[((32 * s + 1) + cd[36] + 36)])
        require ext_code.size(address(cd[((32 * s) + cd[36] + 36)]))
        call address(cd[((32 * s) + cd[36] + 36)]).0xe11c762f with:
             gas gas_remaining wei
            args _72, 128, (sub_d4840641 * cd[((32 * s + 1) + cd[4] + 36)]) - (cd[100] * cd[((32 * s + 1) + cd[4] + 36)]) / sub_d4840641, address(cd[((32 * s + 1) + cd[36] + 36)]), mem[mem[64] + 132 len (32 * _99) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        s = s + 1
        s = cd[((32 * s + 1) + cd[4] + 36)]
        t = (sub_d4840641 * cd[((32 * s + 1) + cd[4] + 36)]) - (cd[100] * cd[((32 * s + 1) + cd[4] + 36)]) / sub_d4840641
        continue 
    require ('cd', 68).length - 1 < ('cd', 68).length
    require cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)] == address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)])
    if not address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)]):
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
        require ext_code.size(address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)]))
        staticcall address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)]).balanceOf(address rg1) with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _55 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_55] < s:
            if this.address != msg.sender:
                require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.withdraw(uint256 rg1) with:
                     gas gas_remaining wei
                    args mem[_55]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                call msg.sender with:
                   value mem[_55] wei
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
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    require 0 < ('cd', 68).length
    require ('cd', 68)[0] == address(('cd', 68)[0])
    require 0 < ('cd', 36).length
    require ('cd', 36)[0] == address(('cd', 36)[0])
    require 0 < ('cd', 4).length
    mem[100] = msg.sender
    mem[132] = address(('cd', 36)[0])
    mem[164] = ('cd', 4)[0]
    require ext_code.size(address(('cd', 68)[0]))
    call address(('cd', 68)[0]).transferFrom(address rg1, address rg2, uint256 rg3) with:
         gas gas_remaining wei
        args msg.sender, address(('cd', 36)[0]), ('cd', 4)[0]
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    idx = 0
    s = 0
    t = 0
    while idx < ('cd', 36).length:
        require idx + 1 < ('cd', 36).length
        require cd[((32 * idx + 1) + cd[36] + 36)] == address(cd[((32 * idx + 1) + cd[36] + 36)])
        require idx < ('cd', 68).length
        require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
        require idx < ('cd', 36).length
        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
        if not address(cd[((32 * idx) + cd[68] + 36)]):
            require idx + 1 < ('cd', 4).length
            require sub_d4840641
            require idx < ('cd', 36).length
            require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
            _113 = mem[64]
            mem[64] = mem[64] + (32 * ('cd', 68).length) + 32
            mem[_113] = ('cd', 68).length
            mem[_113 + 32 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
            mem[_113 + (32 * ('cd', 68).length) + 32] = 0
            _114 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            mem[_114 + 32 len 64] = call.data[calldata.size len 64]
            s = idx
            while s < idx + 2:
                require s < mem[_113]
                require s - idx < mem[_114]
                mem[(32 * s - idx) + _114 + 32] = mem[(32 * s) + _113 + 44 len 20]
                s = s + 1
                continue 
            _140 = mem[64]
            mem[mem[64]] = 0xe11c762f00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = eth.balance(cd[((32 * idx) + cd[36] + 36)])
            mem[mem[64] + 36] = 128
            _144 = mem[_114]
            mem[mem[64] + 132] = mem[_114]
            s = 0
            t = _114 + 32
            u = mem[64] + 164
            while s < _144:
                mem[u] = mem[t + 12 len 20]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            mem[_140 + 68] = (sub_d4840641 * cd[((32 * idx + 1) + cd[4] + 36)]) - (cd[100] * cd[((32 * idx + 1) + cd[4] + 36)]) / sub_d4840641
            mem[_140 + 100] = address(cd[((32 * idx + 1) + cd[36] + 36)])
            require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
            call address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _140 + (32 * _144) + -mem[64] + 160]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            s = cd[((32 * idx + 1) + cd[4] + 36)]
            t = (sub_d4840641 * cd[((32 * idx + 1) + cd[4] + 36)]) - (cd[100] * cd[((32 * idx + 1) + cd[4] + 36)]) / sub_d4840641
            continue 
        mem[mem[64] + 4] = address(cd[((32 * idx) + cd[36] + 36)])
        require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
        staticcall address(cd[((32 * idx) + cd[68] + 36)]).balanceOf(address rg1) with:
                gas gas_remaining wei
               args address(cd[((32 * idx) + cd[36] + 36)])
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _89 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _96 = mem[_89]
        require idx + 1 < ('cd', 4).length
        require sub_d4840641
        require idx < ('cd', 36).length
        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
        _120 = mem[64]
        mem[64] = mem[64] + (32 * ('cd', 68).length) + 32
        mem[_120] = ('cd', 68).length
        mem[_120 + 32 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
        mem[_120 + (32 * ('cd', 68).length) + 32] = 0
        _124 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        mem[_124 + 32 len 64] = call.data[calldata.size len 64]
        s = s
        while s < s + 2:
            require s < mem[_120]
            require 0 < mem[_124]
            mem[_124 + 32] = mem[(32 * s) + _120 + 44 len 20]
            s = s + 1
            continue 
        _137 = mem[64]
        mem[mem[64]] = 0xe11c762f00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _96
        mem[mem[64] + 36] = 128
        _143 = mem[_124]
        mem[mem[64] + 132] = mem[_124]
        idx = 0
        t = _124 + 32
        u = mem[64] + 164
        while idx < _143:
            mem[u] = mem[t + 12 len 20]
            idx = idx + 1
            t = t + 32
            u = u + 32
            continue 
        mem[_137 + 68] = (sub_d4840641 * cd[((32 * s + 1) + cd[4] + 36)]) - (cd[100] * cd[((32 * s + 1) + cd[4] + 36)]) / sub_d4840641
        mem[_137 + 100] = address(cd[((32 * s + 1) + cd[36] + 36)])
        require ext_code.size(address(cd[((32 * s) + cd[36] + 36)]))
        call address(cd[((32 * s) + cd[36] + 36)]).mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _137 + (32 * _143) + -mem[64] + 160]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        s = s + 1
        s = cd[((32 * s + 1) + cd[4] + 36)]
        t = (sub_d4840641 * cd[((32 * s + 1) + cd[4] + 36)]) - (cd[100] * cd[((32 * s + 1) + cd[4] + 36)]) / sub_d4840641
        continue 
    require ('cd', 68).length - 1 < ('cd', 68).length
    require cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)] == address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)])
    if not address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)]):
        require ('cd', 68).length - 1 < ('cd', 68).length
        require cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)] == address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)])
        if eth.balance(this.address) < s:
            if this.address != msg.sender:
                if not address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)]):
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
                    require ext_code.size(address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)]))
                    call address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)]).transfer(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args msg.sender, eth.balance(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _87 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_87] == bool(mem[_87])
                    if not mem[_87]:
                        revert with 0, 'YakAdapter::_return, token'
        else:
            if this.address != msg.sender:
                if not address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)]):
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
                    require ext_code.size(address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)]))
                    call address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)]).transfer(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args msg.sender, s
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _88 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_88] == bool(mem[_88])
                    if not mem[_88]:
                        revert with 0, 'YakAdapter::_return, token'
    else:
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)]))
        staticcall address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)]).balanceOf(address rg1) with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _75 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _76 = mem[_75]
        require ('cd', 68).length - 1 < ('cd', 68).length
        require cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)] == address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)])
        if mem[_75] < s:
            if this.address != msg.sender:
                if not address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)]):
                    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.withdraw(uint256 rg1) with:
                         gas gas_remaining wei
                        args mem[_75]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call msg.sender with:
                       value mem[_75] wei
                         gas 2300 * is_zero(value) wei
                else:
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _76
                    require ext_code.size(address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)]))
                    call address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)]).transfer(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args msg.sender, _76
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _105 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_105] == bool(mem[_105])
                    if not mem[_105]:
                        revert with 0, 'YakAdapter::_return, token'
        else:
            if this.address != msg.sender:
                if not address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)]):
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
                    require ext_code.size(address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)]))
                    call address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)]).transfer(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args msg.sender, s
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _106 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_106] == bool(mem[_106])
                    if not mem[_106]:
                        revert with 0, 'YakAdapter::_return, token'
}

function sub_d43cf0ae(?) {
    require calldata.size - 4 >= 256
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require test266151307() >= cd[36]
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require test266151307() >= cd[68]
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    require cd[164] == uint8(cd[164])
    require 0 < ('cd', 68).length
    require ('cd', 68)[0] == address(('cd', 68)[0])
    require 0 < ('cd', 4).length
    mem[196] = cd[132]
    mem[228] = uint8(cd[164])
    mem[260] = cd[196]
    mem[292] = cd[228]
    require ext_code.size(address(('cd', 68)[0]))
    call address(('cd', 68)[0]).permit(address rg1, address rg2, uint256 rg3, uint256 rg4, uint8 rg5, bytes32 rg6, bytes32 rg7) with:
         gas gas_remaining wei
        args 0, uint32(msg.sender), address(this.address), ('cd', 4)[0], cd[132], cd[164] << 248, cd[196], cd[228]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require 0 < ('cd', 68).length
    require ('cd', 68)[0] == address(('cd', 68)[0])
    require 0 < ('cd', 36).length
    require ('cd', 36)[0] == address(('cd', 36)[0])
    require 0 < ('cd', 4).length
    mem[100] = msg.sender
    mem[132] = address(('cd', 36)[0])
    mem[164] = ('cd', 4)[0]
    require ext_code.size(address(('cd', 68)[0]))
    call address(('cd', 68)[0]).transferFrom(address rg1, address rg2, uint256 rg3) with:
         gas gas_remaining wei
        args msg.sender, address(('cd', 36)[0]), ('cd', 4)[0]
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    idx = 0
    s = 0
    t = 0
    while idx < ('cd', 36).length:
        require idx + 1 < ('cd', 36).length
        require cd[((32 * idx + 1) + cd[36] + 36)] == address(cd[((32 * idx + 1) + cd[36] + 36)])
        require idx < ('cd', 68).length
        require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
        require idx < ('cd', 36).length
        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
        if not address(cd[((32 * idx) + cd[68] + 36)]):
            require idx + 1 < ('cd', 4).length
            require sub_d4840641
            require idx < ('cd', 36).length
            require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
            _115 = mem[64]
            mem[64] = mem[64] + (32 * ('cd', 68).length) + 32
            mem[_115] = ('cd', 68).length
            mem[_115 + 32 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
            mem[_115 + (32 * ('cd', 68).length) + 32] = 0
            _116 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            mem[_116 + 32 len 64] = call.data[calldata.size len 64]
            s = idx
            while s < idx + 2:
                require s < mem[_115]
                require s - idx < mem[_116]
                mem[(32 * s - idx) + _116 + 32] = mem[(32 * s) + _115 + 44 len 20]
                s = s + 1
                continue 
            _142 = mem[64]
            mem[mem[64]] = 0xe11c762f00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = eth.balance(cd[((32 * idx) + cd[36] + 36)])
            mem[mem[64] + 36] = 128
            _146 = mem[_116]
            mem[mem[64] + 132] = mem[_116]
            s = 0
            t = _116 + 32
            u = mem[64] + 164
            while s < _146:
                mem[u] = mem[t + 12 len 20]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            mem[_142 + 68] = (sub_d4840641 * cd[((32 * idx + 1) + cd[4] + 36)]) - (cd[100] * cd[((32 * idx + 1) + cd[4] + 36)]) / sub_d4840641
            mem[_142 + 100] = address(cd[((32 * idx + 1) + cd[36] + 36)])
            require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
            call address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _142 + (32 * _146) + -mem[64] + 160]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            s = cd[((32 * idx + 1) + cd[4] + 36)]
            t = (sub_d4840641 * cd[((32 * idx + 1) + cd[4] + 36)]) - (cd[100] * cd[((32 * idx + 1) + cd[4] + 36)]) / sub_d4840641
            continue 
        mem[mem[64] + 4] = address(cd[((32 * idx) + cd[36] + 36)])
        require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
        staticcall address(cd[((32 * idx) + cd[68] + 36)]).balanceOf(address rg1) with:
                gas gas_remaining wei
               args address(cd[((32 * idx) + cd[36] + 36)])
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _91 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _98 = mem[_91]
        require idx + 1 < ('cd', 4).length
        require sub_d4840641
        require idx < ('cd', 36).length
        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
        _122 = mem[64]
        mem[64] = mem[64] + (32 * ('cd', 68).length) + 32
        mem[_122] = ('cd', 68).length
        mem[_122 + 32 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
        mem[_122 + (32 * ('cd', 68).length) + 32] = 0
        _126 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        mem[_126 + 32 len 64] = call.data[calldata.size len 64]
        s = s
        while s < s + 2:
            require s < mem[_122]
            require 0 < mem[_126]
            mem[_126 + 32] = mem[(32 * s) + _122 + 44 len 20]
            s = s + 1
            continue 
        _139 = mem[64]
        mem[mem[64]] = 0xe11c762f00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _98
        mem[mem[64] + 36] = 128
        _145 = mem[_126]
        mem[mem[64] + 132] = mem[_126]
        idx = 0
        t = _126 + 32
        u = mem[64] + 164
        while idx < _145:
            mem[u] = mem[t + 12 len 20]
            idx = idx + 1
            t = t + 32
            u = u + 32
            continue 
        mem[_139 + 68] = (sub_d4840641 * cd[((32 * s + 1) + cd[4] + 36)]) - (cd[100] * cd[((32 * s + 1) + cd[4] + 36)]) / sub_d4840641
        mem[_139 + 100] = address(cd[((32 * s + 1) + cd[36] + 36)])
        require ext_code.size(address(cd[((32 * s) + cd[36] + 36)]))
        call address(cd[((32 * s) + cd[36] + 36)]).mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _139 + (32 * _145) + -mem[64] + 160]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        s = s + 1
        s = cd[((32 * s + 1) + cd[4] + 36)]
        t = (sub_d4840641 * cd[((32 * s + 1) + cd[4] + 36)]) - (cd[100] * cd[((32 * s + 1) + cd[4] + 36)]) / sub_d4840641
        continue 
    require ('cd', 68).length - 1 < ('cd', 68).length
    require cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)] == address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)])
    if not address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)]):
        require ('cd', 68).length - 1 < ('cd', 68).length
        require cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)] == address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)])
        if eth.balance(this.address) < s:
            if this.address != msg.sender:
                if not address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)]):
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
                    require ext_code.size(address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)]))
                    call address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)]).transfer(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args msg.sender, eth.balance(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _89 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_89] == bool(mem[_89])
                    if not mem[_89]:
                        revert with 0, 'YakAdapter::_return, token'
        else:
            if this.address != msg.sender:
                if not address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)]):
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
                    require ext_code.size(address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)]))
                    call address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)]).transfer(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args msg.sender, s
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _90 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_90] == bool(mem[_90])
                    if not mem[_90]:
                        revert with 0, 'YakAdapter::_return, token'
    else:
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)]))
        staticcall address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)]).balanceOf(address rg1) with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _77 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _78 = mem[_77]
        require ('cd', 68).length - 1 < ('cd', 68).length
        require cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)] == address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)])
        if mem[_77] < s:
            if this.address != msg.sender:
                if not address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)]):
                    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.withdraw(uint256 rg1) with:
                         gas gas_remaining wei
                        args mem[_77]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call msg.sender with:
                       value mem[_77] wei
                         gas 2300 * is_zero(value) wei
                else:
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _78
                    require ext_code.size(address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)]))
                    call address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)]).transfer(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args msg.sender, _78
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _107 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_107] == bool(mem[_107])
                    if not mem[_107]:
                        revert with 0, 'YakAdapter::_return, token'
        else:
            if this.address != msg.sender:
                if not address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)]):
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
                    require ext_code.size(address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)]))
                    call address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)]).transfer(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args msg.sender, s
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _108 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_108] == bool(mem[_108])
                    if not mem[_108]:
                        revert with 0, 'YakAdapter::_return, token'
}

function sub_41da5b60(?) payable {
    require calldata.size - 4 >= 128
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    require ('cd', 68).length
    require ('cd', 68)[0] == address(('cd', 68)[0])
    if address(('cd', 68)[0]) != 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
        revert with 0, 'Path needs to begin with WAVAX'
    require 0 < ('cd', 4).length
    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.deposit() with:
       value ('cd', 4)[0] wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require 0 < ('cd', 68).length
    require ('cd', 68)[0] == address(('cd', 68)[0])
    require 0 < ('cd', 36).length
    require ('cd', 36)[0] == address(('cd', 36)[0])
    require 0 < ('cd', 4).length
    mem[100] = this.address
    mem[132] = address(('cd', 36)[0])
    mem[164] = ('cd', 4)[0]
    require ext_code.size(address(('cd', 68)[0]))
    call address(('cd', 68)[0]).transferFrom(address rg1, address rg2, uint256 rg3) with:
         gas gas_remaining wei
        args address(this.address), address(('cd', 36)[0]), ('cd', 4)[0]
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    idx = 0
    s = 0
    t = 0
    while idx < ('cd', 36).length:
        require idx + 1 < ('cd', 36).length
        require cd[((32 * idx + 1) + cd[36] + 36)] == address(cd[((32 * idx + 1) + cd[36] + 36)])
        require idx < ('cd', 68).length
        require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
        require idx < ('cd', 36).length
        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
        if not address(cd[((32 * idx) + cd[68] + 36)]):
            require idx + 1 < ('cd', 4).length
            require sub_d4840641
            require idx < ('cd', 36).length
            require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
            _117 = mem[64]
            mem[64] = mem[64] + (32 * ('cd', 68).length) + 32
            mem[_117] = ('cd', 68).length
            mem[_117 + 32 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
            mem[_117 + (32 * ('cd', 68).length) + 32] = 0
            _118 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            mem[_118 + 32 len 64] = call.data[calldata.size len 64]
            s = idx
            while s < idx + 2:
                require s < mem[_117]
                require s - idx < mem[_118]
                mem[(32 * s - idx) + _118 + 32] = mem[(32 * s) + _117 + 44 len 20]
                s = s + 1
                continue 
            mem[mem[64]] = 0xe11c762f00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = eth.balance(cd[((32 * idx) + cd[36] + 36)])
            mem[mem[64] + 36] = 128
            _148 = mem[_118]
            mem[mem[64] + 132] = mem[_118]
            s = 0
            t = _118 + 32
            u = mem[64] + 164
            while s < _148:
                mem[u] = mem[t + 12 len 20]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            mem[mem[64] + 68] = (sub_d4840641 * cd[((32 * idx + 1) + cd[4] + 36)]) - (cd[100] * cd[((32 * idx + 1) + cd[4] + 36)]) / sub_d4840641
            mem[mem[64] + 100] = address(cd[((32 * idx + 1) + cd[36] + 36)])
            require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
            call address(cd[((32 * idx) + cd[36] + 36)]).0xe11c762f with:
                 gas gas_remaining wei
                args eth.balance(cd[((32 * idx) + cd[36] + 36)]), 128, (sub_d4840641 * cd[((32 * idx + 1) + cd[4] + 36)]) - (cd[100] * cd[((32 * idx + 1) + cd[4] + 36)]) / sub_d4840641, address(cd[((32 * idx + 1) + cd[36] + 36)]), mem[mem[64] + 132 len (32 * _148) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            s = cd[((32 * idx + 1) + cd[4] + 36)]
            t = (sub_d4840641 * cd[((32 * idx + 1) + cd[4] + 36)]) - (cd[100] * cd[((32 * idx + 1) + cd[4] + 36)]) / sub_d4840641
            continue 
        mem[mem[64] + 4] = address(cd[((32 * idx) + cd[36] + 36)])
        require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
        staticcall address(cd[((32 * idx) + cd[68] + 36)]).balanceOf(address rg1) with:
                gas gas_remaining wei
               args address(cd[((32 * idx) + cd[36] + 36)])
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _93 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _100 = mem[_93]
        require idx + 1 < ('cd', 4).length
        require sub_d4840641
        require idx < ('cd', 36).length
        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
        _124 = mem[64]
        mem[64] = mem[64] + (32 * ('cd', 68).length) + 32
        mem[_124] = ('cd', 68).length
        mem[_124 + 32 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
        mem[_124 + (32 * ('cd', 68).length) + 32] = 0
        _128 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        mem[_128 + 32 len 64] = call.data[calldata.size len 64]
        s = s
        while s < s + 2:
            require s < mem[_124]
            require 0 < mem[_128]
            mem[_128 + 32] = mem[(32 * s) + _124 + 44 len 20]
            s = s + 1
            continue 
        mem[mem[64]] = 0xe11c762f00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _100
        mem[mem[64] + 36] = 128
        _147 = mem[_128]
        mem[mem[64] + 132] = mem[_128]
        idx = 0
        t = _128 + 32
        u = mem[64] + 164
        while idx < _147:
            mem[u] = mem[t + 12 len 20]
            idx = idx + 1
            t = t + 32
            u = u + 32
            continue 
        mem[mem[64] + 68] = (sub_d4840641 * cd[((32 * s + 1) + cd[4] + 36)]) - (cd[100] * cd[((32 * s + 1) + cd[4] + 36)]) / sub_d4840641
        mem[mem[64] + 100] = address(cd[((32 * s + 1) + cd[36] + 36)])
        require ext_code.size(address(cd[((32 * s) + cd[36] + 36)]))
        call address(cd[((32 * s) + cd[36] + 36)]).0xe11c762f with:
             gas gas_remaining wei
            args _100, 128, (sub_d4840641 * cd[((32 * s + 1) + cd[4] + 36)]) - (cd[100] * cd[((32 * s + 1) + cd[4] + 36)]) / sub_d4840641, address(cd[((32 * s + 1) + cd[36] + 36)]), mem[mem[64] + 132 len (32 * _147) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        s = s + 1
        s = cd[((32 * s + 1) + cd[4] + 36)]
        t = (sub_d4840641 * cd[((32 * s + 1) + cd[4] + 36)]) - (cd[100] * cd[((32 * s + 1) + cd[4] + 36)]) / sub_d4840641
        continue 
    require ('cd', 68).length - 1 < ('cd', 68).length
    require cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)] == address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)])
    if not address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)]):
        require ('cd', 68).length - 1 < ('cd', 68).length
        require cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)] == address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)])
        if eth.balance(this.address) < s:
            if this.address != msg.sender:
                if not address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)]):
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
                    require ext_code.size(address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)]))
                    call address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)]).transfer(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args msg.sender, eth.balance(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _91 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_91] == bool(mem[_91])
                    if not mem[_91]:
                        revert with 0, 'YakAdapter::_return, token'
        else:
            if this.address != msg.sender:
                if not address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)]):
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
                    require ext_code.size(address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)]))
                    call address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)]).transfer(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args msg.sender, s
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _92 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_92] == bool(mem[_92])
                    if not mem[_92]:
                        revert with 0, 'YakAdapter::_return, token'
    else:
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)]))
        staticcall address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)]).balanceOf(address rg1) with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _79 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _80 = mem[_79]
        require ('cd', 68).length - 1 < ('cd', 68).length
        require cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)] == address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)])
        if mem[_79] < s:
            if this.address != msg.sender:
                if not address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)]):
                    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.withdraw(uint256 rg1) with:
                         gas gas_remaining wei
                        args mem[_79]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call msg.sender with:
                       value mem[_79] wei
                         gas 2300 * is_zero(value) wei
                else:
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _80
                    require ext_code.size(address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)]))
                    call address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)]).transfer(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args msg.sender, _80
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _109 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_109] == bool(mem[_109])
                    if not mem[_109]:
                        revert with 0, 'YakAdapter::_return, token'
        else:
            if this.address != msg.sender:
                if not address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)]):
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
                    require ext_code.size(address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)]))
                    call address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)]).transfer(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args msg.sender, s
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _110 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_110] == bool(mem[_110])
                    if not mem[_110]:
                        revert with 0, 'YakAdapter::_return, token'
}



}
