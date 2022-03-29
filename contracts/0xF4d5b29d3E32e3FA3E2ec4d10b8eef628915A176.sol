contract main {




// =====================  Runtime code  =====================


array of struct stor0;
array of struct sub_67119f98;
array of struct sub_7d531189;
array of struct sub_326ee90e;
array of uint256 stor4;
uint256 stor5;
uint256 stor6;
mapping of uint256 sub_789eeda4;
mapping of address stor13;
mapping of uint256 stor14;

function sub_326ee90e(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_326ee90e.length
    return sub_326ee90e[arg1].field_0, sub_326ee90e[arg1].field_256, sub_326ee90e[arg1].field_512
}

function sub_67119f98(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_67119f98.length
    return sub_67119f98[arg1].field_512
}

function sub_789eeda4(?) {
    require calldata.size - 4 >= 32
    return sub_789eeda4[address(arg1)]
}

function sub_7d531189(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_7d531189.length
    return sub_7d531189[arg1].field_512
}

function sub_834a268a(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_7d531189.length
    return sub_7d531189[arg1].field_768
}

function sub_83716ae2(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_7d531189.length
    return sub_7d531189[arg1].field_256
}

function sub_88931b4c(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_7d531189.length
    return sub_7d531189[arg1].field_1024, sub_7d531189[arg1].field_768
}

function _fallback() {
    revert
}

function sub_10864344(?) {
    return (sub_7d531189.length - 1)
}

function sub_ffee3abd(?) {
    return (sub_326ee90e.length - 1)
}

function sub_48d9003b(?) {
    require calldata.size - 4 >= 64
    return not not stor13[arg1][arg2]
}

function sub_101f1616(?) {
    require calldata.size - 4 >= 32
    if stor14[address(arg1)] <= 0:
        return 0
    return stor14[address(arg1)]
}

function sub_ca59ac53(?) {
    require calldata.size - 4 >= 32
    if stor14[address(arg1)] <= 0:
        return 0
    require stor14[address(arg1)] < sub_326ee90e.length
    return sub_326ee90e[stor14[address(arg1)]].field_0
}

function sub_e42d607a(?) {
    require calldata.size - 4 >= 32
    if stor14[address(arg1)] <= 0:
        return 0
    require stor14[address(arg1)] < sub_326ee90e.length
    return sub_326ee90e[stor14[address(arg1)]].field_256
}

function sub_7435583a(?) {
    require calldata.size - 4 >= 32
    require arg1 < stor0.length
    require stor0[arg1].field_1024 <= 6
    require arg1 < stor0.length
    return stor0[arg1].field_1024, stor0[arg1].field_256, stor0[arg1].field_512
}

function sub_7f570ce3(?) {
    if not sub_789eeda4[address(msg.sender)]:
        return 0
    require sub_789eeda4[address(msg.sender)] < sub_67119f98.length
    return sub_67119f98[stor7[address(msg.sender)]].field_768, sub_67119f98[stor7[address(msg.sender)]].field_1024
}

function sub_192a51b6(?) {
    require ext_code.size(0x8bc8b60d1f58c6dcd69048e0dcce6eadd91fd2a8)
    delegate 0x8bc8b60d1f58c6dcd69048e0dcce6eadd91fd2a8.0x3e79716e with:
         gas gas_remaining wei
        args 0
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return delegate.return_data[0]
}

function sub_e14d3479(?) {
    require ext_code.size(0x8bc8b60d1f58c6dcd69048e0dcce6eadd91fd2a8)
    delegate 0x8bc8b60d1f58c6dcd69048e0dcce6eadd91fd2a8.0xd0453655 with:
         gas gas_remaining wei
        args 0
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return delegate.return_data[0]
}

function sub_e1705516(?) {
    require ext_code.size(0x8bc8b60d1f58c6dcd69048e0dcce6eadd91fd2a8)
    delegate 0x8bc8b60d1f58c6dcd69048e0dcce6eadd91fd2a8.0x7539a310 with:
         gas gas_remaining wei
        args 0
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return delegate.return_data[0]
}

function DepositEther() payable {
    require ext_code.size(0x8bc8b60d1f58c6dcd69048e0dcce6eadd91fd2a8)
    delegate 0x8bc8b60d1f58c6dcd69048e0dcce6eadd91fd2a8.0x5ece82b0 with:
         gas gas_remaining wei
        args 0
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(delegate.return_data[0])
}

function sub_57164e13(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(0x8bc8b60d1f58c6dcd69048e0dcce6eadd91fd2a8)
    delegate 0x8bc8b60d1f58c6dcd69048e0dcce6eadd91fd2a8.0xc1ab8844 with:
         gas gas_remaining wei
        args 0, arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return delegate.return_data[0]
}

function sub_5cecd22c(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(0x8bc8b60d1f58c6dcd69048e0dcce6eadd91fd2a8)
    delegate 0x8bc8b60d1f58c6dcd69048e0dcce6eadd91fd2a8.0x2e789457 with:
         gas gas_remaining wei
        args 0, arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return delegate.return_data[0]
}

function sub_b31d1bca(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(0x8bc8b60d1f58c6dcd69048e0dcce6eadd91fd2a8)
    delegate 0x8bc8b60d1f58c6dcd69048e0dcce6eadd91fd2a8.0x8af6cec2 with:
         gas gas_remaining wei
        args 0, arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return delegate.return_data[0]
}

function sub_5a502979(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(0x8bc8b60d1f58c6dcd69048e0dcce6eadd91fd2a8)
    delegate 0x8bc8b60d1f58c6dcd69048e0dcce6eadd91fd2a8.0xd016d0b with:
         gas gas_remaining wei
        args 0, arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(delegate.return_data[0])
}

function sub_2c059eff(?) {
    require calldata.size - 4 >= 64
    require ext_code.size(0x8bc8b60d1f58c6dcd69048e0dcce6eadd91fd2a8)
    delegate 0x8bc8b60d1f58c6dcd69048e0dcce6eadd91fd2a8.0x75fdbddf with:
         gas gas_remaining wei
        args 0, arg1, arg2
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return delegate.return_data[0]
}

function sub_d7d1101b(?) {
    require calldata.size - 4 >= 64
    require ext_code.size(0x8bc8b60d1f58c6dcd69048e0dcce6eadd91fd2a8)
    delegate 0x8bc8b60d1f58c6dcd69048e0dcce6eadd91fd2a8.0xa1cfe0b1 with:
         gas gas_remaining wei
        args 0, arg1, arg2
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(delegate.return_data[0])
}

function sub_ef0a9efe(?) {
    require calldata.size - 4 >= 64
    require ext_code.size(0x8bc8b60d1f58c6dcd69048e0dcce6eadd91fd2a8)
    delegate 0x8bc8b60d1f58c6dcd69048e0dcce6eadd91fd2a8.0xcd42e02a with:
         gas gas_remaining wei
        args 0, arg1, arg2
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(delegate.return_data[0])
}

function sub_04b2933f(?) {
    require calldata.size - 4 >= 64
    require ext_code.size(0x8bc8b60d1f58c6dcd69048e0dcce6eadd91fd2a8)
    delegate 0x8bc8b60d1f58c6dcd69048e0dcce6eadd91fd2a8.0xa468ca3a with:
         gas gas_remaining wei
        args 0, address(arg1), arg2
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return delegate.return_data[0]
}

function WithdrawEther(uint256 arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(0x8bc8b60d1f58c6dcd69048e0dcce6eadd91fd2a8)
    delegate 0x8bc8b60d1f58c6dcd69048e0dcce6eadd91fd2a8.0x49c2d806 with:
         gas gas_remaining wei
        args 0, arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(delegate.return_data[0])
}

function sub_b26102c1(?) {
    require calldata.size - 4 >= 64
    require ext_code.size(0x8bc8b60d1f58c6dcd69048e0dcce6eadd91fd2a8)
    delegate 0x8bc8b60d1f58c6dcd69048e0dcce6eadd91fd2a8.0xfb56e23 with:
         gas gas_remaining wei
        args 0, address(arg1), arg2
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(delegate.return_data[0])
}

function sub_13c1de48(?) {
    require calldata.size - 4 >= 64
    require ext_code.size(0x8bc8b60d1f58c6dcd69048e0dcce6eadd91fd2a8)
    delegate 0x8bc8b60d1f58c6dcd69048e0dcce6eadd91fd2a8.0x9c268edf with:
         gas gas_remaining wei
        args 0, address(arg1), arg2
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(delegate.return_data[0])
}

function sub_3ba5269a(?) {
    require calldata.size - 4 >= 64
    require ext_code.size(0x8bc8b60d1f58c6dcd69048e0dcce6eadd91fd2a8)
    delegate 0x8bc8b60d1f58c6dcd69048e0dcce6eadd91fd2a8.0xce3086c0 with:
         gas gas_remaining wei
        args 0, address(arg1), arg2
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(delegate.return_data[0])
}

function sub_710a562f(?) {
    require calldata.size - 4 >= 64
    require ext_code.size(0x8bc8b60d1f58c6dcd69048e0dcce6eadd91fd2a8)
    delegate 0x8bc8b60d1f58c6dcd69048e0dcce6eadd91fd2a8.0xe89d264f with:
         gas gas_remaining wei
        args 0, address(arg1), arg2
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(delegate.return_data[0])
}

function sub_8b980484(?) {
    require calldata.size - 4 >= 64
    require ext_code.size(0x8bc8b60d1f58c6dcd69048e0dcce6eadd91fd2a8)
    delegate 0x8bc8b60d1f58c6dcd69048e0dcce6eadd91fd2a8.0xabce86b1 with:
         gas gas_remaining wei
        args 0, address(arg1), arg2
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(delegate.return_data[0])
}

function sub_d2c6385f(?) {
    require calldata.size - 4 >= 64
    require ext_code.size(0x8bc8b60d1f58c6dcd69048e0dcce6eadd91fd2a8)
    delegate 0x8bc8b60d1f58c6dcd69048e0dcce6eadd91fd2a8.0xe5847a7e with:
         gas gas_remaining wei
        args 0, address(arg1), arg2
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(delegate.return_data[0])
}

function sub_d6f24342(?) {
    require calldata.size - 4 >= 96
    require ext_code.size(0x8bc8b60d1f58c6dcd69048e0dcce6eadd91fd2a8)
    delegate 0x8bc8b60d1f58c6dcd69048e0dcce6eadd91fd2a8.0xc842e639 with:
         gas gas_remaining wei
        args 0, 0, arg1, arg2, arg3
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(delegate.return_data[0])
}

function sub_4645e9f5(?) {
    require calldata.size - 4 >= 96
    require ext_code.size(0x8bc8b60d1f58c6dcd69048e0dcce6eadd91fd2a8)
    delegate 0x8bc8b60d1f58c6dcd69048e0dcce6eadd91fd2a8.0x738aac58 with:
         gas gas_remaining wei
        args 0, 0, address(arg1), arg2, arg3
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(delegate.return_data[0])
}

function sub_51973a89(?) {
    require calldata.size - 4 >= 96
    require ext_code.size(0x8bc8b60d1f58c6dcd69048e0dcce6eadd91fd2a8)
    delegate 0x8bc8b60d1f58c6dcd69048e0dcce6eadd91fd2a8.0x9ae3906a with:
         gas gas_remaining wei
        args 0, 0, address(arg1), arg2, arg3
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(delegate.return_data[0])
}

function sub_94f135a1(?) {
    require calldata.size - 4 >= 64
    require ext_code.size(0x8bc8b60d1f58c6dcd69048e0dcce6eadd91fd2a8)
    delegate 0x8bc8b60d1f58c6dcd69048e0dcce6eadd91fd2a8.0x41cb4b76 with:
         gas gas_remaining wei
        args 0, arg1, arg2
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    return bool(delegate.return_data[0]), delegate.return_data[32], delegate.return_data[64]
}

function sub_77d4ef3d(?) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[(32 * arg1.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[(64 * arg1.length) + 160] = sha3(mem[(32 * arg1.length) + 160 len 96 * arg1.length])
    return memory
      from (64 * arg1.length) + 160
       len (127 * arg1.length) + 32
}

function sub_ca3d72a2(?) {
    require calldata.size - 4 >= 96
    require arg2
    require arg2 < sub_67119f98.length
    require ext_code.size(0x8bc8b60d1f58c6dcd69048e0dcce6eadd91fd2a8)
    delegate 0x8bc8b60d1f58c6dcd69048e0dcce6eadd91fd2a8.0xa8088233 with:
         gas gas_remaining wei
        args 0, 0, arg1, sub_67119f98[arg2].field_0, arg3
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(delegate.return_data[0])
}

function CancelOrder(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < sub_7d531189.length
    require sub_7d531189[arg1].field_1024 == 1
    require ext_code.size(0x8bc8b60d1f58c6dcd69048e0dcce6eadd91fd2a8)
    delegate 0x8bc8b60d1f58c6dcd69048e0dcce6eadd91fd2a8.0xab0999d3 with:
         gas gas_remaining wei
        args 0, arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(delegate.return_data[0])
}

function sub_f927f036(?) {
    require calldata.size - 4 >= 64
    require arg2
    require ext_code.size(arg2)
    staticcall arg2.0x367a2adc with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require ext_code.size(0x8bc8b60d1f58c6dcd69048e0dcce6eadd91fd2a8)
    delegate 0x8bc8b60d1f58c6dcd69048e0dcce6eadd91fd2a8.0xab0999d3 with:
         gas gas_remaining wei
        args 0, arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(delegate.return_data[0])
}

function sub_ffa5707d(?) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[(32 * arg1.length) + 228 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    require ext_code.size(0x8bc8b60d1f58c6dcd69048e0dcce6eadd91fd2a8)
    delegate 0x8bc8b60d1f58c6dcd69048e0dcce6eadd91fd2a8.0x326c8884 with:
         gas gas_remaining wei
        args 0, 64, arg1.length, call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + floor32(arg1.length) + 228 len (32 * arg1.length) - floor32(arg1.length)]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(delegate.return_data[0])
}

function sub_0e9bffd4(?) {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[(32 * arg1.length) + (32 * arg2.length) + 292 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[(64 * arg1.length) + (32 * arg2.length) + 292] = arg2.length
    mem[(64 * arg1.length) + (32 * arg2.length) + 324 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    require ext_code.size(0x8bc8b60d1f58c6dcd69048e0dcce6eadd91fd2a8)
    delegate 0x8bc8b60d1f58c6dcd69048e0dcce6eadd91fd2a8.0x5dcfc902 with:
         gas gas_remaining wei
        args 0, 96, (32 * arg1.length) + 128, arg1.length, call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + (32 * arg2.length) + floor32(arg1.length) + 292 len (32 * arg1.length) + (32 * arg2.length) + -floor32(arg1.length) + 32]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 1 < sub_326ee90e.length
    uint256(sub_326ee90e.field_768)++
    require delegate.return_data[0] < sub_7d531189.length
    sub_7d531189[delegate.return_data[0]].field_768 = uint256(sub_326ee90e.field_1024)
    sub_7d531189[delegate.return_data[0]].field_1024 = 1
    require 1 < sub_326ee90e.length
    uint256(sub_326ee90e.field_1024) = delegate.return_data[0]
    return delegate.return_data[0]
}

function sub_9659ed2c(?) {
    require calldata.size - 4 >= 96
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require arg3
    require ext_code.size(arg3)
    staticcall arg3.0x73658039 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(32 * arg1.length) + (32 * arg2.length) + 164] = msg.sender
    require ext_code.size(arg3)
    staticcall arg3.0xd825306e with:
            gas gas_remaining wei
           args msg.sender
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require not ext_call.return_data[0]
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        _49 = mem[(32 * idx) + 128]
        mem[(32 * arg1.length) + (32 * arg2.length) + 164] = 0
        mem[(32 * arg1.length) + (32 * arg2.length) + 196] = _49
        require ext_code.size(0x8bc8b60d1f58c6dcd69048e0dcce6eadd91fd2a8)
        delegate 0x8bc8b60d1f58c6dcd69048e0dcce6eadd91fd2a8.0xb649bb0b with:
             gas gas_remaining wei
            args 0, _49
        mem[(32 * arg1.length) + (32 * arg2.length) + 160] = delegate.return_data[0]
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not delegate.return_data[0]:
            require idx < arg1.length
            _63 = mem[(32 * idx) + 128]
            mem[(32 * arg1.length) + (32 * arg2.length) + 164] = mem[(32 * idx) + 128]
            require ext_code.size(arg3)
            staticcall arg3.0x922d458f with:
                    gas gas_remaining wei
                   args _63
            mem[(32 * arg1.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
        idx = idx + 1
        continue 
    require ext_code.size(0x8bc8b60d1f58c6dcd69048e0dcce6eadd91fd2a8)
    delegate 0x8bc8b60d1f58c6dcd69048e0dcce6eadd91fd2a8.0xe93970f1 with:
         gas gas_remaining wei
        args 0, arg3
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(32 * arg1.length) + (32 * arg2.length) + 292 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[(64 * arg1.length) + (32 * arg2.length) + 292] = arg2.length
    mem[(64 * arg1.length) + (32 * arg2.length) + 324 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    require ext_code.size(0x8bc8b60d1f58c6dcd69048e0dcce6eadd91fd2a8)
    delegate 0x8bc8b60d1f58c6dcd69048e0dcce6eadd91fd2a8.0x5dcfc902 with:
         gas gas_remaining wei
        args 0, 96, (32 * arg1.length) + 128, arg1.length, call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + (32 * arg2.length) + floor32(arg1.length) + 292 len (32 * arg1.length) + (32 * arg2.length) + -floor32(arg1.length) + 32]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require delegate.return_data[0] < sub_326ee90e.length
    sub_326ee90e[delegate.return_data[0]].field_0++
    require delegate.return_data[0] < sub_7d531189.length
    sub_7d531189[delegate.return_data[0]].field_768 = sub_326ee90e[delegate.return_data[0]].field_256
    sub_7d531189[delegate.return_data[0]].field_1024 = delegate.return_data[0]
    require delegate.return_data[0] < sub_326ee90e.length
    sub_326ee90e[delegate.return_data[0]].field_256 = delegate.return_data[0]
    return delegate.return_data[0]
}

function sub_92f722a6(?) {
    require calldata.size - 4 >= 96
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require arg3
    require ext_code.size(arg3)
    staticcall arg3.0x73658039 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(32 * arg1.length) + (32 * arg2.length) + 164] = msg.sender
    require ext_code.size(arg3)
    staticcall arg3.0xd825306e with:
            gas gas_remaining wei
           args msg.sender
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require ext_call.return_data[0] > 0
    require ext_call.return_data[0] < stor0.length
    require arg1.length <= 3
    require arg1.length >= 2
    idx = 0
    s = 0
    while idx < arg1.length:
        require idx < arg1.length
        _66 = mem[(32 * idx) + 128]
        mem[(32 * arg1.length) + (32 * arg2.length) + 164] = 0
        mem[(32 * arg1.length) + (32 * arg2.length) + 196] = _66
        require ext_code.size(0x8bc8b60d1f58c6dcd69048e0dcce6eadd91fd2a8)
        delegate 0x8bc8b60d1f58c6dcd69048e0dcce6eadd91fd2a8.0xb649bb0b with:
             gas gas_remaining wei
            args 0, _66
        mem[(32 * arg1.length) + (32 * arg2.length) + 160] = delegate.return_data[0]
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require idx < arg1.length
        if not delegate.return_data[0]:
            _75 = mem[(32 * idx) + 128]
            mem[(32 * arg1.length) + (32 * arg2.length) + 164] = mem[(32 * idx) + 128]
            require ext_code.size(arg3)
            staticcall arg3.0x922d458f with:
                    gas gas_remaining wei
                   args _75
            mem[(32 * arg1.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
        if mem[(32 * idx) + 128] == ext_call.return_data[0]:
            idx = idx + 1
            s = s + 1
            continue 
        require idx < arg2.length
        require idx < arg2.length
        idx = idx + 1
        s = s
        continue 
    require s <= 1
    require s == arg1.length
    require ext_code.size(0x8bc8b60d1f58c6dcd69048e0dcce6eadd91fd2a8)
    delegate 0x8bc8b60d1f58c6dcd69048e0dcce6eadd91fd2a8.0xe93970f1 with:
         gas gas_remaining wei
        args 0, arg3
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(32 * arg1.length) + (32 * arg2.length) + 292 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[(64 * arg1.length) + (32 * arg2.length) + 292] = arg2.length
    mem[(64 * arg1.length) + (32 * arg2.length) + 324 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    require ext_code.size(0x8bc8b60d1f58c6dcd69048e0dcce6eadd91fd2a8)
    delegate 0x8bc8b60d1f58c6dcd69048e0dcce6eadd91fd2a8.0x5dcfc902 with:
         gas gas_remaining wei
        args 0, 96, (32 * arg1.length) + 128, arg1.length, call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + (32 * arg2.length) + floor32(arg1.length) + 292 len (32 * arg1.length) + (32 * arg2.length) + -floor32(arg1.length) + 32]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require delegate.return_data[0] < sub_326ee90e.length
    sub_326ee90e[delegate.return_data[0]].field_0++
    require delegate.return_data[0] < sub_7d531189.length
    sub_7d531189[delegate.return_data[0]].field_768 = sub_326ee90e[delegate.return_data[0]].field_256
    sub_7d531189[delegate.return_data[0]].field_1024 = delegate.return_data[0]
    require delegate.return_data[0] < sub_326ee90e.length
    sub_326ee90e[delegate.return_data[0]].field_256 = delegate.return_data[0]
    return delegate.return_data[0]
}

function sub_d59a1fce(?) {
    require calldata.size - 4 >= 32
    require arg1 - 1 < stor4.length
    require arg1 < stor4.length
    require stor4[arg1] - stor4[arg1] <= test266151307()
    mem[96] = stor4[arg1] - stor4[arg1]
    if not stor4[arg1] - stor4[arg1]:
        require stor4[arg1] - stor4[arg1] <= test266151307()
        mem[(32 * stor4[arg1] - stor4[arg1]) + 128] = stor4[arg1] - stor4[arg1]
        if not stor4[arg1] - stor4[arg1]:
            require arg1 - 1 < stor4.length
            require arg1 < stor4.length
            if var21007 >= stor4[arg1]:
                require arg1 < sub_7d531189.length
                require sub_7d531189[arg1].field_1280 <= 2
                mem[(64 * stor4[arg1] - stor4[arg1]) + 224] = sub_7d531189[arg1].field_0
                mem[(64 * stor4[arg1] - stor4[arg1]) + 256] = sub_7d531189[arg1].field_512
                mem[(64 * stor4[arg1] - stor4[arg1]) + 288] = sub_7d531189[arg1].field_1280
                mem[(64 * stor4[arg1] - stor4[arg1]) + 160] = 160
                mem[(64 * stor4[arg1] - stor4[arg1]) + 320] = stor4[arg1] - stor4[arg1]
                mem[(64 * stor4[arg1] - stor4[arg1]) + 352 len floor32(stor4[arg1] - stor4[arg1])] = mem[128 len floor32(stor4[arg1] - stor4[arg1])]
                mem[(64 * stor4[arg1] - stor4[arg1]) + 192] = (32 * stor4[arg1] - stor4[arg1]) + 192
                mem[(98 * stor4[arg1]) + (-98 * stor4[arg1]) + 352] = stor4[arg1] - stor4[arg1]
                mem[(98 * stor4[arg1]) + (-98 * stor4[arg1]) + 384 len floor32(stor4[arg1] - stor4[arg1])] = mem[(32 * stor4[arg1] - stor4[arg1]) + 160 len floor32(stor4[arg1] - stor4[arg1])]
                return Array(len=stor4[arg1] - stor4[arg1], data=mem[(64 * stor4[arg1] - stor4[arg1]) + 352 len (64 * stor4[arg1] - stor4[arg1]) + (127 * stor4[arg1]) + (-127 * stor4[arg1]) + 32]), 
                       (32 * stor4[arg1] - stor4[arg1]) + 192,
                       sub_7d531189[arg1].field_0,
                       sub_7d531189[arg1].field_512,
                       sub_7d531189[arg1].field_1280
            require var23005 < stor5
            require var25006 < stor4[arg1] - stor4[arg1]
            mem[(32 * var27001) + 128] = var27003
            require var27008 < stor6
            require var29006 < stor4[arg1] - stor4[arg1]
            mem[(32 * var31001) + (32 * stor4[arg1] - stor4[arg1]) + 160] = var31003
            require arg1 < stor4.length
            if var35007 >= stor4[arg1]:
                require arg1 < sub_7d531189.length
                require sub_7d531189[arg1].field_1280 <= 2
                mem[(64 * stor4[arg1] - stor4[arg1]) + 224] = sub_7d531189[arg1].field_0
                mem[(64 * stor4[arg1] - stor4[arg1]) + 256] = sub_7d531189[arg1].field_512
                mem[(64 * stor4[arg1] - stor4[arg1]) + 288] = sub_7d531189[arg1].field_1280
                mem[(64 * stor4[arg1] - stor4[arg1]) + 160] = 160
                mem[(64 * stor4[arg1] - stor4[arg1]) + 320] = stor4[arg1] - stor4[arg1]
                mem[(64 * stor4[arg1] - stor4[arg1]) + 352 len floor32(stor4[arg1] - stor4[arg1])] = mem[128 len floor32(stor4[arg1] - stor4[arg1])]
                mem[(64 * stor4[arg1] - stor4[arg1]) + 192] = (32 * stor4[arg1] - stor4[arg1]) + 192
                mem[(98 * stor4[arg1]) + (-98 * stor4[arg1]) + 352] = stor4[arg1] - stor4[arg1]
                mem[(98 * stor4[arg1]) + (-98 * stor4[arg1]) + 384 len floor32(stor4[arg1] - stor4[arg1])] = mem[(32 * stor4[arg1] - stor4[arg1]) + 160 len floor32(stor4[arg1] - stor4[arg1])]
                return Array(len=stor4[arg1] - stor4[arg1], data=mem[(64 * stor4[arg1] - stor4[arg1]) + 352 len (64 * stor4[arg1] - stor4[arg1]) + (127 * stor4[arg1]) + (-127 * stor4[arg1]) + 32]), 
                       (32 * stor4[arg1] - stor4[arg1]) + 192,
                       sub_7d531189[arg1].field_0,
                       sub_7d531189[arg1].field_512,
                       sub_7d531189[arg1].field_1280
            require var37005 < stor5
            require var39006 < stor4[arg1] - stor4[arg1]
            mem[(32 * var41001) + 128] = var41003
            require var41008 < stor6
            require var43006 < stor4[arg1] - stor4[arg1]
            mem[(32 * var45001) + (32 * stor4[arg1] - stor4[arg1]) + 160] = var45003
            require arg1 < stor4.length
            if var49007 < stor4[arg1]:
                require var51005 < stor5
                require var53006 < stor4[arg1] - stor4[arg1]
                require var55008 < stor6
                # nil
            else:
                require arg1 < sub_7d531189.length
                require sub_7d531189[arg1].field_1280 <= 2
                mem[(64 * stor4[arg1] - stor4[arg1]) + 224] = sub_7d531189[arg1].field_0
                mem[(64 * stor4[arg1] - stor4[arg1]) + 256] = sub_7d531189[arg1].field_512
                mem[(64 * stor4[arg1] - stor4[arg1]) + 288] = sub_7d531189[arg1].field_1280
                mem[(64 * stor4[arg1] - stor4[arg1]) + 160] = 160
                mem[(64 * stor4[arg1] - stor4[arg1]) + 320] = stor4[arg1] - stor4[arg1]
                mem[(64 * stor4[arg1] - stor4[arg1]) + 352 len floor32(stor4[arg1] - stor4[arg1])] = mem[128 len floor32(stor4[arg1] - stor4[arg1])]
                mem[(64 * stor4[arg1] - stor4[arg1]) + 192] = (32 * stor4[arg1] - stor4[arg1]) + 192
                mem[(98 * stor4[arg1]) + (-98 * stor4[arg1]) + 352] = stor4[arg1] - stor4[arg1]
                mem[(98 * stor4[arg1]) + (-98 * stor4[arg1]) + 384 len floor32(stor4[arg1] - stor4[arg1])] = mem[(32 * stor4[arg1] - stor4[arg1]) + 160 len floor32(stor4[arg1] - stor4[arg1])]
                return Array(len=stor4[arg1] - stor4[arg1], data=mem[(64 * stor4[arg1] - stor4[arg1]) + 352 len (64 * stor4[arg1] - stor4[arg1]) + (127 * stor4[arg1]) + (-127 * stor4[arg1]) + 32]), 
                       (32 * stor4[arg1] - stor4[arg1]) + 192,
                       sub_7d531189[arg1].field_0,
                       sub_7d531189[arg1].field_512,
                       sub_7d531189[arg1].field_1280
        else:
            mem[(32 * stor4[arg1] - stor4[arg1]) + 160 len 32 * stor4[arg1] - stor4[arg1]] = call.data[calldata.size len 32 * stor4[arg1] - stor4[arg1]]
            require arg1 - 1 < stor4.length
            require arg1 < stor4.length
            if var22007 >= stor4[arg1]:
                require arg1 < sub_7d531189.length
                require sub_7d531189[arg1].field_1280 <= 2
                mem[(64 * stor4[arg1] - stor4[arg1]) + 224] = sub_7d531189[arg1].field_0
                mem[(64 * stor4[arg1] - stor4[arg1]) + 256] = sub_7d531189[arg1].field_512
                mem[(64 * stor4[arg1] - stor4[arg1]) + 288] = sub_7d531189[arg1].field_1280
                mem[(64 * stor4[arg1] - stor4[arg1]) + 160] = 160
                mem[(64 * stor4[arg1] - stor4[arg1]) + 320] = stor4[arg1] - stor4[arg1]
                mem[(64 * stor4[arg1] - stor4[arg1]) + 352 len floor32(stor4[arg1] - stor4[arg1])] = mem[128 len floor32(stor4[arg1] - stor4[arg1])]
                mem[(64 * stor4[arg1] - stor4[arg1]) + 192] = (32 * stor4[arg1] - stor4[arg1]) + 192
                mem[(98 * stor4[arg1]) + (-98 * stor4[arg1]) + 352] = stor4[arg1] - stor4[arg1]
                mem[(98 * stor4[arg1]) + (-98 * stor4[arg1]) + 384 len floor32(stor4[arg1] - stor4[arg1])] = mem[(32 * stor4[arg1] - stor4[arg1]) + 160 len floor32(stor4[arg1] - stor4[arg1])]
                return Array(len=stor4[arg1] - stor4[arg1], data=mem[(64 * stor4[arg1] - stor4[arg1]) + 352 len (64 * stor4[arg1] - stor4[arg1]) + (127 * stor4[arg1]) + (-127 * stor4[arg1]) + 32]), 
                       (32 * stor4[arg1] - stor4[arg1]) + 192,
                       sub_7d531189[arg1].field_0,
                       sub_7d531189[arg1].field_512,
                       sub_7d531189[arg1].field_1280
            require var24005 < stor5
            require var26006 < stor4[arg1] - stor4[arg1]
            mem[(32 * var28001) + 128] = var28003
            require var28008 < stor6
            require var30006 < stor4[arg1] - stor4[arg1]
            mem[(32 * var32001) + (32 * stor4[arg1] - stor4[arg1]) + 160] = var32003
            require arg1 < stor4.length
            if var36007 >= stor4[arg1]:
                require arg1 < sub_7d531189.length
                require sub_7d531189[arg1].field_1280 <= 2
                mem[(64 * stor4[arg1] - stor4[arg1]) + 224] = sub_7d531189[arg1].field_0
                mem[(64 * stor4[arg1] - stor4[arg1]) + 256] = sub_7d531189[arg1].field_512
                mem[(64 * stor4[arg1] - stor4[arg1]) + 288] = sub_7d531189[arg1].field_1280
                mem[(64 * stor4[arg1] - stor4[arg1]) + 160] = 160
                mem[(64 * stor4[arg1] - stor4[arg1]) + 320] = stor4[arg1] - stor4[arg1]
                mem[(64 * stor4[arg1] - stor4[arg1]) + 352 len floor32(stor4[arg1] - stor4[arg1])] = mem[128 len floor32(stor4[arg1] - stor4[arg1])]
                mem[(64 * stor4[arg1] - stor4[arg1]) + 192] = (32 * stor4[arg1] - stor4[arg1]) + 192
                mem[(98 * stor4[arg1]) + (-98 * stor4[arg1]) + 352] = stor4[arg1] - stor4[arg1]
                mem[(98 * stor4[arg1]) + (-98 * stor4[arg1]) + 384 len floor32(stor4[arg1] - stor4[arg1])] = mem[(32 * stor4[arg1] - stor4[arg1]) + 160 len floor32(stor4[arg1] - stor4[arg1])]
                return Array(len=stor4[arg1] - stor4[arg1], data=mem[(64 * stor4[arg1] - stor4[arg1]) + 352 len (64 * stor4[arg1] - stor4[arg1]) + (127 * stor4[arg1]) + (-127 * stor4[arg1]) + 32]), 
                       (32 * stor4[arg1] - stor4[arg1]) + 192,
                       sub_7d531189[arg1].field_0,
                       sub_7d531189[arg1].field_512,
                       sub_7d531189[arg1].field_1280
            require var38005 < stor5
            require var40006 < stor4[arg1] - stor4[arg1]
            mem[(32 * var42001) + 128] = var42003
            require var42008 < stor6
            require var44006 < stor4[arg1] - stor4[arg1]
            mem[(32 * var46001) + (32 * stor4[arg1] - stor4[arg1]) + 160] = var46003
            require arg1 < stor4.length
            if var50007 < stor4[arg1]:
                require var52005 < stor5
                require var54006 < stor4[arg1] - stor4[arg1]
                require var56008 < stor6
                # nil
            else:
                require arg1 < sub_7d531189.length
                require sub_7d531189[arg1].field_1280 <= 2
                mem[(64 * stor4[arg1] - stor4[arg1]) + 224] = sub_7d531189[arg1].field_0
                mem[(64 * stor4[arg1] - stor4[arg1]) + 256] = sub_7d531189[arg1].field_512
                mem[(64 * stor4[arg1] - stor4[arg1]) + 288] = sub_7d531189[arg1].field_1280
                mem[(64 * stor4[arg1] - stor4[arg1]) + 160] = 160
                mem[(64 * stor4[arg1] - stor4[arg1]) + 320] = stor4[arg1] - stor4[arg1]
                mem[(64 * stor4[arg1] - stor4[arg1]) + 352 len floor32(stor4[arg1] - stor4[arg1])] = mem[128 len floor32(stor4[arg1] - stor4[arg1])]
                mem[(64 * stor4[arg1] - stor4[arg1]) + 192] = (32 * stor4[arg1] - stor4[arg1]) + 192
                mem[(98 * stor4[arg1]) + (-98 * stor4[arg1]) + 352] = stor4[arg1] - stor4[arg1]
                mem[(98 * stor4[arg1]) + (-98 * stor4[arg1]) + 384 len floor32(stor4[arg1] - stor4[arg1])] = mem[(32 * stor4[arg1] - stor4[arg1]) + 160 len floor32(stor4[arg1] - stor4[arg1])]
                return Array(len=stor4[arg1] - stor4[arg1], data=mem[(64 * stor4[arg1] - stor4[arg1]) + 352 len (64 * stor4[arg1] - stor4[arg1]) + (127 * stor4[arg1]) + (-127 * stor4[arg1]) + 32]), 
                       (32 * stor4[arg1] - stor4[arg1]) + 192,
                       sub_7d531189[arg1].field_0,
                       sub_7d531189[arg1].field_512,
                       sub_7d531189[arg1].field_1280
    else:
        mem[128 len 32 * stor4[arg1] - stor4[arg1]] = call.data[calldata.size len 32 * stor4[arg1] - stor4[arg1]]
        require stor4[arg1] - stor4[arg1] <= test266151307()
        mem[(32 * stor4[arg1] - stor4[arg1]) + 128] = stor4[arg1] - stor4[arg1]
        if not stor4[arg1] - stor4[arg1]:
            require arg1 - 1 < stor4.length
            require arg1 < stor4.length
            if var22007 >= stor4[arg1]:
                require arg1 < sub_7d531189.length
                require sub_7d531189[arg1].field_1280 <= 2
                mem[(64 * stor4[arg1] - stor4[arg1]) + 224] = sub_7d531189[arg1].field_0
                mem[(64 * stor4[arg1] - stor4[arg1]) + 256] = sub_7d531189[arg1].field_512
                mem[(64 * stor4[arg1] - stor4[arg1]) + 288] = sub_7d531189[arg1].field_1280
                mem[(64 * stor4[arg1] - stor4[arg1]) + 160] = 160
                mem[(64 * stor4[arg1] - stor4[arg1]) + 320] = stor4[arg1] - stor4[arg1]
                mem[(64 * stor4[arg1] - stor4[arg1]) + 352 len floor32(stor4[arg1] - stor4[arg1])] = mem[128 len floor32(stor4[arg1] - stor4[arg1])]
                mem[(64 * stor4[arg1] - stor4[arg1]) + 192] = (32 * stor4[arg1] - stor4[arg1]) + 192
                mem[(98 * stor4[arg1]) + (-98 * stor4[arg1]) + 352] = stor4[arg1] - stor4[arg1]
                mem[(98 * stor4[arg1]) + (-98 * stor4[arg1]) + 384 len floor32(stor4[arg1] - stor4[arg1])] = mem[(32 * stor4[arg1] - stor4[arg1]) + 160 len floor32(stor4[arg1] - stor4[arg1])]
                return Array(len=stor4[arg1] - stor4[arg1], data=mem[(64 * stor4[arg1] - stor4[arg1]) + 352 len (64 * stor4[arg1] - stor4[arg1]) + (127 * stor4[arg1]) + (-127 * stor4[arg1]) + 32]), 
                       (32 * stor4[arg1] - stor4[arg1]) + 192,
                       sub_7d531189[arg1].field_0,
                       sub_7d531189[arg1].field_512,
                       sub_7d531189[arg1].field_1280
            require var24005 < stor5
            require var26006 < stor4[arg1] - stor4[arg1]
            mem[(32 * var28001) + 128] = var28003
            require var28008 < stor6
            require var30006 < stor4[arg1] - stor4[arg1]
            mem[(32 * var32001) + (32 * stor4[arg1] - stor4[arg1]) + 160] = var32003
            require arg1 < stor4.length
            if var36007 >= stor4[arg1]:
                require arg1 < sub_7d531189.length
                require sub_7d531189[arg1].field_1280 <= 2
                mem[(64 * stor4[arg1] - stor4[arg1]) + 224] = sub_7d531189[arg1].field_0
                mem[(64 * stor4[arg1] - stor4[arg1]) + 256] = sub_7d531189[arg1].field_512
                mem[(64 * stor4[arg1] - stor4[arg1]) + 288] = sub_7d531189[arg1].field_1280
                mem[(64 * stor4[arg1] - stor4[arg1]) + 160] = 160
                mem[(64 * stor4[arg1] - stor4[arg1]) + 320] = stor4[arg1] - stor4[arg1]
                mem[(64 * stor4[arg1] - stor4[arg1]) + 352 len floor32(stor4[arg1] - stor4[arg1])] = mem[128 len floor32(stor4[arg1] - stor4[arg1])]
                mem[(64 * stor4[arg1] - stor4[arg1]) + 192] = (32 * stor4[arg1] - stor4[arg1]) + 192
                mem[(98 * stor4[arg1]) + (-98 * stor4[arg1]) + 352] = stor4[arg1] - stor4[arg1]
                mem[(98 * stor4[arg1]) + (-98 * stor4[arg1]) + 384 len floor32(stor4[arg1] - stor4[arg1])] = mem[(32 * stor4[arg1] - stor4[arg1]) + 160 len floor32(stor4[arg1] - stor4[arg1])]
                return Array(len=stor4[arg1] - stor4[arg1], data=mem[(64 * stor4[arg1] - stor4[arg1]) + 352 len (64 * stor4[arg1] - stor4[arg1]) + (127 * stor4[arg1]) + (-127 * stor4[arg1]) + 32]), 
                       (32 * stor4[arg1] - stor4[arg1]) + 192,
                       sub_7d531189[arg1].field_0,
                       sub_7d531189[arg1].field_512,
                       sub_7d531189[arg1].field_1280
            require var38005 < stor5
            require var40006 < stor4[arg1] - stor4[arg1]
            mem[(32 * var42001) + 128] = var42003
            require var42008 < stor6
            require var44006 < stor4[arg1] - stor4[arg1]
            mem[(32 * var46001) + (32 * stor4[arg1] - stor4[arg1]) + 160] = var46003
            require arg1 < stor4.length
            if var50007 < stor4[arg1]:
                require var52005 < stor5
                require var54006 < stor4[arg1] - stor4[arg1]
                require var56008 < stor6
                # nil
            else:
                require arg1 < sub_7d531189.length
                require sub_7d531189[arg1].field_1280 <= 2
                mem[(64 * stor4[arg1] - stor4[arg1]) + 224] = sub_7d531189[arg1].field_0
                mem[(64 * stor4[arg1] - stor4[arg1]) + 256] = sub_7d531189[arg1].field_512
                mem[(64 * stor4[arg1] - stor4[arg1]) + 288] = sub_7d531189[arg1].field_1280
                mem[(64 * stor4[arg1] - stor4[arg1]) + 160] = 160
                mem[(64 * stor4[arg1] - stor4[arg1]) + 320] = stor4[arg1] - stor4[arg1]
                mem[(64 * stor4[arg1] - stor4[arg1]) + 352 len floor32(stor4[arg1] - stor4[arg1])] = mem[128 len floor32(stor4[arg1] - stor4[arg1])]
                mem[(64 * stor4[arg1] - stor4[arg1]) + 192] = (32 * stor4[arg1] - stor4[arg1]) + 192
                mem[(98 * stor4[arg1]) + (-98 * stor4[arg1]) + 352] = stor4[arg1] - stor4[arg1]
                mem[(98 * stor4[arg1]) + (-98 * stor4[arg1]) + 384 len floor32(stor4[arg1] - stor4[arg1])] = mem[(32 * stor4[arg1] - stor4[arg1]) + 160 len floor32(stor4[arg1] - stor4[arg1])]
                return Array(len=stor4[arg1] - stor4[arg1], data=mem[(64 * stor4[arg1] - stor4[arg1]) + 352 len (64 * stor4[arg1] - stor4[arg1]) + (127 * stor4[arg1]) + (-127 * stor4[arg1]) + 32]), 
                       (32 * stor4[arg1] - stor4[arg1]) + 192,
                       sub_7d531189[arg1].field_0,
                       sub_7d531189[arg1].field_512,
                       sub_7d531189[arg1].field_1280
        else:
            mem[(32 * stor4[arg1] - stor4[arg1]) + 160 len 32 * stor4[arg1] - stor4[arg1]] = call.data[calldata.size len 32 * stor4[arg1] - stor4[arg1]]
            require arg1 - 1 < stor4.length
            require arg1 < stor4.length
            if var23007 >= stor4[arg1]:
                require arg1 < sub_7d531189.length
                require sub_7d531189[arg1].field_1280 <= 2
                mem[(64 * stor4[arg1] - stor4[arg1]) + 224] = sub_7d531189[arg1].field_0
                mem[(64 * stor4[arg1] - stor4[arg1]) + 256] = sub_7d531189[arg1].field_512
                mem[(64 * stor4[arg1] - stor4[arg1]) + 288] = sub_7d531189[arg1].field_1280
                mem[(64 * stor4[arg1] - stor4[arg1]) + 160] = 160
                mem[(64 * stor4[arg1] - stor4[arg1]) + 320] = stor4[arg1] - stor4[arg1]
                mem[(64 * stor4[arg1] - stor4[arg1]) + 352 len floor32(stor4[arg1] - stor4[arg1])] = mem[128 len floor32(stor4[arg1] - stor4[arg1])]
                mem[(64 * stor4[arg1] - stor4[arg1]) + 192] = (32 * stor4[arg1] - stor4[arg1]) + 192
                mem[(98 * stor4[arg1]) + (-98 * stor4[arg1]) + 352] = stor4[arg1] - stor4[arg1]
                mem[(98 * stor4[arg1]) + (-98 * stor4[arg1]) + 384 len floor32(stor4[arg1] - stor4[arg1])] = mem[(32 * stor4[arg1] - stor4[arg1]) + 160 len floor32(stor4[arg1] - stor4[arg1])]
                return Array(len=stor4[arg1] - stor4[arg1], data=mem[(64 * stor4[arg1] - stor4[arg1]) + 352 len (64 * stor4[arg1] - stor4[arg1]) + (127 * stor4[arg1]) + (-127 * stor4[arg1]) + 32]), 
                       (32 * stor4[arg1] - stor4[arg1]) + 192,
                       sub_7d531189[arg1].field_0,
                       sub_7d531189[arg1].field_512,
                       sub_7d531189[arg1].field_1280
            require var25005 < stor5
            require var27006 < stor4[arg1] - stor4[arg1]
            mem[(32 * var29001) + 128] = var29003
            require var29008 < stor6
            require var31006 < stor4[arg1] - stor4[arg1]
            mem[(32 * var33001) + (32 * stor4[arg1] - stor4[arg1]) + 160] = var33003
            require arg1 < stor4.length
            if var37007 >= stor4[arg1]:
                require arg1 < sub_7d531189.length
                require sub_7d531189[arg1].field_1280 <= 2
                mem[(64 * stor4[arg1] - stor4[arg1]) + 224] = sub_7d531189[arg1].field_0
                mem[(64 * stor4[arg1] - stor4[arg1]) + 256] = sub_7d531189[arg1].field_512
                mem[(64 * stor4[arg1] - stor4[arg1]) + 288] = sub_7d531189[arg1].field_1280
                mem[(64 * stor4[arg1] - stor4[arg1]) + 160] = 160
                mem[(64 * stor4[arg1] - stor4[arg1]) + 320] = stor4[arg1] - stor4[arg1]
                mem[(64 * stor4[arg1] - stor4[arg1]) + 352 len floor32(stor4[arg1] - stor4[arg1])] = mem[128 len floor32(stor4[arg1] - stor4[arg1])]
                mem[(64 * stor4[arg1] - stor4[arg1]) + 192] = (32 * stor4[arg1] - stor4[arg1]) + 192
                mem[(98 * stor4[arg1]) + (-98 * stor4[arg1]) + 352] = stor4[arg1] - stor4[arg1]
                mem[(98 * stor4[arg1]) + (-98 * stor4[arg1]) + 384 len floor32(stor4[arg1] - stor4[arg1])] = mem[(32 * stor4[arg1] - stor4[arg1]) + 160 len floor32(stor4[arg1] - stor4[arg1])]
                return Array(len=stor4[arg1] - stor4[arg1], data=mem[(64 * stor4[arg1] - stor4[arg1]) + 352 len (64 * stor4[arg1] - stor4[arg1]) + (127 * stor4[arg1]) + (-127 * stor4[arg1]) + 32]), 
                       (32 * stor4[arg1] - stor4[arg1]) + 192,
                       sub_7d531189[arg1].field_0,
                       sub_7d531189[arg1].field_512,
                       sub_7d531189[arg1].field_1280
            require var39005 < stor5
            require var41006 < stor4[arg1] - stor4[arg1]
            mem[(32 * var43001) + 128] = var43003
            require var43008 < stor6
            require var45006 < stor4[arg1] - stor4[arg1]
            mem[(32 * var47001) + (32 * stor4[arg1] - stor4[arg1]) + 160] = var47003
            require arg1 < stor4.length
            if var51007 < stor4[arg1]:
                require var53005 < stor5
                require var55006 < stor4[arg1] - stor4[arg1]
                require var57008 < stor6
                # nil
            else:
                require arg1 < sub_7d531189.length
                require sub_7d531189[arg1].field_1280 <= 2
                mem[(64 * stor4[arg1] - stor4[arg1]) + 224] = sub_7d531189[arg1].field_0
                mem[(64 * stor4[arg1] - stor4[arg1]) + 256] = sub_7d531189[arg1].field_512
                mem[(64 * stor4[arg1] - stor4[arg1]) + 288] = sub_7d531189[arg1].field_1280
                mem[(64 * stor4[arg1] - stor4[arg1]) + 160] = 160
                mem[(64 * stor4[arg1] - stor4[arg1]) + 320] = stor4[arg1] - stor4[arg1]
                mem[(64 * stor4[arg1] - stor4[arg1]) + 352 len floor32(stor4[arg1] - stor4[arg1])] = mem[128 len floor32(stor4[arg1] - stor4[arg1])]
                mem[(64 * stor4[arg1] - stor4[arg1]) + 192] = (32 * stor4[arg1] - stor4[arg1]) + 192
                mem[(98 * stor4[arg1]) + (-98 * stor4[arg1]) + 352] = stor4[arg1] - stor4[arg1]
                mem[(98 * stor4[arg1]) + (-98 * stor4[arg1]) + 384 len floor32(stor4[arg1] - stor4[arg1])] = mem[(32 * stor4[arg1] - stor4[arg1]) + 160 len floor32(stor4[arg1] - stor4[arg1])]
                return Array(len=stor4[arg1] - stor4[arg1], data=mem[(64 * stor4[arg1] - stor4[arg1]) + 352 len (64 * stor4[arg1] - stor4[arg1]) + (127 * stor4[arg1]) + (-127 * stor4[arg1]) + 32]), 
                       (32 * stor4[arg1] - stor4[arg1]) + 192,
                       sub_7d531189[arg1].field_0,
                       sub_7d531189[arg1].field_512,
                       sub_7d531189[arg1].field_1280
}



}
