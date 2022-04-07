contract main {




// =====================  Runtime code  =====================


#
#  - swapV2Call(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#
address adminAddress;
address swapRouterAddress;
address swapFactoryAddress;
uint256 count;
mapping of uint256 sub_697659f2;
mapping of uint256 sub_12109d52;
mapping of uint256 sub_25bc368e;
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

function sub_12109d52(?) payable {
    require calldata.size - 4 >= 32
    return sub_12109d52[arg1]
}

function sub_22f03136(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_22f03136.length
    return sub_22f03136[arg1]
}

function sub_25bc368e(?) payable {
    require calldata.size - 4 >= 32
    return sub_25bc368e[arg1]
}

function workers(address arg1) payable {
    require calldata.size - 4 >= 32
    return workers[arg1]
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
        mem[32] = 4
        sub_697659f2[mem[(32 * idx) + 140 len 20]] = mem[(32 * idx) + (32 * arg1.length) + 160]
        idx = idx + 1
        continue 
}

function sub_491a5be6(?) payable {
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
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = arg3.length
    mem[(32 * arg1.length) + (32 * arg2.length) + 192 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192] = 0
    if workers[address(msg.sender)] != 1:
        revert with 0, '2'
    if arg1.length != arg3.length:
        revert with 0, 'length mismatch'
    idx = 0
    while idx < arg1.length:
        require idx < arg3.length
        require idx < arg1.length
        sub_12109d52[mem[(32 * idx) + 140 len 20]] = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]
        require idx < arg3.length
        require idx < arg2.length
        mem[0] = mem[(32 * idx) + (32 * arg1.length) + 172 len 20]
        mem[32] = 6
        sub_25bc368e[mem[(32 * idx) + (32 * arg1.length) + 172 len 20]] = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]
        idx = idx + 1
        continue 
}

function sub_260c5dfd(?) payable {
    require calldata.size - 4 >= 64
    if workers[address(msg.sender)] != 1:
        revert with 0, '2'
    if sub_25bc368e[address(arg1)] <= 0:
        revert with 0, 'not allowed R'
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if ext_code.size(arg2) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = approve(address rg1, uint256 rg2), address(arg1) << 64, 0, 0
    mem[324 len 0] = 0
    call arg2 with:
         gas gas_remaining wei
        args Mask(480, -256, approve(address rg1, uint256 rg2), address(arg1) << 64, 0, 0) << 256, mem[324 len 4]
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
    mem[324 len 0] = 0
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
    mem[ceil32(arg3.length) + floor32(arg3.length) + -(arg3.length % 32) + 160 len arg3.length % 32] = mem[floor32(arg3.length) + -(arg3.length % 32) + 160 len arg3.length % 32]
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
    if sub_25bc368e[address(arg1)] <= 0:
        revert with 0, 'not allowed R'
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
    if workers[address(msg.sender)] != 1:
        revert with 0, '2'
    mem[0] = arg1
    mem[32] = 6
    if sub_25bc368e[address(arg1)] <= 0:
        revert with 0, 'not allowed R'
    idx = 0
    while idx < sub_ad497447.length:
        mem[0] = 13
        _52 = mem[64]
        mem[mem[64] + 36] = arg1
        mem[mem[64] + 68] = 0
        _53 = mem[64]
        mem[mem[64]] = 68
        mem[64] = mem[64] + 100
        mem[_53 + 32] = mem[_53 + 36 len 28] or 0x95ea7b300000000000000000000000000000000000000000000000000000000
        mem[64] = _52 + 164
        mem[_52 + 100] = 32
        mem[_52 + 132] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_52 + 270 len 26]
        if ext_code.size(sub_ad497447[idx]) <= 0:
            revert with 0, 'Address: call to non-contract'
        _59 = mem[_53]
        t = _53 + 32
        u = _52 + 164
        s = mem[_53]
        while s >= 32:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s - 32
            continue 
        mem[_52 + floor32(mem[_53]) + 164] = mem[_53 + -(mem[_53] % 32) + floor32(mem[_53]) + 64 len mem[_53] % 32] or Mask(8 * -(mem[_53] % 32) + 32, -(8 * -(mem[_53] % 32) + 32) + 256, mem[_52 + floor32(mem[_53]) + 164])
        call sub_ad497447[idx].mem[_52 + 164 len 4] with:
             gas gas_remaining wei
            args mem[_52 + 168 len _59 - 4]
        if not return_data.size:
            if ext_call.success:
                if mem[96] > 0:
                    require mem[96] >= 32
                    if not mem[128]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[_52 + 274 len 22]
                idx = idx + 1
                continue 
            if mem[96] > 0:
                revert with memory
                  from 128
                   len mem[96]
            mem[_52 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_52 + 168] = 32
            mem[_52 + 200] = 32
            idx = 0
            while idx < 32:
                mem[_52 + idx + 232] = mem[_52 + idx + 132]
                idx = idx + 32
                continue 
            revert with memory
              from mem[64]
               len _52 + -mem[64] + 264
        mem[64] = _52 + ceil32(return_data.size) + 165
        mem[_52 + 164] = return_data.size
        mem[_52 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if ext_call.success:
            if return_data.size > 0:
                require return_data.size >= 32
                if not mem[_52 + 196]:
                    revert with 0, 
                                32,
                                42,
                                0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[_52 + ceil32(return_data.size) + 275 len 22]
            idx = idx + 1
            continue 
        if return_data.size > 0:
            revert with ext_call.return_data[0 len return_data.size]
        mem[_52 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[_52 + ceil32(return_data.size) + 169] = 32
        idx = 0
        while idx < 32:
            mem[_52 + ceil32(return_data.size) + idx + 233] = mem[_52 + idx + 132]
            idx = idx + 32
            continue 
        revert with 0, 32, 32, mem[_52 + ceil32(return_data.size) + 233]
}

function sub_bdb6c052(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    if workers[address(msg.sender)] != 1:
        revert with 0, '2'
    mem[0] = arg1
    mem[32] = 6
    if sub_25bc368e[address(arg1)] <= 0:
        revert with 0, 'not allowed R'
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
        _62 = mem[64]
        mem[mem[64] + 36] = arg1
        mem[mem[64] + 68] = -1
        _63 = mem[64]
        mem[mem[64]] = 68
        mem[64] = mem[64] + 100
        mem[_63 + 32] = mem[_63 + 36 len 28] or 0x95ea7b300000000000000000000000000000000000000000000000000000000
        mem[64] = _62 + 164
        mem[_62 + 100] = 32
        mem[_62 + 132] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_62 + 270 len 26]
        if ext_code.size(sub_ad497447[idx]) <= 0:
            revert with 0, 'Address: call to non-contract'
        _71 = mem[_63]
        t = _63 + 32
        u = _62 + 164
        s = mem[_63]
        while s >= 32:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s - 32
            continue 
        mem[_62 + floor32(mem[_63]) + 164] = mem[_63 + -(mem[_63] % 32) + floor32(mem[_63]) + 64 len mem[_63] % 32] or Mask(8 * -(mem[_63] % 32) + 32, -(8 * -(mem[_63] % 32) + 32) + 256, mem[_62 + floor32(mem[_63]) + 164])
        call sub_ad497447[idx].mem[_62 + 164 len 4] with:
             gas gas_remaining wei
            args mem[_62 + 168 len _71 - 4]
        if not return_data.size:
            if ext_call.success:
                if mem[96] > 0:
                    require mem[96] >= 32
                    if not mem[128]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[_62 + 274 len 22]
                idx = idx + 1
                continue 
            if mem[96] > 0:
                revert with memory
                  from 128
                   len mem[96]
            mem[_62 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_62 + 168] = 32
            mem[_62 + 200] = 32
            idx = 0
            while idx < 32:
                mem[_62 + idx + 232] = mem[_62 + idx + 132]
                idx = idx + 32
                continue 
            revert with memory
              from mem[64]
               len _62 + -mem[64] + 264
        mem[64] = _62 + ceil32(return_data.size) + 165
        mem[_62 + 164] = return_data.size
        mem[_62 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if ext_call.success:
            if return_data.size > 0:
                require return_data.size >= 32
                if not mem[_62 + 196]:
                    revert with 0, 
                                32,
                                42,
                                0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[_62 + ceil32(return_data.size) + 275 len 22]
            idx = idx + 1
            continue 
        if return_data.size > 0:
            revert with ext_call.return_data[0 len return_data.size]
        mem[_62 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[_62 + ceil32(return_data.size) + 169] = 32
        idx = 0
        while idx < 32:
            mem[_62 + ceil32(return_data.size) + idx + 233] = mem[_62 + idx + 132]
            idx = idx + 32
            continue 
        revert with 0, 32, 32, mem[_62 + ceil32(return_data.size) + 233]
}

function joeCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    if workers[address(arg1)] != 1:
        revert with 0, 'worker reject'
    if not arg2:
        mem[256] = 0
        require arg4.length >= 128
        require cd[(arg4 + 132)] <= 4294967296
        require cd[(arg4 + 132)] + 68 <= arg4.length + 36
        require cd[(arg4 + cd[(arg4 + 132)] + 36)] <= 4294967296 and cd[(arg4 + 132)] + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 68 <= arg4.length + 36
        mem[288] = cd[(arg4 + cd[(arg4 + 132)] + 36)]
        mem[320 len 32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]] = call.data[arg4 + cd[(arg4 + 132)] + 68 len 32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]]
        if sub_12109d52[address(cd[(arg4 + 36)])] <= 0:
            revert with 0, 'not allowed F'
        if sub_25bc368e[address(cd[(arg4 + 68)])] <= 0:
            revert with 0, 'not allowed R1'
        if sub_25bc368e[address(cd[(arg4 + 100)])] <= 0:
            revert with 0, 'not allowed R2'
        require ext_code.size(msg.sender)
        staticcall msg.sender.token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[96] = ext_call.return_data[12 len 20]
        require ext_code.size(msg.sender)
        staticcall msg.sender.token1() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[128] = ext_call.return_data[12 len 20]
        require ext_code.size(address(cd[(arg4 + 36)]))
        staticcall address(cd[(arg4 + 36)]).getPair(address rg1, address rg2) with:
                gas gas_remaining wei
               args address(ext_call.return_data[12 len 20]), address(ext_call.return_data[12 len 20])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[12 len 20] != msg.sender:
            revert with 0, 'wrong LP sender'
        require ext_code.size(msg.sender)
        staticcall msg.sender.getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        mem[192] = ext_call.return_data[50 len 14]
        mem[160] = Mask(112, 0, ext_call.return_data[0])
        mem[0] = address(cd[(arg4 + 68)])
        mem[32] = 6
        if arg2 <= 0:
            mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 324] = arg3
            mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 356] = Mask(112, 0, ext_call.return_data[0])
            mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 388] = ext_call.return_data[50 len 14]
            if sub_25bc368e[address(cd[(arg4 + 68)])] != 2:
                require ext_code.size(address(cd[(arg4 + 68)]))
                staticcall address(cd[(arg4 + 68)]).getAmountIn(uint256 rg1, uint256 rg2, uint256 rg3) with:
                        gas gas_remaining wei
                       args arg3, ext_call.return_data[0] << 144, ext_call.return_data[50 len 14]
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[224] = ext_call.return_data[0]
                require 0 < cd[(arg4 + cd[(arg4 + 132)] + 36)]
                if mem[332 len 20] != address(ext_call.return_data[12 len 20]):
                    revert with 0, 'token incorrect'
                require cd[(arg4 + cd[(arg4 + 132)] + 36)] - 1 < cd[(arg4 + cd[(arg4 + 132)] + 36)]
                if mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)] - 1) + 332 len 20] != mem[108 len 20]:
                    revert with 0, 'token incorrect'
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 324] = arg3
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 356] = ext_call.return_data[0]
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = this.address
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 452] = block.timestamp
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 388] = 160
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 484] = cd[(arg4 + cd[(arg4 + 132)] + 36)]
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 516 len floor32(cd[(arg4 + cd[(arg4 + 132)] + 36)])] = call.data[arg4 + cd[(arg4 + 132)] + 68 len floor32(cd[(arg4 + cd[(arg4 + 132)] + 36)])]
                require ext_code.size(address(cd[(arg4 + 100)]))
                call address(cd[(arg4 + 100)]).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args arg3, ext_call.return_data[0], Array(len=cd[(arg4 + cd[(arg4 + 132)] + 36)], data=call.data[arg4 + cd[(arg4 + 132)] + 68 len floor32(cd[(arg4 + cd[(arg4 + 132)] + 36)])], mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + floor32(cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 516 len (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) - floor32(cd[(arg4 + cd[(arg4 + 132)] + 36)])]), address(this.address), block.timestamp
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 320
                require return_data.size >= 32
                _1180 = mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len 4], Mask(224, 32, arg3) >> 32
                require mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                require mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                require mem[mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320] <= 4294967296 and mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320]) + 32 <= return_data.size
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 320] = mem[mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320]
                _1204 = mem[_1180 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320]
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 352 len floor32(mem[_1180 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320])] = mem[_1180 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 352 len floor32(mem[_1180 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320])]
                mem[64] = (32 * _1204) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 352
                require mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 320] - 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 320]
                mem[256] = mem[(32 * mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 320] - 1) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 352]
                if mem[256] <= ext_call.return_data[0]:
                    revert with 0, 'no enough amount'
                if sub_697659f2[mem[108 len 20]] > 0:
                    if mem[256] < ext_call.return_data[0] + sub_697659f2[mem[108 len 20]]:
                        revert with 0, 'no enough amount'
                mem[(32 * _1204) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 388] = msg.sender
                mem[(32 * _1204) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 420] = ext_call.return_data[0]
                mem[(32 * _1204) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 352] = 68
                mem[(32 * _1204) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 388 len 28] = Mask(224, 32, msg.sender) >> 32
                mem[(32 * _1204) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 384 len 4] = unknown_0xa9059cbb(?????)
                mem[(32 * _1204) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 452] = 32
                mem[(32 * _1204) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 484] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[(32 * _1204) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 622 len 26]
                if ext_code.size(address(ext_call.return_data[12 len 20])) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[(32 * _1204) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 516 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
                mem[(32 * _1204) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 608 len 4] = 0
                call address(ext_call.return_data[12 len 20]) with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _1204) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 580 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[12 len 20] > 0:
                            revert with memory
                              from 128
                               len ext_call.return_data[12 len 20]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[12 len 20] > 0:
                        require ext_call.return_data[12 len 20] >= 32
                        if not ext_call.return_data[12 len 20]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _1204) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 626 len 22]
                else:
                    mem[(32 * _1204) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[(32 * _1204) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 548]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _1204) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + ceil32(return_data.size) + 627 len 22]
            else:
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = address(ext_call.return_data[12 len 20])
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 452] = address(ext_call.return_data[12 len 20])
                require ext_code.size(address(cd[(arg4 + 68)]))
                staticcall address(cd[(arg4 + 68)]).getAmountIn(uint256 rg1, uint256 rg2, uint256 rg3, address rg4, address rg5) with:
                        gas gas_remaining wei
                       args arg3, ext_call.return_data[0] << 144, ext_call.return_data[50 len 14], address(ext_call.return_data[12 len 20]), address(ext_call.return_data[12 len 20])
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[224] = ext_call.return_data[0]
                require 0 < cd[(arg4 + cd[(arg4 + 132)] + 36)]
                if mem[332 len 20] != address(ext_call.return_data[12 len 20]):
                    revert with 0, 'token incorrect'
                require cd[(arg4 + cd[(arg4 + 132)] + 36)] - 1 < cd[(arg4 + cd[(arg4 + 132)] + 36)]
                if mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)] - 1) + 332 len 20] != mem[108 len 20]:
                    revert with 0, 'token incorrect'
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 324] = arg3
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 356] = ext_call.return_data[0]
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = this.address
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 452] = block.timestamp
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 388] = 160
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 484] = cd[(arg4 + cd[(arg4 + 132)] + 36)]
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 516 len floor32(cd[(arg4 + cd[(arg4 + 132)] + 36)])] = call.data[arg4 + cd[(arg4 + 132)] + 68 len floor32(cd[(arg4 + cd[(arg4 + 132)] + 36)])]
                require ext_code.size(address(cd[(arg4 + 100)]))
                call address(cd[(arg4 + 100)]).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args arg3, ext_call.return_data[0], Array(len=cd[(arg4 + cd[(arg4 + 132)] + 36)], data=call.data[arg4 + cd[(arg4 + 132)] + 68 len floor32(cd[(arg4 + cd[(arg4 + 132)] + 36)])], mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + floor32(cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 516 len (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) - floor32(cd[(arg4 + cd[(arg4 + 132)] + 36)])]), address(this.address), block.timestamp
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 320
                require return_data.size >= 32
                _1182 = mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len 4], Mask(224, 32, arg3) >> 32
                require mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                require mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                require mem[mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320] <= 4294967296 and mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320]) + 32 <= return_data.size
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 320] = mem[mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320]
                _1205 = mem[_1182 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320]
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 352 len floor32(mem[_1182 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320])] = mem[_1182 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 352 len floor32(mem[_1182 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320])]
                mem[64] = (32 * _1205) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 352
                require mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 320] - 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 320]
                mem[256] = mem[(32 * mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 320] - 1) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 352]
                if mem[256] <= ext_call.return_data[0]:
                    revert with 0, 'no enough amount'
                if sub_697659f2[mem[108 len 20]] > 0:
                    if mem[256] < ext_call.return_data[0] + sub_697659f2[mem[108 len 20]]:
                        revert with 0, 'no enough amount'
                mem[(32 * _1205) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 388] = msg.sender
                mem[(32 * _1205) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 420] = ext_call.return_data[0]
                mem[(32 * _1205) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 352] = 68
                mem[(32 * _1205) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 388 len 28] = Mask(224, 32, msg.sender) >> 32
                mem[(32 * _1205) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 384 len 4] = unknown_0xa9059cbb(?????)
                mem[(32 * _1205) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 452] = 32
                mem[(32 * _1205) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 484] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[(32 * _1205) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 622 len 26]
                if ext_code.size(address(ext_call.return_data[12 len 20])) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[(32 * _1205) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 516 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
                mem[(32 * _1205) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 608 len 4] = 0
                call address(ext_call.return_data[12 len 20]) with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _1205) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 580 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[12 len 20] > 0:
                            revert with memory
                              from 128
                               len ext_call.return_data[12 len 20]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[12 len 20] > 0:
                        require ext_call.return_data[12 len 20] >= 32
                        if not ext_call.return_data[12 len 20]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _1205) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 626 len 22]
                else:
                    mem[(32 * _1205) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[(32 * _1205) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 548]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _1205) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + ceil32(return_data.size) + 627 len 22]
        else:
            mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 324] = arg2
            mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 356] = ext_call.return_data[50 len 14]
            mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 388] = Mask(112, 0, ext_call.return_data[0])
            if sub_25bc368e[address(cd[(arg4 + 68)])] != 2:
                require ext_code.size(address(cd[(arg4 + 68)]))
                staticcall address(cd[(arg4 + 68)]).getAmountIn(uint256 rg1, uint256 rg2, uint256 rg3) with:
                        gas gas_remaining wei
                       args arg2, ext_call.return_data[50 len 14], ext_call.return_data[0] << 144
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[224] = ext_call.return_data[0]
                require 0 < cd[(arg4 + cd[(arg4 + 132)] + 36)]
                if mem[332 len 20] != address(ext_call.return_data[12 len 20]):
                    revert with 0, 'token incorrect'
                require cd[(arg4 + cd[(arg4 + 132)] + 36)] - 1 < cd[(arg4 + cd[(arg4 + 132)] + 36)]
                if mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)] - 1) + 332 len 20] != mem[140 len 20]:
                    revert with 0, 'token incorrect'
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 324] = arg2
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 356] = ext_call.return_data[0]
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = this.address
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 452] = block.timestamp
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 388] = 160
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 484] = cd[(arg4 + cd[(arg4 + 132)] + 36)]
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 516 len floor32(cd[(arg4 + cd[(arg4 + 132)] + 36)])] = call.data[arg4 + cd[(arg4 + 132)] + 68 len floor32(cd[(arg4 + cd[(arg4 + 132)] + 36)])]
                require ext_code.size(address(cd[(arg4 + 100)]))
                call address(cd[(arg4 + 100)]).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args arg2, ext_call.return_data[0], Array(len=cd[(arg4 + cd[(arg4 + 132)] + 36)], data=call.data[arg4 + cd[(arg4 + 132)] + 68 len floor32(cd[(arg4 + cd[(arg4 + 132)] + 36)])], mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + floor32(cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 516 len (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) - floor32(cd[(arg4 + cd[(arg4 + 132)] + 36)])]), address(this.address), block.timestamp
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 320
                require return_data.size >= 32
                _1184 = mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len 4], Mask(224, 32, arg2) >> 32
                require mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                require mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                require mem[mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320] <= 4294967296 and mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320]) + 32 <= return_data.size
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 320] = mem[mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320]
                _1206 = mem[_1184 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320]
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 352 len floor32(mem[_1184 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320])] = mem[_1184 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 352 len floor32(mem[_1184 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320])]
                mem[64] = (32 * _1206) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 352
                require mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 320] - 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 320]
                mem[256] = mem[(32 * mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 320] - 1) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 352]
                if mem[256] <= ext_call.return_data[0]:
                    revert with 0, 'no enough amount'
                if sub_697659f2[mem[140 len 20]] > 0:
                    if mem[256] < ext_call.return_data[0] + sub_697659f2[mem[140 len 20]]:
                        revert with 0, 'no enough amount'
                mem[(32 * _1206) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 388] = msg.sender
                mem[(32 * _1206) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 420] = ext_call.return_data[0]
                mem[(32 * _1206) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 352] = 68
                mem[(32 * _1206) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 388 len 28] = Mask(224, 32, msg.sender) >> 32
                mem[(32 * _1206) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 384 len 4] = unknown_0xa9059cbb(?????)
                mem[(32 * _1206) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 452] = 32
                mem[(32 * _1206) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 484] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[(32 * _1206) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 622 len 26]
                if ext_code.size(address(ext_call.return_data[12 len 20])) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[(32 * _1206) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 516 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
                mem[(32 * _1206) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 608 len 4] = 0
                call address(ext_call.return_data[12 len 20]) with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _1206) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 580 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[12 len 20] > 0:
                            revert with memory
                              from 128
                               len ext_call.return_data[12 len 20]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[12 len 20] > 0:
                        require ext_call.return_data[12 len 20] >= 32
                        if not ext_call.return_data[12 len 20]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _1206) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 626 len 22]
                else:
                    mem[(32 * _1206) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[(32 * _1206) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 548]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _1206) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + ceil32(return_data.size) + 627 len 22]
            else:
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = address(ext_call.return_data[12 len 20])
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 452] = address(ext_call.return_data[12 len 20])
                require ext_code.size(address(cd[(arg4 + 68)]))
                staticcall address(cd[(arg4 + 68)]).getAmountIn(uint256 rg1, uint256 rg2, uint256 rg3, address rg4, address rg5) with:
                        gas gas_remaining wei
                       args arg2, ext_call.return_data[50 len 14], ext_call.return_data[0] << 144, address(ext_call.return_data[12 len 20]), address(ext_call.return_data[12 len 20])
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[224] = ext_call.return_data[0]
                require 0 < cd[(arg4 + cd[(arg4 + 132)] + 36)]
                if mem[332 len 20] != address(ext_call.return_data[12 len 20]):
                    revert with 0, 'token incorrect'
                require cd[(arg4 + cd[(arg4 + 132)] + 36)] - 1 < cd[(arg4 + cd[(arg4 + 132)] + 36)]
                if mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)] - 1) + 332 len 20] != mem[140 len 20]:
                    revert with 0, 'token incorrect'
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 324] = arg2
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 356] = ext_call.return_data[0]
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = this.address
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 452] = block.timestamp
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 388] = 160
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 484] = cd[(arg4 + cd[(arg4 + 132)] + 36)]
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 516 len floor32(cd[(arg4 + cd[(arg4 + 132)] + 36)])] = call.data[arg4 + cd[(arg4 + 132)] + 68 len floor32(cd[(arg4 + cd[(arg4 + 132)] + 36)])]
                require ext_code.size(address(cd[(arg4 + 100)]))
                call address(cd[(arg4 + 100)]).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args arg2, ext_call.return_data[0], Array(len=cd[(arg4 + cd[(arg4 + 132)] + 36)], data=call.data[arg4 + cd[(arg4 + 132)] + 68 len floor32(cd[(arg4 + cd[(arg4 + 132)] + 36)])], mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + floor32(cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 516 len (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) - floor32(cd[(arg4 + cd[(arg4 + 132)] + 36)])]), address(this.address), block.timestamp
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 320
                require return_data.size >= 32
                _1186 = mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len 4], Mask(224, 32, arg2) >> 32
                require mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                require mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                require mem[mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320] <= 4294967296 and mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320]) + 32 <= return_data.size
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 320] = mem[mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320]
                _1207 = mem[_1186 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320]
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 352 len floor32(mem[_1186 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320])] = mem[_1186 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 352 len floor32(mem[_1186 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320])]
                mem[64] = (32 * _1207) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 352
                require mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 320] - 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 320]
                mem[256] = mem[(32 * mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 320] - 1) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 352]
                if mem[256] <= ext_call.return_data[0]:
                    revert with 0, 'no enough amount'
                if sub_697659f2[mem[140 len 20]] > 0:
                    if mem[256] < ext_call.return_data[0] + sub_697659f2[mem[140 len 20]]:
                        revert with 0, 'no enough amount'
                mem[(32 * _1207) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 388] = msg.sender
                mem[(32 * _1207) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 420] = ext_call.return_data[0]
                mem[(32 * _1207) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 352] = 68
                mem[(32 * _1207) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 388 len 28] = Mask(224, 32, msg.sender) >> 32
                mem[(32 * _1207) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 384 len 4] = unknown_0xa9059cbb(?????)
                mem[(32 * _1207) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 452] = 32
                mem[(32 * _1207) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 484] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[(32 * _1207) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 622 len 26]
                if ext_code.size(address(ext_call.return_data[12 len 20])) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[(32 * _1207) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 516 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
                mem[(32 * _1207) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 608 len 4] = 0
                call address(ext_call.return_data[12 len 20]) with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _1207) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 580 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[12 len 20] > 0:
                            revert with memory
                              from 128
                               len ext_call.return_data[12 len 20]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[12 len 20] > 0:
                        require ext_call.return_data[12 len 20] >= 32
                        if not ext_call.return_data[12 len 20]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _1207) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 626 len 22]
                else:
                    mem[(32 * _1207) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[(32 * _1207) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 548]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _1207) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + ceil32(return_data.size) + 627 len 22]
    else:
        if arg3:
            revert with 0, 'need zero'
        mem[256] = 0
        require arg4.length >= 128
        require cd[(arg4 + 132)] <= 4294967296
        require cd[(arg4 + 132)] + 68 <= arg4.length + 36
        require cd[(arg4 + cd[(arg4 + 132)] + 36)] <= 4294967296 and cd[(arg4 + 132)] + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 68 <= arg4.length + 36
        mem[288] = cd[(arg4 + cd[(arg4 + 132)] + 36)]
        mem[320 len 32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]] = call.data[arg4 + cd[(arg4 + 132)] + 68 len 32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]]
        if sub_12109d52[address(cd[(arg4 + 36)])] <= 0:
            revert with 0, 'not allowed F'
        if sub_25bc368e[address(cd[(arg4 + 68)])] <= 0:
            revert with 0, 'not allowed R1'
        if sub_25bc368e[address(cd[(arg4 + 100)])] <= 0:
            revert with 0, 'not allowed R2'
        require ext_code.size(msg.sender)
        staticcall msg.sender.token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[96] = ext_call.return_data[12 len 20]
        require ext_code.size(msg.sender)
        staticcall msg.sender.token1() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[128] = ext_call.return_data[12 len 20]
        require ext_code.size(address(cd[(arg4 + 36)]))
        staticcall address(cd[(arg4 + 36)]).getPair(address rg1, address rg2) with:
                gas gas_remaining wei
               args address(ext_call.return_data[12 len 20]), address(ext_call.return_data[12 len 20])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[12 len 20] != msg.sender:
            revert with 0, 'wrong LP sender'
        require ext_code.size(msg.sender)
        staticcall msg.sender.getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        mem[192] = ext_call.return_data[50 len 14]
        mem[160] = Mask(112, 0, ext_call.return_data[0])
        mem[0] = address(cd[(arg4 + 68)])
        mem[32] = 6
        if arg2 <= 0:
            mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 324] = arg3
            mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 356] = Mask(112, 0, ext_call.return_data[0])
            mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 388] = ext_call.return_data[50 len 14]
            if sub_25bc368e[address(cd[(arg4 + 68)])] != 2:
                require ext_code.size(address(cd[(arg4 + 68)]))
                staticcall address(cd[(arg4 + 68)]).getAmountIn(uint256 rg1, uint256 rg2, uint256 rg3) with:
                        gas gas_remaining wei
                       args arg3, ext_call.return_data[0] << 144, ext_call.return_data[50 len 14]
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[224] = ext_call.return_data[0]
                require 0 < cd[(arg4 + cd[(arg4 + 132)] + 36)]
                if mem[332 len 20] != address(ext_call.return_data[12 len 20]):
                    revert with 0, 'token incorrect'
                require cd[(arg4 + cd[(arg4 + 132)] + 36)] - 1 < cd[(arg4 + cd[(arg4 + 132)] + 36)]
                if mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)] - 1) + 332 len 20] != mem[108 len 20]:
                    revert with 0, 'token incorrect'
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 324] = arg3
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 356] = ext_call.return_data[0]
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = this.address
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 452] = block.timestamp
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 388] = 160
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 484] = cd[(arg4 + cd[(arg4 + 132)] + 36)]
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 516 len floor32(cd[(arg4 + cd[(arg4 + 132)] + 36)])] = call.data[arg4 + cd[(arg4 + 132)] + 68 len floor32(cd[(arg4 + cd[(arg4 + 132)] + 36)])]
                require ext_code.size(address(cd[(arg4 + 100)]))
                call address(cd[(arg4 + 100)]).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args arg3, ext_call.return_data[0], Array(len=cd[(arg4 + cd[(arg4 + 132)] + 36)], data=call.data[arg4 + cd[(arg4 + 132)] + 68 len floor32(cd[(arg4 + cd[(arg4 + 132)] + 36)])], mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + floor32(cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 516 len (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) - floor32(cd[(arg4 + cd[(arg4 + 132)] + 36)])]), address(this.address), block.timestamp
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 320
                require return_data.size >= 32
                _1188 = mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len 4], Mask(224, 32, arg3) >> 32
                require mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                require mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                require mem[mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320] <= 4294967296 and mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320]) + 32 <= return_data.size
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 320] = mem[mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320]
                _1208 = mem[_1188 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320]
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 352 len floor32(mem[_1188 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320])] = mem[_1188 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 352 len floor32(mem[_1188 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320])]
                mem[64] = (32 * _1208) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 352
                require mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 320] - 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 320]
                mem[256] = mem[(32 * mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 320] - 1) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 352]
                if mem[256] <= ext_call.return_data[0]:
                    revert with 0, 'no enough amount'
                if sub_697659f2[mem[108 len 20]] <= 0:
                    mem[(32 * _1208) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 388] = msg.sender
                    mem[(32 * _1208) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 420] = ext_call.return_data[0]
                    mem[(32 * _1208) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 352] = 68
                    mem[(32 * _1208) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 388 len 28] = Mask(224, 32, msg.sender) >> 32
                    mem[(32 * _1208) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 384 len 4] = unknown_0xa9059cbb(?????)
                    mem[(32 * _1208) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 452] = 32
                    mem[(32 * _1208) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 484] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                    mem[(32 * _1208) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 622 len 26]
                    if ext_code.size(address(ext_call.return_data[12 len 20])) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[(32 * _1208) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 516 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
                    mem[(32 * _1208) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 608 len 4] = 0
                else:
                    if mem[256] < ext_call.return_data[0] + sub_697659f2[mem[108 len 20]]:
                        revert with 0, 'no enough amount'
                    mem[(32 * _1208) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 388] = msg.sender
                    mem[(32 * _1208) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 420] = ext_call.return_data[0]
                    mem[(32 * _1208) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 352] = 68
                    mem[(32 * _1208) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 388 len 28] = Mask(224, 32, msg.sender) >> 32
                    mem[(32 * _1208) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 384 len 4] = unknown_0xa9059cbb(?????)
                    mem[(32 * _1208) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 452] = 32
                    mem[(32 * _1208) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 484] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                    mem[(32 * _1208) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 622 len 26]
                    if ext_code.size(address(ext_call.return_data[12 len 20])) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[(32 * _1208) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 516 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
                    mem[(32 * _1208) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 608 len 4] = 0
                    mem[(32 * _1208) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 580 len 0] = 0
                call address(ext_call.return_data[12 len 20]) with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _1208) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 580 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[12 len 20] > 0:
                            revert with memory
                              from 128
                               len ext_call.return_data[12 len 20]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[12 len 20] > 0:
                        require ext_call.return_data[12 len 20] >= 32
                        if not ext_call.return_data[12 len 20]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _1208) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 626 len 22]
                else:
                    mem[(32 * _1208) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[(32 * _1208) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 548]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _1208) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + ceil32(return_data.size) + 627 len 22]
            else:
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = address(ext_call.return_data[12 len 20])
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 452] = address(ext_call.return_data[12 len 20])
                require ext_code.size(address(cd[(arg4 + 68)]))
                staticcall address(cd[(arg4 + 68)]).getAmountIn(uint256 rg1, uint256 rg2, uint256 rg3, address rg4, address rg5) with:
                        gas gas_remaining wei
                       args arg3, ext_call.return_data[0] << 144, ext_call.return_data[50 len 14], address(ext_call.return_data[12 len 20]), address(ext_call.return_data[12 len 20])
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[224] = ext_call.return_data[0]
                require 0 < cd[(arg4 + cd[(arg4 + 132)] + 36)]
                if mem[332 len 20] != address(ext_call.return_data[12 len 20]):
                    revert with 0, 'token incorrect'
                require cd[(arg4 + cd[(arg4 + 132)] + 36)] - 1 < cd[(arg4 + cd[(arg4 + 132)] + 36)]
                if mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)] - 1) + 332 len 20] != mem[108 len 20]:
                    revert with 0, 'token incorrect'
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 324] = arg3
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 356] = ext_call.return_data[0]
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = this.address
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 452] = block.timestamp
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 388] = 160
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 484] = cd[(arg4 + cd[(arg4 + 132)] + 36)]
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 516 len floor32(cd[(arg4 + cd[(arg4 + 132)] + 36)])] = call.data[arg4 + cd[(arg4 + 132)] + 68 len floor32(cd[(arg4 + cd[(arg4 + 132)] + 36)])]
                require ext_code.size(address(cd[(arg4 + 100)]))
                call address(cd[(arg4 + 100)]).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args arg3, ext_call.return_data[0], Array(len=cd[(arg4 + cd[(arg4 + 132)] + 36)], data=call.data[arg4 + cd[(arg4 + 132)] + 68 len floor32(cd[(arg4 + cd[(arg4 + 132)] + 36)])], mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + floor32(cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 516 len (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) - floor32(cd[(arg4 + cd[(arg4 + 132)] + 36)])]), address(this.address), block.timestamp
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 320
                require return_data.size >= 32
                _1190 = mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len 4], Mask(224, 32, arg3) >> 32
                require mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                require mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                require mem[mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320] <= 4294967296 and mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320]) + 32 <= return_data.size
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 320] = mem[mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320]
                _1209 = mem[_1190 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320]
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 352 len floor32(mem[_1190 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320])] = mem[_1190 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 352 len floor32(mem[_1190 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320])]
                mem[64] = (32 * _1209) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 352
                require mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 320] - 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 320]
                mem[256] = mem[(32 * mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 320] - 1) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 352]
                if mem[256] <= ext_call.return_data[0]:
                    revert with 0, 'no enough amount'
                if sub_697659f2[mem[108 len 20]] > 0:
                    if mem[256] < ext_call.return_data[0] + sub_697659f2[mem[108 len 20]]:
                        revert with 0, 'no enough amount'
                mem[(32 * _1209) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 388] = msg.sender
                mem[(32 * _1209) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 420] = ext_call.return_data[0]
                mem[(32 * _1209) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 352] = 68
                mem[(32 * _1209) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 388 len 28] = Mask(224, 32, msg.sender) >> 32
                mem[(32 * _1209) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 384 len 4] = unknown_0xa9059cbb(?????)
                mem[(32 * _1209) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 452] = 32
                mem[(32 * _1209) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 484] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[(32 * _1209) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 622 len 26]
                if ext_code.size(address(ext_call.return_data[12 len 20])) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[(32 * _1209) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 516 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
                mem[(32 * _1209) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 608 len 4] = 0
                call address(ext_call.return_data[12 len 20]) with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _1209) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 580 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[12 len 20] > 0:
                            revert with memory
                              from 128
                               len ext_call.return_data[12 len 20]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[12 len 20] > 0:
                        require ext_call.return_data[12 len 20] >= 32
                        if not ext_call.return_data[12 len 20]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _1209) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 626 len 22]
                else:
                    mem[(32 * _1209) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[(32 * _1209) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 548]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _1209) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + ceil32(return_data.size) + 627 len 22]
        else:
            mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 324] = arg2
            mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 356] = ext_call.return_data[50 len 14]
            mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 388] = Mask(112, 0, ext_call.return_data[0])
            if sub_25bc368e[address(cd[(arg4 + 68)])] != 2:
                require ext_code.size(address(cd[(arg4 + 68)]))
                staticcall address(cd[(arg4 + 68)]).getAmountIn(uint256 rg1, uint256 rg2, uint256 rg3) with:
                        gas gas_remaining wei
                       args arg2, ext_call.return_data[50 len 14], ext_call.return_data[0] << 144
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[224] = ext_call.return_data[0]
                require 0 < cd[(arg4 + cd[(arg4 + 132)] + 36)]
                if mem[332 len 20] != address(ext_call.return_data[12 len 20]):
                    revert with 0, 'token incorrect'
                require cd[(arg4 + cd[(arg4 + 132)] + 36)] - 1 < cd[(arg4 + cd[(arg4 + 132)] + 36)]
                if mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)] - 1) + 332 len 20] != mem[140 len 20]:
                    revert with 0, 'token incorrect'
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 324] = arg2
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 356] = ext_call.return_data[0]
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = this.address
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 452] = block.timestamp
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 388] = 160
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 484] = cd[(arg4 + cd[(arg4 + 132)] + 36)]
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 516 len floor32(cd[(arg4 + cd[(arg4 + 132)] + 36)])] = call.data[arg4 + cd[(arg4 + 132)] + 68 len floor32(cd[(arg4 + cd[(arg4 + 132)] + 36)])]
                require ext_code.size(address(cd[(arg4 + 100)]))
                call address(cd[(arg4 + 100)]).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args arg2, ext_call.return_data[0], Array(len=cd[(arg4 + cd[(arg4 + 132)] + 36)], data=call.data[arg4 + cd[(arg4 + 132)] + 68 len floor32(cd[(arg4 + cd[(arg4 + 132)] + 36)])], mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + floor32(cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 516 len (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) - floor32(cd[(arg4 + cd[(arg4 + 132)] + 36)])]), address(this.address), block.timestamp
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 320
                require return_data.size >= 32
                _1192 = mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len 4], Mask(224, 32, arg2) >> 32
                require mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                require mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                require mem[mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320] <= 4294967296 and mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320]) + 32 <= return_data.size
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 320] = mem[mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320]
                _1210 = mem[_1192 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320]
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 352 len floor32(mem[_1192 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320])] = mem[_1192 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 352 len floor32(mem[_1192 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320])]
                mem[64] = (32 * _1210) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 352
                require mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 320] - 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 320]
                mem[256] = mem[(32 * mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 320] - 1) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 352]
                if mem[256] <= ext_call.return_data[0]:
                    revert with 0, 'no enough amount'
                if sub_697659f2[mem[140 len 20]] > 0:
                    if mem[256] < ext_call.return_data[0] + sub_697659f2[mem[140 len 20]]:
                        revert with 0, 'no enough amount'
                mem[(32 * _1210) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 388] = msg.sender
                mem[(32 * _1210) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 420] = ext_call.return_data[0]
                mem[(32 * _1210) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 352] = 68
                mem[(32 * _1210) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 388 len 28] = Mask(224, 32, msg.sender) >> 32
                mem[(32 * _1210) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 384 len 4] = unknown_0xa9059cbb(?????)
                mem[(32 * _1210) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 452] = 32
                mem[(32 * _1210) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 484] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[(32 * _1210) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 622 len 26]
                if ext_code.size(address(ext_call.return_data[12 len 20])) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[(32 * _1210) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 516 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
                mem[(32 * _1210) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 608 len 4] = 0
                call address(ext_call.return_data[12 len 20]) with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _1210) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 580 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[12 len 20] > 0:
                            revert with memory
                              from 128
                               len ext_call.return_data[12 len 20]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[12 len 20] > 0:
                        require ext_call.return_data[12 len 20] >= 32
                        if not ext_call.return_data[12 len 20]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _1210) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 626 len 22]
                else:
                    mem[(32 * _1210) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[(32 * _1210) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 548]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _1210) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + ceil32(return_data.size) + 627 len 22]
            else:
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = address(ext_call.return_data[12 len 20])
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 452] = address(ext_call.return_data[12 len 20])
                require ext_code.size(address(cd[(arg4 + 68)]))
                staticcall address(cd[(arg4 + 68)]).getAmountIn(uint256 rg1, uint256 rg2, uint256 rg3, address rg4, address rg5) with:
                        gas gas_remaining wei
                       args arg2, ext_call.return_data[50 len 14], ext_call.return_data[0] << 144, address(ext_call.return_data[12 len 20]), address(ext_call.return_data[12 len 20])
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[224] = ext_call.return_data[0]
                require 0 < cd[(arg4 + cd[(arg4 + 132)] + 36)]
                if mem[332 len 20] != address(ext_call.return_data[12 len 20]):
                    revert with 0, 'token incorrect'
                require cd[(arg4 + cd[(arg4 + 132)] + 36)] - 1 < cd[(arg4 + cd[(arg4 + 132)] + 36)]
                if mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)] - 1) + 332 len 20] != mem[140 len 20]:
                    revert with 0, 'token incorrect'
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 324] = arg2
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 356] = ext_call.return_data[0]
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = this.address
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 452] = block.timestamp
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 388] = 160
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 484] = cd[(arg4 + cd[(arg4 + 132)] + 36)]
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 516 len floor32(cd[(arg4 + cd[(arg4 + 132)] + 36)])] = call.data[arg4 + cd[(arg4 + 132)] + 68 len floor32(cd[(arg4 + cd[(arg4 + 132)] + 36)])]
                require ext_code.size(address(cd[(arg4 + 100)]))
                call address(cd[(arg4 + 100)]).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args arg2, ext_call.return_data[0], Array(len=cd[(arg4 + cd[(arg4 + 132)] + 36)], data=call.data[arg4 + cd[(arg4 + 132)] + 68 len floor32(cd[(arg4 + cd[(arg4 + 132)] + 36)])], mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + floor32(cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 516 len (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) - floor32(cd[(arg4 + cd[(arg4 + 132)] + 36)])]), address(this.address), block.timestamp
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 320
                require return_data.size >= 32
                _1194 = mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len 4], Mask(224, 32, arg2) >> 32
                require mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                require mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                require mem[mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320] <= 4294967296 and mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320]) + 32 <= return_data.size
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 320] = mem[mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320]
                _1211 = mem[_1194 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320]
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 352 len floor32(mem[_1194 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320])] = mem[_1194 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 352 len floor32(mem[_1194 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320])]
                mem[64] = (32 * _1211) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 352
                require mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 320] - 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 320]
                mem[256] = mem[(32 * mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 320] - 1) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 352]
                if mem[256] <= ext_call.return_data[0]:
                    revert with 0, 'no enough amount'
                if sub_697659f2[mem[140 len 20]] <= 0:
                    mem[(32 * _1211) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 388] = msg.sender
                    mem[(32 * _1211) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 420] = ext_call.return_data[0]
                    mem[(32 * _1211) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 352] = 68
                    mem[(32 * _1211) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 388 len 28] = Mask(224, 32, msg.sender) >> 32
                    mem[(32 * _1211) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 384 len 4] = unknown_0xa9059cbb(?????)
                    mem[(32 * _1211) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 452] = 32
                    mem[(32 * _1211) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 484] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                    mem[(32 * _1211) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 622 len 26]
                    if ext_code.size(address(ext_call.return_data[12 len 20])) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[(32 * _1211) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 516 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
                    mem[(32 * _1211) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 608 len 4] = 0
                    mem[(32 * _1211) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 580 len 0] = 0
                else:
                    if mem[256] < ext_call.return_data[0] + sub_697659f2[mem[140 len 20]]:
                        revert with 0, 'no enough amount'
                    mem[(32 * _1211) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 388] = msg.sender
                    mem[(32 * _1211) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 420] = ext_call.return_data[0]
                    mem[(32 * _1211) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 352] = 68
                    mem[(32 * _1211) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 388 len 28] = Mask(224, 32, msg.sender) >> 32
                    mem[(32 * _1211) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 384 len 4] = unknown_0xa9059cbb(?????)
                    mem[(32 * _1211) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 452] = 32
                    mem[(32 * _1211) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 484] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                    mem[(32 * _1211) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 622 len 26]
                    if ext_code.size(address(ext_call.return_data[12 len 20])) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[(32 * _1211) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 516 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
                    mem[(32 * _1211) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 608 len 4] = 0
                call address(ext_call.return_data[12 len 20]) with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _1211) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 580 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[12 len 20] > 0:
                            revert with memory
                              from 128
                               len ext_call.return_data[12 len 20]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[12 len 20] > 0:
                        require ext_call.return_data[12 len 20] >= 32
                        if not ext_call.return_data[12 len 20]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _1211) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 626 len 22]
                else:
                    mem[(32 * _1211) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[(32 * _1211) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 548]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _1211) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + ceil32(return_data.size) + 627 len 22]
    count++
}

function pancakeCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    if workers[address(arg1)] != 1:
        revert with 0, 'worker reject'
    if not arg2:
        mem[256] = 0
        require arg4.length >= 128
        require cd[(arg4 + 132)] <= 4294967296
        require cd[(arg4 + 132)] + 68 <= arg4.length + 36
        require cd[(arg4 + cd[(arg4 + 132)] + 36)] <= 4294967296 and cd[(arg4 + 132)] + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 68 <= arg4.length + 36
        mem[288] = cd[(arg4 + cd[(arg4 + 132)] + 36)]
        mem[320 len 32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]] = call.data[arg4 + cd[(arg4 + 132)] + 68 len 32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]]
        if sub_12109d52[address(cd[(arg4 + 36)])] <= 0:
            revert with 0, 'not allowed F'
        if sub_25bc368e[address(cd[(arg4 + 68)])] <= 0:
            revert with 0, 'not allowed R1'
        if sub_25bc368e[address(cd[(arg4 + 100)])] <= 0:
            revert with 0, 'not allowed R2'
        require ext_code.size(msg.sender)
        staticcall msg.sender.token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[96] = ext_call.return_data[12 len 20]
        require ext_code.size(msg.sender)
        staticcall msg.sender.token1() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[128] = ext_call.return_data[12 len 20]
        require ext_code.size(address(cd[(arg4 + 36)]))
        staticcall address(cd[(arg4 + 36)]).getPair(address rg1, address rg2) with:
                gas gas_remaining wei
               args address(ext_call.return_data[12 len 20]), address(ext_call.return_data[12 len 20])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[12 len 20] != msg.sender:
            revert with 0, 'wrong LP sender'
        require ext_code.size(msg.sender)
        staticcall msg.sender.getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        mem[192] = ext_call.return_data[50 len 14]
        mem[160] = Mask(112, 0, ext_call.return_data[0])
        mem[0] = address(cd[(arg4 + 68)])
        mem[32] = 6
        if arg2 <= 0:
            mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 324] = arg3
            mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 356] = Mask(112, 0, ext_call.return_data[0])
            mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 388] = ext_call.return_data[50 len 14]
            if sub_25bc368e[address(cd[(arg4 + 68)])] != 2:
                require ext_code.size(address(cd[(arg4 + 68)]))
                staticcall address(cd[(arg4 + 68)]).getAmountIn(uint256 rg1, uint256 rg2, uint256 rg3) with:
                        gas gas_remaining wei
                       args arg3, ext_call.return_data[0] << 144, ext_call.return_data[50 len 14]
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[224] = ext_call.return_data[0]
                require 0 < cd[(arg4 + cd[(arg4 + 132)] + 36)]
                if mem[332 len 20] != address(ext_call.return_data[12 len 20]):
                    revert with 0, 'token incorrect'
                require cd[(arg4 + cd[(arg4 + 132)] + 36)] - 1 < cd[(arg4 + cd[(arg4 + 132)] + 36)]
                if mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)] - 1) + 332 len 20] != mem[108 len 20]:
                    revert with 0, 'token incorrect'
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 324] = arg3
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 356] = ext_call.return_data[0]
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = this.address
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 452] = block.timestamp
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 388] = 160
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 484] = cd[(arg4 + cd[(arg4 + 132)] + 36)]
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 516 len floor32(cd[(arg4 + cd[(arg4 + 132)] + 36)])] = call.data[arg4 + cd[(arg4 + 132)] + 68 len floor32(cd[(arg4 + cd[(arg4 + 132)] + 36)])]
                require ext_code.size(address(cd[(arg4 + 100)]))
                call address(cd[(arg4 + 100)]).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args arg3, ext_call.return_data[0], Array(len=cd[(arg4 + cd[(arg4 + 132)] + 36)], data=call.data[arg4 + cd[(arg4 + 132)] + 68 len floor32(cd[(arg4 + cd[(arg4 + 132)] + 36)])], mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + floor32(cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 516 len (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) - floor32(cd[(arg4 + cd[(arg4 + 132)] + 36)])]), address(this.address), block.timestamp
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 320
                require return_data.size >= 32
                _1180 = mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len 4], Mask(224, 32, arg3) >> 32
                require mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                require mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                require mem[mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320] <= 4294967296 and mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320]) + 32 <= return_data.size
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 320] = mem[mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320]
                _1204 = mem[_1180 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320]
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 352 len floor32(mem[_1180 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320])] = mem[_1180 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 352 len floor32(mem[_1180 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320])]
                mem[64] = (32 * _1204) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 352
                require mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 320] - 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 320]
                mem[256] = mem[(32 * mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 320] - 1) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 352]
                if mem[256] <= ext_call.return_data[0]:
                    revert with 0, 'no enough amount'
                if sub_697659f2[mem[108 len 20]] > 0:
                    if mem[256] < ext_call.return_data[0] + sub_697659f2[mem[108 len 20]]:
                        revert with 0, 'no enough amount'
                mem[(32 * _1204) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 388] = msg.sender
                mem[(32 * _1204) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 420] = ext_call.return_data[0]
                mem[(32 * _1204) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 352] = 68
                mem[(32 * _1204) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 388 len 28] = Mask(224, 32, msg.sender) >> 32
                mem[(32 * _1204) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 384 len 4] = unknown_0xa9059cbb(?????)
                mem[(32 * _1204) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 452] = 32
                mem[(32 * _1204) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 484] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[(32 * _1204) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 622 len 26]
                if ext_code.size(address(ext_call.return_data[12 len 20])) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[(32 * _1204) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 516 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
                mem[(32 * _1204) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 608 len 4] = 0
                call address(ext_call.return_data[12 len 20]) with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _1204) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 580 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[12 len 20] > 0:
                            revert with memory
                              from 128
                               len ext_call.return_data[12 len 20]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[12 len 20] > 0:
                        require ext_call.return_data[12 len 20] >= 32
                        if not ext_call.return_data[12 len 20]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _1204) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 626 len 22]
                else:
                    mem[(32 * _1204) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[(32 * _1204) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 548]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _1204) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + ceil32(return_data.size) + 627 len 22]
            else:
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = address(ext_call.return_data[12 len 20])
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 452] = address(ext_call.return_data[12 len 20])
                require ext_code.size(address(cd[(arg4 + 68)]))
                staticcall address(cd[(arg4 + 68)]).getAmountIn(uint256 rg1, uint256 rg2, uint256 rg3, address rg4, address rg5) with:
                        gas gas_remaining wei
                       args arg3, ext_call.return_data[0] << 144, ext_call.return_data[50 len 14], address(ext_call.return_data[12 len 20]), address(ext_call.return_data[12 len 20])
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[224] = ext_call.return_data[0]
                require 0 < cd[(arg4 + cd[(arg4 + 132)] + 36)]
                if mem[332 len 20] != address(ext_call.return_data[12 len 20]):
                    revert with 0, 'token incorrect'
                require cd[(arg4 + cd[(arg4 + 132)] + 36)] - 1 < cd[(arg4 + cd[(arg4 + 132)] + 36)]
                if mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)] - 1) + 332 len 20] != mem[108 len 20]:
                    revert with 0, 'token incorrect'
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 324] = arg3
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 356] = ext_call.return_data[0]
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = this.address
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 452] = block.timestamp
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 388] = 160
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 484] = cd[(arg4 + cd[(arg4 + 132)] + 36)]
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 516 len floor32(cd[(arg4 + cd[(arg4 + 132)] + 36)])] = call.data[arg4 + cd[(arg4 + 132)] + 68 len floor32(cd[(arg4 + cd[(arg4 + 132)] + 36)])]
                require ext_code.size(address(cd[(arg4 + 100)]))
                call address(cd[(arg4 + 100)]).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args arg3, ext_call.return_data[0], Array(len=cd[(arg4 + cd[(arg4 + 132)] + 36)], data=call.data[arg4 + cd[(arg4 + 132)] + 68 len floor32(cd[(arg4 + cd[(arg4 + 132)] + 36)])], mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + floor32(cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 516 len (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) - floor32(cd[(arg4 + cd[(arg4 + 132)] + 36)])]), address(this.address), block.timestamp
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 320
                require return_data.size >= 32
                _1182 = mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len 4], Mask(224, 32, arg3) >> 32
                require mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                require mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                require mem[mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320] <= 4294967296 and mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320]) + 32 <= return_data.size
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 320] = mem[mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320]
                _1205 = mem[_1182 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320]
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 352 len floor32(mem[_1182 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320])] = mem[_1182 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 352 len floor32(mem[_1182 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320])]
                mem[64] = (32 * _1205) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 352
                require mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 320] - 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 320]
                mem[256] = mem[(32 * mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 320] - 1) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 352]
                if mem[256] <= ext_call.return_data[0]:
                    revert with 0, 'no enough amount'
                if sub_697659f2[mem[108 len 20]] > 0:
                    if mem[256] < ext_call.return_data[0] + sub_697659f2[mem[108 len 20]]:
                        revert with 0, 'no enough amount'
                mem[(32 * _1205) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 388] = msg.sender
                mem[(32 * _1205) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 420] = ext_call.return_data[0]
                mem[(32 * _1205) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 352] = 68
                mem[(32 * _1205) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 388 len 28] = Mask(224, 32, msg.sender) >> 32
                mem[(32 * _1205) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 384 len 4] = unknown_0xa9059cbb(?????)
                mem[(32 * _1205) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 452] = 32
                mem[(32 * _1205) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 484] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[(32 * _1205) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 622 len 26]
                if ext_code.size(address(ext_call.return_data[12 len 20])) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[(32 * _1205) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 516 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
                mem[(32 * _1205) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 608 len 4] = 0
                call address(ext_call.return_data[12 len 20]) with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _1205) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 580 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[12 len 20] > 0:
                            revert with memory
                              from 128
                               len ext_call.return_data[12 len 20]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[12 len 20] > 0:
                        require ext_call.return_data[12 len 20] >= 32
                        if not ext_call.return_data[12 len 20]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _1205) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 626 len 22]
                else:
                    mem[(32 * _1205) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[(32 * _1205) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 548]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _1205) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + ceil32(return_data.size) + 627 len 22]
        else:
            mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 324] = arg2
            mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 356] = ext_call.return_data[50 len 14]
            mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 388] = Mask(112, 0, ext_call.return_data[0])
            if sub_25bc368e[address(cd[(arg4 + 68)])] != 2:
                require ext_code.size(address(cd[(arg4 + 68)]))
                staticcall address(cd[(arg4 + 68)]).getAmountIn(uint256 rg1, uint256 rg2, uint256 rg3) with:
                        gas gas_remaining wei
                       args arg2, ext_call.return_data[50 len 14], ext_call.return_data[0] << 144
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[224] = ext_call.return_data[0]
                require 0 < cd[(arg4 + cd[(arg4 + 132)] + 36)]
                if mem[332 len 20] != address(ext_call.return_data[12 len 20]):
                    revert with 0, 'token incorrect'
                require cd[(arg4 + cd[(arg4 + 132)] + 36)] - 1 < cd[(arg4 + cd[(arg4 + 132)] + 36)]
                if mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)] - 1) + 332 len 20] != mem[140 len 20]:
                    revert with 0, 'token incorrect'
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 324] = arg2
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 356] = ext_call.return_data[0]
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = this.address
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 452] = block.timestamp
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 388] = 160
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 484] = cd[(arg4 + cd[(arg4 + 132)] + 36)]
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 516 len floor32(cd[(arg4 + cd[(arg4 + 132)] + 36)])] = call.data[arg4 + cd[(arg4 + 132)] + 68 len floor32(cd[(arg4 + cd[(arg4 + 132)] + 36)])]
                require ext_code.size(address(cd[(arg4 + 100)]))
                call address(cd[(arg4 + 100)]).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args arg2, ext_call.return_data[0], Array(len=cd[(arg4 + cd[(arg4 + 132)] + 36)], data=call.data[arg4 + cd[(arg4 + 132)] + 68 len floor32(cd[(arg4 + cd[(arg4 + 132)] + 36)])], mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + floor32(cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 516 len (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) - floor32(cd[(arg4 + cd[(arg4 + 132)] + 36)])]), address(this.address), block.timestamp
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 320
                require return_data.size >= 32
                _1184 = mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len 4], Mask(224, 32, arg2) >> 32
                require mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                require mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                require mem[mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320] <= 4294967296 and mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320]) + 32 <= return_data.size
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 320] = mem[mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320]
                _1206 = mem[_1184 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320]
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 352 len floor32(mem[_1184 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320])] = mem[_1184 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 352 len floor32(mem[_1184 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320])]
                mem[64] = (32 * _1206) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 352
                require mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 320] - 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 320]
                mem[256] = mem[(32 * mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 320] - 1) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 352]
                if mem[256] <= ext_call.return_data[0]:
                    revert with 0, 'no enough amount'
                if sub_697659f2[mem[140 len 20]] > 0:
                    if mem[256] < ext_call.return_data[0] + sub_697659f2[mem[140 len 20]]:
                        revert with 0, 'no enough amount'
                mem[(32 * _1206) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 388] = msg.sender
                mem[(32 * _1206) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 420] = ext_call.return_data[0]
                mem[(32 * _1206) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 352] = 68
                mem[(32 * _1206) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 388 len 28] = Mask(224, 32, msg.sender) >> 32
                mem[(32 * _1206) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 384 len 4] = unknown_0xa9059cbb(?????)
                mem[(32 * _1206) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 452] = 32
                mem[(32 * _1206) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 484] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[(32 * _1206) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 622 len 26]
                if ext_code.size(address(ext_call.return_data[12 len 20])) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[(32 * _1206) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 516 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
                mem[(32 * _1206) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 608 len 4] = 0
                call address(ext_call.return_data[12 len 20]) with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _1206) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 580 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[12 len 20] > 0:
                            revert with memory
                              from 128
                               len ext_call.return_data[12 len 20]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[12 len 20] > 0:
                        require ext_call.return_data[12 len 20] >= 32
                        if not ext_call.return_data[12 len 20]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _1206) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 626 len 22]
                else:
                    mem[(32 * _1206) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[(32 * _1206) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 548]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _1206) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + ceil32(return_data.size) + 627 len 22]
            else:
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = address(ext_call.return_data[12 len 20])
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 452] = address(ext_call.return_data[12 len 20])
                require ext_code.size(address(cd[(arg4 + 68)]))
                staticcall address(cd[(arg4 + 68)]).getAmountIn(uint256 rg1, uint256 rg2, uint256 rg3, address rg4, address rg5) with:
                        gas gas_remaining wei
                       args arg2, ext_call.return_data[50 len 14], ext_call.return_data[0] << 144, address(ext_call.return_data[12 len 20]), address(ext_call.return_data[12 len 20])
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[224] = ext_call.return_data[0]
                require 0 < cd[(arg4 + cd[(arg4 + 132)] + 36)]
                if mem[332 len 20] != address(ext_call.return_data[12 len 20]):
                    revert with 0, 'token incorrect'
                require cd[(arg4 + cd[(arg4 + 132)] + 36)] - 1 < cd[(arg4 + cd[(arg4 + 132)] + 36)]
                if mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)] - 1) + 332 len 20] != mem[140 len 20]:
                    revert with 0, 'token incorrect'
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 324] = arg2
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 356] = ext_call.return_data[0]
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = this.address
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 452] = block.timestamp
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 388] = 160
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 484] = cd[(arg4 + cd[(arg4 + 132)] + 36)]
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 516 len floor32(cd[(arg4 + cd[(arg4 + 132)] + 36)])] = call.data[arg4 + cd[(arg4 + 132)] + 68 len floor32(cd[(arg4 + cd[(arg4 + 132)] + 36)])]
                require ext_code.size(address(cd[(arg4 + 100)]))
                call address(cd[(arg4 + 100)]).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args arg2, ext_call.return_data[0], Array(len=cd[(arg4 + cd[(arg4 + 132)] + 36)], data=call.data[arg4 + cd[(arg4 + 132)] + 68 len floor32(cd[(arg4 + cd[(arg4 + 132)] + 36)])], mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + floor32(cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 516 len (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) - floor32(cd[(arg4 + cd[(arg4 + 132)] + 36)])]), address(this.address), block.timestamp
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 320
                require return_data.size >= 32
                _1186 = mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len 4], Mask(224, 32, arg2) >> 32
                require mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                require mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                require mem[mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320] <= 4294967296 and mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320]) + 32 <= return_data.size
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 320] = mem[mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320]
                _1207 = mem[_1186 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320]
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 352 len floor32(mem[_1186 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320])] = mem[_1186 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 352 len floor32(mem[_1186 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320])]
                mem[64] = (32 * _1207) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 352
                require mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 320] - 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 320]
                mem[256] = mem[(32 * mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 320] - 1) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 352]
                if mem[256] <= ext_call.return_data[0]:
                    revert with 0, 'no enough amount'
                if sub_697659f2[mem[140 len 20]] > 0:
                    if mem[256] < ext_call.return_data[0] + sub_697659f2[mem[140 len 20]]:
                        revert with 0, 'no enough amount'
                mem[(32 * _1207) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 388] = msg.sender
                mem[(32 * _1207) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 420] = ext_call.return_data[0]
                mem[(32 * _1207) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 352] = 68
                mem[(32 * _1207) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 388 len 28] = Mask(224, 32, msg.sender) >> 32
                mem[(32 * _1207) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 384 len 4] = unknown_0xa9059cbb(?????)
                mem[(32 * _1207) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 452] = 32
                mem[(32 * _1207) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 484] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[(32 * _1207) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 622 len 26]
                if ext_code.size(address(ext_call.return_data[12 len 20])) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[(32 * _1207) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 516 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
                mem[(32 * _1207) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 608 len 4] = 0
                call address(ext_call.return_data[12 len 20]) with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _1207) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 580 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[12 len 20] > 0:
                            revert with memory
                              from 128
                               len ext_call.return_data[12 len 20]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[12 len 20] > 0:
                        require ext_call.return_data[12 len 20] >= 32
                        if not ext_call.return_data[12 len 20]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _1207) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 626 len 22]
                else:
                    mem[(32 * _1207) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[(32 * _1207) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 548]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _1207) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + ceil32(return_data.size) + 627 len 22]
    else:
        if arg3:
            revert with 0, 'need zero'
        mem[256] = 0
        require arg4.length >= 128
        require cd[(arg4 + 132)] <= 4294967296
        require cd[(arg4 + 132)] + 68 <= arg4.length + 36
        require cd[(arg4 + cd[(arg4 + 132)] + 36)] <= 4294967296 and cd[(arg4 + 132)] + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 68 <= arg4.length + 36
        mem[288] = cd[(arg4 + cd[(arg4 + 132)] + 36)]
        mem[320 len 32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]] = call.data[arg4 + cd[(arg4 + 132)] + 68 len 32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]]
        if sub_12109d52[address(cd[(arg4 + 36)])] <= 0:
            revert with 0, 'not allowed F'
        if sub_25bc368e[address(cd[(arg4 + 68)])] <= 0:
            revert with 0, 'not allowed R1'
        if sub_25bc368e[address(cd[(arg4 + 100)])] <= 0:
            revert with 0, 'not allowed R2'
        require ext_code.size(msg.sender)
        staticcall msg.sender.token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[96] = ext_call.return_data[12 len 20]
        require ext_code.size(msg.sender)
        staticcall msg.sender.token1() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[128] = ext_call.return_data[12 len 20]
        require ext_code.size(address(cd[(arg4 + 36)]))
        staticcall address(cd[(arg4 + 36)]).getPair(address rg1, address rg2) with:
                gas gas_remaining wei
               args address(ext_call.return_data[12 len 20]), address(ext_call.return_data[12 len 20])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[12 len 20] != msg.sender:
            revert with 0, 'wrong LP sender'
        require ext_code.size(msg.sender)
        staticcall msg.sender.getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        mem[192] = ext_call.return_data[50 len 14]
        mem[160] = Mask(112, 0, ext_call.return_data[0])
        mem[0] = address(cd[(arg4 + 68)])
        mem[32] = 6
        if arg2 <= 0:
            mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 324] = arg3
            mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 356] = Mask(112, 0, ext_call.return_data[0])
            mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 388] = ext_call.return_data[50 len 14]
            if sub_25bc368e[address(cd[(arg4 + 68)])] != 2:
                require ext_code.size(address(cd[(arg4 + 68)]))
                staticcall address(cd[(arg4 + 68)]).getAmountIn(uint256 rg1, uint256 rg2, uint256 rg3) with:
                        gas gas_remaining wei
                       args arg3, ext_call.return_data[0] << 144, ext_call.return_data[50 len 14]
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[224] = ext_call.return_data[0]
                require 0 < cd[(arg4 + cd[(arg4 + 132)] + 36)]
                if mem[332 len 20] != address(ext_call.return_data[12 len 20]):
                    revert with 0, 'token incorrect'
                require cd[(arg4 + cd[(arg4 + 132)] + 36)] - 1 < cd[(arg4 + cd[(arg4 + 132)] + 36)]
                if mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)] - 1) + 332 len 20] != mem[108 len 20]:
                    revert with 0, 'token incorrect'
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 324] = arg3
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 356] = ext_call.return_data[0]
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = this.address
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 452] = block.timestamp
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 388] = 160
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 484] = cd[(arg4 + cd[(arg4 + 132)] + 36)]
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 516 len floor32(cd[(arg4 + cd[(arg4 + 132)] + 36)])] = call.data[arg4 + cd[(arg4 + 132)] + 68 len floor32(cd[(arg4 + cd[(arg4 + 132)] + 36)])]
                require ext_code.size(address(cd[(arg4 + 100)]))
                call address(cd[(arg4 + 100)]).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args arg3, ext_call.return_data[0], Array(len=cd[(arg4 + cd[(arg4 + 132)] + 36)], data=call.data[arg4 + cd[(arg4 + 132)] + 68 len floor32(cd[(arg4 + cd[(arg4 + 132)] + 36)])], mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + floor32(cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 516 len (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) - floor32(cd[(arg4 + cd[(arg4 + 132)] + 36)])]), address(this.address), block.timestamp
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 320
                require return_data.size >= 32
                _1188 = mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len 4], Mask(224, 32, arg3) >> 32
                require mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                require mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                require mem[mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320] <= 4294967296 and mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320]) + 32 <= return_data.size
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 320] = mem[mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320]
                _1208 = mem[_1188 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320]
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 352 len floor32(mem[_1188 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320])] = mem[_1188 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 352 len floor32(mem[_1188 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320])]
                mem[64] = (32 * _1208) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 352
                require mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 320] - 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 320]
                mem[256] = mem[(32 * mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 320] - 1) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 352]
                if mem[256] <= ext_call.return_data[0]:
                    revert with 0, 'no enough amount'
                if sub_697659f2[mem[108 len 20]] <= 0:
                    mem[(32 * _1208) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 388] = msg.sender
                    mem[(32 * _1208) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 420] = ext_call.return_data[0]
                    mem[(32 * _1208) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 352] = 68
                    mem[(32 * _1208) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 388 len 28] = Mask(224, 32, msg.sender) >> 32
                    mem[(32 * _1208) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 384 len 4] = unknown_0xa9059cbb(?????)
                    mem[(32 * _1208) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 452] = 32
                    mem[(32 * _1208) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 484] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                    mem[(32 * _1208) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 622 len 26]
                    if ext_code.size(address(ext_call.return_data[12 len 20])) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[(32 * _1208) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 516 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
                    mem[(32 * _1208) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 608 len 4] = 0
                else:
                    if mem[256] < ext_call.return_data[0] + sub_697659f2[mem[108 len 20]]:
                        revert with 0, 'no enough amount'
                    mem[(32 * _1208) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 388] = msg.sender
                    mem[(32 * _1208) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 420] = ext_call.return_data[0]
                    mem[(32 * _1208) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 352] = 68
                    mem[(32 * _1208) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 388 len 28] = Mask(224, 32, msg.sender) >> 32
                    mem[(32 * _1208) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 384 len 4] = unknown_0xa9059cbb(?????)
                    mem[(32 * _1208) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 452] = 32
                    mem[(32 * _1208) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 484] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                    mem[(32 * _1208) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 622 len 26]
                    if ext_code.size(address(ext_call.return_data[12 len 20])) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[(32 * _1208) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 516 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
                    mem[(32 * _1208) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 608 len 4] = 0
                    mem[(32 * _1208) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 580 len 0] = 0
                call address(ext_call.return_data[12 len 20]) with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _1208) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 580 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[12 len 20] > 0:
                            revert with memory
                              from 128
                               len ext_call.return_data[12 len 20]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[12 len 20] > 0:
                        require ext_call.return_data[12 len 20] >= 32
                        if not ext_call.return_data[12 len 20]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _1208) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 626 len 22]
                else:
                    mem[(32 * _1208) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[(32 * _1208) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 548]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _1208) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + ceil32(return_data.size) + 627 len 22]
            else:
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = address(ext_call.return_data[12 len 20])
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 452] = address(ext_call.return_data[12 len 20])
                require ext_code.size(address(cd[(arg4 + 68)]))
                staticcall address(cd[(arg4 + 68)]).getAmountIn(uint256 rg1, uint256 rg2, uint256 rg3, address rg4, address rg5) with:
                        gas gas_remaining wei
                       args arg3, ext_call.return_data[0] << 144, ext_call.return_data[50 len 14], address(ext_call.return_data[12 len 20]), address(ext_call.return_data[12 len 20])
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[224] = ext_call.return_data[0]
                require 0 < cd[(arg4 + cd[(arg4 + 132)] + 36)]
                if mem[332 len 20] != address(ext_call.return_data[12 len 20]):
                    revert with 0, 'token incorrect'
                require cd[(arg4 + cd[(arg4 + 132)] + 36)] - 1 < cd[(arg4 + cd[(arg4 + 132)] + 36)]
                if mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)] - 1) + 332 len 20] != mem[108 len 20]:
                    revert with 0, 'token incorrect'
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 324] = arg3
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 356] = ext_call.return_data[0]
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = this.address
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 452] = block.timestamp
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 388] = 160
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 484] = cd[(arg4 + cd[(arg4 + 132)] + 36)]
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 516 len floor32(cd[(arg4 + cd[(arg4 + 132)] + 36)])] = call.data[arg4 + cd[(arg4 + 132)] + 68 len floor32(cd[(arg4 + cd[(arg4 + 132)] + 36)])]
                require ext_code.size(address(cd[(arg4 + 100)]))
                call address(cd[(arg4 + 100)]).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args arg3, ext_call.return_data[0], Array(len=cd[(arg4 + cd[(arg4 + 132)] + 36)], data=call.data[arg4 + cd[(arg4 + 132)] + 68 len floor32(cd[(arg4 + cd[(arg4 + 132)] + 36)])], mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + floor32(cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 516 len (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) - floor32(cd[(arg4 + cd[(arg4 + 132)] + 36)])]), address(this.address), block.timestamp
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 320
                require return_data.size >= 32
                _1190 = mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len 4], Mask(224, 32, arg3) >> 32
                require mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                require mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                require mem[mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320] <= 4294967296 and mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320]) + 32 <= return_data.size
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 320] = mem[mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320]
                _1209 = mem[_1190 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320]
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 352 len floor32(mem[_1190 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320])] = mem[_1190 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 352 len floor32(mem[_1190 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320])]
                mem[64] = (32 * _1209) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 352
                require mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 320] - 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 320]
                mem[256] = mem[(32 * mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 320] - 1) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 352]
                if mem[256] <= ext_call.return_data[0]:
                    revert with 0, 'no enough amount'
                if sub_697659f2[mem[108 len 20]] > 0:
                    if mem[256] < ext_call.return_data[0] + sub_697659f2[mem[108 len 20]]:
                        revert with 0, 'no enough amount'
                mem[(32 * _1209) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 388] = msg.sender
                mem[(32 * _1209) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 420] = ext_call.return_data[0]
                mem[(32 * _1209) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 352] = 68
                mem[(32 * _1209) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 388 len 28] = Mask(224, 32, msg.sender) >> 32
                mem[(32 * _1209) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 384 len 4] = unknown_0xa9059cbb(?????)
                mem[(32 * _1209) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 452] = 32
                mem[(32 * _1209) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 484] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[(32 * _1209) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 622 len 26]
                if ext_code.size(address(ext_call.return_data[12 len 20])) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[(32 * _1209) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 516 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
                mem[(32 * _1209) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 608 len 4] = 0
                call address(ext_call.return_data[12 len 20]) with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _1209) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 580 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[12 len 20] > 0:
                            revert with memory
                              from 128
                               len ext_call.return_data[12 len 20]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[12 len 20] > 0:
                        require ext_call.return_data[12 len 20] >= 32
                        if not ext_call.return_data[12 len 20]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _1209) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 626 len 22]
                else:
                    mem[(32 * _1209) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[(32 * _1209) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 548]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _1209) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + ceil32(return_data.size) + 627 len 22]
        else:
            mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 324] = arg2
            mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 356] = ext_call.return_data[50 len 14]
            mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 388] = Mask(112, 0, ext_call.return_data[0])
            if sub_25bc368e[address(cd[(arg4 + 68)])] != 2:
                require ext_code.size(address(cd[(arg4 + 68)]))
                staticcall address(cd[(arg4 + 68)]).getAmountIn(uint256 rg1, uint256 rg2, uint256 rg3) with:
                        gas gas_remaining wei
                       args arg2, ext_call.return_data[50 len 14], ext_call.return_data[0] << 144
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[224] = ext_call.return_data[0]
                require 0 < cd[(arg4 + cd[(arg4 + 132)] + 36)]
                if mem[332 len 20] != address(ext_call.return_data[12 len 20]):
                    revert with 0, 'token incorrect'
                require cd[(arg4 + cd[(arg4 + 132)] + 36)] - 1 < cd[(arg4 + cd[(arg4 + 132)] + 36)]
                if mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)] - 1) + 332 len 20] != mem[140 len 20]:
                    revert with 0, 'token incorrect'
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 324] = arg2
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 356] = ext_call.return_data[0]
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = this.address
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 452] = block.timestamp
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 388] = 160
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 484] = cd[(arg4 + cd[(arg4 + 132)] + 36)]
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 516 len floor32(cd[(arg4 + cd[(arg4 + 132)] + 36)])] = call.data[arg4 + cd[(arg4 + 132)] + 68 len floor32(cd[(arg4 + cd[(arg4 + 132)] + 36)])]
                require ext_code.size(address(cd[(arg4 + 100)]))
                call address(cd[(arg4 + 100)]).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args arg2, ext_call.return_data[0], Array(len=cd[(arg4 + cd[(arg4 + 132)] + 36)], data=call.data[arg4 + cd[(arg4 + 132)] + 68 len floor32(cd[(arg4 + cd[(arg4 + 132)] + 36)])], mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + floor32(cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 516 len (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) - floor32(cd[(arg4 + cd[(arg4 + 132)] + 36)])]), address(this.address), block.timestamp
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 320
                require return_data.size >= 32
                _1192 = mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len 4], Mask(224, 32, arg2) >> 32
                require mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                require mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                require mem[mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320] <= 4294967296 and mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320]) + 32 <= return_data.size
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 320] = mem[mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320]
                _1210 = mem[_1192 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320]
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 352 len floor32(mem[_1192 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320])] = mem[_1192 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 352 len floor32(mem[_1192 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320])]
                mem[64] = (32 * _1210) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 352
                require mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 320] - 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 320]
                mem[256] = mem[(32 * mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 320] - 1) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 352]
                if mem[256] <= ext_call.return_data[0]:
                    revert with 0, 'no enough amount'
                if sub_697659f2[mem[140 len 20]] > 0:
                    if mem[256] < ext_call.return_data[0] + sub_697659f2[mem[140 len 20]]:
                        revert with 0, 'no enough amount'
                mem[(32 * _1210) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 388] = msg.sender
                mem[(32 * _1210) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 420] = ext_call.return_data[0]
                mem[(32 * _1210) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 352] = 68
                mem[(32 * _1210) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 388 len 28] = Mask(224, 32, msg.sender) >> 32
                mem[(32 * _1210) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 384 len 4] = unknown_0xa9059cbb(?????)
                mem[(32 * _1210) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 452] = 32
                mem[(32 * _1210) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 484] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[(32 * _1210) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 622 len 26]
                if ext_code.size(address(ext_call.return_data[12 len 20])) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[(32 * _1210) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 516 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
                mem[(32 * _1210) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 608 len 4] = 0
                call address(ext_call.return_data[12 len 20]) with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _1210) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 580 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[12 len 20] > 0:
                            revert with memory
                              from 128
                               len ext_call.return_data[12 len 20]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[12 len 20] > 0:
                        require ext_call.return_data[12 len 20] >= 32
                        if not ext_call.return_data[12 len 20]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _1210) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 626 len 22]
                else:
                    mem[(32 * _1210) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[(32 * _1210) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 548]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _1210) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + ceil32(return_data.size) + 627 len 22]
            else:
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = address(ext_call.return_data[12 len 20])
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 452] = address(ext_call.return_data[12 len 20])
                require ext_code.size(address(cd[(arg4 + 68)]))
                staticcall address(cd[(arg4 + 68)]).getAmountIn(uint256 rg1, uint256 rg2, uint256 rg3, address rg4, address rg5) with:
                        gas gas_remaining wei
                       args arg2, ext_call.return_data[50 len 14], ext_call.return_data[0] << 144, address(ext_call.return_data[12 len 20]), address(ext_call.return_data[12 len 20])
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[224] = ext_call.return_data[0]
                require 0 < cd[(arg4 + cd[(arg4 + 132)] + 36)]
                if mem[332 len 20] != address(ext_call.return_data[12 len 20]):
                    revert with 0, 'token incorrect'
                require cd[(arg4 + cd[(arg4 + 132)] + 36)] - 1 < cd[(arg4 + cd[(arg4 + 132)] + 36)]
                if mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)] - 1) + 332 len 20] != mem[140 len 20]:
                    revert with 0, 'token incorrect'
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 324] = arg2
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 356] = ext_call.return_data[0]
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = this.address
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 452] = block.timestamp
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 388] = 160
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 484] = cd[(arg4 + cd[(arg4 + 132)] + 36)]
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 516 len floor32(cd[(arg4 + cd[(arg4 + 132)] + 36)])] = call.data[arg4 + cd[(arg4 + 132)] + 68 len floor32(cd[(arg4 + cd[(arg4 + 132)] + 36)])]
                require ext_code.size(address(cd[(arg4 + 100)]))
                call address(cd[(arg4 + 100)]).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args arg2, ext_call.return_data[0], Array(len=cd[(arg4 + cd[(arg4 + 132)] + 36)], data=call.data[arg4 + cd[(arg4 + 132)] + 68 len floor32(cd[(arg4 + cd[(arg4 + 132)] + 36)])], mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + floor32(cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 516 len (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) - floor32(cd[(arg4 + cd[(arg4 + 132)] + 36)])]), address(this.address), block.timestamp
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 320
                require return_data.size >= 32
                _1194 = mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len 4], Mask(224, 32, arg2) >> 32
                require mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                require mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                require mem[mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320] <= 4294967296 and mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320]) + 32 <= return_data.size
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 320] = mem[mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320]
                _1211 = mem[_1194 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320]
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 352 len floor32(mem[_1194 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320])] = mem[_1194 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 352 len floor32(mem[_1194 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320])]
                mem[64] = (32 * _1211) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 352
                require mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 320] - 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 320]
                mem[256] = mem[(32 * mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 320] - 1) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 352]
                if mem[256] <= ext_call.return_data[0]:
                    revert with 0, 'no enough amount'
                if sub_697659f2[mem[140 len 20]] <= 0:
                    mem[(32 * _1211) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 388] = msg.sender
                    mem[(32 * _1211) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 420] = ext_call.return_data[0]
                    mem[(32 * _1211) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 352] = 68
                    mem[(32 * _1211) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 388 len 28] = Mask(224, 32, msg.sender) >> 32
                    mem[(32 * _1211) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 384 len 4] = unknown_0xa9059cbb(?????)
                    mem[(32 * _1211) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 452] = 32
                    mem[(32 * _1211) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 484] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                    mem[(32 * _1211) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 622 len 26]
                    if ext_code.size(address(ext_call.return_data[12 len 20])) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[(32 * _1211) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 516 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
                    mem[(32 * _1211) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 608 len 4] = 0
                    mem[(32 * _1211) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 580 len 0] = 0
                else:
                    if mem[256] < ext_call.return_data[0] + sub_697659f2[mem[140 len 20]]:
                        revert with 0, 'no enough amount'
                    mem[(32 * _1211) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 388] = msg.sender
                    mem[(32 * _1211) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 420] = ext_call.return_data[0]
                    mem[(32 * _1211) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 352] = 68
                    mem[(32 * _1211) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 388 len 28] = Mask(224, 32, msg.sender) >> 32
                    mem[(32 * _1211) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 384 len 4] = unknown_0xa9059cbb(?????)
                    mem[(32 * _1211) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 452] = 32
                    mem[(32 * _1211) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 484] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                    mem[(32 * _1211) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 622 len 26]
                    if ext_code.size(address(ext_call.return_data[12 len 20])) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[(32 * _1211) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 516 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
                    mem[(32 * _1211) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 608 len 4] = 0
                call address(ext_call.return_data[12 len 20]) with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _1211) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 580 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[12 len 20] > 0:
                            revert with memory
                              from 128
                               len ext_call.return_data[12 len 20]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[12 len 20] > 0:
                        require ext_call.return_data[12 len 20] >= 32
                        if not ext_call.return_data[12 len 20]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _1211) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 626 len 22]
                else:
                    mem[(32 * _1211) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[(32 * _1211) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 548]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _1211) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + ceil32(return_data.size) + 627 len 22]
    count++
}

function pangolinCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    if workers[address(arg1)] != 1:
        revert with 0, 'worker reject'
    if not arg2:
        mem[256] = 0
        require arg4.length >= 128
        require cd[(arg4 + 132)] <= 4294967296
        require cd[(arg4 + 132)] + 68 <= arg4.length + 36
        require cd[(arg4 + cd[(arg4 + 132)] + 36)] <= 4294967296 and cd[(arg4 + 132)] + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 68 <= arg4.length + 36
        mem[288] = cd[(arg4 + cd[(arg4 + 132)] + 36)]
        mem[320 len 32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]] = call.data[arg4 + cd[(arg4 + 132)] + 68 len 32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]]
        if sub_12109d52[address(cd[(arg4 + 36)])] <= 0:
            revert with 0, 'not allowed F'
        if sub_25bc368e[address(cd[(arg4 + 68)])] <= 0:
            revert with 0, 'not allowed R1'
        if sub_25bc368e[address(cd[(arg4 + 100)])] <= 0:
            revert with 0, 'not allowed R2'
        require ext_code.size(msg.sender)
        staticcall msg.sender.token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[96] = ext_call.return_data[12 len 20]
        require ext_code.size(msg.sender)
        staticcall msg.sender.token1() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[128] = ext_call.return_data[12 len 20]
        require ext_code.size(address(cd[(arg4 + 36)]))
        staticcall address(cd[(arg4 + 36)]).getPair(address rg1, address rg2) with:
                gas gas_remaining wei
               args address(ext_call.return_data[12 len 20]), address(ext_call.return_data[12 len 20])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[12 len 20] != msg.sender:
            revert with 0, 'wrong LP sender'
        require ext_code.size(msg.sender)
        staticcall msg.sender.getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        mem[192] = ext_call.return_data[50 len 14]
        mem[160] = Mask(112, 0, ext_call.return_data[0])
        mem[0] = address(cd[(arg4 + 68)])
        mem[32] = 6
        if arg2 <= 0:
            mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 324] = arg3
            mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 356] = Mask(112, 0, ext_call.return_data[0])
            mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 388] = ext_call.return_data[50 len 14]
            if sub_25bc368e[address(cd[(arg4 + 68)])] != 2:
                require ext_code.size(address(cd[(arg4 + 68)]))
                staticcall address(cd[(arg4 + 68)]).getAmountIn(uint256 rg1, uint256 rg2, uint256 rg3) with:
                        gas gas_remaining wei
                       args arg3, ext_call.return_data[0] << 144, ext_call.return_data[50 len 14]
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[224] = ext_call.return_data[0]
                require 0 < cd[(arg4 + cd[(arg4 + 132)] + 36)]
                if mem[332 len 20] != address(ext_call.return_data[12 len 20]):
                    revert with 0, 'token incorrect'
                require cd[(arg4 + cd[(arg4 + 132)] + 36)] - 1 < cd[(arg4 + cd[(arg4 + 132)] + 36)]
                if mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)] - 1) + 332 len 20] != mem[108 len 20]:
                    revert with 0, 'token incorrect'
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 324] = arg3
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 356] = ext_call.return_data[0]
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = this.address
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 452] = block.timestamp
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 388] = 160
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 484] = cd[(arg4 + cd[(arg4 + 132)] + 36)]
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 516 len floor32(cd[(arg4 + cd[(arg4 + 132)] + 36)])] = call.data[arg4 + cd[(arg4 + 132)] + 68 len floor32(cd[(arg4 + cd[(arg4 + 132)] + 36)])]
                require ext_code.size(address(cd[(arg4 + 100)]))
                call address(cd[(arg4 + 100)]).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args arg3, ext_call.return_data[0], Array(len=cd[(arg4 + cd[(arg4 + 132)] + 36)], data=call.data[arg4 + cd[(arg4 + 132)] + 68 len floor32(cd[(arg4 + cd[(arg4 + 132)] + 36)])], mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + floor32(cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 516 len (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) - floor32(cd[(arg4 + cd[(arg4 + 132)] + 36)])]), address(this.address), block.timestamp
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 320
                require return_data.size >= 32
                _1180 = mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len 4], Mask(224, 32, arg3) >> 32
                require mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                require mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                require mem[mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320] <= 4294967296 and mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320]) + 32 <= return_data.size
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 320] = mem[mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320]
                _1204 = mem[_1180 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320]
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 352 len floor32(mem[_1180 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320])] = mem[_1180 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 352 len floor32(mem[_1180 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320])]
                mem[64] = (32 * _1204) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 352
                require mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 320] - 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 320]
                mem[256] = mem[(32 * mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 320] - 1) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 352]
                if mem[256] <= ext_call.return_data[0]:
                    revert with 0, 'no enough amount'
                if sub_697659f2[mem[108 len 20]] > 0:
                    if mem[256] < ext_call.return_data[0] + sub_697659f2[mem[108 len 20]]:
                        revert with 0, 'no enough amount'
                mem[(32 * _1204) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 388] = msg.sender
                mem[(32 * _1204) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 420] = ext_call.return_data[0]
                mem[(32 * _1204) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 352] = 68
                mem[(32 * _1204) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 388 len 28] = Mask(224, 32, msg.sender) >> 32
                mem[(32 * _1204) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 384 len 4] = unknown_0xa9059cbb(?????)
                mem[(32 * _1204) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 452] = 32
                mem[(32 * _1204) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 484] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[(32 * _1204) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 622 len 26]
                if ext_code.size(address(ext_call.return_data[12 len 20])) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[(32 * _1204) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 516 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
                mem[(32 * _1204) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 608 len 4] = 0
                call address(ext_call.return_data[12 len 20]) with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _1204) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 580 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[12 len 20] > 0:
                            revert with memory
                              from 128
                               len ext_call.return_data[12 len 20]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[12 len 20] > 0:
                        require ext_call.return_data[12 len 20] >= 32
                        if not ext_call.return_data[12 len 20]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _1204) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 626 len 22]
                else:
                    mem[(32 * _1204) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[(32 * _1204) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 548]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _1204) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + ceil32(return_data.size) + 627 len 22]
            else:
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = address(ext_call.return_data[12 len 20])
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 452] = address(ext_call.return_data[12 len 20])
                require ext_code.size(address(cd[(arg4 + 68)]))
                staticcall address(cd[(arg4 + 68)]).getAmountIn(uint256 rg1, uint256 rg2, uint256 rg3, address rg4, address rg5) with:
                        gas gas_remaining wei
                       args arg3, ext_call.return_data[0] << 144, ext_call.return_data[50 len 14], address(ext_call.return_data[12 len 20]), address(ext_call.return_data[12 len 20])
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[224] = ext_call.return_data[0]
                require 0 < cd[(arg4 + cd[(arg4 + 132)] + 36)]
                if mem[332 len 20] != address(ext_call.return_data[12 len 20]):
                    revert with 0, 'token incorrect'
                require cd[(arg4 + cd[(arg4 + 132)] + 36)] - 1 < cd[(arg4 + cd[(arg4 + 132)] + 36)]
                if mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)] - 1) + 332 len 20] != mem[108 len 20]:
                    revert with 0, 'token incorrect'
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 324] = arg3
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 356] = ext_call.return_data[0]
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = this.address
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 452] = block.timestamp
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 388] = 160
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 484] = cd[(arg4 + cd[(arg4 + 132)] + 36)]
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 516 len floor32(cd[(arg4 + cd[(arg4 + 132)] + 36)])] = call.data[arg4 + cd[(arg4 + 132)] + 68 len floor32(cd[(arg4 + cd[(arg4 + 132)] + 36)])]
                require ext_code.size(address(cd[(arg4 + 100)]))
                call address(cd[(arg4 + 100)]).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args arg3, ext_call.return_data[0], Array(len=cd[(arg4 + cd[(arg4 + 132)] + 36)], data=call.data[arg4 + cd[(arg4 + 132)] + 68 len floor32(cd[(arg4 + cd[(arg4 + 132)] + 36)])], mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + floor32(cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 516 len (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) - floor32(cd[(arg4 + cd[(arg4 + 132)] + 36)])]), address(this.address), block.timestamp
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 320
                require return_data.size >= 32
                _1182 = mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len 4], Mask(224, 32, arg3) >> 32
                require mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                require mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                require mem[mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320] <= 4294967296 and mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320]) + 32 <= return_data.size
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 320] = mem[mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320]
                _1205 = mem[_1182 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320]
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 352 len floor32(mem[_1182 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320])] = mem[_1182 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 352 len floor32(mem[_1182 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320])]
                mem[64] = (32 * _1205) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 352
                require mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 320] - 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 320]
                mem[256] = mem[(32 * mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 320] - 1) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 352]
                if mem[256] <= ext_call.return_data[0]:
                    revert with 0, 'no enough amount'
                if sub_697659f2[mem[108 len 20]] > 0:
                    if mem[256] < ext_call.return_data[0] + sub_697659f2[mem[108 len 20]]:
                        revert with 0, 'no enough amount'
                mem[(32 * _1205) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 388] = msg.sender
                mem[(32 * _1205) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 420] = ext_call.return_data[0]
                mem[(32 * _1205) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 352] = 68
                mem[(32 * _1205) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 388 len 28] = Mask(224, 32, msg.sender) >> 32
                mem[(32 * _1205) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 384 len 4] = unknown_0xa9059cbb(?????)
                mem[(32 * _1205) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 452] = 32
                mem[(32 * _1205) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 484] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[(32 * _1205) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 622 len 26]
                if ext_code.size(address(ext_call.return_data[12 len 20])) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[(32 * _1205) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 516 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
                mem[(32 * _1205) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 608 len 4] = 0
                call address(ext_call.return_data[12 len 20]) with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _1205) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 580 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[12 len 20] > 0:
                            revert with memory
                              from 128
                               len ext_call.return_data[12 len 20]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[12 len 20] > 0:
                        require ext_call.return_data[12 len 20] >= 32
                        if not ext_call.return_data[12 len 20]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _1205) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 626 len 22]
                else:
                    mem[(32 * _1205) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[(32 * _1205) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 548]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _1205) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + ceil32(return_data.size) + 627 len 22]
        else:
            mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 324] = arg2
            mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 356] = ext_call.return_data[50 len 14]
            mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 388] = Mask(112, 0, ext_call.return_data[0])
            if sub_25bc368e[address(cd[(arg4 + 68)])] != 2:
                require ext_code.size(address(cd[(arg4 + 68)]))
                staticcall address(cd[(arg4 + 68)]).getAmountIn(uint256 rg1, uint256 rg2, uint256 rg3) with:
                        gas gas_remaining wei
                       args arg2, ext_call.return_data[50 len 14], ext_call.return_data[0] << 144
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[224] = ext_call.return_data[0]
                require 0 < cd[(arg4 + cd[(arg4 + 132)] + 36)]
                if mem[332 len 20] != address(ext_call.return_data[12 len 20]):
                    revert with 0, 'token incorrect'
                require cd[(arg4 + cd[(arg4 + 132)] + 36)] - 1 < cd[(arg4 + cd[(arg4 + 132)] + 36)]
                if mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)] - 1) + 332 len 20] != mem[140 len 20]:
                    revert with 0, 'token incorrect'
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 324] = arg2
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 356] = ext_call.return_data[0]
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = this.address
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 452] = block.timestamp
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 388] = 160
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 484] = cd[(arg4 + cd[(arg4 + 132)] + 36)]
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 516 len floor32(cd[(arg4 + cd[(arg4 + 132)] + 36)])] = call.data[arg4 + cd[(arg4 + 132)] + 68 len floor32(cd[(arg4 + cd[(arg4 + 132)] + 36)])]
                require ext_code.size(address(cd[(arg4 + 100)]))
                call address(cd[(arg4 + 100)]).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args arg2, ext_call.return_data[0], Array(len=cd[(arg4 + cd[(arg4 + 132)] + 36)], data=call.data[arg4 + cd[(arg4 + 132)] + 68 len floor32(cd[(arg4 + cd[(arg4 + 132)] + 36)])], mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + floor32(cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 516 len (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) - floor32(cd[(arg4 + cd[(arg4 + 132)] + 36)])]), address(this.address), block.timestamp
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 320
                require return_data.size >= 32
                _1184 = mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len 4], Mask(224, 32, arg2) >> 32
                require mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                require mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                require mem[mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320] <= 4294967296 and mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320]) + 32 <= return_data.size
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 320] = mem[mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320]
                _1206 = mem[_1184 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320]
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 352 len floor32(mem[_1184 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320])] = mem[_1184 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 352 len floor32(mem[_1184 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320])]
                mem[64] = (32 * _1206) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 352
                require mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 320] - 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 320]
                mem[256] = mem[(32 * mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 320] - 1) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 352]
                if mem[256] <= ext_call.return_data[0]:
                    revert with 0, 'no enough amount'
                if sub_697659f2[mem[140 len 20]] > 0:
                    if mem[256] < ext_call.return_data[0] + sub_697659f2[mem[140 len 20]]:
                        revert with 0, 'no enough amount'
                mem[(32 * _1206) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 388] = msg.sender
                mem[(32 * _1206) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 420] = ext_call.return_data[0]
                mem[(32 * _1206) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 352] = 68
                mem[(32 * _1206) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 388 len 28] = Mask(224, 32, msg.sender) >> 32
                mem[(32 * _1206) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 384 len 4] = unknown_0xa9059cbb(?????)
                mem[(32 * _1206) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 452] = 32
                mem[(32 * _1206) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 484] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[(32 * _1206) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 622 len 26]
                if ext_code.size(address(ext_call.return_data[12 len 20])) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[(32 * _1206) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 516 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
                mem[(32 * _1206) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 608 len 4] = 0
                call address(ext_call.return_data[12 len 20]) with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _1206) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 580 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[12 len 20] > 0:
                            revert with memory
                              from 128
                               len ext_call.return_data[12 len 20]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[12 len 20] > 0:
                        require ext_call.return_data[12 len 20] >= 32
                        if not ext_call.return_data[12 len 20]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _1206) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 626 len 22]
                else:
                    mem[(32 * _1206) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[(32 * _1206) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 548]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _1206) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + ceil32(return_data.size) + 627 len 22]
            else:
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = address(ext_call.return_data[12 len 20])
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 452] = address(ext_call.return_data[12 len 20])
                require ext_code.size(address(cd[(arg4 + 68)]))
                staticcall address(cd[(arg4 + 68)]).getAmountIn(uint256 rg1, uint256 rg2, uint256 rg3, address rg4, address rg5) with:
                        gas gas_remaining wei
                       args arg2, ext_call.return_data[50 len 14], ext_call.return_data[0] << 144, address(ext_call.return_data[12 len 20]), address(ext_call.return_data[12 len 20])
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[224] = ext_call.return_data[0]
                require 0 < cd[(arg4 + cd[(arg4 + 132)] + 36)]
                if mem[332 len 20] != address(ext_call.return_data[12 len 20]):
                    revert with 0, 'token incorrect'
                require cd[(arg4 + cd[(arg4 + 132)] + 36)] - 1 < cd[(arg4 + cd[(arg4 + 132)] + 36)]
                if mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)] - 1) + 332 len 20] != mem[140 len 20]:
                    revert with 0, 'token incorrect'
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 324] = arg2
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 356] = ext_call.return_data[0]
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = this.address
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 452] = block.timestamp
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 388] = 160
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 484] = cd[(arg4 + cd[(arg4 + 132)] + 36)]
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 516 len floor32(cd[(arg4 + cd[(arg4 + 132)] + 36)])] = call.data[arg4 + cd[(arg4 + 132)] + 68 len floor32(cd[(arg4 + cd[(arg4 + 132)] + 36)])]
                require ext_code.size(address(cd[(arg4 + 100)]))
                call address(cd[(arg4 + 100)]).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args arg2, ext_call.return_data[0], Array(len=cd[(arg4 + cd[(arg4 + 132)] + 36)], data=call.data[arg4 + cd[(arg4 + 132)] + 68 len floor32(cd[(arg4 + cd[(arg4 + 132)] + 36)])], mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + floor32(cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 516 len (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) - floor32(cd[(arg4 + cd[(arg4 + 132)] + 36)])]), address(this.address), block.timestamp
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 320
                require return_data.size >= 32
                _1186 = mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len 4], Mask(224, 32, arg2) >> 32
                require mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                require mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                require mem[mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320] <= 4294967296 and mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320]) + 32 <= return_data.size
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 320] = mem[mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320]
                _1207 = mem[_1186 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320]
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 352 len floor32(mem[_1186 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320])] = mem[_1186 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 352 len floor32(mem[_1186 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320])]
                mem[64] = (32 * _1207) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 352
                require mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 320] - 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 320]
                mem[256] = mem[(32 * mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 320] - 1) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 352]
                if mem[256] <= ext_call.return_data[0]:
                    revert with 0, 'no enough amount'
                if sub_697659f2[mem[140 len 20]] > 0:
                    if mem[256] < ext_call.return_data[0] + sub_697659f2[mem[140 len 20]]:
                        revert with 0, 'no enough amount'
                mem[(32 * _1207) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 388] = msg.sender
                mem[(32 * _1207) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 420] = ext_call.return_data[0]
                mem[(32 * _1207) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 352] = 68
                mem[(32 * _1207) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 388 len 28] = Mask(224, 32, msg.sender) >> 32
                mem[(32 * _1207) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 384 len 4] = unknown_0xa9059cbb(?????)
                mem[(32 * _1207) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 452] = 32
                mem[(32 * _1207) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 484] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[(32 * _1207) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 622 len 26]
                if ext_code.size(address(ext_call.return_data[12 len 20])) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[(32 * _1207) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 516 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
                mem[(32 * _1207) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 608 len 4] = 0
                call address(ext_call.return_data[12 len 20]) with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _1207) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 580 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[12 len 20] > 0:
                            revert with memory
                              from 128
                               len ext_call.return_data[12 len 20]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[12 len 20] > 0:
                        require ext_call.return_data[12 len 20] >= 32
                        if not ext_call.return_data[12 len 20]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _1207) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 626 len 22]
                else:
                    mem[(32 * _1207) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[(32 * _1207) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 548]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _1207) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + ceil32(return_data.size) + 627 len 22]
    else:
        if arg3:
            revert with 0, 'need zero'
        mem[256] = 0
        require arg4.length >= 128
        require cd[(arg4 + 132)] <= 4294967296
        require cd[(arg4 + 132)] + 68 <= arg4.length + 36
        require cd[(arg4 + cd[(arg4 + 132)] + 36)] <= 4294967296 and cd[(arg4 + 132)] + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 68 <= arg4.length + 36
        mem[288] = cd[(arg4 + cd[(arg4 + 132)] + 36)]
        mem[320 len 32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]] = call.data[arg4 + cd[(arg4 + 132)] + 68 len 32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]]
        if sub_12109d52[address(cd[(arg4 + 36)])] <= 0:
            revert with 0, 'not allowed F'
        if sub_25bc368e[address(cd[(arg4 + 68)])] <= 0:
            revert with 0, 'not allowed R1'
        if sub_25bc368e[address(cd[(arg4 + 100)])] <= 0:
            revert with 0, 'not allowed R2'
        require ext_code.size(msg.sender)
        staticcall msg.sender.token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[96] = ext_call.return_data[12 len 20]
        require ext_code.size(msg.sender)
        staticcall msg.sender.token1() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[128] = ext_call.return_data[12 len 20]
        require ext_code.size(address(cd[(arg4 + 36)]))
        staticcall address(cd[(arg4 + 36)]).getPair(address rg1, address rg2) with:
                gas gas_remaining wei
               args address(ext_call.return_data[12 len 20]), address(ext_call.return_data[12 len 20])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[12 len 20] != msg.sender:
            revert with 0, 'wrong LP sender'
        require ext_code.size(msg.sender)
        staticcall msg.sender.getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        mem[192] = ext_call.return_data[50 len 14]
        mem[160] = Mask(112, 0, ext_call.return_data[0])
        mem[0] = address(cd[(arg4 + 68)])
        mem[32] = 6
        if arg2 <= 0:
            mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 324] = arg3
            mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 356] = Mask(112, 0, ext_call.return_data[0])
            mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 388] = ext_call.return_data[50 len 14]
            if sub_25bc368e[address(cd[(arg4 + 68)])] != 2:
                require ext_code.size(address(cd[(arg4 + 68)]))
                staticcall address(cd[(arg4 + 68)]).getAmountIn(uint256 rg1, uint256 rg2, uint256 rg3) with:
                        gas gas_remaining wei
                       args arg3, ext_call.return_data[0] << 144, ext_call.return_data[50 len 14]
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[224] = ext_call.return_data[0]
                require 0 < cd[(arg4 + cd[(arg4 + 132)] + 36)]
                if mem[332 len 20] != address(ext_call.return_data[12 len 20]):
                    revert with 0, 'token incorrect'
                require cd[(arg4 + cd[(arg4 + 132)] + 36)] - 1 < cd[(arg4 + cd[(arg4 + 132)] + 36)]
                if mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)] - 1) + 332 len 20] != mem[108 len 20]:
                    revert with 0, 'token incorrect'
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 324] = arg3
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 356] = ext_call.return_data[0]
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = this.address
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 452] = block.timestamp
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 388] = 160
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 484] = cd[(arg4 + cd[(arg4 + 132)] + 36)]
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 516 len floor32(cd[(arg4 + cd[(arg4 + 132)] + 36)])] = call.data[arg4 + cd[(arg4 + 132)] + 68 len floor32(cd[(arg4 + cd[(arg4 + 132)] + 36)])]
                require ext_code.size(address(cd[(arg4 + 100)]))
                call address(cd[(arg4 + 100)]).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args arg3, ext_call.return_data[0], Array(len=cd[(arg4 + cd[(arg4 + 132)] + 36)], data=call.data[arg4 + cd[(arg4 + 132)] + 68 len floor32(cd[(arg4 + cd[(arg4 + 132)] + 36)])], mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + floor32(cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 516 len (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) - floor32(cd[(arg4 + cd[(arg4 + 132)] + 36)])]), address(this.address), block.timestamp
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 320
                require return_data.size >= 32
                _1188 = mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len 4], Mask(224, 32, arg3) >> 32
                require mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                require mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                require mem[mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320] <= 4294967296 and mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320]) + 32 <= return_data.size
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 320] = mem[mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320]
                _1208 = mem[_1188 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320]
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 352 len floor32(mem[_1188 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320])] = mem[_1188 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 352 len floor32(mem[_1188 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320])]
                mem[64] = (32 * _1208) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 352
                require mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 320] - 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 320]
                mem[256] = mem[(32 * mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 320] - 1) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 352]
                if mem[256] <= ext_call.return_data[0]:
                    revert with 0, 'no enough amount'
                if sub_697659f2[mem[108 len 20]] <= 0:
                    mem[(32 * _1208) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 388] = msg.sender
                    mem[(32 * _1208) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 420] = ext_call.return_data[0]
                    mem[(32 * _1208) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 352] = 68
                    mem[(32 * _1208) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 388 len 28] = Mask(224, 32, msg.sender) >> 32
                    mem[(32 * _1208) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 384 len 4] = unknown_0xa9059cbb(?????)
                    mem[(32 * _1208) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 452] = 32
                    mem[(32 * _1208) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 484] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                    mem[(32 * _1208) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 622 len 26]
                    if ext_code.size(address(ext_call.return_data[12 len 20])) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[(32 * _1208) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 516 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
                    mem[(32 * _1208) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 608 len 4] = 0
                else:
                    if mem[256] < ext_call.return_data[0] + sub_697659f2[mem[108 len 20]]:
                        revert with 0, 'no enough amount'
                    mem[(32 * _1208) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 388] = msg.sender
                    mem[(32 * _1208) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 420] = ext_call.return_data[0]
                    mem[(32 * _1208) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 352] = 68
                    mem[(32 * _1208) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 388 len 28] = Mask(224, 32, msg.sender) >> 32
                    mem[(32 * _1208) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 384 len 4] = unknown_0xa9059cbb(?????)
                    mem[(32 * _1208) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 452] = 32
                    mem[(32 * _1208) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 484] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                    mem[(32 * _1208) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 622 len 26]
                    if ext_code.size(address(ext_call.return_data[12 len 20])) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[(32 * _1208) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 516 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
                    mem[(32 * _1208) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 608 len 4] = 0
                    mem[(32 * _1208) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 580 len 0] = 0
                call address(ext_call.return_data[12 len 20]) with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _1208) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 580 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[12 len 20] > 0:
                            revert with memory
                              from 128
                               len ext_call.return_data[12 len 20]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[12 len 20] > 0:
                        require ext_call.return_data[12 len 20] >= 32
                        if not ext_call.return_data[12 len 20]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _1208) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 626 len 22]
                else:
                    mem[(32 * _1208) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[(32 * _1208) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 548]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _1208) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + ceil32(return_data.size) + 627 len 22]
            else:
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = address(ext_call.return_data[12 len 20])
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 452] = address(ext_call.return_data[12 len 20])
                require ext_code.size(address(cd[(arg4 + 68)]))
                staticcall address(cd[(arg4 + 68)]).getAmountIn(uint256 rg1, uint256 rg2, uint256 rg3, address rg4, address rg5) with:
                        gas gas_remaining wei
                       args arg3, ext_call.return_data[0] << 144, ext_call.return_data[50 len 14], address(ext_call.return_data[12 len 20]), address(ext_call.return_data[12 len 20])
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[224] = ext_call.return_data[0]
                require 0 < cd[(arg4 + cd[(arg4 + 132)] + 36)]
                if mem[332 len 20] != address(ext_call.return_data[12 len 20]):
                    revert with 0, 'token incorrect'
                require cd[(arg4 + cd[(arg4 + 132)] + 36)] - 1 < cd[(arg4 + cd[(arg4 + 132)] + 36)]
                if mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)] - 1) + 332 len 20] != mem[108 len 20]:
                    revert with 0, 'token incorrect'
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 324] = arg3
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 356] = ext_call.return_data[0]
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = this.address
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 452] = block.timestamp
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 388] = 160
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 484] = cd[(arg4 + cd[(arg4 + 132)] + 36)]
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 516 len floor32(cd[(arg4 + cd[(arg4 + 132)] + 36)])] = call.data[arg4 + cd[(arg4 + 132)] + 68 len floor32(cd[(arg4 + cd[(arg4 + 132)] + 36)])]
                require ext_code.size(address(cd[(arg4 + 100)]))
                call address(cd[(arg4 + 100)]).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args arg3, ext_call.return_data[0], Array(len=cd[(arg4 + cd[(arg4 + 132)] + 36)], data=call.data[arg4 + cd[(arg4 + 132)] + 68 len floor32(cd[(arg4 + cd[(arg4 + 132)] + 36)])], mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + floor32(cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 516 len (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) - floor32(cd[(arg4 + cd[(arg4 + 132)] + 36)])]), address(this.address), block.timestamp
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 320
                require return_data.size >= 32
                _1190 = mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len 4], Mask(224, 32, arg3) >> 32
                require mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                require mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                require mem[mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320] <= 4294967296 and mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320]) + 32 <= return_data.size
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 320] = mem[mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320]
                _1209 = mem[_1190 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320]
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 352 len floor32(mem[_1190 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320])] = mem[_1190 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 352 len floor32(mem[_1190 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320])]
                mem[64] = (32 * _1209) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 352
                require mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 320] - 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 320]
                mem[256] = mem[(32 * mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 320] - 1) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 352]
                if mem[256] <= ext_call.return_data[0]:
                    revert with 0, 'no enough amount'
                if sub_697659f2[mem[108 len 20]] > 0:
                    if mem[256] < ext_call.return_data[0] + sub_697659f2[mem[108 len 20]]:
                        revert with 0, 'no enough amount'
                mem[(32 * _1209) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 388] = msg.sender
                mem[(32 * _1209) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 420] = ext_call.return_data[0]
                mem[(32 * _1209) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 352] = 68
                mem[(32 * _1209) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 388 len 28] = Mask(224, 32, msg.sender) >> 32
                mem[(32 * _1209) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 384 len 4] = unknown_0xa9059cbb(?????)
                mem[(32 * _1209) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 452] = 32
                mem[(32 * _1209) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 484] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[(32 * _1209) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 622 len 26]
                if ext_code.size(address(ext_call.return_data[12 len 20])) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[(32 * _1209) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 516 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
                mem[(32 * _1209) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 608 len 4] = 0
                call address(ext_call.return_data[12 len 20]) with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _1209) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 580 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[12 len 20] > 0:
                            revert with memory
                              from 128
                               len ext_call.return_data[12 len 20]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[12 len 20] > 0:
                        require ext_call.return_data[12 len 20] >= 32
                        if not ext_call.return_data[12 len 20]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _1209) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 626 len 22]
                else:
                    mem[(32 * _1209) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[(32 * _1209) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 548]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _1209) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + ceil32(return_data.size) + 627 len 22]
        else:
            mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 324] = arg2
            mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 356] = ext_call.return_data[50 len 14]
            mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 388] = Mask(112, 0, ext_call.return_data[0])
            if sub_25bc368e[address(cd[(arg4 + 68)])] != 2:
                require ext_code.size(address(cd[(arg4 + 68)]))
                staticcall address(cd[(arg4 + 68)]).getAmountIn(uint256 rg1, uint256 rg2, uint256 rg3) with:
                        gas gas_remaining wei
                       args arg2, ext_call.return_data[50 len 14], ext_call.return_data[0] << 144
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[224] = ext_call.return_data[0]
                require 0 < cd[(arg4 + cd[(arg4 + 132)] + 36)]
                if mem[332 len 20] != address(ext_call.return_data[12 len 20]):
                    revert with 0, 'token incorrect'
                require cd[(arg4 + cd[(arg4 + 132)] + 36)] - 1 < cd[(arg4 + cd[(arg4 + 132)] + 36)]
                if mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)] - 1) + 332 len 20] != mem[140 len 20]:
                    revert with 0, 'token incorrect'
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 324] = arg2
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 356] = ext_call.return_data[0]
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = this.address
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 452] = block.timestamp
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 388] = 160
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 484] = cd[(arg4 + cd[(arg4 + 132)] + 36)]
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 516 len floor32(cd[(arg4 + cd[(arg4 + 132)] + 36)])] = call.data[arg4 + cd[(arg4 + 132)] + 68 len floor32(cd[(arg4 + cd[(arg4 + 132)] + 36)])]
                require ext_code.size(address(cd[(arg4 + 100)]))
                call address(cd[(arg4 + 100)]).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args arg2, ext_call.return_data[0], Array(len=cd[(arg4 + cd[(arg4 + 132)] + 36)], data=call.data[arg4 + cd[(arg4 + 132)] + 68 len floor32(cd[(arg4 + cd[(arg4 + 132)] + 36)])], mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + floor32(cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 516 len (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) - floor32(cd[(arg4 + cd[(arg4 + 132)] + 36)])]), address(this.address), block.timestamp
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 320
                require return_data.size >= 32
                _1192 = mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len 4], Mask(224, 32, arg2) >> 32
                require mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                require mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                require mem[mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320] <= 4294967296 and mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320]) + 32 <= return_data.size
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 320] = mem[mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320]
                _1210 = mem[_1192 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320]
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 352 len floor32(mem[_1192 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320])] = mem[_1192 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 352 len floor32(mem[_1192 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320])]
                mem[64] = (32 * _1210) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 352
                require mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 320] - 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 320]
                mem[256] = mem[(32 * mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 320] - 1) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 352]
                if mem[256] <= ext_call.return_data[0]:
                    revert with 0, 'no enough amount'
                if sub_697659f2[mem[140 len 20]] > 0:
                    if mem[256] < ext_call.return_data[0] + sub_697659f2[mem[140 len 20]]:
                        revert with 0, 'no enough amount'
                mem[(32 * _1210) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 388] = msg.sender
                mem[(32 * _1210) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 420] = ext_call.return_data[0]
                mem[(32 * _1210) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 352] = 68
                mem[(32 * _1210) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 388 len 28] = Mask(224, 32, msg.sender) >> 32
                mem[(32 * _1210) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 384 len 4] = unknown_0xa9059cbb(?????)
                mem[(32 * _1210) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 452] = 32
                mem[(32 * _1210) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 484] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[(32 * _1210) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 622 len 26]
                if ext_code.size(address(ext_call.return_data[12 len 20])) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[(32 * _1210) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 516 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
                mem[(32 * _1210) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 608 len 4] = 0
                call address(ext_call.return_data[12 len 20]) with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _1210) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 580 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[12 len 20] > 0:
                            revert with memory
                              from 128
                               len ext_call.return_data[12 len 20]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[12 len 20] > 0:
                        require ext_call.return_data[12 len 20] >= 32
                        if not ext_call.return_data[12 len 20]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _1210) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 626 len 22]
                else:
                    mem[(32 * _1210) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[(32 * _1210) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 548]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _1210) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + ceil32(return_data.size) + 627 len 22]
            else:
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = address(ext_call.return_data[12 len 20])
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 452] = address(ext_call.return_data[12 len 20])
                require ext_code.size(address(cd[(arg4 + 68)]))
                staticcall address(cd[(arg4 + 68)]).getAmountIn(uint256 rg1, uint256 rg2, uint256 rg3, address rg4, address rg5) with:
                        gas gas_remaining wei
                       args arg2, ext_call.return_data[50 len 14], ext_call.return_data[0] << 144, address(ext_call.return_data[12 len 20]), address(ext_call.return_data[12 len 20])
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[224] = ext_call.return_data[0]
                require 0 < cd[(arg4 + cd[(arg4 + 132)] + 36)]
                if mem[332 len 20] != address(ext_call.return_data[12 len 20]):
                    revert with 0, 'token incorrect'
                require cd[(arg4 + cd[(arg4 + 132)] + 36)] - 1 < cd[(arg4 + cd[(arg4 + 132)] + 36)]
                if mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)] - 1) + 332 len 20] != mem[140 len 20]:
                    revert with 0, 'token incorrect'
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 324] = arg2
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 356] = ext_call.return_data[0]
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = this.address
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 452] = block.timestamp
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 388] = 160
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 484] = cd[(arg4 + cd[(arg4 + 132)] + 36)]
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 516 len floor32(cd[(arg4 + cd[(arg4 + 132)] + 36)])] = call.data[arg4 + cd[(arg4 + 132)] + 68 len floor32(cd[(arg4 + cd[(arg4 + 132)] + 36)])]
                require ext_code.size(address(cd[(arg4 + 100)]))
                call address(cd[(arg4 + 100)]).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args arg2, ext_call.return_data[0], Array(len=cd[(arg4 + cd[(arg4 + 132)] + 36)], data=call.data[arg4 + cd[(arg4 + 132)] + 68 len floor32(cd[(arg4 + cd[(arg4 + 132)] + 36)])], mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + floor32(cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 516 len (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) - floor32(cd[(arg4 + cd[(arg4 + 132)] + 36)])]), address(this.address), block.timestamp
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 320
                require return_data.size >= 32
                _1194 = mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len 4], Mask(224, 32, arg2) >> 32
                require mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                require mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                require mem[mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320] <= 4294967296 and mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320]) + 32 <= return_data.size
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 320] = mem[mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320]
                _1211 = mem[_1194 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320]
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 352 len floor32(mem[_1194 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320])] = mem[_1194 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 352 len floor32(mem[_1194 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320])]
                mem[64] = (32 * _1211) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 352
                require mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 320] - 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 320]
                mem[256] = mem[(32 * mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 320] - 1) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 352]
                if mem[256] <= ext_call.return_data[0]:
                    revert with 0, 'no enough amount'
                if sub_697659f2[mem[140 len 20]] <= 0:
                    mem[(32 * _1211) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 388] = msg.sender
                    mem[(32 * _1211) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 420] = ext_call.return_data[0]
                    mem[(32 * _1211) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 352] = 68
                    mem[(32 * _1211) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 388 len 28] = Mask(224, 32, msg.sender) >> 32
                    mem[(32 * _1211) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 384 len 4] = unknown_0xa9059cbb(?????)
                    mem[(32 * _1211) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 452] = 32
                    mem[(32 * _1211) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 484] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                    mem[(32 * _1211) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 622 len 26]
                    if ext_code.size(address(ext_call.return_data[12 len 20])) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[(32 * _1211) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 516 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
                    mem[(32 * _1211) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 608 len 4] = 0
                    mem[(32 * _1211) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 580 len 0] = 0
                else:
                    if mem[256] < ext_call.return_data[0] + sub_697659f2[mem[140 len 20]]:
                        revert with 0, 'no enough amount'
                    mem[(32 * _1211) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 388] = msg.sender
                    mem[(32 * _1211) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 420] = ext_call.return_data[0]
                    mem[(32 * _1211) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 352] = 68
                    mem[(32 * _1211) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 388 len 28] = Mask(224, 32, msg.sender) >> 32
                    mem[(32 * _1211) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 384 len 4] = unknown_0xa9059cbb(?????)
                    mem[(32 * _1211) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 452] = 32
                    mem[(32 * _1211) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 484] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                    mem[(32 * _1211) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 622 len 26]
                    if ext_code.size(address(ext_call.return_data[12 len 20])) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[(32 * _1211) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 516 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
                    mem[(32 * _1211) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 608 len 4] = 0
                call address(ext_call.return_data[12 len 20]) with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _1211) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 580 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[12 len 20] > 0:
                            revert with memory
                              from 128
                               len ext_call.return_data[12 len 20]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[12 len 20] > 0:
                        require ext_call.return_data[12 len 20] >= 32
                        if not ext_call.return_data[12 len 20]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _1211) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 626 len 22]
                else:
                    mem[(32 * _1211) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[(32 * _1211) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 548]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _1211) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + ceil32(return_data.size) + 627 len 22]
    count++
}

function uniswapV2Call(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    if workers[address(arg1)] != 1:
        revert with 0, 'worker reject'
    if not arg2:
        mem[256] = 0
        require arg4.length >= 128
        require cd[(arg4 + 132)] <= 4294967296
        require cd[(arg4 + 132)] + 68 <= arg4.length + 36
        require cd[(arg4 + cd[(arg4 + 132)] + 36)] <= 4294967296 and cd[(arg4 + 132)] + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 68 <= arg4.length + 36
        mem[288] = cd[(arg4 + cd[(arg4 + 132)] + 36)]
        mem[320 len 32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]] = call.data[arg4 + cd[(arg4 + 132)] + 68 len 32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]]
        if sub_12109d52[address(cd[(arg4 + 36)])] <= 0:
            revert with 0, 'not allowed F'
        if sub_25bc368e[address(cd[(arg4 + 68)])] <= 0:
            revert with 0, 'not allowed R1'
        if sub_25bc368e[address(cd[(arg4 + 100)])] <= 0:
            revert with 0, 'not allowed R2'
        require ext_code.size(msg.sender)
        staticcall msg.sender.token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[96] = ext_call.return_data[12 len 20]
        require ext_code.size(msg.sender)
        staticcall msg.sender.token1() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[128] = ext_call.return_data[12 len 20]
        require ext_code.size(address(cd[(arg4 + 36)]))
        staticcall address(cd[(arg4 + 36)]).getPair(address rg1, address rg2) with:
                gas gas_remaining wei
               args address(ext_call.return_data[12 len 20]), address(ext_call.return_data[12 len 20])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[12 len 20] != msg.sender:
            revert with 0, 'wrong LP sender'
        require ext_code.size(msg.sender)
        staticcall msg.sender.getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        mem[192] = ext_call.return_data[50 len 14]
        mem[160] = Mask(112, 0, ext_call.return_data[0])
        mem[0] = address(cd[(arg4 + 68)])
        mem[32] = 6
        if arg2 <= 0:
            mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 324] = arg3
            mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 356] = Mask(112, 0, ext_call.return_data[0])
            mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 388] = ext_call.return_data[50 len 14]
            if sub_25bc368e[address(cd[(arg4 + 68)])] != 2:
                require ext_code.size(address(cd[(arg4 + 68)]))
                staticcall address(cd[(arg4 + 68)]).getAmountIn(uint256 rg1, uint256 rg2, uint256 rg3) with:
                        gas gas_remaining wei
                       args arg3, ext_call.return_data[0] << 144, ext_call.return_data[50 len 14]
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[224] = ext_call.return_data[0]
                require 0 < cd[(arg4 + cd[(arg4 + 132)] + 36)]
                if mem[332 len 20] != address(ext_call.return_data[12 len 20]):
                    revert with 0, 'token incorrect'
                require cd[(arg4 + cd[(arg4 + 132)] + 36)] - 1 < cd[(arg4 + cd[(arg4 + 132)] + 36)]
                if mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)] - 1) + 332 len 20] != mem[108 len 20]:
                    revert with 0, 'token incorrect'
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 324] = arg3
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 356] = ext_call.return_data[0]
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = this.address
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 452] = block.timestamp
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 388] = 160
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 484] = cd[(arg4 + cd[(arg4 + 132)] + 36)]
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 516 len floor32(cd[(arg4 + cd[(arg4 + 132)] + 36)])] = call.data[arg4 + cd[(arg4 + 132)] + 68 len floor32(cd[(arg4 + cd[(arg4 + 132)] + 36)])]
                require ext_code.size(address(cd[(arg4 + 100)]))
                call address(cd[(arg4 + 100)]).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args arg3, ext_call.return_data[0], Array(len=cd[(arg4 + cd[(arg4 + 132)] + 36)], data=call.data[arg4 + cd[(arg4 + 132)] + 68 len floor32(cd[(arg4 + cd[(arg4 + 132)] + 36)])], mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + floor32(cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 516 len (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) - floor32(cd[(arg4 + cd[(arg4 + 132)] + 36)])]), address(this.address), block.timestamp
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 320
                require return_data.size >= 32
                _1180 = mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len 4], Mask(224, 32, arg3) >> 32
                require mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                require mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                require mem[mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320] <= 4294967296 and mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320]) + 32 <= return_data.size
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 320] = mem[mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320]
                _1204 = mem[_1180 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320]
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 352 len floor32(mem[_1180 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320])] = mem[_1180 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 352 len floor32(mem[_1180 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320])]
                mem[64] = (32 * _1204) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 352
                require mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 320] - 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 320]
                mem[256] = mem[(32 * mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 320] - 1) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 352]
                if mem[256] <= ext_call.return_data[0]:
                    revert with 0, 'no enough amount'
                if sub_697659f2[mem[108 len 20]] > 0:
                    if mem[256] < ext_call.return_data[0] + sub_697659f2[mem[108 len 20]]:
                        revert with 0, 'no enough amount'
                mem[(32 * _1204) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 388] = msg.sender
                mem[(32 * _1204) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 420] = ext_call.return_data[0]
                mem[(32 * _1204) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 352] = 68
                mem[(32 * _1204) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 388 len 28] = Mask(224, 32, msg.sender) >> 32
                mem[(32 * _1204) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 384 len 4] = unknown_0xa9059cbb(?????)
                mem[(32 * _1204) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 452] = 32
                mem[(32 * _1204) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 484] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[(32 * _1204) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 622 len 26]
                if ext_code.size(address(ext_call.return_data[12 len 20])) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[(32 * _1204) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 516 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
                mem[(32 * _1204) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 608 len 4] = 0
                call address(ext_call.return_data[12 len 20]) with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _1204) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 580 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[12 len 20] > 0:
                            revert with memory
                              from 128
                               len ext_call.return_data[12 len 20]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[12 len 20] > 0:
                        require ext_call.return_data[12 len 20] >= 32
                        if not ext_call.return_data[12 len 20]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _1204) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 626 len 22]
                else:
                    mem[(32 * _1204) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[(32 * _1204) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 548]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _1204) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + ceil32(return_data.size) + 627 len 22]
            else:
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = address(ext_call.return_data[12 len 20])
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 452] = address(ext_call.return_data[12 len 20])
                require ext_code.size(address(cd[(arg4 + 68)]))
                staticcall address(cd[(arg4 + 68)]).getAmountIn(uint256 rg1, uint256 rg2, uint256 rg3, address rg4, address rg5) with:
                        gas gas_remaining wei
                       args arg3, ext_call.return_data[0] << 144, ext_call.return_data[50 len 14], address(ext_call.return_data[12 len 20]), address(ext_call.return_data[12 len 20])
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[224] = ext_call.return_data[0]
                require 0 < cd[(arg4 + cd[(arg4 + 132)] + 36)]
                if mem[332 len 20] != address(ext_call.return_data[12 len 20]):
                    revert with 0, 'token incorrect'
                require cd[(arg4 + cd[(arg4 + 132)] + 36)] - 1 < cd[(arg4 + cd[(arg4 + 132)] + 36)]
                if mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)] - 1) + 332 len 20] != mem[108 len 20]:
                    revert with 0, 'token incorrect'
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 324] = arg3
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 356] = ext_call.return_data[0]
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = this.address
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 452] = block.timestamp
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 388] = 160
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 484] = cd[(arg4 + cd[(arg4 + 132)] + 36)]
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 516 len floor32(cd[(arg4 + cd[(arg4 + 132)] + 36)])] = call.data[arg4 + cd[(arg4 + 132)] + 68 len floor32(cd[(arg4 + cd[(arg4 + 132)] + 36)])]
                require ext_code.size(address(cd[(arg4 + 100)]))
                call address(cd[(arg4 + 100)]).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args arg3, ext_call.return_data[0], Array(len=cd[(arg4 + cd[(arg4 + 132)] + 36)], data=call.data[arg4 + cd[(arg4 + 132)] + 68 len floor32(cd[(arg4 + cd[(arg4 + 132)] + 36)])], mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + floor32(cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 516 len (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) - floor32(cd[(arg4 + cd[(arg4 + 132)] + 36)])]), address(this.address), block.timestamp
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 320
                require return_data.size >= 32
                _1182 = mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len 4], Mask(224, 32, arg3) >> 32
                require mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                require mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                require mem[mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320] <= 4294967296 and mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320]) + 32 <= return_data.size
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 320] = mem[mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320]
                _1205 = mem[_1182 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320]
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 352 len floor32(mem[_1182 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320])] = mem[_1182 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 352 len floor32(mem[_1182 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320])]
                mem[64] = (32 * _1205) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 352
                require mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 320] - 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 320]
                mem[256] = mem[(32 * mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 320] - 1) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 352]
                if mem[256] <= ext_call.return_data[0]:
                    revert with 0, 'no enough amount'
                if sub_697659f2[mem[108 len 20]] > 0:
                    if mem[256] < ext_call.return_data[0] + sub_697659f2[mem[108 len 20]]:
                        revert with 0, 'no enough amount'
                mem[(32 * _1205) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 388] = msg.sender
                mem[(32 * _1205) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 420] = ext_call.return_data[0]
                mem[(32 * _1205) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 352] = 68
                mem[(32 * _1205) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 388 len 28] = Mask(224, 32, msg.sender) >> 32
                mem[(32 * _1205) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 384 len 4] = unknown_0xa9059cbb(?????)
                mem[(32 * _1205) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 452] = 32
                mem[(32 * _1205) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 484] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[(32 * _1205) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 622 len 26]
                if ext_code.size(address(ext_call.return_data[12 len 20])) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[(32 * _1205) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 516 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
                mem[(32 * _1205) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 608 len 4] = 0
                call address(ext_call.return_data[12 len 20]) with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _1205) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 580 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[12 len 20] > 0:
                            revert with memory
                              from 128
                               len ext_call.return_data[12 len 20]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[12 len 20] > 0:
                        require ext_call.return_data[12 len 20] >= 32
                        if not ext_call.return_data[12 len 20]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _1205) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 626 len 22]
                else:
                    mem[(32 * _1205) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[(32 * _1205) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 548]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _1205) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + ceil32(return_data.size) + 627 len 22]
        else:
            mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 324] = arg2
            mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 356] = ext_call.return_data[50 len 14]
            mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 388] = Mask(112, 0, ext_call.return_data[0])
            if sub_25bc368e[address(cd[(arg4 + 68)])] != 2:
                require ext_code.size(address(cd[(arg4 + 68)]))
                staticcall address(cd[(arg4 + 68)]).getAmountIn(uint256 rg1, uint256 rg2, uint256 rg3) with:
                        gas gas_remaining wei
                       args arg2, ext_call.return_data[50 len 14], ext_call.return_data[0] << 144
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[224] = ext_call.return_data[0]
                require 0 < cd[(arg4 + cd[(arg4 + 132)] + 36)]
                if mem[332 len 20] != address(ext_call.return_data[12 len 20]):
                    revert with 0, 'token incorrect'
                require cd[(arg4 + cd[(arg4 + 132)] + 36)] - 1 < cd[(arg4 + cd[(arg4 + 132)] + 36)]
                if mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)] - 1) + 332 len 20] != mem[140 len 20]:
                    revert with 0, 'token incorrect'
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 324] = arg2
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 356] = ext_call.return_data[0]
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = this.address
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 452] = block.timestamp
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 388] = 160
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 484] = cd[(arg4 + cd[(arg4 + 132)] + 36)]
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 516 len floor32(cd[(arg4 + cd[(arg4 + 132)] + 36)])] = call.data[arg4 + cd[(arg4 + 132)] + 68 len floor32(cd[(arg4 + cd[(arg4 + 132)] + 36)])]
                require ext_code.size(address(cd[(arg4 + 100)]))
                call address(cd[(arg4 + 100)]).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args arg2, ext_call.return_data[0], Array(len=cd[(arg4 + cd[(arg4 + 132)] + 36)], data=call.data[arg4 + cd[(arg4 + 132)] + 68 len floor32(cd[(arg4 + cd[(arg4 + 132)] + 36)])], mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + floor32(cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 516 len (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) - floor32(cd[(arg4 + cd[(arg4 + 132)] + 36)])]), address(this.address), block.timestamp
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 320
                require return_data.size >= 32
                _1184 = mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len 4], Mask(224, 32, arg2) >> 32
                require mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                require mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                require mem[mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320] <= 4294967296 and mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320]) + 32 <= return_data.size
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 320] = mem[mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320]
                _1206 = mem[_1184 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320]
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 352 len floor32(mem[_1184 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320])] = mem[_1184 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 352 len floor32(mem[_1184 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320])]
                mem[64] = (32 * _1206) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 352
                require mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 320] - 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 320]
                mem[256] = mem[(32 * mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 320] - 1) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 352]
                if mem[256] <= ext_call.return_data[0]:
                    revert with 0, 'no enough amount'
                if sub_697659f2[mem[140 len 20]] > 0:
                    if mem[256] < ext_call.return_data[0] + sub_697659f2[mem[140 len 20]]:
                        revert with 0, 'no enough amount'
                mem[(32 * _1206) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 388] = msg.sender
                mem[(32 * _1206) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 420] = ext_call.return_data[0]
                mem[(32 * _1206) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 352] = 68
                mem[(32 * _1206) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 388 len 28] = Mask(224, 32, msg.sender) >> 32
                mem[(32 * _1206) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 384 len 4] = unknown_0xa9059cbb(?????)
                mem[(32 * _1206) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 452] = 32
                mem[(32 * _1206) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 484] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[(32 * _1206) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 622 len 26]
                if ext_code.size(address(ext_call.return_data[12 len 20])) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[(32 * _1206) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 516 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
                mem[(32 * _1206) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 608 len 4] = 0
                call address(ext_call.return_data[12 len 20]) with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _1206) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 580 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[12 len 20] > 0:
                            revert with memory
                              from 128
                               len ext_call.return_data[12 len 20]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[12 len 20] > 0:
                        require ext_call.return_data[12 len 20] >= 32
                        if not ext_call.return_data[12 len 20]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _1206) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 626 len 22]
                else:
                    mem[(32 * _1206) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[(32 * _1206) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 548]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _1206) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + ceil32(return_data.size) + 627 len 22]
            else:
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = address(ext_call.return_data[12 len 20])
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 452] = address(ext_call.return_data[12 len 20])
                require ext_code.size(address(cd[(arg4 + 68)]))
                staticcall address(cd[(arg4 + 68)]).getAmountIn(uint256 rg1, uint256 rg2, uint256 rg3, address rg4, address rg5) with:
                        gas gas_remaining wei
                       args arg2, ext_call.return_data[50 len 14], ext_call.return_data[0] << 144, address(ext_call.return_data[12 len 20]), address(ext_call.return_data[12 len 20])
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[224] = ext_call.return_data[0]
                require 0 < cd[(arg4 + cd[(arg4 + 132)] + 36)]
                if mem[332 len 20] != address(ext_call.return_data[12 len 20]):
                    revert with 0, 'token incorrect'
                require cd[(arg4 + cd[(arg4 + 132)] + 36)] - 1 < cd[(arg4 + cd[(arg4 + 132)] + 36)]
                if mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)] - 1) + 332 len 20] != mem[140 len 20]:
                    revert with 0, 'token incorrect'
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 324] = arg2
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 356] = ext_call.return_data[0]
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = this.address
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 452] = block.timestamp
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 388] = 160
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 484] = cd[(arg4 + cd[(arg4 + 132)] + 36)]
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 516 len floor32(cd[(arg4 + cd[(arg4 + 132)] + 36)])] = call.data[arg4 + cd[(arg4 + 132)] + 68 len floor32(cd[(arg4 + cd[(arg4 + 132)] + 36)])]
                require ext_code.size(address(cd[(arg4 + 100)]))
                call address(cd[(arg4 + 100)]).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args arg2, ext_call.return_data[0], Array(len=cd[(arg4 + cd[(arg4 + 132)] + 36)], data=call.data[arg4 + cd[(arg4 + 132)] + 68 len floor32(cd[(arg4 + cd[(arg4 + 132)] + 36)])], mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + floor32(cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 516 len (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) - floor32(cd[(arg4 + cd[(arg4 + 132)] + 36)])]), address(this.address), block.timestamp
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 320
                require return_data.size >= 32
                _1186 = mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len 4], Mask(224, 32, arg2) >> 32
                require mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                require mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                require mem[mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320] <= 4294967296 and mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320]) + 32 <= return_data.size
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 320] = mem[mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320]
                _1207 = mem[_1186 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320]
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 352 len floor32(mem[_1186 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320])] = mem[_1186 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 352 len floor32(mem[_1186 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320])]
                mem[64] = (32 * _1207) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 352
                require mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 320] - 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 320]
                mem[256] = mem[(32 * mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 320] - 1) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 352]
                if mem[256] <= ext_call.return_data[0]:
                    revert with 0, 'no enough amount'
                if sub_697659f2[mem[140 len 20]] > 0:
                    if mem[256] < ext_call.return_data[0] + sub_697659f2[mem[140 len 20]]:
                        revert with 0, 'no enough amount'
                mem[(32 * _1207) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 388] = msg.sender
                mem[(32 * _1207) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 420] = ext_call.return_data[0]
                mem[(32 * _1207) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 352] = 68
                mem[(32 * _1207) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 388 len 28] = Mask(224, 32, msg.sender) >> 32
                mem[(32 * _1207) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 384 len 4] = unknown_0xa9059cbb(?????)
                mem[(32 * _1207) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 452] = 32
                mem[(32 * _1207) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 484] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[(32 * _1207) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 622 len 26]
                if ext_code.size(address(ext_call.return_data[12 len 20])) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[(32 * _1207) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 516 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
                mem[(32 * _1207) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 608 len 4] = 0
                call address(ext_call.return_data[12 len 20]) with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _1207) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 580 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[12 len 20] > 0:
                            revert with memory
                              from 128
                               len ext_call.return_data[12 len 20]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[12 len 20] > 0:
                        require ext_call.return_data[12 len 20] >= 32
                        if not ext_call.return_data[12 len 20]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _1207) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 626 len 22]
                else:
                    mem[(32 * _1207) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[(32 * _1207) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 548]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _1207) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + ceil32(return_data.size) + 627 len 22]
    else:
        if arg3:
            revert with 0, 'need zero'
        mem[256] = 0
        require arg4.length >= 128
        require cd[(arg4 + 132)] <= 4294967296
        require cd[(arg4 + 132)] + 68 <= arg4.length + 36
        require cd[(arg4 + cd[(arg4 + 132)] + 36)] <= 4294967296 and cd[(arg4 + 132)] + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 68 <= arg4.length + 36
        mem[288] = cd[(arg4 + cd[(arg4 + 132)] + 36)]
        mem[320 len 32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]] = call.data[arg4 + cd[(arg4 + 132)] + 68 len 32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]]
        if sub_12109d52[address(cd[(arg4 + 36)])] <= 0:
            revert with 0, 'not allowed F'
        if sub_25bc368e[address(cd[(arg4 + 68)])] <= 0:
            revert with 0, 'not allowed R1'
        if sub_25bc368e[address(cd[(arg4 + 100)])] <= 0:
            revert with 0, 'not allowed R2'
        require ext_code.size(msg.sender)
        staticcall msg.sender.token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[96] = ext_call.return_data[12 len 20]
        require ext_code.size(msg.sender)
        staticcall msg.sender.token1() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[128] = ext_call.return_data[12 len 20]
        require ext_code.size(address(cd[(arg4 + 36)]))
        staticcall address(cd[(arg4 + 36)]).getPair(address rg1, address rg2) with:
                gas gas_remaining wei
               args address(ext_call.return_data[12 len 20]), address(ext_call.return_data[12 len 20])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[12 len 20] != msg.sender:
            revert with 0, 'wrong LP sender'
        require ext_code.size(msg.sender)
        staticcall msg.sender.getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        mem[192] = ext_call.return_data[50 len 14]
        mem[160] = Mask(112, 0, ext_call.return_data[0])
        mem[0] = address(cd[(arg4 + 68)])
        mem[32] = 6
        if arg2 <= 0:
            mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 324] = arg3
            mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 356] = Mask(112, 0, ext_call.return_data[0])
            mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 388] = ext_call.return_data[50 len 14]
            if sub_25bc368e[address(cd[(arg4 + 68)])] != 2:
                require ext_code.size(address(cd[(arg4 + 68)]))
                staticcall address(cd[(arg4 + 68)]).getAmountIn(uint256 rg1, uint256 rg2, uint256 rg3) with:
                        gas gas_remaining wei
                       args arg3, ext_call.return_data[0] << 144, ext_call.return_data[50 len 14]
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[224] = ext_call.return_data[0]
                require 0 < cd[(arg4 + cd[(arg4 + 132)] + 36)]
                if mem[332 len 20] != address(ext_call.return_data[12 len 20]):
                    revert with 0, 'token incorrect'
                require cd[(arg4 + cd[(arg4 + 132)] + 36)] - 1 < cd[(arg4 + cd[(arg4 + 132)] + 36)]
                if mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)] - 1) + 332 len 20] != mem[108 len 20]:
                    revert with 0, 'token incorrect'
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 324] = arg3
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 356] = ext_call.return_data[0]
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = this.address
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 452] = block.timestamp
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 388] = 160
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 484] = cd[(arg4 + cd[(arg4 + 132)] + 36)]
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 516 len floor32(cd[(arg4 + cd[(arg4 + 132)] + 36)])] = call.data[arg4 + cd[(arg4 + 132)] + 68 len floor32(cd[(arg4 + cd[(arg4 + 132)] + 36)])]
                require ext_code.size(address(cd[(arg4 + 100)]))
                call address(cd[(arg4 + 100)]).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args arg3, ext_call.return_data[0], Array(len=cd[(arg4 + cd[(arg4 + 132)] + 36)], data=call.data[arg4 + cd[(arg4 + 132)] + 68 len floor32(cd[(arg4 + cd[(arg4 + 132)] + 36)])], mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + floor32(cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 516 len (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) - floor32(cd[(arg4 + cd[(arg4 + 132)] + 36)])]), address(this.address), block.timestamp
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 320
                require return_data.size >= 32
                _1188 = mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len 4], Mask(224, 32, arg3) >> 32
                require mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                require mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                require mem[mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320] <= 4294967296 and mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320]) + 32 <= return_data.size
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 320] = mem[mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320]
                _1208 = mem[_1188 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320]
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 352 len floor32(mem[_1188 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320])] = mem[_1188 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 352 len floor32(mem[_1188 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320])]
                mem[64] = (32 * _1208) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 352
                require mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 320] - 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 320]
                mem[256] = mem[(32 * mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 320] - 1) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 352]
                if mem[256] <= ext_call.return_data[0]:
                    revert with 0, 'no enough amount'
                if sub_697659f2[mem[108 len 20]] <= 0:
                    mem[(32 * _1208) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 388] = msg.sender
                    mem[(32 * _1208) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 420] = ext_call.return_data[0]
                    mem[(32 * _1208) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 352] = 68
                    mem[(32 * _1208) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 388 len 28] = Mask(224, 32, msg.sender) >> 32
                    mem[(32 * _1208) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 384 len 4] = unknown_0xa9059cbb(?????)
                    mem[(32 * _1208) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 452] = 32
                    mem[(32 * _1208) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 484] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                    mem[(32 * _1208) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 622 len 26]
                    if ext_code.size(address(ext_call.return_data[12 len 20])) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[(32 * _1208) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 516 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
                    mem[(32 * _1208) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 608 len 4] = 0
                else:
                    if mem[256] < ext_call.return_data[0] + sub_697659f2[mem[108 len 20]]:
                        revert with 0, 'no enough amount'
                    mem[(32 * _1208) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 388] = msg.sender
                    mem[(32 * _1208) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 420] = ext_call.return_data[0]
                    mem[(32 * _1208) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 352] = 68
                    mem[(32 * _1208) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 388 len 28] = Mask(224, 32, msg.sender) >> 32
                    mem[(32 * _1208) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 384 len 4] = unknown_0xa9059cbb(?????)
                    mem[(32 * _1208) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 452] = 32
                    mem[(32 * _1208) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 484] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                    mem[(32 * _1208) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 622 len 26]
                    if ext_code.size(address(ext_call.return_data[12 len 20])) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[(32 * _1208) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 516 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
                    mem[(32 * _1208) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 608 len 4] = 0
                    mem[(32 * _1208) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 580 len 0] = 0
                call address(ext_call.return_data[12 len 20]) with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _1208) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 580 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[12 len 20] > 0:
                            revert with memory
                              from 128
                               len ext_call.return_data[12 len 20]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[12 len 20] > 0:
                        require ext_call.return_data[12 len 20] >= 32
                        if not ext_call.return_data[12 len 20]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _1208) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 626 len 22]
                else:
                    mem[(32 * _1208) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[(32 * _1208) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 548]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _1208) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + ceil32(return_data.size) + 627 len 22]
            else:
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = address(ext_call.return_data[12 len 20])
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 452] = address(ext_call.return_data[12 len 20])
                require ext_code.size(address(cd[(arg4 + 68)]))
                staticcall address(cd[(arg4 + 68)]).getAmountIn(uint256 rg1, uint256 rg2, uint256 rg3, address rg4, address rg5) with:
                        gas gas_remaining wei
                       args arg3, ext_call.return_data[0] << 144, ext_call.return_data[50 len 14], address(ext_call.return_data[12 len 20]), address(ext_call.return_data[12 len 20])
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[224] = ext_call.return_data[0]
                require 0 < cd[(arg4 + cd[(arg4 + 132)] + 36)]
                if mem[332 len 20] != address(ext_call.return_data[12 len 20]):
                    revert with 0, 'token incorrect'
                require cd[(arg4 + cd[(arg4 + 132)] + 36)] - 1 < cd[(arg4 + cd[(arg4 + 132)] + 36)]
                if mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)] - 1) + 332 len 20] != mem[108 len 20]:
                    revert with 0, 'token incorrect'
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 324] = arg3
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 356] = ext_call.return_data[0]
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = this.address
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 452] = block.timestamp
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 388] = 160
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 484] = cd[(arg4 + cd[(arg4 + 132)] + 36)]
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 516 len floor32(cd[(arg4 + cd[(arg4 + 132)] + 36)])] = call.data[arg4 + cd[(arg4 + 132)] + 68 len floor32(cd[(arg4 + cd[(arg4 + 132)] + 36)])]
                require ext_code.size(address(cd[(arg4 + 100)]))
                call address(cd[(arg4 + 100)]).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args arg3, ext_call.return_data[0], Array(len=cd[(arg4 + cd[(arg4 + 132)] + 36)], data=call.data[arg4 + cd[(arg4 + 132)] + 68 len floor32(cd[(arg4 + cd[(arg4 + 132)] + 36)])], mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + floor32(cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 516 len (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) - floor32(cd[(arg4 + cd[(arg4 + 132)] + 36)])]), address(this.address), block.timestamp
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 320
                require return_data.size >= 32
                _1190 = mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len 4], Mask(224, 32, arg3) >> 32
                require mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
                require mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
                require mem[mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320] <= 4294967296 and mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320]) + 32 <= return_data.size
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 320] = mem[mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320]
                _1209 = mem[_1190 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320]
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 352 len floor32(mem[_1190 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320])] = mem[_1190 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 352 len floor32(mem[_1190 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320])]
                mem[64] = (32 * _1209) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 352
                require mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 320] - 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 320]
                mem[256] = mem[(32 * mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 320] - 1) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 352]
                if mem[256] <= ext_call.return_data[0]:
                    revert with 0, 'no enough amount'
                if sub_697659f2[mem[108 len 20]] > 0:
                    if mem[256] < ext_call.return_data[0] + sub_697659f2[mem[108 len 20]]:
                        revert with 0, 'no enough amount'
                mem[(32 * _1209) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 388] = msg.sender
                mem[(32 * _1209) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 420] = ext_call.return_data[0]
                mem[(32 * _1209) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 352] = 68
                mem[(32 * _1209) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 388 len 28] = Mask(224, 32, msg.sender) >> 32
                mem[(32 * _1209) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 384 len 4] = unknown_0xa9059cbb(?????)
                mem[(32 * _1209) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 452] = 32
                mem[(32 * _1209) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 484] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[(32 * _1209) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 622 len 26]
                if ext_code.size(address(ext_call.return_data[12 len 20])) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[(32 * _1209) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 516 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
                mem[(32 * _1209) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 608 len 4] = 0
                call address(ext_call.return_data[12 len 20]) with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _1209) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 580 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[12 len 20] > 0:
                            revert with memory
                              from 128
                               len ext_call.return_data[12 len 20]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[12 len 20] > 0:
                        require ext_call.return_data[12 len 20] >= 32
                        if not ext_call.return_data[12 len 20]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _1209) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 626 len 22]
                else:
                    mem[(32 * _1209) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[(32 * _1209) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 548]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _1209) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + ceil32(return_data.size) + 627 len 22]
        else:
            mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 324] = arg2
            mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 356] = ext_call.return_data[50 len 14]
            mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 388] = Mask(112, 0, ext_call.return_data[0])
            if sub_25bc368e[address(cd[(arg4 + 68)])] != 2:
                require ext_code.size(address(cd[(arg4 + 68)]))
                staticcall address(cd[(arg4 + 68)]).getAmountIn(uint256 rg1, uint256 rg2, uint256 rg3) with:
                        gas gas_remaining wei
                       args arg2, ext_call.return_data[50 len 14], ext_call.return_data[0] << 144
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[224] = ext_call.return_data[0]
                require 0 < cd[(arg4 + cd[(arg4 + 132)] + 36)]
                if mem[332 len 20] != address(ext_call.return_data[12 len 20]):
                    revert with 0, 'token incorrect'
                require cd[(arg4 + cd[(arg4 + 132)] + 36)] - 1 < cd[(arg4 + cd[(arg4 + 132)] + 36)]
                if mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)] - 1) + 332 len 20] != mem[140 len 20]:
                    revert with 0, 'token incorrect'
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 324] = arg2
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 356] = ext_call.return_data[0]
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = this.address
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 452] = block.timestamp
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 388] = 160
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 484] = cd[(arg4 + cd[(arg4 + 132)] + 36)]
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 516 len floor32(cd[(arg4 + cd[(arg4 + 132)] + 36)])] = call.data[arg4 + cd[(arg4 + 132)] + 68 len floor32(cd[(arg4 + cd[(arg4 + 132)] + 36)])]
                require ext_code.size(address(cd[(arg4 + 100)]))
                call address(cd[(arg4 + 100)]).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args arg2, ext_call.return_data[0], Array(len=cd[(arg4 + cd[(arg4 + 132)] + 36)], data=call.data[arg4 + cd[(arg4 + 132)] + 68 len floor32(cd[(arg4 + cd[(arg4 + 132)] + 36)])], mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + floor32(cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 516 len (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) - floor32(cd[(arg4 + cd[(arg4 + 132)] + 36)])]), address(this.address), block.timestamp
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 320
                require return_data.size >= 32
                _1192 = mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len 4], Mask(224, 32, arg2) >> 32
                require mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                require mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                require mem[mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320] <= 4294967296 and mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320]) + 32 <= return_data.size
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 320] = mem[mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320]
                _1210 = mem[_1192 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320]
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 352 len floor32(mem[_1192 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320])] = mem[_1192 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 352 len floor32(mem[_1192 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320])]
                mem[64] = (32 * _1210) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 352
                require mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 320] - 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 320]
                mem[256] = mem[(32 * mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 320] - 1) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 352]
                if mem[256] <= ext_call.return_data[0]:
                    revert with 0, 'no enough amount'
                if sub_697659f2[mem[140 len 20]] > 0:
                    if mem[256] < ext_call.return_data[0] + sub_697659f2[mem[140 len 20]]:
                        revert with 0, 'no enough amount'
                mem[(32 * _1210) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 388] = msg.sender
                mem[(32 * _1210) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 420] = ext_call.return_data[0]
                mem[(32 * _1210) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 352] = 68
                mem[(32 * _1210) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 388 len 28] = Mask(224, 32, msg.sender) >> 32
                mem[(32 * _1210) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 384 len 4] = unknown_0xa9059cbb(?????)
                mem[(32 * _1210) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 452] = 32
                mem[(32 * _1210) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 484] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[(32 * _1210) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 622 len 26]
                if ext_code.size(address(ext_call.return_data[12 len 20])) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[(32 * _1210) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 516 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
                mem[(32 * _1210) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 608 len 4] = 0
                call address(ext_call.return_data[12 len 20]) with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _1210) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 580 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[12 len 20] > 0:
                            revert with memory
                              from 128
                               len ext_call.return_data[12 len 20]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[12 len 20] > 0:
                        require ext_call.return_data[12 len 20] >= 32
                        if not ext_call.return_data[12 len 20]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _1210) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 626 len 22]
                else:
                    mem[(32 * _1210) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[(32 * _1210) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 548]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _1210) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + ceil32(return_data.size) + 627 len 22]
            else:
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = address(ext_call.return_data[12 len 20])
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 452] = address(ext_call.return_data[12 len 20])
                require ext_code.size(address(cd[(arg4 + 68)]))
                staticcall address(cd[(arg4 + 68)]).getAmountIn(uint256 rg1, uint256 rg2, uint256 rg3, address rg4, address rg5) with:
                        gas gas_remaining wei
                       args arg2, ext_call.return_data[50 len 14], ext_call.return_data[0] << 144, address(ext_call.return_data[12 len 20]), address(ext_call.return_data[12 len 20])
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[224] = ext_call.return_data[0]
                require 0 < cd[(arg4 + cd[(arg4 + 132)] + 36)]
                if mem[332 len 20] != address(ext_call.return_data[12 len 20]):
                    revert with 0, 'token incorrect'
                require cd[(arg4 + cd[(arg4 + 132)] + 36)] - 1 < cd[(arg4 + cd[(arg4 + 132)] + 36)]
                if mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)] - 1) + 332 len 20] != mem[140 len 20]:
                    revert with 0, 'token incorrect'
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 324] = arg2
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 356] = ext_call.return_data[0]
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 420] = this.address
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 452] = block.timestamp
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 388] = 160
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 484] = cd[(arg4 + cd[(arg4 + 132)] + 36)]
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 516 len floor32(cd[(arg4 + cd[(arg4 + 132)] + 36)])] = call.data[arg4 + cd[(arg4 + 132)] + 68 len floor32(cd[(arg4 + cd[(arg4 + 132)] + 36)])]
                require ext_code.size(address(cd[(arg4 + 100)]))
                call address(cd[(arg4 + 100)]).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args arg2, ext_call.return_data[0], Array(len=cd[(arg4 + cd[(arg4 + 132)] + 36)], data=call.data[arg4 + cd[(arg4 + 132)] + 68 len floor32(cd[(arg4 + cd[(arg4 + 132)] + 36)])], mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + floor32(cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 516 len (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) - floor32(cd[(arg4 + cd[(arg4 + 132)] + 36)])]), address(this.address), block.timestamp
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 320
                require return_data.size >= 32
                _1194 = mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len 4], Mask(224, 32, arg2) >> 32
                require mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                require mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                require mem[mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320] <= 4294967296 and mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320]) + 32 <= return_data.size
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 320] = mem[mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 len 4], Mask(224, 32, arg2) >> 32 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320]
                _1211 = mem[_1194 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320]
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 352 len floor32(mem[_1194 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320])] = mem[_1194 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 352 len floor32(mem[_1194 + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320])]
                mem[64] = (32 * _1211) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 352
                require mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 320] - 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 320]
                mem[256] = mem[(32 * mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 320] - 1) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 352]
                if mem[256] <= ext_call.return_data[0]:
                    revert with 0, 'no enough amount'
                if sub_697659f2[mem[140 len 20]] <= 0:
                    mem[(32 * _1211) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 388] = msg.sender
                    mem[(32 * _1211) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 420] = ext_call.return_data[0]
                    mem[(32 * _1211) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 352] = 68
                    mem[(32 * _1211) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 388 len 28] = Mask(224, 32, msg.sender) >> 32
                    mem[(32 * _1211) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 384 len 4] = unknown_0xa9059cbb(?????)
                    mem[(32 * _1211) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 452] = 32
                    mem[(32 * _1211) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 484] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                    mem[(32 * _1211) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 622 len 26]
                    if ext_code.size(address(ext_call.return_data[12 len 20])) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[(32 * _1211) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 516 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
                    mem[(32 * _1211) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 608 len 4] = 0
                    mem[(32 * _1211) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 580 len 0] = 0
                else:
                    if mem[256] < ext_call.return_data[0] + sub_697659f2[mem[140 len 20]]:
                        revert with 0, 'no enough amount'
                    mem[(32 * _1211) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 388] = msg.sender
                    mem[(32 * _1211) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 420] = ext_call.return_data[0]
                    mem[(32 * _1211) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 352] = 68
                    mem[(32 * _1211) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 388 len 28] = Mask(224, 32, msg.sender) >> 32
                    mem[(32 * _1211) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 384 len 4] = unknown_0xa9059cbb(?????)
                    mem[(32 * _1211) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 452] = 32
                    mem[(32 * _1211) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 484] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                    mem[(32 * _1211) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 622 len 26]
                    if ext_code.size(address(ext_call.return_data[12 len 20])) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[(32 * _1211) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 516 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
                    mem[(32 * _1211) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 608 len 4] = 0
                call address(ext_call.return_data[12 len 20]) with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _1211) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 580 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[12 len 20] > 0:
                            revert with memory
                              from 128
                               len ext_call.return_data[12 len 20]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[12 len 20] > 0:
                        require ext_call.return_data[12 len 20] >= 32
                        if not ext_call.return_data[12 len 20]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _1211) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 626 len 22]
                else:
                    mem[(32 * _1211) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[(32 * _1211) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 548]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _1211) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + ceil32(return_data.size) + 627 len 22]
    count++
}



}
