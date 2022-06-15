contract main {




// =====================  Runtime code  =====================


const sub_033ac75d(?) = 100000

const sub_80947be4(?) = 100000

const MONTH_SECONDS = (720 * 24 * 3600)


address owner;
uint256 sub_95e3424f;
address stor2;
mapping of struct sub_2cec0982;
mapping of struct markets;

function markets(uint16 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return address(markets[arg1].field_0), markets[arg1].field_256, address(markets[arg1].field_512)
}

function sub_2cec0982(?) payable {
    require calldata.size - 4 >= 32
    require sub_2cec0982[arg1].field_512
    return sub_2cec0982[arg1].field_768
}

function sub_6f7ce12f(?) payable {
    require calldata.size - 4 >= 32
    return bool(sub_2cec0982[arg1].field_512)
}

function owner() payable {
    return owner
}

function sub_95e3424f(?) payable {
    return sub_95e3424f
}

function sub_d13039c7(?) payable {
    require calldata.size - 4 >= 32
    return bool(uint8(sub_2cec0982[arg1].field_0)), 
           uint16(sub_2cec0982[arg1].field_0),
           sub_2cec0982[arg1].field_256,
           sub_2cec0982[arg1].field_512,
           sub_2cec0982[arg1].field_768
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_42f7285d(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_95e3424f = arg1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_7c318a99(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == bool(arg1)
    require arg4 == uint16(arg4)
    require ext_code.size(0x96e095d2a8cdedb9ec09dfbe83ad75baa8e7aee2)
    delegate 0x96e095d2a8cdedb9ec09dfbe83ad75baa8e7aee2.0xee3bf355 with:
         gas gas_remaining wei
        args 0, uint32(bool(arg1)), arg2, arg3, uint16(arg4)
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(sub_2cec0982[delegate.return_data[0]].field_512)
}

function sub_33735760(?) payable {
    require calldata.size - 4 >= 32
    if arg1 <= 0:
        revert with 0, 'Invalid seconds to expiration'
    require ext_code.size(stor2)
    staticcall stor2.0x32833d51 with:
            gas gas_remaining wei
           args 0, 720 * 24 * 3600, arg1, 3, 10
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[32] == ext_call.return_data[63 len 1]
    require 2^ext_call.return_data[63 len 1]
    return (45000 * ext_call.return_data[0] / 2^ext_call.return_data[63 len 1])
}

function sub_b96fdb65(?) payable {
    require calldata.size - 4 >= 96
    require ext_code.size(0x8d16942308aec2243c69f8533e152a11673f551d)
    delegate 0x8d16942308aec2243c69f8533e152a11673f551d.0x7ea20db6 with:
         gas gas_remaining wei
        args 0, uint32(bool(uint8(sub_2cec0982[arg1].field_0))), sub_2cec0982[arg1].field_512, arg2, markets[uint16(stor3[arg1].field_0)].field_256, sub_2cec0982[arg1].field_256 - block.timestamp, arg3, 0, 0, 100000
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return delegate.return_data[0]
}

function sub_b9743a9f(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == uint16(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if address(markets[arg1 << 240].field_0):
        revert with 0, 'Market is already listed.'
    require ext_code.size(address(arg2))
    staticcall address(arg2).0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    address(markets[arg1 << 240].field_0) = address(arg2)
    markets[arg1 << 240].field_256 = 10^ext_call.return_data[0]
    address(markets[arg1 << 240].field_512) = address(arg3)
}

function sub_d600170b(?) payable {
    require calldata.size - 4 >= 32
    mem[64] = (32 * sub_2cec0982[arg1].field_1024) + 128
    mem[96] = sub_2cec0982[arg1].field_1024
    if not sub_2cec0982[arg1].field_1024:
        mem[(32 * sub_2cec0982[arg1].field_1024) + 128] = 32
        mem[(32 * sub_2cec0982[arg1].field_1024) + 160] = sub_2cec0982[arg1].field_1024
        idx = 0
        s = (32 * sub_2cec0982[arg1].field_1024) + 192
        t = 128
        while idx < sub_2cec0982[arg1].field_1024:
            mem[s] = mem[t + 24 len 8]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (32 * sub_2cec0982[arg1].field_1024) + 128
           len (96 * sub_2cec0982[arg1].field_1024) + 64
    mem[128] = uint64(sub_2cec0982[arg1][4].field_0)
    idx = 128
    s = 0
    while (32 * sub_2cec0982[arg1].field_1024) + 96 > idx:
        mem[idx + 32] = uint64(sub_2cec0982[arg1][4].field_8 * (8 * -(s + 15 / 32) + 1) + s - (s + 15 / 32 * s))
        idx = idx + 32
        s = (8 * -(s + 15 / 32) + 1) + s - (s + 15 / 32 * s)
        continue 
    mem[(32 * sub_2cec0982[arg1].field_1024) + 128] = 32
    mem[(32 * sub_2cec0982[arg1].field_1024) + 160] = sub_2cec0982[arg1].field_1024
    idx = 0
    s = mem[64] + 64
    t = 128
    while idx < sub_2cec0982[arg1].field_1024:
        mem[s] = mem[t + 24 len 8]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * sub_2cec0982[arg1].field_1024) + -mem[64] + 192
}

function sub_8f299abe(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(address(markets[uint16(stor3[arg1].field_0)].field_512))
    staticcall address(markets[uint16(stor3[arg1].field_0)].field_512).0x5597c63d with:
            gas gas_remaining wei
           args sub_2cec0982[arg1].field_256
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require ext_code.size(address(markets[uint16(stor3[arg1].field_0)].field_0))
        staticcall address(markets[uint16(stor3[arg1].field_0)].field_0).0x8e15f473 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    require ext_code.size(address(markets[uint16(stor3[arg1].field_0)].field_512))
    staticcall address(markets[uint16(stor3[arg1].field_0)].field_512).0xeb3c5eed with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x8d16942308aec2243c69f8533e152a11673f551d)
    delegate 0x8d16942308aec2243c69f8533e152a11673f551d.0x7ea20db6 with:
         gas gas_remaining wei
        args bool(uint8(sub_2cec0982[arg1].field_0)), sub_2cec0982[arg1].field_512, ext_call.return_data[0], markets[uint16(stor3[arg1].field_0)].field_256, sub_2cec0982[arg1].field_256 - block.timestamp, ext_call.return_data[0], 0, 0, 100000
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return delegate.return_data[0]
}

function sub_e82e3c78(?) payable {
    require calldata.size - 4 >= 32
    require block.timestamp < sub_2cec0982[arg1].field_256
    require ext_code.size(address(markets[uint16(stor3[arg1].field_0)].field_512))
    staticcall address(markets[uint16(stor3[arg1].field_0)].field_512).0x5597c63d with:
            gas gas_remaining wei
           args sub_2cec0982[arg1].field_256
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require ext_code.size(address(markets[uint16(stor3[arg1].field_0)].field_0))
        staticcall address(markets[uint16(stor3[arg1].field_0)].field_0).0x8e15f473 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    require ext_code.size(address(markets[uint16(stor3[arg1].field_0)].field_512))
    staticcall address(markets[uint16(stor3[arg1].field_0)].field_512).0xeb3c5eed with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x8d16942308aec2243c69f8533e152a11673f551d)
    delegate 0x8d16942308aec2243c69f8533e152a11673f551d.0x7ea20db6 with:
         gas gas_remaining wei
        args bool(uint8(sub_2cec0982[arg1].field_0)), sub_2cec0982[arg1].field_512, ext_call.return_data[0], markets[uint16(stor3[arg1].field_0)].field_256, sub_2cec0982[arg1].field_256 - block.timestamp, ext_call.return_data[0], 0, 0, 100000
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    sub_2cec0982[arg1].field_768 = delegate.return_data[0]
}

function sub_ef73b47d(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == bool(arg1)
    require arg4 == uint16(arg4)
    if not address(markets[arg4 << 240].field_0):
        revert with 0, 'Uninitialized oracles'
    if not address(markets[arg4 << 240].field_512):
        revert with 0, 'Uninitialized oracles'
    require ext_code.size(address(markets[arg4 << 240].field_512))
    staticcall address(markets[arg4 << 240].field_512).0x5597c63d with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Uninitializd mark futures price'
    require ext_code.size(0x96e095d2a8cdedb9ec09dfbe83ad75baa8e7aee2)
    delegate 0x96e095d2a8cdedb9ec09dfbe83ad75baa8e7aee2.0xee3bf355 with:
         gas gas_remaining wei
        args bool(arg1), arg2, arg3, uint16(arg4)
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(markets[arg4 << 240].field_512))
    staticcall address(markets[arg4 << 240].field_512).0xeb3c5eed with:
            gas gas_remaining wei
           args delegate.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Uninitialized mark IV'
    require ext_code.size(0x96e095d2a8cdedb9ec09dfbe83ad75baa8e7aee2)
    delegate 0x96e095d2a8cdedb9ec09dfbe83ad75baa8e7aee2.0xee3bf355 with:
         gas gas_remaining wei
        args bool(arg1), arg2, arg3, uint16(arg4)
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if sub_2cec0982[delegate.return_data[0]].field_512:
        if not sub_2cec0982[delegate.return_data[0]].field_1024:
            mem[(6 * ceil32(return_data.size)) + (32 * sub_2cec0982[delegate.return_data[0]].field_1024) + 512] = 32
            s = (6 * ceil32(return_data.size)) + (32 * sub_2cec0982[delegate.return_data[0]].field_1024) + 768
            idx = 0
            t = (6 * ceil32(return_data.size)) + 512
            while idx < sub_2cec0982[delegate.return_data[0]].field_1024:
                mem[s] = mem[t + 24 len 8]
                s = s + 32
                idx = idx + 1
                t = t + 32
                continue 
            return 32, bool(uint8(sub_2cec0982[delegate.return_data[0]].field_0)), 
                   uint16(sub_2cec0982[delegate.return_data[0]].field_0),
                   sub_2cec0982[delegate.return_data[0]].field_256,
                   sub_2cec0982[delegate.return_data[0]].field_512,
                   sub_2cec0982[delegate.return_data[0]].field_768,
                   192,
                   sub_2cec0982[delegate.return_data[0]].field_1024,
                   mem[(6 * ceil32(return_data.size)) + (32 * sub_2cec0982[delegate.return_data[0]].field_1024) + 768 len 32 * sub_2cec0982[delegate.return_data[0]].field_1024]
        mem[(6 * ceil32(return_data.size)) + 512] = uint64(sub_2cec0982[delegate.return_data[0]][4].field_0)
        idx = (6 * ceil32(return_data.size)) + 512
        s = 0
        while (6 * ceil32(return_data.size)) + (32 * sub_2cec0982[delegate.return_data[0]].field_1024) + 480 > idx:
            mem[idx + 32] = uint64(sub_2cec0982[delegate.return_data[0]][4].field_8 * (8 * -(s + 15 / 32) + 1) + s - (s + 15 / 32 * s))
            idx = idx + 32
            s = (8 * -(s + 15 / 32) + 1) + s - (s + 15 / 32 * s)
            continue 
        mem[(6 * ceil32(return_data.size)) + (32 * sub_2cec0982[delegate.return_data[0]].field_1024) + 512] = 32
        mem[(6 * ceil32(return_data.size)) + (32 * sub_2cec0982[delegate.return_data[0]].field_1024) + 544] = bool(uint8(sub_2cec0982[delegate.return_data[0]].field_0))
        mem[(6 * ceil32(return_data.size)) + (32 * sub_2cec0982[delegate.return_data[0]].field_1024) + 576] = uint16(sub_2cec0982[delegate.return_data[0]].field_0)
        mem[(6 * ceil32(return_data.size)) + (32 * sub_2cec0982[delegate.return_data[0]].field_1024) + 608] = sub_2cec0982[delegate.return_data[0]].field_256
        mem[(6 * ceil32(return_data.size)) + (32 * sub_2cec0982[delegate.return_data[0]].field_1024) + 640] = sub_2cec0982[delegate.return_data[0]].field_512
        mem[(6 * ceil32(return_data.size)) + (32 * sub_2cec0982[delegate.return_data[0]].field_1024) + 672] = sub_2cec0982[delegate.return_data[0]].field_768
        mem[(6 * ceil32(return_data.size)) + (32 * sub_2cec0982[delegate.return_data[0]].field_1024) + 704] = 192
        mem[(6 * ceil32(return_data.size)) + (32 * sub_2cec0982[delegate.return_data[0]].field_1024) + 736] = sub_2cec0982[delegate.return_data[0]].field_1024
        s = (6 * ceil32(return_data.size)) + (32 * sub_2cec0982[delegate.return_data[0]].field_1024) + 768
        idx = 0
        t = (6 * ceil32(return_data.size)) + 512
        while idx < sub_2cec0982[delegate.return_data[0]].field_1024:
            mem[s] = mem[t + 24 len 8]
            s = s + 32
            idx = idx + 1
            t = t + 32
            continue 
        return memory
          from (6 * ceil32(return_data.size)) + (32 * sub_2cec0982[delegate.return_data[0]].field_1024) + 512
           len (96 * sub_2cec0982[delegate.return_data[0]].field_1024) + 256
    mem[(6 * ceil32(return_data.size)) + 512 len 512] = call.data[calldata.size len 512]
    uint8(sub_2cec0982[delegate.return_data[0]].field_0) = uint8(bool(arg1))
    uint16(sub_2cec0982[delegate.return_data[0]].field_8) = uint16(arg4)
    Mask(232, 0, sub_2cec0982[delegate.return_data[0]].field_24) = Mask(232, 24, bool(arg1)) >> 24
    sub_2cec0982[delegate.return_data[0]].field_256 = arg2
    sub_2cec0982[delegate.return_data[0]].field_512 = arg3
    sub_2cec0982[delegate.return_data[0]].field_768 = 0
    sub_2cec0982[delegate.return_data[0]].field_1024 = 16
    s = 0
    idx = (6 * ceil32(return_data.size)) + 512
    while (6 * ceil32(return_data.size)) + 1024 > idx:
        sub_2cec0982[delegate.return_data[0]][4].field_0 = mem[idx + 24 len 8] * 256^s or !(test266151307() * 256^s) and sub_2cec0982[delegate.return_data[0]][4].field_0
        s = s + (8 * -s + 15 / 32) + (-1 * s * s + 15 / 32) + 8
        idx = idx + 32
        continue 
    idx = 0
    s = sha3(sha3(delegate.return_data[0], 3) + 4)
    while idx:
        stor[s] = !(test266151307() * 256^idx) and stor[s]
        idx = idx + (8 * -idx + 15 / 32) + (-1 * idx * idx + 15 / 32) + 8
        s = (idx + 15 / 32) + s
        continue 
    idx = Mask(250, 3, None + 9) + 15 / 32 * Mask(253, 0, None + 9) >> 3
    while sub_2cec0982[delegate.return_data[0]].field_1024 + 3 / 4 > idx:
        sub_2cec0982[delegate.return_data[0]][idx + 4].field_0 = 0
        idx = idx + 1
        continue 
    emit 0x78481217: delegate.return_data[0], bool(arg1), arg2, arg3, uint16(arg4)
    if not sub_2cec0982[delegate.return_data[0]].field_1024:
        mem[(6 * ceil32(return_data.size)) + (32 * sub_2cec0982[delegate.return_data[0]].field_1024) + 1248] = 32
        s = (6 * ceil32(return_data.size)) + (32 * sub_2cec0982[delegate.return_data[0]].field_1024) + 1504
        idx = 0
        t = (6 * ceil32(return_data.size)) + 1248
        while idx < sub_2cec0982[delegate.return_data[0]].field_1024:
            mem[s] = mem[t + 24 len 8]
            s = s + 32
            idx = idx + 1
            t = t + 32
            continue 
        return 32, bool(uint8(sub_2cec0982[delegate.return_data[0]].field_0)), 
               uint16(sub_2cec0982[delegate.return_data[0]].field_0),
               sub_2cec0982[delegate.return_data[0]].field_256,
               sub_2cec0982[delegate.return_data[0]].field_512,
               sub_2cec0982[delegate.return_data[0]].field_768,
               192,
               sub_2cec0982[delegate.return_data[0]].field_1024,
               mem[(6 * ceil32(return_data.size)) + (32 * sub_2cec0982[delegate.return_data[0]].field_1024) + 1504 len 32 * sub_2cec0982[delegate.return_data[0]].field_1024]
    mem[(6 * ceil32(return_data.size)) + 1248] = uint64(sub_2cec0982[delegate.return_data[0]][4].field_0)
    idx = (6 * ceil32(return_data.size)) + 1248
    s = 0
    while (6 * ceil32(return_data.size)) + (32 * sub_2cec0982[delegate.return_data[0]].field_1024) + 1216 > idx:
        mem[idx + 32] = uint64(sub_2cec0982[delegate.return_data[0]][4].field_8 * (8 * -(s + 15 / 32) + 1) + s - (s + 15 / 32 * s))
        idx = idx + 32
        s = (8 * -(s + 15 / 32) + 1) + s - (s + 15 / 32 * s)
        continue 
    mem[(6 * ceil32(return_data.size)) + (32 * sub_2cec0982[delegate.return_data[0]].field_1024) + 1248] = 32
    mem[(6 * ceil32(return_data.size)) + (32 * sub_2cec0982[delegate.return_data[0]].field_1024) + 1280] = bool(uint8(sub_2cec0982[delegate.return_data[0]].field_0))
    mem[(6 * ceil32(return_data.size)) + (32 * sub_2cec0982[delegate.return_data[0]].field_1024) + 1312] = uint16(sub_2cec0982[delegate.return_data[0]].field_0)
    mem[(6 * ceil32(return_data.size)) + (32 * sub_2cec0982[delegate.return_data[0]].field_1024) + 1344] = sub_2cec0982[delegate.return_data[0]].field_256
    mem[(6 * ceil32(return_data.size)) + (32 * sub_2cec0982[delegate.return_data[0]].field_1024) + 1376] = sub_2cec0982[delegate.return_data[0]].field_512
    mem[(6 * ceil32(return_data.size)) + (32 * sub_2cec0982[delegate.return_data[0]].field_1024) + 1408] = sub_2cec0982[delegate.return_data[0]].field_768
    mem[(6 * ceil32(return_data.size)) + (32 * sub_2cec0982[delegate.return_data[0]].field_1024) + 1440] = 192
    mem[(6 * ceil32(return_data.size)) + (32 * sub_2cec0982[delegate.return_data[0]].field_1024) + 1472] = sub_2cec0982[delegate.return_data[0]].field_1024
    s = (6 * ceil32(return_data.size)) + (32 * sub_2cec0982[delegate.return_data[0]].field_1024) + 1504
    idx = 0
    t = (6 * ceil32(return_data.size)) + 1248
    while idx < sub_2cec0982[delegate.return_data[0]].field_1024:
        mem[s] = mem[t + 24 len 8]
        s = s + 32
        idx = idx + 1
        t = t + 32
        continue 
    return memory
      from (6 * ceil32(return_data.size)) + (32 * sub_2cec0982[delegate.return_data[0]].field_1024) + 1248
       len (96 * sub_2cec0982[delegate.return_data[0]].field_1024) + 256
}

function sub_bdeb4650(?) payable {
    require calldata.size - 4 >= 32
    require block.timestamp < sub_2cec0982[arg1].field_256
    require ext_code.size(address(markets[uint16(stor3[arg1].field_0)].field_0))
    staticcall address(markets[uint16(stor3[arg1].field_0)].field_0).0x8e15f473 with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 96 len 224] = call.data[calldata.size len 224]
    mem[ceil32(return_data.size) + 324] = sub_2cec0982[arg1].field_256
    require ext_code.size(address(markets[uint16(stor3[arg1].field_0)].field_512))
    staticcall address(markets[uint16(stor3[arg1].field_0)].field_512).0x5597c63d with:
            gas gas_remaining wei
           args sub_2cec0982[arg1].field_256
    mem[ceil32(return_data.size) + 320] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(2 * ceil32(return_data.size)) + 320] = ext_call.return_data[0]
    if (ext_call.return_data[0] * sub_95e3424f / 100000 / 3) + ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    mem[(2 * ceil32(return_data.size)) + 352] = (ext_call.return_data[0] * sub_95e3424f / 100000 / 3) + ext_call.return_data[0]
    if not ext_call.return_data[0] * sub_95e3424f / 100000:
        if ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        mem[(2 * ceil32(return_data.size)) + 384] = ext_call.return_data[0]
        if (ext_call.return_data[0] * sub_95e3424f / 100000) + ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        mem[(2 * ceil32(return_data.size)) + 416] = (ext_call.return_data[0] * sub_95e3424f / 100000) + ext_call.return_data[0]
        if ext_call.return_data[0] * sub_95e3424f / 100000 / 3 > ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        mem[(2 * ceil32(return_data.size)) + 448] = ext_call.return_data[0] - (ext_call.return_data[0] * sub_95e3424f / 100000 / 3)
        if not ext_call.return_data[0] * sub_95e3424f / 100000:
            if 0 > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            mem[(2 * ceil32(return_data.size)) + 480] = ext_call.return_data[0]
            if ext_call.return_data[0] * sub_95e3424f / 100000 > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            mem[(2 * ceil32(return_data.size)) + 512] = ext_call.return_data[0] - (ext_call.return_data[0] * sub_95e3424f / 100000)
            if block.timestamp > sub_2cec0982[arg1].field_256:
                revert with 0, 'SafeMath: subtraction overflow'
            if sub_2cec0982[arg1].field_256 - block.timestamp <= 0:
                revert with 0, 'Invalid seconds to expiration'
            mem[(2 * ceil32(return_data.size)) + 580] = sub_2cec0982[arg1].field_256 - block.timestamp
            mem[(2 * ceil32(return_data.size)) + 612] = 3
            mem[(2 * ceil32(return_data.size)) + 644] = 10
            require ext_code.size(stor2)
            staticcall stor2.0x32833d51 with:
                    gas gas_remaining wei
                   args 720 * 24 * 3600, sub_2cec0982[arg1].field_256 - block.timestamp, 3, 10
            mem[(2 * ceil32(return_data.size)) + 544 len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            require ext_call.return_data[32] == ext_call.return_data[63 len 1]
            require 2^ext_call.return_data[63 len 1]
            mem[0] = uint16(sub_2cec0982[arg1].field_8)
            mem[32] = 4
            mem[(4 * ceil32(return_data.size)) + 548] = arg1
            require ext_code.size(address(markets[uint16(stor3[arg1].field_0)].field_512))
            staticcall address(markets[uint16(stor3[arg1].field_0)].field_512).0xeb3c5eed with:
                    gas gas_remaining wei
                   args arg1
            mem[(4 * ceil32(return_data.size)) + 544] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[64] = (6 * ceil32(return_data.size)) + 608
            if (45000 * ext_call.return_data[0] / 2^uint8(ext_call.return_data[32])) + ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            mem[(6 * ceil32(return_data.size)) + 544] = (45000 * ext_call.return_data[0] / 2^uint8(ext_call.return_data[32])) + ext_call.return_data[0]
            if 45000 * ext_call.return_data[0] / 2^uint8(ext_call.return_data[32]) > ext_call.return_data[0]:
                mem[(6 * ceil32(return_data.size)) + 576] = 1
                idx = 0
                while idx < 7:
                    s = 0
                    while s < 2:
                        require idx < 7
                        _618 = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 320]
                        require s < 2
                        _626 = mem[(32 * s) + (6 * ceil32(return_data.size)) + 544]
                        mem[0] = arg1
                        mem[32] = 3
                        mem[mem[64] + 4] = bool(uint8(sub_2cec0982[arg1].field_0))
                        mem[mem[64] + 36] = sub_2cec0982[arg1].field_512
                        mem[mem[64] + 68] = _618
                        mem[mem[64] + 100] = markets[uint16(stor3[arg1].field_0)].field_256
                        mem[mem[64] + 132] = sub_2cec0982[arg1].field_256 - block.timestamp
                        mem[mem[64] + 164] = _626
                        mem[mem[64] + 196] = 0
                        mem[mem[64] + 228] = 0
                        mem[mem[64] + 260] = 100000
                        require ext_code.size(0x8d16942308aec2243c69f8533e152a11673f551d)
                        delegate 0x8d16942308aec2243c69f8533e152a11673f551d.0x7ea20db6 with:
                             gas gas_remaining wei
                            args bool(uint8(sub_2cec0982[arg1].field_0)), sub_2cec0982[arg1].field_512, _618, markets[uint16(stor3[arg1].field_0)].field_256, sub_2cec0982[arg1].field_256 - block.timestamp, _626, 0, 0, 100000
                        mem[mem[64]] = delegate.return_data[0]
                        if not delegate.return_code:
                            revert with ext_call.return_data[0 len return_data.size]
                        _666 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _674 = mem[_666]
                        mem[32] = 3
                        require s + (2 * idx) < sub_2cec0982[arg1].field_1024
                        mem[0] = sha3(arg1, 3) + 4
                        stor[(0.25 / s + (2 * idx)) + ('array', 4, ('map', ('param', 'arg1'), ('name', 'sub_2cec0982', 3)))].field_0 = uint64(_674) * 256^(8 * s + (2 * idx) % 4) or !(test266151307() * 256^(8 * s + (2 * idx) % 4)) and stor[(0.25 / s + (2 * idx)) + ('array', 4, ('map', ('param', 'arg1'), ('name', 'sub_2cec0982', 3)))].field_0
                        s = s + 1
                        continue 
                    idx = idx + 1
                    continue 
                if (3 * ext_call.return_data[0] * sub_95e3424f / 100000) + ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                _336 = mem[(6 * ceil32(return_data.size)) + 544]
                mem[0] = arg1
                mem[32] = 3
                mem[mem[64] + 4] = bool(uint8(sub_2cec0982[arg1].field_0))
                mem[mem[64] + 36] = sub_2cec0982[arg1].field_512
                mem[mem[64] + 68] = (3 * ext_call.return_data[0] * sub_95e3424f / 100000) + ext_call.return_data[0]
                mem[mem[64] + 100] = markets[uint16(stor3[arg1].field_0)].field_256
                mem[mem[64] + 132] = sub_2cec0982[arg1].field_256 - block.timestamp
                mem[mem[64] + 164] = _336
                mem[mem[64] + 196] = 0
                mem[mem[64] + 228] = 0
                mem[mem[64] + 260] = 100000
                require ext_code.size(0x8d16942308aec2243c69f8533e152a11673f551d)
                delegate 0x8d16942308aec2243c69f8533e152a11673f551d.0x7ea20db6 with:
                     gas gas_remaining wei
                    args bool(uint8(sub_2cec0982[arg1].field_0)), sub_2cec0982[arg1].field_512, (3 * ext_call.return_data[0] * sub_95e3424f / 100000) + ext_call.return_data[0], markets[uint16(stor3[arg1].field_0)].field_256, sub_2cec0982[arg1].field_256 - block.timestamp, _336, 0, 0, 100000
                mem[mem[64]] = delegate.return_data[0]
                if not delegate.return_code:
                    revert with ext_call.return_data[0 len return_data.size]
                _416 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require 14 < sub_2cec0982[arg1].field_1024
                uint64(sub_2cec0982[arg1][4].field_896) = uint64(mem[_416] / 3)
                if 3 * ext_call.return_data[0] * sub_95e3424f / 100000 > ext_call.return_data[0]:
                    _480 = mem[(6 * ceil32(return_data.size)) + 544]
                    mem[0] = arg1
                    mem[32] = 3
                    mem[mem[64] + 4] = bool(uint8(sub_2cec0982[arg1].field_0))
                    mem[mem[64] + 36] = sub_2cec0982[arg1].field_512
                    mem[mem[64] + 68] = 0
                    mem[mem[64] + 100] = markets[uint16(stor3[arg1].field_0)].field_256
                    mem[mem[64] + 132] = sub_2cec0982[arg1].field_256 - block.timestamp
                    mem[mem[64] + 164] = _480
                    mem[mem[64] + 196] = 0
                    mem[mem[64] + 228] = 0
                    mem[mem[64] + 260] = 100000
                    require ext_code.size(0x8d16942308aec2243c69f8533e152a11673f551d)
                    delegate 0x8d16942308aec2243c69f8533e152a11673f551d.0x7ea20db6 with:
                         gas gas_remaining wei
                        args bool(uint8(sub_2cec0982[arg1].field_0)), sub_2cec0982[arg1].field_512, 0, markets[uint16(stor3[arg1].field_0)].field_256, sub_2cec0982[arg1].field_256 - block.timestamp, _480, 0, 0, 100000
                    mem[mem[64]] = delegate.return_data[0]
                    if not delegate.return_code:
                        revert with ext_call.return_data[0 len return_data.size]
                    _560 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require 15 < sub_2cec0982[arg1].field_1024
                    uint64(sub_2cec0982[arg1][4].field_960) = uint64(mem[_560] / 3)
                else:
                    _481 = mem[(6 * ceil32(return_data.size)) + 544]
                    mem[0] = arg1
                    mem[32] = 3
                    mem[mem[64] + 4] = bool(uint8(sub_2cec0982[arg1].field_0))
                    mem[mem[64] + 36] = sub_2cec0982[arg1].field_512
                    mem[mem[64] + 68] = ext_call.return_data[0] - (3 * ext_call.return_data[0] * sub_95e3424f / 100000)
                    mem[mem[64] + 100] = markets[uint16(stor3[arg1].field_0)].field_256
                    mem[mem[64] + 132] = sub_2cec0982[arg1].field_256 - block.timestamp
                    mem[mem[64] + 164] = _481
                    mem[mem[64] + 196] = 0
                    mem[mem[64] + 228] = 0
                    mem[mem[64] + 260] = 100000
                    require ext_code.size(0x8d16942308aec2243c69f8533e152a11673f551d)
                    delegate 0x8d16942308aec2243c69f8533e152a11673f551d.0x7ea20db6 with:
                         gas gas_remaining wei
                        args bool(uint8(sub_2cec0982[arg1].field_0)), sub_2cec0982[arg1].field_512, ext_call.return_data[0] - (3 * ext_call.return_data[0] * sub_95e3424f / 100000), markets[uint16(stor3[arg1].field_0)].field_256, sub_2cec0982[arg1].field_256 - block.timestamp, _481, 0, 0, 100000
                    mem[mem[64]] = delegate.return_data[0]
                    if not delegate.return_code:
                        revert with ext_call.return_data[0 len return_data.size]
                    _561 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require 15 < sub_2cec0982[arg1].field_1024
                    uint64(sub_2cec0982[arg1][4].field_960) = uint64(mem[_561] / 3)
            else:
                mem[(6 * ceil32(return_data.size)) + 576] = ext_call.return_data[0] - (45000 * ext_call.return_data[0] / 2^uint8(ext_call.return_data[32]))
                idx = 0
                while idx < 7:
                    s = 0
                    while s < 2:
                        require idx < 7
                        _619 = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 320]
                        require s < 2
                        _627 = mem[(32 * s) + (6 * ceil32(return_data.size)) + 544]
                        mem[0] = arg1
                        mem[32] = 3
                        mem[mem[64] + 4] = bool(uint8(sub_2cec0982[arg1].field_0))
                        mem[mem[64] + 36] = sub_2cec0982[arg1].field_512
                        mem[mem[64] + 68] = _619
                        mem[mem[64] + 100] = markets[uint16(stor3[arg1].field_0)].field_256
                        mem[mem[64] + 132] = sub_2cec0982[arg1].field_256 - block.timestamp
                        mem[mem[64] + 164] = _627
                        mem[mem[64] + 196] = 0
                        mem[mem[64] + 228] = 0
                        mem[mem[64] + 260] = 100000
                        require ext_code.size(0x8d16942308aec2243c69f8533e152a11673f551d)
                        delegate 0x8d16942308aec2243c69f8533e152a11673f551d.0x7ea20db6 with:
                             gas gas_remaining wei
                            args bool(uint8(sub_2cec0982[arg1].field_0)), sub_2cec0982[arg1].field_512, _619, markets[uint16(stor3[arg1].field_0)].field_256, sub_2cec0982[arg1].field_256 - block.timestamp, _627, 0, 0, 100000
                        mem[mem[64]] = delegate.return_data[0]
                        if not delegate.return_code:
                            revert with ext_call.return_data[0 len return_data.size]
                        _667 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _675 = mem[_667]
                        mem[32] = 3
                        require s + (2 * idx) < sub_2cec0982[arg1].field_1024
                        mem[0] = sha3(arg1, 3) + 4
                        stor[(0.25 / s + (2 * idx)) + ('array', 4, ('map', ('param', 'arg1'), ('name', 'sub_2cec0982', 3)))].field_0 = uint64(_675) * 256^(8 * s + (2 * idx) % 4) or !(test266151307() * 256^(8 * s + (2 * idx) % 4)) and stor[(0.25 / s + (2 * idx)) + ('array', 4, ('map', ('param', 'arg1'), ('name', 'sub_2cec0982', 3)))].field_0
                        s = s + 1
                        continue 
                    idx = idx + 1
                    continue 
                if (3 * ext_call.return_data[0] * sub_95e3424f / 100000) + ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                _338 = mem[(6 * ceil32(return_data.size)) + 544]
                mem[0] = arg1
                mem[32] = 3
                mem[mem[64] + 4] = bool(uint8(sub_2cec0982[arg1].field_0))
                mem[mem[64] + 36] = sub_2cec0982[arg1].field_512
                mem[mem[64] + 68] = (3 * ext_call.return_data[0] * sub_95e3424f / 100000) + ext_call.return_data[0]
                mem[mem[64] + 100] = markets[uint16(stor3[arg1].field_0)].field_256
                mem[mem[64] + 132] = sub_2cec0982[arg1].field_256 - block.timestamp
                mem[mem[64] + 164] = _338
                mem[mem[64] + 196] = 0
                mem[mem[64] + 228] = 0
                mem[mem[64] + 260] = 100000
                require ext_code.size(0x8d16942308aec2243c69f8533e152a11673f551d)
                delegate 0x8d16942308aec2243c69f8533e152a11673f551d.0x7ea20db6 with:
                     gas gas_remaining wei
                    args bool(uint8(sub_2cec0982[arg1].field_0)), sub_2cec0982[arg1].field_512, (3 * ext_call.return_data[0] * sub_95e3424f / 100000) + ext_call.return_data[0], markets[uint16(stor3[arg1].field_0)].field_256, sub_2cec0982[arg1].field_256 - block.timestamp, _338, 0, 0, 100000
                mem[mem[64]] = delegate.return_data[0]
                if not delegate.return_code:
                    revert with ext_call.return_data[0 len return_data.size]
                _418 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require 14 < sub_2cec0982[arg1].field_1024
                uint64(sub_2cec0982[arg1][4].field_896) = uint64(mem[_418] / 3)
                if 3 * ext_call.return_data[0] * sub_95e3424f / 100000 > ext_call.return_data[0]:
                    _482 = mem[(6 * ceil32(return_data.size)) + 544]
                    mem[0] = arg1
                    mem[32] = 3
                    mem[mem[64] + 4] = bool(uint8(sub_2cec0982[arg1].field_0))
                    mem[mem[64] + 36] = sub_2cec0982[arg1].field_512
                    mem[mem[64] + 68] = 0
                    mem[mem[64] + 100] = markets[uint16(stor3[arg1].field_0)].field_256
                    mem[mem[64] + 132] = sub_2cec0982[arg1].field_256 - block.timestamp
                    mem[mem[64] + 164] = _482
                    mem[mem[64] + 196] = 0
                    mem[mem[64] + 228] = 0
                    mem[mem[64] + 260] = 100000
                    require ext_code.size(0x8d16942308aec2243c69f8533e152a11673f551d)
                    delegate 0x8d16942308aec2243c69f8533e152a11673f551d.0x7ea20db6 with:
                         gas gas_remaining wei
                        args bool(uint8(sub_2cec0982[arg1].field_0)), sub_2cec0982[arg1].field_512, 0, markets[uint16(stor3[arg1].field_0)].field_256, sub_2cec0982[arg1].field_256 - block.timestamp, _482, 0, 0, 100000
                    mem[mem[64]] = delegate.return_data[0]
                    if not delegate.return_code:
                        revert with ext_call.return_data[0 len return_data.size]
                    _562 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require 15 < sub_2cec0982[arg1].field_1024
                    uint64(sub_2cec0982[arg1][4].field_960) = uint64(mem[_562] / 3)
                else:
                    _483 = mem[(6 * ceil32(return_data.size)) + 544]
                    mem[0] = arg1
                    mem[32] = 3
                    mem[mem[64] + 4] = bool(uint8(sub_2cec0982[arg1].field_0))
                    mem[mem[64] + 36] = sub_2cec0982[arg1].field_512
                    mem[mem[64] + 68] = ext_call.return_data[0] - (3 * ext_call.return_data[0] * sub_95e3424f / 100000)
                    mem[mem[64] + 100] = markets[uint16(stor3[arg1].field_0)].field_256
                    mem[mem[64] + 132] = sub_2cec0982[arg1].field_256 - block.timestamp
                    mem[mem[64] + 164] = _483
                    mem[mem[64] + 196] = 0
                    mem[mem[64] + 228] = 0
                    mem[mem[64] + 260] = 100000
                    require ext_code.size(0x8d16942308aec2243c69f8533e152a11673f551d)
                    delegate 0x8d16942308aec2243c69f8533e152a11673f551d.0x7ea20db6 with:
                         gas gas_remaining wei
                        args bool(uint8(sub_2cec0982[arg1].field_0)), sub_2cec0982[arg1].field_512, ext_call.return_data[0] - (3 * ext_call.return_data[0] * sub_95e3424f / 100000), markets[uint16(stor3[arg1].field_0)].field_256, sub_2cec0982[arg1].field_256 - block.timestamp, _483, 0, 0, 100000
                    mem[mem[64]] = delegate.return_data[0]
                    if not delegate.return_code:
                        revert with ext_call.return_data[0 len return_data.size]
                    _563 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require 15 < sub_2cec0982[arg1].field_1024
                    uint64(sub_2cec0982[arg1][4].field_960) = uint64(mem[_563] / 3)
        else:
            if 2 * ext_call.return_data[0] * sub_95e3424f / 100000 / ext_call.return_data[0] * sub_95e3424f / 100000 != 2:
                revert with 0, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[(2 * ceil32(return_data.size)) + 645 len 31]
            if 2 * ext_call.return_data[0] * sub_95e3424f / 100000 / 3 > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            mem[(2 * ceil32(return_data.size)) + 480] = ext_call.return_data[0] - (2 * ext_call.return_data[0] * sub_95e3424f / 100000 / 3)
            if ext_call.return_data[0] * sub_95e3424f / 100000 > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            mem[(2 * ceil32(return_data.size)) + 512] = ext_call.return_data[0] - (ext_call.return_data[0] * sub_95e3424f / 100000)
            if block.timestamp > sub_2cec0982[arg1].field_256:
                revert with 0, 'SafeMath: subtraction overflow'
            if sub_2cec0982[arg1].field_256 - block.timestamp <= 0:
                revert with 0, 'Invalid seconds to expiration'
            mem[(2 * ceil32(return_data.size)) + 580] = sub_2cec0982[arg1].field_256 - block.timestamp
            mem[(2 * ceil32(return_data.size)) + 612] = 3
            mem[(2 * ceil32(return_data.size)) + 644] = 10
            require ext_code.size(stor2)
            staticcall stor2.0x32833d51 with:
                    gas gas_remaining wei
                   args 720 * 24 * 3600, sub_2cec0982[arg1].field_256 - block.timestamp, 3, 10
            mem[(2 * ceil32(return_data.size)) + 544 len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            require ext_call.return_data[32] == ext_call.return_data[63 len 1]
            require 2^ext_call.return_data[63 len 1]
            mem[0] = uint16(sub_2cec0982[arg1].field_8)
            mem[32] = 4
            mem[(4 * ceil32(return_data.size)) + 548] = arg1
            require ext_code.size(address(markets[uint16(stor3[arg1].field_0)].field_512))
            staticcall address(markets[uint16(stor3[arg1].field_0)].field_512).0xeb3c5eed with:
                    gas gas_remaining wei
                   args arg1
            mem[(4 * ceil32(return_data.size)) + 544] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[64] = (6 * ceil32(return_data.size)) + 608
            if (45000 * ext_call.return_data[0] / 2^uint8(ext_call.return_data[32])) + ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            mem[(6 * ceil32(return_data.size)) + 544] = (45000 * ext_call.return_data[0] / 2^uint8(ext_call.return_data[32])) + ext_call.return_data[0]
            if 45000 * ext_call.return_data[0] / 2^uint8(ext_call.return_data[32]) > ext_call.return_data[0]:
                mem[(6 * ceil32(return_data.size)) + 576] = 1
                idx = 0
                while idx < 7:
                    s = 0
                    while s < 2:
                        require idx < 7
                        _616 = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 320]
                        require s < 2
                        _624 = mem[(32 * s) + (6 * ceil32(return_data.size)) + 544]
                        mem[0] = arg1
                        mem[32] = 3
                        mem[mem[64] + 4] = bool(uint8(sub_2cec0982[arg1].field_0))
                        mem[mem[64] + 36] = sub_2cec0982[arg1].field_512
                        mem[mem[64] + 68] = _616
                        mem[mem[64] + 100] = markets[uint16(stor3[arg1].field_0)].field_256
                        mem[mem[64] + 132] = sub_2cec0982[arg1].field_256 - block.timestamp
                        mem[mem[64] + 164] = _624
                        mem[mem[64] + 196] = 0
                        mem[mem[64] + 228] = 0
                        mem[mem[64] + 260] = 100000
                        require ext_code.size(0x8d16942308aec2243c69f8533e152a11673f551d)
                        delegate 0x8d16942308aec2243c69f8533e152a11673f551d.0x7ea20db6 with:
                             gas gas_remaining wei
                            args bool(uint8(sub_2cec0982[arg1].field_0)), sub_2cec0982[arg1].field_512, _616, markets[uint16(stor3[arg1].field_0)].field_256, sub_2cec0982[arg1].field_256 - block.timestamp, _624, 0, 0, 100000
                        mem[mem[64]] = delegate.return_data[0]
                        if not delegate.return_code:
                            revert with ext_call.return_data[0 len return_data.size]
                        _664 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _672 = mem[_664]
                        mem[32] = 3
                        require s + (2 * idx) < sub_2cec0982[arg1].field_1024
                        mem[0] = sha3(arg1, 3) + 4
                        stor[(0.25 / s + (2 * idx)) + ('array', 4, ('map', ('param', 'arg1'), ('name', 'sub_2cec0982', 3)))].field_0 = uint64(_672) * 256^(8 * s + (2 * idx) % 4) or !(test266151307() * 256^(8 * s + (2 * idx) % 4)) and stor[(0.25 / s + (2 * idx)) + ('array', 4, ('map', ('param', 'arg1'), ('name', 'sub_2cec0982', 3)))].field_0
                        s = s + 1
                        continue 
                    idx = idx + 1
                    continue 
                if (3 * ext_call.return_data[0] * sub_95e3424f / 100000) + ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                _332 = mem[(6 * ceil32(return_data.size)) + 544]
                mem[0] = arg1
                mem[32] = 3
                mem[mem[64] + 4] = bool(uint8(sub_2cec0982[arg1].field_0))
                mem[mem[64] + 36] = sub_2cec0982[arg1].field_512
                mem[mem[64] + 68] = (3 * ext_call.return_data[0] * sub_95e3424f / 100000) + ext_call.return_data[0]
                mem[mem[64] + 100] = markets[uint16(stor3[arg1].field_0)].field_256
                mem[mem[64] + 132] = sub_2cec0982[arg1].field_256 - block.timestamp
                mem[mem[64] + 164] = _332
                mem[mem[64] + 196] = 0
                mem[mem[64] + 228] = 0
                mem[mem[64] + 260] = 100000
                require ext_code.size(0x8d16942308aec2243c69f8533e152a11673f551d)
                delegate 0x8d16942308aec2243c69f8533e152a11673f551d.0x7ea20db6 with:
                     gas gas_remaining wei
                    args bool(uint8(sub_2cec0982[arg1].field_0)), sub_2cec0982[arg1].field_512, (3 * ext_call.return_data[0] * sub_95e3424f / 100000) + ext_call.return_data[0], markets[uint16(stor3[arg1].field_0)].field_256, sub_2cec0982[arg1].field_256 - block.timestamp, _332, 0, 0, 100000
                mem[mem[64]] = delegate.return_data[0]
                if not delegate.return_code:
                    revert with ext_call.return_data[0 len return_data.size]
                _412 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require 14 < sub_2cec0982[arg1].field_1024
                uint64(sub_2cec0982[arg1][4].field_896) = uint64(mem[_412] / 3)
                if 3 * ext_call.return_data[0] * sub_95e3424f / 100000 > ext_call.return_data[0]:
                    _476 = mem[(6 * ceil32(return_data.size)) + 544]
                    mem[0] = arg1
                    mem[32] = 3
                    mem[mem[64] + 4] = bool(uint8(sub_2cec0982[arg1].field_0))
                    mem[mem[64] + 36] = sub_2cec0982[arg1].field_512
                    mem[mem[64] + 68] = 0
                    mem[mem[64] + 100] = markets[uint16(stor3[arg1].field_0)].field_256
                    mem[mem[64] + 132] = sub_2cec0982[arg1].field_256 - block.timestamp
                    mem[mem[64] + 164] = _476
                    mem[mem[64] + 196] = 0
                    mem[mem[64] + 228] = 0
                    mem[mem[64] + 260] = 100000
                    require ext_code.size(0x8d16942308aec2243c69f8533e152a11673f551d)
                    delegate 0x8d16942308aec2243c69f8533e152a11673f551d.0x7ea20db6 with:
                         gas gas_remaining wei
                        args bool(uint8(sub_2cec0982[arg1].field_0)), sub_2cec0982[arg1].field_512, 0, markets[uint16(stor3[arg1].field_0)].field_256, sub_2cec0982[arg1].field_256 - block.timestamp, _476, 0, 0, 100000
                    mem[mem[64]] = delegate.return_data[0]
                    if not delegate.return_code:
                        revert with ext_call.return_data[0 len return_data.size]
                    _556 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require 15 < sub_2cec0982[arg1].field_1024
                    uint64(sub_2cec0982[arg1][4].field_960) = uint64(mem[_556] / 3)
                else:
                    _477 = mem[(6 * ceil32(return_data.size)) + 544]
                    mem[0] = arg1
                    mem[32] = 3
                    mem[mem[64] + 4] = bool(uint8(sub_2cec0982[arg1].field_0))
                    mem[mem[64] + 36] = sub_2cec0982[arg1].field_512
                    mem[mem[64] + 68] = ext_call.return_data[0] - (3 * ext_call.return_data[0] * sub_95e3424f / 100000)
                    mem[mem[64] + 100] = markets[uint16(stor3[arg1].field_0)].field_256
                    mem[mem[64] + 132] = sub_2cec0982[arg1].field_256 - block.timestamp
                    mem[mem[64] + 164] = _477
                    mem[mem[64] + 196] = 0
                    mem[mem[64] + 228] = 0
                    mem[mem[64] + 260] = 100000
                    require ext_code.size(0x8d16942308aec2243c69f8533e152a11673f551d)
                    delegate 0x8d16942308aec2243c69f8533e152a11673f551d.0x7ea20db6 with:
                         gas gas_remaining wei
                        args bool(uint8(sub_2cec0982[arg1].field_0)), sub_2cec0982[arg1].field_512, ext_call.return_data[0] - (3 * ext_call.return_data[0] * sub_95e3424f / 100000), markets[uint16(stor3[arg1].field_0)].field_256, sub_2cec0982[arg1].field_256 - block.timestamp, _477, 0, 0, 100000
                    mem[mem[64]] = delegate.return_data[0]
                    if not delegate.return_code:
                        revert with ext_call.return_data[0 len return_data.size]
                    _557 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require 15 < sub_2cec0982[arg1].field_1024
                    uint64(sub_2cec0982[arg1][4].field_960) = uint64(mem[_557] / 3)
            else:
                mem[(6 * ceil32(return_data.size)) + 576] = ext_call.return_data[0] - (45000 * ext_call.return_data[0] / 2^uint8(ext_call.return_data[32]))
                idx = 0
                while idx < 7:
                    s = 0
                    while s < 2:
                        require idx < 7
                        _617 = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 320]
                        require s < 2
                        _625 = mem[(32 * s) + (6 * ceil32(return_data.size)) + 544]
                        mem[0] = arg1
                        mem[32] = 3
                        mem[mem[64] + 4] = bool(uint8(sub_2cec0982[arg1].field_0))
                        mem[mem[64] + 36] = sub_2cec0982[arg1].field_512
                        mem[mem[64] + 68] = _617
                        mem[mem[64] + 100] = markets[uint16(stor3[arg1].field_0)].field_256
                        mem[mem[64] + 132] = sub_2cec0982[arg1].field_256 - block.timestamp
                        mem[mem[64] + 164] = _625
                        mem[mem[64] + 196] = 0
                        mem[mem[64] + 228] = 0
                        mem[mem[64] + 260] = 100000
                        require ext_code.size(0x8d16942308aec2243c69f8533e152a11673f551d)
                        delegate 0x8d16942308aec2243c69f8533e152a11673f551d.0x7ea20db6 with:
                             gas gas_remaining wei
                            args bool(uint8(sub_2cec0982[arg1].field_0)), sub_2cec0982[arg1].field_512, _617, markets[uint16(stor3[arg1].field_0)].field_256, sub_2cec0982[arg1].field_256 - block.timestamp, _625, 0, 0, 100000
                        mem[mem[64]] = delegate.return_data[0]
                        if not delegate.return_code:
                            revert with ext_call.return_data[0 len return_data.size]
                        _665 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _673 = mem[_665]
                        mem[32] = 3
                        require s + (2 * idx) < sub_2cec0982[arg1].field_1024
                        mem[0] = sha3(arg1, 3) + 4
                        stor[(0.25 / s + (2 * idx)) + ('array', 4, ('map', ('param', 'arg1'), ('name', 'sub_2cec0982', 3)))].field_0 = uint64(_673) * 256^(8 * s + (2 * idx) % 4) or !(test266151307() * 256^(8 * s + (2 * idx) % 4)) and stor[(0.25 / s + (2 * idx)) + ('array', 4, ('map', ('param', 'arg1'), ('name', 'sub_2cec0982', 3)))].field_0
                        s = s + 1
                        continue 
                    idx = idx + 1
                    continue 
                if (3 * ext_call.return_data[0] * sub_95e3424f / 100000) + ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                _334 = mem[(6 * ceil32(return_data.size)) + 544]
                mem[0] = arg1
                mem[32] = 3
                mem[mem[64] + 4] = bool(uint8(sub_2cec0982[arg1].field_0))
                mem[mem[64] + 36] = sub_2cec0982[arg1].field_512
                mem[mem[64] + 68] = (3 * ext_call.return_data[0] * sub_95e3424f / 100000) + ext_call.return_data[0]
                mem[mem[64] + 100] = markets[uint16(stor3[arg1].field_0)].field_256
                mem[mem[64] + 132] = sub_2cec0982[arg1].field_256 - block.timestamp
                mem[mem[64] + 164] = _334
                mem[mem[64] + 196] = 0
                mem[mem[64] + 228] = 0
                mem[mem[64] + 260] = 100000
                require ext_code.size(0x8d16942308aec2243c69f8533e152a11673f551d)
                delegate 0x8d16942308aec2243c69f8533e152a11673f551d.0x7ea20db6 with:
                     gas gas_remaining wei
                    args bool(uint8(sub_2cec0982[arg1].field_0)), sub_2cec0982[arg1].field_512, (3 * ext_call.return_data[0] * sub_95e3424f / 100000) + ext_call.return_data[0], markets[uint16(stor3[arg1].field_0)].field_256, sub_2cec0982[arg1].field_256 - block.timestamp, _334, 0, 0, 100000
                mem[mem[64]] = delegate.return_data[0]
                if not delegate.return_code:
                    revert with ext_call.return_data[0 len return_data.size]
                _414 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require 14 < sub_2cec0982[arg1].field_1024
                uint64(sub_2cec0982[arg1][4].field_896) = uint64(mem[_414] / 3)
                if 3 * ext_call.return_data[0] * sub_95e3424f / 100000 > ext_call.return_data[0]:
                    _478 = mem[(6 * ceil32(return_data.size)) + 544]
                    mem[0] = arg1
                    mem[32] = 3
                    mem[mem[64] + 4] = bool(uint8(sub_2cec0982[arg1].field_0))
                    mem[mem[64] + 36] = sub_2cec0982[arg1].field_512
                    mem[mem[64] + 68] = 0
                    mem[mem[64] + 100] = markets[uint16(stor3[arg1].field_0)].field_256
                    mem[mem[64] + 132] = sub_2cec0982[arg1].field_256 - block.timestamp
                    mem[mem[64] + 164] = _478
                    mem[mem[64] + 196] = 0
                    mem[mem[64] + 228] = 0
                    mem[mem[64] + 260] = 100000
                    require ext_code.size(0x8d16942308aec2243c69f8533e152a11673f551d)
                    delegate 0x8d16942308aec2243c69f8533e152a11673f551d.0x7ea20db6 with:
                         gas gas_remaining wei
                        args bool(uint8(sub_2cec0982[arg1].field_0)), sub_2cec0982[arg1].field_512, 0, markets[uint16(stor3[arg1].field_0)].field_256, sub_2cec0982[arg1].field_256 - block.timestamp, _478, 0, 0, 100000
                    mem[mem[64]] = delegate.return_data[0]
                    if not delegate.return_code:
                        revert with ext_call.return_data[0 len return_data.size]
                    _558 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require 15 < sub_2cec0982[arg1].field_1024
                    uint64(sub_2cec0982[arg1][4].field_960) = uint64(mem[_558] / 3)
                else:
                    _479 = mem[(6 * ceil32(return_data.size)) + 544]
                    mem[0] = arg1
                    mem[32] = 3
                    mem[mem[64] + 4] = bool(uint8(sub_2cec0982[arg1].field_0))
                    mem[mem[64] + 36] = sub_2cec0982[arg1].field_512
                    mem[mem[64] + 68] = ext_call.return_data[0] - (3 * ext_call.return_data[0] * sub_95e3424f / 100000)
                    mem[mem[64] + 100] = markets[uint16(stor3[arg1].field_0)].field_256
                    mem[mem[64] + 132] = sub_2cec0982[arg1].field_256 - block.timestamp
                    mem[mem[64] + 164] = _479
                    mem[mem[64] + 196] = 0
                    mem[mem[64] + 228] = 0
                    mem[mem[64] + 260] = 100000
                    require ext_code.size(0x8d16942308aec2243c69f8533e152a11673f551d)
                    delegate 0x8d16942308aec2243c69f8533e152a11673f551d.0x7ea20db6 with:
                         gas gas_remaining wei
                        args bool(uint8(sub_2cec0982[arg1].field_0)), sub_2cec0982[arg1].field_512, ext_call.return_data[0] - (3 * ext_call.return_data[0] * sub_95e3424f / 100000), markets[uint16(stor3[arg1].field_0)].field_256, sub_2cec0982[arg1].field_256 - block.timestamp, _479, 0, 0, 100000
                    mem[mem[64]] = delegate.return_data[0]
                    if not delegate.return_code:
                        revert with ext_call.return_data[0 len return_data.size]
                    _559 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require 15 < sub_2cec0982[arg1].field_1024
                    uint64(sub_2cec0982[arg1][4].field_960) = uint64(mem[_559] / 3)
    else:
        if 2 * ext_call.return_data[0] * sub_95e3424f / 100000 / ext_call.return_data[0] * sub_95e3424f / 100000 != 2:
            revert with 0, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[(2 * ceil32(return_data.size)) + 645 len 31]
        if (2 * ext_call.return_data[0] * sub_95e3424f / 100000 / 3) + ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        mem[(2 * ceil32(return_data.size)) + 384] = (2 * ext_call.return_data[0] * sub_95e3424f / 100000 / 3) + ext_call.return_data[0]
        if (ext_call.return_data[0] * sub_95e3424f / 100000) + ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        mem[(2 * ceil32(return_data.size)) + 416] = (ext_call.return_data[0] * sub_95e3424f / 100000) + ext_call.return_data[0]
        if ext_call.return_data[0] * sub_95e3424f / 100000 / 3 > ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        mem[(2 * ceil32(return_data.size)) + 448] = ext_call.return_data[0] - (ext_call.return_data[0] * sub_95e3424f / 100000 / 3)
        if not ext_call.return_data[0] * sub_95e3424f / 100000:
            if 0 > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            mem[(2 * ceil32(return_data.size)) + 480] = ext_call.return_data[0]
            if ext_call.return_data[0] * sub_95e3424f / 100000 > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            mem[(2 * ceil32(return_data.size)) + 512] = ext_call.return_data[0] - (ext_call.return_data[0] * sub_95e3424f / 100000)
            if block.timestamp > sub_2cec0982[arg1].field_256:
                revert with 0, 'SafeMath: subtraction overflow'
            if sub_2cec0982[arg1].field_256 - block.timestamp <= 0:
                revert with 0, 'Invalid seconds to expiration'
            mem[(2 * ceil32(return_data.size)) + 580] = sub_2cec0982[arg1].field_256 - block.timestamp
            mem[(2 * ceil32(return_data.size)) + 612] = 3
            mem[(2 * ceil32(return_data.size)) + 644] = 10
            require ext_code.size(stor2)
            staticcall stor2.0x32833d51 with:
                    gas gas_remaining wei
                   args 720 * 24 * 3600, sub_2cec0982[arg1].field_256 - block.timestamp, 3, 10
            mem[(2 * ceil32(return_data.size)) + 544 len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            require ext_call.return_data[32] == ext_call.return_data[63 len 1]
            require 2^ext_call.return_data[63 len 1]
            mem[0] = uint16(sub_2cec0982[arg1].field_8)
            mem[32] = 4
            mem[(4 * ceil32(return_data.size)) + 548] = arg1
            require ext_code.size(address(markets[uint16(stor3[arg1].field_0)].field_512))
            staticcall address(markets[uint16(stor3[arg1].field_0)].field_512).0xeb3c5eed with:
                    gas gas_remaining wei
                   args arg1
            mem[(4 * ceil32(return_data.size)) + 544] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[64] = (6 * ceil32(return_data.size)) + 608
            if (45000 * ext_call.return_data[0] / 2^uint8(ext_call.return_data[32])) + ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            mem[(6 * ceil32(return_data.size)) + 544] = (45000 * ext_call.return_data[0] / 2^uint8(ext_call.return_data[32])) + ext_call.return_data[0]
            if 45000 * ext_call.return_data[0] / 2^uint8(ext_call.return_data[32]) > ext_call.return_data[0]:
                mem[(6 * ceil32(return_data.size)) + 576] = 1
                idx = 0
                while idx < 7:
                    s = 0
                    while s < 2:
                        require idx < 7
                        _614 = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 320]
                        require s < 2
                        _622 = mem[(32 * s) + (6 * ceil32(return_data.size)) + 544]
                        mem[0] = arg1
                        mem[32] = 3
                        mem[mem[64] + 4] = bool(uint8(sub_2cec0982[arg1].field_0))
                        mem[mem[64] + 36] = sub_2cec0982[arg1].field_512
                        mem[mem[64] + 68] = _614
                        mem[mem[64] + 100] = markets[uint16(stor3[arg1].field_0)].field_256
                        mem[mem[64] + 132] = sub_2cec0982[arg1].field_256 - block.timestamp
                        mem[mem[64] + 164] = _622
                        mem[mem[64] + 196] = 0
                        mem[mem[64] + 228] = 0
                        mem[mem[64] + 260] = 100000
                        require ext_code.size(0x8d16942308aec2243c69f8533e152a11673f551d)
                        delegate 0x8d16942308aec2243c69f8533e152a11673f551d.0x7ea20db6 with:
                             gas gas_remaining wei
                            args bool(uint8(sub_2cec0982[arg1].field_0)), sub_2cec0982[arg1].field_512, _614, markets[uint16(stor3[arg1].field_0)].field_256, sub_2cec0982[arg1].field_256 - block.timestamp, _622, 0, 0, 100000
                        mem[mem[64]] = delegate.return_data[0]
                        if not delegate.return_code:
                            revert with ext_call.return_data[0 len return_data.size]
                        _662 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _670 = mem[_662]
                        mem[32] = 3
                        require s + (2 * idx) < sub_2cec0982[arg1].field_1024
                        mem[0] = sha3(arg1, 3) + 4
                        stor[(0.25 / s + (2 * idx)) + ('array', 4, ('map', ('param', 'arg1'), ('name', 'sub_2cec0982', 3)))].field_0 = uint64(_670) * 256^(8 * s + (2 * idx) % 4) or !(test266151307() * 256^(8 * s + (2 * idx) % 4)) and stor[(0.25 / s + (2 * idx)) + ('array', 4, ('map', ('param', 'arg1'), ('name', 'sub_2cec0982', 3)))].field_0
                        s = s + 1
                        continue 
                    idx = idx + 1
                    continue 
                if (3 * ext_call.return_data[0] * sub_95e3424f / 100000) + ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                _328 = mem[(6 * ceil32(return_data.size)) + 544]
                mem[0] = arg1
                mem[32] = 3
                mem[mem[64] + 4] = bool(uint8(sub_2cec0982[arg1].field_0))
                mem[mem[64] + 36] = sub_2cec0982[arg1].field_512
                mem[mem[64] + 68] = (3 * ext_call.return_data[0] * sub_95e3424f / 100000) + ext_call.return_data[0]
                mem[mem[64] + 100] = markets[uint16(stor3[arg1].field_0)].field_256
                mem[mem[64] + 132] = sub_2cec0982[arg1].field_256 - block.timestamp
                mem[mem[64] + 164] = _328
                mem[mem[64] + 196] = 0
                mem[mem[64] + 228] = 0
                mem[mem[64] + 260] = 100000
                require ext_code.size(0x8d16942308aec2243c69f8533e152a11673f551d)
                delegate 0x8d16942308aec2243c69f8533e152a11673f551d.0x7ea20db6 with:
                     gas gas_remaining wei
                    args bool(uint8(sub_2cec0982[arg1].field_0)), sub_2cec0982[arg1].field_512, (3 * ext_call.return_data[0] * sub_95e3424f / 100000) + ext_call.return_data[0], markets[uint16(stor3[arg1].field_0)].field_256, sub_2cec0982[arg1].field_256 - block.timestamp, _328, 0, 0, 100000
                mem[mem[64]] = delegate.return_data[0]
                if not delegate.return_code:
                    revert with ext_call.return_data[0 len return_data.size]
                _408 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require 14 < sub_2cec0982[arg1].field_1024
                uint64(sub_2cec0982[arg1][4].field_896) = uint64(mem[_408] / 3)
                if 3 * ext_call.return_data[0] * sub_95e3424f / 100000 > ext_call.return_data[0]:
                    _472 = mem[(6 * ceil32(return_data.size)) + 544]
                    mem[0] = arg1
                    mem[32] = 3
                    mem[mem[64] + 4] = bool(uint8(sub_2cec0982[arg1].field_0))
                    mem[mem[64] + 36] = sub_2cec0982[arg1].field_512
                    mem[mem[64] + 68] = 0
                    mem[mem[64] + 100] = markets[uint16(stor3[arg1].field_0)].field_256
                    mem[mem[64] + 132] = sub_2cec0982[arg1].field_256 - block.timestamp
                    mem[mem[64] + 164] = _472
                    mem[mem[64] + 196] = 0
                    mem[mem[64] + 228] = 0
                    mem[mem[64] + 260] = 100000
                    require ext_code.size(0x8d16942308aec2243c69f8533e152a11673f551d)
                    delegate 0x8d16942308aec2243c69f8533e152a11673f551d.0x7ea20db6 with:
                         gas gas_remaining wei
                        args bool(uint8(sub_2cec0982[arg1].field_0)), sub_2cec0982[arg1].field_512, 0, markets[uint16(stor3[arg1].field_0)].field_256, sub_2cec0982[arg1].field_256 - block.timestamp, _472, 0, 0, 100000
                    mem[mem[64]] = delegate.return_data[0]
                    if not delegate.return_code:
                        revert with ext_call.return_data[0 len return_data.size]
                    _552 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require 15 < sub_2cec0982[arg1].field_1024
                    uint64(sub_2cec0982[arg1][4].field_960) = uint64(mem[_552] / 3)
                else:
                    _473 = mem[(6 * ceil32(return_data.size)) + 544]
                    mem[0] = arg1
                    mem[32] = 3
                    mem[mem[64] + 4] = bool(uint8(sub_2cec0982[arg1].field_0))
                    mem[mem[64] + 36] = sub_2cec0982[arg1].field_512
                    mem[mem[64] + 68] = ext_call.return_data[0] - (3 * ext_call.return_data[0] * sub_95e3424f / 100000)
                    mem[mem[64] + 100] = markets[uint16(stor3[arg1].field_0)].field_256
                    mem[mem[64] + 132] = sub_2cec0982[arg1].field_256 - block.timestamp
                    mem[mem[64] + 164] = _473
                    mem[mem[64] + 196] = 0
                    mem[mem[64] + 228] = 0
                    mem[mem[64] + 260] = 100000
                    require ext_code.size(0x8d16942308aec2243c69f8533e152a11673f551d)
                    delegate 0x8d16942308aec2243c69f8533e152a11673f551d.0x7ea20db6 with:
                         gas gas_remaining wei
                        args bool(uint8(sub_2cec0982[arg1].field_0)), sub_2cec0982[arg1].field_512, ext_call.return_data[0] - (3 * ext_call.return_data[0] * sub_95e3424f / 100000), markets[uint16(stor3[arg1].field_0)].field_256, sub_2cec0982[arg1].field_256 - block.timestamp, _473, 0, 0, 100000
                    mem[mem[64]] = delegate.return_data[0]
                    if not delegate.return_code:
                        revert with ext_call.return_data[0 len return_data.size]
                    _553 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require 15 < sub_2cec0982[arg1].field_1024
                    uint64(sub_2cec0982[arg1][4].field_960) = uint64(mem[_553] / 3)
            else:
                mem[(6 * ceil32(return_data.size)) + 576] = ext_call.return_data[0] - (45000 * ext_call.return_data[0] / 2^uint8(ext_call.return_data[32]))
                idx = 0
                while idx < 7:
                    s = 0
                    while s < 2:
                        require idx < 7
                        _615 = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 320]
                        require s < 2
                        _623 = mem[(32 * s) + (6 * ceil32(return_data.size)) + 544]
                        mem[0] = arg1
                        mem[32] = 3
                        mem[mem[64] + 4] = bool(uint8(sub_2cec0982[arg1].field_0))
                        mem[mem[64] + 36] = sub_2cec0982[arg1].field_512
                        mem[mem[64] + 68] = _615
                        mem[mem[64] + 100] = markets[uint16(stor3[arg1].field_0)].field_256
                        mem[mem[64] + 132] = sub_2cec0982[arg1].field_256 - block.timestamp
                        mem[mem[64] + 164] = _623
                        mem[mem[64] + 196] = 0
                        mem[mem[64] + 228] = 0
                        mem[mem[64] + 260] = 100000
                        require ext_code.size(0x8d16942308aec2243c69f8533e152a11673f551d)
                        delegate 0x8d16942308aec2243c69f8533e152a11673f551d.0x7ea20db6 with:
                             gas gas_remaining wei
                            args bool(uint8(sub_2cec0982[arg1].field_0)), sub_2cec0982[arg1].field_512, _615, markets[uint16(stor3[arg1].field_0)].field_256, sub_2cec0982[arg1].field_256 - block.timestamp, _623, 0, 0, 100000
                        mem[mem[64]] = delegate.return_data[0]
                        if not delegate.return_code:
                            revert with ext_call.return_data[0 len return_data.size]
                        _663 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _671 = mem[_663]
                        mem[32] = 3
                        require s + (2 * idx) < sub_2cec0982[arg1].field_1024
                        mem[0] = sha3(arg1, 3) + 4
                        stor[(0.25 / s + (2 * idx)) + ('array', 4, ('map', ('param', 'arg1'), ('name', 'sub_2cec0982', 3)))].field_0 = uint64(_671) * 256^(8 * s + (2 * idx) % 4) or !(test266151307() * 256^(8 * s + (2 * idx) % 4)) and stor[(0.25 / s + (2 * idx)) + ('array', 4, ('map', ('param', 'arg1'), ('name', 'sub_2cec0982', 3)))].field_0
                        s = s + 1
                        continue 
                    idx = idx + 1
                    continue 
                if (3 * ext_call.return_data[0] * sub_95e3424f / 100000) + ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                _330 = mem[(6 * ceil32(return_data.size)) + 544]
                mem[0] = arg1
                mem[32] = 3
                mem[mem[64] + 4] = bool(uint8(sub_2cec0982[arg1].field_0))
                mem[mem[64] + 36] = sub_2cec0982[arg1].field_512
                mem[mem[64] + 68] = (3 * ext_call.return_data[0] * sub_95e3424f / 100000) + ext_call.return_data[0]
                mem[mem[64] + 100] = markets[uint16(stor3[arg1].field_0)].field_256
                mem[mem[64] + 132] = sub_2cec0982[arg1].field_256 - block.timestamp
                mem[mem[64] + 164] = _330
                mem[mem[64] + 196] = 0
                mem[mem[64] + 228] = 0
                mem[mem[64] + 260] = 100000
                require ext_code.size(0x8d16942308aec2243c69f8533e152a11673f551d)
                delegate 0x8d16942308aec2243c69f8533e152a11673f551d.0x7ea20db6 with:
                     gas gas_remaining wei
                    args bool(uint8(sub_2cec0982[arg1].field_0)), sub_2cec0982[arg1].field_512, (3 * ext_call.return_data[0] * sub_95e3424f / 100000) + ext_call.return_data[0], markets[uint16(stor3[arg1].field_0)].field_256, sub_2cec0982[arg1].field_256 - block.timestamp, _330, 0, 0, 100000
                mem[mem[64]] = delegate.return_data[0]
                if not delegate.return_code:
                    revert with ext_call.return_data[0 len return_data.size]
                _410 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require 14 < sub_2cec0982[arg1].field_1024
                uint64(sub_2cec0982[arg1][4].field_896) = uint64(mem[_410] / 3)
                if 3 * ext_call.return_data[0] * sub_95e3424f / 100000 > ext_call.return_data[0]:
                    _474 = mem[(6 * ceil32(return_data.size)) + 544]
                    mem[0] = arg1
                    mem[32] = 3
                    mem[mem[64] + 4] = bool(uint8(sub_2cec0982[arg1].field_0))
                    mem[mem[64] + 36] = sub_2cec0982[arg1].field_512
                    mem[mem[64] + 68] = 0
                    mem[mem[64] + 100] = markets[uint16(stor3[arg1].field_0)].field_256
                    mem[mem[64] + 132] = sub_2cec0982[arg1].field_256 - block.timestamp
                    mem[mem[64] + 164] = _474
                    mem[mem[64] + 196] = 0
                    mem[mem[64] + 228] = 0
                    mem[mem[64] + 260] = 100000
                    require ext_code.size(0x8d16942308aec2243c69f8533e152a11673f551d)
                    delegate 0x8d16942308aec2243c69f8533e152a11673f551d.0x7ea20db6 with:
                         gas gas_remaining wei
                        args bool(uint8(sub_2cec0982[arg1].field_0)), sub_2cec0982[arg1].field_512, 0, markets[uint16(stor3[arg1].field_0)].field_256, sub_2cec0982[arg1].field_256 - block.timestamp, _474, 0, 0, 100000
                    mem[mem[64]] = delegate.return_data[0]
                    if not delegate.return_code:
                        revert with ext_call.return_data[0 len return_data.size]
                    _554 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require 15 < sub_2cec0982[arg1].field_1024
                    uint64(sub_2cec0982[arg1][4].field_960) = uint64(mem[_554] / 3)
                else:
                    _475 = mem[(6 * ceil32(return_data.size)) + 544]
                    mem[0] = arg1
                    mem[32] = 3
                    mem[mem[64] + 4] = bool(uint8(sub_2cec0982[arg1].field_0))
                    mem[mem[64] + 36] = sub_2cec0982[arg1].field_512
                    mem[mem[64] + 68] = ext_call.return_data[0] - (3 * ext_call.return_data[0] * sub_95e3424f / 100000)
                    mem[mem[64] + 100] = markets[uint16(stor3[arg1].field_0)].field_256
                    mem[mem[64] + 132] = sub_2cec0982[arg1].field_256 - block.timestamp
                    mem[mem[64] + 164] = _475
                    mem[mem[64] + 196] = 0
                    mem[mem[64] + 228] = 0
                    mem[mem[64] + 260] = 100000
                    require ext_code.size(0x8d16942308aec2243c69f8533e152a11673f551d)
                    delegate 0x8d16942308aec2243c69f8533e152a11673f551d.0x7ea20db6 with:
                         gas gas_remaining wei
                        args bool(uint8(sub_2cec0982[arg1].field_0)), sub_2cec0982[arg1].field_512, ext_call.return_data[0] - (3 * ext_call.return_data[0] * sub_95e3424f / 100000), markets[uint16(stor3[arg1].field_0)].field_256, sub_2cec0982[arg1].field_256 - block.timestamp, _475, 0, 0, 100000
                    mem[mem[64]] = delegate.return_data[0]
                    if not delegate.return_code:
                        revert with ext_call.return_data[0 len return_data.size]
                    _555 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require 15 < sub_2cec0982[arg1].field_1024
                    uint64(sub_2cec0982[arg1][4].field_960) = uint64(mem[_555] / 3)
        else:
            if 2 * ext_call.return_data[0] * sub_95e3424f / 100000 / ext_call.return_data[0] * sub_95e3424f / 100000 != 2:
                revert with 0, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[(2 * ceil32(return_data.size)) + 645 len 31]
            if 2 * ext_call.return_data[0] * sub_95e3424f / 100000 / 3 > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            mem[(2 * ceil32(return_data.size)) + 480] = ext_call.return_data[0] - (2 * ext_call.return_data[0] * sub_95e3424f / 100000 / 3)
            if ext_call.return_data[0] * sub_95e3424f / 100000 > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            mem[(2 * ceil32(return_data.size)) + 512] = ext_call.return_data[0] - (ext_call.return_data[0] * sub_95e3424f / 100000)
            if block.timestamp > sub_2cec0982[arg1].field_256:
                revert with 0, 'SafeMath: subtraction overflow'
            if sub_2cec0982[arg1].field_256 - block.timestamp <= 0:
                revert with 0, 'Invalid seconds to expiration'
            mem[(2 * ceil32(return_data.size)) + 580] = sub_2cec0982[arg1].field_256 - block.timestamp
            mem[(2 * ceil32(return_data.size)) + 612] = 3
            mem[(2 * ceil32(return_data.size)) + 644] = 10
            require ext_code.size(stor2)
            staticcall stor2.0x32833d51 with:
                    gas gas_remaining wei
                   args 720 * 24 * 3600, sub_2cec0982[arg1].field_256 - block.timestamp, 3, 10
            mem[(2 * ceil32(return_data.size)) + 544 len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            require ext_call.return_data[32] == ext_call.return_data[63 len 1]
            require 2^ext_call.return_data[63 len 1]
            mem[0] = uint16(sub_2cec0982[arg1].field_8)
            mem[32] = 4
            mem[(4 * ceil32(return_data.size)) + 548] = arg1
            require ext_code.size(address(markets[uint16(stor3[arg1].field_0)].field_512))
            staticcall address(markets[uint16(stor3[arg1].field_0)].field_512).0xeb3c5eed with:
                    gas gas_remaining wei
                   args arg1
            mem[(4 * ceil32(return_data.size)) + 544] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[64] = (6 * ceil32(return_data.size)) + 608
            if (45000 * ext_call.return_data[0] / 2^uint8(ext_call.return_data[32])) + ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            mem[(6 * ceil32(return_data.size)) + 544] = (45000 * ext_call.return_data[0] / 2^uint8(ext_call.return_data[32])) + ext_call.return_data[0]
            if 45000 * ext_call.return_data[0] / 2^uint8(ext_call.return_data[32]) > ext_call.return_data[0]:
                mem[(6 * ceil32(return_data.size)) + 576] = 1
                idx = 0
                while idx < 7:
                    s = 0
                    while s < 2:
                        require idx < 7
                        _612 = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 320]
                        require s < 2
                        _620 = mem[(32 * s) + (6 * ceil32(return_data.size)) + 544]
                        mem[0] = arg1
                        mem[32] = 3
                        mem[mem[64] + 4] = bool(uint8(sub_2cec0982[arg1].field_0))
                        mem[mem[64] + 36] = sub_2cec0982[arg1].field_512
                        mem[mem[64] + 68] = _612
                        mem[mem[64] + 100] = markets[uint16(stor3[arg1].field_0)].field_256
                        mem[mem[64] + 132] = sub_2cec0982[arg1].field_256 - block.timestamp
                        mem[mem[64] + 164] = _620
                        mem[mem[64] + 196] = 0
                        mem[mem[64] + 228] = 0
                        mem[mem[64] + 260] = 100000
                        require ext_code.size(0x8d16942308aec2243c69f8533e152a11673f551d)
                        delegate 0x8d16942308aec2243c69f8533e152a11673f551d.0x7ea20db6 with:
                             gas gas_remaining wei
                            args bool(uint8(sub_2cec0982[arg1].field_0)), sub_2cec0982[arg1].field_512, _612, markets[uint16(stor3[arg1].field_0)].field_256, sub_2cec0982[arg1].field_256 - block.timestamp, _620, 0, 0, 100000
                        mem[mem[64]] = delegate.return_data[0]
                        if not delegate.return_code:
                            revert with ext_call.return_data[0 len return_data.size]
                        _660 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _668 = mem[_660]
                        mem[32] = 3
                        require s + (2 * idx) < sub_2cec0982[arg1].field_1024
                        mem[0] = sha3(arg1, 3) + 4
                        stor[(0.25 / s + (2 * idx)) + ('array', 4, ('map', ('param', 'arg1'), ('name', 'sub_2cec0982', 3)))].field_0 = uint64(_668) * 256^(8 * s + (2 * idx) % 4) or !(test266151307() * 256^(8 * s + (2 * idx) % 4)) and stor[(0.25 / s + (2 * idx)) + ('array', 4, ('map', ('param', 'arg1'), ('name', 'sub_2cec0982', 3)))].field_0
                        s = s + 1
                        continue 
                    idx = idx + 1
                    continue 
                if (3 * ext_call.return_data[0] * sub_95e3424f / 100000) + ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                _324 = mem[(6 * ceil32(return_data.size)) + 544]
                mem[0] = arg1
                mem[32] = 3
                mem[mem[64] + 4] = bool(uint8(sub_2cec0982[arg1].field_0))
                mem[mem[64] + 36] = sub_2cec0982[arg1].field_512
                mem[mem[64] + 68] = (3 * ext_call.return_data[0] * sub_95e3424f / 100000) + ext_call.return_data[0]
                mem[mem[64] + 100] = markets[uint16(stor3[arg1].field_0)].field_256
                mem[mem[64] + 132] = sub_2cec0982[arg1].field_256 - block.timestamp
                mem[mem[64] + 164] = _324
                mem[mem[64] + 196] = 0
                mem[mem[64] + 228] = 0
                mem[mem[64] + 260] = 100000
                require ext_code.size(0x8d16942308aec2243c69f8533e152a11673f551d)
                delegate 0x8d16942308aec2243c69f8533e152a11673f551d.0x7ea20db6 with:
                     gas gas_remaining wei
                    args bool(uint8(sub_2cec0982[arg1].field_0)), sub_2cec0982[arg1].field_512, (3 * ext_call.return_data[0] * sub_95e3424f / 100000) + ext_call.return_data[0], markets[uint16(stor3[arg1].field_0)].field_256, sub_2cec0982[arg1].field_256 - block.timestamp, _324, 0, 0, 100000
                mem[mem[64]] = delegate.return_data[0]
                if not delegate.return_code:
                    revert with ext_call.return_data[0 len return_data.size]
                _404 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require 14 < sub_2cec0982[arg1].field_1024
                uint64(sub_2cec0982[arg1][4].field_896) = uint64(mem[_404] / 3)
                if 3 * ext_call.return_data[0] * sub_95e3424f / 100000 > ext_call.return_data[0]:
                    _468 = mem[(6 * ceil32(return_data.size)) + 544]
                    mem[0] = arg1
                    mem[32] = 3
                    mem[mem[64] + 4] = bool(uint8(sub_2cec0982[arg1].field_0))
                    mem[mem[64] + 36] = sub_2cec0982[arg1].field_512
                    mem[mem[64] + 68] = 0
                    mem[mem[64] + 100] = markets[uint16(stor3[arg1].field_0)].field_256
                    mem[mem[64] + 132] = sub_2cec0982[arg1].field_256 - block.timestamp
                    mem[mem[64] + 164] = _468
                    mem[mem[64] + 196] = 0
                    mem[mem[64] + 228] = 0
                    mem[mem[64] + 260] = 100000
                    require ext_code.size(0x8d16942308aec2243c69f8533e152a11673f551d)
                    delegate 0x8d16942308aec2243c69f8533e152a11673f551d.0x7ea20db6 with:
                         gas gas_remaining wei
                        args bool(uint8(sub_2cec0982[arg1].field_0)), sub_2cec0982[arg1].field_512, 0, markets[uint16(stor3[arg1].field_0)].field_256, sub_2cec0982[arg1].field_256 - block.timestamp, _468, 0, 0, 100000
                    mem[mem[64]] = delegate.return_data[0]
                    if not delegate.return_code:
                        revert with ext_call.return_data[0 len return_data.size]
                    _548 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require 15 < sub_2cec0982[arg1].field_1024
                    uint64(sub_2cec0982[arg1][4].field_960) = uint64(mem[_548] / 3)
                else:
                    _469 = mem[(6 * ceil32(return_data.size)) + 544]
                    mem[0] = arg1
                    mem[32] = 3
                    mem[mem[64] + 4] = bool(uint8(sub_2cec0982[arg1].field_0))
                    mem[mem[64] + 36] = sub_2cec0982[arg1].field_512
                    mem[mem[64] + 68] = ext_call.return_data[0] - (3 * ext_call.return_data[0] * sub_95e3424f / 100000)
                    mem[mem[64] + 100] = markets[uint16(stor3[arg1].field_0)].field_256
                    mem[mem[64] + 132] = sub_2cec0982[arg1].field_256 - block.timestamp
                    mem[mem[64] + 164] = _469
                    mem[mem[64] + 196] = 0
                    mem[mem[64] + 228] = 0
                    mem[mem[64] + 260] = 100000
                    require ext_code.size(0x8d16942308aec2243c69f8533e152a11673f551d)
                    delegate 0x8d16942308aec2243c69f8533e152a11673f551d.0x7ea20db6 with:
                         gas gas_remaining wei
                        args bool(uint8(sub_2cec0982[arg1].field_0)), sub_2cec0982[arg1].field_512, ext_call.return_data[0] - (3 * ext_call.return_data[0] * sub_95e3424f / 100000), markets[uint16(stor3[arg1].field_0)].field_256, sub_2cec0982[arg1].field_256 - block.timestamp, _469, 0, 0, 100000
                    mem[mem[64]] = delegate.return_data[0]
                    if not delegate.return_code:
                        revert with ext_call.return_data[0 len return_data.size]
                    _549 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require 15 < sub_2cec0982[arg1].field_1024
                    uint64(sub_2cec0982[arg1][4].field_960) = uint64(mem[_549] / 3)
            else:
                mem[(6 * ceil32(return_data.size)) + 576] = ext_call.return_data[0] - (45000 * ext_call.return_data[0] / 2^uint8(ext_call.return_data[32]))
                idx = 0
                while idx < 7:
                    s = 0
                    while s < 2:
                        require idx < 7
                        _613 = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 320]
                        require s < 2
                        _621 = mem[(32 * s) + (6 * ceil32(return_data.size)) + 544]
                        mem[0] = arg1
                        mem[32] = 3
                        mem[mem[64] + 4] = bool(uint8(sub_2cec0982[arg1].field_0))
                        mem[mem[64] + 36] = sub_2cec0982[arg1].field_512
                        mem[mem[64] + 68] = _613
                        mem[mem[64] + 100] = markets[uint16(stor3[arg1].field_0)].field_256
                        mem[mem[64] + 132] = sub_2cec0982[arg1].field_256 - block.timestamp
                        mem[mem[64] + 164] = _621
                        mem[mem[64] + 196] = 0
                        mem[mem[64] + 228] = 0
                        mem[mem[64] + 260] = 100000
                        require ext_code.size(0x8d16942308aec2243c69f8533e152a11673f551d)
                        delegate 0x8d16942308aec2243c69f8533e152a11673f551d.0x7ea20db6 with:
                             gas gas_remaining wei
                            args bool(uint8(sub_2cec0982[arg1].field_0)), sub_2cec0982[arg1].field_512, _613, markets[uint16(stor3[arg1].field_0)].field_256, sub_2cec0982[arg1].field_256 - block.timestamp, _621, 0, 0, 100000
                        mem[mem[64]] = delegate.return_data[0]
                        if not delegate.return_code:
                            revert with ext_call.return_data[0 len return_data.size]
                        _661 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _669 = mem[_661]
                        mem[32] = 3
                        require s + (2 * idx) < sub_2cec0982[arg1].field_1024
                        mem[0] = sha3(arg1, 3) + 4
                        stor[(0.25 / s + (2 * idx)) + ('array', 4, ('map', ('param', 'arg1'), ('name', 'sub_2cec0982', 3)))].field_0 = uint64(_669) * 256^(8 * s + (2 * idx) % 4) or !(test266151307() * 256^(8 * s + (2 * idx) % 4)) and stor[(0.25 / s + (2 * idx)) + ('array', 4, ('map', ('param', 'arg1'), ('name', 'sub_2cec0982', 3)))].field_0
                        s = s + 1
                        continue 
                    idx = idx + 1
                    continue 
                if (3 * ext_call.return_data[0] * sub_95e3424f / 100000) + ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                _326 = mem[(6 * ceil32(return_data.size)) + 544]
                mem[0] = arg1
                mem[32] = 3
                mem[mem[64] + 4] = bool(uint8(sub_2cec0982[arg1].field_0))
                mem[mem[64] + 36] = sub_2cec0982[arg1].field_512
                mem[mem[64] + 68] = (3 * ext_call.return_data[0] * sub_95e3424f / 100000) + ext_call.return_data[0]
                mem[mem[64] + 100] = markets[uint16(stor3[arg1].field_0)].field_256
                mem[mem[64] + 132] = sub_2cec0982[arg1].field_256 - block.timestamp
                mem[mem[64] + 164] = _326
                mem[mem[64] + 196] = 0
                mem[mem[64] + 228] = 0
                mem[mem[64] + 260] = 100000
                require ext_code.size(0x8d16942308aec2243c69f8533e152a11673f551d)
                delegate 0x8d16942308aec2243c69f8533e152a11673f551d.0x7ea20db6 with:
                     gas gas_remaining wei
                    args bool(uint8(sub_2cec0982[arg1].field_0)), sub_2cec0982[arg1].field_512, (3 * ext_call.return_data[0] * sub_95e3424f / 100000) + ext_call.return_data[0], markets[uint16(stor3[arg1].field_0)].field_256, sub_2cec0982[arg1].field_256 - block.timestamp, _326, 0, 0, 100000
                mem[mem[64]] = delegate.return_data[0]
                if not delegate.return_code:
                    revert with ext_call.return_data[0 len return_data.size]
                _406 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require 14 < sub_2cec0982[arg1].field_1024
                uint64(sub_2cec0982[arg1][4].field_896) = uint64(mem[_406] / 3)
                if 3 * ext_call.return_data[0] * sub_95e3424f / 100000 > ext_call.return_data[0]:
                    _470 = mem[(6 * ceil32(return_data.size)) + 544]
                    mem[0] = arg1
                    mem[32] = 3
                    mem[mem[64] + 4] = bool(uint8(sub_2cec0982[arg1].field_0))
                    mem[mem[64] + 36] = sub_2cec0982[arg1].field_512
                    mem[mem[64] + 68] = 0
                    mem[mem[64] + 100] = markets[uint16(stor3[arg1].field_0)].field_256
                    mem[mem[64] + 132] = sub_2cec0982[arg1].field_256 - block.timestamp
                    mem[mem[64] + 164] = _470
                    mem[mem[64] + 196] = 0
                    mem[mem[64] + 228] = 0
                    mem[mem[64] + 260] = 100000
                    require ext_code.size(0x8d16942308aec2243c69f8533e152a11673f551d)
                    delegate 0x8d16942308aec2243c69f8533e152a11673f551d.0x7ea20db6 with:
                         gas gas_remaining wei
                        args bool(uint8(sub_2cec0982[arg1].field_0)), sub_2cec0982[arg1].field_512, 0, markets[uint16(stor3[arg1].field_0)].field_256, sub_2cec0982[arg1].field_256 - block.timestamp, _470, 0, 0, 100000
                    mem[mem[64]] = delegate.return_data[0]
                    if not delegate.return_code:
                        revert with ext_call.return_data[0 len return_data.size]
                    _550 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require 15 < sub_2cec0982[arg1].field_1024
                    uint64(sub_2cec0982[arg1][4].field_960) = uint64(mem[_550] / 3)
                else:
                    _471 = mem[(6 * ceil32(return_data.size)) + 544]
                    mem[0] = arg1
                    mem[32] = 3
                    mem[mem[64] + 4] = bool(uint8(sub_2cec0982[arg1].field_0))
                    mem[mem[64] + 36] = sub_2cec0982[arg1].field_512
                    mem[mem[64] + 68] = ext_call.return_data[0] - (3 * ext_call.return_data[0] * sub_95e3424f / 100000)
                    mem[mem[64] + 100] = markets[uint16(stor3[arg1].field_0)].field_256
                    mem[mem[64] + 132] = sub_2cec0982[arg1].field_256 - block.timestamp
                    mem[mem[64] + 164] = _471
                    mem[mem[64] + 196] = 0
                    mem[mem[64] + 228] = 0
                    mem[mem[64] + 260] = 100000
                    require ext_code.size(0x8d16942308aec2243c69f8533e152a11673f551d)
                    delegate 0x8d16942308aec2243c69f8533e152a11673f551d.0x7ea20db6 with:
                         gas gas_remaining wei
                        args bool(uint8(sub_2cec0982[arg1].field_0)), sub_2cec0982[arg1].field_512, ext_call.return_data[0] - (3 * ext_call.return_data[0] * sub_95e3424f / 100000), markets[uint16(stor3[arg1].field_0)].field_256, sub_2cec0982[arg1].field_256 - block.timestamp, _471, 0, 0, 100000
                    mem[mem[64]] = delegate.return_data[0]
                    if not delegate.return_code:
                        revert with ext_call.return_data[0 len return_data.size]
                    _551 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require 15 < sub_2cec0982[arg1].field_1024
                    uint64(sub_2cec0982[arg1][4].field_960) = uint64(mem[_551] / 3)
}



}
