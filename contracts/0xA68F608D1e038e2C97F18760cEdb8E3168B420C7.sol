contract main {




// =====================  Runtime code  =====================


#
#  - uniswapV2Call(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#  - hswapV2Call(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#  - pancakeCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#  - sub_924ba9cc(?)
#  - joeCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#
address owner;
address sub_c70968e7Address;
uint256 sub_296f9ca4;
address beneficiaryAddress;
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

function wEth() {
    return wEthAddress
}

function close() {
    require msg.sender == owner
    selfdestruct(owner)
}

function _fallback() payable {
  stop
}

function sub_a2899a25(?) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    wEthAddress = arg1
}

function sub_f602f731(?) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    sub_296f9ca4 = arg1
}

function updateOwner(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    owner = arg1
}

function updateBeneficiary(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    beneficiaryAddress = arg1
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
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    require msg.sender == owner
    call arg1 with:
       value arg3 wei
         gas gas_remaining wei
        args arg2[all]
}

function sub_027d6f56(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= 4294967296
    require cd[4] + 36 <= calldata.size
    require ('cd', 4).length <= 4294967296 and cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    while idx < ('cd', 4).length:
        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
        staticcall address(cd[((32 * idx) + cd[4] + 36)]).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[100] = owner
        mem[132] = ext_call.return_data[0]
        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
        call address(cd[((32 * idx) + cd[4] + 36)]).0xa9059cbb with:
             gas gas_remaining wei
            args owner, ext_call.return_data[0]
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        idx = idx + 1
        continue 
}

function sub_627d51a2(?) {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    mem[128 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg3.length) + 128 len 64] = code.data[10295 len 64]
    require 0 < arg3.length
    _4 = mem[128]
    require 1 < arg3.length
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args mem[172 len 20]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(32 * arg3.length) + 196] = mem[172 len 20]
    require ext_code.size(mem[140 len 20])
    staticcall mem[140 len 20].0x70a08231 with:
            gas gas_remaining wei
           args mem[172 len 20]
    mem[(32 * arg3.length) + 192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= arg2:
        return code.data[10295 len 64]
    require (ext_call.return_data[0] * sub_296f9ca4) - (arg2 * sub_296f9ca4)
    mem[(32 * arg3.length) + 128] = (1000 * ext_call.return_data[0] * arg2 / (ext_call.return_data[0] * sub_296f9ca4) - (arg2 * sub_296f9ca4)) + 1
    if arg3.length != 4:
        return (1000 * ext_call.return_data[0] * arg2 / (ext_call.return_data[0] * sub_296f9ca4) - (arg2 * sub_296f9ca4)) + 1, 
               code.data[10327 len 32]
    require 2 < arg3.length
    require 3 < arg3.length
    require ext_code.size(address(_4))
    staticcall address(_4).0x70a08231 with:
            gas gas_remaining wei
           args mem[236 len 20]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(mem[204 len 20])
    staticcall mem[204 len 20].0x70a08231 with:
            gas gas_remaining wei
           args mem[236 len 20]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= (1000 * ext_call.return_data[0] * arg2 / (ext_call.return_data[0] * sub_296f9ca4) - (arg2 * sub_296f9ca4)) + 1:
        return 0, code.data[10327 len 32]
    require (ext_call.return_data[0] * sub_296f9ca4) - sub_296f9ca4 - (1000 * ext_call.return_data[0] * arg2 / (ext_call.return_data[0] * sub_296f9ca4) - (arg2 * sub_296f9ca4) * sub_296f9ca4)
    return (1000 * ext_call.return_data[0] * arg2 / (ext_call.return_data[0] * sub_296f9ca4) - (arg2 * sub_296f9ca4)) + 1, 
           ((1000 * ext_call.return_data[0]) + (1000 * 1000 * ext_call.return_data[0] * arg2 / (ext_call.return_data[0] * sub_296f9ca4) - (arg2 * sub_296f9ca4) * ext_call.return_data[0]) / (ext_call.return_data[0] * sub_296f9ca4) - sub_296f9ca4 - (1000 * ext_call.return_data[0] * arg2 / (ext_call.return_data[0] * sub_296f9ca4) - (arg2 * sub_296f9ca4) * sub_296f9ca4)) + 1
}

function sub_aa330671(?) {
    require calldata.size - 4 >= 256
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + (32 * arg4.length) + 36 <= calldata.size
    mem[192 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    require ext_code.size(address(call.data[100]))
    staticcall address(call.data[100]).borrowBalanceStored(address arg1) with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg1 >= ext_call.return_data[0]:
        revert with 0, 'seems overruned'
    require ext_code.size(address(call.data[100]))
    call address(call.data[100]).borrowBalanceCurrent(address arg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not arg5 * ext_call.return_data[0] / 10000:
        revert with 0, 'borrow amount is 0'
    require sub_296f9ca4
    mem[(32 * arg4.length) + 192 len 64] = code.data[10295 len 64]
    mem[(32 * arg4.length) + 192] = (1000 * arg5 * ext_call.return_data[0] / 10000 / sub_296f9ca4) + 1
    mem[(32 * arg4.length) + 608 len floor32(arg4.length)] = call.data[arg4 + 36 len floor32(arg4.length)]
    require 1 < arg4.length
    sub_c70968e7Address = mem[236 len 20]
    require 1 < arg4.length
    mem[(64 * arg4.length) + 608] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
    if call.data[80 len 20] > arg3:
        mem[(64 * arg4.length) + 612] = 0
        mem[(64 * arg4.length) + 644] = arg5 * ext_call.return_data[0] / 10000
        mem[(64 * arg4.length) + 676] = this.address
        mem[(64 * arg4.length) + 708] = 128
        mem[(64 * arg4.length) + 740] = (96 * arg4.length) + 320
        if 0 >= (96 * arg4.length) + 320:
            if not (96 * arg4.length) + 320 % 32:
                require ext_code.size(mem[236 len 20])
                call mem[236 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 0, arg5 * ext_call.return_data[0] / 10000, address(this.address), 128, mem[(64 * arg4.length) + 740 len (96 * arg4.length) + 352]
            else:
                mem[floor32((96 * arg4.length) + 320) + (64 * arg4.length) + 772] = mem[floor32((96 * arg4.length) + 320) + (64 * arg4.length) + -((96 * arg4.length) + 320 % 32) + 804 len (96 * arg4.length) + 320 % 32]
                require ext_code.size(mem[236 len 20])
                call mem[236 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 0, arg5 * ext_call.return_data[0] / 10000, address(this.address), 128, (96 * arg4.length) + 320, mem[(64 * arg4.length) + 772 len floor32((96 * arg4.length) + 320) + 32]
        else:
            mem[(64 * arg4.length) + 772] = arg2
            mem[(64 * arg4.length) + 804 len ceil32(96 * arg4.length) + 9] = call.data[68 len 64], arg5 * ext_call.return_data[0] / 10000, 288, address(call.data[100]), address(call.data[68]), code.data[10327 len 32] >> 256, arg4.length, mem[(32 * arg4.length) + 608 len ceil32(96 * arg4.length) - 279]
            if not (96 * arg4.length) + 320 % 32:
                require ext_code.size(mem[236 len 20])
                call mem[236 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 0, arg5 * ext_call.return_data[0] / 10000, address(this.address), 128, mem[(64 * arg4.length) + 740 len (96 * arg4.length) + 352]
            else:
                mem[floor32((96 * arg4.length) + 320) + (64 * arg4.length) + 772] = mem[floor32((96 * arg4.length) + 320) + (64 * arg4.length) + -((96 * arg4.length) + 320 % 32) + 804 len (96 * arg4.length) + 320 % 32]
                require ext_code.size(mem[236 len 20])
                call mem[236 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 0, arg5 * ext_call.return_data[0] / 10000, address(this.address), 128, (96 * arg4.length) + 320, address(arg2), Mask(8 * ceil32(96 * arg4.length) + 9, -(8 * ceil32(96 * arg4.length) + 9) + 256, mem[(32 * arg4.length) + 608 len ceil32(96 * arg4.length) - 279]) << (8 * ceil32(96 * arg4.length) + 9) - 256, mem[(64 * arg4.length) + ceil32(96 * arg4.length) + 813 len floor32((96 * arg4.length) + 320) + -ceil32(96 * arg4.length) - 9]
    else:
        mem[(64 * arg4.length) + 612] = arg5 * ext_call.return_data[0] / 10000
        mem[(64 * arg4.length) + 644] = 0
        mem[(64 * arg4.length) + 676] = this.address
        mem[(64 * arg4.length) + 708] = 128
        mem[(64 * arg4.length) + 740] = (96 * arg4.length) + 320
        if 0 >= (96 * arg4.length) + 320:
            if not (96 * arg4.length) + 320 % 32:
                require ext_code.size(mem[236 len 20])
                call mem[236 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args arg5 * ext_call.return_data[0] / 10000, 0, address(this.address), 128, mem[(64 * arg4.length) + 740 len (96 * arg4.length) + 352]
            else:
                mem[floor32((96 * arg4.length) + 320) + (64 * arg4.length) + 772] = mem[floor32((96 * arg4.length) + 320) + (64 * arg4.length) + -((96 * arg4.length) + 320 % 32) + 804 len (96 * arg4.length) + 320 % 32]
                require ext_code.size(mem[236 len 20])
                call mem[236 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args arg5 * ext_call.return_data[0] / 10000, 0, address(this.address), 128, (96 * arg4.length) + 320, mem[(64 * arg4.length) + 772 len floor32((96 * arg4.length) + 320) + 32]
        else:
            mem[(64 * arg4.length) + 772] = arg2
            mem[(64 * arg4.length) + 804 len ceil32(96 * arg4.length) + 9] = call.data[68 len 64], arg5 * ext_call.return_data[0] / 10000, 288, address(call.data[100]), address(call.data[68]), code.data[10327 len 32] >> 256, arg4.length, mem[(32 * arg4.length) + 608 len ceil32(96 * arg4.length) - 279]
            if not (96 * arg4.length) + 320 % 32:
                require ext_code.size(mem[236 len 20])
                call mem[236 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args arg5 * ext_call.return_data[0] / 10000, 0, address(this.address), 128, mem[(64 * arg4.length) + 740 len (96 * arg4.length) + 352]
            else:
                mem[floor32((96 * arg4.length) + 320) + (64 * arg4.length) + 772] = mem[floor32((96 * arg4.length) + 320) + (64 * arg4.length) + -((96 * arg4.length) + 320 % 32) + 804 len (96 * arg4.length) + 320 % 32]
                require ext_code.size(mem[236 len 20])
                call mem[236 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args arg5 * ext_call.return_data[0] / 10000, 0, address(this.address), 128, (96 * arg4.length) + 320, address(arg2), Mask(8 * ceil32(96 * arg4.length) + 9, -(8 * ceil32(96 * arg4.length) + 9) + 256, mem[(32 * arg4.length) + 608 len ceil32(96 * arg4.length) - 279]) << (8 * ceil32(96 * arg4.length) + 9) - 256, mem[(64 * arg4.length) + ceil32(96 * arg4.length) + 813 len floor32((96 * arg4.length) + 320) + -ceil32(96 * arg4.length) - 9]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_1ae0d31c(?) {
    require calldata.size - 4 >= 288
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    mem[192 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    require ext_code.size(address(call.data[100]))
    staticcall address(call.data[100]).borrowBalanceStored(address arg1) with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg1 >= ext_call.return_data[0]:
        revert with 0, 'seems overrunned'
    require ext_code.size(address(call.data[100]))
    call address(call.data[100]).borrowBalanceCurrent(address arg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not arg6 * ext_call.return_data[0] / 10000:
        revert with 0, 'borrow amount is 0'
    mem[(32 * arg3.length) + 192 len 64] = code.data[10295 len 64]
    mem[(32 * arg3.length) + 256 len 64] = code.data[10295 len 64]
    require 0 < arg3.length
    require 1 < arg3.length
    require ext_code.size(address(call.data[68]))
    staticcall address(call.data[68]).0x70a08231 with:
            gas gas_remaining wei
           args mem[236 len 20]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(mem[204 len 20])
    staticcall mem[204 len 20].0x70a08231 with:
            gas gas_remaining wei
           args mem[236 len 20]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= arg6 * ext_call.return_data[0] / 10000:
        if not code.data[10295 len 32]:
            revert with 0, 'didnt get uniswap path'
        mem[(32 * arg3.length) + 352] = arg2
        mem[(32 * arg3.length) + 384 len 64] = call.data[68 len 64]
        mem[(32 * arg3.length) + 448] = arg6 * ext_call.return_data[0] / 10000
        mem[(32 * arg3.length) + 512] = arg4
        mem[(32 * arg3.length) + 544] = arg5
        mem[(32 * arg3.length) + 576 len 64] = code.data[10295 len 64]
    else:
        require (ext_call.return_data[0] * sub_296f9ca4) - (arg6 * ext_call.return_data[0] / 10000 * sub_296f9ca4)
        mem[(32 * arg3.length) + 256] = (1000 * ext_call.return_data[0] * arg6 * ext_call.return_data[0] / 10000 / (ext_call.return_data[0] * sub_296f9ca4) - (arg6 * ext_call.return_data[0] / 10000 * sub_296f9ca4)) + 1
        if arg3.length != 4:
            if not (1000 * ext_call.return_data[0] * arg6 * ext_call.return_data[0] / 10000 / (ext_call.return_data[0] * sub_296f9ca4) - (arg6 * ext_call.return_data[0] / 10000 * sub_296f9ca4)) + 1:
                revert with 0, 'didnt get uniswap path'
            mem[(32 * arg3.length) + 352] = arg2
            mem[(32 * arg3.length) + 384 len 64] = call.data[68 len 64]
            mem[(32 * arg3.length) + 448] = arg6 * ext_call.return_data[0] / 10000
            mem[(32 * arg3.length) + 512] = arg4
            mem[(32 * arg3.length) + 544] = arg5
            mem[(32 * arg3.length) + 576 len 64] = (1000 * ext_call.return_data[0] * arg6 * ext_call.return_data[0] / 10000 / (ext_call.return_data[0] * sub_296f9ca4) - (arg6 * ext_call.return_data[0] / 10000 * sub_296f9ca4)) + 1, code.data[10327 len 32]
        else:
            require 2 < arg3.length
            require 3 < arg3.length
            require ext_code.size(mem[204 len 20])
            staticcall mem[204 len 20].0x70a08231 with:
                    gas gas_remaining wei
                   args mem[300 len 20]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(mem[268 len 20])
            staticcall mem[268 len 20].0x70a08231 with:
                    gas gas_remaining wei
                   args mem[300 len 20]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] <= (1000 * ext_call.return_data[0] * arg6 * ext_call.return_data[0] / 10000 / (ext_call.return_data[0] * sub_296f9ca4) - (arg6 * ext_call.return_data[0] / 10000 * sub_296f9ca4)) + 1:
                revert with 0, 'didnt get uniswap path'
            require (ext_call.return_data[0] * sub_296f9ca4) - sub_296f9ca4 - (1000 * ext_call.return_data[0] * arg6 * ext_call.return_data[0] / 10000 / (ext_call.return_data[0] * sub_296f9ca4) - (arg6 * ext_call.return_data[0] / 10000 * sub_296f9ca4) * sub_296f9ca4)
            if not (1000 * ext_call.return_data[0] * arg6 * ext_call.return_data[0] / 10000 / (ext_call.return_data[0] * sub_296f9ca4) - (arg6 * ext_call.return_data[0] / 10000 * sub_296f9ca4)) + 1:
                revert with 0, 'didnt get uniswap path'
            mem[(32 * arg3.length) + 352] = arg2
            mem[(32 * arg3.length) + 384 len 64] = call.data[68 len 64]
            mem[(32 * arg3.length) + 448] = arg6 * ext_call.return_data[0] / 10000
            mem[(32 * arg3.length) + 512] = arg4
            mem[(32 * arg3.length) + 544] = arg5
            mem[(32 * arg3.length) + 576 len 64] = (1000 * ext_call.return_data[0] * arg6 * ext_call.return_data[0] / 10000 / (ext_call.return_data[0] * sub_296f9ca4) - (arg6 * ext_call.return_data[0] / 10000 * sub_296f9ca4)) + 1, ((1000 * ext_call.return_data[0]) + (1000 * 1000 * ext_call.return_data[0] * arg6 * ext_call.return_data[0] / 10000 / (ext_call.return_data[0] * sub_296f9ca4) - (arg6 * ext_call.return_data[0] / 10000 * sub_296f9ca4) * ext_call.return_data[0]) / (ext_call.return_data[0] * sub_296f9ca4) - sub_296f9ca4 - (1000 * ext_call.return_data[0] * arg6 * ext_call.return_data[0] / 10000 / (ext_call.return_data[0] * sub_296f9ca4) - (arg6 * ext_call.return_data[0] / 10000 * sub_296f9ca4) * sub_296f9ca4)) + 1
    mem[(32 * arg3.length) + 480] = 288
    mem[(32 * arg3.length) + 640] = arg3.length
    mem[(32 * arg3.length) + 672 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
    require 1 < arg3.length
    sub_c70968e7Address = mem[236 len 20]
    require 0 < arg3.length
    require 1 < arg3.length
    mem[(64 * arg3.length) + 672] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
    if call.data[80 len 20] >= mem[204 len 20]:
        mem[(64 * arg3.length) + 676] = 0
        mem[(64 * arg3.length) + 708] = arg6 * ext_call.return_data[0] / 10000
        mem[(64 * arg3.length) + 740] = this.address
        mem[(64 * arg3.length) + 772] = 128
        mem[(64 * arg3.length) + 804] = (96 * arg3.length) + 320
        mem[(64 * arg3.length) + 836 len ceil32(96 * arg3.length) + 10] = mem[(32 * arg3.length) + 352 len ceil32(96 * arg3.length) + 10]
        if not (96 * arg3.length) + 320 % 32:
            require ext_code.size(mem[236 len 20])
            call mem[236 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 0, arg6 * ext_call.return_data[0] / 10000, address(this.address), 128, mem[(64 * arg3.length) + 804 len (96 * arg3.length) + 352]
        else:
            mem[floor32((96 * arg3.length) + 320) + (64 * arg3.length) + 836] = mem[floor32((96 * arg3.length) + 320) + (64 * arg3.length) + -((96 * arg3.length) + 320 % 32) + 868 len (96 * arg3.length) + 320 % 32]
            require ext_code.size(mem[236 len 20])
            call mem[236 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 0, arg6 * ext_call.return_data[0] / 10000, address(this.address), 128, (96 * arg3.length) + 320, mem[(32 * arg3.length) + 352 len ceil32(96 * arg3.length) + 10], mem[(64 * arg3.length) + ceil32(96 * arg3.length) + 846 len floor32((96 * arg3.length) + 320) + -ceil32(96 * arg3.length) + 22]
    else:
        mem[(64 * arg3.length) + 676] = arg6 * ext_call.return_data[0] / 10000
        mem[(64 * arg3.length) + 708] = 0
        mem[(64 * arg3.length) + 740] = this.address
        mem[(64 * arg3.length) + 772] = 128
        mem[(64 * arg3.length) + 804] = (96 * arg3.length) + 320
        mem[(64 * arg3.length) + 836 len ceil32(96 * arg3.length) + 10] = mem[(32 * arg3.length) + 352 len ceil32(96 * arg3.length) + 10]
        if not (96 * arg3.length) + 320 % 32:
            require ext_code.size(mem[236 len 20])
            call mem[236 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args arg6 * ext_call.return_data[0] / 10000, 0, address(this.address), 128, mem[(64 * arg3.length) + 804 len (96 * arg3.length) + 352]
        else:
            mem[floor32((96 * arg3.length) + 320) + (64 * arg3.length) + 836] = mem[floor32((96 * arg3.length) + 320) + (64 * arg3.length) + -((96 * arg3.length) + 320 % 32) + 868 len (96 * arg3.length) + 320 % 32]
            require ext_code.size(mem[236 len 20])
            call mem[236 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args arg6 * ext_call.return_data[0] / 10000, 0, address(this.address), 128, (96 * arg3.length) + 320, mem[(32 * arg3.length) + 352 len ceil32(96 * arg3.length) + 10], mem[(64 * arg3.length) + ceil32(96 * arg3.length) + 846 len floor32((96 * arg3.length) + 320) + -ceil32(96 * arg3.length) + 22]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
