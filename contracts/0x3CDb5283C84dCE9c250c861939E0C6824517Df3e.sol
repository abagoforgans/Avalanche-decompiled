contract main {




// =====================  Runtime code  =====================


#
#  - uniswapV2Call(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#  - sub_21d8d577(?)
#  - hswapV2Call(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#  - sub_38d7b3cb(?)
#  - sub_40c77747(?)
#  - pancakeCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#  - sub_924ba9cc(?)
#  - sub_b2770f7b(?)
#  - joeCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#  - _fallback()
#
address owner;
address sub_c70968e7Address;
uint256 sub_296f9ca4;
uint256 profitRatio;
address beneficiaryAddress;
mapping of uint256 sub_d3d0391c;
address wEthAddress;

function sub_296f9ca4(?) {
    return sub_296f9ca4
}

function beneficiary() {
    return beneficiaryAddress
}

function owner() {
    return owner
}

function sub_c70968e7(?) {
    return sub_c70968e7Address
}

function sub_d3d0391c(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_d3d0391c[arg1]
}

function wEth() {
    return wEthAddress
}

function profitRatio() {
    return profitRatio
}

function close() {
    require msg.sender == owner
    selfdestruct(owner)
}

function sub_8d64a9b6(?) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    profitRatio = arg1
}

function sub_f602f731(?) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    sub_296f9ca4 = arg1
}

function updateOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == owner
    owner = arg1
}

function sub_a2899a25(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require msg.sender == owner
    wEthAddress = address(arg1)
}

function updateBeneficiary(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == owner
    beneficiaryAddress = arg1
}

function sub_a46f7f80(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require msg.sender == owner
    sub_d3d0391c[address(arg1)] = arg2
}

function collectEth() {
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_e35a25b2(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + arg2.length + 36 <= calldata.size
    require msg.sender == owner
    call address(arg1) with:
       value arg3 wei
         gas gas_remaining wei
        args arg2[all]
}

function sub_027d6f56(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        if idx >= ('cd', 4).length:
            revert with 0, 50
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        mem[mem[64] + 4] = this.address
        staticcall address(cd[((32 * idx) + cd[4] + 36)]).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _11 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _12 = mem[_11]
        mem[mem[64] + 4] = owner
        mem[mem[64] + 36] = _12
        call address(cd[((32 * idx) + cd[4] + 36)]).0xa9059cbb with:
             gas gas_remaining wei
            args owner, _12
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _15 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_15] == bool(mem[_15])
        if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_aa330671(?) {
    require calldata.size - 4 >= 256
    require arg2 == address(arg2)
    require calldata.size >= 132
    require arg3 == address(arg3)
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + (32 * arg4.length) + 36 <= calldata.size
    require arg5 == address(arg5)
    mem[96 len 64] = call.data[68 len 64]
    mem[160] = arg4.length
    mem[192 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    mem[(32 * arg4.length) + 196] = address(arg2)
    call address(call.data[100]).borrowBalanceStored(address arg1) with:
         gas gas_remaining wei
        args address(arg2)
    mem[(32 * arg4.length) + 192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg1 >= ext_call.return_data[0]:
        revert with 0, 'seems overruned'
    mem[(32 * arg4.length) + ceil32(return_data.size) + 196] = address(arg2)
    call address(call.data[100]).borrowBalanceCurrent(address arg1) with:
         gas gas_remaining wei
        args address(arg2)
    mem[(32 * arg4.length) + ceil32(return_data.size) + 192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] and arg6 > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if not -ext_call.return_data[0] * arg6 / 10000:
        revert with 0, 'borrow amount is 0'
    if ext_call.return_data[0] * arg6 / 10000 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
        revert with 0, 17
    if not sub_296f9ca4:
        revert with 0, 18
    if 1 > !(1000 * ext_call.return_data[0] * arg6 / 10000 / sub_296f9ca4):
        revert with 0, 17
    mem[(32 * arg4.length) + (2 * ceil32(return_data.size)) + 192 len 64] = call.data[calldata.size len 64]
    mem[(32 * arg4.length) + (2 * ceil32(return_data.size)) + 192] = (1000 * ext_call.return_data[0] * arg6 / 10000 / sub_296f9ca4) + 1
    mem[(32 * arg4.length) + (2 * ceil32(return_data.size)) + 288] = address(arg2)
    idx = 0
    s = 96
    t = (32 * arg4.length) + (2 * ceil32(return_data.size)) + 320
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(32 * arg4.length) + (2 * ceil32(return_data.size)) + 384] = ext_call.return_data[0] * arg6 / 10000
    mem[(32 * arg4.length) + (2 * ceil32(return_data.size)) + 416] = 288
    mem[(32 * arg4.length) + (2 * ceil32(return_data.size)) + 576] = arg4.length
    idx = 0
    s = 192
    t = (32 * arg4.length) + (2 * ceil32(return_data.size)) + 608
    while idx < arg4.length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(32 * arg4.length) + (2 * ceil32(return_data.size)) + 448] = address(call.data[100])
    mem[(32 * arg4.length) + (2 * ceil32(return_data.size)) + 480] = address(call.data[68])
    mem[(32 * arg4.length) + (2 * ceil32(return_data.size)) + 512 len 64] = (1000 * ext_call.return_data[0] * arg6 / 10000 / sub_296f9ca4) + 1, call.data[calldata.size + 32]
    if 1 >= arg4.length:
        revert with 0, 50
    sub_c70968e7Address = mem[236 len 20]
    if 1 >= arg4.length:
        revert with 0, 50
    mem[(64 * arg4.length) + (2 * ceil32(return_data.size)) + 608] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
    if call.data[80 len 20] > address(arg3):
        mem[(64 * arg4.length) + (2 * ceil32(return_data.size)) + 612] = 0
        mem[(64 * arg4.length) + (2 * ceil32(return_data.size)) + 644] = ext_call.return_data[0] * arg6 / 10000
        mem[(64 * arg4.length) + (2 * ceil32(return_data.size)) + 676] = this.address
        mem[(64 * arg4.length) + (2 * ceil32(return_data.size)) + 708] = 128
        mem[(64 * arg4.length) + (2 * ceil32(return_data.size)) + 740] = (96 * arg4.length) + 320
        mem[(64 * arg4.length) + (2 * ceil32(return_data.size)) + 772 len ceil32(96 * arg4.length) + 10] = mem[(32 * arg4.length) + (2 * ceil32(return_data.size)) + 288 len ceil32(96 * arg4.length) + 10]
        require ext_code.size(mem[236 len 20])
        call mem[236 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args 0, ext_call.return_data[0] * arg6 / 10000, address(this.address), 128, (96 * arg4.length) + 320, mem[(32 * arg4.length) + (2 * ceil32(return_data.size)) + 288 len ceil32(96 * arg4.length) + 10]
    else:
        mem[(64 * arg4.length) + (2 * ceil32(return_data.size)) + 612] = ext_call.return_data[0] * arg6 / 10000
        mem[(64 * arg4.length) + (2 * ceil32(return_data.size)) + 644] = 0
        mem[(64 * arg4.length) + (2 * ceil32(return_data.size)) + 676] = this.address
        mem[(64 * arg4.length) + (2 * ceil32(return_data.size)) + 708] = 128
        mem[(64 * arg4.length) + (2 * ceil32(return_data.size)) + 740] = (96 * arg4.length) + 320
        mem[(64 * arg4.length) + (2 * ceil32(return_data.size)) + 772 len ceil32(96 * arg4.length) + 10] = mem[(32 * arg4.length) + (2 * ceil32(return_data.size)) + 288 len ceil32(96 * arg4.length) + 10]
        require ext_code.size(mem[236 len 20])
        call mem[236 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args ext_call.return_data[0] * arg6 / 10000, 0, address(this.address), 128, (96 * arg4.length) + 320, mem[(32 * arg4.length) + (2 * ceil32(return_data.size)) + 288 len ceil32(96 * arg4.length) + 10]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_627d51a2(?) {
    require calldata.size - 4 >= 96
    require cd[4] == address(cd[4])
    require cd[68] <= test266151307()
    require calldata.size > cd[68] + 35
    if ('cd', 68).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 68).length) + 97 < 96 or ceil32(32 * ('cd', 68).length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 68).length
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    s = 128
    idx = cd[68] + 36
    while idx < cd[68] + (32 * ('cd', 68).length) + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        s = s + 32
        idx = idx + 32
        continue 
    mem[ceil32(32 * ('cd', 68).length) + 97 len 64] = call.data[calldata.size len 64]
    if 0 >= ('cd', 68).length:
        revert with 0, 50
    _40 = mem[128]
    if 1 >= ('cd', 68).length:
        revert with 0, 50
    _42 = mem[160]
    mem[ceil32(32 * ('cd', 68).length) + 165] = mem[172 len 20]
    staticcall address(cd[4]).0x70a08231 with:
            gas gas_remaining wei
           args address(_42)
    mem[ceil32(32 * ('cd', 68).length) + 161] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(32 * ('cd', 68).length) + ceil32(return_data.size) + 165] = address(_42)
    staticcall mem[140 len 20].0x70a08231 with:
            gas gas_remaining wei
           args address(_42)
    mem[ceil32(32 * ('cd', 68).length) + ceil32(return_data.size) + 161] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= cd[36]:
        return call.data[calldata.size len 64]
    if ext_call.return_data[0] < cd[36]:
        revert with 0, 17
    if ext_call.return_data[0] - cd[36] and sub_296f9ca4 > -1 / ext_call.return_data[0] - cd[36]:
        revert with 0, 17
    if ext_call.return_data[0] and cd[36] > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if ext_call.return_data[0] * cd[36] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
        revert with 0, 17
    if not (ext_call.return_data[0] * sub_296f9ca4) - (cd[36] * sub_296f9ca4):
        revert with 0, 18
    if 1 > !(1000 * ext_call.return_data[0] * cd[36] / (ext_call.return_data[0] * sub_296f9ca4) - (cd[36] * sub_296f9ca4)):
        revert with 0, 17
    mem[ceil32(32 * ('cd', 68).length) + 97] = (1000 * ext_call.return_data[0] * cd[36] / (ext_call.return_data[0] * sub_296f9ca4) - (cd[36] * sub_296f9ca4)) + 1
    if -('cd', 68).length + 4:
        return (1000 * ext_call.return_data[0] * cd[36] / (ext_call.return_data[0] * sub_296f9ca4) - (cd[36] * sub_296f9ca4)) + 1, 
               call.data[calldata.size + 32]
    if 2 >= ('cd', 68).length:
        revert with 0, 50
    if 3 >= ('cd', 68).length:
        revert with 0, 50
    staticcall address(_40).0x70a08231 with:
            gas gas_remaining wei
           args mem[236 len 20]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    staticcall mem[204 len 20].0x70a08231 with:
            gas gas_remaining wei
           args mem[236 len 20]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= (1000 * ext_call.return_data[0] * cd[36] / (ext_call.return_data[0] * sub_296f9ca4) - (cd[36] * sub_296f9ca4)) + 1:
        return 0, call.data[calldata.size + 32]
    if ext_call.return_data[0] < (1000 * ext_call.return_data[0] * cd[36] / (ext_call.return_data[0] * sub_296f9ca4) - (cd[36] * sub_296f9ca4)) + 1:
        revert with 0, 17
    if ext_call.return_data[0] + -(1000 * ext_call.return_data[0] * cd[36] / (ext_call.return_data[0] * sub_296f9ca4) - (cd[36] * sub_296f9ca4)) - 1 and sub_296f9ca4 > -1 / ext_call.return_data[0] + -(1000 * ext_call.return_data[0] * cd[36] / (ext_call.return_data[0] * sub_296f9ca4) - (cd[36] * sub_296f9ca4)) - 1:
        revert with 0, 17
    if ext_call.return_data[0] and (1000 * ext_call.return_data[0] * cd[36] / (ext_call.return_data[0] * sub_296f9ca4) - (cd[36] * sub_296f9ca4)) + 1 > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if ext_call.return_data[0] + (1000 * ext_call.return_data[0] * cd[36] / (ext_call.return_data[0] * sub_296f9ca4) - (cd[36] * sub_296f9ca4) * ext_call.return_data[0]) > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
        revert with 0, 17
    if not (ext_call.return_data[0] * sub_296f9ca4) - sub_296f9ca4 - (1000 * ext_call.return_data[0] * cd[36] / (ext_call.return_data[0] * sub_296f9ca4) - (cd[36] * sub_296f9ca4) * sub_296f9ca4):
        revert with 0, 18
    if 1 > !((1000 * ext_call.return_data[0]) + (1000 * 1000 * ext_call.return_data[0] * cd[36] / (ext_call.return_data[0] * sub_296f9ca4) - (cd[36] * sub_296f9ca4) * ext_call.return_data[0]) / (ext_call.return_data[0] * sub_296f9ca4) - sub_296f9ca4 - (1000 * ext_call.return_data[0] * cd[36] / (ext_call.return_data[0] * sub_296f9ca4) - (cd[36] * sub_296f9ca4) * sub_296f9ca4)):
        revert with 0, 17
    return (1000 * ext_call.return_data[0] * cd[36] / (ext_call.return_data[0] * sub_296f9ca4) - (cd[36] * sub_296f9ca4)) + 1, 
           ((1000 * ext_call.return_data[0]) + (1000 * 1000 * ext_call.return_data[0] * cd[36] / (ext_call.return_data[0] * sub_296f9ca4) - (cd[36] * sub_296f9ca4) * ext_call.return_data[0]) / (ext_call.return_data[0] * sub_296f9ca4) - sub_296f9ca4 - (1000 * ext_call.return_data[0] * cd[36] / (ext_call.return_data[0] * sub_296f9ca4) - (cd[36] * sub_296f9ca4) * sub_296f9ca4)) + 1
}

function sub_1ae0d31c(?) {
    require calldata.size - 4 >= 288
    require arg2 == address(arg2)
    require calldata.size >= 132
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require arg3 + (32 * arg3.length) + 36 <= calldata.size
    require arg4 == address(arg4)
    require arg5 == address(arg5)
    require arg6 == address(arg6)
    mem[96 len 64] = call.data[68 len 64]
    mem[160] = arg3.length
    mem[192 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg3.length) + 196] = address(arg2)
    call address(call.data[100]).borrowBalanceStored(address arg1) with:
         gas gas_remaining wei
        args address(arg2)
    mem[(32 * arg3.length) + 192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg1 >= ext_call.return_data[0]:
        revert with 0, 'seems overrunned'
    mem[(32 * arg3.length) + ceil32(return_data.size) + 196] = address(arg2)
    call address(call.data[100]).borrowBalanceCurrent(address arg1) with:
         gas gas_remaining wei
        args address(arg2)
    mem[(32 * arg3.length) + ceil32(return_data.size) + 192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] and arg7 > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if not -ext_call.return_data[0] * arg7 / 10000:
        revert with 0, 'borrow amount is 0'
    mem[(32 * arg3.length) + (2 * ceil32(return_data.size)) + 192 len 64] = call.data[calldata.size len 64]
    if 0 >= arg3.length:
        revert with 0, 50
    _19 = mem[192]
    if 1 >= arg3.length:
        revert with 0, 50
    mem[(32 * arg3.length) + (2 * ceil32(return_data.size)) + 260] = mem[236 len 20]
    staticcall address(call.data[68]).0x70a08231 with:
            gas gas_remaining wei
           args mem[236 len 20]
    mem[(32 * arg3.length) + (2 * ceil32(return_data.size)) + 256] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(32 * arg3.length) + (4 * ceil32(return_data.size)) + 260] = mem[236 len 20]
    staticcall mem[204 len 20].0x70a08231 with:
            gas gas_remaining wei
           args mem[236 len 20]
    mem[(32 * arg3.length) + (4 * ceil32(return_data.size)) + 256] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= ext_call.return_data[0] * arg7 / 10000:
        if not call.data[calldata.size]:
            revert with 0, 'didnt get uniswap path'
        mem[(32 * arg3.length) + (6 * ceil32(return_data.size)) + 288] = address(arg2)
        idx = 0
        s = 96
        t = (32 * arg3.length) + (6 * ceil32(return_data.size)) + 320
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(32 * arg3.length) + (6 * ceil32(return_data.size)) + 384] = ext_call.return_data[0] * arg7 / 10000
        mem[(32 * arg3.length) + (6 * ceil32(return_data.size)) + 416] = 288
        mem[(32 * arg3.length) + (6 * ceil32(return_data.size)) + 576] = arg3.length
        idx = 0
        s = 192
        t = (32 * arg3.length) + (6 * ceil32(return_data.size)) + 608
        while idx < arg3.length:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(32 * arg3.length) + (6 * ceil32(return_data.size)) + 448] = address(arg4)
        mem[(32 * arg3.length) + (6 * ceil32(return_data.size)) + 480] = address(arg5)
        mem[(32 * arg3.length) + (6 * ceil32(return_data.size)) + 512 len 64] = call.data[calldata.size len 64]
        if 1 >= arg3.length:
            revert with 0, 50
        sub_c70968e7Address = mem[236 len 20]
        if 0 >= arg3.length:
            revert with 0, 50
        if 1 >= arg3.length:
            revert with 0, 50
        mem[(64 * arg3.length) + (6 * ceil32(return_data.size)) + 608] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
        if call.data[80 len 20] >= mem[204 len 20]:
            mem[(64 * arg3.length) + (6 * ceil32(return_data.size)) + 612] = 0
            mem[(64 * arg3.length) + (6 * ceil32(return_data.size)) + 644] = ext_call.return_data[0] * arg7 / 10000
            mem[(64 * arg3.length) + (6 * ceil32(return_data.size)) + 676] = this.address
            mem[(64 * arg3.length) + (6 * ceil32(return_data.size)) + 708] = 128
            mem[(64 * arg3.length) + (6 * ceil32(return_data.size)) + 740] = (96 * arg3.length) + 320
            mem[(64 * arg3.length) + (6 * ceil32(return_data.size)) + 772 len ceil32(96 * arg3.length) + 10] = mem[(32 * arg3.length) + (6 * ceil32(return_data.size)) + 288 len ceil32(96 * arg3.length) + 10]
            require ext_code.size(mem[236 len 20])
            call mem[236 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 0, ext_call.return_data[0] * arg7 / 10000, address(this.address), 128, (96 * arg3.length) + 320, mem[(32 * arg3.length) + (6 * ceil32(return_data.size)) + 288 len ceil32(96 * arg3.length) + 10]
        else:
            mem[(64 * arg3.length) + (6 * ceil32(return_data.size)) + 612] = ext_call.return_data[0] * arg7 / 10000
            mem[(64 * arg3.length) + (6 * ceil32(return_data.size)) + 644] = 0
            mem[(64 * arg3.length) + (6 * ceil32(return_data.size)) + 676] = this.address
            mem[(64 * arg3.length) + (6 * ceil32(return_data.size)) + 708] = 128
            mem[(64 * arg3.length) + (6 * ceil32(return_data.size)) + 740] = (96 * arg3.length) + 320
            mem[(64 * arg3.length) + (6 * ceil32(return_data.size)) + 772 len ceil32(96 * arg3.length) + 10] = mem[(32 * arg3.length) + (6 * ceil32(return_data.size)) + 288 len ceil32(96 * arg3.length) + 10]
            require ext_code.size(mem[236 len 20])
            call mem[236 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args ext_call.return_data[0] * arg7 / 10000, 0, address(this.address), 128, (96 * arg3.length) + 320, mem[(32 * arg3.length) + (6 * ceil32(return_data.size)) + 288 len ceil32(96 * arg3.length) + 10]
    else:
        if ext_call.return_data[0] < ext_call.return_data[0] * arg7 / 10000:
            revert with 0, 17
        if ext_call.return_data[0] - (ext_call.return_data[0] * arg7 / 10000) and sub_296f9ca4 > -1 / ext_call.return_data[0] - (ext_call.return_data[0] * arg7 / 10000):
            revert with 0, 17
        if ext_call.return_data[0] and ext_call.return_data[0] * arg7 / 10000 > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if ext_call.return_data[0] * ext_call.return_data[0] * arg7 / 10000 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
            revert with 0, 17
        if not (ext_call.return_data[0] * sub_296f9ca4) - (ext_call.return_data[0] * arg7 / 10000 * sub_296f9ca4):
            revert with 0, 18
        if 1 > !(1000 * ext_call.return_data[0] * ext_call.return_data[0] * arg7 / 10000 / (ext_call.return_data[0] * sub_296f9ca4) - (ext_call.return_data[0] * arg7 / 10000 * sub_296f9ca4)):
            revert with 0, 17
        mem[(32 * arg3.length) + (2 * ceil32(return_data.size)) + 192] = (1000 * ext_call.return_data[0] * ext_call.return_data[0] * arg7 / 10000 / (ext_call.return_data[0] * sub_296f9ca4) - (ext_call.return_data[0] * arg7 / 10000 * sub_296f9ca4)) + 1
        if -arg3.length + 4:
            if not (1000 * ext_call.return_data[0] * ext_call.return_data[0] * arg7 / 10000 / (ext_call.return_data[0] * sub_296f9ca4) - (ext_call.return_data[0] * arg7 / 10000 * sub_296f9ca4)) + 1:
                revert with 0, 'didnt get uniswap path'
            mem[(32 * arg3.length) + (6 * ceil32(return_data.size)) + 288] = address(arg2)
            idx = 0
            s = 96
            t = (32 * arg3.length) + (6 * ceil32(return_data.size)) + 320
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(32 * arg3.length) + (6 * ceil32(return_data.size)) + 384] = ext_call.return_data[0] * arg7 / 10000
            mem[(32 * arg3.length) + (6 * ceil32(return_data.size)) + 416] = 288
            mem[(32 * arg3.length) + (6 * ceil32(return_data.size)) + 576] = arg3.length
            idx = 0
            s = 192
            t = (32 * arg3.length) + (6 * ceil32(return_data.size)) + 608
            while idx < arg3.length:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(32 * arg3.length) + (6 * ceil32(return_data.size)) + 448] = address(arg4)
            mem[(32 * arg3.length) + (6 * ceil32(return_data.size)) + 480] = address(arg5)
            mem[(32 * arg3.length) + (6 * ceil32(return_data.size)) + 512 len 64] = (1000 * ext_call.return_data[0] * ext_call.return_data[0] * arg7 / 10000 / (ext_call.return_data[0] * sub_296f9ca4) - (ext_call.return_data[0] * arg7 / 10000 * sub_296f9ca4)) + 1, call.data[calldata.size + 32]
            if 1 >= arg3.length:
                revert with 0, 50
            sub_c70968e7Address = mem[236 len 20]
            if 0 >= arg3.length:
                revert with 0, 50
            if 1 >= arg3.length:
                revert with 0, 50
            mem[(64 * arg3.length) + (6 * ceil32(return_data.size)) + 608] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
            if call.data[80 len 20] >= mem[204 len 20]:
                mem[(64 * arg3.length) + (6 * ceil32(return_data.size)) + 612] = 0
                mem[(64 * arg3.length) + (6 * ceil32(return_data.size)) + 644] = ext_call.return_data[0] * arg7 / 10000
                mem[(64 * arg3.length) + (6 * ceil32(return_data.size)) + 676] = this.address
                mem[(64 * arg3.length) + (6 * ceil32(return_data.size)) + 708] = 128
                mem[(64 * arg3.length) + (6 * ceil32(return_data.size)) + 740] = (96 * arg3.length) + 320
                mem[(64 * arg3.length) + (6 * ceil32(return_data.size)) + 772 len ceil32(96 * arg3.length) + 10] = mem[(32 * arg3.length) + (6 * ceil32(return_data.size)) + 288 len ceil32(96 * arg3.length) + 10]
                require ext_code.size(mem[236 len 20])
                call mem[236 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 0, ext_call.return_data[0] * arg7 / 10000, address(this.address), 128, (96 * arg3.length) + 320, mem[(32 * arg3.length) + (6 * ceil32(return_data.size)) + 288 len ceil32(96 * arg3.length) + 10]
            else:
                mem[(64 * arg3.length) + (6 * ceil32(return_data.size)) + 612] = ext_call.return_data[0] * arg7 / 10000
                mem[(64 * arg3.length) + (6 * ceil32(return_data.size)) + 644] = 0
                mem[(64 * arg3.length) + (6 * ceil32(return_data.size)) + 676] = this.address
                mem[(64 * arg3.length) + (6 * ceil32(return_data.size)) + 708] = 128
                mem[(64 * arg3.length) + (6 * ceil32(return_data.size)) + 740] = (96 * arg3.length) + 320
                mem[(64 * arg3.length) + (6 * ceil32(return_data.size)) + 772 len ceil32(96 * arg3.length) + 10] = mem[(32 * arg3.length) + (6 * ceil32(return_data.size)) + 288 len ceil32(96 * arg3.length) + 10]
                require ext_code.size(mem[236 len 20])
                call mem[236 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0] * arg7 / 10000, 0, address(this.address), 128, (96 * arg3.length) + 320, mem[(32 * arg3.length) + (6 * ceil32(return_data.size)) + 288 len ceil32(96 * arg3.length) + 10]
        else:
            if 2 >= arg3.length:
                revert with 0, 50
            _37 = mem[256]
            if 3 >= arg3.length:
                revert with 0, 50
            _40 = mem[288]
            staticcall address(_19).0x70a08231 with:
                    gas gas_remaining wei
                   args mem[300 len 20]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(32 * arg3.length) + (7 * ceil32(return_data.size)) + 260] = mem[300 len 20]
            staticcall address(_37).0x70a08231 with:
                    gas gas_remaining wei
                   args address(_40)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] <= (1000 * ext_call.return_data[0] * ext_call.return_data[0] * arg7 / 10000 / (ext_call.return_data[0] * sub_296f9ca4) - (ext_call.return_data[0] * arg7 / 10000 * sub_296f9ca4)) + 1:
                revert with 0, 'didnt get uniswap path'
            if ext_call.return_data[0] < (1000 * ext_call.return_data[0] * ext_call.return_data[0] * arg7 / 10000 / (ext_call.return_data[0] * sub_296f9ca4) - (ext_call.return_data[0] * arg7 / 10000 * sub_296f9ca4)) + 1:
                revert with 0, 17
            if ext_call.return_data[0] + -(1000 * ext_call.return_data[0] * ext_call.return_data[0] * arg7 / 10000 / (ext_call.return_data[0] * sub_296f9ca4) - (ext_call.return_data[0] * arg7 / 10000 * sub_296f9ca4)) - 1 and sub_296f9ca4 > -1 / ext_call.return_data[0] + -(1000 * ext_call.return_data[0] * ext_call.return_data[0] * arg7 / 10000 / (ext_call.return_data[0] * sub_296f9ca4) - (ext_call.return_data[0] * arg7 / 10000 * sub_296f9ca4)) - 1:
                revert with 0, 17
            if ext_call.return_data[0] and (1000 * ext_call.return_data[0] * ext_call.return_data[0] * arg7 / 10000 / (ext_call.return_data[0] * sub_296f9ca4) - (ext_call.return_data[0] * arg7 / 10000 * sub_296f9ca4)) + 1 > -1 / ext_call.return_data[0]:
                revert with 0, 17
            if ext_call.return_data[0] + (1000 * ext_call.return_data[0] * ext_call.return_data[0] * arg7 / 10000 / (ext_call.return_data[0] * sub_296f9ca4) - (ext_call.return_data[0] * arg7 / 10000 * sub_296f9ca4) * ext_call.return_data[0]) > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                revert with 0, 17
            if not (ext_call.return_data[0] * sub_296f9ca4) - sub_296f9ca4 - (1000 * ext_call.return_data[0] * ext_call.return_data[0] * arg7 / 10000 / (ext_call.return_data[0] * sub_296f9ca4) - (ext_call.return_data[0] * arg7 / 10000 * sub_296f9ca4) * sub_296f9ca4):
                revert with 0, 18
            if 1 > !((1000 * ext_call.return_data[0]) + (1000 * 1000 * ext_call.return_data[0] * ext_call.return_data[0] * arg7 / 10000 / (ext_call.return_data[0] * sub_296f9ca4) - (ext_call.return_data[0] * arg7 / 10000 * sub_296f9ca4) * ext_call.return_data[0]) / (ext_call.return_data[0] * sub_296f9ca4) - sub_296f9ca4 - (1000 * ext_call.return_data[0] * ext_call.return_data[0] * arg7 / 10000 / (ext_call.return_data[0] * sub_296f9ca4) - (ext_call.return_data[0] * arg7 / 10000 * sub_296f9ca4) * sub_296f9ca4)):
                revert with 0, 17
            mem[(32 * arg3.length) + (2 * ceil32(return_data.size)) + 224] = ((1000 * ext_call.return_data[0]) + (1000 * 1000 * ext_call.return_data[0] * ext_call.return_data[0] * arg7 / 10000 / (ext_call.return_data[0] * sub_296f9ca4) - (ext_call.return_data[0] * arg7 / 10000 * sub_296f9ca4) * ext_call.return_data[0]) / (ext_call.return_data[0] * sub_296f9ca4) - sub_296f9ca4 - (1000 * ext_call.return_data[0] * ext_call.return_data[0] * arg7 / 10000 / (ext_call.return_data[0] * sub_296f9ca4) - (ext_call.return_data[0] * arg7 / 10000 * sub_296f9ca4) * sub_296f9ca4)) + 1
            if not (1000 * ext_call.return_data[0] * ext_call.return_data[0] * arg7 / 10000 / (ext_call.return_data[0] * sub_296f9ca4) - (ext_call.return_data[0] * arg7 / 10000 * sub_296f9ca4)) + 1:
                revert with 0, 'didnt get uniswap path'
            mem[(32 * arg3.length) + (8 * ceil32(return_data.size)) + 288] = address(arg2)
            idx = 0
            s = 96
            t = (32 * arg3.length) + (8 * ceil32(return_data.size)) + 320
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(32 * arg3.length) + (8 * ceil32(return_data.size)) + 384] = ext_call.return_data[0] * arg7 / 10000
            mem[(32 * arg3.length) + (8 * ceil32(return_data.size)) + 416] = 288
            mem[(32 * arg3.length) + (8 * ceil32(return_data.size)) + 576] = arg3.length
            idx = 0
            s = 192
            t = (32 * arg3.length) + (8 * ceil32(return_data.size)) + 608
            while idx < arg3.length:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(32 * arg3.length) + (8 * ceil32(return_data.size)) + 448] = address(arg4)
            mem[(32 * arg3.length) + (8 * ceil32(return_data.size)) + 480] = address(arg5)
            mem[(32 * arg3.length) + (8 * ceil32(return_data.size)) + 512 len 64] = mem[(32 * arg3.length) + (2 * ceil32(return_data.size)) + 192 len 64]
            if 1 >= arg3.length:
                revert with 0, 50
            sub_c70968e7Address = mem[236 len 20]
            if 0 >= arg3.length:
                revert with 0, 50
            if 1 >= arg3.length:
                revert with 0, 50
            mem[(64 * arg3.length) + (8 * ceil32(return_data.size)) + 608] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
            if call.data[80 len 20] >= mem[204 len 20]:
                mem[(64 * arg3.length) + (8 * ceil32(return_data.size)) + 612] = 0
                mem[(64 * arg3.length) + (8 * ceil32(return_data.size)) + 644] = ext_call.return_data[0] * arg7 / 10000
                mem[(64 * arg3.length) + (8 * ceil32(return_data.size)) + 676] = this.address
                mem[(64 * arg3.length) + (8 * ceil32(return_data.size)) + 708] = 128
                mem[(64 * arg3.length) + (8 * ceil32(return_data.size)) + 740] = (96 * arg3.length) + 320
                mem[(64 * arg3.length) + (8 * ceil32(return_data.size)) + 772 len ceil32(96 * arg3.length) + 10] = mem[(32 * arg3.length) + (8 * ceil32(return_data.size)) + 288 len ceil32(96 * arg3.length) + 10]
                require ext_code.size(mem[236 len 20])
                call mem[236 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 0, ext_call.return_data[0] * arg7 / 10000, address(this.address), 128, (96 * arg3.length) + 320, mem[(32 * arg3.length) + (8 * ceil32(return_data.size)) + 288 len ceil32(96 * arg3.length) + 10]
            else:
                mem[(64 * arg3.length) + (8 * ceil32(return_data.size)) + 612] = ext_call.return_data[0] * arg7 / 10000
                mem[(64 * arg3.length) + (8 * ceil32(return_data.size)) + 644] = 0
                mem[(64 * arg3.length) + (8 * ceil32(return_data.size)) + 676] = this.address
                mem[(64 * arg3.length) + (8 * ceil32(return_data.size)) + 708] = 128
                mem[(64 * arg3.length) + (8 * ceil32(return_data.size)) + 740] = (96 * arg3.length) + 320
                mem[(64 * arg3.length) + (8 * ceil32(return_data.size)) + 772 len ceil32(96 * arg3.length) + 10] = mem[(32 * arg3.length) + (8 * ceil32(return_data.size)) + 288 len ceil32(96 * arg3.length) + 10]
                require ext_code.size(mem[236 len 20])
                call mem[236 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0] * arg7 / 10000, 0, address(this.address), 128, (96 * arg3.length) + 320, mem[(32 * arg3.length) + (8 * ceil32(return_data.size)) + 288 len ceil32(96 * arg3.length) + 10]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
