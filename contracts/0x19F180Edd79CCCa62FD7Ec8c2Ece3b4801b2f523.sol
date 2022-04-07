contract main {




// =====================  Runtime code  =====================


#
#  - pangolinCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#
address adminAddress;
address swapRouterAddress;
address swapFactoryAddress;
address sub_cb351188Address;
address sub_4bbe7681Address;
uint256 count;
mapping of uint256 sub_697659f2;
array of address sub_22f03136;
mapping of uint256 workers;
array of address sub_c2af71f6;
mapping of uint256 sub_eeb98d9c;
array of address sub_7e9c7576;
mapping of uint256 sub_ac055fe7;
array of address sub_ad497447;

function count() payable {
    return count
}

function sub_22f03136(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_22f03136.length
    return sub_22f03136[arg1]
}

function workers(address arg1) payable {
    require calldata.size - 4 >= 32
    return workers[arg1]
}

function sub_4bbe7681(?) payable {
    return sub_4bbe7681Address
}

function sub_697659f2(?) payable {
    require calldata.size - 4 >= 32
    return sub_697659f2[arg1]
}

function swapFactory() payable {
    return swapFactoryAddress
}

function sub_7e9c7576(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_7e9c7576.length
    return sub_7e9c7576[arg1]
}

function getCount() payable {
    return count
}

function sub_ac055fe7(?) payable {
    require calldata.size - 4 >= 32
    return sub_ac055fe7[arg1]
}

function sub_ad497447(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_ad497447.length
    return sub_ad497447[arg1]
}

function sub_c2af71f6(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_c2af71f6.length
    return sub_c2af71f6[arg1]
}

function swapRouter() payable {
    return swapRouterAddress
}

function sub_cb351188(?) payable {
    return sub_cb351188Address
}

function sub_eeb98d9c(?) payable {
    require calldata.size - 4 >= 32
    return sub_eeb98d9c[arg1]
}

function admin() payable {
    return adminAddress
}

function sub_afafbf6f(?) payable {
    require calldata.size - 4 >= 32
    if adminAddress != msg.sender:
        revert with 0, '0'
    selfdestruct(arg1)
}

function _fallback() payable {
    revert
}

function sub_67f1fc16(?) payable {
    require calldata.size - 4 >= 64
    if workers[address(msg.sender)] != 1:
        revert with 0, '2'
    swapRouterAddress = arg1
    swapFactoryAddress = arg2
}

function sub_ac9999ed(?) payable {
    require calldata.size - 4 >= 64
    if workers[address(msg.sender)] != 1:
        revert with 0, '2'
    sub_cb351188Address = arg1
    sub_4bbe7681Address = arg2
}

function sub_c04f2872(?) payable {
    require calldata.size - 4 >= 64
    if adminAddress != msg.sender:
        revert with 0, '0'
    if arg2 == 1:
        sub_7e9c7576.length++
        sub_7e9c7576[sub_7e9c7576.length] = arg1
    sub_ac055fe7[address(arg1)] = arg2
}

function sub_e7c03d07(?) payable {
    require calldata.size - 4 >= 64
    if adminAddress != msg.sender:
        revert with 0, '0'
    if arg2 == 1:
        sub_c2af71f6.length++
        sub_c2af71f6[sub_c2af71f6.length] = arg1
    sub_eeb98d9c[address(arg1)] = arg2
}

function setWorker(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if adminAddress != msg.sender:
        revert with 0, '0'
    if arg2 == 1:
        sub_22f03136.length++
        sub_22f03136[sub_22f03136.length] = arg1
    workers[address(arg1)] = arg2
}

function setTokens(address[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    if workers[address(msg.sender)] != 1:
        revert with 0, '2'
    sub_ad497447.length = arg1.length
    if not arg1.length:
        idx = 0
        while sub_ad497447.length > idx:
            sub_ad497447[idx] = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * arg1.length) + 128 > idx:
            sub_ad497447[s] = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg1.length) + 31) >> 5
        while sub_ad497447.length > idx:
            sub_ad497447[idx] = 0
            idx = idx + 1
            continue 
}

function sub_f09fe512(?) payable {
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
    if workers[address(msg.sender)] != 1:
        revert with 0, '2'
    if arg1.length != arg2.length:
        revert with 0, 'length mismatch'
    idx = 0
    while idx < arg1.length:
        require idx < arg2.length
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 6
        sub_697659f2[mem[(32 * idx) + 140 len 20]] = mem[(32 * idx) + (32 * arg1.length) + 160]
        idx = idx + 1
        continue 
}

function sub_260c5dfd(?) payable {
    require calldata.size - 4 >= 64
    if workers[address(msg.sender)] != 1:
        revert with 0, '2'
    if arg1 != swapRouterAddress:
        if arg1 != sub_cb351188Address:
            revert with 0, 'not allowed'
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if ext_code.size(arg2) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = approve(address rg1, uint256 rg2), address(arg1) << 64, 0, 0
    call arg2 with:
         gas gas_remaining wei
        args 0, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with approve(address rg1, uint256 rg2), address(arg1) << 64, 0, 0
        if not approve(address rg1, uint256 rg2), address(arg1) << 64:
            revert with 0, 32, 42, 0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
    else:
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
}

function sub_54be3288(?) payable {
    require calldata.size - 4 >= 64
    if adminAddress != msg.sender:
        revert with 0, '0'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if ext_code.size(arg1) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), address(arg2) << 64, 0, ext_call.return_data[0 len 28]
    call arg1 with:
         gas gas_remaining wei
        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), address(arg2) << 64, 0, ext_call.return_data[0]
        if not unknown_0xa9059cbb(?????), address(arg2) << 64:
            revert with 0, 32, 42, 0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
    else:
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
}

function sub_07d63ff5(?) payable {
    require calldata.size - 4 >= 96
    if adminAddress != msg.sender:
        revert with 0, '0'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg3:
        revert with 0, 'no enough'
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if ext_code.size(arg1) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), address(arg2) << 64, 0, Mask(224, 32, arg3) >> 32
    call arg1 with:
         gas gas_remaining wei
        args Mask(224, 32, arg3) << 224, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), address(arg2) << 64, 0, arg3
        if not unknown_0xa9059cbb(?????), address(arg2) << 64:
            revert with 0, 32, 42, 0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
    else:
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
}

function sub_13794211(?) payable {
    require calldata.size - 4 >= 96
    if sub_eeb98d9c[address(msg.sender)] != 1:
        revert with 0, '4'
    if sub_ac055fe7[address(arg2)] != 1:
        revert with 0, 'not allowed'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg3:
        revert with 0, 'no enough'
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if ext_code.size(arg1) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), address(arg2) << 64, 0, Mask(224, 32, arg3) >> 32
    mem[324 len 0] = 0
    call arg1 with:
         gas gas_remaining wei
        args Mask(224, 32, arg3) << 224, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), address(arg2) << 64, 0, arg3
        if not unknown_0xa9059cbb(?????), address(arg2) << 64:
            revert with 0, 32, 42, 0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
    else:
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
}

function sub_a1efa4ec(?) payable {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    mem[128 len arg3.length] = arg3[all]
    mem[arg3.length + 128] = 0
    if adminAddress != msg.sender:
        revert with 0, '0'
    mem[ceil32(arg3.length) + 128 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
    mem[ceil32(arg3.length) + floor32(arg3.length) + -(arg3.length % 32) + 160 len arg3.length % 32] = mem[-(arg3.length % 32) + floor32(arg3.length) + 160 len arg3.length % 32]
    call arg1 with:
       funct Mask(32, -(8 * ceil32(arg3.length) + -arg3.length + 4) + 256, 0) >> -(8 * ceil32(arg3.length) + -arg3.length + 4) + 256
       value arg2 wei
         gas gas_remaining wei
        args mem[ceil32(arg3.length) + 132 len arg3.length - 4]
    if not ext_call.success:
        revert with 0, 'target.call failed!'
    if return_data.size:
        return Array(len=return_data.size, data=ext_call.return_data[0 len return_data.size])
    mem[ceil32(arg3.length) + 128] = 32
    mem[ceil32(arg3.length) + 160] = arg3.length
    mem[ceil32(arg3.length) + 192 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
    if not arg3.length % 32:
        return Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), 
               mem[arg3.length + 160 len ceil32(arg3.length) + -arg3.length + 32],
               Mask(8 * arg3.length, -(8 * arg3.length) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * arg3.length) - 256
    mem[floor32(arg3.length) + ceil32(arg3.length) + 192] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 224 len arg3.length % 32]
    return Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), 
           mem[arg3.length + 160 len ceil32(arg3.length) + -arg3.length + 32],
           Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256,
           mem[(2 * ceil32(arg3.length)) + 192 len floor32(arg3.length) + -ceil32(arg3.length) + 32]
}

function sub_473f929a(?) payable {
    require calldata.size - 4 >= 64
    if workers[address(msg.sender)] != 1:
        revert with 0, '2'
    if arg1 == swapRouterAddress:
        require ext_code.size(arg2)
        staticcall arg2.0xdd62ed3e with:
                gas gas_remaining wei
               args address(this.address), arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        54,
                        0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                        mem[218 len 10]
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
        if ext_code.size(arg2) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[260 len 64] = approve(address rg1, uint256 rg2), address(arg1) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
        mem[324 len 0] = 0
        call arg2 with:
             gas gas_remaining wei
            args Mask(480, -256, approve(address rg1, uint256 rg2), address(arg1) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[324 len 4]
    else:
        if arg1 != sub_cb351188Address:
            revert with 0, 'not allowed'
        require ext_code.size(arg2)
        staticcall arg2.0xdd62ed3e with:
                gas gas_remaining wei
               args address(this.address), arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        54,
                        0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                        mem[218 len 10]
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
        if ext_code.size(arg2) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[260 len 64] = approve(address rg1, uint256 rg2), address(arg1) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
        call arg2 with:
             gas gas_remaining wei
            args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with approve(address rg1, uint256 rg2), address(arg1) << 64, 0, -1
        if not approve(address rg1, uint256 rg2), address(arg1) << 64:
            revert with 0, 32, 42, 0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
    else:
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
}

function sub_e699558e(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    mem[0] = msg.sender
    mem[32] = 8
    if workers[address(msg.sender)] != 1:
        revert with 0, '2'
    if arg1 == swapRouterAddress:
        idx = 0
        while idx < sub_ad497447.length:
            mem[0] = 13
            _96 = mem[64]
            mem[mem[64] + 36] = arg1
            mem[mem[64] + 68] = 0
            _97 = mem[64]
            mem[mem[64]] = 68
            mem[64] = mem[64] + 100
            mem[_97 + 32] = mem[_97 + 36 len 28] or 0x95ea7b300000000000000000000000000000000000000000000000000000000
            mem[64] = _96 + 164
            mem[_96 + 100] = 32
            mem[_96 + 132] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_96 + 270 len 26]
            if ext_code.size(sub_ad497447[idx]) <= 0:
                revert with 0, 'Address: call to non-contract'
            _109 = mem[_97]
            t = _97 + 32
            u = _96 + 164
            s = mem[_97]
            while s >= 32:
                mem[u] = mem[t]
                t = t + 32
                u = u + 32
                s = s - 32
                continue 
            mem[_96 + floor32(mem[_97]) + 164] = mem[_97 + -(mem[_97] % 32) + floor32(mem[_97]) + 64 len mem[_97] % 32] or Mask(8 * -(mem[_97] % 32) + 32, -(8 * -(mem[_97] % 32) + 32) + 256, mem[_96 + floor32(mem[_97]) + 164])
            call sub_ad497447[idx].mem[_96 + 164 len 4] with:
                 gas gas_remaining wei
                args mem[_96 + 168 len _109 - 4]
            if not return_data.size:
                if ext_call.success:
                    if mem[96] > 0:
                        require mem[96] >= 32
                        if not mem[128]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[_96 + 274 len 22]
                    idx = idx + 1
                    continue 
                if mem[96] > 0:
                    revert with memory
                      from 128
                       len mem[96]
                mem[_96 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_96 + 168] = 32
                mem[_96 + 200] = 32
                idx = 0
                while idx < 32:
                    mem[_96 + idx + 232] = mem[_96 + idx + 132]
                    idx = idx + 32
                    continue 
                revert with memory
                  from mem[64]
                   len _96 + -mem[64] + 264
            mem[64] = _96 + ceil32(return_data.size) + 165
            mem[_96 + 164] = return_data.size
            mem[_96 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if ext_call.success:
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[_96 + 196]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[_96 + ceil32(return_data.size) + 275 len 22]
                idx = idx + 1
                continue 
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_96 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_96 + ceil32(return_data.size) + 169] = 32
            idx = 0
            while idx < 32:
                mem[_96 + ceil32(return_data.size) + idx + 233] = mem[_96 + idx + 132]
                idx = idx + 32
                continue 
            revert with 0, 32, 32, mem[_96 + ceil32(return_data.size) + 233]
    else:
        if arg1 != sub_cb351188Address:
            revert with 0, 'not allowed'
        idx = 0
        while idx < sub_ad497447.length:
            mem[0] = 13
            _99 = mem[64]
            mem[mem[64] + 36] = arg1
            mem[mem[64] + 68] = 0
            _100 = mem[64]
            mem[mem[64]] = 68
            mem[64] = mem[64] + 100
            mem[_100 + 32] = mem[_100 + 36 len 28] or 0x95ea7b300000000000000000000000000000000000000000000000000000000
            mem[64] = _99 + 164
            mem[_99 + 100] = 32
            mem[_99 + 132] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_99 + 270 len 26]
            if ext_code.size(sub_ad497447[idx]) <= 0:
                revert with 0, 'Address: call to non-contract'
            _113 = mem[_100]
            t = _100 + 32
            u = _99 + 164
            s = mem[_100]
            while s >= 32:
                mem[u] = mem[t]
                t = t + 32
                u = u + 32
                s = s - 32
                continue 
            mem[_99 + floor32(mem[_100]) + 164] = mem[_100 + -(mem[_100] % 32) + floor32(mem[_100]) + 64 len mem[_100] % 32] or Mask(8 * -(mem[_100] % 32) + 32, -(8 * -(mem[_100] % 32) + 32) + 256, mem[_99 + floor32(mem[_100]) + 164])
            call sub_ad497447[idx].mem[_99 + 164 len 4] with:
                 gas gas_remaining wei
                args mem[_99 + 168 len _113 - 4]
            if not return_data.size:
                if ext_call.success:
                    if mem[96] > 0:
                        require mem[96] >= 32
                        if not mem[128]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[_99 + 274 len 22]
                    idx = idx + 1
                    continue 
                if mem[96] > 0:
                    revert with memory
                      from 128
                       len mem[96]
                mem[_99 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_99 + 168] = 32
                mem[_99 + 200] = 32
                idx = 0
                while idx < 32:
                    mem[_99 + idx + 232] = mem[_99 + idx + 132]
                    idx = idx + 32
                    continue 
                revert with memory
                  from mem[64]
                   len _99 + -mem[64] + 264
            mem[64] = _99 + ceil32(return_data.size) + 165
            mem[_99 + 164] = return_data.size
            mem[_99 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if ext_call.success:
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[_99 + 196]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[_99 + ceil32(return_data.size) + 275 len 22]
                idx = idx + 1
                continue 
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_99 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_99 + ceil32(return_data.size) + 169] = 32
            idx = 0
            while idx < 32:
                mem[_99 + ceil32(return_data.size) + idx + 233] = mem[_99 + idx + 132]
                idx = idx + 32
                continue 
            revert with 0, 32, 32, mem[_99 + ceil32(return_data.size) + 233]
}

function sub_bdb6c052(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    mem[0] = msg.sender
    mem[32] = 8
    if workers[address(msg.sender)] != 1:
        revert with 0, '2'
    if arg1 == swapRouterAddress:
        idx = 0
        while idx < sub_ad497447.length:
            mem[0] = 13
            mem[mem[64] + 4] = this.address
            require ext_code.size(sub_ad497447[idx])
            staticcall sub_ad497447[idx].0xdd62ed3e with:
                    gas gas_remaining wei
                   args address(this.address), arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0, 
                            32,
                            54,
                            0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                            mem[mem[64] + 122 len 10]
            _116 = mem[64]
            mem[mem[64] + 36] = arg1
            mem[mem[64] + 68] = -1
            _117 = mem[64]
            mem[mem[64]] = 68
            mem[64] = mem[64] + 100
            mem[_117 + 32] = mem[_117 + 36 len 28] or 0x95ea7b300000000000000000000000000000000000000000000000000000000
            mem[64] = _116 + 164
            mem[_116 + 100] = 32
            mem[_116 + 132] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_116 + 270 len 26]
            if ext_code.size(sub_ad497447[idx]) <= 0:
                revert with 0, 'Address: call to non-contract'
            _133 = mem[_117]
            t = _117 + 32
            u = _116 + 164
            s = mem[_117]
            while s >= 32:
                mem[u] = mem[t]
                t = t + 32
                u = u + 32
                s = s - 32
                continue 
            mem[_116 + floor32(mem[_117]) + 164] = mem[_117 + -(mem[_117] % 32) + floor32(mem[_117]) + 64 len mem[_117] % 32] or Mask(8 * -(mem[_117] % 32) + 32, -(8 * -(mem[_117] % 32) + 32) + 256, mem[_116 + floor32(mem[_117]) + 164])
            call sub_ad497447[idx].mem[_116 + 164 len 4] with:
                 gas gas_remaining wei
                args mem[_116 + 168 len _133 - 4]
            if not return_data.size:
                if ext_call.success:
                    if mem[96] > 0:
                        require mem[96] >= 32
                        if not mem[128]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[_116 + 274 len 22]
                    idx = idx + 1
                    continue 
                if mem[96] > 0:
                    revert with memory
                      from 128
                       len mem[96]
                mem[_116 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_116 + 168] = 32
                mem[_116 + 200] = 32
                idx = 0
                while idx < 32:
                    mem[_116 + idx + 232] = mem[_116 + idx + 132]
                    idx = idx + 32
                    continue 
                revert with memory
                  from mem[64]
                   len _116 + -mem[64] + 264
            mem[64] = _116 + ceil32(return_data.size) + 165
            mem[_116 + 164] = return_data.size
            mem[_116 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if ext_call.success:
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[_116 + 196]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[_116 + ceil32(return_data.size) + 275 len 22]
                idx = idx + 1
                continue 
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_116 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_116 + ceil32(return_data.size) + 169] = 32
            idx = 0
            while idx < 32:
                mem[_116 + ceil32(return_data.size) + idx + 233] = mem[_116 + idx + 132]
                idx = idx + 32
                continue 
            revert with 0, 32, 32, mem[_116 + ceil32(return_data.size) + 233]
    else:
        if arg1 != sub_cb351188Address:
            revert with 0, 'not allowed'
        idx = 0
        while idx < sub_ad497447.length:
            mem[0] = 13
            mem[mem[64] + 4] = this.address
            require ext_code.size(sub_ad497447[idx])
            staticcall sub_ad497447[idx].0xdd62ed3e with:
                    gas gas_remaining wei
                   args address(this.address), arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0, 
                            32,
                            54,
                            0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                            mem[mem[64] + 122 len 10]
            _121 = mem[64]
            mem[mem[64] + 36] = arg1
            mem[mem[64] + 68] = -1
            _122 = mem[64]
            mem[mem[64]] = 68
            mem[64] = mem[64] + 100
            mem[_122 + 32] = mem[_122 + 36 len 28] or 0x95ea7b300000000000000000000000000000000000000000000000000000000
            mem[64] = _121 + 164
            mem[_121 + 100] = 32
            mem[_121 + 132] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_121 + 270 len 26]
            if ext_code.size(sub_ad497447[idx]) <= 0:
                revert with 0, 'Address: call to non-contract'
            _137 = mem[_122]
            t = _122 + 32
            u = mem[64]
            s = mem[_122]
            while s >= 32:
                mem[u] = mem[t]
                t = t + 32
                u = u + 32
                s = s - 32
                continue 
            mem[mem[64] + floor32(mem[_122])] = mem[_122 + floor32(mem[_122]) + -(mem[_122] % 32) + 64 len mem[_122] % 32] or Mask(8 * -(mem[_122] % 32) + 32, -(8 * -(mem[_122] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_122])])
            call sub_ad497447[idx].mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _137 + _121 + -mem[64] + 160]
            if not return_data.size:
                if ext_call.success:
                    if mem[96] > 0:
                        require mem[96] >= 32
                        if not mem[128]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[mem[64] + 110 len 22]
                    idx = idx + 1
                    continue 
                if mem[96] > 0:
                    revert with memory
                      from 128
                       len mem[96]
                _228 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = mem[_121 + 100]
                _230 = mem[_121 + 100]
                idx = 0
                while idx < _230:
                    mem[_228 + idx + 68] = mem[_121 + idx + 132]
                    idx = idx + 32
                    continue 
                if not _230 % 32:
                    revert with memory
                      from mem[64]
                       len _230 + _228 + -mem[64] + 68
                mem[floor32(_230) + _228 + 68] = mem[floor32(_230) + _228 + -(_230 % 32) + 100 len _230 % 32]
                revert with memory
                  from mem[64]
                   len floor32(_230) + _228 + -mem[64] + 100
            _215 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_215] = return_data.size
            mem[_215 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if ext_call.success:
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[_215 + 32]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[mem[64] + 110 len 22]
                idx = idx + 1
                continue 
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            _232 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = mem[_121 + 100]
            _234 = mem[_121 + 100]
            idx = 0
            while idx < _234:
                mem[_232 + idx + 68] = mem[_121 + idx + 132]
                idx = idx + 32
                continue 
            if not _234 % 32:
                revert with memory
                  from mem[64]
                   len _234 + _232 + -mem[64] + 68
            mem[floor32(_234) + _232 + 68] = mem[floor32(_234) + _232 + -(_234 % 32) + 100 len _234 % 32]
            revert with memory
              from mem[64]
               len floor32(_234) + _232 + -mem[64] + 100
}



}
