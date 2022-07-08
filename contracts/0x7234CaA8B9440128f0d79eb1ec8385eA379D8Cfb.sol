contract main {




// =====================  Runtime code  =====================


#
#  - uniswapV2Call(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#
address owner;
uint8 stor1;
address stor1; offset 8
address sub_c70968e7Address;
uint256 sub_296f9ca4;
address beneficiaryAddress;

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

function close() {
    require msg.sender == owner
    selfdestruct(owner)
}

function _fallback() payable {
  stop
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
        staticcall address(cd[((32 * idx) + cd[4] + 36)]).balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[100] = owner
        mem[132] = ext_call.return_data[0]
        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
        call address(cd[((32 * idx) + cd[4] + 36)]).transfer(address arg1, uint256 arg2) with:
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
    mem[(32 * arg3.length) + 128 len 64] = code.data[15291 len 64]
    require 0 < arg3.length
    _4 = mem[128]
    require 1 < arg3.length
    require ext_code.size(arg1)
    staticcall arg1.balanceOf(address arg1) with:
            gas gas_remaining wei
           args mem[172 len 20]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(32 * arg3.length) + 196] = mem[172 len 20]
    require ext_code.size(mem[140 len 20])
    staticcall mem[140 len 20].balanceOf(address arg1) with:
            gas gas_remaining wei
           args mem[172 len 20]
    mem[(32 * arg3.length) + 192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= arg2:
        return code.data[15291 len 64]
    require (ext_call.return_data[0] * sub_296f9ca4) - (arg2 * sub_296f9ca4)
    mem[(32 * arg3.length) + 128] = (1000 * ext_call.return_data[0] * arg2 / (ext_call.return_data[0] * sub_296f9ca4) - (arg2 * sub_296f9ca4)) + 1
    if arg3.length != 4:
        return (1000 * ext_call.return_data[0] * arg2 / (ext_call.return_data[0] * sub_296f9ca4) - (arg2 * sub_296f9ca4)) + 1, 
               code.data[15323 len 32]
    require 2 < arg3.length
    require 3 < arg3.length
    require ext_code.size(address(_4))
    staticcall address(_4).balanceOf(address arg1) with:
            gas gas_remaining wei
           args mem[236 len 20]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(mem[204 len 20])
    staticcall mem[204 len 20].balanceOf(address arg1) with:
            gas gas_remaining wei
           args mem[236 len 20]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= (1000 * ext_call.return_data[0] * arg2 / (ext_call.return_data[0] * sub_296f9ca4) - (arg2 * sub_296f9ca4)) + 1:
        return 0, code.data[15323 len 32]
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
    if not ext_call.return_data[0] * arg5 / 10000:
        revert with 0, 'borrow amount is 0'
    require sub_296f9ca4
    mem[(32 * arg4.length) + 192 len 64] = code.data[15291 len 64]
    mem[(32 * arg4.length) + 192] = (1000 * ext_call.return_data[0] * arg5 / 10000 / sub_296f9ca4) + 1
    mem[(32 * arg4.length) + 288] = arg2
    mem[(32 * arg4.length) + 320 len 64] = call.data[68 len 64]
    mem[(32 * arg4.length) + 384] = ext_call.return_data[0] * arg5 / 10000
    mem[(32 * arg4.length) + 448] = address(call.data[100])
    mem[(32 * arg4.length) + 480] = address(call.data[68])
    mem[(32 * arg4.length) + 512 len 64] = (1000 * ext_call.return_data[0] * arg5 / 10000 / sub_296f9ca4) + 1, code.data[15323 len 32]
    mem[(32 * arg4.length) + 416] = 288
    mem[(32 * arg4.length) + 576] = arg4.length
    mem[(32 * arg4.length) + 608 len floor32(arg4.length)] = call.data[arg4 + 36 len floor32(arg4.length)]
    require 1 < arg4.length
    sub_c70968e7Address = mem[236 len 20]
    require 1 < arg4.length
    mem[(64 * arg4.length) + 608] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
    if call.data[80 len 20] > arg3:
        mem[(64 * arg4.length) + 612] = 0
        mem[(64 * arg4.length) + 644] = ext_call.return_data[0] * arg5 / 10000
        mem[(64 * arg4.length) + 676] = this.address
        mem[(64 * arg4.length) + 708] = 128
        mem[(64 * arg4.length) + 740] = (96 * arg4.length) + 320
        mem[(64 * arg4.length) + 772 len ceil32(96 * arg4.length) + 10] = mem[(32 * arg4.length) + 288 len ceil32(96 * arg4.length) + 10]
        if not (96 * arg4.length) + 320 % 32:
            require ext_code.size(mem[236 len 20])
            call mem[236 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 0, ext_call.return_data[0] * arg5 / 10000, address(this.address), 128, mem[(64 * arg4.length) + 740 len (96 * arg4.length) + 352]
        else:
            mem[floor32((96 * arg4.length) + 320) + (64 * arg4.length) + 772] = mem[floor32((96 * arg4.length) + 320) + (64 * arg4.length) + -((96 * arg4.length) + 320 % 32) + 804 len (96 * arg4.length) + 320 % 32]
            require ext_code.size(mem[236 len 20])
            call mem[236 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 0, ext_call.return_data[0] * arg5 / 10000, address(this.address), 128, (96 * arg4.length) + 320, mem[(32 * arg4.length) + 288 len ceil32(96 * arg4.length) + 10], mem[(64 * arg4.length) + ceil32(96 * arg4.length) + 782 len floor32((96 * arg4.length) + 320) + -ceil32(96 * arg4.length) + 22]
    else:
        mem[(64 * arg4.length) + 612] = ext_call.return_data[0] * arg5 / 10000
        mem[(64 * arg4.length) + 644] = 0
        mem[(64 * arg4.length) + 676] = this.address
        mem[(64 * arg4.length) + 708] = 128
        mem[(64 * arg4.length) + 740] = (96 * arg4.length) + 320
        mem[(64 * arg4.length) + 772 len ceil32(96 * arg4.length) + 10] = mem[(32 * arg4.length) + 288 len ceil32(96 * arg4.length) + 10]
        if not (96 * arg4.length) + 320 % 32:
            require ext_code.size(mem[236 len 20])
            call mem[236 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args ext_call.return_data[0] * arg5 / 10000, 0, address(this.address), 128, mem[(64 * arg4.length) + 740 len (96 * arg4.length) + 352]
        else:
            mem[floor32((96 * arg4.length) + 320) + (64 * arg4.length) + 772] = mem[floor32((96 * arg4.length) + 320) + (64 * arg4.length) + -((96 * arg4.length) + 320 % 32) + 804 len (96 * arg4.length) + 320 % 32]
            require ext_code.size(mem[236 len 20])
            call mem[236 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args ext_call.return_data[0] * arg5 / 10000, 0, address(this.address), 128, (96 * arg4.length) + 320, mem[(32 * arg4.length) + 288 len ceil32(96 * arg4.length) + 10], mem[(64 * arg4.length) + ceil32(96 * arg4.length) + 782 len floor32((96 * arg4.length) + 320) + -ceil32(96 * arg4.length) + 22]
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
    if not ext_call.return_data[0] * arg6 / 10000:
        revert with 0, 'borrow amount is 0'
    mem[(32 * arg3.length) + 192 len 64] = code.data[15291 len 64]
    mem[(32 * arg3.length) + 256 len 64] = code.data[15291 len 64]
    require 0 < arg3.length
    require 1 < arg3.length
    require ext_code.size(address(call.data[68]))
    staticcall address(call.data[68]).balanceOf(address arg1) with:
            gas gas_remaining wei
           args mem[236 len 20]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(mem[204 len 20])
    staticcall mem[204 len 20].balanceOf(address arg1) with:
            gas gas_remaining wei
           args mem[236 len 20]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= ext_call.return_data[0] * arg6 / 10000:
        if code.data[15291 len 32] <= 0:
            revert with 0, 'didnt get uniswap path'
        mem[(32 * arg3.length) + 352] = arg2
        mem[(32 * arg3.length) + 384 len 64] = call.data[68 len 64]
        mem[(32 * arg3.length) + 448] = ext_call.return_data[0] * arg6 / 10000
        mem[(32 * arg3.length) + 512] = arg4
        mem[(32 * arg3.length) + 544] = arg5
        mem[(32 * arg3.length) + 576 len 64] = code.data[15291 len 64]
    else:
        require (ext_call.return_data[0] * sub_296f9ca4) - (ext_call.return_data[0] * arg6 / 10000 * sub_296f9ca4)
        mem[(32 * arg3.length) + 256] = (1000 * ext_call.return_data[0] * ext_call.return_data[0] * arg6 / 10000 / (ext_call.return_data[0] * sub_296f9ca4) - (ext_call.return_data[0] * arg6 / 10000 * sub_296f9ca4)) + 1
        if arg3.length != 4:
            if (1000 * ext_call.return_data[0] * ext_call.return_data[0] * arg6 / 10000 / (ext_call.return_data[0] * sub_296f9ca4) - (ext_call.return_data[0] * arg6 / 10000 * sub_296f9ca4)) + 1 <= 0:
                revert with 0, 'didnt get uniswap path'
            mem[(32 * arg3.length) + 352] = arg2
            mem[(32 * arg3.length) + 384 len 64] = call.data[68 len 64]
            mem[(32 * arg3.length) + 448] = ext_call.return_data[0] * arg6 / 10000
            mem[(32 * arg3.length) + 512] = arg4
            mem[(32 * arg3.length) + 544] = arg5
            mem[(32 * arg3.length) + 576 len 64] = (1000 * ext_call.return_data[0] * ext_call.return_data[0] * arg6 / 10000 / (ext_call.return_data[0] * sub_296f9ca4) - (ext_call.return_data[0] * arg6 / 10000 * sub_296f9ca4)) + 1, code.data[15323 len 32]
        else:
            require 2 < arg3.length
            require 3 < arg3.length
            require ext_code.size(mem[204 len 20])
            staticcall mem[204 len 20].balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args mem[300 len 20]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(mem[268 len 20])
            staticcall mem[268 len 20].balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args mem[300 len 20]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] <= (1000 * ext_call.return_data[0] * ext_call.return_data[0] * arg6 / 10000 / (ext_call.return_data[0] * sub_296f9ca4) - (ext_call.return_data[0] * arg6 / 10000 * sub_296f9ca4)) + 1:
                revert with 0, 'didnt get uniswap path'
            require (ext_call.return_data[0] * sub_296f9ca4) - sub_296f9ca4 - (1000 * ext_call.return_data[0] * ext_call.return_data[0] * arg6 / 10000 / (ext_call.return_data[0] * sub_296f9ca4) - (ext_call.return_data[0] * arg6 / 10000 * sub_296f9ca4) * sub_296f9ca4)
            if (1000 * ext_call.return_data[0] * ext_call.return_data[0] * arg6 / 10000 / (ext_call.return_data[0] * sub_296f9ca4) - (ext_call.return_data[0] * arg6 / 10000 * sub_296f9ca4)) + 1 <= 0:
                revert with 0, 'didnt get uniswap path'
            mem[(32 * arg3.length) + 352] = arg2
            mem[(32 * arg3.length) + 384 len 64] = call.data[68 len 64]
            mem[(32 * arg3.length) + 448] = ext_call.return_data[0] * arg6 / 10000
            mem[(32 * arg3.length) + 512] = arg4
            mem[(32 * arg3.length) + 544] = arg5
            mem[(32 * arg3.length) + 576 len 64] = (1000 * ext_call.return_data[0] * ext_call.return_data[0] * arg6 / 10000 / (ext_call.return_data[0] * sub_296f9ca4) - (ext_call.return_data[0] * arg6 / 10000 * sub_296f9ca4)) + 1, ((1000 * ext_call.return_data[0]) + (1000 * 1000 * ext_call.return_data[0] * ext_call.return_data[0] * arg6 / 10000 / (ext_call.return_data[0] * sub_296f9ca4) - (ext_call.return_data[0] * arg6 / 10000 * sub_296f9ca4) * ext_call.return_data[0]) / (ext_call.return_data[0] * sub_296f9ca4) - sub_296f9ca4 - (1000 * ext_call.return_data[0] * ext_call.return_data[0] * arg6 / 10000 / (ext_call.return_data[0] * sub_296f9ca4) - (ext_call.return_data[0] * arg6 / 10000 * sub_296f9ca4) * sub_296f9ca4)) + 1
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
        mem[(64 * arg3.length) + 708] = ext_call.return_data[0] * arg6 / 10000
        mem[(64 * arg3.length) + 740] = this.address
        mem[(64 * arg3.length) + 772] = 128
        mem[(64 * arg3.length) + 804] = (96 * arg3.length) + 320
        mem[(64 * arg3.length) + 836 len ceil32(96 * arg3.length) + 10] = mem[(32 * arg3.length) + 352 len ceil32(96 * arg3.length) + 10]
        if not (96 * arg3.length) + 320 % 32:
            require ext_code.size(mem[236 len 20])
            call mem[236 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 0, ext_call.return_data[0] * arg6 / 10000, address(this.address), 128, mem[(64 * arg3.length) + 804 len (96 * arg3.length) + 352]
        else:
            mem[floor32((96 * arg3.length) + 320) + (64 * arg3.length) + 836] = mem[floor32((96 * arg3.length) + 320) + (64 * arg3.length) + -((96 * arg3.length) + 320 % 32) + 868 len (96 * arg3.length) + 320 % 32]
            require ext_code.size(mem[236 len 20])
            call mem[236 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 0, ext_call.return_data[0] * arg6 / 10000, address(this.address), 128, (96 * arg3.length) + 320, mem[(32 * arg3.length) + 352 len ceil32(96 * arg3.length) + 10], mem[(64 * arg3.length) + ceil32(96 * arg3.length) + 846 len floor32((96 * arg3.length) + 320) + -ceil32(96 * arg3.length) + 22]
    else:
        mem[(64 * arg3.length) + 676] = ext_call.return_data[0] * arg6 / 10000
        mem[(64 * arg3.length) + 708] = 0
        mem[(64 * arg3.length) + 740] = this.address
        mem[(64 * arg3.length) + 772] = 128
        mem[(64 * arg3.length) + 804] = (96 * arg3.length) + 320
        mem[(64 * arg3.length) + 836 len ceil32(96 * arg3.length) + 10] = mem[(32 * arg3.length) + 352 len ceil32(96 * arg3.length) + 10]
        if not (96 * arg3.length) + 320 % 32:
            require ext_code.size(mem[236 len 20])
            call mem[236 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args ext_call.return_data[0] * arg6 / 10000, 0, address(this.address), 128, mem[(64 * arg3.length) + 804 len (96 * arg3.length) + 352]
        else:
            mem[floor32((96 * arg3.length) + 320) + (64 * arg3.length) + 836] = mem[floor32((96 * arg3.length) + 320) + (64 * arg3.length) + -((96 * arg3.length) + 320 % 32) + 868 len (96 * arg3.length) + 320 % 32]
            require ext_code.size(mem[236 len 20])
            call mem[236 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args ext_call.return_data[0] * arg6 / 10000, 0, address(this.address), 128, (96 * arg3.length) + 320, mem[(32 * arg3.length) + 352 len ceil32(96 * arg3.length) + 10], mem[(64 * arg3.length) + ceil32(96 * arg3.length) + 846 len floor32((96 * arg3.length) + 320) + -ceil32(96 * arg3.length) + 22]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_924ba9cc(?) {
    require calldata.size - 4 >= 128
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[96] = arg2.length
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    if sub_c70968e7Address != msg.sender:
        revert with 0, 
                    32,
                    35,
                    0xfe6f6e6c79207065726d697373696f6e65642073776170207061697220616c6c6f7765,
                    mem[ceil32(arg2.length) + 231 len 29]
    if arg1 != this.address:
        revert with 0, 'only myself start the swap'
    mem[ceil32(arg2.length) + 128 len 64] = code.data[15291 len 64]
    mem[ceil32(arg2.length) + 192 len 64] = code.data[15291 len 64]
    require arg2.length >= 288
    _11 = mem[256]
    require mem[256] <= 4294967296
    require mem[256] + 64 <= arg2.length + 32
    require mem[mem[256] + 128] <= 4294967296 and mem[256] + (32 * mem[mem[256] + 128]) + 64 <= arg2.length + 32
    mem[ceil32(arg2.length) + 256] = mem[mem[256] + 128]
    _14 = mem[_11 + 128]
    mem[ceil32(arg2.length) + 288 len floor32(mem[_11 + 128])] = mem[_11 + 160 len floor32(mem[_11 + 128])]
    _12331 = mem[288]
    require ext_code.size(mem[172 len 20])
    staticcall mem[172 len 20].allowance(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(this.address), mem[204 len 20]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > mem[224]:
        mem[(32 * _14) + ceil32(arg2.length) + 324] = mem[224]
        mem[(32 * _14) + ceil32(arg2.length) + 356] = mem[300 len 20]
        require ext_code.size(mem[204 len 20])
        call mem[204 len 20].liquidateBorrow(address arg1, uint256 arg2, address arg3) with:
             gas gas_remaining wei
            args mem[140 len 20], mem[224], mem[300 len 20]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0, 'liquidation failed'
        require ext_code.size(mem[300 len 20])
        staticcall mem[300 len 20].balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(32 * _14) + ceil32(arg2.length) + 292] = ext_call.return_data[0]
        require ext_code.size(address(_12331))
        call address(_12331).redeem(uint256 arg1) with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        mem[(32 * _14) + ceil32(arg2.length) + 288] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if mem[ceil32(arg2.length) + 256] != 4:
            require 1 < mem[ceil32(arg2.length) + 256]
            _12375 = mem[352]
            require 0 < mem[ceil32(arg2.length) + 256]
            mem[(32 * _14) + ceil32(arg2.length) + 324] = mem[ceil32(arg2.length) + 332 len 20]
            if ext_code.hash(mem[ceil32(arg2.length) + 300 len 20]) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                revert with 0, 'SafeERC20: call to non-contract'
            if not ext_code.hash(mem[ceil32(arg2.length) + 300 len 20]):
                revert with 0, 'SafeERC20: call to non-contract'
            mem[(32 * _14) + ceil32(arg2.length) + 388 len 64] = 0, mem[(32 * _14) + ceil32(arg2.length) + 324], Mask(224, 32, _12375) >> 32
            call mem[ceil32(arg2.length) + 300 len 20].mem[(32 * _14) + ceil32(arg2.length) + 352 len 4] with:
                 gas gas_remaining wei
                args Mask(224, 32, _12375) << 224, mem[(32 * _14) + ceil32(arg2.length) + 452 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 
                                32,
                                41,
                                0x647472616e73666572205361666545524332303a206c6f772d6c6576656c2063616c6c206661696c65,
                                mem[(32 * _14) + ceil32(arg2.length) + 497 len 23]
                if arg2.length > 0:
                    require arg2.length >= 32
                    if not mem[128]:
                        revert with 0, 
                                    32,
                                    51,
                                    0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * _14) + ceil32(arg2.length) + 507 len 13]
            else:
                mem[(32 * _14) + ceil32(arg2.length) + 420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 
                                32,
                                41,
                                0x647472616e73666572205361666545524332303a206c6f772d6c6576656c2063616c6c206661696c65,
                                mem[(32 * _14) + ceil32(arg2.length) + ceil32(return_data.size) + 498 len 23]
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[(32 * _14) + ceil32(arg2.length) + 420]:
                        revert with 0, 
                                    32,
                                    51,
                                    0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * _14) + ceil32(arg2.length) + ceil32(return_data.size) + 508 len 13]
        else:
            require 3 < mem[ceil32(arg2.length) + 256]
            _12377 = mem[384]
            require 2 < mem[ceil32(arg2.length) + 256]
            _12380 = mem[ceil32(arg2.length) + 352]
            mem[(32 * _14) + ceil32(arg2.length) + 324] = mem[ceil32(arg2.length) + 396 len 20]
            mem[(32 * _14) + ceil32(arg2.length) + 356] = _12377
            mem[(32 * _14) + ceil32(arg2.length) + 288] = 68
            mem[(32 * _14) + ceil32(arg2.length) + 320 len 4] = transfer(address arg1, uint256 arg2)
            if ext_code.hash(address(_12380)) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                revert with 0, 'SafeERC20: call to non-contract'
            if not ext_code.hash(address(_12380)):
                revert with 0, 'SafeERC20: call to non-contract'
            mem[(32 * _14) + ceil32(arg2.length) + 388 len 64] = 0, mem[(32 * _14) + ceil32(arg2.length) + 324], Mask(224, 32, _12377) >> 32
            call address(_12380).mem[(32 * _14) + ceil32(arg2.length) + 352 len 4] with:
                 gas gas_remaining wei
                args Mask(224, 32, _12377) << 224, mem[(32 * _14) + ceil32(arg2.length) + 452 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 
                                32,
                                41,
                                0x647472616e73666572205361666545524332303a206c6f772d6c6576656c2063616c6c206661696c65,
                                mem[(32 * _14) + ceil32(arg2.length) + 497 len 23]
                if arg2.length > 0:
                    require arg2.length >= 32
                    if not mem[128]:
                        revert with 0, 
                                    32,
                                    51,
                                    0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * _14) + ceil32(arg2.length) + 507 len 13]
                require 2 < mem[ceil32(arg2.length) + 256]
                require 0 < mem[ceil32(arg2.length) + 256]
                require 3 < mem[ceil32(arg2.length) + 256]
                mem[(32 * _14) + ceil32(arg2.length) + 584 len 0] = None
                require ext_code.size(mem[ceil32(arg2.length) + 396 len 20])
                if mem[ceil32(arg2.length) + 300 len 20] >= mem[ceil32(arg2.length) + 364 len 20]:
                    call mem[ceil32(arg2.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, mem[352], address(this.address), 128, 0
                else:
                    call mem[ceil32(arg2.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args mem[352], 0, address(this.address), 128, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require 1 < mem[ceil32(arg2.length) + 256]
                require 0 < mem[ceil32(arg2.length) + 256]
                if ext_code.hash(mem[ceil32(arg2.length) + 300 len 20]) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                    revert with 0, 'SafeERC20: call to non-contract'
                if not ext_code.hash(mem[ceil32(arg2.length) + 300 len 20]):
                    revert with 0, 'SafeERC20: call to non-contract'
                mem[(32 * _14) + ceil32(arg2.length) + 520 len 64] = 0, mem[ceil32(arg2.length) + 332 len 20], mem[352 len 28]
                call mem[ceil32(arg2.length) + 300 len 20] with:
                     gas gas_remaining wei
                    args mem[352], Mask(224, 32, mem[ceil32(arg2.length) + 332 len 20], mem[352 len 28]) >> 32, mem[(32 * _14) + ceil32(arg2.length) + 584 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 
                                    32,
                                    41,
                                    0x647472616e73666572205361666545524332303a206c6f772d6c6576656c2063616c6c206661696c65,
                                    mem[(32 * _14) + ceil32(arg2.length) + 629 len 23]
                    if arg2.length > 0:
                        require arg2.length >= 32
                        if not mem[128]:
                            revert with 0, 
                                        32,
                                        51,
                                        0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _14) + ceil32(arg2.length) + 639 len 13]
                else:
                    mem[(32 * _14) + ceil32(arg2.length) + 552 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 
                                    32,
                                    41,
                                    0x647472616e73666572205361666545524332303a206c6f772d6c6576656c2063616c6c206661696c65,
                                    mem[(32 * _14) + ceil32(arg2.length) + ceil32(return_data.size) + 630 len 23]
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[(32 * _14) + ceil32(arg2.length) + 552]:
                            revert with 0, 
                                        32,
                                        51,
                                        0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _14) + ceil32(arg2.length) + ceil32(return_data.size) + 640 len 13]
            else:
                mem[(32 * _14) + ceil32(arg2.length) + 388] = return_data.size
                mem[(32 * _14) + ceil32(arg2.length) + 420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 
                                32,
                                41,
                                0x647472616e73666572205361666545524332303a206c6f772d6c6576656c2063616c6c206661696c65,
                                mem[(32 * _14) + ceil32(arg2.length) + ceil32(return_data.size) + 498 len 23]
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[(32 * _14) + ceil32(arg2.length) + 420]:
                        revert with 0, 
                                    32,
                                    51,
                                    0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * _14) + ceil32(arg2.length) + ceil32(return_data.size) + 508 len 13]
                require 2 < mem[ceil32(arg2.length) + 256]
                require 0 < mem[ceil32(arg2.length) + 256]
                require 3 < mem[ceil32(arg2.length) + 256]
                mem[(32 * _14) + ceil32(arg2.length) + ceil32(return_data.size) + 585 len 0] = None
                require ext_code.size(mem[ceil32(arg2.length) + 396 len 20])
                if mem[ceil32(arg2.length) + 300 len 20] >= mem[ceil32(arg2.length) + 364 len 20]:
                    call mem[ceil32(arg2.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, mem[352], address(this.address), 128, 0
                else:
                    call mem[ceil32(arg2.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args mem[352], 0, address(this.address), 128, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require 1 < mem[ceil32(arg2.length) + 256]
                require 0 < mem[ceil32(arg2.length) + 256]
                if ext_code.hash(mem[ceil32(arg2.length) + 300 len 20]) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                    revert with 0, 'SafeERC20: call to non-contract'
                if not ext_code.hash(mem[ceil32(arg2.length) + 300 len 20]):
                    revert with 0, 'SafeERC20: call to non-contract'
                mem[(32 * _14) + ceil32(arg2.length) + ceil32(return_data.size) + 521 len 64] = 0, mem[ceil32(arg2.length) + 332 len 20], mem[352 len 28]
                call mem[ceil32(arg2.length) + 300 len 20] with:
                     gas gas_remaining wei
                    args mem[352], Mask(224, 32, mem[ceil32(arg2.length) + 332 len 20], mem[352 len 28]) >> 32, mem[(32 * _14) + ceil32(arg2.length) + ceil32(return_data.size) + 585 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 
                                    32,
                                    41,
                                    0x647472616e73666572205361666545524332303a206c6f772d6c6576656c2063616c6c206661696c65,
                                    mem[(32 * _14) + ceil32(arg2.length) + ceil32(return_data.size) + 630 len 23]
                    if arg2.length > 0:
                        require arg2.length >= 32
                        if not mem[128]:
                            revert with 0, 
                                        32,
                                        51,
                                        0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _14) + ceil32(arg2.length) + ceil32(return_data.size) + 640 len 13]
                else:
                    mem[(32 * _14) + ceil32(arg2.length) + ceil32(return_data.size) + 553 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 
                                    32,
                                    41,
                                    0x647472616e73666572205361666545524332303a206c6f772d6c6576656c2063616c6c206661696c65,
                                    mem[(32 * _14) + ceil32(arg2.length) + (2 * ceil32(return_data.size)) + 631 len 23]
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[(32 * _14) + ceil32(arg2.length) + ceil32(return_data.size) + 553]:
                            revert with 0, 
                                        32,
                                        51,
                                        0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _14) + ceil32(arg2.length) + (2 * ceil32(return_data.size)) + 641 len 13]
    else:
        mem[(32 * _14) + ceil32(arg2.length) + 324] = mem[204 len 20]
        mem[(32 * _14) + ceil32(arg2.length) + 356] = 0
        mem[(32 * _14) + ceil32(arg2.length) + 288] = 68
        mem[(32 * _14) + ceil32(arg2.length) + 320 len 4] = approve(address arg1, uint256 arg2)
        if ext_code.hash(mem[172 len 20]) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
            revert with 0, 'SafeERC20: call to non-contract'
        if not ext_code.hash(mem[172 len 20]):
            revert with 0, 'SafeERC20: call to non-contract'
        mem[(32 * _14) + ceil32(arg2.length) + 388 len 64] = 0, mem[204 len 20], 0
        mem[(32 * _14) + ceil32(arg2.length) + 480 len 4] = 0
        call mem[172 len 20].mem[(32 * _14) + ceil32(arg2.length) + 352 len 4] with:
             gas gas_remaining wei
            args Mask(480, -256, 0, mem[204 len 20], 0) << 256, mem[(32 * _14) + ceil32(arg2.length) + 452 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 
                            32,
                            40,
                            0x64617070726f7665205361666545524332303a206c6f772d6c6576656c2063616c6c206661696c65,
                            mem[(32 * _14) + ceil32(arg2.length) + 496 len 24]
            if arg2.length > 0:
                require arg2.length >= 32
                if not mem[128]:
                    revert with 0, 
                                32,
                                50,
                                0x6453616665455243323020617070726f76653a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(32 * _14) + ceil32(arg2.length) + 506 len 14]
            require ext_code.size(mem[172 len 20])
            staticcall mem[172 len 20].allowance(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args address(this.address), mem[204 len 20]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0, 
                            32,
                            54,
                            0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                            mem[(32 * _14) + ceil32(arg2.length) + 510 len 10]
            mem[(32 * _14) + ceil32(arg2.length) + 424] = mem[204 len 20]
            mem[(32 * _14) + ceil32(arg2.length) + 388] = 68
            if ext_code.hash(mem[172 len 20]) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                revert with 0, 'SafeERC20: call to non-contract'
            if not ext_code.hash(mem[172 len 20]):
                revert with 0, 'SafeERC20: call to non-contract'
            mem[(32 * _14) + ceil32(arg2.length) + 488 len 64] = 0, mem[204 len 20], 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
            mem[(32 * _14) + ceil32(arg2.length) + 580 len 4] = test266151307()
            call mem[172 len 20].mem[(32 * _14) + ceil32(arg2.length) + 452 len 4] with:
                 gas gas_remaining wei
                args -1, Mask(224, 32, 0, mem[204 len 20], 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) >> 32, mem[(32 * _14) + ceil32(arg2.length) + 552 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 
                                32,
                                40,
                                0x64617070726f7665205361666545524332303a206c6f772d6c6576656c2063616c6c206661696c65,
                                mem[(32 * _14) + ceil32(arg2.length) + 596 len 24]
                if arg2.length > 0:
                    require arg2.length >= 32
                    if not mem[128]:
                        revert with 0, 
                                    32,
                                    50,
                                    0x6453616665455243323020617070726f76653a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * _14) + ceil32(arg2.length) + 606 len 14]
                require ext_code.size(mem[204 len 20])
                call mem[204 len 20].liquidateBorrow(address arg1, uint256 arg2, address arg3) with:
                     gas gas_remaining wei
                    args address(mem[128]), mem[224], address(_12331)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 'liquidation failed'
                require ext_code.size(address(_12331))
                staticcall address(_12331).balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(_12331))
                call address(_12331).redeem(uint256 arg1) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if mem[ceil32(arg2.length) + 256] != 4:
                    require 1 < mem[ceil32(arg2.length) + 256]
                    require 0 < mem[ceil32(arg2.length) + 256]
                    mem[(32 * _14) + ceil32(arg2.length) + 524] = mem[ceil32(arg2.length) + 332 len 20]
                    if ext_code.hash(mem[ceil32(arg2.length) + 300 len 20]) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                        revert with 0, 'SafeERC20: call to non-contract'
                    if not ext_code.hash(mem[ceil32(arg2.length) + 300 len 20]):
                        revert with 0, 'SafeERC20: call to non-contract'
                    mem[(32 * _14) + ceil32(arg2.length) + 588 len 64] = 0, mem[ceil32(arg2.length) + 332 len 20], mem[352 len 28]
                    call mem[ceil32(arg2.length) + 300 len 20].mem[(32 * _14) + ceil32(arg2.length) + 552 len 4] with:
                         gas gas_remaining wei
                        args mem[352], Mask(224, 32, mem[ceil32(arg2.length) + 332 len 20], mem[352 len 28]) >> 32, mem[(32 * _14) + ceil32(arg2.length) + 652 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        41,
                                        0x647472616e73666572205361666545524332303a206c6f772d6c6576656c2063616c6c206661696c65,
                                        mem[(32 * _14) + ceil32(arg2.length) + 697 len 23]
                        if arg2.length > 0:
                            require arg2.length >= 32
                            if not mem[128]:
                                revert with 0, 
                                            32,
                                            51,
                                            0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(32 * _14) + ceil32(arg2.length) + 707 len 13]
                    else:
                        mem[(32 * _14) + ceil32(arg2.length) + 620 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        41,
                                        0x647472616e73666572205361666545524332303a206c6f772d6c6576656c2063616c6c206661696c65,
                                        mem[(32 * _14) + ceil32(arg2.length) + ceil32(return_data.size) + 698 len 23]
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[(32 * _14) + ceil32(arg2.length) + 620]:
                                revert with 0, 
                                            32,
                                            51,
                                            0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(32 * _14) + ceil32(arg2.length) + ceil32(return_data.size) + 708 len 13]
                else:
                    require 3 < mem[ceil32(arg2.length) + 256]
                    require 2 < mem[ceil32(arg2.length) + 256]
                    mem[(32 * _14) + ceil32(arg2.length) + 524] = mem[ceil32(arg2.length) + 396 len 20]
                    if ext_code.hash(mem[ceil32(arg2.length) + 364 len 20]) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                        revert with 0, 'SafeERC20: call to non-contract'
                    if not ext_code.hash(mem[ceil32(arg2.length) + 364 len 20]):
                        revert with 0, 'SafeERC20: call to non-contract'
                    mem[(32 * _14) + ceil32(arg2.length) + 588 len 64] = 0, mem[ceil32(arg2.length) + 396 len 20], mem[384 len 28]
                    call mem[ceil32(arg2.length) + 364 len 20].mem[(32 * _14) + ceil32(arg2.length) + 552 len 4] with:
                         gas gas_remaining wei
                        args mem[384], Mask(224, 32, mem[ceil32(arg2.length) + 396 len 20], mem[384 len 28]) >> 32, mem[(32 * _14) + ceil32(arg2.length) + 652 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        41,
                                        0x647472616e73666572205361666545524332303a206c6f772d6c6576656c2063616c6c206661696c65,
                                        mem[(32 * _14) + ceil32(arg2.length) + 697 len 23]
                        if arg2.length > 0:
                            require arg2.length >= 32
                            if not mem[128]:
                                revert with 0, 
                                            32,
                                            51,
                                            0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(32 * _14) + ceil32(arg2.length) + 707 len 13]
                        require 2 < mem[ceil32(arg2.length) + 256]
                        require 0 < mem[ceil32(arg2.length) + 256]
                        require 3 < mem[ceil32(arg2.length) + 256]
                        mem[(32 * _14) + ceil32(arg2.length) + 784 len 0] = None
                        require ext_code.size(mem[ceil32(arg2.length) + 396 len 20])
                        if mem[ceil32(arg2.length) + 300 len 20] >= mem[ceil32(arg2.length) + 364 len 20]:
                            call mem[ceil32(arg2.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, mem[352], address(this.address), 128, 0
                        else:
                            call mem[ceil32(arg2.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args mem[352], 0, address(this.address), 128, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require 1 < mem[ceil32(arg2.length) + 256]
                        require 0 < mem[ceil32(arg2.length) + 256]
                        if ext_code.hash(mem[ceil32(arg2.length) + 300 len 20]) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            revert with 0, 'SafeERC20: call to non-contract'
                        if not ext_code.hash(mem[ceil32(arg2.length) + 300 len 20]):
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[(32 * _14) + ceil32(arg2.length) + 720 len 64] = 0, mem[ceil32(arg2.length) + 332 len 20], mem[352 len 28]
                        call mem[ceil32(arg2.length) + 300 len 20] with:
                             gas gas_remaining wei
                            args mem[352], Mask(224, 32, mem[ceil32(arg2.length) + 332 len 20], mem[352 len 28]) >> 32, mem[(32 * _14) + ceil32(arg2.length) + 784 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            41,
                                            0x647472616e73666572205361666545524332303a206c6f772d6c6576656c2063616c6c206661696c65,
                                            mem[(32 * _14) + ceil32(arg2.length) + 829 len 23]
                            if arg2.length > 0:
                                require arg2.length >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _14) + ceil32(arg2.length) + 839 len 13]
                        else:
                            mem[(32 * _14) + ceil32(arg2.length) + 752 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            41,
                                            0x647472616e73666572205361666545524332303a206c6f772d6c6576656c2063616c6c206661696c65,
                                            mem[(32 * _14) + ceil32(arg2.length) + ceil32(return_data.size) + 830 len 23]
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[(32 * _14) + ceil32(arg2.length) + 752]:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _14) + ceil32(arg2.length) + ceil32(return_data.size) + 840 len 13]
                    else:
                        mem[(32 * _14) + ceil32(arg2.length) + 620 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        41,
                                        0x647472616e73666572205361666545524332303a206c6f772d6c6576656c2063616c6c206661696c65,
                                        mem[(32 * _14) + ceil32(arg2.length) + ceil32(return_data.size) + 698 len 23]
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[(32 * _14) + ceil32(arg2.length) + 620]:
                                revert with 0, 
                                            32,
                                            51,
                                            0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(32 * _14) + ceil32(arg2.length) + ceil32(return_data.size) + 708 len 13]
                        require 2 < mem[ceil32(arg2.length) + 256]
                        require 0 < mem[ceil32(arg2.length) + 256]
                        require 3 < mem[ceil32(arg2.length) + 256]
                        mem[(32 * _14) + ceil32(arg2.length) + ceil32(return_data.size) + 785 len 0] = None
                        require ext_code.size(mem[ceil32(arg2.length) + 396 len 20])
                        if mem[ceil32(arg2.length) + 300 len 20] >= mem[ceil32(arg2.length) + 364 len 20]:
                            call mem[ceil32(arg2.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, mem[352], address(this.address), 128, 0
                        else:
                            call mem[ceil32(arg2.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args mem[352], 0, address(this.address), 128, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require 1 < mem[ceil32(arg2.length) + 256]
                        require 0 < mem[ceil32(arg2.length) + 256]
                        if ext_code.hash(mem[ceil32(arg2.length) + 300 len 20]) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            revert with 0, 'SafeERC20: call to non-contract'
                        if not ext_code.hash(mem[ceil32(arg2.length) + 300 len 20]):
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[(32 * _14) + ceil32(arg2.length) + ceil32(return_data.size) + 721 len 64] = 0, mem[ceil32(arg2.length) + 332 len 20], mem[352 len 28]
                        call mem[ceil32(arg2.length) + 300 len 20] with:
                             gas gas_remaining wei
                            args mem[352], Mask(224, 32, mem[ceil32(arg2.length) + 332 len 20], mem[352 len 28]) >> 32, mem[(32 * _14) + ceil32(arg2.length) + ceil32(return_data.size) + 785 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            41,
                                            0x647472616e73666572205361666545524332303a206c6f772d6c6576656c2063616c6c206661696c65,
                                            mem[(32 * _14) + ceil32(arg2.length) + ceil32(return_data.size) + 830 len 23]
                            if arg2.length > 0:
                                require arg2.length >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _14) + ceil32(arg2.length) + ceil32(return_data.size) + 840 len 13]
                        else:
                            mem[(32 * _14) + ceil32(arg2.length) + ceil32(return_data.size) + 753 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            41,
                                            0x647472616e73666572205361666545524332303a206c6f772d6c6576656c2063616c6c206661696c65,
                                            mem[(32 * _14) + ceil32(arg2.length) + (2 * ceil32(return_data.size)) + 831 len 23]
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[(32 * _14) + ceil32(arg2.length) + ceil32(return_data.size) + 753]:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _14) + ceil32(arg2.length) + (2 * ceil32(return_data.size)) + 841 len 13]
            else:
                mem[(32 * _14) + ceil32(arg2.length) + 520 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 
                                32,
                                40,
                                0x64617070726f7665205361666545524332303a206c6f772d6c6576656c2063616c6c206661696c65,
                                mem[(32 * _14) + ceil32(arg2.length) + ceil32(return_data.size) + 597 len 24]
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[(32 * _14) + ceil32(arg2.length) + 520]:
                        revert with 0, 
                                    32,
                                    50,
                                    0x6453616665455243323020617070726f76653a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * _14) + ceil32(arg2.length) + ceil32(return_data.size) + 607 len 14]
                require ext_code.size(mem[204 len 20])
                call mem[204 len 20].liquidateBorrow(address arg1, uint256 arg2, address arg3) with:
                     gas gas_remaining wei
                    args address(mem[128]), mem[224], address(_12331)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 'liquidation failed'
                require ext_code.size(address(_12331))
                staticcall address(_12331).balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(_12331))
                call address(_12331).redeem(uint256 arg1) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if mem[ceil32(arg2.length) + 256] != 4:
                    require 1 < mem[ceil32(arg2.length) + 256]
                    require 0 < mem[ceil32(arg2.length) + 256]
                    mem[(32 * _14) + ceil32(arg2.length) + ceil32(return_data.size) + 525] = mem[ceil32(arg2.length) + 332 len 20]
                    if ext_code.hash(mem[ceil32(arg2.length) + 300 len 20]) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                        revert with 0, 'SafeERC20: call to non-contract'
                    if not ext_code.hash(mem[ceil32(arg2.length) + 300 len 20]):
                        revert with 0, 'SafeERC20: call to non-contract'
                    mem[(32 * _14) + ceil32(arg2.length) + ceil32(return_data.size) + 589 len 64] = 0, mem[ceil32(arg2.length) + 332 len 20], mem[352 len 28]
                    call mem[ceil32(arg2.length) + 300 len 20].mem[(32 * _14) + ceil32(arg2.length) + ceil32(return_data.size) + 553 len 4] with:
                         gas gas_remaining wei
                        args mem[352], Mask(224, 32, mem[ceil32(arg2.length) + 332 len 20], mem[352 len 28]) >> 32, mem[(32 * _14) + ceil32(arg2.length) + ceil32(return_data.size) + 653 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        41,
                                        0x647472616e73666572205361666545524332303a206c6f772d6c6576656c2063616c6c206661696c65,
                                        mem[(32 * _14) + ceil32(arg2.length) + ceil32(return_data.size) + 698 len 23]
                        if arg2.length > 0:
                            require arg2.length >= 32
                            if not mem[128]:
                                revert with 0, 
                                            32,
                                            51,
                                            0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(32 * _14) + ceil32(arg2.length) + ceil32(return_data.size) + 708 len 13]
                    else:
                        mem[(32 * _14) + ceil32(arg2.length) + ceil32(return_data.size) + 621 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        41,
                                        0x647472616e73666572205361666545524332303a206c6f772d6c6576656c2063616c6c206661696c65,
                                        mem[(32 * _14) + ceil32(arg2.length) + (2 * ceil32(return_data.size)) + 699 len 23]
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[(32 * _14) + ceil32(arg2.length) + ceil32(return_data.size) + 621]:
                                revert with 0, 
                                            32,
                                            51,
                                            0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(32 * _14) + ceil32(arg2.length) + (2 * ceil32(return_data.size)) + 709 len 13]
                else:
                    require 3 < mem[ceil32(arg2.length) + 256]
                    require 2 < mem[ceil32(arg2.length) + 256]
                    mem[(32 * _14) + ceil32(arg2.length) + ceil32(return_data.size) + 525] = mem[ceil32(arg2.length) + 396 len 20]
                    if ext_code.hash(mem[ceil32(arg2.length) + 364 len 20]) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                        revert with 0, 'SafeERC20: call to non-contract'
                    if not ext_code.hash(mem[ceil32(arg2.length) + 364 len 20]):
                        revert with 0, 'SafeERC20: call to non-contract'
                    mem[(32 * _14) + ceil32(arg2.length) + ceil32(return_data.size) + 589 len 64] = 0, mem[ceil32(arg2.length) + 396 len 20], mem[384 len 28]
                    call mem[ceil32(arg2.length) + 364 len 20].mem[(32 * _14) + ceil32(arg2.length) + ceil32(return_data.size) + 553 len 4] with:
                         gas gas_remaining wei
                        args mem[384], Mask(224, 32, mem[ceil32(arg2.length) + 396 len 20], mem[384 len 28]) >> 32, mem[(32 * _14) + ceil32(arg2.length) + ceil32(return_data.size) + 653 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        41,
                                        0x647472616e73666572205361666545524332303a206c6f772d6c6576656c2063616c6c206661696c65,
                                        mem[(32 * _14) + ceil32(arg2.length) + ceil32(return_data.size) + 698 len 23]
                        if arg2.length > 0:
                            require arg2.length >= 32
                            if not mem[128]:
                                revert with 0, 
                                            32,
                                            51,
                                            0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(32 * _14) + ceil32(arg2.length) + ceil32(return_data.size) + 708 len 13]
                        require 2 < mem[ceil32(arg2.length) + 256]
                        require 0 < mem[ceil32(arg2.length) + 256]
                        require 3 < mem[ceil32(arg2.length) + 256]
                        mem[(32 * _14) + ceil32(arg2.length) + ceil32(return_data.size) + 785 len 0] = None
                        require ext_code.size(mem[ceil32(arg2.length) + 396 len 20])
                        if mem[ceil32(arg2.length) + 300 len 20] >= mem[ceil32(arg2.length) + 364 len 20]:
                            call mem[ceil32(arg2.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, mem[352], address(this.address), 128, 0
                        else:
                            call mem[ceil32(arg2.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args mem[352], 0, address(this.address), 128, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require 1 < mem[ceil32(arg2.length) + 256]
                        require 0 < mem[ceil32(arg2.length) + 256]
                        if ext_code.hash(mem[ceil32(arg2.length) + 300 len 20]) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            revert with 0, 'SafeERC20: call to non-contract'
                        if not ext_code.hash(mem[ceil32(arg2.length) + 300 len 20]):
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[(32 * _14) + ceil32(arg2.length) + ceil32(return_data.size) + 721 len 64] = 0, mem[ceil32(arg2.length) + 332 len 20], mem[352 len 28]
                        call mem[ceil32(arg2.length) + 300 len 20] with:
                             gas gas_remaining wei
                            args mem[352], Mask(224, 32, mem[ceil32(arg2.length) + 332 len 20], mem[352 len 28]) >> 32, mem[(32 * _14) + ceil32(arg2.length) + ceil32(return_data.size) + 785 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            41,
                                            0x647472616e73666572205361666545524332303a206c6f772d6c6576656c2063616c6c206661696c65,
                                            mem[(32 * _14) + ceil32(arg2.length) + ceil32(return_data.size) + 830 len 23]
                            if arg2.length > 0:
                                require arg2.length >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _14) + ceil32(arg2.length) + ceil32(return_data.size) + 840 len 13]
                        else:
                            mem[(32 * _14) + ceil32(arg2.length) + ceil32(return_data.size) + 753 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            41,
                                            0x647472616e73666572205361666545524332303a206c6f772d6c6576656c2063616c6c206661696c65,
                                            mem[(32 * _14) + ceil32(arg2.length) + (2 * ceil32(return_data.size)) + 831 len 23]
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[(32 * _14) + ceil32(arg2.length) + ceil32(return_data.size) + 753]:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _14) + ceil32(arg2.length) + (2 * ceil32(return_data.size)) + 841 len 13]
                    else:
                        mem[(32 * _14) + ceil32(arg2.length) + ceil32(return_data.size) + 621 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        41,
                                        0x647472616e73666572205361666545524332303a206c6f772d6c6576656c2063616c6c206661696c65,
                                        mem[(32 * _14) + ceil32(arg2.length) + (2 * ceil32(return_data.size)) + 699 len 23]
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[(32 * _14) + ceil32(arg2.length) + ceil32(return_data.size) + 621]:
                                revert with 0, 
                                            32,
                                            51,
                                            0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(32 * _14) + ceil32(arg2.length) + (2 * ceil32(return_data.size)) + 709 len 13]
                        require 2 < mem[ceil32(arg2.length) + 256]
                        require 0 < mem[ceil32(arg2.length) + 256]
                        require 3 < mem[ceil32(arg2.length) + 256]
                        mem[(32 * _14) + ceil32(arg2.length) + (2 * ceil32(return_data.size)) + 786 len 0] = None
                        require ext_code.size(mem[ceil32(arg2.length) + 396 len 20])
                        if mem[ceil32(arg2.length) + 300 len 20] >= mem[ceil32(arg2.length) + 364 len 20]:
                            call mem[ceil32(arg2.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, mem[352], address(this.address), 128, 0
                        else:
                            call mem[ceil32(arg2.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args mem[352], 0, address(this.address), 128, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require 1 < mem[ceil32(arg2.length) + 256]
                        require 0 < mem[ceil32(arg2.length) + 256]
                        if ext_code.hash(mem[ceil32(arg2.length) + 300 len 20]) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            revert with 0, 'SafeERC20: call to non-contract'
                        if not ext_code.hash(mem[ceil32(arg2.length) + 300 len 20]):
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[(32 * _14) + ceil32(arg2.length) + (2 * ceil32(return_data.size)) + 722 len 64] = 0, mem[ceil32(arg2.length) + 332 len 20], mem[352 len 28]
                        call mem[ceil32(arg2.length) + 300 len 20] with:
                             gas gas_remaining wei
                            args mem[352], Mask(224, 32, mem[ceil32(arg2.length) + 332 len 20], mem[352 len 28]) >> 32, mem[(32 * _14) + ceil32(arg2.length) + (2 * ceil32(return_data.size)) + 786 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            41,
                                            0x647472616e73666572205361666545524332303a206c6f772d6c6576656c2063616c6c206661696c65,
                                            mem[(32 * _14) + ceil32(arg2.length) + (2 * ceil32(return_data.size)) + 831 len 23]
                            if arg2.length > 0:
                                require arg2.length >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _14) + ceil32(arg2.length) + (2 * ceil32(return_data.size)) + 841 len 13]
                        else:
                            mem[(32 * _14) + ceil32(arg2.length) + (2 * ceil32(return_data.size)) + 754 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            41,
                                            0x647472616e73666572205361666545524332303a206c6f772d6c6576656c2063616c6c206661696c65,
                                            mem[(32 * _14) + ceil32(arg2.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 832 len 23]
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[(32 * _14) + ceil32(arg2.length) + (2 * ceil32(return_data.size)) + 754]:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _14) + ceil32(arg2.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 842 len 13]
        else:
            mem[(32 * _14) + ceil32(arg2.length) + 388] = return_data.size
            mem[(32 * _14) + ceil32(arg2.length) + 420 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 
                            32,
                            40,
                            0x64617070726f7665205361666545524332303a206c6f772d6c6576656c2063616c6c206661696c65,
                            mem[(32 * _14) + ceil32(arg2.length) + ceil32(return_data.size) + 497 len 24]
            if return_data.size > 0:
                require return_data.size >= 32
                if not mem[(32 * _14) + ceil32(arg2.length) + 420]:
                    revert with 0, 
                                32,
                                50,
                                0x6453616665455243323020617070726f76653a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(32 * _14) + ceil32(arg2.length) + ceil32(return_data.size) + 507 len 14]
            require ext_code.size(mem[172 len 20])
            staticcall mem[172 len 20].allowance(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args address(this.address), mem[204 len 20]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0, 
                            32,
                            54,
                            0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                            mem[(32 * _14) + ceil32(arg2.length) + ceil32(return_data.size) + 511 len 10]
            mem[(32 * _14) + ceil32(arg2.length) + ceil32(return_data.size) + 425] = mem[204 len 20]
            mem[(32 * _14) + ceil32(arg2.length) + ceil32(return_data.size) + 389] = 68
            if ext_code.hash(mem[172 len 20]) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                revert with 0, 'SafeERC20: call to non-contract'
            if not ext_code.hash(mem[172 len 20]):
                revert with 0, 'SafeERC20: call to non-contract'
            mem[(32 * _14) + ceil32(arg2.length) + ceil32(return_data.size) + 489 len 64] = 0, mem[204 len 20], 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
            mem[(32 * _14) + ceil32(arg2.length) + ceil32(return_data.size) + 581 len 4] = test266151307()
            call mem[172 len 20].mem[(32 * _14) + ceil32(arg2.length) + ceil32(return_data.size) + 453 len 4] with:
                 gas gas_remaining wei
                args -1, Mask(224, 32, 0, mem[204 len 20], 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) >> 32, mem[(32 * _14) + ceil32(arg2.length) + ceil32(return_data.size) + 553 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 
                                32,
                                40,
                                0x64617070726f7665205361666545524332303a206c6f772d6c6576656c2063616c6c206661696c65,
                                mem[(32 * _14) + ceil32(arg2.length) + ceil32(return_data.size) + 597 len 24]
                if arg2.length > 0:
                    require arg2.length >= 32
                    if not mem[128]:
                        revert with 0, 
                                    32,
                                    50,
                                    0x6453616665455243323020617070726f76653a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * _14) + ceil32(arg2.length) + ceil32(return_data.size) + 607 len 14]
                require ext_code.size(mem[204 len 20])
                call mem[204 len 20].liquidateBorrow(address arg1, uint256 arg2, address arg3) with:
                     gas gas_remaining wei
                    args address(mem[128]), mem[224], address(_12331)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 'liquidation failed'
                require ext_code.size(address(_12331))
                staticcall address(_12331).balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(_12331))
                call address(_12331).redeem(uint256 arg1) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if mem[ceil32(arg2.length) + 256] != 4:
                    require 1 < mem[ceil32(arg2.length) + 256]
                    require 0 < mem[ceil32(arg2.length) + 256]
                    mem[(32 * _14) + ceil32(arg2.length) + ceil32(return_data.size) + 525] = mem[ceil32(arg2.length) + 332 len 20]
                    if ext_code.hash(mem[ceil32(arg2.length) + 300 len 20]) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                        revert with 0, 'SafeERC20: call to non-contract'
                    if not ext_code.hash(mem[ceil32(arg2.length) + 300 len 20]):
                        revert with 0, 'SafeERC20: call to non-contract'
                    mem[(32 * _14) + ceil32(arg2.length) + ceil32(return_data.size) + 589 len 64] = 0, mem[ceil32(arg2.length) + 332 len 20], mem[352 len 28]
                    call mem[ceil32(arg2.length) + 300 len 20].mem[(32 * _14) + ceil32(arg2.length) + ceil32(return_data.size) + 553 len 4] with:
                         gas gas_remaining wei
                        args mem[352], Mask(224, 32, mem[ceil32(arg2.length) + 332 len 20], mem[352 len 28]) >> 32, mem[(32 * _14) + ceil32(arg2.length) + ceil32(return_data.size) + 653 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        41,
                                        0x647472616e73666572205361666545524332303a206c6f772d6c6576656c2063616c6c206661696c65,
                                        mem[(32 * _14) + ceil32(arg2.length) + ceil32(return_data.size) + 698 len 23]
                        if arg2.length > 0:
                            require arg2.length >= 32
                            if not mem[128]:
                                revert with 0, 
                                            32,
                                            51,
                                            0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(32 * _14) + ceil32(arg2.length) + ceil32(return_data.size) + 708 len 13]
                    else:
                        mem[(32 * _14) + ceil32(arg2.length) + ceil32(return_data.size) + 621 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        41,
                                        0x647472616e73666572205361666545524332303a206c6f772d6c6576656c2063616c6c206661696c65,
                                        mem[(32 * _14) + ceil32(arg2.length) + (2 * ceil32(return_data.size)) + 699 len 23]
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[(32 * _14) + ceil32(arg2.length) + ceil32(return_data.size) + 621]:
                                revert with 0, 
                                            32,
                                            51,
                                            0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(32 * _14) + ceil32(arg2.length) + (2 * ceil32(return_data.size)) + 709 len 13]
                else:
                    require 3 < mem[ceil32(arg2.length) + 256]
                    require 2 < mem[ceil32(arg2.length) + 256]
                    mem[(32 * _14) + ceil32(arg2.length) + ceil32(return_data.size) + 525] = mem[ceil32(arg2.length) + 396 len 20]
                    if ext_code.hash(mem[ceil32(arg2.length) + 364 len 20]) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                        revert with 0, 'SafeERC20: call to non-contract'
                    if not ext_code.hash(mem[ceil32(arg2.length) + 364 len 20]):
                        revert with 0, 'SafeERC20: call to non-contract'
                    mem[(32 * _14) + ceil32(arg2.length) + ceil32(return_data.size) + 589 len 64] = 0, mem[ceil32(arg2.length) + 396 len 20], mem[384 len 28]
                    call mem[ceil32(arg2.length) + 364 len 20].mem[(32 * _14) + ceil32(arg2.length) + ceil32(return_data.size) + 553 len 4] with:
                         gas gas_remaining wei
                        args mem[384], Mask(224, 32, mem[ceil32(arg2.length) + 396 len 20], mem[384 len 28]) >> 32, mem[(32 * _14) + ceil32(arg2.length) + ceil32(return_data.size) + 653 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        41,
                                        0x647472616e73666572205361666545524332303a206c6f772d6c6576656c2063616c6c206661696c65,
                                        mem[(32 * _14) + ceil32(arg2.length) + ceil32(return_data.size) + 698 len 23]
                        if arg2.length > 0:
                            require arg2.length >= 32
                            if not mem[128]:
                                revert with 0, 
                                            32,
                                            51,
                                            0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(32 * _14) + ceil32(arg2.length) + ceil32(return_data.size) + 708 len 13]
                        require 2 < mem[ceil32(arg2.length) + 256]
                        require 0 < mem[ceil32(arg2.length) + 256]
                        require 3 < mem[ceil32(arg2.length) + 256]
                        mem[(32 * _14) + ceil32(arg2.length) + ceil32(return_data.size) + 785 len 0] = None
                        require ext_code.size(mem[ceil32(arg2.length) + 396 len 20])
                        if mem[ceil32(arg2.length) + 300 len 20] >= mem[ceil32(arg2.length) + 364 len 20]:
                            call mem[ceil32(arg2.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, mem[352], address(this.address), 128, 0
                        else:
                            call mem[ceil32(arg2.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args mem[352], 0, address(this.address), 128, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require 1 < mem[ceil32(arg2.length) + 256]
                        require 0 < mem[ceil32(arg2.length) + 256]
                        if ext_code.hash(mem[ceil32(arg2.length) + 300 len 20]) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            revert with 0, 'SafeERC20: call to non-contract'
                        if not ext_code.hash(mem[ceil32(arg2.length) + 300 len 20]):
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[(32 * _14) + ceil32(arg2.length) + ceil32(return_data.size) + 721 len 64] = 0, mem[ceil32(arg2.length) + 332 len 20], mem[352 len 28]
                        call mem[ceil32(arg2.length) + 300 len 20] with:
                             gas gas_remaining wei
                            args mem[352], Mask(224, 32, mem[ceil32(arg2.length) + 332 len 20], mem[352 len 28]) >> 32, mem[(32 * _14) + ceil32(arg2.length) + ceil32(return_data.size) + 785 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            41,
                                            0x647472616e73666572205361666545524332303a206c6f772d6c6576656c2063616c6c206661696c65,
                                            mem[(32 * _14) + ceil32(arg2.length) + ceil32(return_data.size) + 830 len 23]
                            if arg2.length > 0:
                                require arg2.length >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _14) + ceil32(arg2.length) + ceil32(return_data.size) + 840 len 13]
                        else:
                            mem[(32 * _14) + ceil32(arg2.length) + ceil32(return_data.size) + 753 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            41,
                                            0x647472616e73666572205361666545524332303a206c6f772d6c6576656c2063616c6c206661696c65,
                                            mem[(32 * _14) + ceil32(arg2.length) + (2 * ceil32(return_data.size)) + 831 len 23]
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[(32 * _14) + ceil32(arg2.length) + ceil32(return_data.size) + 753]:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _14) + ceil32(arg2.length) + (2 * ceil32(return_data.size)) + 841 len 13]
                    else:
                        mem[(32 * _14) + ceil32(arg2.length) + ceil32(return_data.size) + 621 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        41,
                                        0x647472616e73666572205361666545524332303a206c6f772d6c6576656c2063616c6c206661696c65,
                                        mem[(32 * _14) + ceil32(arg2.length) + (2 * ceil32(return_data.size)) + 699 len 23]
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[(32 * _14) + ceil32(arg2.length) + ceil32(return_data.size) + 621]:
                                revert with 0, 
                                            32,
                                            51,
                                            0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(32 * _14) + ceil32(arg2.length) + (2 * ceil32(return_data.size)) + 709 len 13]
                        require 2 < mem[ceil32(arg2.length) + 256]
                        require 0 < mem[ceil32(arg2.length) + 256]
                        require 3 < mem[ceil32(arg2.length) + 256]
                        mem[(32 * _14) + ceil32(arg2.length) + (2 * ceil32(return_data.size)) + 786 len 0] = None
                        require ext_code.size(mem[ceil32(arg2.length) + 396 len 20])
                        if mem[ceil32(arg2.length) + 300 len 20] >= mem[ceil32(arg2.length) + 364 len 20]:
                            call mem[ceil32(arg2.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, mem[352], address(this.address), 128, 0
                        else:
                            call mem[ceil32(arg2.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args mem[352], 0, address(this.address), 128, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require 1 < mem[ceil32(arg2.length) + 256]
                        require 0 < mem[ceil32(arg2.length) + 256]
                        if ext_code.hash(mem[ceil32(arg2.length) + 300 len 20]) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            revert with 0, 'SafeERC20: call to non-contract'
                        if not ext_code.hash(mem[ceil32(arg2.length) + 300 len 20]):
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[(32 * _14) + ceil32(arg2.length) + (2 * ceil32(return_data.size)) + 722 len 64] = 0, mem[ceil32(arg2.length) + 332 len 20], mem[352 len 28]
                        call mem[ceil32(arg2.length) + 300 len 20] with:
                             gas gas_remaining wei
                            args mem[352], Mask(224, 32, mem[ceil32(arg2.length) + 332 len 20], mem[352 len 28]) >> 32, mem[(32 * _14) + ceil32(arg2.length) + (2 * ceil32(return_data.size)) + 786 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            41,
                                            0x647472616e73666572205361666545524332303a206c6f772d6c6576656c2063616c6c206661696c65,
                                            mem[(32 * _14) + ceil32(arg2.length) + (2 * ceil32(return_data.size)) + 831 len 23]
                            if arg2.length > 0:
                                require arg2.length >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _14) + ceil32(arg2.length) + (2 * ceil32(return_data.size)) + 841 len 13]
                        else:
                            mem[(32 * _14) + ceil32(arg2.length) + (2 * ceil32(return_data.size)) + 754 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            41,
                                            0x647472616e73666572205361666545524332303a206c6f772d6c6576656c2063616c6c206661696c65,
                                            mem[(32 * _14) + ceil32(arg2.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 832 len 23]
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[(32 * _14) + ceil32(arg2.length) + (2 * ceil32(return_data.size)) + 754]:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _14) + ceil32(arg2.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 842 len 13]
            else:
                mem[(32 * _14) + ceil32(arg2.length) + ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 
                                32,
                                40,
                                0x64617070726f7665205361666545524332303a206c6f772d6c6576656c2063616c6c206661696c65,
                                mem[(32 * _14) + ceil32(arg2.length) + (2 * ceil32(return_data.size)) + 598 len 24]
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[(32 * _14) + ceil32(arg2.length) + ceil32(return_data.size) + 521]:
                        revert with 0, 
                                    32,
                                    50,
                                    0x6453616665455243323020617070726f76653a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * _14) + ceil32(arg2.length) + (2 * ceil32(return_data.size)) + 608 len 14]
                require ext_code.size(mem[204 len 20])
                call mem[204 len 20].liquidateBorrow(address arg1, uint256 arg2, address arg3) with:
                     gas gas_remaining wei
                    args address(mem[128]), mem[224], address(_12331)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 'liquidation failed'
                require ext_code.size(address(_12331))
                staticcall address(_12331).balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(_12331))
                call address(_12331).redeem(uint256 arg1) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if mem[ceil32(arg2.length) + 256] != 4:
                    require 1 < mem[ceil32(arg2.length) + 256]
                    require 0 < mem[ceil32(arg2.length) + 256]
                    mem[(32 * _14) + ceil32(arg2.length) + (2 * ceil32(return_data.size)) + 526] = mem[ceil32(arg2.length) + 332 len 20]
                    if ext_code.hash(mem[ceil32(arg2.length) + 300 len 20]) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                        revert with 0, 'SafeERC20: call to non-contract'
                    if not ext_code.hash(mem[ceil32(arg2.length) + 300 len 20]):
                        revert with 0, 'SafeERC20: call to non-contract'
                    mem[(32 * _14) + ceil32(arg2.length) + (2 * ceil32(return_data.size)) + 590 len 64] = 0, mem[ceil32(arg2.length) + 332 len 20], mem[352 len 28]
                    call mem[ceil32(arg2.length) + 300 len 20].mem[(32 * _14) + ceil32(arg2.length) + (2 * ceil32(return_data.size)) + 554 len 4] with:
                         gas gas_remaining wei
                        args mem[352], Mask(224, 32, mem[ceil32(arg2.length) + 332 len 20], mem[352 len 28]) >> 32, mem[(32 * _14) + ceil32(arg2.length) + (2 * ceil32(return_data.size)) + 654 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        41,
                                        0x647472616e73666572205361666545524332303a206c6f772d6c6576656c2063616c6c206661696c65,
                                        mem[(32 * _14) + ceil32(arg2.length) + (2 * ceil32(return_data.size)) + 699 len 23]
                        if arg2.length > 0:
                            require arg2.length >= 32
                            if not mem[128]:
                                revert with 0, 
                                            32,
                                            51,
                                            0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(32 * _14) + ceil32(arg2.length) + (2 * ceil32(return_data.size)) + 709 len 13]
                    else:
                        mem[(32 * _14) + ceil32(arg2.length) + (2 * ceil32(return_data.size)) + 622 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        41,
                                        0x647472616e73666572205361666545524332303a206c6f772d6c6576656c2063616c6c206661696c65,
                                        mem[(32 * _14) + ceil32(arg2.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 700 len 23]
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[(32 * _14) + ceil32(arg2.length) + (2 * ceil32(return_data.size)) + 622]:
                                revert with 0, 
                                            32,
                                            51,
                                            0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(32 * _14) + ceil32(arg2.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 710 len 13]
                else:
                    require 3 < mem[ceil32(arg2.length) + 256]
                    require 2 < mem[ceil32(arg2.length) + 256]
                    mem[(32 * _14) + ceil32(arg2.length) + (2 * ceil32(return_data.size)) + 526] = mem[ceil32(arg2.length) + 396 len 20]
                    if ext_code.hash(mem[ceil32(arg2.length) + 364 len 20]) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                        revert with 0, 'SafeERC20: call to non-contract'
                    if not ext_code.hash(mem[ceil32(arg2.length) + 364 len 20]):
                        revert with 0, 'SafeERC20: call to non-contract'
                    mem[(32 * _14) + ceil32(arg2.length) + (2 * ceil32(return_data.size)) + 590 len 64] = 0, mem[ceil32(arg2.length) + 396 len 20], mem[384 len 28]
                    call mem[ceil32(arg2.length) + 364 len 20].mem[(32 * _14) + ceil32(arg2.length) + (2 * ceil32(return_data.size)) + 554 len 4] with:
                         gas gas_remaining wei
                        args mem[384], Mask(224, 32, mem[ceil32(arg2.length) + 396 len 20], mem[384 len 28]) >> 32, mem[(32 * _14) + ceil32(arg2.length) + (2 * ceil32(return_data.size)) + 654 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        41,
                                        0x647472616e73666572205361666545524332303a206c6f772d6c6576656c2063616c6c206661696c65,
                                        mem[(32 * _14) + ceil32(arg2.length) + (2 * ceil32(return_data.size)) + 699 len 23]
                        if arg2.length > 0:
                            require arg2.length >= 32
                            if not mem[128]:
                                revert with 0, 
                                            32,
                                            51,
                                            0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(32 * _14) + ceil32(arg2.length) + (2 * ceil32(return_data.size)) + 709 len 13]
                        require 2 < mem[ceil32(arg2.length) + 256]
                        require 0 < mem[ceil32(arg2.length) + 256]
                        require 3 < mem[ceil32(arg2.length) + 256]
                        mem[(32 * _14) + ceil32(arg2.length) + (2 * ceil32(return_data.size)) + 786 len 0] = None
                        require ext_code.size(mem[ceil32(arg2.length) + 396 len 20])
                        if mem[ceil32(arg2.length) + 300 len 20] >= mem[ceil32(arg2.length) + 364 len 20]:
                            call mem[ceil32(arg2.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, mem[352], address(this.address), 128, 0
                        else:
                            call mem[ceil32(arg2.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args mem[352], 0, address(this.address), 128, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require 1 < mem[ceil32(arg2.length) + 256]
                        require 0 < mem[ceil32(arg2.length) + 256]
                        if ext_code.hash(mem[ceil32(arg2.length) + 300 len 20]) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            revert with 0, 'SafeERC20: call to non-contract'
                        if not ext_code.hash(mem[ceil32(arg2.length) + 300 len 20]):
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[(32 * _14) + ceil32(arg2.length) + (2 * ceil32(return_data.size)) + 722 len 64] = 0, mem[ceil32(arg2.length) + 332 len 20], mem[352 len 28]
                        call mem[ceil32(arg2.length) + 300 len 20] with:
                             gas gas_remaining wei
                            args mem[352], Mask(224, 32, mem[ceil32(arg2.length) + 332 len 20], mem[352 len 28]) >> 32, mem[(32 * _14) + ceil32(arg2.length) + (2 * ceil32(return_data.size)) + 786 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            41,
                                            0x647472616e73666572205361666545524332303a206c6f772d6c6576656c2063616c6c206661696c65,
                                            mem[(32 * _14) + ceil32(arg2.length) + (2 * ceil32(return_data.size)) + 831 len 23]
                            if arg2.length > 0:
                                require arg2.length >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _14) + ceil32(arg2.length) + (2 * ceil32(return_data.size)) + 841 len 13]
                        else:
                            mem[(32 * _14) + ceil32(arg2.length) + (2 * ceil32(return_data.size)) + 754 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            41,
                                            0x647472616e73666572205361666545524332303a206c6f772d6c6576656c2063616c6c206661696c65,
                                            mem[(32 * _14) + ceil32(arg2.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 832 len 23]
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[(32 * _14) + ceil32(arg2.length) + (2 * ceil32(return_data.size)) + 754]:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _14) + ceil32(arg2.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 842 len 13]
                    else:
                        mem[(32 * _14) + ceil32(arg2.length) + (2 * ceil32(return_data.size)) + 622 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        41,
                                        0x647472616e73666572205361666545524332303a206c6f772d6c6576656c2063616c6c206661696c65,
                                        mem[(32 * _14) + ceil32(arg2.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 700 len 23]
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[(32 * _14) + ceil32(arg2.length) + (2 * ceil32(return_data.size)) + 622]:
                                revert with 0, 
                                            32,
                                            51,
                                            0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(32 * _14) + ceil32(arg2.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 710 len 13]
                        require 2 < mem[ceil32(arg2.length) + 256]
                        require 0 < mem[ceil32(arg2.length) + 256]
                        require 3 < mem[ceil32(arg2.length) + 256]
                        mem[(32 * _14) + ceil32(arg2.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 787 len 0] = None
                        require ext_code.size(mem[ceil32(arg2.length) + 396 len 20])
                        if mem[ceil32(arg2.length) + 300 len 20] >= mem[ceil32(arg2.length) + 364 len 20]:
                            call mem[ceil32(arg2.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, mem[352], address(this.address), 128, 0
                        else:
                            call mem[ceil32(arg2.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args mem[352], 0, address(this.address), 128, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require 1 < mem[ceil32(arg2.length) + 256]
                        require 0 < mem[ceil32(arg2.length) + 256]
                        if ext_code.hash(mem[ceil32(arg2.length) + 300 len 20]) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            revert with 0, 'SafeERC20: call to non-contract'
                        if not ext_code.hash(mem[ceil32(arg2.length) + 300 len 20]):
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[(32 * _14) + ceil32(arg2.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 723 len 64] = 0, mem[ceil32(arg2.length) + 332 len 20], mem[352 len 28]
                        call mem[ceil32(arg2.length) + 300 len 20] with:
                             gas gas_remaining wei
                            args mem[352], Mask(224, 32, mem[ceil32(arg2.length) + 332 len 20], mem[352 len 28]) >> 32, mem[(32 * _14) + ceil32(arg2.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 787 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            41,
                                            0x647472616e73666572205361666545524332303a206c6f772d6c6576656c2063616c6c206661696c65,
                                            mem[(32 * _14) + ceil32(arg2.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 832 len 23]
                            if arg2.length > 0:
                                require arg2.length >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _14) + ceil32(arg2.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 842 len 13]
                        else:
                            mem[(32 * _14) + ceil32(arg2.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 755 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            41,
                                            0x647472616e73666572205361666545524332303a206c6f772d6c6576656c2063616c6c206661696c65,
                                            mem[(32 * _14) + ceil32(arg2.length) + (4 * ceil32(return_data.size)) + 833 len 23]
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[(32 * _14) + ceil32(arg2.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 755]:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _14) + ceil32(arg2.length) + (4 * ceil32(return_data.size)) + 843 len 13]
    uint8(stor1.field_0) = 1
    Mask(152, 0, stor1.field_8) = 0
}

function joeCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    mem[96] = arg4.length
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    if sub_c70968e7Address != msg.sender:
        revert with 0, 
                    32,
                    35,
                    0xfe6f6e6c79207065726d697373696f6e65642073776170207061697220616c6c6f7765,
                    mem[ceil32(arg4.length) + 231 len 29]
    if arg1 != this.address:
        revert with 0, 'only myself start the swap'
    mem[ceil32(arg4.length) + 128 len 64] = code.data[15291 len 64]
    mem[ceil32(arg4.length) + 192 len 64] = code.data[15291 len 64]
    require arg4.length >= 288
    _11 = mem[256]
    require mem[256] <= 4294967296
    require mem[256] + 64 <= arg4.length + 32
    require mem[mem[256] + 128] <= 4294967296 and mem[256] + (32 * mem[mem[256] + 128]) + 64 <= arg4.length + 32
    mem[ceil32(arg4.length) + 256] = mem[mem[256] + 128]
    _14 = mem[_11 + 128]
    mem[ceil32(arg4.length) + 288 len floor32(mem[_11 + 128])] = mem[_11 + 160 len floor32(mem[_11 + 128])]
    _12331 = mem[288]
    require ext_code.size(mem[172 len 20])
    staticcall mem[172 len 20].allowance(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(this.address), mem[204 len 20]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > mem[224]:
        mem[(32 * _14) + ceil32(arg4.length) + 324] = mem[224]
        mem[(32 * _14) + ceil32(arg4.length) + 356] = mem[300 len 20]
        require ext_code.size(mem[204 len 20])
        call mem[204 len 20].liquidateBorrow(address arg1, uint256 arg2, address arg3) with:
             gas gas_remaining wei
            args mem[140 len 20], mem[224], mem[300 len 20]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0, 'liquidation failed'
        require ext_code.size(mem[300 len 20])
        staticcall mem[300 len 20].balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(32 * _14) + ceil32(arg4.length) + 292] = ext_call.return_data[0]
        require ext_code.size(address(_12331))
        call address(_12331).redeem(uint256 arg1) with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        mem[(32 * _14) + ceil32(arg4.length) + 288] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if mem[ceil32(arg4.length) + 256] != 4:
            require 1 < mem[ceil32(arg4.length) + 256]
            _12375 = mem[352]
            require 0 < mem[ceil32(arg4.length) + 256]
            mem[(32 * _14) + ceil32(arg4.length) + 324] = mem[ceil32(arg4.length) + 332 len 20]
            if ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                revert with 0, 'SafeERC20: call to non-contract'
            if not ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                revert with 0, 'SafeERC20: call to non-contract'
            mem[(32 * _14) + ceil32(arg4.length) + 388 len 64] = 0, mem[(32 * _14) + ceil32(arg4.length) + 324], Mask(224, 32, _12375) >> 32
            call mem[ceil32(arg4.length) + 300 len 20].mem[(32 * _14) + ceil32(arg4.length) + 352 len 4] with:
                 gas gas_remaining wei
                args Mask(224, 32, _12375) << 224, mem[(32 * _14) + ceil32(arg4.length) + 452 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 
                                32,
                                41,
                                0x647472616e73666572205361666545524332303a206c6f772d6c6576656c2063616c6c206661696c65,
                                mem[(32 * _14) + ceil32(arg4.length) + 497 len 23]
                if arg4.length > 0:
                    require arg4.length >= 32
                    if not mem[128]:
                        revert with 0, 
                                    32,
                                    51,
                                    0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * _14) + ceil32(arg4.length) + 507 len 13]
            else:
                mem[(32 * _14) + ceil32(arg4.length) + 420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 
                                32,
                                41,
                                0x647472616e73666572205361666545524332303a206c6f772d6c6576656c2063616c6c206661696c65,
                                mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 498 len 23]
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[(32 * _14) + ceil32(arg4.length) + 420]:
                        revert with 0, 
                                    32,
                                    51,
                                    0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 508 len 13]
        else:
            require 3 < mem[ceil32(arg4.length) + 256]
            _12377 = mem[384]
            require 2 < mem[ceil32(arg4.length) + 256]
            _12380 = mem[ceil32(arg4.length) + 352]
            mem[(32 * _14) + ceil32(arg4.length) + 324] = mem[ceil32(arg4.length) + 396 len 20]
            mem[(32 * _14) + ceil32(arg4.length) + 356] = _12377
            mem[(32 * _14) + ceil32(arg4.length) + 288] = 68
            mem[(32 * _14) + ceil32(arg4.length) + 320 len 4] = transfer(address arg1, uint256 arg2)
            if ext_code.hash(address(_12380)) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                revert with 0, 'SafeERC20: call to non-contract'
            if not ext_code.hash(address(_12380)):
                revert with 0, 'SafeERC20: call to non-contract'
            mem[(32 * _14) + ceil32(arg4.length) + 388 len 64] = 0, mem[(32 * _14) + ceil32(arg4.length) + 324], Mask(224, 32, _12377) >> 32
            call address(_12380).mem[(32 * _14) + ceil32(arg4.length) + 352 len 4] with:
                 gas gas_remaining wei
                args Mask(224, 32, _12377) << 224, mem[(32 * _14) + ceil32(arg4.length) + 452 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 
                                32,
                                41,
                                0x647472616e73666572205361666545524332303a206c6f772d6c6576656c2063616c6c206661696c65,
                                mem[(32 * _14) + ceil32(arg4.length) + 497 len 23]
                if arg4.length > 0:
                    require arg4.length >= 32
                    if not mem[128]:
                        revert with 0, 
                                    32,
                                    51,
                                    0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * _14) + ceil32(arg4.length) + 507 len 13]
                require 2 < mem[ceil32(arg4.length) + 256]
                require 0 < mem[ceil32(arg4.length) + 256]
                require 3 < mem[ceil32(arg4.length) + 256]
                mem[(32 * _14) + ceil32(arg4.length) + 584 len 0] = None
                require ext_code.size(mem[ceil32(arg4.length) + 396 len 20])
                if mem[ceil32(arg4.length) + 300 len 20] >= mem[ceil32(arg4.length) + 364 len 20]:
                    call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, mem[352], address(this.address), 128, 0
                else:
                    call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args mem[352], 0, address(this.address), 128, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require 1 < mem[ceil32(arg4.length) + 256]
                require 0 < mem[ceil32(arg4.length) + 256]
                if ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                    revert with 0, 'SafeERC20: call to non-contract'
                if not ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                    revert with 0, 'SafeERC20: call to non-contract'
                mem[(32 * _14) + ceil32(arg4.length) + 520 len 64] = 0, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]
                call mem[ceil32(arg4.length) + 300 len 20] with:
                     gas gas_remaining wei
                    args mem[352], Mask(224, 32, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]) >> 32, mem[(32 * _14) + ceil32(arg4.length) + 584 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 
                                    32,
                                    41,
                                    0x647472616e73666572205361666545524332303a206c6f772d6c6576656c2063616c6c206661696c65,
                                    mem[(32 * _14) + ceil32(arg4.length) + 629 len 23]
                    if arg4.length > 0:
                        require arg4.length >= 32
                        if not mem[128]:
                            revert with 0, 
                                        32,
                                        51,
                                        0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _14) + ceil32(arg4.length) + 639 len 13]
                else:
                    mem[(32 * _14) + ceil32(arg4.length) + 552 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 
                                    32,
                                    41,
                                    0x647472616e73666572205361666545524332303a206c6f772d6c6576656c2063616c6c206661696c65,
                                    mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 630 len 23]
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[(32 * _14) + ceil32(arg4.length) + 552]:
                            revert with 0, 
                                        32,
                                        51,
                                        0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 640 len 13]
            else:
                mem[(32 * _14) + ceil32(arg4.length) + 388] = return_data.size
                mem[(32 * _14) + ceil32(arg4.length) + 420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 
                                32,
                                41,
                                0x647472616e73666572205361666545524332303a206c6f772d6c6576656c2063616c6c206661696c65,
                                mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 498 len 23]
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[(32 * _14) + ceil32(arg4.length) + 420]:
                        revert with 0, 
                                    32,
                                    51,
                                    0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 508 len 13]
                require 2 < mem[ceil32(arg4.length) + 256]
                require 0 < mem[ceil32(arg4.length) + 256]
                require 3 < mem[ceil32(arg4.length) + 256]
                mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 585 len 0] = None
                require ext_code.size(mem[ceil32(arg4.length) + 396 len 20])
                if mem[ceil32(arg4.length) + 300 len 20] >= mem[ceil32(arg4.length) + 364 len 20]:
                    call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, mem[352], address(this.address), 128, 0
                else:
                    call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args mem[352], 0, address(this.address), 128, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require 1 < mem[ceil32(arg4.length) + 256]
                require 0 < mem[ceil32(arg4.length) + 256]
                if ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                    revert with 0, 'SafeERC20: call to non-contract'
                if not ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                    revert with 0, 'SafeERC20: call to non-contract'
                mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 521 len 64] = 0, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]
                call mem[ceil32(arg4.length) + 300 len 20] with:
                     gas gas_remaining wei
                    args mem[352], Mask(224, 32, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]) >> 32, mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 585 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 
                                    32,
                                    41,
                                    0x647472616e73666572205361666545524332303a206c6f772d6c6576656c2063616c6c206661696c65,
                                    mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 630 len 23]
                    if arg4.length > 0:
                        require arg4.length >= 32
                        if not mem[128]:
                            revert with 0, 
                                        32,
                                        51,
                                        0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 640 len 13]
                else:
                    mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 553 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 
                                    32,
                                    41,
                                    0x647472616e73666572205361666545524332303a206c6f772d6c6576656c2063616c6c206661696c65,
                                    mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 631 len 23]
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 553]:
                            revert with 0, 
                                        32,
                                        51,
                                        0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 641 len 13]
    else:
        mem[(32 * _14) + ceil32(arg4.length) + 324] = mem[204 len 20]
        mem[(32 * _14) + ceil32(arg4.length) + 356] = 0
        mem[(32 * _14) + ceil32(arg4.length) + 288] = 68
        mem[(32 * _14) + ceil32(arg4.length) + 320 len 4] = approve(address arg1, uint256 arg2)
        if ext_code.hash(mem[172 len 20]) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
            revert with 0, 'SafeERC20: call to non-contract'
        if not ext_code.hash(mem[172 len 20]):
            revert with 0, 'SafeERC20: call to non-contract'
        mem[(32 * _14) + ceil32(arg4.length) + 388 len 64] = 0, mem[204 len 20], 0
        mem[(32 * _14) + ceil32(arg4.length) + 480 len 4] = 0
        call mem[172 len 20].mem[(32 * _14) + ceil32(arg4.length) + 352 len 4] with:
             gas gas_remaining wei
            args Mask(480, -256, 0, mem[204 len 20], 0) << 256, mem[(32 * _14) + ceil32(arg4.length) + 452 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 
                            32,
                            40,
                            0x64617070726f7665205361666545524332303a206c6f772d6c6576656c2063616c6c206661696c65,
                            mem[(32 * _14) + ceil32(arg4.length) + 496 len 24]
            if arg4.length > 0:
                require arg4.length >= 32
                if not mem[128]:
                    revert with 0, 
                                32,
                                50,
                                0x6453616665455243323020617070726f76653a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(32 * _14) + ceil32(arg4.length) + 506 len 14]
            require ext_code.size(mem[172 len 20])
            staticcall mem[172 len 20].allowance(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args address(this.address), mem[204 len 20]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0, 
                            32,
                            54,
                            0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                            mem[(32 * _14) + ceil32(arg4.length) + 510 len 10]
            mem[(32 * _14) + ceil32(arg4.length) + 424] = mem[204 len 20]
            mem[(32 * _14) + ceil32(arg4.length) + 388] = 68
            if ext_code.hash(mem[172 len 20]) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                revert with 0, 'SafeERC20: call to non-contract'
            if not ext_code.hash(mem[172 len 20]):
                revert with 0, 'SafeERC20: call to non-contract'
            mem[(32 * _14) + ceil32(arg4.length) + 488 len 64] = 0, mem[204 len 20], 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
            mem[(32 * _14) + ceil32(arg4.length) + 580 len 4] = test266151307()
            call mem[172 len 20].mem[(32 * _14) + ceil32(arg4.length) + 452 len 4] with:
                 gas gas_remaining wei
                args -1, Mask(224, 32, 0, mem[204 len 20], 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) >> 32, mem[(32 * _14) + ceil32(arg4.length) + 552 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 
                                32,
                                40,
                                0x64617070726f7665205361666545524332303a206c6f772d6c6576656c2063616c6c206661696c65,
                                mem[(32 * _14) + ceil32(arg4.length) + 596 len 24]
                if arg4.length > 0:
                    require arg4.length >= 32
                    if not mem[128]:
                        revert with 0, 
                                    32,
                                    50,
                                    0x6453616665455243323020617070726f76653a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * _14) + ceil32(arg4.length) + 606 len 14]
                require ext_code.size(mem[204 len 20])
                call mem[204 len 20].liquidateBorrow(address arg1, uint256 arg2, address arg3) with:
                     gas gas_remaining wei
                    args address(mem[128]), mem[224], address(_12331)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 'liquidation failed'
                require ext_code.size(address(_12331))
                staticcall address(_12331).balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(_12331))
                call address(_12331).redeem(uint256 arg1) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if mem[ceil32(arg4.length) + 256] != 4:
                    require 1 < mem[ceil32(arg4.length) + 256]
                    require 0 < mem[ceil32(arg4.length) + 256]
                    mem[(32 * _14) + ceil32(arg4.length) + 524] = mem[ceil32(arg4.length) + 332 len 20]
                    if ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                        revert with 0, 'SafeERC20: call to non-contract'
                    if not ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                        revert with 0, 'SafeERC20: call to non-contract'
                    mem[(32 * _14) + ceil32(arg4.length) + 588 len 64] = 0, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]
                    call mem[ceil32(arg4.length) + 300 len 20].mem[(32 * _14) + ceil32(arg4.length) + 552 len 4] with:
                         gas gas_remaining wei
                        args mem[352], Mask(224, 32, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]) >> 32, mem[(32 * _14) + ceil32(arg4.length) + 652 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        41,
                                        0x647472616e73666572205361666545524332303a206c6f772d6c6576656c2063616c6c206661696c65,
                                        mem[(32 * _14) + ceil32(arg4.length) + 697 len 23]
                        if arg4.length > 0:
                            require arg4.length >= 32
                            if not mem[128]:
                                revert with 0, 
                                            32,
                                            51,
                                            0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(32 * _14) + ceil32(arg4.length) + 707 len 13]
                    else:
                        mem[(32 * _14) + ceil32(arg4.length) + 620 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        41,
                                        0x647472616e73666572205361666545524332303a206c6f772d6c6576656c2063616c6c206661696c65,
                                        mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 698 len 23]
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[(32 * _14) + ceil32(arg4.length) + 620]:
                                revert with 0, 
                                            32,
                                            51,
                                            0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 708 len 13]
                else:
                    require 3 < mem[ceil32(arg4.length) + 256]
                    require 2 < mem[ceil32(arg4.length) + 256]
                    mem[(32 * _14) + ceil32(arg4.length) + 524] = mem[ceil32(arg4.length) + 396 len 20]
                    if ext_code.hash(mem[ceil32(arg4.length) + 364 len 20]) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                        revert with 0, 'SafeERC20: call to non-contract'
                    if not ext_code.hash(mem[ceil32(arg4.length) + 364 len 20]):
                        revert with 0, 'SafeERC20: call to non-contract'
                    mem[(32 * _14) + ceil32(arg4.length) + 588 len 64] = 0, mem[ceil32(arg4.length) + 396 len 20], mem[384 len 28]
                    call mem[ceil32(arg4.length) + 364 len 20].mem[(32 * _14) + ceil32(arg4.length) + 552 len 4] with:
                         gas gas_remaining wei
                        args mem[384], Mask(224, 32, mem[ceil32(arg4.length) + 396 len 20], mem[384 len 28]) >> 32, mem[(32 * _14) + ceil32(arg4.length) + 652 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        41,
                                        0x647472616e73666572205361666545524332303a206c6f772d6c6576656c2063616c6c206661696c65,
                                        mem[(32 * _14) + ceil32(arg4.length) + 697 len 23]
                        if arg4.length > 0:
                            require arg4.length >= 32
                            if not mem[128]:
                                revert with 0, 
                                            32,
                                            51,
                                            0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(32 * _14) + ceil32(arg4.length) + 707 len 13]
                        require 2 < mem[ceil32(arg4.length) + 256]
                        require 0 < mem[ceil32(arg4.length) + 256]
                        require 3 < mem[ceil32(arg4.length) + 256]
                        mem[(32 * _14) + ceil32(arg4.length) + 784 len 0] = None
                        require ext_code.size(mem[ceil32(arg4.length) + 396 len 20])
                        if mem[ceil32(arg4.length) + 300 len 20] >= mem[ceil32(arg4.length) + 364 len 20]:
                            call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, mem[352], address(this.address), 128, 0
                        else:
                            call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args mem[352], 0, address(this.address), 128, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require 1 < mem[ceil32(arg4.length) + 256]
                        require 0 < mem[ceil32(arg4.length) + 256]
                        if ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            revert with 0, 'SafeERC20: call to non-contract'
                        if not ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[(32 * _14) + ceil32(arg4.length) + 720 len 64] = 0, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]
                        call mem[ceil32(arg4.length) + 300 len 20] with:
                             gas gas_remaining wei
                            args mem[352], Mask(224, 32, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]) >> 32, mem[(32 * _14) + ceil32(arg4.length) + 784 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            41,
                                            0x647472616e73666572205361666545524332303a206c6f772d6c6576656c2063616c6c206661696c65,
                                            mem[(32 * _14) + ceil32(arg4.length) + 829 len 23]
                            if arg4.length > 0:
                                require arg4.length >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _14) + ceil32(arg4.length) + 839 len 13]
                        else:
                            mem[(32 * _14) + ceil32(arg4.length) + 752 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            41,
                                            0x647472616e73666572205361666545524332303a206c6f772d6c6576656c2063616c6c206661696c65,
                                            mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 830 len 23]
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[(32 * _14) + ceil32(arg4.length) + 752]:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 840 len 13]
                    else:
                        mem[(32 * _14) + ceil32(arg4.length) + 620 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        41,
                                        0x647472616e73666572205361666545524332303a206c6f772d6c6576656c2063616c6c206661696c65,
                                        mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 698 len 23]
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[(32 * _14) + ceil32(arg4.length) + 620]:
                                revert with 0, 
                                            32,
                                            51,
                                            0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 708 len 13]
                        require 2 < mem[ceil32(arg4.length) + 256]
                        require 0 < mem[ceil32(arg4.length) + 256]
                        require 3 < mem[ceil32(arg4.length) + 256]
                        mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 785 len 0] = None
                        require ext_code.size(mem[ceil32(arg4.length) + 396 len 20])
                        if mem[ceil32(arg4.length) + 300 len 20] >= mem[ceil32(arg4.length) + 364 len 20]:
                            call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, mem[352], address(this.address), 128, 0
                        else:
                            call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args mem[352], 0, address(this.address), 128, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require 1 < mem[ceil32(arg4.length) + 256]
                        require 0 < mem[ceil32(arg4.length) + 256]
                        if ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            revert with 0, 'SafeERC20: call to non-contract'
                        if not ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 721 len 64] = 0, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]
                        call mem[ceil32(arg4.length) + 300 len 20] with:
                             gas gas_remaining wei
                            args mem[352], Mask(224, 32, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]) >> 32, mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 785 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            41,
                                            0x647472616e73666572205361666545524332303a206c6f772d6c6576656c2063616c6c206661696c65,
                                            mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 830 len 23]
                            if arg4.length > 0:
                                require arg4.length >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 840 len 13]
                        else:
                            mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 753 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            41,
                                            0x647472616e73666572205361666545524332303a206c6f772d6c6576656c2063616c6c206661696c65,
                                            mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 831 len 23]
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 753]:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 841 len 13]
            else:
                mem[(32 * _14) + ceil32(arg4.length) + 520 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 
                                32,
                                40,
                                0x64617070726f7665205361666545524332303a206c6f772d6c6576656c2063616c6c206661696c65,
                                mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 597 len 24]
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[(32 * _14) + ceil32(arg4.length) + 520]:
                        revert with 0, 
                                    32,
                                    50,
                                    0x6453616665455243323020617070726f76653a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 607 len 14]
                require ext_code.size(mem[204 len 20])
                call mem[204 len 20].liquidateBorrow(address arg1, uint256 arg2, address arg3) with:
                     gas gas_remaining wei
                    args address(mem[128]), mem[224], address(_12331)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 'liquidation failed'
                require ext_code.size(address(_12331))
                staticcall address(_12331).balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(_12331))
                call address(_12331).redeem(uint256 arg1) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if mem[ceil32(arg4.length) + 256] != 4:
                    require 1 < mem[ceil32(arg4.length) + 256]
                    require 0 < mem[ceil32(arg4.length) + 256]
                    mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 525] = mem[ceil32(arg4.length) + 332 len 20]
                    if ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                        revert with 0, 'SafeERC20: call to non-contract'
                    if not ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                        revert with 0, 'SafeERC20: call to non-contract'
                    mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 589 len 64] = 0, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]
                    call mem[ceil32(arg4.length) + 300 len 20].mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 553 len 4] with:
                         gas gas_remaining wei
                        args mem[352], Mask(224, 32, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]) >> 32, mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 653 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        41,
                                        0x647472616e73666572205361666545524332303a206c6f772d6c6576656c2063616c6c206661696c65,
                                        mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 698 len 23]
                        if arg4.length > 0:
                            require arg4.length >= 32
                            if not mem[128]:
                                revert with 0, 
                                            32,
                                            51,
                                            0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 708 len 13]
                    else:
                        mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 621 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        41,
                                        0x647472616e73666572205361666545524332303a206c6f772d6c6576656c2063616c6c206661696c65,
                                        mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 699 len 23]
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 621]:
                                revert with 0, 
                                            32,
                                            51,
                                            0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 709 len 13]
                else:
                    require 3 < mem[ceil32(arg4.length) + 256]
                    require 2 < mem[ceil32(arg4.length) + 256]
                    mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 525] = mem[ceil32(arg4.length) + 396 len 20]
                    if ext_code.hash(mem[ceil32(arg4.length) + 364 len 20]) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                        revert with 0, 'SafeERC20: call to non-contract'
                    if not ext_code.hash(mem[ceil32(arg4.length) + 364 len 20]):
                        revert with 0, 'SafeERC20: call to non-contract'
                    mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 589 len 64] = 0, mem[ceil32(arg4.length) + 396 len 20], mem[384 len 28]
                    call mem[ceil32(arg4.length) + 364 len 20].mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 553 len 4] with:
                         gas gas_remaining wei
                        args mem[384], Mask(224, 32, mem[ceil32(arg4.length) + 396 len 20], mem[384 len 28]) >> 32, mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 653 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        41,
                                        0x647472616e73666572205361666545524332303a206c6f772d6c6576656c2063616c6c206661696c65,
                                        mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 698 len 23]
                        if arg4.length > 0:
                            require arg4.length >= 32
                            if not mem[128]:
                                revert with 0, 
                                            32,
                                            51,
                                            0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 708 len 13]
                        require 2 < mem[ceil32(arg4.length) + 256]
                        require 0 < mem[ceil32(arg4.length) + 256]
                        require 3 < mem[ceil32(arg4.length) + 256]
                        mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 785 len 0] = None
                        require ext_code.size(mem[ceil32(arg4.length) + 396 len 20])
                        if mem[ceil32(arg4.length) + 300 len 20] >= mem[ceil32(arg4.length) + 364 len 20]:
                            call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, mem[352], address(this.address), 128, 0
                        else:
                            call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args mem[352], 0, address(this.address), 128, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require 1 < mem[ceil32(arg4.length) + 256]
                        require 0 < mem[ceil32(arg4.length) + 256]
                        if ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            revert with 0, 'SafeERC20: call to non-contract'
                        if not ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 721 len 64] = 0, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]
                        call mem[ceil32(arg4.length) + 300 len 20] with:
                             gas gas_remaining wei
                            args mem[352], Mask(224, 32, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]) >> 32, mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 785 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            41,
                                            0x647472616e73666572205361666545524332303a206c6f772d6c6576656c2063616c6c206661696c65,
                                            mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 830 len 23]
                            if arg4.length > 0:
                                require arg4.length >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 840 len 13]
                        else:
                            mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 753 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            41,
                                            0x647472616e73666572205361666545524332303a206c6f772d6c6576656c2063616c6c206661696c65,
                                            mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 831 len 23]
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 753]:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 841 len 13]
                    else:
                        mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 621 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        41,
                                        0x647472616e73666572205361666545524332303a206c6f772d6c6576656c2063616c6c206661696c65,
                                        mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 699 len 23]
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 621]:
                                revert with 0, 
                                            32,
                                            51,
                                            0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 709 len 13]
                        require 2 < mem[ceil32(arg4.length) + 256]
                        require 0 < mem[ceil32(arg4.length) + 256]
                        require 3 < mem[ceil32(arg4.length) + 256]
                        mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 786 len 0] = None
                        require ext_code.size(mem[ceil32(arg4.length) + 396 len 20])
                        if mem[ceil32(arg4.length) + 300 len 20] >= mem[ceil32(arg4.length) + 364 len 20]:
                            call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, mem[352], address(this.address), 128, 0
                        else:
                            call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args mem[352], 0, address(this.address), 128, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require 1 < mem[ceil32(arg4.length) + 256]
                        require 0 < mem[ceil32(arg4.length) + 256]
                        if ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            revert with 0, 'SafeERC20: call to non-contract'
                        if not ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 722 len 64] = 0, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]
                        call mem[ceil32(arg4.length) + 300 len 20] with:
                             gas gas_remaining wei
                            args mem[352], Mask(224, 32, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]) >> 32, mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 786 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            41,
                                            0x647472616e73666572205361666545524332303a206c6f772d6c6576656c2063616c6c206661696c65,
                                            mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 831 len 23]
                            if arg4.length > 0:
                                require arg4.length >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 841 len 13]
                        else:
                            mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 754 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            41,
                                            0x647472616e73666572205361666545524332303a206c6f772d6c6576656c2063616c6c206661696c65,
                                            mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 832 len 23]
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 754]:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 842 len 13]
        else:
            mem[(32 * _14) + ceil32(arg4.length) + 388] = return_data.size
            mem[(32 * _14) + ceil32(arg4.length) + 420 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 
                            32,
                            40,
                            0x64617070726f7665205361666545524332303a206c6f772d6c6576656c2063616c6c206661696c65,
                            mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 497 len 24]
            if return_data.size > 0:
                require return_data.size >= 32
                if not mem[(32 * _14) + ceil32(arg4.length) + 420]:
                    revert with 0, 
                                32,
                                50,
                                0x6453616665455243323020617070726f76653a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 507 len 14]
            require ext_code.size(mem[172 len 20])
            staticcall mem[172 len 20].allowance(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args address(this.address), mem[204 len 20]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0, 
                            32,
                            54,
                            0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                            mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 511 len 10]
            mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 425] = mem[204 len 20]
            mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 389] = 68
            if ext_code.hash(mem[172 len 20]) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                revert with 0, 'SafeERC20: call to non-contract'
            if not ext_code.hash(mem[172 len 20]):
                revert with 0, 'SafeERC20: call to non-contract'
            mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 489 len 64] = 0, mem[204 len 20], 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
            mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 581 len 4] = test266151307()
            call mem[172 len 20].mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 453 len 4] with:
                 gas gas_remaining wei
                args -1, Mask(224, 32, 0, mem[204 len 20], 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) >> 32, mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 553 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 
                                32,
                                40,
                                0x64617070726f7665205361666545524332303a206c6f772d6c6576656c2063616c6c206661696c65,
                                mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 597 len 24]
                if arg4.length > 0:
                    require arg4.length >= 32
                    if not mem[128]:
                        revert with 0, 
                                    32,
                                    50,
                                    0x6453616665455243323020617070726f76653a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 607 len 14]
                require ext_code.size(mem[204 len 20])
                call mem[204 len 20].liquidateBorrow(address arg1, uint256 arg2, address arg3) with:
                     gas gas_remaining wei
                    args address(mem[128]), mem[224], address(_12331)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 'liquidation failed'
                require ext_code.size(address(_12331))
                staticcall address(_12331).balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(_12331))
                call address(_12331).redeem(uint256 arg1) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if mem[ceil32(arg4.length) + 256] != 4:
                    require 1 < mem[ceil32(arg4.length) + 256]
                    require 0 < mem[ceil32(arg4.length) + 256]
                    mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 525] = mem[ceil32(arg4.length) + 332 len 20]
                    if ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                        revert with 0, 'SafeERC20: call to non-contract'
                    if not ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                        revert with 0, 'SafeERC20: call to non-contract'
                    mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 589 len 64] = 0, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]
                    call mem[ceil32(arg4.length) + 300 len 20].mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 553 len 4] with:
                         gas gas_remaining wei
                        args mem[352], Mask(224, 32, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]) >> 32, mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 653 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        41,
                                        0x647472616e73666572205361666545524332303a206c6f772d6c6576656c2063616c6c206661696c65,
                                        mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 698 len 23]
                        if arg4.length > 0:
                            require arg4.length >= 32
                            if not mem[128]:
                                revert with 0, 
                                            32,
                                            51,
                                            0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 708 len 13]
                    else:
                        mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 621 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        41,
                                        0x647472616e73666572205361666545524332303a206c6f772d6c6576656c2063616c6c206661696c65,
                                        mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 699 len 23]
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 621]:
                                revert with 0, 
                                            32,
                                            51,
                                            0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 709 len 13]
                else:
                    require 3 < mem[ceil32(arg4.length) + 256]
                    require 2 < mem[ceil32(arg4.length) + 256]
                    mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 525] = mem[ceil32(arg4.length) + 396 len 20]
                    if ext_code.hash(mem[ceil32(arg4.length) + 364 len 20]) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                        revert with 0, 'SafeERC20: call to non-contract'
                    if not ext_code.hash(mem[ceil32(arg4.length) + 364 len 20]):
                        revert with 0, 'SafeERC20: call to non-contract'
                    mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 589 len 64] = 0, mem[ceil32(arg4.length) + 396 len 20], mem[384 len 28]
                    call mem[ceil32(arg4.length) + 364 len 20].mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 553 len 4] with:
                         gas gas_remaining wei
                        args mem[384], Mask(224, 32, mem[ceil32(arg4.length) + 396 len 20], mem[384 len 28]) >> 32, mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 653 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        41,
                                        0x647472616e73666572205361666545524332303a206c6f772d6c6576656c2063616c6c206661696c65,
                                        mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 698 len 23]
                        if arg4.length > 0:
                            require arg4.length >= 32
                            if not mem[128]:
                                revert with 0, 
                                            32,
                                            51,
                                            0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 708 len 13]
                        require 2 < mem[ceil32(arg4.length) + 256]
                        require 0 < mem[ceil32(arg4.length) + 256]
                        require 3 < mem[ceil32(arg4.length) + 256]
                        mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 785 len 0] = None
                        require ext_code.size(mem[ceil32(arg4.length) + 396 len 20])
                        if mem[ceil32(arg4.length) + 300 len 20] >= mem[ceil32(arg4.length) + 364 len 20]:
                            call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, mem[352], address(this.address), 128, 0
                        else:
                            call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args mem[352], 0, address(this.address), 128, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require 1 < mem[ceil32(arg4.length) + 256]
                        require 0 < mem[ceil32(arg4.length) + 256]
                        if ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            revert with 0, 'SafeERC20: call to non-contract'
                        if not ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 721 len 64] = 0, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]
                        call mem[ceil32(arg4.length) + 300 len 20] with:
                             gas gas_remaining wei
                            args mem[352], Mask(224, 32, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]) >> 32, mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 785 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            41,
                                            0x647472616e73666572205361666545524332303a206c6f772d6c6576656c2063616c6c206661696c65,
                                            mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 830 len 23]
                            if arg4.length > 0:
                                require arg4.length >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 840 len 13]
                        else:
                            mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 753 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            41,
                                            0x647472616e73666572205361666545524332303a206c6f772d6c6576656c2063616c6c206661696c65,
                                            mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 831 len 23]
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 753]:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 841 len 13]
                    else:
                        mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 621 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        41,
                                        0x647472616e73666572205361666545524332303a206c6f772d6c6576656c2063616c6c206661696c65,
                                        mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 699 len 23]
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 621]:
                                revert with 0, 
                                            32,
                                            51,
                                            0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 709 len 13]
                        require 2 < mem[ceil32(arg4.length) + 256]
                        require 0 < mem[ceil32(arg4.length) + 256]
                        require 3 < mem[ceil32(arg4.length) + 256]
                        mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 786 len 0] = None
                        require ext_code.size(mem[ceil32(arg4.length) + 396 len 20])
                        if mem[ceil32(arg4.length) + 300 len 20] >= mem[ceil32(arg4.length) + 364 len 20]:
                            call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, mem[352], address(this.address), 128, 0
                        else:
                            call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args mem[352], 0, address(this.address), 128, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require 1 < mem[ceil32(arg4.length) + 256]
                        require 0 < mem[ceil32(arg4.length) + 256]
                        if ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            revert with 0, 'SafeERC20: call to non-contract'
                        if not ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 722 len 64] = 0, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]
                        call mem[ceil32(arg4.length) + 300 len 20] with:
                             gas gas_remaining wei
                            args mem[352], Mask(224, 32, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]) >> 32, mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 786 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            41,
                                            0x647472616e73666572205361666545524332303a206c6f772d6c6576656c2063616c6c206661696c65,
                                            mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 831 len 23]
                            if arg4.length > 0:
                                require arg4.length >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 841 len 13]
                        else:
                            mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 754 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            41,
                                            0x647472616e73666572205361666545524332303a206c6f772d6c6576656c2063616c6c206661696c65,
                                            mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 832 len 23]
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 754]:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 842 len 13]
            else:
                mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 
                                32,
                                40,
                                0x64617070726f7665205361666545524332303a206c6f772d6c6576656c2063616c6c206661696c65,
                                mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 598 len 24]
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 521]:
                        revert with 0, 
                                    32,
                                    50,
                                    0x6453616665455243323020617070726f76653a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 608 len 14]
                require ext_code.size(mem[204 len 20])
                call mem[204 len 20].liquidateBorrow(address arg1, uint256 arg2, address arg3) with:
                     gas gas_remaining wei
                    args address(mem[128]), mem[224], address(_12331)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 'liquidation failed'
                require ext_code.size(address(_12331))
                staticcall address(_12331).balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(_12331))
                call address(_12331).redeem(uint256 arg1) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if mem[ceil32(arg4.length) + 256] != 4:
                    require 1 < mem[ceil32(arg4.length) + 256]
                    require 0 < mem[ceil32(arg4.length) + 256]
                    mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 526] = mem[ceil32(arg4.length) + 332 len 20]
                    if ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                        revert with 0, 'SafeERC20: call to non-contract'
                    if not ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                        revert with 0, 'SafeERC20: call to non-contract'
                    mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 590 len 64] = 0, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]
                    call mem[ceil32(arg4.length) + 300 len 20].mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 554 len 4] with:
                         gas gas_remaining wei
                        args mem[352], Mask(224, 32, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]) >> 32, mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 654 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        41,
                                        0x647472616e73666572205361666545524332303a206c6f772d6c6576656c2063616c6c206661696c65,
                                        mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 699 len 23]
                        if arg4.length > 0:
                            require arg4.length >= 32
                            if not mem[128]:
                                revert with 0, 
                                            32,
                                            51,
                                            0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 709 len 13]
                    else:
                        mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 622 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        41,
                                        0x647472616e73666572205361666545524332303a206c6f772d6c6576656c2063616c6c206661696c65,
                                        mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 700 len 23]
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 622]:
                                revert with 0, 
                                            32,
                                            51,
                                            0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 710 len 13]
                else:
                    require 3 < mem[ceil32(arg4.length) + 256]
                    require 2 < mem[ceil32(arg4.length) + 256]
                    mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 526] = mem[ceil32(arg4.length) + 396 len 20]
                    if ext_code.hash(mem[ceil32(arg4.length) + 364 len 20]) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                        revert with 0, 'SafeERC20: call to non-contract'
                    if not ext_code.hash(mem[ceil32(arg4.length) + 364 len 20]):
                        revert with 0, 'SafeERC20: call to non-contract'
                    mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 590 len 64] = 0, mem[ceil32(arg4.length) + 396 len 20], mem[384 len 28]
                    call mem[ceil32(arg4.length) + 364 len 20].mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 554 len 4] with:
                         gas gas_remaining wei
                        args mem[384], Mask(224, 32, mem[ceil32(arg4.length) + 396 len 20], mem[384 len 28]) >> 32, mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 654 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        41,
                                        0x647472616e73666572205361666545524332303a206c6f772d6c6576656c2063616c6c206661696c65,
                                        mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 699 len 23]
                        if arg4.length > 0:
                            require arg4.length >= 32
                            if not mem[128]:
                                revert with 0, 
                                            32,
                                            51,
                                            0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 709 len 13]
                        require 2 < mem[ceil32(arg4.length) + 256]
                        require 0 < mem[ceil32(arg4.length) + 256]
                        require 3 < mem[ceil32(arg4.length) + 256]
                        mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 786 len 0] = None
                        require ext_code.size(mem[ceil32(arg4.length) + 396 len 20])
                        if mem[ceil32(arg4.length) + 300 len 20] >= mem[ceil32(arg4.length) + 364 len 20]:
                            call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, mem[352], address(this.address), 128, 0
                        else:
                            call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args mem[352], 0, address(this.address), 128, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require 1 < mem[ceil32(arg4.length) + 256]
                        require 0 < mem[ceil32(arg4.length) + 256]
                        if ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            revert with 0, 'SafeERC20: call to non-contract'
                        if not ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 722 len 64] = 0, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]
                        call mem[ceil32(arg4.length) + 300 len 20] with:
                             gas gas_remaining wei
                            args mem[352], Mask(224, 32, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]) >> 32, mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 786 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            41,
                                            0x647472616e73666572205361666545524332303a206c6f772d6c6576656c2063616c6c206661696c65,
                                            mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 831 len 23]
                            if arg4.length > 0:
                                require arg4.length >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 841 len 13]
                        else:
                            mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 754 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            41,
                                            0x647472616e73666572205361666545524332303a206c6f772d6c6576656c2063616c6c206661696c65,
                                            mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 832 len 23]
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 754]:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 842 len 13]
                    else:
                        mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 622 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        41,
                                        0x647472616e73666572205361666545524332303a206c6f772d6c6576656c2063616c6c206661696c65,
                                        mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 700 len 23]
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 622]:
                                revert with 0, 
                                            32,
                                            51,
                                            0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 710 len 13]
                        require 2 < mem[ceil32(arg4.length) + 256]
                        require 0 < mem[ceil32(arg4.length) + 256]
                        require 3 < mem[ceil32(arg4.length) + 256]
                        mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 787 len 0] = None
                        require ext_code.size(mem[ceil32(arg4.length) + 396 len 20])
                        if mem[ceil32(arg4.length) + 300 len 20] >= mem[ceil32(arg4.length) + 364 len 20]:
                            call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, mem[352], address(this.address), 128, 0
                        else:
                            call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args mem[352], 0, address(this.address), 128, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require 1 < mem[ceil32(arg4.length) + 256]
                        require 0 < mem[ceil32(arg4.length) + 256]
                        if ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            revert with 0, 'SafeERC20: call to non-contract'
                        if not ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 723 len 64] = 0, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]
                        call mem[ceil32(arg4.length) + 300 len 20] with:
                             gas gas_remaining wei
                            args mem[352], Mask(224, 32, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]) >> 32, mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 787 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            41,
                                            0x647472616e73666572205361666545524332303a206c6f772d6c6576656c2063616c6c206661696c65,
                                            mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 832 len 23]
                            if arg4.length > 0:
                                require arg4.length >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 842 len 13]
                        else:
                            mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 755 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            41,
                                            0x647472616e73666572205361666545524332303a206c6f772d6c6576656c2063616c6c206661696c65,
                                            mem[(32 * _14) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 833 len 23]
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 755]:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _14) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 843 len 13]
    uint8(stor1.field_0) = 1
    Mask(152, 0, stor1.field_8) = 0
}

function hswapV2Call(address arg1, uint256 arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    mem[96] = arg4.length
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    if sub_c70968e7Address != msg.sender:
        revert with 0, 
                    32,
                    35,
                    0xfe6f6e6c79207065726d697373696f6e65642073776170207061697220616c6c6f7765,
                    mem[ceil32(arg4.length) + 231 len 29]
    if arg1 != this.address:
        revert with 0, 'only myself start the swap'
    mem[ceil32(arg4.length) + 128 len 64] = code.data[15291 len 64]
    mem[ceil32(arg4.length) + 192 len 64] = code.data[15291 len 64]
    require arg4.length >= 288
    _11 = mem[256]
    require mem[256] <= 4294967296
    require mem[256] + 64 <= arg4.length + 32
    require mem[mem[256] + 128] <= 4294967296 and mem[256] + (32 * mem[mem[256] + 128]) + 64 <= arg4.length + 32
    mem[ceil32(arg4.length) + 256] = mem[mem[256] + 128]
    _14 = mem[_11 + 128]
    mem[ceil32(arg4.length) + 288 len floor32(mem[_11 + 128])] = mem[_11 + 160 len floor32(mem[_11 + 128])]
    _12331 = mem[288]
    require ext_code.size(mem[172 len 20])
    staticcall mem[172 len 20].allowance(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(this.address), mem[204 len 20]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > mem[224]:
        mem[(32 * _14) + ceil32(arg4.length) + 324] = mem[224]
        mem[(32 * _14) + ceil32(arg4.length) + 356] = mem[300 len 20]
        require ext_code.size(mem[204 len 20])
        call mem[204 len 20].liquidateBorrow(address arg1, uint256 arg2, address arg3) with:
             gas gas_remaining wei
            args mem[140 len 20], mem[224], mem[300 len 20]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0, 'liquidation failed'
        require ext_code.size(mem[300 len 20])
        staticcall mem[300 len 20].balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(32 * _14) + ceil32(arg4.length) + 292] = ext_call.return_data[0]
        require ext_code.size(address(_12331))
        call address(_12331).redeem(uint256 arg1) with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        mem[(32 * _14) + ceil32(arg4.length) + 288] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if mem[ceil32(arg4.length) + 256] != 4:
            require 1 < mem[ceil32(arg4.length) + 256]
            _12375 = mem[352]
            require 0 < mem[ceil32(arg4.length) + 256]
            mem[(32 * _14) + ceil32(arg4.length) + 324] = mem[ceil32(arg4.length) + 332 len 20]
            if ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                revert with 0, 'SafeERC20: call to non-contract'
            if not ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                revert with 0, 'SafeERC20: call to non-contract'
            mem[(32 * _14) + ceil32(arg4.length) + 388 len 64] = 0, mem[(32 * _14) + ceil32(arg4.length) + 324], Mask(224, 32, _12375) >> 32
            call mem[ceil32(arg4.length) + 300 len 20].mem[(32 * _14) + ceil32(arg4.length) + 352 len 4] with:
                 gas gas_remaining wei
                args Mask(224, 32, _12375) << 224, mem[(32 * _14) + ceil32(arg4.length) + 452 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 
                                32,
                                41,
                                0x647472616e73666572205361666545524332303a206c6f772d6c6576656c2063616c6c206661696c65,
                                mem[(32 * _14) + ceil32(arg4.length) + 497 len 23]
                if arg4.length > 0:
                    require arg4.length >= 32
                    if not mem[128]:
                        revert with 0, 
                                    32,
                                    51,
                                    0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * _14) + ceil32(arg4.length) + 507 len 13]
            else:
                mem[(32 * _14) + ceil32(arg4.length) + 420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 
                                32,
                                41,
                                0x647472616e73666572205361666545524332303a206c6f772d6c6576656c2063616c6c206661696c65,
                                mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 498 len 23]
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[(32 * _14) + ceil32(arg4.length) + 420]:
                        revert with 0, 
                                    32,
                                    51,
                                    0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 508 len 13]
        else:
            require 3 < mem[ceil32(arg4.length) + 256]
            _12377 = mem[384]
            require 2 < mem[ceil32(arg4.length) + 256]
            _12380 = mem[ceil32(arg4.length) + 352]
            mem[(32 * _14) + ceil32(arg4.length) + 324] = mem[ceil32(arg4.length) + 396 len 20]
            mem[(32 * _14) + ceil32(arg4.length) + 356] = _12377
            mem[(32 * _14) + ceil32(arg4.length) + 288] = 68
            mem[(32 * _14) + ceil32(arg4.length) + 320 len 4] = transfer(address arg1, uint256 arg2)
            if ext_code.hash(address(_12380)) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                revert with 0, 'SafeERC20: call to non-contract'
            if not ext_code.hash(address(_12380)):
                revert with 0, 'SafeERC20: call to non-contract'
            mem[(32 * _14) + ceil32(arg4.length) + 388 len 64] = 0, mem[(32 * _14) + ceil32(arg4.length) + 324], Mask(224, 32, _12377) >> 32
            call address(_12380).mem[(32 * _14) + ceil32(arg4.length) + 352 len 4] with:
                 gas gas_remaining wei
                args Mask(224, 32, _12377) << 224, mem[(32 * _14) + ceil32(arg4.length) + 452 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 
                                32,
                                41,
                                0x647472616e73666572205361666545524332303a206c6f772d6c6576656c2063616c6c206661696c65,
                                mem[(32 * _14) + ceil32(arg4.length) + 497 len 23]
                if arg4.length > 0:
                    require arg4.length >= 32
                    if not mem[128]:
                        revert with 0, 
                                    32,
                                    51,
                                    0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * _14) + ceil32(arg4.length) + 507 len 13]
                require 2 < mem[ceil32(arg4.length) + 256]
                require 0 < mem[ceil32(arg4.length) + 256]
                require 3 < mem[ceil32(arg4.length) + 256]
                mem[(32 * _14) + ceil32(arg4.length) + 584 len 0] = None
                require ext_code.size(mem[ceil32(arg4.length) + 396 len 20])
                if mem[ceil32(arg4.length) + 300 len 20] >= mem[ceil32(arg4.length) + 364 len 20]:
                    call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, mem[352], address(this.address), 128, 0
                else:
                    call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args mem[352], 0, address(this.address), 128, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require 1 < mem[ceil32(arg4.length) + 256]
                require 0 < mem[ceil32(arg4.length) + 256]
                if ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                    revert with 0, 'SafeERC20: call to non-contract'
                if not ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                    revert with 0, 'SafeERC20: call to non-contract'
                mem[(32 * _14) + ceil32(arg4.length) + 520 len 64] = 0, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]
                call mem[ceil32(arg4.length) + 300 len 20] with:
                     gas gas_remaining wei
                    args mem[352], Mask(224, 32, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]) >> 32, mem[(32 * _14) + ceil32(arg4.length) + 584 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 
                                    32,
                                    41,
                                    0x647472616e73666572205361666545524332303a206c6f772d6c6576656c2063616c6c206661696c65,
                                    mem[(32 * _14) + ceil32(arg4.length) + 629 len 23]
                    if arg4.length > 0:
                        require arg4.length >= 32
                        if not mem[128]:
                            revert with 0, 
                                        32,
                                        51,
                                        0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _14) + ceil32(arg4.length) + 639 len 13]
                else:
                    mem[(32 * _14) + ceil32(arg4.length) + 552 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 
                                    32,
                                    41,
                                    0x647472616e73666572205361666545524332303a206c6f772d6c6576656c2063616c6c206661696c65,
                                    mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 630 len 23]
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[(32 * _14) + ceil32(arg4.length) + 552]:
                            revert with 0, 
                                        32,
                                        51,
                                        0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 640 len 13]
            else:
                mem[(32 * _14) + ceil32(arg4.length) + 388] = return_data.size
                mem[(32 * _14) + ceil32(arg4.length) + 420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 
                                32,
                                41,
                                0x647472616e73666572205361666545524332303a206c6f772d6c6576656c2063616c6c206661696c65,
                                mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 498 len 23]
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[(32 * _14) + ceil32(arg4.length) + 420]:
                        revert with 0, 
                                    32,
                                    51,
                                    0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 508 len 13]
                require 2 < mem[ceil32(arg4.length) + 256]
                require 0 < mem[ceil32(arg4.length) + 256]
                require 3 < mem[ceil32(arg4.length) + 256]
                mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 585 len 0] = None
                require ext_code.size(mem[ceil32(arg4.length) + 396 len 20])
                if mem[ceil32(arg4.length) + 300 len 20] >= mem[ceil32(arg4.length) + 364 len 20]:
                    call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, mem[352], address(this.address), 128, 0
                else:
                    call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args mem[352], 0, address(this.address), 128, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require 1 < mem[ceil32(arg4.length) + 256]
                require 0 < mem[ceil32(arg4.length) + 256]
                if ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                    revert with 0, 'SafeERC20: call to non-contract'
                if not ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                    revert with 0, 'SafeERC20: call to non-contract'
                mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 521 len 64] = 0, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]
                call mem[ceil32(arg4.length) + 300 len 20] with:
                     gas gas_remaining wei
                    args mem[352], Mask(224, 32, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]) >> 32, mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 585 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 
                                    32,
                                    41,
                                    0x647472616e73666572205361666545524332303a206c6f772d6c6576656c2063616c6c206661696c65,
                                    mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 630 len 23]
                    if arg4.length > 0:
                        require arg4.length >= 32
                        if not mem[128]:
                            revert with 0, 
                                        32,
                                        51,
                                        0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 640 len 13]
                else:
                    mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 553 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 
                                    32,
                                    41,
                                    0x647472616e73666572205361666545524332303a206c6f772d6c6576656c2063616c6c206661696c65,
                                    mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 631 len 23]
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 553]:
                            revert with 0, 
                                        32,
                                        51,
                                        0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 641 len 13]
    else:
        mem[(32 * _14) + ceil32(arg4.length) + 324] = mem[204 len 20]
        mem[(32 * _14) + ceil32(arg4.length) + 356] = 0
        mem[(32 * _14) + ceil32(arg4.length) + 288] = 68
        mem[(32 * _14) + ceil32(arg4.length) + 320 len 4] = approve(address arg1, uint256 arg2)
        if ext_code.hash(mem[172 len 20]) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
            revert with 0, 'SafeERC20: call to non-contract'
        if not ext_code.hash(mem[172 len 20]):
            revert with 0, 'SafeERC20: call to non-contract'
        mem[(32 * _14) + ceil32(arg4.length) + 388 len 64] = 0, mem[204 len 20], 0
        mem[(32 * _14) + ceil32(arg4.length) + 480 len 4] = 0
        call mem[172 len 20].mem[(32 * _14) + ceil32(arg4.length) + 352 len 4] with:
             gas gas_remaining wei
            args Mask(480, -256, 0, mem[204 len 20], 0) << 256, mem[(32 * _14) + ceil32(arg4.length) + 452 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 
                            32,
                            40,
                            0x64617070726f7665205361666545524332303a206c6f772d6c6576656c2063616c6c206661696c65,
                            mem[(32 * _14) + ceil32(arg4.length) + 496 len 24]
            if arg4.length > 0:
                require arg4.length >= 32
                if not mem[128]:
                    revert with 0, 
                                32,
                                50,
                                0x6453616665455243323020617070726f76653a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(32 * _14) + ceil32(arg4.length) + 506 len 14]
            require ext_code.size(mem[172 len 20])
            staticcall mem[172 len 20].allowance(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args address(this.address), mem[204 len 20]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0, 
                            32,
                            54,
                            0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                            mem[(32 * _14) + ceil32(arg4.length) + 510 len 10]
            mem[(32 * _14) + ceil32(arg4.length) + 424] = mem[204 len 20]
            mem[(32 * _14) + ceil32(arg4.length) + 388] = 68
            if ext_code.hash(mem[172 len 20]) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                revert with 0, 'SafeERC20: call to non-contract'
            if not ext_code.hash(mem[172 len 20]):
                revert with 0, 'SafeERC20: call to non-contract'
            mem[(32 * _14) + ceil32(arg4.length) + 488 len 64] = 0, mem[204 len 20], 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
            mem[(32 * _14) + ceil32(arg4.length) + 580 len 4] = test266151307()
            call mem[172 len 20].mem[(32 * _14) + ceil32(arg4.length) + 452 len 4] with:
                 gas gas_remaining wei
                args -1, Mask(224, 32, 0, mem[204 len 20], 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) >> 32, mem[(32 * _14) + ceil32(arg4.length) + 552 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 
                                32,
                                40,
                                0x64617070726f7665205361666545524332303a206c6f772d6c6576656c2063616c6c206661696c65,
                                mem[(32 * _14) + ceil32(arg4.length) + 596 len 24]
                if arg4.length > 0:
                    require arg4.length >= 32
                    if not mem[128]:
                        revert with 0, 
                                    32,
                                    50,
                                    0x6453616665455243323020617070726f76653a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * _14) + ceil32(arg4.length) + 606 len 14]
                require ext_code.size(mem[204 len 20])
                call mem[204 len 20].liquidateBorrow(address arg1, uint256 arg2, address arg3) with:
                     gas gas_remaining wei
                    args address(mem[128]), mem[224], address(_12331)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 'liquidation failed'
                require ext_code.size(address(_12331))
                staticcall address(_12331).balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(_12331))
                call address(_12331).redeem(uint256 arg1) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if mem[ceil32(arg4.length) + 256] != 4:
                    require 1 < mem[ceil32(arg4.length) + 256]
                    require 0 < mem[ceil32(arg4.length) + 256]
                    mem[(32 * _14) + ceil32(arg4.length) + 524] = mem[ceil32(arg4.length) + 332 len 20]
                    if ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                        revert with 0, 'SafeERC20: call to non-contract'
                    if not ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                        revert with 0, 'SafeERC20: call to non-contract'
                    mem[(32 * _14) + ceil32(arg4.length) + 588 len 64] = 0, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]
                    call mem[ceil32(arg4.length) + 300 len 20].mem[(32 * _14) + ceil32(arg4.length) + 552 len 4] with:
                         gas gas_remaining wei
                        args mem[352], Mask(224, 32, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]) >> 32, mem[(32 * _14) + ceil32(arg4.length) + 652 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        41,
                                        0x647472616e73666572205361666545524332303a206c6f772d6c6576656c2063616c6c206661696c65,
                                        mem[(32 * _14) + ceil32(arg4.length) + 697 len 23]
                        if arg4.length > 0:
                            require arg4.length >= 32
                            if not mem[128]:
                                revert with 0, 
                                            32,
                                            51,
                                            0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(32 * _14) + ceil32(arg4.length) + 707 len 13]
                    else:
                        mem[(32 * _14) + ceil32(arg4.length) + 620 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        41,
                                        0x647472616e73666572205361666545524332303a206c6f772d6c6576656c2063616c6c206661696c65,
                                        mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 698 len 23]
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[(32 * _14) + ceil32(arg4.length) + 620]:
                                revert with 0, 
                                            32,
                                            51,
                                            0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 708 len 13]
                else:
                    require 3 < mem[ceil32(arg4.length) + 256]
                    require 2 < mem[ceil32(arg4.length) + 256]
                    mem[(32 * _14) + ceil32(arg4.length) + 524] = mem[ceil32(arg4.length) + 396 len 20]
                    if ext_code.hash(mem[ceil32(arg4.length) + 364 len 20]) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                        revert with 0, 'SafeERC20: call to non-contract'
                    if not ext_code.hash(mem[ceil32(arg4.length) + 364 len 20]):
                        revert with 0, 'SafeERC20: call to non-contract'
                    mem[(32 * _14) + ceil32(arg4.length) + 588 len 64] = 0, mem[ceil32(arg4.length) + 396 len 20], mem[384 len 28]
                    call mem[ceil32(arg4.length) + 364 len 20].mem[(32 * _14) + ceil32(arg4.length) + 552 len 4] with:
                         gas gas_remaining wei
                        args mem[384], Mask(224, 32, mem[ceil32(arg4.length) + 396 len 20], mem[384 len 28]) >> 32, mem[(32 * _14) + ceil32(arg4.length) + 652 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        41,
                                        0x647472616e73666572205361666545524332303a206c6f772d6c6576656c2063616c6c206661696c65,
                                        mem[(32 * _14) + ceil32(arg4.length) + 697 len 23]
                        if arg4.length > 0:
                            require arg4.length >= 32
                            if not mem[128]:
                                revert with 0, 
                                            32,
                                            51,
                                            0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(32 * _14) + ceil32(arg4.length) + 707 len 13]
                        require 2 < mem[ceil32(arg4.length) + 256]
                        require 0 < mem[ceil32(arg4.length) + 256]
                        require 3 < mem[ceil32(arg4.length) + 256]
                        mem[(32 * _14) + ceil32(arg4.length) + 784 len 0] = None
                        require ext_code.size(mem[ceil32(arg4.length) + 396 len 20])
                        if mem[ceil32(arg4.length) + 300 len 20] >= mem[ceil32(arg4.length) + 364 len 20]:
                            call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, mem[352], address(this.address), 128, 0
                        else:
                            call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args mem[352], 0, address(this.address), 128, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require 1 < mem[ceil32(arg4.length) + 256]
                        require 0 < mem[ceil32(arg4.length) + 256]
                        if ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            revert with 0, 'SafeERC20: call to non-contract'
                        if not ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[(32 * _14) + ceil32(arg4.length) + 720 len 64] = 0, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]
                        call mem[ceil32(arg4.length) + 300 len 20] with:
                             gas gas_remaining wei
                            args mem[352], Mask(224, 32, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]) >> 32, mem[(32 * _14) + ceil32(arg4.length) + 784 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            41,
                                            0x647472616e73666572205361666545524332303a206c6f772d6c6576656c2063616c6c206661696c65,
                                            mem[(32 * _14) + ceil32(arg4.length) + 829 len 23]
                            if arg4.length > 0:
                                require arg4.length >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _14) + ceil32(arg4.length) + 839 len 13]
                        else:
                            mem[(32 * _14) + ceil32(arg4.length) + 752 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            41,
                                            0x647472616e73666572205361666545524332303a206c6f772d6c6576656c2063616c6c206661696c65,
                                            mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 830 len 23]
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[(32 * _14) + ceil32(arg4.length) + 752]:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 840 len 13]
                    else:
                        mem[(32 * _14) + ceil32(arg4.length) + 620 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        41,
                                        0x647472616e73666572205361666545524332303a206c6f772d6c6576656c2063616c6c206661696c65,
                                        mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 698 len 23]
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[(32 * _14) + ceil32(arg4.length) + 620]:
                                revert with 0, 
                                            32,
                                            51,
                                            0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 708 len 13]
                        require 2 < mem[ceil32(arg4.length) + 256]
                        require 0 < mem[ceil32(arg4.length) + 256]
                        require 3 < mem[ceil32(arg4.length) + 256]
                        mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 785 len 0] = None
                        require ext_code.size(mem[ceil32(arg4.length) + 396 len 20])
                        if mem[ceil32(arg4.length) + 300 len 20] >= mem[ceil32(arg4.length) + 364 len 20]:
                            call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, mem[352], address(this.address), 128, 0
                        else:
                            call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args mem[352], 0, address(this.address), 128, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require 1 < mem[ceil32(arg4.length) + 256]
                        require 0 < mem[ceil32(arg4.length) + 256]
                        if ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            revert with 0, 'SafeERC20: call to non-contract'
                        if not ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 721 len 64] = 0, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]
                        call mem[ceil32(arg4.length) + 300 len 20] with:
                             gas gas_remaining wei
                            args mem[352], Mask(224, 32, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]) >> 32, mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 785 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            41,
                                            0x647472616e73666572205361666545524332303a206c6f772d6c6576656c2063616c6c206661696c65,
                                            mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 830 len 23]
                            if arg4.length > 0:
                                require arg4.length >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 840 len 13]
                        else:
                            mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 753 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            41,
                                            0x647472616e73666572205361666545524332303a206c6f772d6c6576656c2063616c6c206661696c65,
                                            mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 831 len 23]
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 753]:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 841 len 13]
            else:
                mem[(32 * _14) + ceil32(arg4.length) + 520 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 
                                32,
                                40,
                                0x64617070726f7665205361666545524332303a206c6f772d6c6576656c2063616c6c206661696c65,
                                mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 597 len 24]
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[(32 * _14) + ceil32(arg4.length) + 520]:
                        revert with 0, 
                                    32,
                                    50,
                                    0x6453616665455243323020617070726f76653a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 607 len 14]
                require ext_code.size(mem[204 len 20])
                call mem[204 len 20].liquidateBorrow(address arg1, uint256 arg2, address arg3) with:
                     gas gas_remaining wei
                    args address(mem[128]), mem[224], address(_12331)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 'liquidation failed'
                require ext_code.size(address(_12331))
                staticcall address(_12331).balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(_12331))
                call address(_12331).redeem(uint256 arg1) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if mem[ceil32(arg4.length) + 256] != 4:
                    require 1 < mem[ceil32(arg4.length) + 256]
                    require 0 < mem[ceil32(arg4.length) + 256]
                    mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 525] = mem[ceil32(arg4.length) + 332 len 20]
                    if ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                        revert with 0, 'SafeERC20: call to non-contract'
                    if not ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                        revert with 0, 'SafeERC20: call to non-contract'
                    mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 589 len 64] = 0, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]
                    call mem[ceil32(arg4.length) + 300 len 20].mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 553 len 4] with:
                         gas gas_remaining wei
                        args mem[352], Mask(224, 32, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]) >> 32, mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 653 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        41,
                                        0x647472616e73666572205361666545524332303a206c6f772d6c6576656c2063616c6c206661696c65,
                                        mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 698 len 23]
                        if arg4.length > 0:
                            require arg4.length >= 32
                            if not mem[128]:
                                revert with 0, 
                                            32,
                                            51,
                                            0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 708 len 13]
                    else:
                        mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 621 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        41,
                                        0x647472616e73666572205361666545524332303a206c6f772d6c6576656c2063616c6c206661696c65,
                                        mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 699 len 23]
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 621]:
                                revert with 0, 
                                            32,
                                            51,
                                            0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 709 len 13]
                else:
                    require 3 < mem[ceil32(arg4.length) + 256]
                    require 2 < mem[ceil32(arg4.length) + 256]
                    mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 525] = mem[ceil32(arg4.length) + 396 len 20]
                    if ext_code.hash(mem[ceil32(arg4.length) + 364 len 20]) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                        revert with 0, 'SafeERC20: call to non-contract'
                    if not ext_code.hash(mem[ceil32(arg4.length) + 364 len 20]):
                        revert with 0, 'SafeERC20: call to non-contract'
                    mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 589 len 64] = 0, mem[ceil32(arg4.length) + 396 len 20], mem[384 len 28]
                    call mem[ceil32(arg4.length) + 364 len 20].mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 553 len 4] with:
                         gas gas_remaining wei
                        args mem[384], Mask(224, 32, mem[ceil32(arg4.length) + 396 len 20], mem[384 len 28]) >> 32, mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 653 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        41,
                                        0x647472616e73666572205361666545524332303a206c6f772d6c6576656c2063616c6c206661696c65,
                                        mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 698 len 23]
                        if arg4.length > 0:
                            require arg4.length >= 32
                            if not mem[128]:
                                revert with 0, 
                                            32,
                                            51,
                                            0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 708 len 13]
                        require 2 < mem[ceil32(arg4.length) + 256]
                        require 0 < mem[ceil32(arg4.length) + 256]
                        require 3 < mem[ceil32(arg4.length) + 256]
                        mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 785 len 0] = None
                        require ext_code.size(mem[ceil32(arg4.length) + 396 len 20])
                        if mem[ceil32(arg4.length) + 300 len 20] >= mem[ceil32(arg4.length) + 364 len 20]:
                            call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, mem[352], address(this.address), 128, 0
                        else:
                            call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args mem[352], 0, address(this.address), 128, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require 1 < mem[ceil32(arg4.length) + 256]
                        require 0 < mem[ceil32(arg4.length) + 256]
                        if ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            revert with 0, 'SafeERC20: call to non-contract'
                        if not ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 721 len 64] = 0, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]
                        call mem[ceil32(arg4.length) + 300 len 20] with:
                             gas gas_remaining wei
                            args mem[352], Mask(224, 32, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]) >> 32, mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 785 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            41,
                                            0x647472616e73666572205361666545524332303a206c6f772d6c6576656c2063616c6c206661696c65,
                                            mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 830 len 23]
                            if arg4.length > 0:
                                require arg4.length >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 840 len 13]
                        else:
                            mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 753 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            41,
                                            0x647472616e73666572205361666545524332303a206c6f772d6c6576656c2063616c6c206661696c65,
                                            mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 831 len 23]
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 753]:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 841 len 13]
                    else:
                        mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 621 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        41,
                                        0x647472616e73666572205361666545524332303a206c6f772d6c6576656c2063616c6c206661696c65,
                                        mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 699 len 23]
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 621]:
                                revert with 0, 
                                            32,
                                            51,
                                            0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 709 len 13]
                        require 2 < mem[ceil32(arg4.length) + 256]
                        require 0 < mem[ceil32(arg4.length) + 256]
                        require 3 < mem[ceil32(arg4.length) + 256]
                        mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 786 len 0] = None
                        require ext_code.size(mem[ceil32(arg4.length) + 396 len 20])
                        if mem[ceil32(arg4.length) + 300 len 20] >= mem[ceil32(arg4.length) + 364 len 20]:
                            call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, mem[352], address(this.address), 128, 0
                        else:
                            call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args mem[352], 0, address(this.address), 128, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require 1 < mem[ceil32(arg4.length) + 256]
                        require 0 < mem[ceil32(arg4.length) + 256]
                        if ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            revert with 0, 'SafeERC20: call to non-contract'
                        if not ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 722 len 64] = 0, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]
                        call mem[ceil32(arg4.length) + 300 len 20] with:
                             gas gas_remaining wei
                            args mem[352], Mask(224, 32, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]) >> 32, mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 786 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            41,
                                            0x647472616e73666572205361666545524332303a206c6f772d6c6576656c2063616c6c206661696c65,
                                            mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 831 len 23]
                            if arg4.length > 0:
                                require arg4.length >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 841 len 13]
                        else:
                            mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 754 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            41,
                                            0x647472616e73666572205361666545524332303a206c6f772d6c6576656c2063616c6c206661696c65,
                                            mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 832 len 23]
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 754]:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 842 len 13]
        else:
            mem[(32 * _14) + ceil32(arg4.length) + 388] = return_data.size
            mem[(32 * _14) + ceil32(arg4.length) + 420 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 
                            32,
                            40,
                            0x64617070726f7665205361666545524332303a206c6f772d6c6576656c2063616c6c206661696c65,
                            mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 497 len 24]
            if return_data.size > 0:
                require return_data.size >= 32
                if not mem[(32 * _14) + ceil32(arg4.length) + 420]:
                    revert with 0, 
                                32,
                                50,
                                0x6453616665455243323020617070726f76653a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 507 len 14]
            require ext_code.size(mem[172 len 20])
            staticcall mem[172 len 20].allowance(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args address(this.address), mem[204 len 20]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0, 
                            32,
                            54,
                            0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                            mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 511 len 10]
            mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 425] = mem[204 len 20]
            mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 389] = 68
            if ext_code.hash(mem[172 len 20]) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                revert with 0, 'SafeERC20: call to non-contract'
            if not ext_code.hash(mem[172 len 20]):
                revert with 0, 'SafeERC20: call to non-contract'
            mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 489 len 64] = 0, mem[204 len 20], 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
            mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 581 len 4] = test266151307()
            call mem[172 len 20].mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 453 len 4] with:
                 gas gas_remaining wei
                args -1, Mask(224, 32, 0, mem[204 len 20], 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) >> 32, mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 553 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 
                                32,
                                40,
                                0x64617070726f7665205361666545524332303a206c6f772d6c6576656c2063616c6c206661696c65,
                                mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 597 len 24]
                if arg4.length > 0:
                    require arg4.length >= 32
                    if not mem[128]:
                        revert with 0, 
                                    32,
                                    50,
                                    0x6453616665455243323020617070726f76653a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 607 len 14]
                require ext_code.size(mem[204 len 20])
                call mem[204 len 20].liquidateBorrow(address arg1, uint256 arg2, address arg3) with:
                     gas gas_remaining wei
                    args address(mem[128]), mem[224], address(_12331)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 'liquidation failed'
                require ext_code.size(address(_12331))
                staticcall address(_12331).balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(_12331))
                call address(_12331).redeem(uint256 arg1) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if mem[ceil32(arg4.length) + 256] != 4:
                    require 1 < mem[ceil32(arg4.length) + 256]
                    require 0 < mem[ceil32(arg4.length) + 256]
                    mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 525] = mem[ceil32(arg4.length) + 332 len 20]
                    if ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                        revert with 0, 'SafeERC20: call to non-contract'
                    if not ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                        revert with 0, 'SafeERC20: call to non-contract'
                    mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 589 len 64] = 0, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]
                    call mem[ceil32(arg4.length) + 300 len 20].mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 553 len 4] with:
                         gas gas_remaining wei
                        args mem[352], Mask(224, 32, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]) >> 32, mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 653 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        41,
                                        0x647472616e73666572205361666545524332303a206c6f772d6c6576656c2063616c6c206661696c65,
                                        mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 698 len 23]
                        if arg4.length > 0:
                            require arg4.length >= 32
                            if not mem[128]:
                                revert with 0, 
                                            32,
                                            51,
                                            0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 708 len 13]
                    else:
                        mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 621 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        41,
                                        0x647472616e73666572205361666545524332303a206c6f772d6c6576656c2063616c6c206661696c65,
                                        mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 699 len 23]
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 621]:
                                revert with 0, 
                                            32,
                                            51,
                                            0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 709 len 13]
                else:
                    require 3 < mem[ceil32(arg4.length) + 256]
                    require 2 < mem[ceil32(arg4.length) + 256]
                    mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 525] = mem[ceil32(arg4.length) + 396 len 20]
                    if ext_code.hash(mem[ceil32(arg4.length) + 364 len 20]) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                        revert with 0, 'SafeERC20: call to non-contract'
                    if not ext_code.hash(mem[ceil32(arg4.length) + 364 len 20]):
                        revert with 0, 'SafeERC20: call to non-contract'
                    mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 589 len 64] = 0, mem[ceil32(arg4.length) + 396 len 20], mem[384 len 28]
                    call mem[ceil32(arg4.length) + 364 len 20].mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 553 len 4] with:
                         gas gas_remaining wei
                        args mem[384], Mask(224, 32, mem[ceil32(arg4.length) + 396 len 20], mem[384 len 28]) >> 32, mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 653 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        41,
                                        0x647472616e73666572205361666545524332303a206c6f772d6c6576656c2063616c6c206661696c65,
                                        mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 698 len 23]
                        if arg4.length > 0:
                            require arg4.length >= 32
                            if not mem[128]:
                                revert with 0, 
                                            32,
                                            51,
                                            0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 708 len 13]
                        require 2 < mem[ceil32(arg4.length) + 256]
                        require 0 < mem[ceil32(arg4.length) + 256]
                        require 3 < mem[ceil32(arg4.length) + 256]
                        mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 785 len 0] = None
                        require ext_code.size(mem[ceil32(arg4.length) + 396 len 20])
                        if mem[ceil32(arg4.length) + 300 len 20] >= mem[ceil32(arg4.length) + 364 len 20]:
                            call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, mem[352], address(this.address), 128, 0
                        else:
                            call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args mem[352], 0, address(this.address), 128, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require 1 < mem[ceil32(arg4.length) + 256]
                        require 0 < mem[ceil32(arg4.length) + 256]
                        if ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            revert with 0, 'SafeERC20: call to non-contract'
                        if not ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 721 len 64] = 0, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]
                        call mem[ceil32(arg4.length) + 300 len 20] with:
                             gas gas_remaining wei
                            args mem[352], Mask(224, 32, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]) >> 32, mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 785 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            41,
                                            0x647472616e73666572205361666545524332303a206c6f772d6c6576656c2063616c6c206661696c65,
                                            mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 830 len 23]
                            if arg4.length > 0:
                                require arg4.length >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 840 len 13]
                        else:
                            mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 753 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            41,
                                            0x647472616e73666572205361666545524332303a206c6f772d6c6576656c2063616c6c206661696c65,
                                            mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 831 len 23]
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 753]:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 841 len 13]
                    else:
                        mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 621 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        41,
                                        0x647472616e73666572205361666545524332303a206c6f772d6c6576656c2063616c6c206661696c65,
                                        mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 699 len 23]
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 621]:
                                revert with 0, 
                                            32,
                                            51,
                                            0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 709 len 13]
                        require 2 < mem[ceil32(arg4.length) + 256]
                        require 0 < mem[ceil32(arg4.length) + 256]
                        require 3 < mem[ceil32(arg4.length) + 256]
                        mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 786 len 0] = None
                        require ext_code.size(mem[ceil32(arg4.length) + 396 len 20])
                        if mem[ceil32(arg4.length) + 300 len 20] >= mem[ceil32(arg4.length) + 364 len 20]:
                            call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, mem[352], address(this.address), 128, 0
                        else:
                            call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args mem[352], 0, address(this.address), 128, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require 1 < mem[ceil32(arg4.length) + 256]
                        require 0 < mem[ceil32(arg4.length) + 256]
                        if ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            revert with 0, 'SafeERC20: call to non-contract'
                        if not ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 722 len 64] = 0, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]
                        call mem[ceil32(arg4.length) + 300 len 20] with:
                             gas gas_remaining wei
                            args mem[352], Mask(224, 32, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]) >> 32, mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 786 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            41,
                                            0x647472616e73666572205361666545524332303a206c6f772d6c6576656c2063616c6c206661696c65,
                                            mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 831 len 23]
                            if arg4.length > 0:
                                require arg4.length >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 841 len 13]
                        else:
                            mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 754 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            41,
                                            0x647472616e73666572205361666545524332303a206c6f772d6c6576656c2063616c6c206661696c65,
                                            mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 832 len 23]
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 754]:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 842 len 13]
            else:
                mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 
                                32,
                                40,
                                0x64617070726f7665205361666545524332303a206c6f772d6c6576656c2063616c6c206661696c65,
                                mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 598 len 24]
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 521]:
                        revert with 0, 
                                    32,
                                    50,
                                    0x6453616665455243323020617070726f76653a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 608 len 14]
                require ext_code.size(mem[204 len 20])
                call mem[204 len 20].liquidateBorrow(address arg1, uint256 arg2, address arg3) with:
                     gas gas_remaining wei
                    args address(mem[128]), mem[224], address(_12331)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 'liquidation failed'
                require ext_code.size(address(_12331))
                staticcall address(_12331).balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(_12331))
                call address(_12331).redeem(uint256 arg1) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if mem[ceil32(arg4.length) + 256] != 4:
                    require 1 < mem[ceil32(arg4.length) + 256]
                    require 0 < mem[ceil32(arg4.length) + 256]
                    mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 526] = mem[ceil32(arg4.length) + 332 len 20]
                    if ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                        revert with 0, 'SafeERC20: call to non-contract'
                    if not ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                        revert with 0, 'SafeERC20: call to non-contract'
                    mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 590 len 64] = 0, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]
                    call mem[ceil32(arg4.length) + 300 len 20].mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 554 len 4] with:
                         gas gas_remaining wei
                        args mem[352], Mask(224, 32, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]) >> 32, mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 654 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        41,
                                        0x647472616e73666572205361666545524332303a206c6f772d6c6576656c2063616c6c206661696c65,
                                        mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 699 len 23]
                        if arg4.length > 0:
                            require arg4.length >= 32
                            if not mem[128]:
                                revert with 0, 
                                            32,
                                            51,
                                            0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 709 len 13]
                    else:
                        mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 622 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        41,
                                        0x647472616e73666572205361666545524332303a206c6f772d6c6576656c2063616c6c206661696c65,
                                        mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 700 len 23]
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 622]:
                                revert with 0, 
                                            32,
                                            51,
                                            0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 710 len 13]
                else:
                    require 3 < mem[ceil32(arg4.length) + 256]
                    require 2 < mem[ceil32(arg4.length) + 256]
                    mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 526] = mem[ceil32(arg4.length) + 396 len 20]
                    if ext_code.hash(mem[ceil32(arg4.length) + 364 len 20]) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                        revert with 0, 'SafeERC20: call to non-contract'
                    if not ext_code.hash(mem[ceil32(arg4.length) + 364 len 20]):
                        revert with 0, 'SafeERC20: call to non-contract'
                    mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 590 len 64] = 0, mem[ceil32(arg4.length) + 396 len 20], mem[384 len 28]
                    call mem[ceil32(arg4.length) + 364 len 20].mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 554 len 4] with:
                         gas gas_remaining wei
                        args mem[384], Mask(224, 32, mem[ceil32(arg4.length) + 396 len 20], mem[384 len 28]) >> 32, mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 654 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        41,
                                        0x647472616e73666572205361666545524332303a206c6f772d6c6576656c2063616c6c206661696c65,
                                        mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 699 len 23]
                        if arg4.length > 0:
                            require arg4.length >= 32
                            if not mem[128]:
                                revert with 0, 
                                            32,
                                            51,
                                            0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 709 len 13]
                        require 2 < mem[ceil32(arg4.length) + 256]
                        require 0 < mem[ceil32(arg4.length) + 256]
                        require 3 < mem[ceil32(arg4.length) + 256]
                        mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 786 len 0] = None
                        require ext_code.size(mem[ceil32(arg4.length) + 396 len 20])
                        if mem[ceil32(arg4.length) + 300 len 20] >= mem[ceil32(arg4.length) + 364 len 20]:
                            call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, mem[352], address(this.address), 128, 0
                        else:
                            call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args mem[352], 0, address(this.address), 128, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require 1 < mem[ceil32(arg4.length) + 256]
                        require 0 < mem[ceil32(arg4.length) + 256]
                        if ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            revert with 0, 'SafeERC20: call to non-contract'
                        if not ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 722 len 64] = 0, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]
                        call mem[ceil32(arg4.length) + 300 len 20] with:
                             gas gas_remaining wei
                            args mem[352], Mask(224, 32, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]) >> 32, mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 786 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            41,
                                            0x647472616e73666572205361666545524332303a206c6f772d6c6576656c2063616c6c206661696c65,
                                            mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 831 len 23]
                            if arg4.length > 0:
                                require arg4.length >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 841 len 13]
                        else:
                            mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 754 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            41,
                                            0x647472616e73666572205361666545524332303a206c6f772d6c6576656c2063616c6c206661696c65,
                                            mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 832 len 23]
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 754]:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 842 len 13]
                    else:
                        mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 622 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        41,
                                        0x647472616e73666572205361666545524332303a206c6f772d6c6576656c2063616c6c206661696c65,
                                        mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 700 len 23]
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 622]:
                                revert with 0, 
                                            32,
                                            51,
                                            0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 710 len 13]
                        require 2 < mem[ceil32(arg4.length) + 256]
                        require 0 < mem[ceil32(arg4.length) + 256]
                        require 3 < mem[ceil32(arg4.length) + 256]
                        mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 787 len 0] = None
                        require ext_code.size(mem[ceil32(arg4.length) + 396 len 20])
                        if mem[ceil32(arg4.length) + 300 len 20] >= mem[ceil32(arg4.length) + 364 len 20]:
                            call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, mem[352], address(this.address), 128, 0
                        else:
                            call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args mem[352], 0, address(this.address), 128, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require 1 < mem[ceil32(arg4.length) + 256]
                        require 0 < mem[ceil32(arg4.length) + 256]
                        if ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            revert with 0, 'SafeERC20: call to non-contract'
                        if not ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 723 len 64] = 0, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]
                        call mem[ceil32(arg4.length) + 300 len 20] with:
                             gas gas_remaining wei
                            args mem[352], Mask(224, 32, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]) >> 32, mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 787 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            41,
                                            0x647472616e73666572205361666545524332303a206c6f772d6c6576656c2063616c6c206661696c65,
                                            mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 832 len 23]
                            if arg4.length > 0:
                                require arg4.length >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 842 len 13]
                        else:
                            mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 755 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            41,
                                            0x647472616e73666572205361666545524332303a206c6f772d6c6576656c2063616c6c206661696c65,
                                            mem[(32 * _14) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 833 len 23]
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 755]:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _14) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 843 len 13]
    uint8(stor1.field_0) = 1
    Mask(152, 0, stor1.field_8) = 0
}

function pancakeCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    mem[96] = arg4.length
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    if sub_c70968e7Address != msg.sender:
        revert with 0, 
                    32,
                    35,
                    0xfe6f6e6c79207065726d697373696f6e65642073776170207061697220616c6c6f7765,
                    mem[ceil32(arg4.length) + 231 len 29]
    if arg1 != this.address:
        revert with 0, 'only myself start the swap'
    mem[ceil32(arg4.length) + 128 len 64] = code.data[15291 len 64]
    mem[ceil32(arg4.length) + 192 len 64] = code.data[15291 len 64]
    require arg4.length >= 288
    _11 = mem[256]
    require mem[256] <= 4294967296
    require mem[256] + 64 <= arg4.length + 32
    require mem[mem[256] + 128] <= 4294967296 and mem[256] + (32 * mem[mem[256] + 128]) + 64 <= arg4.length + 32
    mem[ceil32(arg4.length) + 256] = mem[mem[256] + 128]
    _14 = mem[_11 + 128]
    mem[ceil32(arg4.length) + 288 len floor32(mem[_11 + 128])] = mem[_11 + 160 len floor32(mem[_11 + 128])]
    _12331 = mem[288]
    require ext_code.size(mem[172 len 20])
    staticcall mem[172 len 20].allowance(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(this.address), mem[204 len 20]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > mem[224]:
        mem[(32 * _14) + ceil32(arg4.length) + 324] = mem[224]
        mem[(32 * _14) + ceil32(arg4.length) + 356] = mem[300 len 20]
        require ext_code.size(mem[204 len 20])
        call mem[204 len 20].liquidateBorrow(address arg1, uint256 arg2, address arg3) with:
             gas gas_remaining wei
            args mem[140 len 20], mem[224], mem[300 len 20]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0, 'liquidation failed'
        require ext_code.size(mem[300 len 20])
        staticcall mem[300 len 20].balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(32 * _14) + ceil32(arg4.length) + 292] = ext_call.return_data[0]
        require ext_code.size(address(_12331))
        call address(_12331).redeem(uint256 arg1) with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        mem[(32 * _14) + ceil32(arg4.length) + 288] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if mem[ceil32(arg4.length) + 256] != 4:
            require 1 < mem[ceil32(arg4.length) + 256]
            _12375 = mem[352]
            require 0 < mem[ceil32(arg4.length) + 256]
            mem[(32 * _14) + ceil32(arg4.length) + 324] = mem[ceil32(arg4.length) + 332 len 20]
            if ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                revert with 0, 'SafeERC20: call to non-contract'
            if not ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                revert with 0, 'SafeERC20: call to non-contract'
            mem[(32 * _14) + ceil32(arg4.length) + 388 len 64] = 0, mem[(32 * _14) + ceil32(arg4.length) + 324], Mask(224, 32, _12375) >> 32
            call mem[ceil32(arg4.length) + 300 len 20].mem[(32 * _14) + ceil32(arg4.length) + 352 len 4] with:
                 gas gas_remaining wei
                args Mask(224, 32, _12375) << 224, mem[(32 * _14) + ceil32(arg4.length) + 452 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 
                                32,
                                41,
                                0x647472616e73666572205361666545524332303a206c6f772d6c6576656c2063616c6c206661696c65,
                                mem[(32 * _14) + ceil32(arg4.length) + 497 len 23]
                if arg4.length > 0:
                    require arg4.length >= 32
                    if not mem[128]:
                        revert with 0, 
                                    32,
                                    51,
                                    0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * _14) + ceil32(arg4.length) + 507 len 13]
            else:
                mem[(32 * _14) + ceil32(arg4.length) + 420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 
                                32,
                                41,
                                0x647472616e73666572205361666545524332303a206c6f772d6c6576656c2063616c6c206661696c65,
                                mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 498 len 23]
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[(32 * _14) + ceil32(arg4.length) + 420]:
                        revert with 0, 
                                    32,
                                    51,
                                    0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 508 len 13]
        else:
            require 3 < mem[ceil32(arg4.length) + 256]
            _12377 = mem[384]
            require 2 < mem[ceil32(arg4.length) + 256]
            _12380 = mem[ceil32(arg4.length) + 352]
            mem[(32 * _14) + ceil32(arg4.length) + 324] = mem[ceil32(arg4.length) + 396 len 20]
            mem[(32 * _14) + ceil32(arg4.length) + 356] = _12377
            mem[(32 * _14) + ceil32(arg4.length) + 288] = 68
            mem[(32 * _14) + ceil32(arg4.length) + 320 len 4] = transfer(address arg1, uint256 arg2)
            if ext_code.hash(address(_12380)) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                revert with 0, 'SafeERC20: call to non-contract'
            if not ext_code.hash(address(_12380)):
                revert with 0, 'SafeERC20: call to non-contract'
            mem[(32 * _14) + ceil32(arg4.length) + 388 len 64] = 0, mem[(32 * _14) + ceil32(arg4.length) + 324], Mask(224, 32, _12377) >> 32
            call address(_12380).mem[(32 * _14) + ceil32(arg4.length) + 352 len 4] with:
                 gas gas_remaining wei
                args Mask(224, 32, _12377) << 224, mem[(32 * _14) + ceil32(arg4.length) + 452 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 
                                32,
                                41,
                                0x647472616e73666572205361666545524332303a206c6f772d6c6576656c2063616c6c206661696c65,
                                mem[(32 * _14) + ceil32(arg4.length) + 497 len 23]
                if arg4.length > 0:
                    require arg4.length >= 32
                    if not mem[128]:
                        revert with 0, 
                                    32,
                                    51,
                                    0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * _14) + ceil32(arg4.length) + 507 len 13]
                require 2 < mem[ceil32(arg4.length) + 256]
                require 0 < mem[ceil32(arg4.length) + 256]
                require 3 < mem[ceil32(arg4.length) + 256]
                mem[(32 * _14) + ceil32(arg4.length) + 584 len 0] = None
                require ext_code.size(mem[ceil32(arg4.length) + 396 len 20])
                if mem[ceil32(arg4.length) + 300 len 20] >= mem[ceil32(arg4.length) + 364 len 20]:
                    call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, mem[352], address(this.address), 128, 0
                else:
                    call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args mem[352], 0, address(this.address), 128, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require 1 < mem[ceil32(arg4.length) + 256]
                require 0 < mem[ceil32(arg4.length) + 256]
                if ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                    revert with 0, 'SafeERC20: call to non-contract'
                if not ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                    revert with 0, 'SafeERC20: call to non-contract'
                mem[(32 * _14) + ceil32(arg4.length) + 520 len 64] = 0, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]
                call mem[ceil32(arg4.length) + 300 len 20] with:
                     gas gas_remaining wei
                    args mem[352], Mask(224, 32, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]) >> 32, mem[(32 * _14) + ceil32(arg4.length) + 584 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 
                                    32,
                                    41,
                                    0x647472616e73666572205361666545524332303a206c6f772d6c6576656c2063616c6c206661696c65,
                                    mem[(32 * _14) + ceil32(arg4.length) + 629 len 23]
                    if arg4.length > 0:
                        require arg4.length >= 32
                        if not mem[128]:
                            revert with 0, 
                                        32,
                                        51,
                                        0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _14) + ceil32(arg4.length) + 639 len 13]
                else:
                    mem[(32 * _14) + ceil32(arg4.length) + 552 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 
                                    32,
                                    41,
                                    0x647472616e73666572205361666545524332303a206c6f772d6c6576656c2063616c6c206661696c65,
                                    mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 630 len 23]
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[(32 * _14) + ceil32(arg4.length) + 552]:
                            revert with 0, 
                                        32,
                                        51,
                                        0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 640 len 13]
            else:
                mem[(32 * _14) + ceil32(arg4.length) + 388] = return_data.size
                mem[(32 * _14) + ceil32(arg4.length) + 420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 
                                32,
                                41,
                                0x647472616e73666572205361666545524332303a206c6f772d6c6576656c2063616c6c206661696c65,
                                mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 498 len 23]
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[(32 * _14) + ceil32(arg4.length) + 420]:
                        revert with 0, 
                                    32,
                                    51,
                                    0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 508 len 13]
                require 2 < mem[ceil32(arg4.length) + 256]
                require 0 < mem[ceil32(arg4.length) + 256]
                require 3 < mem[ceil32(arg4.length) + 256]
                mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 585 len 0] = None
                require ext_code.size(mem[ceil32(arg4.length) + 396 len 20])
                if mem[ceil32(arg4.length) + 300 len 20] >= mem[ceil32(arg4.length) + 364 len 20]:
                    call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, mem[352], address(this.address), 128, 0
                else:
                    call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args mem[352], 0, address(this.address), 128, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require 1 < mem[ceil32(arg4.length) + 256]
                require 0 < mem[ceil32(arg4.length) + 256]
                if ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                    revert with 0, 'SafeERC20: call to non-contract'
                if not ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                    revert with 0, 'SafeERC20: call to non-contract'
                mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 521 len 64] = 0, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]
                call mem[ceil32(arg4.length) + 300 len 20] with:
                     gas gas_remaining wei
                    args mem[352], Mask(224, 32, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]) >> 32, mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 585 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 
                                    32,
                                    41,
                                    0x647472616e73666572205361666545524332303a206c6f772d6c6576656c2063616c6c206661696c65,
                                    mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 630 len 23]
                    if arg4.length > 0:
                        require arg4.length >= 32
                        if not mem[128]:
                            revert with 0, 
                                        32,
                                        51,
                                        0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 640 len 13]
                else:
                    mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 553 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 
                                    32,
                                    41,
                                    0x647472616e73666572205361666545524332303a206c6f772d6c6576656c2063616c6c206661696c65,
                                    mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 631 len 23]
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 553]:
                            revert with 0, 
                                        32,
                                        51,
                                        0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 641 len 13]
    else:
        mem[(32 * _14) + ceil32(arg4.length) + 324] = mem[204 len 20]
        mem[(32 * _14) + ceil32(arg4.length) + 356] = 0
        mem[(32 * _14) + ceil32(arg4.length) + 288] = 68
        mem[(32 * _14) + ceil32(arg4.length) + 320 len 4] = approve(address arg1, uint256 arg2)
        if ext_code.hash(mem[172 len 20]) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
            revert with 0, 'SafeERC20: call to non-contract'
        if not ext_code.hash(mem[172 len 20]):
            revert with 0, 'SafeERC20: call to non-contract'
        mem[(32 * _14) + ceil32(arg4.length) + 388 len 64] = 0, mem[204 len 20], 0
        mem[(32 * _14) + ceil32(arg4.length) + 480 len 4] = 0
        call mem[172 len 20].mem[(32 * _14) + ceil32(arg4.length) + 352 len 4] with:
             gas gas_remaining wei
            args Mask(480, -256, 0, mem[204 len 20], 0) << 256, mem[(32 * _14) + ceil32(arg4.length) + 452 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 
                            32,
                            40,
                            0x64617070726f7665205361666545524332303a206c6f772d6c6576656c2063616c6c206661696c65,
                            mem[(32 * _14) + ceil32(arg4.length) + 496 len 24]
            if arg4.length > 0:
                require arg4.length >= 32
                if not mem[128]:
                    revert with 0, 
                                32,
                                50,
                                0x6453616665455243323020617070726f76653a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(32 * _14) + ceil32(arg4.length) + 506 len 14]
            require ext_code.size(mem[172 len 20])
            staticcall mem[172 len 20].allowance(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args address(this.address), mem[204 len 20]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0, 
                            32,
                            54,
                            0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                            mem[(32 * _14) + ceil32(arg4.length) + 510 len 10]
            mem[(32 * _14) + ceil32(arg4.length) + 424] = mem[204 len 20]
            mem[(32 * _14) + ceil32(arg4.length) + 388] = 68
            if ext_code.hash(mem[172 len 20]) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                revert with 0, 'SafeERC20: call to non-contract'
            if not ext_code.hash(mem[172 len 20]):
                revert with 0, 'SafeERC20: call to non-contract'
            mem[(32 * _14) + ceil32(arg4.length) + 488 len 64] = 0, mem[204 len 20], 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
            mem[(32 * _14) + ceil32(arg4.length) + 580 len 4] = test266151307()
            call mem[172 len 20].mem[(32 * _14) + ceil32(arg4.length) + 452 len 4] with:
                 gas gas_remaining wei
                args -1, Mask(224, 32, 0, mem[204 len 20], 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) >> 32, mem[(32 * _14) + ceil32(arg4.length) + 552 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 
                                32,
                                40,
                                0x64617070726f7665205361666545524332303a206c6f772d6c6576656c2063616c6c206661696c65,
                                mem[(32 * _14) + ceil32(arg4.length) + 596 len 24]
                if arg4.length > 0:
                    require arg4.length >= 32
                    if not mem[128]:
                        revert with 0, 
                                    32,
                                    50,
                                    0x6453616665455243323020617070726f76653a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * _14) + ceil32(arg4.length) + 606 len 14]
                require ext_code.size(mem[204 len 20])
                call mem[204 len 20].liquidateBorrow(address arg1, uint256 arg2, address arg3) with:
                     gas gas_remaining wei
                    args address(mem[128]), mem[224], address(_12331)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 'liquidation failed'
                require ext_code.size(address(_12331))
                staticcall address(_12331).balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(_12331))
                call address(_12331).redeem(uint256 arg1) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if mem[ceil32(arg4.length) + 256] != 4:
                    require 1 < mem[ceil32(arg4.length) + 256]
                    require 0 < mem[ceil32(arg4.length) + 256]
                    mem[(32 * _14) + ceil32(arg4.length) + 524] = mem[ceil32(arg4.length) + 332 len 20]
                    if ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                        revert with 0, 'SafeERC20: call to non-contract'
                    if not ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                        revert with 0, 'SafeERC20: call to non-contract'
                    mem[(32 * _14) + ceil32(arg4.length) + 588 len 64] = 0, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]
                    call mem[ceil32(arg4.length) + 300 len 20].mem[(32 * _14) + ceil32(arg4.length) + 552 len 4] with:
                         gas gas_remaining wei
                        args mem[352], Mask(224, 32, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]) >> 32, mem[(32 * _14) + ceil32(arg4.length) + 652 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        41,
                                        0x647472616e73666572205361666545524332303a206c6f772d6c6576656c2063616c6c206661696c65,
                                        mem[(32 * _14) + ceil32(arg4.length) + 697 len 23]
                        if arg4.length > 0:
                            require arg4.length >= 32
                            if not mem[128]:
                                revert with 0, 
                                            32,
                                            51,
                                            0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(32 * _14) + ceil32(arg4.length) + 707 len 13]
                    else:
                        mem[(32 * _14) + ceil32(arg4.length) + 620 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        41,
                                        0x647472616e73666572205361666545524332303a206c6f772d6c6576656c2063616c6c206661696c65,
                                        mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 698 len 23]
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[(32 * _14) + ceil32(arg4.length) + 620]:
                                revert with 0, 
                                            32,
                                            51,
                                            0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 708 len 13]
                else:
                    require 3 < mem[ceil32(arg4.length) + 256]
                    require 2 < mem[ceil32(arg4.length) + 256]
                    mem[(32 * _14) + ceil32(arg4.length) + 524] = mem[ceil32(arg4.length) + 396 len 20]
                    if ext_code.hash(mem[ceil32(arg4.length) + 364 len 20]) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                        revert with 0, 'SafeERC20: call to non-contract'
                    if not ext_code.hash(mem[ceil32(arg4.length) + 364 len 20]):
                        revert with 0, 'SafeERC20: call to non-contract'
                    mem[(32 * _14) + ceil32(arg4.length) + 588 len 64] = 0, mem[ceil32(arg4.length) + 396 len 20], mem[384 len 28]
                    call mem[ceil32(arg4.length) + 364 len 20].mem[(32 * _14) + ceil32(arg4.length) + 552 len 4] with:
                         gas gas_remaining wei
                        args mem[384], Mask(224, 32, mem[ceil32(arg4.length) + 396 len 20], mem[384 len 28]) >> 32, mem[(32 * _14) + ceil32(arg4.length) + 652 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        41,
                                        0x647472616e73666572205361666545524332303a206c6f772d6c6576656c2063616c6c206661696c65,
                                        mem[(32 * _14) + ceil32(arg4.length) + 697 len 23]
                        if arg4.length > 0:
                            require arg4.length >= 32
                            if not mem[128]:
                                revert with 0, 
                                            32,
                                            51,
                                            0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(32 * _14) + ceil32(arg4.length) + 707 len 13]
                        require 2 < mem[ceil32(arg4.length) + 256]
                        require 0 < mem[ceil32(arg4.length) + 256]
                        require 3 < mem[ceil32(arg4.length) + 256]
                        mem[(32 * _14) + ceil32(arg4.length) + 784 len 0] = None
                        require ext_code.size(mem[ceil32(arg4.length) + 396 len 20])
                        if mem[ceil32(arg4.length) + 300 len 20] >= mem[ceil32(arg4.length) + 364 len 20]:
                            call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, mem[352], address(this.address), 128, 0
                        else:
                            call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args mem[352], 0, address(this.address), 128, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require 1 < mem[ceil32(arg4.length) + 256]
                        require 0 < mem[ceil32(arg4.length) + 256]
                        if ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            revert with 0, 'SafeERC20: call to non-contract'
                        if not ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[(32 * _14) + ceil32(arg4.length) + 720 len 64] = 0, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]
                        call mem[ceil32(arg4.length) + 300 len 20] with:
                             gas gas_remaining wei
                            args mem[352], Mask(224, 32, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]) >> 32, mem[(32 * _14) + ceil32(arg4.length) + 784 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            41,
                                            0x647472616e73666572205361666545524332303a206c6f772d6c6576656c2063616c6c206661696c65,
                                            mem[(32 * _14) + ceil32(arg4.length) + 829 len 23]
                            if arg4.length > 0:
                                require arg4.length >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _14) + ceil32(arg4.length) + 839 len 13]
                        else:
                            mem[(32 * _14) + ceil32(arg4.length) + 752 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            41,
                                            0x647472616e73666572205361666545524332303a206c6f772d6c6576656c2063616c6c206661696c65,
                                            mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 830 len 23]
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[(32 * _14) + ceil32(arg4.length) + 752]:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 840 len 13]
                    else:
                        mem[(32 * _14) + ceil32(arg4.length) + 620 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        41,
                                        0x647472616e73666572205361666545524332303a206c6f772d6c6576656c2063616c6c206661696c65,
                                        mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 698 len 23]
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[(32 * _14) + ceil32(arg4.length) + 620]:
                                revert with 0, 
                                            32,
                                            51,
                                            0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 708 len 13]
                        require 2 < mem[ceil32(arg4.length) + 256]
                        require 0 < mem[ceil32(arg4.length) + 256]
                        require 3 < mem[ceil32(arg4.length) + 256]
                        mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 785 len 0] = None
                        require ext_code.size(mem[ceil32(arg4.length) + 396 len 20])
                        if mem[ceil32(arg4.length) + 300 len 20] >= mem[ceil32(arg4.length) + 364 len 20]:
                            call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, mem[352], address(this.address), 128, 0
                        else:
                            call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args mem[352], 0, address(this.address), 128, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require 1 < mem[ceil32(arg4.length) + 256]
                        require 0 < mem[ceil32(arg4.length) + 256]
                        if ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            revert with 0, 'SafeERC20: call to non-contract'
                        if not ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 721 len 64] = 0, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]
                        call mem[ceil32(arg4.length) + 300 len 20] with:
                             gas gas_remaining wei
                            args mem[352], Mask(224, 32, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]) >> 32, mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 785 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            41,
                                            0x647472616e73666572205361666545524332303a206c6f772d6c6576656c2063616c6c206661696c65,
                                            mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 830 len 23]
                            if arg4.length > 0:
                                require arg4.length >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 840 len 13]
                        else:
                            mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 753 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            41,
                                            0x647472616e73666572205361666545524332303a206c6f772d6c6576656c2063616c6c206661696c65,
                                            mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 831 len 23]
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 753]:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 841 len 13]
            else:
                mem[(32 * _14) + ceil32(arg4.length) + 520 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 
                                32,
                                40,
                                0x64617070726f7665205361666545524332303a206c6f772d6c6576656c2063616c6c206661696c65,
                                mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 597 len 24]
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[(32 * _14) + ceil32(arg4.length) + 520]:
                        revert with 0, 
                                    32,
                                    50,
                                    0x6453616665455243323020617070726f76653a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 607 len 14]
                require ext_code.size(mem[204 len 20])
                call mem[204 len 20].liquidateBorrow(address arg1, uint256 arg2, address arg3) with:
                     gas gas_remaining wei
                    args address(mem[128]), mem[224], address(_12331)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 'liquidation failed'
                require ext_code.size(address(_12331))
                staticcall address(_12331).balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(_12331))
                call address(_12331).redeem(uint256 arg1) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if mem[ceil32(arg4.length) + 256] != 4:
                    require 1 < mem[ceil32(arg4.length) + 256]
                    require 0 < mem[ceil32(arg4.length) + 256]
                    mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 525] = mem[ceil32(arg4.length) + 332 len 20]
                    if ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                        revert with 0, 'SafeERC20: call to non-contract'
                    if not ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                        revert with 0, 'SafeERC20: call to non-contract'
                    mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 589 len 64] = 0, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]
                    call mem[ceil32(arg4.length) + 300 len 20].mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 553 len 4] with:
                         gas gas_remaining wei
                        args mem[352], Mask(224, 32, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]) >> 32, mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 653 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        41,
                                        0x647472616e73666572205361666545524332303a206c6f772d6c6576656c2063616c6c206661696c65,
                                        mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 698 len 23]
                        if arg4.length > 0:
                            require arg4.length >= 32
                            if not mem[128]:
                                revert with 0, 
                                            32,
                                            51,
                                            0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 708 len 13]
                    else:
                        mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 621 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        41,
                                        0x647472616e73666572205361666545524332303a206c6f772d6c6576656c2063616c6c206661696c65,
                                        mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 699 len 23]
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 621]:
                                revert with 0, 
                                            32,
                                            51,
                                            0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 709 len 13]
                else:
                    require 3 < mem[ceil32(arg4.length) + 256]
                    require 2 < mem[ceil32(arg4.length) + 256]
                    mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 525] = mem[ceil32(arg4.length) + 396 len 20]
                    if ext_code.hash(mem[ceil32(arg4.length) + 364 len 20]) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                        revert with 0, 'SafeERC20: call to non-contract'
                    if not ext_code.hash(mem[ceil32(arg4.length) + 364 len 20]):
                        revert with 0, 'SafeERC20: call to non-contract'
                    mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 589 len 64] = 0, mem[ceil32(arg4.length) + 396 len 20], mem[384 len 28]
                    call mem[ceil32(arg4.length) + 364 len 20].mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 553 len 4] with:
                         gas gas_remaining wei
                        args mem[384], Mask(224, 32, mem[ceil32(arg4.length) + 396 len 20], mem[384 len 28]) >> 32, mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 653 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        41,
                                        0x647472616e73666572205361666545524332303a206c6f772d6c6576656c2063616c6c206661696c65,
                                        mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 698 len 23]
                        if arg4.length > 0:
                            require arg4.length >= 32
                            if not mem[128]:
                                revert with 0, 
                                            32,
                                            51,
                                            0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 708 len 13]
                        require 2 < mem[ceil32(arg4.length) + 256]
                        require 0 < mem[ceil32(arg4.length) + 256]
                        require 3 < mem[ceil32(arg4.length) + 256]
                        mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 785 len 0] = None
                        require ext_code.size(mem[ceil32(arg4.length) + 396 len 20])
                        if mem[ceil32(arg4.length) + 300 len 20] >= mem[ceil32(arg4.length) + 364 len 20]:
                            call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, mem[352], address(this.address), 128, 0
                        else:
                            call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args mem[352], 0, address(this.address), 128, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require 1 < mem[ceil32(arg4.length) + 256]
                        require 0 < mem[ceil32(arg4.length) + 256]
                        if ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            revert with 0, 'SafeERC20: call to non-contract'
                        if not ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 721 len 64] = 0, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]
                        call mem[ceil32(arg4.length) + 300 len 20] with:
                             gas gas_remaining wei
                            args mem[352], Mask(224, 32, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]) >> 32, mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 785 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            41,
                                            0x647472616e73666572205361666545524332303a206c6f772d6c6576656c2063616c6c206661696c65,
                                            mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 830 len 23]
                            if arg4.length > 0:
                                require arg4.length >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 840 len 13]
                        else:
                            mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 753 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            41,
                                            0x647472616e73666572205361666545524332303a206c6f772d6c6576656c2063616c6c206661696c65,
                                            mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 831 len 23]
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 753]:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 841 len 13]
                    else:
                        mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 621 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        41,
                                        0x647472616e73666572205361666545524332303a206c6f772d6c6576656c2063616c6c206661696c65,
                                        mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 699 len 23]
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 621]:
                                revert with 0, 
                                            32,
                                            51,
                                            0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 709 len 13]
                        require 2 < mem[ceil32(arg4.length) + 256]
                        require 0 < mem[ceil32(arg4.length) + 256]
                        require 3 < mem[ceil32(arg4.length) + 256]
                        mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 786 len 0] = None
                        require ext_code.size(mem[ceil32(arg4.length) + 396 len 20])
                        if mem[ceil32(arg4.length) + 300 len 20] >= mem[ceil32(arg4.length) + 364 len 20]:
                            call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, mem[352], address(this.address), 128, 0
                        else:
                            call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args mem[352], 0, address(this.address), 128, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require 1 < mem[ceil32(arg4.length) + 256]
                        require 0 < mem[ceil32(arg4.length) + 256]
                        if ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            revert with 0, 'SafeERC20: call to non-contract'
                        if not ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 722 len 64] = 0, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]
                        call mem[ceil32(arg4.length) + 300 len 20] with:
                             gas gas_remaining wei
                            args mem[352], Mask(224, 32, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]) >> 32, mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 786 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            41,
                                            0x647472616e73666572205361666545524332303a206c6f772d6c6576656c2063616c6c206661696c65,
                                            mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 831 len 23]
                            if arg4.length > 0:
                                require arg4.length >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 841 len 13]
                        else:
                            mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 754 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            41,
                                            0x647472616e73666572205361666545524332303a206c6f772d6c6576656c2063616c6c206661696c65,
                                            mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 832 len 23]
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 754]:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 842 len 13]
        else:
            mem[(32 * _14) + ceil32(arg4.length) + 388] = return_data.size
            mem[(32 * _14) + ceil32(arg4.length) + 420 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 
                            32,
                            40,
                            0x64617070726f7665205361666545524332303a206c6f772d6c6576656c2063616c6c206661696c65,
                            mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 497 len 24]
            if return_data.size > 0:
                require return_data.size >= 32
                if not mem[(32 * _14) + ceil32(arg4.length) + 420]:
                    revert with 0, 
                                32,
                                50,
                                0x6453616665455243323020617070726f76653a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 507 len 14]
            require ext_code.size(mem[172 len 20])
            staticcall mem[172 len 20].allowance(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args address(this.address), mem[204 len 20]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0, 
                            32,
                            54,
                            0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                            mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 511 len 10]
            mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 425] = mem[204 len 20]
            mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 389] = 68
            if ext_code.hash(mem[172 len 20]) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                revert with 0, 'SafeERC20: call to non-contract'
            if not ext_code.hash(mem[172 len 20]):
                revert with 0, 'SafeERC20: call to non-contract'
            mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 489 len 64] = 0, mem[204 len 20], 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
            mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 581 len 4] = test266151307()
            call mem[172 len 20].mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 453 len 4] with:
                 gas gas_remaining wei
                args -1, Mask(224, 32, 0, mem[204 len 20], 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) >> 32, mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 553 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 
                                32,
                                40,
                                0x64617070726f7665205361666545524332303a206c6f772d6c6576656c2063616c6c206661696c65,
                                mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 597 len 24]
                if arg4.length > 0:
                    require arg4.length >= 32
                    if not mem[128]:
                        revert with 0, 
                                    32,
                                    50,
                                    0x6453616665455243323020617070726f76653a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 607 len 14]
                require ext_code.size(mem[204 len 20])
                call mem[204 len 20].liquidateBorrow(address arg1, uint256 arg2, address arg3) with:
                     gas gas_remaining wei
                    args address(mem[128]), mem[224], address(_12331)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 'liquidation failed'
                require ext_code.size(address(_12331))
                staticcall address(_12331).balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(_12331))
                call address(_12331).redeem(uint256 arg1) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if mem[ceil32(arg4.length) + 256] != 4:
                    require 1 < mem[ceil32(arg4.length) + 256]
                    require 0 < mem[ceil32(arg4.length) + 256]
                    mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 525] = mem[ceil32(arg4.length) + 332 len 20]
                    if ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                        revert with 0, 'SafeERC20: call to non-contract'
                    if not ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                        revert with 0, 'SafeERC20: call to non-contract'
                    mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 589 len 64] = 0, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]
                    call mem[ceil32(arg4.length) + 300 len 20].mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 553 len 4] with:
                         gas gas_remaining wei
                        args mem[352], Mask(224, 32, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]) >> 32, mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 653 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        41,
                                        0x647472616e73666572205361666545524332303a206c6f772d6c6576656c2063616c6c206661696c65,
                                        mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 698 len 23]
                        if arg4.length > 0:
                            require arg4.length >= 32
                            if not mem[128]:
                                revert with 0, 
                                            32,
                                            51,
                                            0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 708 len 13]
                    else:
                        mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 621 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        41,
                                        0x647472616e73666572205361666545524332303a206c6f772d6c6576656c2063616c6c206661696c65,
                                        mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 699 len 23]
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 621]:
                                revert with 0, 
                                            32,
                                            51,
                                            0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 709 len 13]
                else:
                    require 3 < mem[ceil32(arg4.length) + 256]
                    require 2 < mem[ceil32(arg4.length) + 256]
                    mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 525] = mem[ceil32(arg4.length) + 396 len 20]
                    if ext_code.hash(mem[ceil32(arg4.length) + 364 len 20]) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                        revert with 0, 'SafeERC20: call to non-contract'
                    if not ext_code.hash(mem[ceil32(arg4.length) + 364 len 20]):
                        revert with 0, 'SafeERC20: call to non-contract'
                    mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 589 len 64] = 0, mem[ceil32(arg4.length) + 396 len 20], mem[384 len 28]
                    call mem[ceil32(arg4.length) + 364 len 20].mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 553 len 4] with:
                         gas gas_remaining wei
                        args mem[384], Mask(224, 32, mem[ceil32(arg4.length) + 396 len 20], mem[384 len 28]) >> 32, mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 653 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        41,
                                        0x647472616e73666572205361666545524332303a206c6f772d6c6576656c2063616c6c206661696c65,
                                        mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 698 len 23]
                        if arg4.length > 0:
                            require arg4.length >= 32
                            if not mem[128]:
                                revert with 0, 
                                            32,
                                            51,
                                            0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 708 len 13]
                        require 2 < mem[ceil32(arg4.length) + 256]
                        require 0 < mem[ceil32(arg4.length) + 256]
                        require 3 < mem[ceil32(arg4.length) + 256]
                        mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 785 len 0] = None
                        require ext_code.size(mem[ceil32(arg4.length) + 396 len 20])
                        if mem[ceil32(arg4.length) + 300 len 20] >= mem[ceil32(arg4.length) + 364 len 20]:
                            call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, mem[352], address(this.address), 128, 0
                        else:
                            call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args mem[352], 0, address(this.address), 128, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require 1 < mem[ceil32(arg4.length) + 256]
                        require 0 < mem[ceil32(arg4.length) + 256]
                        if ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            revert with 0, 'SafeERC20: call to non-contract'
                        if not ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 721 len 64] = 0, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]
                        call mem[ceil32(arg4.length) + 300 len 20] with:
                             gas gas_remaining wei
                            args mem[352], Mask(224, 32, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]) >> 32, mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 785 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            41,
                                            0x647472616e73666572205361666545524332303a206c6f772d6c6576656c2063616c6c206661696c65,
                                            mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 830 len 23]
                            if arg4.length > 0:
                                require arg4.length >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 840 len 13]
                        else:
                            mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 753 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            41,
                                            0x647472616e73666572205361666545524332303a206c6f772d6c6576656c2063616c6c206661696c65,
                                            mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 831 len 23]
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 753]:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 841 len 13]
                    else:
                        mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 621 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        41,
                                        0x647472616e73666572205361666545524332303a206c6f772d6c6576656c2063616c6c206661696c65,
                                        mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 699 len 23]
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 621]:
                                revert with 0, 
                                            32,
                                            51,
                                            0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 709 len 13]
                        require 2 < mem[ceil32(arg4.length) + 256]
                        require 0 < mem[ceil32(arg4.length) + 256]
                        require 3 < mem[ceil32(arg4.length) + 256]
                        mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 786 len 0] = None
                        require ext_code.size(mem[ceil32(arg4.length) + 396 len 20])
                        if mem[ceil32(arg4.length) + 300 len 20] >= mem[ceil32(arg4.length) + 364 len 20]:
                            call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, mem[352], address(this.address), 128, 0
                        else:
                            call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args mem[352], 0, address(this.address), 128, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require 1 < mem[ceil32(arg4.length) + 256]
                        require 0 < mem[ceil32(arg4.length) + 256]
                        if ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            revert with 0, 'SafeERC20: call to non-contract'
                        if not ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 722 len 64] = 0, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]
                        call mem[ceil32(arg4.length) + 300 len 20] with:
                             gas gas_remaining wei
                            args mem[352], Mask(224, 32, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]) >> 32, mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 786 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            41,
                                            0x647472616e73666572205361666545524332303a206c6f772d6c6576656c2063616c6c206661696c65,
                                            mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 831 len 23]
                            if arg4.length > 0:
                                require arg4.length >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 841 len 13]
                        else:
                            mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 754 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            41,
                                            0x647472616e73666572205361666545524332303a206c6f772d6c6576656c2063616c6c206661696c65,
                                            mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 832 len 23]
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 754]:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 842 len 13]
            else:
                mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 
                                32,
                                40,
                                0x64617070726f7665205361666545524332303a206c6f772d6c6576656c2063616c6c206661696c65,
                                mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 598 len 24]
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[(32 * _14) + ceil32(arg4.length) + ceil32(return_data.size) + 521]:
                        revert with 0, 
                                    32,
                                    50,
                                    0x6453616665455243323020617070726f76653a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 608 len 14]
                require ext_code.size(mem[204 len 20])
                call mem[204 len 20].liquidateBorrow(address arg1, uint256 arg2, address arg3) with:
                     gas gas_remaining wei
                    args address(mem[128]), mem[224], address(_12331)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 'liquidation failed'
                require ext_code.size(address(_12331))
                staticcall address(_12331).balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(_12331))
                call address(_12331).redeem(uint256 arg1) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if mem[ceil32(arg4.length) + 256] != 4:
                    require 1 < mem[ceil32(arg4.length) + 256]
                    require 0 < mem[ceil32(arg4.length) + 256]
                    mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 526] = mem[ceil32(arg4.length) + 332 len 20]
                    if ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                        revert with 0, 'SafeERC20: call to non-contract'
                    if not ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                        revert with 0, 'SafeERC20: call to non-contract'
                    mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 590 len 64] = 0, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]
                    call mem[ceil32(arg4.length) + 300 len 20].mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 554 len 4] with:
                         gas gas_remaining wei
                        args mem[352], Mask(224, 32, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]) >> 32, mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 654 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        41,
                                        0x647472616e73666572205361666545524332303a206c6f772d6c6576656c2063616c6c206661696c65,
                                        mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 699 len 23]
                        if arg4.length > 0:
                            require arg4.length >= 32
                            if not mem[128]:
                                revert with 0, 
                                            32,
                                            51,
                                            0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 709 len 13]
                    else:
                        mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 622 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        41,
                                        0x647472616e73666572205361666545524332303a206c6f772d6c6576656c2063616c6c206661696c65,
                                        mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 700 len 23]
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 622]:
                                revert with 0, 
                                            32,
                                            51,
                                            0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 710 len 13]
                else:
                    require 3 < mem[ceil32(arg4.length) + 256]
                    require 2 < mem[ceil32(arg4.length) + 256]
                    mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 526] = mem[ceil32(arg4.length) + 396 len 20]
                    if ext_code.hash(mem[ceil32(arg4.length) + 364 len 20]) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                        revert with 0, 'SafeERC20: call to non-contract'
                    if not ext_code.hash(mem[ceil32(arg4.length) + 364 len 20]):
                        revert with 0, 'SafeERC20: call to non-contract'
                    mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 590 len 64] = 0, mem[ceil32(arg4.length) + 396 len 20], mem[384 len 28]
                    call mem[ceil32(arg4.length) + 364 len 20].mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 554 len 4] with:
                         gas gas_remaining wei
                        args mem[384], Mask(224, 32, mem[ceil32(arg4.length) + 396 len 20], mem[384 len 28]) >> 32, mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 654 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        41,
                                        0x647472616e73666572205361666545524332303a206c6f772d6c6576656c2063616c6c206661696c65,
                                        mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 699 len 23]
                        if arg4.length > 0:
                            require arg4.length >= 32
                            if not mem[128]:
                                revert with 0, 
                                            32,
                                            51,
                                            0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 709 len 13]
                        require 2 < mem[ceil32(arg4.length) + 256]
                        require 0 < mem[ceil32(arg4.length) + 256]
                        require 3 < mem[ceil32(arg4.length) + 256]
                        mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 786 len 0] = None
                        require ext_code.size(mem[ceil32(arg4.length) + 396 len 20])
                        if mem[ceil32(arg4.length) + 300 len 20] >= mem[ceil32(arg4.length) + 364 len 20]:
                            call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, mem[352], address(this.address), 128, 0
                        else:
                            call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args mem[352], 0, address(this.address), 128, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require 1 < mem[ceil32(arg4.length) + 256]
                        require 0 < mem[ceil32(arg4.length) + 256]
                        if ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            revert with 0, 'SafeERC20: call to non-contract'
                        if not ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 722 len 64] = 0, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]
                        call mem[ceil32(arg4.length) + 300 len 20] with:
                             gas gas_remaining wei
                            args mem[352], Mask(224, 32, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]) >> 32, mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 786 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            41,
                                            0x647472616e73666572205361666545524332303a206c6f772d6c6576656c2063616c6c206661696c65,
                                            mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 831 len 23]
                            if arg4.length > 0:
                                require arg4.length >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 841 len 13]
                        else:
                            mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 754 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            41,
                                            0x647472616e73666572205361666545524332303a206c6f772d6c6576656c2063616c6c206661696c65,
                                            mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 832 len 23]
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 754]:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 842 len 13]
                    else:
                        mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 622 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        41,
                                        0x647472616e73666572205361666545524332303a206c6f772d6c6576656c2063616c6c206661696c65,
                                        mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 700 len 23]
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 622]:
                                revert with 0, 
                                            32,
                                            51,
                                            0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 710 len 13]
                        require 2 < mem[ceil32(arg4.length) + 256]
                        require 0 < mem[ceil32(arg4.length) + 256]
                        require 3 < mem[ceil32(arg4.length) + 256]
                        mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 787 len 0] = None
                        require ext_code.size(mem[ceil32(arg4.length) + 396 len 20])
                        if mem[ceil32(arg4.length) + 300 len 20] >= mem[ceil32(arg4.length) + 364 len 20]:
                            call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, mem[352], address(this.address), 128, 0
                        else:
                            call mem[ceil32(arg4.length) + 396 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args mem[352], 0, address(this.address), 128, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require 1 < mem[ceil32(arg4.length) + 256]
                        require 0 < mem[ceil32(arg4.length) + 256]
                        if ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            revert with 0, 'SafeERC20: call to non-contract'
                        if not ext_code.hash(mem[ceil32(arg4.length) + 300 len 20]):
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 723 len 64] = 0, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]
                        call mem[ceil32(arg4.length) + 300 len 20] with:
                             gas gas_remaining wei
                            args mem[352], Mask(224, 32, mem[ceil32(arg4.length) + 332 len 20], mem[352 len 28]) >> 32, mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 787 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            41,
                                            0x647472616e73666572205361666545524332303a206c6f772d6c6576656c2063616c6c206661696c65,
                                            mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 832 len 23]
                            if arg4.length > 0:
                                require arg4.length >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 842 len 13]
                        else:
                            mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 755 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            41,
                                            0x647472616e73666572205361666545524332303a206c6f772d6c6576656c2063616c6c206661696c65,
                                            mem[(32 * _14) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 833 len 23]
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[(32 * _14) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 755]:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _14) + ceil32(arg4.length) + (4 * ceil32(return_data.size)) + 843 len 13]
    uint8(stor1.field_0) = 1
    Mask(152, 0, stor1.field_8) = 0
}



}
