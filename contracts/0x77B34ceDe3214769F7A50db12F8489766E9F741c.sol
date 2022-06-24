contract main {




// =====================  Runtime code  =====================


address owner;
mapping of struct pairs;
mapping of struct sub_07b1d728;
mapping of struct sub_26638a0a;
array of struct sub_07c28c26;
address governanceAddress;

function sub_07b1d728(?) payable {
    require calldata.size - 4 >= 32
    return sub_07b1d728[arg1].field_0, sub_07b1d728[arg1].field_256, sub_07b1d728[arg1].field_512
}

function sub_07c28c26(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_07c28c26.length
    return sub_07c28c26[arg1].field_0
}

function sub_26638a0a(?) payable {
    require calldata.size - 4 >= 32
    return sub_26638a0a[arg1].field_0, sub_26638a0a[arg1].field_256, sub_26638a0a[arg1].field_512, sub_26638a0a[arg1].field_768
}

function governance() payable {
    return governanceAddress
}

function sub_837cd3fa(?) payable {
    return sub_07c28c26.length
}

function owner() payable {
    return owner
}

function pairs(address arg1) payable {
    require calldata.size - 4 >= 32
    return pairs[arg1].field_0, pairs[arg1].field_256, pairs[arg1].field_512
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

function sub_8d8a7c8a(?) payable {
    require calldata.size - 4 >= 32
    if not pairs[address(arg1)].field_0:
        return sub_07b1d728[address(arg1)].field_512
    return sub_26638a0a[stor1[address(arg1)].field_0].field_768
}

function getFee(address arg1) payable {
    require calldata.size - 4 >= 32
    if not pairs[address(arg1)].field_0:
        return sub_07b1d728[address(arg1)].field_0, sub_07b1d728[address(arg1)].field_256
    return sub_26638a0a[stor1[address(arg1)].field_0].field_256, sub_26638a0a[stor1[address(arg1)].field_0].field_512
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
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

function sub_9c5eda84(?) payable {
    require calldata.size - 4 >= 160
    require ext_code.size(governanceAddress)
    staticcall governanceAddress.0xa3818b3b with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Not from voting'
    if not arg2:
        revert with 0, 'Invalid protocol address'
    if arg3 > arg4:
        revert with 0, 'Fee too large'
    if arg4 <= 0:
        revert with 0, 'Protocol not regconized'
    sub_26638a0a[address(arg2)].field_0 = arg1
    sub_26638a0a[address(arg2)].field_256 = arg3
    sub_26638a0a[address(arg2)].field_512 = arg4
    sub_26638a0a[address(arg2)].field_768 = arg5
    sub_07c28c26.length++
    sub_07c28c26[sub_07c28c26.length].field_0 = arg2
    emit 0x4647302d: arg1, arg3, arg4, arg5, arg2
}

function sub_30f802e5(?) payable {
    require calldata.size - 4 >= 192
    require ext_code.size(governanceAddress)
    staticcall governanceAddress.0xa3818b3b with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Not from voting'
    if not arg1:
        revert with 0, 'Invalid token address'
    if arg1 >= arg2:
        revert with 0, 'Invalid token order'
    if not arg3:
        revert with 0, 'Invalid pair address'
    if arg4 > arg5:
        revert with 0, 'Fee too large'
    if arg5 <= 0:
        revert with 0, 'Protocol not regconized'
    pairs[address(arg3)].field_0 = 0
    pairs[address(arg3)].field_256 = arg1
    pairs[address(arg3)].field_512 = arg2
    sub_07b1d728[address(arg3)].field_0 = arg4
    sub_07b1d728[address(arg3)].field_256 = arg5
    sub_07b1d728[address(arg3)].field_512 = arg6
    emit 0x7860c964: address(arg1), arg2, 0, arg3
    emit 0x468d5e83: arg4, arg5, arg6, arg3
}

function sub_edf30da9(?) payable {
    require calldata.size - 4 >= 64
    if sub_26638a0a[address(arg1)].field_768 == 3:
        revert with 0, 'Protocol not regconized'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x73496e76616c6964207061697220616464726573732f50616972206e6f7420666f756e,
                    mem[199 len 29]
    require ext_code.size(arg2)
    call arg2.token0() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg2)
    call arg2.token1() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if address(ext_call.return_data[0]) >= ext_call.return_data[12 len 20]:
        revert with 0, 'Invalid tokens order'
    pairs[address(arg2)].field_0 = arg1
    pairs[address(arg2)].field_256 = address(ext_call.return_data[0])
    pairs[address(arg2)].field_512 = address(ext_call.return_data[0])
    emit 0x7860c964: address(ext_call.return_data[0]), address(ext_call.return_data[0]), arg1, arg2
}

function sub_d52f6d02(?) payable {
    require calldata.size - 4 >= 64
    if not sub_26638a0a[address(arg1)].field_768:
        revert with 0, 'Protocol not regconized'
    require ext_code.size(arg1)
    staticcall arg1.allPairs(uint256 arg1) with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[12 len 20]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x73496e76616c6964207061697220616464726573732f50616972206e6f7420666f756e,
                    mem[199 len 29]
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).token0() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).token1() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if address(ext_call.return_data[0]) >= ext_call.return_data[12 len 20]:
        revert with 0, 'Invalid tokens order'
    pairs[address(ext_call.return_data[0])].field_0 = arg1
    pairs[address(ext_call.return_data[0])].field_256 = address(ext_call.return_data[0])
    pairs[address(ext_call.return_data[0])].field_512 = address(ext_call.return_data[0])
    emit 0x7860c964: address(ext_call.return_data[0]), address(ext_call.return_data[0]), arg1, address(ext_call.return_data[0])
}

function sub_1f2a1a2b(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= 4294967296
    require cd[4] + 36 <= calldata.size
    require ('cd', 4).length <= 4294967296 and cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require ('cd', 4).length <= test266151307()
    if ('cd', 4).length:
        mem[128 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
    require ('cd', 4).length <= test266151307()
    mem[(32 * ('cd', 4).length) + 128] = ('cd', 4).length
    if ('cd', 4).length:
        mem[(32 * ('cd', 4).length) + 160 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
    idx = 0
    while idx < ('cd', 4).length:
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 1
        require idx < ('cd', 4).length
        mem[(32 * idx) + 128] = pairs[address(cd[((32 * idx) + cd[4] + 36)])].field_256
        require idx < mem[(32 * ('cd', 4).length) + 128]
        mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = pairs[address(cd[((32 * idx) + cd[4] + 36)])].field_512
        idx = idx + 1
        continue 
    mem[(64 * ('cd', 4).length) + 160] = 64
    mem[(64 * ('cd', 4).length) + 224] = ('cd', 4).length
    mem[(64 * ('cd', 4).length) + 256 len floor32(('cd', 4).length)] = mem[128 len floor32(('cd', 4).length)]
    mem[(64 * ('cd', 4).length) + 192] = (32 * ('cd', 4).length) + 96
    mem[(98 * ('cd', 4).length) + 256] = mem[(32 * ('cd', 4).length) + 128]
    mem[(98 * ('cd', 4).length) + 288 len floor32(mem[(32 * ('cd', 4).length) + 128])] = mem[(32 * ('cd', 4).length) + 160 len floor32(mem[(32 * ('cd', 4).length) + 128])]
    return memory
      from (64 * ('cd', 4).length) + 160
       len (32 * mem[(32 * ('cd', 4).length) + 128]) + (161 * ('cd', 4).length) + 128
}

function sub_07742f44(?) payable {
    require calldata.size - 4 >= 128
    if sub_26638a0a[address(arg1)].field_768 != 3:
        revert with 0, 'Invalid type'
    require ext_code.size(arg1)
    staticcall arg1.getPair(address arg1, address arg2, uint256 arg3) with:
            gas gas_remaining wei
           args address(arg2), address(arg3), arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[12 len 20]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x73496e76616c6964207061697220616464726573732f50616972206e6f7420666f756e,
                    mem[199 len 29]
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).token0() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).token1() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if address(ext_call.return_data[0]) >= ext_call.return_data[12 len 20]:
        revert with 0, 'Invalid tokens order'
    pairs[address(ext_call.return_data[0])].field_0 = arg1
    pairs[address(ext_call.return_data[0])].field_256 = address(ext_call.return_data[0])
    pairs[address(ext_call.return_data[0])].field_512 = address(ext_call.return_data[0])
    emit 0x7860c964: address(ext_call.return_data[0]), address(ext_call.return_data[0]), arg1, address(ext_call.return_data[0])
}

function sub_46079b88(?) payable {
    require calldata.size - 4 >= 96
    if not sub_26638a0a[address(arg1)].field_768:
        revert with 0, 'Invalid type'
    if sub_26638a0a[address(arg1)].field_768 >= 3:
        revert with 0, 'Invalid type'
    require ext_code.size(arg1)
    staticcall arg1.getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[12 len 20]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x73496e76616c6964207061697220616464726573732f50616972206e6f7420666f756e,
                    mem[199 len 29]
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).token0() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).token1() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if address(ext_call.return_data[0]) >= ext_call.return_data[12 len 20]:
        revert with 0, 'Invalid tokens order'
    pairs[address(ext_call.return_data[0])].field_0 = arg1
    pairs[address(ext_call.return_data[0])].field_256 = address(ext_call.return_data[0])
    pairs[address(ext_call.return_data[0])].field_512 = address(ext_call.return_data[0])
    emit 0x7860c964: address(ext_call.return_data[0]), address(ext_call.return_data[0]), arg1, address(ext_call.return_data[0])
}

function sub_ed706dbd(?) payable {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + 128] = 0
    if sub_26638a0a[address(arg1)].field_768 == 3:
        revert with 0, 'Protocol not regconized'
    idx = 0
    while idx < arg2.length:
        require idx < arg2.length
        _24 = mem[(32 * idx) + 128]
        if not mem[(32 * idx) + 140 len 20]:
            revert with 0, 
                        32,
                        35,
                        0x73496e76616c6964207061697220616464726573732f50616972206e6f7420666f756e,
                        mem[(32 * arg2.length) + 231 len 29]
        require ext_code.size(mem[(32 * idx) + 140 len 20])
        call mem[(32 * idx) + 140 len 20].token0() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(mem[(32 * idx) + 140 len 20])
        call mem[(32 * idx) + 140 len 20].token1() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if address(ext_call.return_data[0]) >= address(ext_call.return_data[0]):
            revert with 0, 'Invalid tokens order'
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 1
        pairs[address(mem[(32 * idx) + 128])].field_0 = arg1
        pairs[address(mem[(32 * idx) + 128])].field_256 = address(ext_call.return_data[0])
        pairs[address(mem[(32 * idx) + 128])].field_512 = address(ext_call.return_data[0])
        mem[(32 * arg2.length) + 128] = address(ext_call.return_data[0])
        mem[(32 * arg2.length) + 160] = address(ext_call.return_data[0])
        emit 0x7860c964: address(ext_call.return_data[0]), address(ext_call.return_data[0]), arg1, address(_24)
        idx = idx + 1
        continue 
}

function sub_9179f078(?) payable {
    require calldata.size - 4 >= 64
    require cd[36] <= 4294967296
    require cd[36] + 36 <= calldata.size
    require ('cd', 36).length <= 4294967296 and cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if not sub_26638a0a[address(cd[4])].field_768:
        revert with 0, 'Protocol not regconized'
    idx = 0
    while idx < ('cd', 36).length:
        require ext_code.size(address(cd[4]))
        staticcall address(cd[4]).allPairs(uint256 arg1) with:
                gas gas_remaining wei
               args cd[((32 * idx) + cd[36] + 36)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not address(ext_call.return_data[0]):
            revert with 0, 32, 35, 0x73496e76616c6964207061697220616464726573732f50616972206e6f7420666f756e, mem[199 len 29]
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).token0() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).token1() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if address(ext_call.return_data[0]) >= address(ext_call.return_data[0]):
            revert with 0, 'Invalid tokens order'
        mem[0] = address(ext_call.return_data[0])
        mem[32] = 1
        pairs[address(ext_call.return_data[0])].field_0 = address(cd[4])
        pairs[address(ext_call.return_data[0])].field_256 = address(ext_call.return_data[0])
        pairs[address(ext_call.return_data[0])].field_512 = address(ext_call.return_data[0])
        mem[96] = address(ext_call.return_data[0])
        mem[128] = address(ext_call.return_data[0])
        emit 0x7860c964: address(ext_call.return_data[0]), address(ext_call.return_data[0]), address(cd[4]), address(ext_call.return_data[0])
        idx = idx + 1
        continue 
}

function sub_53ec54ae(?) payable {
    require calldata.size - 4 >= 96
    require cd[36] <= 4294967296
    require cd[36] + 36 <= calldata.size
    require ('cd', 36).length <= 4294967296 and cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] <= 4294967296
    require cd[68] + 36 <= calldata.size
    require ('cd', 68).length <= 4294967296 and cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    if not sub_26638a0a[address(cd[4])].field_768:
        revert with 0, 'Invalid type'
    if sub_26638a0a[address(cd[4])].field_768 >= 3:
        revert with 0, 'Invalid type'
    if ('cd', 36).length != ('cd', 68).length:
        revert with 0, 'array length not match'
    idx = 0
    while idx < ('cd', 36).length:
        require idx < ('cd', 68).length
        mem[132] = address(cd[((32 * idx) + cd[68] + 36)])
        require ext_code.size(address(cd[4]))
        staticcall address(cd[4]).getPair(address arg1, address arg2) with:
                gas gas_remaining wei
               args address(cd[((32 * idx) + cd[36] + 36)]), address(cd[((32 * idx) + cd[68] + 36)])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not address(ext_call.return_data[0]):
            revert with 0, 32, 35, 0x73496e76616c6964207061697220616464726573732f50616972206e6f7420666f756e, mem[199 len 29]
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).token0() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).token1() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if address(ext_call.return_data[0]) >= address(ext_call.return_data[0]):
            revert with 0, 'Invalid tokens order'
        mem[0] = address(ext_call.return_data[0])
        mem[32] = 1
        pairs[address(ext_call.return_data[0])].field_0 = address(cd[4])
        pairs[address(ext_call.return_data[0])].field_256 = address(ext_call.return_data[0])
        pairs[address(ext_call.return_data[0])].field_512 = address(ext_call.return_data[0])
        mem[96] = address(ext_call.return_data[0])
        mem[128] = address(ext_call.return_data[0])
        emit 0x7860c964: address(ext_call.return_data[0]), address(ext_call.return_data[0]), address(cd[4]), address(ext_call.return_data[0])
        idx = idx + 1
        continue 
}

function sub_14406f66(?) payable {
    require calldata.size - 4 >= 128
    require cd[36] <= 4294967296
    require cd[36] + 36 <= calldata.size
    require ('cd', 36).length <= 4294967296 and cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] <= 4294967296
    require cd[68] + 36 <= calldata.size
    require ('cd', 68).length <= 4294967296 and cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    require cd[100] <= 4294967296
    require cd[100] + 36 <= calldata.size
    require ('cd', 100).length <= 4294967296 and cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    if sub_26638a0a[address(cd[4])].field_768 != 3:
        revert with 0, 'Invalid type'
    if ('cd', 36).length != ('cd', 68).length:
        revert with 0, 'array length not match'
    idx = 0
    while idx < ('cd', 36).length:
        require idx < ('cd', 68).length
        require idx < ('cd', 100).length
        mem[132] = address(cd[((32 * idx) + cd[68] + 36)])
        mem[164] = cd[((32 * idx) + cd[100] + 36)]
        require ext_code.size(address(cd[4]))
        staticcall address(cd[4]).getPair(address arg1, address arg2, uint256 arg3) with:
                gas gas_remaining wei
               args address(cd[((32 * idx) + cd[36] + 36)]), address(cd[((32 * idx) + cd[68] + 36)]), cd[((32 * idx) + cd[100] + 36)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not address(ext_call.return_data[0]):
            revert with 0, 32, 35, 0x73496e76616c6964207061697220616464726573732f50616972206e6f7420666f756e, mem[199 len 29]
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).token0() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).token1() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if address(ext_call.return_data[0]) >= address(ext_call.return_data[0]):
            revert with 0, 'Invalid tokens order'
        mem[0] = address(ext_call.return_data[0])
        mem[32] = 1
        pairs[address(ext_call.return_data[0])].field_0 = address(cd[4])
        pairs[address(ext_call.return_data[0])].field_256 = address(ext_call.return_data[0])
        pairs[address(ext_call.return_data[0])].field_512 = address(ext_call.return_data[0])
        mem[96] = address(ext_call.return_data[0])
        mem[128] = address(ext_call.return_data[0])
        emit 0x7860c964: address(ext_call.return_data[0]), address(ext_call.return_data[0]), address(cd[4]), address(ext_call.return_data[0])
        idx = idx + 1
        continue 
}

function sub_0d36c409(?) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = 0
    if arg2.length != arg1.length:
        revert with 0, 'array length not match'
    idx = 0
    while idx < arg2.length:
        require idx < arg1.length
        if 3 == sub_26638a0a[mem[(32 * idx) + 140 len 20]].field_768:
            revert with 0, 'Protocol not regconized'
        require idx < arg1.length
        _37 = mem[(32 * idx) + 128]
        require idx < arg2.length
        _39 = mem[(32 * idx) + (32 * arg1.length) + 160]
        if not mem[(32 * idx) + (32 * arg1.length) + 172 len 20]:
            revert with 0, 
                        32,
                        35,
                        0x73496e76616c6964207061697220616464726573732f50616972206e6f7420666f756e,
                        mem[(32 * arg1.length) + (32 * arg2.length) + 263 len 29]
        require ext_code.size(mem[(32 * idx) + (32 * arg1.length) + 172 len 20])
        call mem[(32 * idx) + (32 * arg1.length) + 172 len 20].token0() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(mem[(32 * idx) + (32 * arg1.length) + 172 len 20])
        call mem[(32 * idx) + (32 * arg1.length) + 172 len 20].token1() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if address(ext_call.return_data[0]) >= address(ext_call.return_data[0]):
            revert with 0, 'Invalid tokens order'
        mem[0] = mem[(32 * idx) + (32 * arg1.length) + 172 len 20]
        mem[32] = 1
        pairs[address(mem[(32 * idx) + (32 * arg1.length) + 160])].field_0 = mem[(32 * idx) + 140 len 20]
        pairs[address(mem[(32 * idx) + (32 * arg1.length) + 160])].field_256 = address(ext_call.return_data[0])
        pairs[address(mem[(32 * idx) + (32 * arg1.length) + 160])].field_512 = address(ext_call.return_data[0])
        mem[(32 * arg1.length) + (32 * arg2.length) + 160] = address(ext_call.return_data[0])
        mem[(32 * arg1.length) + (32 * arg2.length) + 192] = address(ext_call.return_data[0])
        emit 0x7860c964: address(ext_call.return_data[0]), address(ext_call.return_data[0]), address(_37), address(_39)
        idx = idx + 1
        continue 
}

function sub_2dc014b3(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 160
    require cd[4] <= 4294967296
    require cd[4] + 36 <= calldata.size
    require ('cd', 4).length <= 4294967296 and cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= 4294967296
    require cd[36] + 36 <= calldata.size
    require ('cd', 36).length <= 4294967296 and cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] <= 4294967296
    require cd[68] + 36 <= calldata.size
    require ('cd', 68).length <= 4294967296 and cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    require cd[100] <= 4294967296
    require cd[100] + 36 <= calldata.size
    require ('cd', 100).length <= 4294967296 and cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    require cd[132] <= 4294967296
    require cd[132] + 36 <= calldata.size
    require ('cd', 132).length <= 4294967296 and cd[132] + (32 * ('cd', 132).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if sub_07c28c26.length:
        revert with 0, 'Already init'
    if ('cd', 4).length != ('cd', 36).length:
        revert with 0, 'length not match'
    if ('cd', 68).length != ('cd', 36).length:
        revert with 0, 'length not match'
    if ('cd', 132).length != ('cd', 68).length:
        revert with 0, 'length not match'
    idx = 0
    while idx < ('cd', 4).length:
        require idx < ('cd', 36).length
        require idx < ('cd', 68).length
        require idx < ('cd', 100).length
        require idx < ('cd', 132).length
        if not address(cd[((32 * idx) + cd[36] + 36)]):
            revert with 0, 'Invalid protocol address'
        if cd[((32 * idx) + cd[68] + 36)] > cd[((32 * idx) + cd[100] + 36)]:
            revert with 0, 'Fee too large'
        if cd[((32 * idx) + cd[100] + 36)] <= 0:
            revert with 0, 'Protocol not regconized'
        _29 = mem[64]
        mem[64] = mem[64] + 128
        mem[_29] = cd[((32 * idx) + cd[4] + 36)]
        mem[_29 + 32] = cd[((32 * idx) + cd[68] + 36)]
        mem[_29 + 64] = cd[((32 * idx) + cd[100] + 36)]
        mem[_29 + 96] = cd[((32 * idx) + cd[132] + 36)]
        mem[32] = 3
        sub_26638a0a[address(cd[((32 * idx) + cd[36] + 36)])].field_0 = cd[((32 * idx) + cd[4] + 36)]
        sub_26638a0a[address(cd[((32 * idx) + cd[36] + 36)])].field_256 = cd[((32 * idx) + cd[68] + 36)]
        sub_26638a0a[address(cd[((32 * idx) + cd[36] + 36)])].field_512 = cd[((32 * idx) + cd[100] + 36)]
        sub_26638a0a[address(cd[((32 * idx) + cd[36] + 36)])].field_768 = cd[((32 * idx) + cd[132] + 36)]
        sub_07c28c26.length++
        mem[0] = 4
        sub_07c28c26[sub_07c28c26.length].field_0 = address(cd[((32 * idx) + cd[36] + 36)])
        mem[mem[64]] = cd[((32 * idx) + cd[4] + 36)]
        mem[mem[64] + 32] = cd[((32 * idx) + cd[68] + 36)]
        mem[mem[64] + 64] = cd[((32 * idx) + cd[100] + 36)]
        mem[mem[64] + 96] = cd[((32 * idx) + cd[132] + 36)]
        emit 0x4647302d: cd[((32 * idx) + cd[4] + 36)], cd[((32 * idx) + cd[68] + 36)], cd[((32 * idx) + cd[100] + 36)], cd[((32 * idx) + cd[132] + 36)], address(cd[((32 * idx) + cd[36] + 36)])
        idx = idx + 1
        continue 
}

function sub_8af7c649(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= 4294967296
    require cd[4] + 36 <= calldata.size
    require ('cd', 4).length <= 4294967296 and cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require ext_code.size(governanceAddress)
    staticcall governanceAddress.isVotingContract(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Not from voting'
    if ('cd', 4).length <= 1:
        revert with 0, 'Invalid length'
    require 0 < ('cd', 4).length
    if ('cd', 4).length == 6:
        if ('cd', 4)[0] != 'registerProtocol':
            revert with 0, 'Invalid parameters'
        require 1 < ('cd', 4).length
        require 2 < ('cd', 4).length
        require 3 < ('cd', 4).length
        require 4 < ('cd', 4).length
        require 5 < ('cd', 4).length
        if not Mask(64, 96, ('cd', 4)[2]) >> 96:
            revert with 0, 'Invalid protocol address'
        if ('cd', 4)[3] > ('cd', 4)[4]:
            revert with 0, 'Fee too large'
        if ('cd', 4)[4] <= 0:
            revert with 0, 'Protocol not regconized'
        sub_26638a0a[Mask(64, 96, ('cd', 4)[2]) << 96].field_0 = ('cd', 4)[1]
        sub_26638a0a[Mask(64, 96, ('cd', 4)[2]) << 96].field_256 = ('cd', 4)[3]
        sub_26638a0a[Mask(64, 96, ('cd', 4)[2]) << 96].field_512 = ('cd', 4)[4]
        sub_26638a0a[Mask(64, 96, ('cd', 4)[2]) << 96].field_768 = ('cd', 4)[5]
        sub_07c28c26.length++
        sub_07c28c26[sub_07c28c26.length].field_0 = Mask(64, 96, ('cd', 4)[2]) >> 96
        sub_07c28c26[sub_07c28c26.length].field_64 = 0
        emit 0x4647302d: ('cd', 4)[1], ('cd', 4)[3], ('cd', 4)[4], ('cd', 4)[5], Mask(64, 96, ('cd', 4)[2]) >> 96
    else:
        if ('cd', 4).length != 7:
            revert with 0, 'Invalid parameters'
        if ('cd', 4)[0] != 'registerPair':
            revert with 0, 'Invalid parameters'
        require 1 < ('cd', 4).length
        require 2 < ('cd', 4).length
        require 3 < ('cd', 4).length
        require 4 < ('cd', 4).length
        require 5 < ('cd', 4).length
        require 6 < ('cd', 4).length
        if not Mask(64, 96, ('cd', 4)[1]) >> 96:
            revert with 0, 'Invalid token address'
        if Mask(64, 96, ('cd', 4)[1]) >> 96 >= Mask(64, 96, ('cd', 4)[2]) >> 96:
            revert with 0, 'Invalid token order'
        if not Mask(64, 96, ('cd', 4)[3]) >> 96:
            revert with 0, 'Invalid pair address'
        if ('cd', 4)[4] > ('cd', 4)[5]:
            revert with 0, 'Fee too large'
        if ('cd', 4)[5] <= 0:
            revert with 0, 'Protocol not regconized'
        pairs[Mask(64, 96, ('cd', 4)[3]) << 96].field_0 = 0
        pairs[Mask(64, 96, ('cd', 4)[3]) << 96].field_256 = Mask(64, 96, ('cd', 4)[1]) >> 96
        pairs[Mask(64, 96, ('cd', 4)[3]) << 96].field_320 = 0
        pairs[Mask(64, 96, ('cd', 4)[3]) << 96].field_512 = Mask(64, 96, ('cd', 4)[2]) >> 96
        pairs[Mask(64, 96, ('cd', 4)[3]) << 96].field_576 = 0
        sub_07b1d728[Mask(64, 96, ('cd', 4)[3]) << 96].field_0 = ('cd', 4)[4]
        sub_07b1d728[Mask(64, 96, ('cd', 4)[3]) << 96].field_256 = ('cd', 4)[5]
        sub_07b1d728[Mask(64, 96, ('cd', 4)[3]) << 96].field_512 = ('cd', 4)[6]
        emit 0x7860c964: Mask(64, 96, ('cd', 4)[1]) << 96, Mask(64, 96, ('cd', 4)[2]) >> 96, 0, Mask(64, 96, ('cd', 4)[3]) >> 96
        emit 0x468d5e83: ('cd', 4)[4], ('cd', 4)[5], ('cd', 4)[6], Mask(64, 96, ('cd', 4)[3]) >> 96
}



}
