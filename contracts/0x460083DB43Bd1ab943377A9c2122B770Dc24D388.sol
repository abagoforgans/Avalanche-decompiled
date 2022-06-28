contract main {




// =====================  Runtime code  =====================


#
#  - sub_1713d244(?)
#  - sub_1e22b5b6(?)
#  - sub_1f62b7f7(?)
#  - deposit(address arg1, address arg2, uint256 arg3, uint256 arg4)
#  - sub_2161bf86(?)
#  - sub_28f64252(?)
#  - sub_ae01b8e3(?)
#  - sub_ca86156d(?)
#  - sub_d6effb39(?)
#  - _fallback()
#
address stor0;
uint32 stor1;
address stor1;
uint256 stor1;
mapping of uint8 stor3;
mapping of uint8 stor5;
mapping of struct stor8;
mapping of struct stor9;
mapping of address stor10;
mapping of address stor11;
uint256 sub_f90f71f4;
uint256 stor13;
uint8 paused; offset 160
address stor14;

function sub_2c3dff62(?) {
    require calldata.size - 4 >= 64
    if arg2 >= stor8[arg1].field_3328:
        revert with 0, 50
    return address(stor[('array', 13, ('map', ('param', 'arg1'), ('name', 'stor8', 8))) + arg2].field_0)
}

function sub_2d79b290(?) {
    require calldata.size - 4 >= 64
    if arg2 >= stor9[arg1].field_512:
        revert with 0, 50
    return address(stor[('array', 2, ('map', ('param', 'arg1'), ('name', 'stor9', 9))) + arg2].field_0)
}

function paused() {
    return bool(paused)
}

function sub_f4d2fb07(?) {
    require calldata.size - 4 >= 64
    if arg2 >= stor8[arg1].field_3584:
        revert with 0, 50
    return address(stor[('array', 14, ('map', ('param', 'arg1'), ('name', 'stor8', 8))) + arg2].field_0)
}

function sub_f90f71f4(?) {
    return sub_f90f71f4
}

function sub_ed9cb90d(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if stor0 != msg.sender:
        if 0x64db0493e018d48e724b802d28147bd7ce3992be != msg.sender:
            if address(stor1) != msg.sender:
                revert with 0, 'owner: caller is not the owner'
    stor0 = address(arg1)
}

function sub_20485f4e(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if stor0 != msg.sender:
        if 0x64db0493e018d48e724b802d28147bd7ce3992be != msg.sender:
            if address(stor1) != msg.sender:
                revert with 0, 'owner: caller is not the owner'
    address(stor1) = address(arg1)
}

function withdrawETH() {
    if stor0 != msg.sender:
        if 0x64db0493e018d48e724b802d28147bd7ce3992be != msg.sender:
            if address(stor1) != msg.sender:
                revert with 0, 'owner: caller is not the owner'
    call stor0 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_6741a7d5(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(stor14)
    staticcall stor14.0xc69b23a2 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if bool(ext_call.return_data[0]) != 1:
        revert with 0, 'n'
    stor13 = arg1
}

function sub_8a97be98(?) {
    require calldata.size - 4 >= 64
    require arg2 == bool(arg2)
    require ext_code.size(stor14)
    staticcall stor14.0xc69b23a2 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if bool(ext_call.return_data[0]) != 1:
        revert with 0, 'n'
    Mask(240, 0, stor8[arg1].field_3856) = Mask(240, 0, bool(arg2))
}

function sub_0c1c6e39(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    require ext_code.size(stor14)
    staticcall stor14.0xc69b23a2 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if bool(ext_call.return_data[0]) != 1:
        revert with 0, 'n'
    stor5[address(arg1)] = uint8(bool(arg2))
}

function sub_2282ccf8(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + arg2.length + 36 <= calldata.size
    if stor0 != msg.sender:
        if 0x64db0493e018d48e724b802d28147bd7ce3992be != msg.sender:
            if address(stor1) != msg.sender:
                revert with 0, 'owner: caller is not the owner'
    call address(arg1) with:
       value msg.value wei
         gas gas_remaining wei
        args arg2[all]
}

function execute(address arg1, bytes arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + arg2.length + 36 <= calldata.size
    if stor0 != msg.sender:
        if 0x64db0493e018d48e724b802d28147bd7ce3992be != msg.sender:
            if address(stor1) != msg.sender:
                revert with 0, 'owner: caller is not the owner'
    call arg1 with:
       value msg.value wei
         gas gas_remaining wei
        args arg2[all]
    require ext_call.success
    if not return_data.size:
        return ' '
    return Array(len=return_data.size, data=ext_call.return_data[0 len return_data.size])
}

function sub_862e183a(?) {
    require calldata.size - 4 >= 32
    mem[96] = 0
    mem[128] = 0
    mem[160] = 96
    mem[192] = 0
    mem[224] = address(stor9[arg1].field_0)
    mem[256] = stor9[arg1].field_256
    mem[64] = (32 * stor9[arg1].field_512) + 384
    mem[352] = stor9[arg1].field_512
    if not stor9[arg1].field_512:
        mem[(32 * stor9[arg1].field_512) + 384] = 96
        idx = 0
        s = 384
        t = (32 * stor9[arg1].field_512) + 640
        while idx < stor9[arg1].field_512:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return 96, 
               stor10[arg1],
               stor11[arg1],
               address(stor9[arg1].field_0),
               stor9[arg1].field_256,
               128,
               bool(uint8(stor9[arg1].field_768)),
               stor9[arg1].field_512,
               mem[(32 * stor9[arg1].field_512) + 640 len 32 * stor9[arg1].field_512]
    mem[384] = address(stor9[arg1][2].field_0)
    idx = 384
    s = 0
    while (32 * stor9[arg1].field_512) + 352 > idx:
        mem[idx + 32] = address(stor9[arg1][s + 2].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[288] = 352
    mem[320] = bool(uint8(stor9[arg1].field_768))
    mem[(32 * stor9[arg1].field_512) + 384] = 96
    mem[(32 * stor9[arg1].field_512) + 480] = address(stor9[arg1].field_0)
    mem[(32 * stor9[arg1].field_512) + 512] = stor9[arg1].field_256
    mem[(32 * stor9[arg1].field_512) + 544] = 128
    mem[(32 * stor9[arg1].field_512) + 608] = stor9[arg1].field_512
    idx = 0
    s = 384
    t = mem[64] + 256
    while idx < stor9[arg1].field_512:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(32 * stor9[arg1].field_512) + 576] = bool(mem[320])
    mem[(32 * stor9[arg1].field_512) + 416] = stor10[arg1]
    mem[(32 * stor9[arg1].field_512) + 448] = stor11[arg1]
    return memory
      from mem[64]
       len (64 * stor9[arg1].field_512) + -mem[64] + 640
}

function sub_19dc045d(?) {
    require ext_code.size(stor14)
    staticcall stor14.0xc69b23a2 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if bool(ext_call.return_data[0]) != 1:
        revert with 0, 'n'
    idx = 0
    while idx < sub_f90f71f4:
        if bool(stor8[idx].field_0):
            if bool(stor8[idx].field_0) == uint255(stor8[idx].field_0) * 0.5 < 32:
                revert with 0, 34
            stor8[idx].field_0 = 0
            if 31 < uint255(stor8[idx].field_0) * 0.5:
                s = sha3(sha3(idx, 8))
                while sha3(sha3(idx, 8)) + ((uint255(stor8[idx].field_0) * 0.5) + 31 / 32) > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
        else:
            if bool(stor8[idx].field_0) == stor8[idx].field_1 % 128 < 32:
                revert with 0, 34
            stor8[idx].field_0 = 0
            if 31 < stor8[idx].field_1 % 128:
                s = sha3(sha3(idx, 8))
                while sha3(sha3(idx, 8)) + (stor8[idx].field_1 % 128 + 31 / 32) > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
        address(stor8[idx].field_256) = 0
        stor8[idx].field_512 = 0
        stor8[idx].field_768 = 0
        stor8[idx].field_1024 = 0
        stor8[idx].field_1280 = 0
        stor8[idx].field_1536 = 0
        stor8[idx].field_1792 = 0
        stor8[idx].field_2048 = 0
        stor8[idx].field_2304 = 0
        stor8[idx].field_2560 = 0
        stor8[idx].field_2816 = 0
        stor8[idx].field_3072 = 0
        stor8[idx].field_3328 = 0
        s = sha3(sha3(idx, 8) + 13)
        while sha3(sha3(idx, 8) + 13) + stor8[idx].field_3328 > s:
            stor[s] = 0
            s = s + 1
            continue 
        stor8[idx].field_3584 = 0
        s = sha3(sha3(idx, 8) + 14)
        while sha3(sha3(idx, 8) + 14) + stor8[idx].field_3584 > s:
            stor[s] = 0
            s = s + 1
            continue 
        stor8[idx].field_3840 % 16777216 = 0
        address(stor9[idx].field_0) = 0
        stor9[idx].field_256 = 0
        stor9[idx].field_512 = 0
        s = sha3(sha3(idx, 9) + 2)
        while sha3(sha3(idx, 9) + 2) + stor9[idx].field_512 > s:
            stor[s] = 0
            s = s + 1
            continue 
        uint8(stor9[idx].field_768) = 0
        mem[0] = idx
        stor11[idx] = 0
        mem[32] = 10
        stor10[idx] = 0
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    sub_f90f71f4 = 0
}

function sub_dca99fd5(?) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(ceil32(arg1.length)) + 97
    mem[96] = arg1.length
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    idx = 0
    while idx < sub_f90f71f4:
        _35 = sha3(mem[128 len mem[96]])
        mem[0] = idx
        mem[32] = 8
        _37 = mem[64]
        if bool(stor8[idx].field_0):
            if bool(stor8[idx].field_0) == uint255(stor8[idx].field_0) * 0.5 < 32:
                revert with 0, 34
            if not bool(stor8[idx].field_0):
                mem[mem[64]] = Mask(248, 8, stor8[idx].field_0)
                if sha3(mem[mem[64] len uint255(stor8[idx].field_0) * 0.5]) == _35:
                    return 1, idx
            else:
                if bool(stor8[idx].field_0) != 1:
                    if sha3(mem[mem[64] len -mem[64]]) == sha3(mem[128 len mem[96]]):
                        return 1, idx
                else:
                    mem[0] = sha3(idx, 8)
                    s = 0
                    t = sha3(mem[0])
                    while s < uint255(stor8[idx].field_0) * 0.5:
                        mem[s + _37] = stor[t]
                        s = s + 32
                        t = t + 1
                        continue 
                    if sha3(mem[mem[64] len _37 + (uint255(stor8[idx].field_0) * 0.5) - mem[64]]) == _35:
                        return 1, idx
        else:
            if bool(stor8[idx].field_0) == stor8[idx].field_1 % 128 < 32:
                revert with 0, 34
            if not bool(stor8[idx].field_0):
                mem[mem[64]] = Mask(248, 8, stor8[idx].field_0)
                if sha3(mem[mem[64] len stor8[idx].field_1 % 128]) == _35:
                    return 1, idx
            else:
                if bool(stor8[idx].field_0) != 1:
                    if sha3(mem[mem[64] len -mem[64]]) == sha3(mem[128 len mem[96]]):
                        return 1, idx
                else:
                    mem[0] = sha3(idx, 8)
                    s = 0
                    t = sha3(mem[0])
                    while s < stor8[idx].field_1 % 128:
                        mem[s + _37] = stor[t]
                        s = s + 32
                        t = t + 1
                        continue 
                    if sha3(mem[mem[64] len _37 + stor8[idx].field_1 % 128 - mem[64]]) == _35:
                        return 1, idx
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    return 0, -1
}

function withdrawToken(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor0 != msg.sender:
        if 0x64db0493e018d48e724b802d28147bd7ce3992be != msg.sender:
            if address(stor1) != msg.sender:
                revert with 0, 'owner: caller is not the owner'
    mem[100] = this.address
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 132] = address(stor1)
    mem[ceil32(return_data.size) + 164] = ext_call.return_data[0]
    mem[ceil32(return_data.size) + 96] = 68
    mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor1)
    mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
    mem[ceil32(return_data.size) + 196] = 32
    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(arg1):
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), ext_call.return_data[0], 0
    mem[ceil32(return_data.size) + 328] = 0
    call arg1 with:
       funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), ext_call.return_data[0], 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), ext_call.return_data[0], 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
            if not uint32(this.address), mem[132 len 28]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
            if not mem[ceil32(return_data.size) + 292]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
}

function sub_2d1bfebc(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    mem[100] = msg.sender
    require ext_code.size(stor14)
    staticcall stor14.0xc69b23a2 with:
            gas gas_remaining wei
           args msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if bool(ext_call.return_data[0]) != 1:
        revert with 0, 'n'
    if not stor3[address(arg1)][address(arg2)]:
        mem[ceil32(return_data.size) + 100] = this.address
        mem[ceil32(return_data.size) + 132] = address(arg1)
        require ext_code.size(address(arg2))
        staticcall address(arg2).0xdd62ed3e with:
                gas gas_remaining wei
               args this.address, address(arg1)
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
        mem[(2 * ceil32(return_data.size)) + 132] = address(arg1)
        mem[(2 * ceil32(return_data.size)) + 164] = -1
        mem[(2 * ceil32(return_data.size)) + 96] = 68
        mem[(2 * ceil32(return_data.size)) + 132 len 28] = address(arg1) << 64
        mem[(2 * ceil32(return_data.size)) + 128 len 4] = approve(address arg1, uint256 arg2)
        mem[(2 * ceil32(return_data.size)) + 196] = 32
        mem[(2 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(address(arg2)):
            revert with 0, 'Address: call to non-contract'
        mem[(2 * ceil32(return_data.size)) + 260 len 96] = approve(address arg1, uint256 arg2), address(arg1) << 64, 0, -1, 0
        mem[(2 * ceil32(return_data.size)) + 328] = 0
        call address(arg2) with:
           funct Mask(32, 224, approve(address arg1, uint256 arg2), address(arg1) << 64, 0, -1, 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, approve(address arg1, uint256 arg2), address(arg1) << 64, 0, -1, 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0]:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0]:
                require ext_call.return_data[0] >= 32
                require uint32(msg.sender), mem[132 len 28] == bool(uint32(msg.sender), mem[132 len 28])
                if not uint32(msg.sender), mem[132 len 28]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[(2 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[(2 * ceil32(return_data.size)) + 292] == bool(mem[(2 * ceil32(return_data.size)) + 292])
                if not mem[(2 * ceil32(return_data.size)) + 292]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        stor3[address(arg1)][address(arg2)] = 1
}

function sub_68ecc5f8(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    mem[100] = msg.sender
    require ext_code.size(stor14)
    staticcall stor14.0xc69b23a2 with:
            gas gas_remaining wei
           args msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if bool(ext_call.return_data[0]) != 1:
        revert with 0, 'n'
    if not arg3:
        mem[ceil32(return_data.size) + 132] = address(arg2)
        mem[ceil32(return_data.size) + 164] = arg3
        mem[ceil32(return_data.size) + 96] = 68
        mem[ceil32(return_data.size) + 132 len 28] = address(arg2) << 64
        mem[ceil32(return_data.size) + 128 len 4] = approve(address arg1, uint256 arg2)
        mem[ceil32(return_data.size) + 196] = 32
        mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(address(arg1)):
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + 260 len 96] = approve(address arg1, uint256 arg2), address(arg2) << 64, 0, arg3, 0
        mem[ceil32(return_data.size) + 328] = 0
        call address(arg1) with:
           funct Mask(32, 224, approve(address arg1, uint256 arg2), address(arg2) << 64, 0, arg3, 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, approve(address arg1, uint256 arg2), address(arg2) << 64, 0, arg3, 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0]:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0]:
                require ext_call.return_data[0] >= 32
                require uint32(msg.sender), mem[132 len 28] == bool(uint32(msg.sender), mem[132 len 28])
                if not uint32(msg.sender), mem[132 len 28]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
                if not mem[ceil32(return_data.size) + 292]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[ceil32(return_data.size) + 100] = this.address
        mem[ceil32(return_data.size) + 132] = address(arg2)
        require ext_code.size(address(arg1))
        staticcall address(arg1).0xdd62ed3e with:
                gas gas_remaining wei
               args this.address, address(arg2)
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
        mem[(2 * ceil32(return_data.size)) + 132] = address(arg2)
        mem[(2 * ceil32(return_data.size)) + 164] = arg3
        mem[(2 * ceil32(return_data.size)) + 96] = 68
        mem[(2 * ceil32(return_data.size)) + 132 len 28] = address(arg2) << 64
        mem[(2 * ceil32(return_data.size)) + 128 len 4] = approve(address arg1, uint256 arg2)
        mem[(2 * ceil32(return_data.size)) + 196] = 32
        mem[(2 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(address(arg1)):
            revert with 0, 'Address: call to non-contract'
        mem[(2 * ceil32(return_data.size)) + 260 len 96] = approve(address arg1, uint256 arg2), address(arg2) << 64, 0, arg3, 0
        mem[(2 * ceil32(return_data.size)) + 328] = 0
        call address(arg1) with:
           funct Mask(32, 224, approve(address arg1, uint256 arg2), address(arg2) << 64, 0, arg3, 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, approve(address arg1, uint256 arg2), address(arg2) << 64, 0, arg3, 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0]:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0]:
                require ext_call.return_data[0] >= 32
                require uint32(msg.sender), mem[132 len 28] == bool(uint32(msg.sender), mem[132 len 28])
                if not uint32(msg.sender), mem[132 len 28]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[(2 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[(2 * ceil32(return_data.size)) + 292] == bool(mem[(2 * ceil32(return_data.size)) + 292])
                if not mem[(2 * ceil32(return_data.size)) + 292]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    if not arg3:
        stor3[address(arg2)][address(arg1)] = 0
    else:
        stor3[address(arg2)][address(arg1)] = 1
}

function sub_e6b35605(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require calldata.size + -cd[4] - 4 >= 192
    require ('cd', 4).length == address(('cd', 4).length)
    require ('cd', 4)[0] <= test266151307()
    require cd[4] + ('cd', 4)[0] + 35 < calldata.size
    if cd[(cd[4] + ('cd', 4)[0] + 4)] > test266151307():
        revert with 0, 65
    if ceil32(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + 289 < 288 or ceil32(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + 289 > test266151307():
        revert with 0, 65
    mem[288] = cd[(cd[4] + ('cd', 4)[0] + 4)]
    require cd[4] + ('cd', 4)[0] + (32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + 36 <= calldata.size
    idx = 0
    s = cd[4] + ('cd', 4)[0] + 36
    t = 320
    while idx < cd[(cd[4] + ('cd', 4)[0] + 4)]:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[224] = ('cd', 4)[3]
    require ('cd', 4)[4] == address(('cd', 4)[4])
    mem[ceil32(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + 293] = msg.sender
    require ext_code.size(stor14)
    staticcall stor14.0xc69b23a2 with:
            gas gas_remaining wei
           args msg.sender
    mem[ceil32(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + 289] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if bool(ext_call.return_data[0]) != 1:
        revert with 0, 'n'
    mem[ceil32(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + ceil32(return_data.size) + 289] = 0
    mem[ceil32(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + ceil32(return_data.size) + 321] = 96
    mem[ceil32(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + ceil32(return_data.size) + 353] = 0
    mem[ceil32(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + ceil32(return_data.size) + 385] = 0
    mem[ceil32(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + ceil32(return_data.size) + 417] = 0
    mem[ceil32(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + ceil32(return_data.size) + 449] = 0
    idx = 0
    while idx < mem[288]:
        if idx >= mem[288]:
            revert with 0, 50
        if idx >= mem[288]:
            revert with 0, 50
        mem[(32 * idx) + 320] = address(mem[(32 * idx) + 332 len 20] xor stor13)
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    mem[128] = 288
    mem[160] = stor13 xor ('cd', 4)[1]
    mem[192] = stor13 xor ('cd', 4)[2]
    mem[256] = address(address(('cd', 4)[4]) xor stor13)
    if 0 >= mem[288]:
        revert with 0, 50
    mem[ceil32(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + ceil32(return_data.size) + 485] = this.address
    require ext_code.size(mem[332 len 20])
    staticcall mem[332 len 20].0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[ceil32(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + ceil32(return_data.size) + 481] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 0 == stor13 xor ('cd', 4)[2]:
        mem[192] = ext_call.return_data[0]
    if 0 >= mem[288]:
        revert with 0, 50
    mem[ceil32(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (2 * ceil32(return_data.size)) + 485] = msg.sender
    require ext_code.size(stor14)
    staticcall stor14.0xc69b23a2 with:
            gas gas_remaining wei
           args msg.sender
    mem[ceil32(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (2 * ceil32(return_data.size)) + 481] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if bool(ext_call.return_data[0]) != 1:
        revert with 0, 'n'
    if stor3[address(address(('cd', 4).length) xor stor13)][address(mem[320])]:
        if 0 >= mem[288]:
            revert with 0, 50
        require ext_code.size(mem[332 len 20])
        staticcall mem[332 len 20].0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] and stor13 xor ('cd', 4)[1] > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if not ('cd', 4)[3]:
            revert with 0, 18
        # nil
    else:
        mem[ceil32(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (4 * ceil32(return_data.size)) + 485] = this.address
        mem[ceil32(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (4 * ceil32(return_data.size)) + 517] = address(address(('cd', 4).length) xor stor13)
        require ext_code.size(mem[332 len 20])
        staticcall mem[332 len 20].0xdd62ed3e with:
                gas gas_remaining wei
               args this.address, address(address(('cd', 4).length) xor stor13)
        mem[ceil32(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (4 * ceil32(return_data.size)) + 481] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
        mem[ceil32(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (6 * ceil32(return_data.size)) + 517] = address(address(('cd', 4).length) xor stor13)
        mem[ceil32(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (6 * ceil32(return_data.size)) + 549] = -1
        mem[ceil32(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (6 * ceil32(return_data.size)) + 481] = 68
        mem[ceil32(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (6 * ceil32(return_data.size)) + 513 len 4] = approve(address arg1, uint256 arg2)
        mem[ceil32(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (6 * ceil32(return_data.size)) + 581] = 32
        mem[ceil32(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (6 * ceil32(return_data.size)) + 613] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(mem[332 len 20]):
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (6 * ceil32(return_data.size)) + 645 len 96] = 0, address(address(('cd', 4).length) xor stor13), -1, 0
        mem[ceil32(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (6 * ceil32(return_data.size)) + 713] = 0
        call mem[332 len 20] with:
           funct Mask(32, 224, 0, address(address(('cd', 4).length) xor stor13), -1, 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, 0, address(address(('cd', 4).length) xor stor13), -1, 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if address(address(('cd', 4).length) xor stor13):
                    revert with memory
                      from 128
                       len address(address(('cd', 4).length) xor stor13)
                revert with 0, 'SafeERC20: low-level call failed'
            require not address(address(('cd', 4).length) xor stor13)
            stor3[address(address(('cd', 4).length) xor stor13)][address(mem[320])] = 1
            if 0 >= mem[288]:
                revert with 0, 50
            require ext_code.size(mem[332 len 20])
            staticcall mem[332 len 20].0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] and stor13 xor ('cd', 4)[1] > -1 / ext_call.return_data[0]:
                revert with 0, 17
            if not ('cd', 4)[3]:
                revert with 0, 18
            # nil
        else:
            mem[ceil32(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (6 * ceil32(return_data.size)) + 677 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if not return_data.size:
                stor3[address(address(('cd', 4).length) xor stor13)][address(mem[320])] = 1
                if 0 >= mem[288]:
                    revert with 0, 50
                require ext_code.size(mem[332 len 20])
                staticcall mem[332 len 20].0x18160ddd with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] and stor13 xor ('cd', 4)[1] > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                if not ('cd', 4)[3]:
                    revert with 0, 18
                # nil
            else:
                require return_data.size >= 32
                require mem[ceil32(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (6 * ceil32(return_data.size)) + 677] == bool(mem[ceil32(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (6 * ceil32(return_data.size)) + 677])
                if not mem[ceil32(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + (6 * ceil32(return_data.size)) + 677]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                stor3[address(address(('cd', 4).length) xor stor13)][address(mem[320])] = 1
                if 0 >= mem[288]:
                    revert with 0, 50
                require ext_code.size(mem[332 len 20])
                staticcall mem[332 len 20].0x18160ddd with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] and stor13 xor ('cd', 4)[1] > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                if not ('cd', 4)[3]:
                    revert with 0, 18
                # nil
}

function sub_804fec8f(?) {
    require calldata.size - 4 >= 32
    mem[96] = 96
    mem[128] = 0
    mem[160] = 0
    mem[192] = 0
    mem[224] = 0
    mem[256] = 0
    mem[288] = 0
    mem[320] = 0
    mem[352] = 0
    mem[384] = 0
    mem[416] = 0
    mem[448] = 0
    mem[480] = 0
    mem[512] = 96
    mem[544] = 96
    mem[576] = 0
    mem[608] = 0
    mem[640] = 0
    mem[32] = 8
    if bool(stor8[arg1].field_0):
        if bool(stor8[arg1].field_0) == uint255(stor8[arg1].field_0) * 0.5 < 32:
            revert with 0, 34
        mem[1248] = uint255(stor8[arg1].field_0) * 0.5
        if bool(stor8[arg1].field_0):
            if bool(stor8[arg1].field_0) == uint255(stor8[arg1].field_0) * 0.5 < 32:
                revert with 0, 34
            if not Mask(256, -1, stor8[arg1].field_0):
                mem[672] = 1248
                mem[704] = address(stor8[arg1].field_256)
                mem[736] = stor8[arg1].field_512
                mem[768] = stor8[arg1].field_768
                mem[800] = stor8[arg1].field_1024
                mem[832] = stor8[arg1].field_1280
                mem[864] = stor8[arg1].field_1536
                mem[896] = stor8[arg1].field_1792
                mem[928] = stor8[arg1].field_2048
                mem[960] = stor8[arg1].field_2304
                mem[992] = stor8[arg1].field_2560
                mem[1024] = stor8[arg1].field_2816
                mem[1056] = stor8[arg1].field_3072
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 1280] = stor8[arg1].field_3328
                if not stor8[arg1].field_3328:
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + 1312] = stor8[arg1].field_3584
                    if not stor8[arg1].field_3584:
                        mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1344] = 32
                        mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1376] = 576
                        mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1952] = uint255(stor8[arg1].field_0) * 0.5
                        mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1984 len ceil32(uint255(stor8[arg1].field_0) * 0.5)] = mem[1280 len ceil32(uint255(stor8[arg1].field_0) * 0.5)]
                        if ceil32(uint255(stor8[arg1].field_0) * 0.5) <= uint255(stor8[arg1].field_0) * 0.5:
                            mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1408] = address(stor8[arg1].field_256)
                            mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1440] = stor8[arg1].field_512
                            mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1472] = stor8[arg1].field_768
                            mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1504] = stor8[arg1].field_1024
                            mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1536] = stor8[arg1].field_1280
                            mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1568] = stor8[arg1].field_1536
                            mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1600] = stor8[arg1].field_1792
                            mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1632] = stor8[arg1].field_2048
                            mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1664] = stor8[arg1].field_2304
                            mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1696] = stor8[arg1].field_2560
                            mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1728] = stor8[arg1].field_2816
                            mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1760] = stor8[arg1].field_3072
                            mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1792] = ceil32(uint255(stor8[arg1].field_0) * 0.5) + 608
                            mem[(2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1984] = stor8[arg1].field_3328
                            idx = 0
                            s = ceil32(uint255(stor8[arg1].field_0) * 0.5) + 1312
                            t = (2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 2016
                            while idx < stor8[arg1].field_3328:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1824] = ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + 640
                            _1278 = mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + 1312]
                            mem[(2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + (64 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 2016] = mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + 1312]
                            idx = 0
                            s = ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + 1344
                            t = (2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + (64 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 2048
                            while idx < _1278:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            return mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1344 len 512], 
                                   bool(uint8(stor8[arg1].field_3840)),
                                   bool(uint8(stor8[arg1].field_3848)),
                                   bool(uint8(stor8[arg1].field_3856)),
                                   mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1952 len ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * _1278) + 96]
                        mem[(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1984] = 0
                        mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1408] = address(stor8[arg1].field_256)
                        mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1440] = stor8[arg1].field_512
                        mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1472] = stor8[arg1].field_768
                        mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1504] = stor8[arg1].field_1024
                        mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1536] = stor8[arg1].field_1280
                        mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1568] = stor8[arg1].field_1536
                        mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1600] = stor8[arg1].field_1792
                        mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1632] = stor8[arg1].field_2048
                        mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1664] = stor8[arg1].field_2304
                        mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1696] = stor8[arg1].field_2560
                        mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1728] = stor8[arg1].field_2816
                        mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1760] = stor8[arg1].field_3072
                        mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1792] = ceil32(uint255(stor8[arg1].field_0) * 0.5) + 608
                        mem[(2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1984] = stor8[arg1].field_3328
                        idx = 0
                        s = ceil32(uint255(stor8[arg1].field_0) * 0.5) + 1312
                        t = (2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 2016
                        while idx < stor8[arg1].field_3328:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1824] = ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + 640
                        _1279 = mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + 1312]
                        mem[(2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + (64 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 2016] = mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + 1312]
                        idx = 0
                        s = ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + 1344
                        t = (2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + (64 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 2048
                        while idx < _1279:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        return mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1344 len 512], 
                               bool(uint8(stor8[arg1].field_3840)),
                               bool(uint8(stor8[arg1].field_3848)),
                               bool(uint8(stor8[arg1].field_3856)),
                               mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1952 len ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * _1279) + 96]
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + 1344] = address(stor8[arg1][14].field_0)
                    idx = ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + 1344
                    s = 0
                    while ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1312 > idx:
                        mem[idx + 32] = address(stor8[arg1][s + 14].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1344] = 32
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1376] = 576
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1952] = uint255(stor8[arg1].field_0) * 0.5
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1984 len ceil32(uint255(stor8[arg1].field_0) * 0.5)] = mem[1280 len ceil32(uint255(stor8[arg1].field_0) * 0.5)]
                    if ceil32(uint255(stor8[arg1].field_0) * 0.5) <= uint255(stor8[arg1].field_0) * 0.5:
                        mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1408] = address(stor8[arg1].field_256)
                        mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1440] = stor8[arg1].field_512
                        mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1472] = stor8[arg1].field_768
                        mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1504] = stor8[arg1].field_1024
                        mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1536] = stor8[arg1].field_1280
                        mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1568] = stor8[arg1].field_1536
                        mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1600] = stor8[arg1].field_1792
                        mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1632] = stor8[arg1].field_2048
                        mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1664] = stor8[arg1].field_2304
                        mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1696] = stor8[arg1].field_2560
                        mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1728] = stor8[arg1].field_2816
                        mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1760] = stor8[arg1].field_3072
                        mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1792] = ceil32(uint255(stor8[arg1].field_0) * 0.5) + 608
                        mem[(2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1984] = stor8[arg1].field_3328
                        idx = 0
                        s = ceil32(uint255(stor8[arg1].field_0) * 0.5) + 1312
                        t = (2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 2016
                        while idx < mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 1280]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1824] = ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 1280]) + 640
                        _3654 = mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + 1312]
                        mem[(2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + (32 * mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 1280]) + 2016] = mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + 1312]
                        idx = 0
                        s = ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + 1344
                        t = (2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + (32 * mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 1280]) + 2048
                        while idx < _3654:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        return mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1344 len 512], 
                               bool(uint8(stor8[arg1].field_3840)),
                               bool(uint8(stor8[arg1].field_3848)),
                               bool(uint8(stor8[arg1].field_3856)),
                               mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1952 len ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 1280]) + (32 * _3654) + 96]
                    mem[(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1984] = 0
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1408] = address(stor8[arg1].field_256)
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1440] = stor8[arg1].field_512
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1472] = stor8[arg1].field_768
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1504] = stor8[arg1].field_1024
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1536] = stor8[arg1].field_1280
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1568] = stor8[arg1].field_1536
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1600] = stor8[arg1].field_1792
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1632] = stor8[arg1].field_2048
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1664] = stor8[arg1].field_2304
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1696] = stor8[arg1].field_2560
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1728] = stor8[arg1].field_2816
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1760] = stor8[arg1].field_3072
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1792] = ceil32(uint255(stor8[arg1].field_0) * 0.5) + 608
                    mem[(2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1984] = stor8[arg1].field_3328
                    idx = 0
                    s = ceil32(uint255(stor8[arg1].field_0) * 0.5) + 1312
                    t = (2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 2016
                    while idx < mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 1280]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1824] = ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 1280]) + 640
                    _3655 = mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + 1312]
                    mem[(2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + (32 * mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 1280]) + 2016] = mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + 1312]
                    idx = 0
                    s = ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + 1344
                    t = (2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + (32 * mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 1280]) + 2048
                    while idx < _3655:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    return mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1344 len 512], 
                           bool(uint8(stor8[arg1].field_3840)),
                           bool(uint8(stor8[arg1].field_3848)),
                           bool(uint8(stor8[arg1].field_3856)),
                           mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1952 len ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 1280]) + (32 * _3655) + 96]
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 1312] = address(stor8[arg1][13].field_0)
                idx = ceil32(uint255(stor8[arg1].field_0) * 0.5) + 1312
                s = 0
                while ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + 1280 > idx:
                    mem[idx + 32] = address(stor8[arg1][s + 13].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
                mem[1088] = ceil32(uint255(stor8[arg1].field_0) * 0.5) + 1280
                mem[64] = ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1344
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + 1312] = stor8[arg1].field_3584
                if not stor8[arg1].field_3584:
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1344] = 32
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1376] = 576
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1952] = uint255(stor8[arg1].field_0) * 0.5
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1984 len ceil32(uint255(stor8[arg1].field_0) * 0.5)] = mem[1280 len ceil32(uint255(stor8[arg1].field_0) * 0.5)]
                    if ceil32(uint255(stor8[arg1].field_0) * 0.5) <= uint255(stor8[arg1].field_0) * 0.5:
                        mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1408] = address(stor8[arg1].field_256)
                        mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1440] = stor8[arg1].field_512
                        mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1472] = stor8[arg1].field_768
                        mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1504] = stor8[arg1].field_1024
                        mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1536] = stor8[arg1].field_1280
                        mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1568] = stor8[arg1].field_1536
                        mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1600] = stor8[arg1].field_1792
                        mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1632] = stor8[arg1].field_2048
                        mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1664] = stor8[arg1].field_2304
                        mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1696] = stor8[arg1].field_2560
                        mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1728] = stor8[arg1].field_2816
                        mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1760] = stor8[arg1].field_3072
                        mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1792] = ceil32(uint255(stor8[arg1].field_0) * 0.5) + 608
                        mem[(2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1984] = stor8[arg1].field_3328
                        idx = 0
                        s = ceil32(uint255(stor8[arg1].field_0) * 0.5) + 1312
                        t = (2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 2016
                        while idx < mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 1280]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1824] = ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 1280]) + 640
                        _3656 = mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + 1312]
                        mem[(2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + (32 * mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 1280]) + 2016] = mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + 1312]
                        idx = 0
                        s = ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + 1344
                        t = (2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + (32 * mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 1280]) + 2048
                        while idx < _3656:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        return mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1344 len 512], 
                               bool(uint8(stor8[arg1].field_3840)),
                               bool(uint8(stor8[arg1].field_3848)),
                               bool(uint8(stor8[arg1].field_3856)),
                               mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1952 len ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 1280]) + (32 * _3656) + 96]
                    mem[(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1984] = 0
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1408] = address(stor8[arg1].field_256)
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1440] = stor8[arg1].field_512
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1472] = stor8[arg1].field_768
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1504] = stor8[arg1].field_1024
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1536] = stor8[arg1].field_1280
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1568] = stor8[arg1].field_1536
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1600] = stor8[arg1].field_1792
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1632] = stor8[arg1].field_2048
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1664] = stor8[arg1].field_2304
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1696] = stor8[arg1].field_2560
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1728] = stor8[arg1].field_2816
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1760] = stor8[arg1].field_3072
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1792] = ceil32(uint255(stor8[arg1].field_0) * 0.5) + 608
                    mem[(2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1984] = stor8[arg1].field_3328
                    idx = 0
                    s = ceil32(uint255(stor8[arg1].field_0) * 0.5) + 1312
                    t = (2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 2016
                    while idx < mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 1280]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1824] = ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 1280]) + 640
                    _3657 = mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + 1312]
                    mem[(2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + (32 * mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 1280]) + 2016] = mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + 1312]
                    idx = 0
                    s = ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + 1344
                    t = (2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + (32 * mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 1280]) + 2048
                    while idx < _3657:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    return mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1344 len 512], 
                           bool(uint8(stor8[arg1].field_3840)),
                           bool(uint8(stor8[arg1].field_3848)),
                           bool(uint8(stor8[arg1].field_3856)),
                           mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1952 len ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 1280]) + (32 * _3657) + 96]
                mem[0] = sha3(arg1, 8) + 14
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + 1344] = address(stor8[arg1][14].field_0)
                idx = ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + 1344
                s = 0
                while ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1312 > idx:
                    mem[idx + 32] = address(stor8[arg1][s + 14].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
                mem[1120] = ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + 1312
                mem[1152] = bool(uint8(stor8[arg1].field_3840))
                mem[1184] = bool(uint8(stor8[arg1].field_3848))
                mem[1216] = bool(uint8(stor8[arg1].field_3856))
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1344] = 32
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1376] = 576
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1952] = uint255(stor8[arg1].field_0) * 0.5
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1984 len ceil32(uint255(stor8[arg1].field_0) * 0.5)] = mem[1280 len ceil32(uint255(stor8[arg1].field_0) * 0.5)]
                if ceil32(uint255(stor8[arg1].field_0) * 0.5) > uint255(stor8[arg1].field_0) * 0.5:
                    mem[(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1984] = 0
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1408] = address(stor8[arg1].field_256)
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1440] = stor8[arg1].field_512
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1472] = stor8[arg1].field_768
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1504] = stor8[arg1].field_1024
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1536] = stor8[arg1].field_1280
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1568] = stor8[arg1].field_1536
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1600] = stor8[arg1].field_1792
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1632] = stor8[arg1].field_2048
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1664] = stor8[arg1].field_2304
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1696] = stor8[arg1].field_2560
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1728] = stor8[arg1].field_2816
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1760] = stor8[arg1].field_3072
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1792] = ceil32(uint255(stor8[arg1].field_0) * 0.5) + 608
                    mem[(2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1984] = stor8[arg1].field_3328
                    idx = 0
                    s = ceil32(uint255(stor8[arg1].field_0) * 0.5) + 1312
                    t = (2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 2016
                    while idx < mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 1280]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1824] = ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 1280]) + 640
                    _5499 = mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + 1312]
                    mem[(2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + (32 * mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 1280]) + 2016] = mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + 1312]
                    idx = 0
                    s = ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + 1344
                    t = (2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + (32 * mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 1280]) + 2048
                    while idx < _5499:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    return mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1344 len 512], 
                           bool(uint8(stor8[arg1].field_3840)),
                           bool(uint8(stor8[arg1].field_3848)),
                           bool(uint8(stor8[arg1].field_3856)),
                           mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1952 len ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 1280]) + (32 * _5499) + 96]
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1408] = address(stor8[arg1].field_256)
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1440] = stor8[arg1].field_512
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1472] = stor8[arg1].field_768
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1504] = stor8[arg1].field_1024
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1536] = stor8[arg1].field_1280
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1568] = stor8[arg1].field_1536
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1600] = stor8[arg1].field_1792
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1632] = stor8[arg1].field_2048
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1664] = stor8[arg1].field_2304
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1696] = stor8[arg1].field_2560
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1728] = stor8[arg1].field_2816
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1760] = stor8[arg1].field_3072
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1792] = ceil32(uint255(stor8[arg1].field_0) * 0.5) + 608
                mem[(2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1984] = stor8[arg1].field_3328
                idx = 0
                s = ceil32(uint255(stor8[arg1].field_0) * 0.5) + 1312
                t = ceil32(mem[1248]) + mem[64] + 672
                while idx < stor8[arg1].field_3328:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1824] = ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + 640
                _5498 = mem[mem[1120]]
                mem[(2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + (64 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 2016] = mem[mem[1120]]
                idx = 0
                s = mem[1120] + 32
                t = (2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + (64 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 2048
                while idx < _5498:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1856] = bool(mem[1152])
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1888] = bool(mem[1184])
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1920] = bool(mem[1216])
                return memory
                  from mem[64]
                   len (2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + (64 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + (32 * _5498) + -mem[64] + 2048
            if 31 >= uint255(stor8[arg1].field_0) * 0.5:
                mem[1280] = 256 * Mask(248, 0, stor8[arg1].field_8)
                mem[672] = 1248
                mem[704] = address(stor8[arg1].field_256)
                mem[736] = stor8[arg1].field_512
                mem[768] = stor8[arg1].field_768
                mem[800] = stor8[arg1].field_1024
                mem[832] = stor8[arg1].field_1280
                mem[864] = stor8[arg1].field_1536
                mem[896] = stor8[arg1].field_1792
                mem[928] = stor8[arg1].field_2048
                mem[960] = stor8[arg1].field_2304
                mem[992] = stor8[arg1].field_2560
                mem[1024] = stor8[arg1].field_2816
                mem[1056] = stor8[arg1].field_3072
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 1280] = stor8[arg1].field_3328
                if not stor8[arg1].field_3328:
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + 1312] = stor8[arg1].field_3584
                    if not stor8[arg1].field_3584:
                        mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1344] = 32
                        mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1376] = 576
                        mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1952] = uint255(stor8[arg1].field_0) * 0.5
                        mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1984 len ceil32(uint255(stor8[arg1].field_0) * 0.5)] = mem[1280 len ceil32(uint255(stor8[arg1].field_0) * 0.5)]
                        if ceil32(uint255(stor8[arg1].field_0) * 0.5) <= uint255(stor8[arg1].field_0) * 0.5:
                            mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1408] = address(stor8[arg1].field_256)
                            mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1440] = stor8[arg1].field_512
                            mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1472] = stor8[arg1].field_768
                            mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1504] = stor8[arg1].field_1024
                            mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1536] = stor8[arg1].field_1280
                            mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1568] = stor8[arg1].field_1536
                            mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1600] = stor8[arg1].field_1792
                            mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1632] = stor8[arg1].field_2048
                            mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1664] = stor8[arg1].field_2304
                            mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1696] = stor8[arg1].field_2560
                            mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1728] = stor8[arg1].field_2816
                            mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1760] = stor8[arg1].field_3072
                            mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1792] = ceil32(uint255(stor8[arg1].field_0) * 0.5) + 608
                            mem[(2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1984] = stor8[arg1].field_3328
                            idx = 0
                            s = ceil32(uint255(stor8[arg1].field_0) * 0.5) + 1312
                            t = (2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 2016
                            while idx < stor8[arg1].field_3328:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1824] = ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + 640
                            _1282 = mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + 1312]
                            mem[(2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + (64 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 2016] = mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + 1312]
                            idx = 0
                            s = ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + 1344
                            t = (2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + (64 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 2048
                            while idx < _1282:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            return mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1344 len 512], 
                                   bool(uint8(stor8[arg1].field_3840)),
                                   bool(uint8(stor8[arg1].field_3848)),
                                   bool(uint8(stor8[arg1].field_3856)),
                                   mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1952 len ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * _1282) + 96]
                        mem[(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1984] = 0
                        mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1408] = address(stor8[arg1].field_256)
                        mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1440] = stor8[arg1].field_512
                        mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1472] = stor8[arg1].field_768
                        mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1504] = stor8[arg1].field_1024
                        mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1536] = stor8[arg1].field_1280
                        mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1568] = stor8[arg1].field_1536
                        mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1600] = stor8[arg1].field_1792
                        mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1632] = stor8[arg1].field_2048
                        mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1664] = stor8[arg1].field_2304
                        mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1696] = stor8[arg1].field_2560
                        mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1728] = stor8[arg1].field_2816
                        mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1760] = stor8[arg1].field_3072
                        mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1792] = ceil32(uint255(stor8[arg1].field_0) * 0.5) + 608
                        mem[(2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1984] = stor8[arg1].field_3328
                        idx = 0
                        s = ceil32(uint255(stor8[arg1].field_0) * 0.5) + 1312
                        t = (2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 2016
                        while idx < stor8[arg1].field_3328:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1824] = ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + 640
                        _1283 = mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + 1312]
                        mem[(2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + (64 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 2016] = mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + 1312]
                        idx = 0
                        s = ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + 1344
                        t = (2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + (64 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 2048
                        while idx < _1283:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        return mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1344 len 512], 
                               bool(uint8(stor8[arg1].field_3840)),
                               bool(uint8(stor8[arg1].field_3848)),
                               bool(uint8(stor8[arg1].field_3856)),
                               mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1952 len ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * _1283) + 96]
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + 1344] = address(stor8[arg1][14].field_0)
                    idx = ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + 1344
                    s = 0
                    while ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1312 > idx:
                        mem[idx + 32] = address(stor8[arg1][s + 14].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1344] = 32
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1376] = 576
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1952] = uint255(stor8[arg1].field_0) * 0.5
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1984 len ceil32(uint255(stor8[arg1].field_0) * 0.5)] = mem[1280 len ceil32(uint255(stor8[arg1].field_0) * 0.5)]
                    if ceil32(uint255(stor8[arg1].field_0) * 0.5) <= uint255(stor8[arg1].field_0) * 0.5:
                        mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1408] = address(stor8[arg1].field_256)
                        mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1440] = stor8[arg1].field_512
                        mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1472] = stor8[arg1].field_768
                        mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1504] = stor8[arg1].field_1024
                        mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1536] = stor8[arg1].field_1280
                        mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1568] = stor8[arg1].field_1536
                        mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1600] = stor8[arg1].field_1792
                        mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1632] = stor8[arg1].field_2048
                        mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1664] = stor8[arg1].field_2304
                        mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1696] = stor8[arg1].field_2560
                        mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1728] = stor8[arg1].field_2816
                        mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1760] = stor8[arg1].field_3072
                        mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1792] = ceil32(uint255(stor8[arg1].field_0) * 0.5) + 608
                        mem[(2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1984] = stor8[arg1].field_3328
                        idx = 0
                        s = ceil32(uint255(stor8[arg1].field_0) * 0.5) + 1312
                        t = (2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 2016
                        while idx < mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 1280]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1824] = ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 1280]) + 640
                        _3661 = mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + 1312]
                        mem[(2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + (32 * mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 1280]) + 2016] = mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + 1312]
                        idx = 0
                        s = ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + 1344
                        t = (2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + (32 * mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 1280]) + 2048
                        while idx < _3661:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        return mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1344 len 512], 
                               bool(uint8(stor8[arg1].field_3840)),
                               bool(uint8(stor8[arg1].field_3848)),
                               bool(uint8(stor8[arg1].field_3856)),
                               mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1952 len ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 1280]) + (32 * _3661) + 96]
                    mem[(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1984] = 0
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1408] = address(stor8[arg1].field_256)
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1440] = stor8[arg1].field_512
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1472] = stor8[arg1].field_768
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1504] = stor8[arg1].field_1024
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1536] = stor8[arg1].field_1280
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1568] = stor8[arg1].field_1536
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1600] = stor8[arg1].field_1792
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1632] = stor8[arg1].field_2048
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1664] = stor8[arg1].field_2304
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1696] = stor8[arg1].field_2560
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1728] = stor8[arg1].field_2816
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1760] = stor8[arg1].field_3072
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1792] = ceil32(uint255(stor8[arg1].field_0) * 0.5) + 608
                    mem[(2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1984] = stor8[arg1].field_3328
                    idx = 0
                    s = ceil32(uint255(stor8[arg1].field_0) * 0.5) + 1312
                    t = (2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 2016
                    while idx < mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 1280]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1824] = ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 1280]) + 640
                    _3662 = mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + 1312]
                    mem[(2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + (32 * mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 1280]) + 2016] = mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + 1312]
                    idx = 0
                    s = ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + 1344
                    t = (2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + (32 * mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 1280]) + 2048
                    while idx < _3662:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    return mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1344 len 512], 
                           bool(uint8(stor8[arg1].field_3840)),
                           bool(uint8(stor8[arg1].field_3848)),
                           bool(uint8(stor8[arg1].field_3856)),
                           mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1952 len ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 1280]) + (32 * _3662) + 96]
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 1312] = address(stor8[arg1][13].field_0)
                idx = ceil32(uint255(stor8[arg1].field_0) * 0.5) + 1312
                s = 0
                while ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + 1280 > idx:
                    mem[idx + 32] = address(stor8[arg1][s + 13].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
                mem[1088] = ceil32(uint255(stor8[arg1].field_0) * 0.5) + 1280
                mem[64] = ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1344
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + 1312] = stor8[arg1].field_3584
                if not stor8[arg1].field_3584:
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1344] = 32
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1376] = 576
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1952] = uint255(stor8[arg1].field_0) * 0.5
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1984 len ceil32(uint255(stor8[arg1].field_0) * 0.5)] = mem[1280 len ceil32(uint255(stor8[arg1].field_0) * 0.5)]
                    if ceil32(uint255(stor8[arg1].field_0) * 0.5) <= uint255(stor8[arg1].field_0) * 0.5:
                        mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1408] = address(stor8[arg1].field_256)
                        mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1440] = stor8[arg1].field_512
                        mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1472] = stor8[arg1].field_768
                        mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1504] = stor8[arg1].field_1024
                        mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1536] = stor8[arg1].field_1280
                        mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1568] = stor8[arg1].field_1536
                        mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1600] = stor8[arg1].field_1792
                        mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1632] = stor8[arg1].field_2048
                        mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1664] = stor8[arg1].field_2304
                        mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1696] = stor8[arg1].field_2560
                        mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1728] = stor8[arg1].field_2816
                        mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1760] = stor8[arg1].field_3072
                        mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1792] = ceil32(uint255(stor8[arg1].field_0) * 0.5) + 608
                        mem[(2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1984] = stor8[arg1].field_3328
                        idx = 0
                        s = ceil32(uint255(stor8[arg1].field_0) * 0.5) + 1312
                        t = (2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 2016
                        while idx < mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 1280]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1824] = ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 1280]) + 640
                        _3663 = mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + 1312]
                        mem[(2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + (32 * mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 1280]) + 2016] = mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + 1312]
                        idx = 0
                        s = ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + 1344
                        t = (2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + (32 * mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 1280]) + 2048
                        while idx < _3663:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        return mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1344 len 512], 
                               bool(uint8(stor8[arg1].field_3840)),
                               bool(uint8(stor8[arg1].field_3848)),
                               bool(uint8(stor8[arg1].field_3856)),
                               mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1952 len ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 1280]) + (32 * _3663) + 96]
                    mem[(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1984] = 0
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1408] = address(stor8[arg1].field_256)
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1440] = stor8[arg1].field_512
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1472] = stor8[arg1].field_768
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1504] = stor8[arg1].field_1024
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1536] = stor8[arg1].field_1280
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1568] = stor8[arg1].field_1536
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1600] = stor8[arg1].field_1792
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1632] = stor8[arg1].field_2048
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1664] = stor8[arg1].field_2304
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1696] = stor8[arg1].field_2560
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1728] = stor8[arg1].field_2816
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1760] = stor8[arg1].field_3072
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1792] = ceil32(uint255(stor8[arg1].field_0) * 0.5) + 608
                    mem[(2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1984] = stor8[arg1].field_3328
                    idx = 0
                    s = ceil32(uint255(stor8[arg1].field_0) * 0.5) + 1312
                    t = (2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 2016
                    while idx < mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 1280]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1824] = ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 1280]) + 640
                    _3664 = mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + 1312]
                    mem[(2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + (32 * mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 1280]) + 2016] = mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + 1312]
                    idx = 0
                    s = ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + 1344
                    t = (2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + (32 * mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 1280]) + 2048
                    while idx < _3664:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    return mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1344 len 512], 
                           bool(uint8(stor8[arg1].field_3840)),
                           bool(uint8(stor8[arg1].field_3848)),
                           bool(uint8(stor8[arg1].field_3856)),
                           mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1952 len ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 1280]) + (32 * _3664) + 96]
                mem[0] = sha3(arg1, 8) + 14
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + 1344] = address(stor8[arg1][14].field_0)
                idx = ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + 1344
                s = 0
                while ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1312 > idx:
                    mem[idx + 32] = address(stor8[arg1][s + 14].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
                mem[1120] = ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + 1312
                mem[1152] = bool(uint8(stor8[arg1].field_3840))
                mem[1184] = bool(uint8(stor8[arg1].field_3848))
                mem[1216] = bool(uint8(stor8[arg1].field_3856))
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1344] = 32
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1376] = 576
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1952] = uint255(stor8[arg1].field_0) * 0.5
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1984 len ceil32(uint255(stor8[arg1].field_0) * 0.5)] = mem[1280 len ceil32(uint255(stor8[arg1].field_0) * 0.5)]
                if ceil32(uint255(stor8[arg1].field_0) * 0.5) > uint255(stor8[arg1].field_0) * 0.5:
                    mem[(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1984] = 0
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1408] = address(stor8[arg1].field_256)
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1440] = stor8[arg1].field_512
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1472] = stor8[arg1].field_768
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1504] = stor8[arg1].field_1024
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1536] = stor8[arg1].field_1280
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1568] = stor8[arg1].field_1536
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1600] = stor8[arg1].field_1792
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1632] = stor8[arg1].field_2048
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1664] = stor8[arg1].field_2304
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1696] = stor8[arg1].field_2560
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1728] = stor8[arg1].field_2816
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1760] = stor8[arg1].field_3072
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1792] = ceil32(uint255(stor8[arg1].field_0) * 0.5) + 608
                    mem[(2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1984] = stor8[arg1].field_3328
                    idx = 0
                    s = ceil32(uint255(stor8[arg1].field_0) * 0.5) + 1312
                    t = (2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 2016
                    while idx < mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 1280]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1824] = ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 1280]) + 640
                    _5505 = mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + 1312]
                    mem[(2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + (32 * mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 1280]) + 2016] = mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + 1312]
                    idx = 0
                    s = ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + 1344
                    t = (2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + (32 * mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 1280]) + 2048
                    while idx < _5505:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    return mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1344 len 512], 
                           bool(uint8(stor8[arg1].field_3840)),
                           bool(uint8(stor8[arg1].field_3848)),
                           bool(uint8(stor8[arg1].field_3856)),
                           mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1952 len ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 1280]) + (32 * _5505) + 96]
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1408] = address(stor8[arg1].field_256)
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1440] = stor8[arg1].field_512
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1472] = stor8[arg1].field_768
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1504] = stor8[arg1].field_1024
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1536] = stor8[arg1].field_1280
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1568] = stor8[arg1].field_1536
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1600] = stor8[arg1].field_1792
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1632] = stor8[arg1].field_2048
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1664] = stor8[arg1].field_2304
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1696] = stor8[arg1].field_2560
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1728] = stor8[arg1].field_2816
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1760] = stor8[arg1].field_3072
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1792] = ceil32(uint255(stor8[arg1].field_0) * 0.5) + 608
                mem[(2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1984] = stor8[arg1].field_3328
                idx = 0
                s = ceil32(uint255(stor8[arg1].field_0) * 0.5) + 1312
                t = ceil32(mem[1248]) + mem[64] + 672
                while idx < stor8[arg1].field_3328:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1824] = ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + 640
                _5504 = mem[mem[1120]]
                mem[(2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + (64 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 2016] = mem[mem[1120]]
                idx = 0
                s = mem[1120] + 32
                t = (2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + (64 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 2048
                while idx < _5504:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1856] = bool(mem[1152])
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1888] = bool(mem[1184])
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1920] = bool(mem[1216])
                return memory
                  from mem[64]
                   len (2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + (64 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + (32 * _5504) + -mem[64] + 2048
            mem[1280] = stor8[arg1].field_0
            idx = 1280
            s = 0
            while (uint255(stor8[arg1].field_0) * 0.5) + 1248 > idx:
                mem[idx + 32] = stor8[arg1][s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            mem[672] = 1248
            mem[704] = address(stor8[arg1].field_256)
            mem[736] = stor8[arg1].field_512
            mem[768] = stor8[arg1].field_768
            mem[800] = stor8[arg1].field_1024
            mem[832] = stor8[arg1].field_1280
            mem[864] = stor8[arg1].field_1536
            mem[896] = stor8[arg1].field_1792
            mem[928] = stor8[arg1].field_2048
            mem[960] = stor8[arg1].field_2304
            mem[992] = stor8[arg1].field_2560
            mem[1024] = stor8[arg1].field_2816
            mem[1056] = stor8[arg1].field_3072
            mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 1280] = stor8[arg1].field_3328
            if not stor8[arg1].field_3328:
                mem[1088] = ceil32(uint255(stor8[arg1].field_0) * 0.5) + 1280
                mem[64] = ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1344
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + 1312] = stor8[arg1].field_3584
                if not stor8[arg1].field_3584:
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1344] = 32
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1376] = 576
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1952] = uint255(stor8[arg1].field_0) * 0.5
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1984 len ceil32(uint255(stor8[arg1].field_0) * 0.5)] = mem[1280 len ceil32(uint255(stor8[arg1].field_0) * 0.5)]
                    if ceil32(uint255(stor8[arg1].field_0) * 0.5) <= uint255(stor8[arg1].field_0) * 0.5:
                        mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1408] = address(stor8[arg1].field_256)
                        mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1440] = stor8[arg1].field_512
                        mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1472] = stor8[arg1].field_768
                        mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1504] = stor8[arg1].field_1024
                        mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1536] = stor8[arg1].field_1280
                        mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1568] = stor8[arg1].field_1536
                        mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1600] = stor8[arg1].field_1792
                        mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1632] = stor8[arg1].field_2048
                        mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1664] = stor8[arg1].field_2304
                        mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1696] = stor8[arg1].field_2560
                        mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1728] = stor8[arg1].field_2816
                        mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1760] = stor8[arg1].field_3072
                        mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1792] = ceil32(uint255(stor8[arg1].field_0) * 0.5) + 608
                        mem[(2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1984] = stor8[arg1].field_3328
                        idx = 0
                        s = ceil32(uint255(stor8[arg1].field_0) * 0.5) + 1312
                        t = (2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 2016
                        while idx < mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 1280]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1824] = ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 1280]) + 640
                        _2380 = mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + 1312]
                        mem[(2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + (32 * mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 1280]) + 2016] = mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + 1312]
                        idx = 0
                        s = ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + 1344
                        t = (2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + (32 * mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 1280]) + 2048
                        while idx < _2380:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        return mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1344 len 512], 
                               bool(uint8(stor8[arg1].field_3840)),
                               bool(uint8(stor8[arg1].field_3848)),
                               bool(uint8(stor8[arg1].field_3856)),
                               mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1952 len ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 1280]) + (32 * _2380) + 96]
                    mem[(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1984] = 0
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1408] = address(stor8[arg1].field_256)
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1440] = stor8[arg1].field_512
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1472] = stor8[arg1].field_768
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1504] = stor8[arg1].field_1024
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1536] = stor8[arg1].field_1280
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1568] = stor8[arg1].field_1536
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1600] = stor8[arg1].field_1792
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1632] = stor8[arg1].field_2048
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1664] = stor8[arg1].field_2304
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1696] = stor8[arg1].field_2560
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1728] = stor8[arg1].field_2816
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1760] = stor8[arg1].field_3072
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1792] = ceil32(uint255(stor8[arg1].field_0) * 0.5) + 608
                    mem[(2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1984] = stor8[arg1].field_3328
                    idx = 0
                    s = ceil32(uint255(stor8[arg1].field_0) * 0.5) + 1312
                    t = (2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 2016
                    while idx < mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 1280]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1824] = ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 1280]) + 640
                    _2381 = mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + 1312]
                    mem[(2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + (32 * mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 1280]) + 2016] = mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + 1312]
                    idx = 0
                    s = ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + 1344
                    t = (2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + (32 * mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 1280]) + 2048
                    while idx < _2381:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    return mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1344 len 512], 
                           bool(uint8(stor8[arg1].field_3840)),
                           bool(uint8(stor8[arg1].field_3848)),
                           bool(uint8(stor8[arg1].field_3856)),
                           mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1952 len ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 1280]) + (32 * _2381) + 96]
                mem[0] = sha3(arg1, 8) + 14
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + 1344] = address(stor8[arg1][14].field_0)
                idx = ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + 1344
                s = 0
                while ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1312 > idx:
                    mem[idx + 32] = address(stor8[arg1][s + 14].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
                mem[1120] = ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + 1312
                mem[1152] = bool(uint8(stor8[arg1].field_3840))
                mem[1184] = bool(uint8(stor8[arg1].field_3848))
                mem[1216] = bool(uint8(stor8[arg1].field_3856))
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1344] = 32
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1376] = 576
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1952] = uint255(stor8[arg1].field_0) * 0.5
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1984 len ceil32(uint255(stor8[arg1].field_0) * 0.5)] = mem[1280 len ceil32(uint255(stor8[arg1].field_0) * 0.5)]
                if ceil32(uint255(stor8[arg1].field_0) * 0.5) > uint255(stor8[arg1].field_0) * 0.5:
                    mem[(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1984] = 0
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1408] = address(stor8[arg1].field_256)
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1440] = stor8[arg1].field_512
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1472] = stor8[arg1].field_768
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1504] = stor8[arg1].field_1024
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1536] = stor8[arg1].field_1280
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1568] = stor8[arg1].field_1536
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1600] = stor8[arg1].field_1792
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1632] = stor8[arg1].field_2048
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1664] = stor8[arg1].field_2304
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1696] = stor8[arg1].field_2560
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1728] = stor8[arg1].field_2816
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1760] = stor8[arg1].field_3072
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1792] = ceil32(uint255(stor8[arg1].field_0) * 0.5) + 608
                    mem[(2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1984] = stor8[arg1].field_3328
                    idx = 0
                    s = ceil32(uint255(stor8[arg1].field_0) * 0.5) + 1312
                    t = (2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 2016
                    while idx < mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 1280]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1824] = ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 1280]) + 640
                    _4707 = mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + 1312]
                    mem[(2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + (32 * mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 1280]) + 2016] = mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + 1312]
                    idx = 0
                    s = ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + 1344
                    t = (2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + (32 * mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 1280]) + 2048
                    while idx < _4707:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    return mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1344 len 512], 
                           bool(uint8(stor8[arg1].field_3840)),
                           bool(uint8(stor8[arg1].field_3848)),
                           bool(uint8(stor8[arg1].field_3856)),
                           mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1952 len ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 1280]) + (32 * _4707) + 96]
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1408] = address(stor8[arg1].field_256)
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1440] = stor8[arg1].field_512
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1472] = stor8[arg1].field_768
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1504] = stor8[arg1].field_1024
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1536] = stor8[arg1].field_1280
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1568] = stor8[arg1].field_1536
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1600] = stor8[arg1].field_1792
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1632] = stor8[arg1].field_2048
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1664] = stor8[arg1].field_2304
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1696] = stor8[arg1].field_2560
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1728] = stor8[arg1].field_2816
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1760] = stor8[arg1].field_3072
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1792] = ceil32(uint255(stor8[arg1].field_0) * 0.5) + 608
                mem[(2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1984] = stor8[arg1].field_3328
                idx = 0
                s = ceil32(uint255(stor8[arg1].field_0) * 0.5) + 1312
                t = ceil32(mem[1248]) + mem[64] + 672
                while idx < stor8[arg1].field_3328:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1824] = ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + 640
                _4706 = mem[mem[1120]]
                mem[(2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + (64 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 2016] = mem[mem[1120]]
                idx = 0
                s = mem[1120] + 32
                t = (2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + (64 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 2048
                while idx < _4706:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1856] = bool(mem[1152])
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1888] = bool(mem[1184])
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1920] = bool(mem[1216])
                return memory
                  from mem[64]
                   len (2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + (64 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + (32 * _4706) + -mem[64] + 2048
            mem[0] = sha3(arg1, 8) + 13
            mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 1312] = address(stor8[arg1][13].field_0)
            idx = ceil32(uint255(stor8[arg1].field_0) * 0.5) + 1312
            s = 0
            while ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + 1280 > idx:
                mem[idx + 32] = address(stor8[arg1][s + 13].field_256)
                idx = idx + 32
                s = s + 1
                continue 
            mem[1088] = ceil32(uint255(stor8[arg1].field_0) * 0.5) + 1280
            mem[64] = ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1344
            mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + 1312] = stor8[arg1].field_3584
            if not stor8[arg1].field_3584:
                mem[1120] = ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + 1312
                mem[1152] = bool(uint8(stor8[arg1].field_3840))
                mem[1184] = bool(uint8(stor8[arg1].field_3848))
                mem[1216] = bool(uint8(stor8[arg1].field_3856))
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1344] = 32
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1376] = 576
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1952] = uint255(stor8[arg1].field_0) * 0.5
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1984 len ceil32(uint255(stor8[arg1].field_0) * 0.5)] = mem[1280 len ceil32(uint255(stor8[arg1].field_0) * 0.5)]
                if ceil32(uint255(stor8[arg1].field_0) * 0.5) <= uint255(stor8[arg1].field_0) * 0.5:
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1408] = address(stor8[arg1].field_256)
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1440] = stor8[arg1].field_512
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1472] = stor8[arg1].field_768
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1504] = stor8[arg1].field_1024
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1536] = stor8[arg1].field_1280
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1568] = stor8[arg1].field_1536
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1600] = stor8[arg1].field_1792
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1632] = stor8[arg1].field_2048
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1664] = stor8[arg1].field_2304
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1696] = stor8[arg1].field_2560
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1728] = stor8[arg1].field_2816
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1760] = stor8[arg1].field_3072
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1792] = ceil32(uint255(stor8[arg1].field_0) * 0.5) + 608
                    mem[(2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1984] = stor8[arg1].field_3328
                    idx = 0
                    s = ceil32(uint255(stor8[arg1].field_0) * 0.5) + 1312
                    t = ceil32(mem[1248]) + mem[64] + 672
                    while idx < stor8[arg1].field_3328:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1824] = ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + 640
                    _4708 = mem[mem[1120]]
                    mem[(2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + (64 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 2016] = mem[mem[1120]]
                    idx = 0
                    s = mem[1120] + 32
                    t = (2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + (64 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 2048
                    while idx < _4708:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1856] = bool(mem[1152])
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1888] = bool(mem[1184])
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1920] = bool(mem[1216])
                    return memory
                      from mem[64]
                       len (2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + (64 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + (32 * _4708) + -mem[64] + 2048
                mem[(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1984] = 0
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1408] = address(stor8[arg1].field_256)
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1440] = stor8[arg1].field_512
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1472] = stor8[arg1].field_768
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1504] = stor8[arg1].field_1024
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1536] = stor8[arg1].field_1280
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1568] = stor8[arg1].field_1536
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1600] = stor8[arg1].field_1792
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1632] = stor8[arg1].field_2048
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1664] = stor8[arg1].field_2304
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1696] = stor8[arg1].field_2560
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1728] = stor8[arg1].field_2816
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1760] = stor8[arg1].field_3072
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1792] = ceil32(uint255(stor8[arg1].field_0) * 0.5) + 608
                mem[(2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1984] = stor8[arg1].field_3328
                idx = 0
                s = ceil32(uint255(stor8[arg1].field_0) * 0.5) + 1312
                t = ceil32(mem[1248]) + mem[64] + 672
                while idx < stor8[arg1].field_3328:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1824] = ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + 640
                _4709 = mem[mem[1120]]
                mem[(2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + (64 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 2016] = mem[mem[1120]]
                idx = 0
                s = mem[1120] + 32
                t = (2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + (64 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 2048
                while idx < _4709:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1856] = bool(mem[1152])
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1888] = bool(mem[1184])
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1920] = bool(mem[1216])
                return memory
                  from mem[64]
                   len (2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + (64 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + (32 * _4709) + -mem[64] + 2048
            mem[0] = sha3(arg1, 8) + 14
            mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + 1344] = address(stor8[arg1][14].field_0)
            idx = ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + 1344
            s = 0
            while ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1312 > idx:
                mem[idx + 32] = address(stor8[arg1][s + 14].field_256)
                idx = idx + 32
                s = s + 1
                continue 
            mem[1120] = ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + 1312
            mem[1152] = bool(uint8(stor8[arg1].field_3840))
            mem[1184] = bool(uint8(stor8[arg1].field_3848))
            mem[1216] = bool(uint8(stor8[arg1].field_3856))
            mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1344] = 32
            mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1376] = 576
            mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1952] = uint255(stor8[arg1].field_0) * 0.5
            mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1984 len ceil32(uint255(stor8[arg1].field_0) * 0.5)] = mem[1280 len ceil32(uint255(stor8[arg1].field_0) * 0.5)]
            var39001 = ceil32(uint255(stor8[arg1].field_0) * 0.5)
            if ceil32(uint255(stor8[arg1].field_0) * 0.5) > uint255(stor8[arg1].field_0) * 0.5:
                mem[(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1984] = 0
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1408] = address(stor8[arg1].field_256)
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1440] = stor8[arg1].field_512
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1472] = stor8[arg1].field_768
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1504] = stor8[arg1].field_1024
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1536] = stor8[arg1].field_1280
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1568] = stor8[arg1].field_1536
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1600] = stor8[arg1].field_1792
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1632] = stor8[arg1].field_2048
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1664] = stor8[arg1].field_2304
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1696] = stor8[arg1].field_2560
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1728] = stor8[arg1].field_2816
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1760] = stor8[arg1].field_3072
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1792] = ceil32(uint255(stor8[arg1].field_0) * 0.5) + 608
                mem[(2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1984] = stor8[arg1].field_3328
                idx = 0
                s = ceil32(uint255(stor8[arg1].field_0) * 0.5) + 1312
                t = (2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 2016
                while idx < mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 1280]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1824] = ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 1280]) + 640
                _5869 = mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + 1312]
                mem[(2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + (32 * mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 1280]) + 2016] = mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + 1312]
                idx = 0
                s = ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + 1344
                t = (2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + (32 * mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 1280]) + 2048
                while idx < _5869:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1344 len 512], 
                       bool(uint8(stor8[arg1].field_3840)),
                       bool(uint8(stor8[arg1].field_3848)),
                       bool(uint8(stor8[arg1].field_3856)),
                       mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1952 len ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 1280]) + (32 * _5869) + 96]
            mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1408] = address(stor8[arg1].field_256)
            mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1440] = stor8[arg1].field_512
            mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1472] = stor8[arg1].field_768
            mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1504] = stor8[arg1].field_1024
            mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1536] = stor8[arg1].field_1280
            mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1568] = stor8[arg1].field_1536
            mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1600] = stor8[arg1].field_1792
            mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1632] = stor8[arg1].field_2048
            mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1664] = stor8[arg1].field_2304
            mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1696] = stor8[arg1].field_2560
            mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1728] = stor8[arg1].field_2816
            mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1760] = stor8[arg1].field_3072
            mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1792] = ceil32(uint255(stor8[arg1].field_0) * 0.5) + 608
            mem[(2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1984] = stor8[arg1].field_3328
            idx = 0
            s = ceil32(uint255(stor8[arg1].field_0) * 0.5) + 1312
            t = ceil32(mem[1248]) + mem[64] + 672
            while idx < stor8[arg1].field_3328:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1824] = ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + 640
            _5868 = mem[mem[1120]]
            mem[(2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + (64 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 2016] = mem[mem[1120]]
            idx = 0
            s = mem[1120] + 32
            t = (2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + (64 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 2048
            while idx < _5868:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1856] = bool(mem[1152])
            mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1888] = bool(mem[1184])
            mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1920] = bool(mem[1216])
            return memory
              from mem[64]
               len (2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + (64 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + (32 * _5868) + -mem[64] + 2048
        if bool(stor8[arg1].field_0) == stor8[arg1].field_1 % 128 < 32:
            revert with 0, 34
        if not stor8[arg1].field_1 % 128:
            mem[672] = 1248
            mem[704] = address(stor8[arg1].field_256)
            mem[736] = stor8[arg1].field_512
            mem[768] = stor8[arg1].field_768
            mem[800] = stor8[arg1].field_1024
            mem[832] = stor8[arg1].field_1280
            mem[864] = stor8[arg1].field_1536
            mem[896] = stor8[arg1].field_1792
            mem[928] = stor8[arg1].field_2048
            mem[960] = stor8[arg1].field_2304
            mem[992] = stor8[arg1].field_2560
            mem[1024] = stor8[arg1].field_2816
            mem[1056] = stor8[arg1].field_3072
            mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 1280] = stor8[arg1].field_3328
            if not stor8[arg1].field_3328:
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + 1312] = stor8[arg1].field_3584
                if not stor8[arg1].field_3584:
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1344] = 32
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1376] = 576
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1952] = uint255(stor8[arg1].field_0) * 0.5
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1984 len ceil32(uint255(stor8[arg1].field_0) * 0.5)] = mem[1280 len ceil32(uint255(stor8[arg1].field_0) * 0.5)]
                    if ceil32(uint255(stor8[arg1].field_0) * 0.5) <= uint255(stor8[arg1].field_0) * 0.5:
                        mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1408] = address(stor8[arg1].field_256)
                        mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1440] = stor8[arg1].field_512
                        mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1472] = stor8[arg1].field_768
                        mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1504] = stor8[arg1].field_1024
                        mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1536] = stor8[arg1].field_1280
                        mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1568] = stor8[arg1].field_1536
                        mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1600] = stor8[arg1].field_1792
                        mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1632] = stor8[arg1].field_2048
                        mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1664] = stor8[arg1].field_2304
                        mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1696] = stor8[arg1].field_2560
                        mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1728] = stor8[arg1].field_2816
                        mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1760] = stor8[arg1].field_3072
                        mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1792] = ceil32(uint255(stor8[arg1].field_0) * 0.5) + 608
                        mem[(2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1984] = stor8[arg1].field_3328
                        idx = 0
                        s = ceil32(uint255(stor8[arg1].field_0) * 0.5) + 1312
                        t = (2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 2016
                        while idx < stor8[arg1].field_3328:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1824] = ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + 640
                        _1286 = mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + 1312]
                        mem[(2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + (64 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 2016] = mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + 1312]
                        idx = 0
                        s = ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + 1344
                        t = (2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + (64 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 2048
                        while idx < _1286:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        return mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1344 len 512], 
                               bool(uint8(stor8[arg1].field_3840)),
                               bool(uint8(stor8[arg1].field_3848)),
                               bool(uint8(stor8[arg1].field_3856)),
                               mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1952 len ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * _1286) + 96]
                    mem[(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1984] = 0
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1408] = address(stor8[arg1].field_256)
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1440] = stor8[arg1].field_512
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1472] = stor8[arg1].field_768
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1504] = stor8[arg1].field_1024
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1536] = stor8[arg1].field_1280
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1568] = stor8[arg1].field_1536
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1600] = stor8[arg1].field_1792
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1632] = stor8[arg1].field_2048
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1664] = stor8[arg1].field_2304
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1696] = stor8[arg1].field_2560
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1728] = stor8[arg1].field_2816
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1760] = stor8[arg1].field_3072
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1792] = ceil32(uint255(stor8[arg1].field_0) * 0.5) + 608
                    mem[(2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1984] = stor8[arg1].field_3328
                    idx = 0
                    s = ceil32(uint255(stor8[arg1].field_0) * 0.5) + 1312
                    t = (2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 2016
                    while idx < stor8[arg1].field_3328:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1824] = ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + 640
                    _1287 = mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + 1312]
                    mem[(2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + (64 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 2016] = mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + 1312]
                    idx = 0
                    s = ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + 1344
                    t = (2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + (64 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 2048
                    while idx < _1287:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    return mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1344 len 512], 
                           bool(uint8(stor8[arg1].field_3840)),
                           bool(uint8(stor8[arg1].field_3848)),
                           bool(uint8(stor8[arg1].field_3856)),
                           mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1952 len ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * _1287) + 96]
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + 1344] = address(stor8[arg1][14].field_0)
                idx = ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + 1344
                s = 0
                while ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1312 > idx:
                    mem[idx + 32] = address(stor8[arg1][s + 14].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1344] = 32
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1376] = 576
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1952] = uint255(stor8[arg1].field_0) * 0.5
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1984 len ceil32(uint255(stor8[arg1].field_0) * 0.5)] = mem[1280 len ceil32(uint255(stor8[arg1].field_0) * 0.5)]
                if ceil32(uint255(stor8[arg1].field_0) * 0.5) <= uint255(stor8[arg1].field_0) * 0.5:
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1408] = address(stor8[arg1].field_256)
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1440] = stor8[arg1].field_512
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1472] = stor8[arg1].field_768
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1504] = stor8[arg1].field_1024
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1536] = stor8[arg1].field_1280
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1568] = stor8[arg1].field_1536
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1600] = stor8[arg1].field_1792
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1632] = stor8[arg1].field_2048
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1664] = stor8[arg1].field_2304
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1696] = stor8[arg1].field_2560
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1728] = stor8[arg1].field_2816
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1760] = stor8[arg1].field_3072
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1792] = ceil32(uint255(stor8[arg1].field_0) * 0.5) + 608
                    mem[(2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1984] = stor8[arg1].field_3328
                    idx = 0
                    s = ceil32(uint255(stor8[arg1].field_0) * 0.5) + 1312
                    t = (2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 2016
                    while idx < mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 1280]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1824] = ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 1280]) + 640
                    _3666 = mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + 1312]
                    mem[(2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + (32 * mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 1280]) + 2016] = mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + 1312]
                    idx = 0
                    s = ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + 1344
                    t = (2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + (32 * mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 1280]) + 2048
                    while idx < _3666:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    return mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1344 len 512], 
                           bool(uint8(stor8[arg1].field_3840)),
                           bool(uint8(stor8[arg1].field_3848)),
                           bool(uint8(stor8[arg1].field_3856)),
                           mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1952 len ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 1280]) + (32 * _3666) + 96]
                mem[(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1984] = 0
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1408] = address(stor8[arg1].field_256)
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1440] = stor8[arg1].field_512
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1472] = stor8[arg1].field_768
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1504] = stor8[arg1].field_1024
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1536] = stor8[arg1].field_1280
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1568] = stor8[arg1].field_1536
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1600] = stor8[arg1].field_1792
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1632] = stor8[arg1].field_2048
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1664] = stor8[arg1].field_2304
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1696] = stor8[arg1].field_2560
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1728] = stor8[arg1].field_2816
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1760] = stor8[arg1].field_3072
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1792] = ceil32(uint255(stor8[arg1].field_0) * 0.5) + 608
                mem[(2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1984] = stor8[arg1].field_3328
                idx = 0
                s = ceil32(uint255(stor8[arg1].field_0) * 0.5) + 1312
                t = (2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 2016
                while idx < mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 1280]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1824] = ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 1280]) + 640
                _3667 = mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + 1312]
                mem[(2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + (32 * mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 1280]) + 2016] = mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + 1312]
                idx = 0
                s = ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + 1344
                t = (2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + (32 * mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 1280]) + 2048
                while idx < _3667:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1344 len 512], 
                       bool(uint8(stor8[arg1].field_3840)),
                       bool(uint8(stor8[arg1].field_3848)),
                       bool(uint8(stor8[arg1].field_3856)),
                       mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1952 len ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 1280]) + (32 * _3667) + 96]
            mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 1312] = address(stor8[arg1][13].field_0)
            idx = ceil32(uint255(stor8[arg1].field_0) * 0.5) + 1312
            s = 0
            while ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + 1280 > idx:
                mem[idx + 32] = address(stor8[arg1][s + 13].field_256)
                idx = idx + 32
                s = s + 1
                continue 
            mem[1088] = ceil32(uint255(stor8[arg1].field_0) * 0.5) + 1280
            mem[64] = ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1344
            mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + 1312] = stor8[arg1].field_3584
            if not stor8[arg1].field_3584:
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1344] = 32
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1376] = 576
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1952] = uint255(stor8[arg1].field_0) * 0.5
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1984 len ceil32(uint255(stor8[arg1].field_0) * 0.5)] = mem[1280 len ceil32(uint255(stor8[arg1].field_0) * 0.5)]
                if ceil32(uint255(stor8[arg1].field_0) * 0.5) <= uint255(stor8[arg1].field_0) * 0.5:
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1408] = address(stor8[arg1].field_256)
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1440] = stor8[arg1].field_512
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1472] = stor8[arg1].field_768
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1504] = stor8[arg1].field_1024
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1536] = stor8[arg1].field_1280
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1568] = stor8[arg1].field_1536
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1600] = stor8[arg1].field_1792
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1632] = stor8[arg1].field_2048
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1664] = stor8[arg1].field_2304
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1696] = stor8[arg1].field_2560
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1728] = stor8[arg1].field_2816
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1760] = stor8[arg1].field_3072
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1792] = ceil32(uint255(stor8[arg1].field_0) * 0.5) + 608
                    mem[(2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1984] = stor8[arg1].field_3328
                    idx = 0
                    s = ceil32(uint255(stor8[arg1].field_0) * 0.5) + 1312
                    t = (2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 2016
                    while idx < mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 1280]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1824] = ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 1280]) + 640
                    _3668 = mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + 1312]
                    mem[(2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + (32 * mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 1280]) + 2016] = mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + 1312]
                    idx = 0
                    s = ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + 1344
                    t = (2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + (32 * mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 1280]) + 2048
                    while idx < _3668:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    return mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1344 len 512], 
                           bool(uint8(stor8[arg1].field_3840)),
                           bool(uint8(stor8[arg1].field_3848)),
                           bool(uint8(stor8[arg1].field_3856)),
                           mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1952 len ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 1280]) + (32 * _3668) + 96]
                mem[(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1984] = 0
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1408] = address(stor8[arg1].field_256)
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1440] = stor8[arg1].field_512
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1472] = stor8[arg1].field_768
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1504] = stor8[arg1].field_1024
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1536] = stor8[arg1].field_1280
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1568] = stor8[arg1].field_1536
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1600] = stor8[arg1].field_1792
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1632] = stor8[arg1].field_2048
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1664] = stor8[arg1].field_2304
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1696] = stor8[arg1].field_2560
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1728] = stor8[arg1].field_2816
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1760] = stor8[arg1].field_3072
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1792] = ceil32(uint255(stor8[arg1].field_0) * 0.5) + 608
                mem[(2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1984] = stor8[arg1].field_3328
                idx = 0
                s = ceil32(uint255(stor8[arg1].field_0) * 0.5) + 1312
                t = (2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 2016
                while idx < mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 1280]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1824] = ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 1280]) + 640
                _3669 = mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + 1312]
                mem[(2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + (32 * mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 1280]) + 2016] = mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + 1312]
                idx = 0
                s = ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + 1344
                t = (2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + (32 * mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 1280]) + 2048
                while idx < _3669:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1344 len 512], 
                       bool(uint8(stor8[arg1].field_3840)),
                       bool(uint8(stor8[arg1].field_3848)),
                       bool(uint8(stor8[arg1].field_3856)),
                       mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1952 len ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 1280]) + (32 * _3669) + 96]
            mem[0] = sha3(arg1, 8) + 14
            mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + 1344] = address(stor8[arg1][14].field_0)
            idx = ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + 1344
            s = 0
            while ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1312 > idx:
                mem[idx + 32] = address(stor8[arg1][s + 14].field_256)
                idx = idx + 32
                s = s + 1
                continue 
            mem[1120] = ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + 1312
            mem[1152] = bool(uint8(stor8[arg1].field_3840))
            mem[1184] = bool(uint8(stor8[arg1].field_3848))
            mem[1216] = bool(uint8(stor8[arg1].field_3856))
            mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1344] = 32
            mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1376] = 576
            mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1952] = uint255(stor8[arg1].field_0) * 0.5
            mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1984 len ceil32(uint255(stor8[arg1].field_0) * 0.5)] = mem[1280 len ceil32(uint255(stor8[arg1].field_0) * 0.5)]
            if ceil32(uint255(stor8[arg1].field_0) * 0.5) > uint255(stor8[arg1].field_0) * 0.5:
                mem[(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1984] = 0
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1408] = address(stor8[arg1].field_256)
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1440] = stor8[arg1].field_512
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1472] = stor8[arg1].field_768
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1504] = stor8[arg1].field_1024
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1536] = stor8[arg1].field_1280
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1568] = stor8[arg1].field_1536
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1600] = stor8[arg1].field_1792
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1632] = stor8[arg1].field_2048
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1664] = stor8[arg1].field_2304
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1696] = stor8[arg1].field_2560
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1728] = stor8[arg1].field_2816
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1760] = stor8[arg1].field_3072
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1792] = ceil32(uint255(stor8[arg1].field_0) * 0.5) + 608
                mem[(2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1984] = stor8[arg1].field_3328
                idx = 0
                s = ceil32(uint255(stor8[arg1].field_0) * 0.5) + 1312
                t = (2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 2016
                while idx < mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 1280]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1824] = ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 1280]) + 640
                _5507 = mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + 1312]
                mem[(2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + (32 * mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 1280]) + 2016] = mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + 1312]
                idx = 0
                s = ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + 1344
                t = (2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + (32 * mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 1280]) + 2048
                while idx < _5507:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1344 len 512], 
                       bool(uint8(stor8[arg1].field_3840)),
                       bool(uint8(stor8[arg1].field_3848)),
                       bool(uint8(stor8[arg1].field_3856)),
                       mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1952 len ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 1280]) + (32 * _5507) + 96]
            mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1408] = address(stor8[arg1].field_256)
            mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1440] = stor8[arg1].field_512
            mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1472] = stor8[arg1].field_768
            mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1504] = stor8[arg1].field_1024
            mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1536] = stor8[arg1].field_1280
            mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1568] = stor8[arg1].field_1536
            mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1600] = stor8[arg1].field_1792
            mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1632] = stor8[arg1].field_2048
            mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1664] = stor8[arg1].field_2304
            mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1696] = stor8[arg1].field_2560
            mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1728] = stor8[arg1].field_2816
            mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1760] = stor8[arg1].field_3072
            mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1792] = ceil32(uint255(stor8[arg1].field_0) * 0.5) + 608
            mem[(2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1984] = stor8[arg1].field_3328
            idx = 0
            s = ceil32(uint255(stor8[arg1].field_0) * 0.5) + 1312
            t = ceil32(mem[1248]) + mem[64] + 672
            while idx < stor8[arg1].field_3328:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1824] = ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + 640
            _5506 = mem[mem[1120]]
            mem[(2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + (64 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 2016] = mem[mem[1120]]
            idx = 0
            s = mem[1120] + 32
            t = (2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + (64 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 2048
            while idx < _5506:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1856] = bool(mem[1152])
            mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1888] = bool(mem[1184])
            mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1920] = bool(mem[1216])
            return memory
              from mem[64]
               len (2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + (64 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + (32 * _5506) + -mem[64] + 2048
        if 31 >= stor8[arg1].field_1 % 128:
            mem[1280] = 256 * Mask(248, 0, stor8[arg1].field_8)
            mem[672] = 1248
            mem[704] = address(stor8[arg1].field_256)
            mem[736] = stor8[arg1].field_512
            mem[768] = stor8[arg1].field_768
            mem[800] = stor8[arg1].field_1024
            mem[832] = stor8[arg1].field_1280
            mem[864] = stor8[arg1].field_1536
            mem[896] = stor8[arg1].field_1792
            mem[928] = stor8[arg1].field_2048
            mem[960] = stor8[arg1].field_2304
            mem[992] = stor8[arg1].field_2560
            mem[1024] = stor8[arg1].field_2816
            mem[1056] = stor8[arg1].field_3072
            mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 1280] = stor8[arg1].field_3328
            if not stor8[arg1].field_3328:
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + 1312] = stor8[arg1].field_3584
                if not stor8[arg1].field_3584:
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1344] = 32
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1376] = 576
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1952] = uint255(stor8[arg1].field_0) * 0.5
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1984 len ceil32(uint255(stor8[arg1].field_0) * 0.5)] = mem[1280 len ceil32(uint255(stor8[arg1].field_0) * 0.5)]
                    if ceil32(uint255(stor8[arg1].field_0) * 0.5) <= uint255(stor8[arg1].field_0) * 0.5:
                        mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1408] = address(stor8[arg1].field_256)
                        mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1440] = stor8[arg1].field_512
                        mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1472] = stor8[arg1].field_768
                        mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1504] = stor8[arg1].field_1024
                        mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1536] = stor8[arg1].field_1280
                        mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1568] = stor8[arg1].field_1536
                        mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1600] = stor8[arg1].field_1792
                        mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1632] = stor8[arg1].field_2048
                        mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1664] = stor8[arg1].field_2304
                        mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1696] = stor8[arg1].field_2560
                        mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1728] = stor8[arg1].field_2816
                        mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1760] = stor8[arg1].field_3072
                        mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1792] = ceil32(uint255(stor8[arg1].field_0) * 0.5) + 608
                        mem[(2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1984] = stor8[arg1].field_3328
                        idx = 0
                        s = ceil32(uint255(stor8[arg1].field_0) * 0.5) + 1312
                        t = (2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 2016
                        while idx < stor8[arg1].field_3328:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1824] = ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + 640
                        _1290 = mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + 1312]
                        mem[(2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + (64 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 2016] = mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + 1312]
                        idx = 0
                        s = ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + 1344
                        t = (2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + (64 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 2048
                        while idx < _1290:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        return mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1344 len 512], 
                               bool(uint8(stor8[arg1].field_3840)),
                               bool(uint8(stor8[arg1].field_3848)),
                               bool(uint8(stor8[arg1].field_3856)),
                               mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1952 len ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * _1290) + 96]
                    mem[(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1984] = 0
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1408] = address(stor8[arg1].field_256)
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1440] = stor8[arg1].field_512
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1472] = stor8[arg1].field_768
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1504] = stor8[arg1].field_1024
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1536] = stor8[arg1].field_1280
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1568] = stor8[arg1].field_1536
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1600] = stor8[arg1].field_1792
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1632] = stor8[arg1].field_2048
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1664] = stor8[arg1].field_2304
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1696] = stor8[arg1].field_2560
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1728] = stor8[arg1].field_2816
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1760] = stor8[arg1].field_3072
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1792] = ceil32(uint255(stor8[arg1].field_0) * 0.5) + 608
                    mem[(2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1984] = stor8[arg1].field_3328
                    idx = 0
                    s = ceil32(uint255(stor8[arg1].field_0) * 0.5) + 1312
                    t = (2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 2016
                    while idx < stor8[arg1].field_3328:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1824] = ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + 640
                    _1291 = mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + 1312]
                    mem[(2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + (64 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 2016] = mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + 1312]
                    idx = 0
                    s = ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + 1344
                    t = (2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + (64 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 2048
                    while idx < _1291:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    return mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1344 len 512], 
                           bool(uint8(stor8[arg1].field_3840)),
                           bool(uint8(stor8[arg1].field_3848)),
                           bool(uint8(stor8[arg1].field_3856)),
                           mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1952 len ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * _1291) + 96]
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + 1344] = address(stor8[arg1][14].field_0)
                idx = ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + 1344
                s = 0
                while ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1312 > idx:
                    mem[idx + 32] = address(stor8[arg1][s + 14].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1344] = 32
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1376] = 576
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1952] = uint255(stor8[arg1].field_0) * 0.5
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1984 len ceil32(uint255(stor8[arg1].field_0) * 0.5)] = mem[1280 len ceil32(uint255(stor8[arg1].field_0) * 0.5)]
                if ceil32(uint255(stor8[arg1].field_0) * 0.5) <= uint255(stor8[arg1].field_0) * 0.5:
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1408] = address(stor8[arg1].field_256)
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1440] = stor8[arg1].field_512
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1472] = stor8[arg1].field_768
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1504] = stor8[arg1].field_1024
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1536] = stor8[arg1].field_1280
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1568] = stor8[arg1].field_1536
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1600] = stor8[arg1].field_1792
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1632] = stor8[arg1].field_2048
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1664] = stor8[arg1].field_2304
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1696] = stor8[arg1].field_2560
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1728] = stor8[arg1].field_2816
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1760] = stor8[arg1].field_3072
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1792] = ceil32(uint255(stor8[arg1].field_0) * 0.5) + 608
                    mem[(2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1984] = stor8[arg1].field_3328
                    idx = 0
                    s = ceil32(uint255(stor8[arg1].field_0) * 0.5) + 1312
                    t = (2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 2016
                    while idx < mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 1280]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1824] = ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 1280]) + 640
                    _3673 = mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + 1312]
                    mem[(2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + (32 * mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 1280]) + 2016] = mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + 1312]
                    idx = 0
                    s = ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + 1344
                    t = (2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + (32 * mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 1280]) + 2048
                    while idx < _3673:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    return mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1344 len 512], 
                           bool(uint8(stor8[arg1].field_3840)),
                           bool(uint8(stor8[arg1].field_3848)),
                           bool(uint8(stor8[arg1].field_3856)),
                           mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1952 len ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 1280]) + (32 * _3673) + 96]
                mem[(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1984] = 0
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1408] = address(stor8[arg1].field_256)
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1440] = stor8[arg1].field_512
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1472] = stor8[arg1].field_768
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1504] = stor8[arg1].field_1024
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1536] = stor8[arg1].field_1280
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1568] = stor8[arg1].field_1536
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1600] = stor8[arg1].field_1792
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1632] = stor8[arg1].field_2048
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1664] = stor8[arg1].field_2304
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1696] = stor8[arg1].field_2560
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1728] = stor8[arg1].field_2816
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1760] = stor8[arg1].field_3072
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1792] = ceil32(uint255(stor8[arg1].field_0) * 0.5) + 608
                mem[(2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1984] = stor8[arg1].field_3328
                idx = 0
                s = ceil32(uint255(stor8[arg1].field_0) * 0.5) + 1312
                t = (2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 2016
                while idx < mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 1280]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1824] = ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 1280]) + 640
                _3674 = mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + 1312]
                mem[(2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + (32 * mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 1280]) + 2016] = mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + 1312]
                idx = 0
                s = ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + 1344
                t = (2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + (32 * mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 1280]) + 2048
                while idx < _3674:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1344 len 512], 
                       bool(uint8(stor8[arg1].field_3840)),
                       bool(uint8(stor8[arg1].field_3848)),
                       bool(uint8(stor8[arg1].field_3856)),
                       mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1952 len ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 1280]) + (32 * _3674) + 96]
            mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 1312] = address(stor8[arg1][13].field_0)
            idx = ceil32(uint255(stor8[arg1].field_0) * 0.5) + 1312
            s = 0
            while ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + 1280 > idx:
                mem[idx + 32] = address(stor8[arg1][s + 13].field_256)
                idx = idx + 32
                s = s + 1
                continue 
            mem[1088] = ceil32(uint255(stor8[arg1].field_0) * 0.5) + 1280
            mem[64] = ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1344
            mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + 1312] = stor8[arg1].field_3584
            if not stor8[arg1].field_3584:
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1344] = 32
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1376] = 576
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1952] = uint255(stor8[arg1].field_0) * 0.5
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1984 len ceil32(uint255(stor8[arg1].field_0) * 0.5)] = mem[1280 len ceil32(uint255(stor8[arg1].field_0) * 0.5)]
                if ceil32(uint255(stor8[arg1].field_0) * 0.5) <= uint255(stor8[arg1].field_0) * 0.5:
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1408] = address(stor8[arg1].field_256)
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1440] = stor8[arg1].field_512
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1472] = stor8[arg1].field_768
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1504] = stor8[arg1].field_1024
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1536] = stor8[arg1].field_1280
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1568] = stor8[arg1].field_1536
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1600] = stor8[arg1].field_1792
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1632] = stor8[arg1].field_2048
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1664] = stor8[arg1].field_2304
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1696] = stor8[arg1].field_2560
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1728] = stor8[arg1].field_2816
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1760] = stor8[arg1].field_3072
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1792] = ceil32(uint255(stor8[arg1].field_0) * 0.5) + 608
                    mem[(2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1984] = stor8[arg1].field_3328
                    idx = 0
                    s = ceil32(uint255(stor8[arg1].field_0) * 0.5) + 1312
                    t = (2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 2016
                    while idx < mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 1280]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1824] = ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 1280]) + 640
                    _3675 = mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + 1312]
                    mem[(2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + (32 * mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 1280]) + 2016] = mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + 1312]
                    idx = 0
                    s = ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + 1344
                    t = (2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + (32 * mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 1280]) + 2048
                    while idx < _3675:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    return mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1344 len 512], 
                           bool(uint8(stor8[arg1].field_3840)),
                           bool(uint8(stor8[arg1].field_3848)),
                           bool(uint8(stor8[arg1].field_3856)),
                           mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1952 len ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 1280]) + (32 * _3675) + 96]
                mem[(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1984] = 0
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1408] = address(stor8[arg1].field_256)
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1440] = stor8[arg1].field_512
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1472] = stor8[arg1].field_768
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1504] = stor8[arg1].field_1024
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1536] = stor8[arg1].field_1280
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1568] = stor8[arg1].field_1536
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1600] = stor8[arg1].field_1792
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1632] = stor8[arg1].field_2048
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1664] = stor8[arg1].field_2304
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1696] = stor8[arg1].field_2560
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1728] = stor8[arg1].field_2816
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1760] = stor8[arg1].field_3072
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1792] = ceil32(uint255(stor8[arg1].field_0) * 0.5) + 608
                mem[(2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1984] = stor8[arg1].field_3328
                idx = 0
                s = ceil32(uint255(stor8[arg1].field_0) * 0.5) + 1312
                t = (2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 2016
                while idx < mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 1280]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1824] = ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 1280]) + 640
                _3676 = mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + 1312]
                mem[(2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + (32 * mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 1280]) + 2016] = mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + 1312]
                idx = 0
                s = ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + 1344
                t = (2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + (32 * mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 1280]) + 2048
                while idx < _3676:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1344 len 512], 
                       bool(uint8(stor8[arg1].field_3840)),
                       bool(uint8(stor8[arg1].field_3848)),
                       bool(uint8(stor8[arg1].field_3856)),
                       mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1952 len ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 1280]) + (32 * _3676) + 96]
            mem[0] = sha3(arg1, 8) + 14
            mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + 1344] = address(stor8[arg1][14].field_0)
            idx = ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + 1344
            s = 0
            while ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1312 > idx:
                mem[idx + 32] = address(stor8[arg1][s + 14].field_256)
                idx = idx + 32
                s = s + 1
                continue 
            mem[1120] = ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + 1312
            mem[1152] = bool(uint8(stor8[arg1].field_3840))
            mem[1184] = bool(uint8(stor8[arg1].field_3848))
            mem[1216] = bool(uint8(stor8[arg1].field_3856))
            mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1344] = 32
            mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1376] = 576
            mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1952] = uint255(stor8[arg1].field_0) * 0.5
            mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1984 len ceil32(uint255(stor8[arg1].field_0) * 0.5)] = mem[1280 len ceil32(uint255(stor8[arg1].field_0) * 0.5)]
            if ceil32(uint255(stor8[arg1].field_0) * 0.5) > uint255(stor8[arg1].field_0) * 0.5:
                mem[(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1984] = 0
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1408] = address(stor8[arg1].field_256)
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1440] = stor8[arg1].field_512
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1472] = stor8[arg1].field_768
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1504] = stor8[arg1].field_1024
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1536] = stor8[arg1].field_1280
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1568] = stor8[arg1].field_1536
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1600] = stor8[arg1].field_1792
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1632] = stor8[arg1].field_2048
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1664] = stor8[arg1].field_2304
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1696] = stor8[arg1].field_2560
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1728] = stor8[arg1].field_2816
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1760] = stor8[arg1].field_3072
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1792] = ceil32(uint255(stor8[arg1].field_0) * 0.5) + 608
                mem[(2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1984] = stor8[arg1].field_3328
                idx = 0
                s = ceil32(uint255(stor8[arg1].field_0) * 0.5) + 1312
                t = (2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 2016
                while idx < mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 1280]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1824] = ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 1280]) + 640
                _5513 = mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + 1312]
                mem[(2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + (32 * mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 1280]) + 2016] = mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + 1312]
                idx = 0
                s = ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + 1344
                t = (2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + (32 * mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 1280]) + 2048
                while idx < _5513:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1344 len 512], 
                       bool(uint8(stor8[arg1].field_3840)),
                       bool(uint8(stor8[arg1].field_3848)),
                       bool(uint8(stor8[arg1].field_3856)),
                       mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1952 len ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 1280]) + (32 * _5513) + 96]
            mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1408] = address(stor8[arg1].field_256)
            mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1440] = stor8[arg1].field_512
            mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1472] = stor8[arg1].field_768
            mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1504] = stor8[arg1].field_1024
            mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1536] = stor8[arg1].field_1280
            mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1568] = stor8[arg1].field_1536
            mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1600] = stor8[arg1].field_1792
            mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1632] = stor8[arg1].field_2048
            mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1664] = stor8[arg1].field_2304
            mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1696] = stor8[arg1].field_2560
            mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1728] = stor8[arg1].field_2816
            mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1760] = stor8[arg1].field_3072
            mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1792] = ceil32(uint255(stor8[arg1].field_0) * 0.5) + 608
            mem[(2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1984] = stor8[arg1].field_3328
            idx = 0
            s = ceil32(uint255(stor8[arg1].field_0) * 0.5) + 1312
            t = ceil32(mem[1248]) + mem[64] + 672
            while idx < stor8[arg1].field_3328:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1824] = ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + 640
            _5512 = mem[mem[1120]]
            mem[(2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + (64 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 2016] = mem[mem[1120]]
            idx = 0
            s = mem[1120] + 32
            t = (2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + (64 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 2048
            while idx < _5512:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1856] = bool(mem[1152])
            mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1888] = bool(mem[1184])
            mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1920] = bool(mem[1216])
            return memory
              from mem[64]
               len (2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + (64 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + (32 * _5512) + -mem[64] + 2048
        mem[1280] = stor8[arg1].field_0
        idx = 1280
        s = 0
        while stor8[arg1].field_1 % 128 + 1248 > idx:
            mem[idx + 32] = stor8[arg1][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[672] = 1248
        mem[704] = address(stor8[arg1].field_256)
        mem[736] = stor8[arg1].field_512
        mem[768] = stor8[arg1].field_768
        mem[800] = stor8[arg1].field_1024
        mem[832] = stor8[arg1].field_1280
        mem[864] = stor8[arg1].field_1536
        mem[896] = stor8[arg1].field_1792
        mem[928] = stor8[arg1].field_2048
        mem[960] = stor8[arg1].field_2304
        mem[992] = stor8[arg1].field_2560
        mem[1024] = stor8[arg1].field_2816
        mem[1056] = stor8[arg1].field_3072
        mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 1280] = stor8[arg1].field_3328
        if not stor8[arg1].field_3328:
            mem[1088] = ceil32(uint255(stor8[arg1].field_0) * 0.5) + 1280
            mem[64] = ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1344
            mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + 1312] = stor8[arg1].field_3584
            if not stor8[arg1].field_3584:
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1344] = 32
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1376] = 576
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1952] = uint255(stor8[arg1].field_0) * 0.5
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1984 len ceil32(uint255(stor8[arg1].field_0) * 0.5)] = mem[1280 len ceil32(uint255(stor8[arg1].field_0) * 0.5)]
                if ceil32(uint255(stor8[arg1].field_0) * 0.5) <= uint255(stor8[arg1].field_0) * 0.5:
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1408] = address(stor8[arg1].field_256)
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1440] = stor8[arg1].field_512
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1472] = stor8[arg1].field_768
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1504] = stor8[arg1].field_1024
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1536] = stor8[arg1].field_1280
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1568] = stor8[arg1].field_1536
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1600] = stor8[arg1].field_1792
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1632] = stor8[arg1].field_2048
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1664] = stor8[arg1].field_2304
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1696] = stor8[arg1].field_2560
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1728] = stor8[arg1].field_2816
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1760] = stor8[arg1].field_3072
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1792] = ceil32(uint255(stor8[arg1].field_0) * 0.5) + 608
                    mem[(2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1984] = stor8[arg1].field_3328
                    idx = 0
                    s = ceil32(uint255(stor8[arg1].field_0) * 0.5) + 1312
                    t = (2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 2016
                    while idx < mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 1280]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1824] = ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 1280]) + 640
                    _2388 = mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + 1312]
                    mem[(2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + (32 * mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 1280]) + 2016] = mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + 1312]
                    idx = 0
                    s = ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + 1344
                    t = (2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + (32 * mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 1280]) + 2048
                    while idx < _2388:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    return mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1344 len 512], 
                           bool(uint8(stor8[arg1].field_3840)),
                           bool(uint8(stor8[arg1].field_3848)),
                           bool(uint8(stor8[arg1].field_3856)),
                           mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1952 len ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 1280]) + (32 * _2388) + 96]
                mem[(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1984] = 0
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1408] = address(stor8[arg1].field_256)
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1440] = stor8[arg1].field_512
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1472] = stor8[arg1].field_768
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1504] = stor8[arg1].field_1024
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1536] = stor8[arg1].field_1280
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1568] = stor8[arg1].field_1536
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1600] = stor8[arg1].field_1792
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1632] = stor8[arg1].field_2048
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1664] = stor8[arg1].field_2304
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1696] = stor8[arg1].field_2560
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1728] = stor8[arg1].field_2816
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1760] = stor8[arg1].field_3072
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1792] = ceil32(uint255(stor8[arg1].field_0) * 0.5) + 608
                mem[(2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1984] = stor8[arg1].field_3328
                idx = 0
                s = ceil32(uint255(stor8[arg1].field_0) * 0.5) + 1312
                t = (2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 2016
                while idx < mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 1280]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1824] = ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 1280]) + 640
                _2389 = mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + 1312]
                mem[(2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + (32 * mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 1280]) + 2016] = mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + 1312]
                idx = 0
                s = ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + 1344
                t = (2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + (32 * mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 1280]) + 2048
                while idx < _2389:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1344 len 512], 
                       bool(uint8(stor8[arg1].field_3840)),
                       bool(uint8(stor8[arg1].field_3848)),
                       bool(uint8(stor8[arg1].field_3856)),
                       mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1952 len ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 1280]) + (32 * _2389) + 96]
            mem[0] = sha3(arg1, 8) + 14
            mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + 1344] = address(stor8[arg1][14].field_0)
            idx = ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + 1344
            s = 0
            while ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1312 > idx:
                mem[idx + 32] = address(stor8[arg1][s + 14].field_256)
                idx = idx + 32
                s = s + 1
                continue 
            mem[1120] = ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + 1312
            mem[1152] = bool(uint8(stor8[arg1].field_3840))
            mem[1184] = bool(uint8(stor8[arg1].field_3848))
            mem[1216] = bool(uint8(stor8[arg1].field_3856))
            mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1344] = 32
            mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1376] = 576
            mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1952] = uint255(stor8[arg1].field_0) * 0.5
            mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1984 len ceil32(uint255(stor8[arg1].field_0) * 0.5)] = mem[1280 len ceil32(uint255(stor8[arg1].field_0) * 0.5)]
            if ceil32(uint255(stor8[arg1].field_0) * 0.5) > uint255(stor8[arg1].field_0) * 0.5:
                mem[(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1984] = 0
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1408] = address(stor8[arg1].field_256)
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1440] = stor8[arg1].field_512
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1472] = stor8[arg1].field_768
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1504] = stor8[arg1].field_1024
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1536] = stor8[arg1].field_1280
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1568] = stor8[arg1].field_1536
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1600] = stor8[arg1].field_1792
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1632] = stor8[arg1].field_2048
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1664] = stor8[arg1].field_2304
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1696] = stor8[arg1].field_2560
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1728] = stor8[arg1].field_2816
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1760] = stor8[arg1].field_3072
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1792] = ceil32(uint255(stor8[arg1].field_0) * 0.5) + 608
                mem[(2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1984] = stor8[arg1].field_3328
                idx = 0
                s = ceil32(uint255(stor8[arg1].field_0) * 0.5) + 1312
                t = (2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 2016
                while idx < mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 1280]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1824] = ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 1280]) + 640
                _4720 = mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + 1312]
                mem[(2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + (32 * mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 1280]) + 2016] = mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + 1312]
                idx = 0
                s = ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + 1344
                t = (2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + (32 * mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 1280]) + 2048
                while idx < _4720:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1344 len 512], 
                       bool(uint8(stor8[arg1].field_3840)),
                       bool(uint8(stor8[arg1].field_3848)),
                       bool(uint8(stor8[arg1].field_3856)),
                       mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1952 len ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 1280]) + (32 * _4720) + 96]
            mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1408] = address(stor8[arg1].field_256)
            mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1440] = stor8[arg1].field_512
            mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1472] = stor8[arg1].field_768
            mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1504] = stor8[arg1].field_1024
            mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1536] = stor8[arg1].field_1280
            mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1568] = stor8[arg1].field_1536
            mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1600] = stor8[arg1].field_1792
            mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1632] = stor8[arg1].field_2048
            mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1664] = stor8[arg1].field_2304
            mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1696] = stor8[arg1].field_2560
            mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1728] = stor8[arg1].field_2816
            mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1760] = stor8[arg1].field_3072
            mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1792] = ceil32(uint255(stor8[arg1].field_0) * 0.5) + 608
            mem[(2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1984] = stor8[arg1].field_3328
            idx = 0
            s = ceil32(uint255(stor8[arg1].field_0) * 0.5) + 1312
            t = ceil32(mem[1248]) + mem[64] + 672
            while idx < stor8[arg1].field_3328:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1824] = ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + 640
            _4719 = mem[mem[1120]]
            mem[(2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + (64 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 2016] = mem[mem[1120]]
            idx = 0
            s = mem[1120] + 32
            t = (2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + (64 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 2048
            while idx < _4719:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1856] = bool(mem[1152])
            mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1888] = bool(mem[1184])
            mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1920] = bool(mem[1216])
            return memory
              from mem[64]
               len (2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + (64 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + (32 * _4719) + -mem[64] + 2048
        mem[0] = sha3(arg1, 8) + 13
        mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 1312] = address(stor8[arg1][13].field_0)
        idx = ceil32(uint255(stor8[arg1].field_0) * 0.5) + 1312
        s = 0
        while ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + 1280 > idx:
            mem[idx + 32] = address(stor8[arg1][s + 13].field_256)
            idx = idx + 32
            s = s + 1
            continue 
        mem[1088] = ceil32(uint255(stor8[arg1].field_0) * 0.5) + 1280
        mem[64] = ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1344
        mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + 1312] = stor8[arg1].field_3584
        if not stor8[arg1].field_3584:
            mem[1120] = ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + 1312
            mem[1152] = bool(uint8(stor8[arg1].field_3840))
            mem[1184] = bool(uint8(stor8[arg1].field_3848))
            mem[1216] = bool(uint8(stor8[arg1].field_3856))
            mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1344] = 32
            mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1376] = 576
            mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1952] = uint255(stor8[arg1].field_0) * 0.5
            mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1984 len ceil32(uint255(stor8[arg1].field_0) * 0.5)] = mem[1280 len ceil32(uint255(stor8[arg1].field_0) * 0.5)]
            if ceil32(uint255(stor8[arg1].field_0) * 0.5) > uint255(stor8[arg1].field_0) * 0.5:
                mem[(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1984] = 0
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1408] = address(stor8[arg1].field_256)
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1440] = stor8[arg1].field_512
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1472] = stor8[arg1].field_768
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1504] = stor8[arg1].field_1024
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1536] = stor8[arg1].field_1280
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1568] = stor8[arg1].field_1536
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1600] = stor8[arg1].field_1792
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1632] = stor8[arg1].field_2048
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1664] = stor8[arg1].field_2304
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1696] = stor8[arg1].field_2560
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1728] = stor8[arg1].field_2816
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1760] = stor8[arg1].field_3072
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1792] = ceil32(uint255(stor8[arg1].field_0) * 0.5) + 608
                mem[(2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1984] = stor8[arg1].field_3328
                idx = 0
                s = ceil32(uint255(stor8[arg1].field_0) * 0.5) + 1312
                t = (2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 2016
                while idx < stor8[arg1].field_3328:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1824] = ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + 640
                _4722 = mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + 1312]
                mem[(2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + (64 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 2016] = mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + 1312]
                idx = 0
                s = ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + 1344
                t = (2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + (64 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 2048
                while idx < _4722:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1344 len 512], 
                       bool(uint8(stor8[arg1].field_3840)),
                       bool(uint8(stor8[arg1].field_3848)),
                       bool(uint8(stor8[arg1].field_3856)),
                       mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1952 len ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * _4722) + 96]
            mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1408] = address(stor8[arg1].field_256)
            mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1440] = stor8[arg1].field_512
            mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1472] = stor8[arg1].field_768
            mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1504] = stor8[arg1].field_1024
            mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1536] = stor8[arg1].field_1280
            mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1568] = stor8[arg1].field_1536
            mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1600] = stor8[arg1].field_1792
            mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1632] = stor8[arg1].field_2048
            mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1664] = stor8[arg1].field_2304
            mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1696] = stor8[arg1].field_2560
            mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1728] = stor8[arg1].field_2816
            mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1760] = stor8[arg1].field_3072
            mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1792] = ceil32(uint255(stor8[arg1].field_0) * 0.5) + 608
            mem[(2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1984] = stor8[arg1].field_3328
            idx = 0
            s = ceil32(uint255(stor8[arg1].field_0) * 0.5) + 1312
            t = ceil32(mem[1248]) + mem[64] + 672
            while idx < stor8[arg1].field_3328:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1824] = ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + 640
            _4721 = mem[mem[1120]]
            mem[(2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + (64 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 2016] = mem[mem[1120]]
            idx = 0
            s = mem[1120] + 32
            t = (2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + (64 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 2048
            while idx < _4721:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1856] = bool(mem[1152])
            mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1888] = bool(mem[1184])
            mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1920] = bool(mem[1216])
            return memory
              from mem[64]
               len (2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + (64 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + (32 * _4721) + -mem[64] + 2048
        mem[0] = sha3(arg1, 8) + 14
        mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + 1344] = address(stor8[arg1][14].field_0)
        idx = ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + 1344
        s = 0
        while ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1312 > idx:
            mem[idx + 32] = address(stor8[arg1][s + 14].field_256)
            idx = idx + 32
            s = s + 1
            continue 
        mem[1120] = ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + 1312
        mem[1152] = bool(uint8(stor8[arg1].field_3840))
        mem[1184] = bool(uint8(stor8[arg1].field_3848))
        mem[1216] = bool(uint8(stor8[arg1].field_3856))
        mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1344] = 32
        mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1376] = 576
        mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1952] = uint255(stor8[arg1].field_0) * 0.5
        mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1984 len ceil32(uint255(stor8[arg1].field_0) * 0.5)] = mem[1280 len ceil32(uint255(stor8[arg1].field_0) * 0.5)]
        var40001 = ceil32(uint255(stor8[arg1].field_0) * 0.5)
        if ceil32(uint255(stor8[arg1].field_0) * 0.5) > uint255(stor8[arg1].field_0) * 0.5:
            mem[(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1984] = 0
            mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1408] = address(stor8[arg1].field_256)
            mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1440] = stor8[arg1].field_512
            mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1472] = stor8[arg1].field_768
            mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1504] = stor8[arg1].field_1024
            mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1536] = stor8[arg1].field_1280
            mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1568] = stor8[arg1].field_1536
            mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1600] = stor8[arg1].field_1792
            mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1632] = stor8[arg1].field_2048
            mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1664] = stor8[arg1].field_2304
            mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1696] = stor8[arg1].field_2560
            mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1728] = stor8[arg1].field_2816
            mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1760] = stor8[arg1].field_3072
            mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1792] = ceil32(uint255(stor8[arg1].field_0) * 0.5) + 608
            mem[(2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1984] = stor8[arg1].field_3328
            idx = 0
            s = ceil32(uint255(stor8[arg1].field_0) * 0.5) + 1312
            t = (2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 2016
            while idx < mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 1280]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1824] = ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 1280]) + 640
            _5875 = mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + 1312]
            mem[(2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + (32 * mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 1280]) + 2016] = mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + 1312]
            idx = 0
            s = ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + 1344
            t = (2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + (32 * mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 1280]) + 2048
            while idx < _5875:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1344 len 512], 
                   bool(uint8(stor8[arg1].field_3840)),
                   bool(uint8(stor8[arg1].field_3848)),
                   bool(uint8(stor8[arg1].field_3856)),
                   mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1952 len ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 1280]) + (32 * _5875) + 96]
        mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1408] = address(stor8[arg1].field_256)
        mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1440] = stor8[arg1].field_512
        mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1472] = stor8[arg1].field_768
        mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1504] = stor8[arg1].field_1024
        mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1536] = stor8[arg1].field_1280
        mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1568] = stor8[arg1].field_1536
        mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1600] = stor8[arg1].field_1792
        mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1632] = stor8[arg1].field_2048
        mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1664] = stor8[arg1].field_2304
        mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1696] = stor8[arg1].field_2560
        mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1728] = stor8[arg1].field_2816
        mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1760] = stor8[arg1].field_3072
        mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1792] = ceil32(uint255(stor8[arg1].field_0) * 0.5) + 608
        mem[(2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1984] = stor8[arg1].field_3328
        idx = 0
        s = ceil32(uint255(stor8[arg1].field_0) * 0.5) + 1312
        t = ceil32(mem[1248]) + mem[64] + 672
        while idx < stor8[arg1].field_3328:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1824] = ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + 640
        _5874 = mem[mem[1120]]
        mem[(2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + (64 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 2016] = mem[mem[1120]]
        idx = 0
        s = mem[1120] + 32
        t = (2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + (64 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 2048
        while idx < _5874:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1856] = bool(mem[1152])
        mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1888] = bool(mem[1184])
        mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1920] = bool(mem[1216])
        return memory
          from mem[64]
           len (2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + (64 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + (32 * _5874) + -mem[64] + 2048
    if bool(stor8[arg1].field_0) == stor8[arg1].field_1 % 128 < 32:
        revert with 0, 34
    mem[1248] = stor8[arg1].field_1 % 128
    if bool(stor8[arg1].field_0):
        if bool(stor8[arg1].field_0) == uint255(stor8[arg1].field_0) * 0.5 < 32:
            revert with 0, 34
        if not Mask(256, -1, stor8[arg1].field_0):
            mem[672] = 1248
            mem[704] = address(stor8[arg1].field_256)
            mem[736] = stor8[arg1].field_512
            mem[768] = stor8[arg1].field_768
            mem[800] = stor8[arg1].field_1024
            mem[832] = stor8[arg1].field_1280
            mem[864] = stor8[arg1].field_1536
            mem[896] = stor8[arg1].field_1792
            mem[928] = stor8[arg1].field_2048
            mem[960] = stor8[arg1].field_2304
            mem[992] = stor8[arg1].field_2560
            mem[1024] = stor8[arg1].field_2816
            mem[1056] = stor8[arg1].field_3072
            mem[ceil32(stor8[arg1].field_1 % 128) + 1280] = stor8[arg1].field_3328
            if not stor8[arg1].field_3328:
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + 1312] = stor8[arg1].field_3584
                if not stor8[arg1].field_3584:
                    mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1344] = 32
                    mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1376] = 576
                    mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1952] = stor8[arg1].field_1 % 128
                    mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1984 len ceil32(stor8[arg1].field_1 % 128)] = mem[1280 len ceil32(stor8[arg1].field_1 % 128)]
                    if ceil32(stor8[arg1].field_1 % 128) <= stor8[arg1].field_1 % 128:
                        mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1408] = address(stor8[arg1].field_256)
                        mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1440] = stor8[arg1].field_512
                        mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1472] = stor8[arg1].field_768
                        mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1504] = stor8[arg1].field_1024
                        mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1536] = stor8[arg1].field_1280
                        mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1568] = stor8[arg1].field_1536
                        mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1600] = stor8[arg1].field_1792
                        mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1632] = stor8[arg1].field_2048
                        mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1664] = stor8[arg1].field_2304
                        mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1696] = stor8[arg1].field_2560
                        mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1728] = stor8[arg1].field_2816
                        mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1760] = stor8[arg1].field_3072
                        mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1792] = ceil32(stor8[arg1].field_1 % 128) + 608
                        mem[(2 * ceil32(stor8[arg1].field_1 % 128)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1984] = stor8[arg1].field_3328
                        idx = 0
                        s = ceil32(stor8[arg1].field_1 % 128) + 1312
                        t = (2 * ceil32(stor8[arg1].field_1 % 128)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 2016
                        while idx < stor8[arg1].field_3328:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1824] = ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + 640
                        _1294 = mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + 1312]
                        mem[(2 * ceil32(stor8[arg1].field_1 % 128)) + (64 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 2016] = mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + 1312]
                        idx = 0
                        s = ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + 1344
                        t = (2 * ceil32(stor8[arg1].field_1 % 128)) + (64 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 2048
                        while idx < _1294:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        return mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1344 len 512], 
                               bool(uint8(stor8[arg1].field_3840)),
                               bool(uint8(stor8[arg1].field_3848)),
                               bool(uint8(stor8[arg1].field_3856)),
                               mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1952 len ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * _1294) + 96]
                    mem[stor8[arg1].field_1 % 128 + ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1984] = 0
                    mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1408] = address(stor8[arg1].field_256)
                    mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1440] = stor8[arg1].field_512
                    mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1472] = stor8[arg1].field_768
                    mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1504] = stor8[arg1].field_1024
                    mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1536] = stor8[arg1].field_1280
                    mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1568] = stor8[arg1].field_1536
                    mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1600] = stor8[arg1].field_1792
                    mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1632] = stor8[arg1].field_2048
                    mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1664] = stor8[arg1].field_2304
                    mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1696] = stor8[arg1].field_2560
                    mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1728] = stor8[arg1].field_2816
                    mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1760] = stor8[arg1].field_3072
                    mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1792] = ceil32(stor8[arg1].field_1 % 128) + 608
                    mem[(2 * ceil32(stor8[arg1].field_1 % 128)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1984] = stor8[arg1].field_3328
                    idx = 0
                    s = ceil32(stor8[arg1].field_1 % 128) + 1312
                    t = (2 * ceil32(stor8[arg1].field_1 % 128)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 2016
                    while idx < stor8[arg1].field_3328:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1824] = ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + 640
                    _1295 = mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + 1312]
                    mem[(2 * ceil32(stor8[arg1].field_1 % 128)) + (64 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 2016] = mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + 1312]
                    idx = 0
                    s = ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + 1344
                    t = (2 * ceil32(stor8[arg1].field_1 % 128)) + (64 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 2048
                    while idx < _1295:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    return mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1344 len 512], 
                           bool(uint8(stor8[arg1].field_3840)),
                           bool(uint8(stor8[arg1].field_3848)),
                           bool(uint8(stor8[arg1].field_3856)),
                           mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1952 len ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * _1295) + 96]
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + 1344] = address(stor8[arg1][14].field_0)
                idx = ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + 1344
                s = 0
                while ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1312 > idx:
                    mem[idx + 32] = address(stor8[arg1][s + 14].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1344] = 32
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1376] = 576
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1952] = stor8[arg1].field_1 % 128
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1984 len ceil32(stor8[arg1].field_1 % 128)] = mem[1280 len ceil32(stor8[arg1].field_1 % 128)]
                if ceil32(stor8[arg1].field_1 % 128) <= stor8[arg1].field_1 % 128:
                    mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1408] = address(stor8[arg1].field_256)
                    mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1440] = stor8[arg1].field_512
                    mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1472] = stor8[arg1].field_768
                    mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1504] = stor8[arg1].field_1024
                    mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1536] = stor8[arg1].field_1280
                    mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1568] = stor8[arg1].field_1536
                    mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1600] = stor8[arg1].field_1792
                    mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1632] = stor8[arg1].field_2048
                    mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1664] = stor8[arg1].field_2304
                    mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1696] = stor8[arg1].field_2560
                    mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1728] = stor8[arg1].field_2816
                    mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1760] = stor8[arg1].field_3072
                    mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1792] = ceil32(stor8[arg1].field_1 % 128) + 608
                    mem[(2 * ceil32(stor8[arg1].field_1 % 128)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1984] = stor8[arg1].field_3328
                    idx = 0
                    s = ceil32(stor8[arg1].field_1 % 128) + 1312
                    t = (2 * ceil32(stor8[arg1].field_1 % 128)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 2016
                    while idx < mem[ceil32(stor8[arg1].field_1 % 128) + 1280]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1824] = ceil32(stor8[arg1].field_1 % 128) + (32 * mem[ceil32(stor8[arg1].field_1 % 128) + 1280]) + 640
                    _3678 = mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + 1312]
                    mem[(2 * ceil32(stor8[arg1].field_1 % 128)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + (32 * mem[ceil32(stor8[arg1].field_1 % 128) + 1280]) + 2016] = mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + 1312]
                    idx = 0
                    s = ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + 1344
                    t = (2 * ceil32(stor8[arg1].field_1 % 128)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + (32 * mem[ceil32(stor8[arg1].field_1 % 128) + 1280]) + 2048
                    while idx < _3678:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    return mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1344 len 512], 
                           bool(uint8(stor8[arg1].field_3840)),
                           bool(uint8(stor8[arg1].field_3848)),
                           bool(uint8(stor8[arg1].field_3856)),
                           mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1952 len ceil32(stor8[arg1].field_1 % 128) + (32 * mem[ceil32(stor8[arg1].field_1 % 128) + 1280]) + (32 * _3678) + 96]
                mem[stor8[arg1].field_1 % 128 + ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1984] = 0
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1408] = address(stor8[arg1].field_256)
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1440] = stor8[arg1].field_512
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1472] = stor8[arg1].field_768
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1504] = stor8[arg1].field_1024
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1536] = stor8[arg1].field_1280
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1568] = stor8[arg1].field_1536
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1600] = stor8[arg1].field_1792
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1632] = stor8[arg1].field_2048
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1664] = stor8[arg1].field_2304
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1696] = stor8[arg1].field_2560
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1728] = stor8[arg1].field_2816
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1760] = stor8[arg1].field_3072
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1792] = ceil32(stor8[arg1].field_1 % 128) + 608
                mem[(2 * ceil32(stor8[arg1].field_1 % 128)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1984] = stor8[arg1].field_3328
                idx = 0
                s = ceil32(stor8[arg1].field_1 % 128) + 1312
                t = (2 * ceil32(stor8[arg1].field_1 % 128)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 2016
                while idx < mem[ceil32(stor8[arg1].field_1 % 128) + 1280]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1824] = ceil32(stor8[arg1].field_1 % 128) + (32 * mem[ceil32(stor8[arg1].field_1 % 128) + 1280]) + 640
                _3679 = mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + 1312]
                mem[(2 * ceil32(stor8[arg1].field_1 % 128)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + (32 * mem[ceil32(stor8[arg1].field_1 % 128) + 1280]) + 2016] = mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + 1312]
                idx = 0
                s = ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + 1344
                t = (2 * ceil32(stor8[arg1].field_1 % 128)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + (32 * mem[ceil32(stor8[arg1].field_1 % 128) + 1280]) + 2048
                while idx < _3679:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1344 len 512], 
                       bool(uint8(stor8[arg1].field_3840)),
                       bool(uint8(stor8[arg1].field_3848)),
                       bool(uint8(stor8[arg1].field_3856)),
                       mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1952 len ceil32(stor8[arg1].field_1 % 128) + (32 * mem[ceil32(stor8[arg1].field_1 % 128) + 1280]) + (32 * _3679) + 96]
            mem[ceil32(stor8[arg1].field_1 % 128) + 1312] = address(stor8[arg1][13].field_0)
            idx = ceil32(stor8[arg1].field_1 % 128) + 1312
            s = 0
            while ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + 1280 > idx:
                mem[idx + 32] = address(stor8[arg1][s + 13].field_256)
                idx = idx + 32
                s = s + 1
                continue 
            mem[1088] = ceil32(stor8[arg1].field_1 % 128) + 1280
            mem[64] = ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1344
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + 1312] = stor8[arg1].field_3584
            if not stor8[arg1].field_3584:
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1344] = 32
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1376] = 576
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1952] = stor8[arg1].field_1 % 128
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1984 len ceil32(stor8[arg1].field_1 % 128)] = mem[1280 len ceil32(stor8[arg1].field_1 % 128)]
                if ceil32(stor8[arg1].field_1 % 128) <= stor8[arg1].field_1 % 128:
                    mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1408] = address(stor8[arg1].field_256)
                    mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1440] = stor8[arg1].field_512
                    mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1472] = stor8[arg1].field_768
                    mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1504] = stor8[arg1].field_1024
                    mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1536] = stor8[arg1].field_1280
                    mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1568] = stor8[arg1].field_1536
                    mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1600] = stor8[arg1].field_1792
                    mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1632] = stor8[arg1].field_2048
                    mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1664] = stor8[arg1].field_2304
                    mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1696] = stor8[arg1].field_2560
                    mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1728] = stor8[arg1].field_2816
                    mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1760] = stor8[arg1].field_3072
                    mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1792] = ceil32(stor8[arg1].field_1 % 128) + 608
                    mem[(2 * ceil32(stor8[arg1].field_1 % 128)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1984] = stor8[arg1].field_3328
                    idx = 0
                    s = ceil32(stor8[arg1].field_1 % 128) + 1312
                    t = (2 * ceil32(stor8[arg1].field_1 % 128)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 2016
                    while idx < mem[ceil32(stor8[arg1].field_1 % 128) + 1280]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1824] = ceil32(stor8[arg1].field_1 % 128) + (32 * mem[ceil32(stor8[arg1].field_1 % 128) + 1280]) + 640
                    _3680 = mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + 1312]
                    mem[(2 * ceil32(stor8[arg1].field_1 % 128)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + (32 * mem[ceil32(stor8[arg1].field_1 % 128) + 1280]) + 2016] = mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + 1312]
                    idx = 0
                    s = ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + 1344
                    t = (2 * ceil32(stor8[arg1].field_1 % 128)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + (32 * mem[ceil32(stor8[arg1].field_1 % 128) + 1280]) + 2048
                    while idx < _3680:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    return mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1344 len 512], 
                           bool(uint8(stor8[arg1].field_3840)),
                           bool(uint8(stor8[arg1].field_3848)),
                           bool(uint8(stor8[arg1].field_3856)),
                           mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1952 len ceil32(stor8[arg1].field_1 % 128) + (32 * mem[ceil32(stor8[arg1].field_1 % 128) + 1280]) + (32 * _3680) + 96]
                mem[stor8[arg1].field_1 % 128 + ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1984] = 0
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1408] = address(stor8[arg1].field_256)
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1440] = stor8[arg1].field_512
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1472] = stor8[arg1].field_768
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1504] = stor8[arg1].field_1024
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1536] = stor8[arg1].field_1280
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1568] = stor8[arg1].field_1536
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1600] = stor8[arg1].field_1792
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1632] = stor8[arg1].field_2048
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1664] = stor8[arg1].field_2304
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1696] = stor8[arg1].field_2560
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1728] = stor8[arg1].field_2816
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1760] = stor8[arg1].field_3072
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1792] = ceil32(stor8[arg1].field_1 % 128) + 608
                mem[(2 * ceil32(stor8[arg1].field_1 % 128)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1984] = stor8[arg1].field_3328
                idx = 0
                s = ceil32(stor8[arg1].field_1 % 128) + 1312
                t = (2 * ceil32(stor8[arg1].field_1 % 128)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 2016
                while idx < mem[ceil32(stor8[arg1].field_1 % 128) + 1280]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1824] = ceil32(stor8[arg1].field_1 % 128) + (32 * mem[ceil32(stor8[arg1].field_1 % 128) + 1280]) + 640
                _3681 = mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + 1312]
                mem[(2 * ceil32(stor8[arg1].field_1 % 128)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + (32 * mem[ceil32(stor8[arg1].field_1 % 128) + 1280]) + 2016] = mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + 1312]
                idx = 0
                s = ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + 1344
                t = (2 * ceil32(stor8[arg1].field_1 % 128)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + (32 * mem[ceil32(stor8[arg1].field_1 % 128) + 1280]) + 2048
                while idx < _3681:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1344 len 512], 
                       bool(uint8(stor8[arg1].field_3840)),
                       bool(uint8(stor8[arg1].field_3848)),
                       bool(uint8(stor8[arg1].field_3856)),
                       mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1952 len ceil32(stor8[arg1].field_1 % 128) + (32 * mem[ceil32(stor8[arg1].field_1 % 128) + 1280]) + (32 * _3681) + 96]
            mem[0] = sha3(arg1, 8) + 14
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + 1344] = address(stor8[arg1][14].field_0)
            idx = ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + 1344
            s = 0
            while ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1312 > idx:
                mem[idx + 32] = address(stor8[arg1][s + 14].field_256)
                idx = idx + 32
                s = s + 1
                continue 
            mem[1120] = ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + 1312
            mem[1152] = bool(uint8(stor8[arg1].field_3840))
            mem[1184] = bool(uint8(stor8[arg1].field_3848))
            mem[1216] = bool(uint8(stor8[arg1].field_3856))
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1344] = 32
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1376] = 576
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1952] = stor8[arg1].field_1 % 128
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1984 len ceil32(stor8[arg1].field_1 % 128)] = mem[1280 len ceil32(stor8[arg1].field_1 % 128)]
            if ceil32(stor8[arg1].field_1 % 128) > stor8[arg1].field_1 % 128:
                mem[stor8[arg1].field_1 % 128 + ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1984] = 0
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1408] = address(stor8[arg1].field_256)
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1440] = stor8[arg1].field_512
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1472] = stor8[arg1].field_768
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1504] = stor8[arg1].field_1024
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1536] = stor8[arg1].field_1280
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1568] = stor8[arg1].field_1536
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1600] = stor8[arg1].field_1792
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1632] = stor8[arg1].field_2048
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1664] = stor8[arg1].field_2304
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1696] = stor8[arg1].field_2560
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1728] = stor8[arg1].field_2816
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1760] = stor8[arg1].field_3072
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1792] = ceil32(stor8[arg1].field_1 % 128) + 608
                mem[(2 * ceil32(stor8[arg1].field_1 % 128)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1984] = stor8[arg1].field_3328
                idx = 0
                s = ceil32(stor8[arg1].field_1 % 128) + 1312
                t = (2 * ceil32(stor8[arg1].field_1 % 128)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 2016
                while idx < mem[ceil32(stor8[arg1].field_1 % 128) + 1280]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1824] = ceil32(stor8[arg1].field_1 % 128) + (32 * mem[ceil32(stor8[arg1].field_1 % 128) + 1280]) + 640
                _5515 = mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + 1312]
                mem[(2 * ceil32(stor8[arg1].field_1 % 128)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + (32 * mem[ceil32(stor8[arg1].field_1 % 128) + 1280]) + 2016] = mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + 1312]
                idx = 0
                s = ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + 1344
                t = (2 * ceil32(stor8[arg1].field_1 % 128)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + (32 * mem[ceil32(stor8[arg1].field_1 % 128) + 1280]) + 2048
                while idx < _5515:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1344 len 512], 
                       bool(uint8(stor8[arg1].field_3840)),
                       bool(uint8(stor8[arg1].field_3848)),
                       bool(uint8(stor8[arg1].field_3856)),
                       mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1952 len ceil32(stor8[arg1].field_1 % 128) + (32 * mem[ceil32(stor8[arg1].field_1 % 128) + 1280]) + (32 * _5515) + 96]
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1408] = address(stor8[arg1].field_256)
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1440] = stor8[arg1].field_512
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1472] = stor8[arg1].field_768
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1504] = stor8[arg1].field_1024
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1536] = stor8[arg1].field_1280
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1568] = stor8[arg1].field_1536
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1600] = stor8[arg1].field_1792
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1632] = stor8[arg1].field_2048
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1664] = stor8[arg1].field_2304
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1696] = stor8[arg1].field_2560
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1728] = stor8[arg1].field_2816
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1760] = stor8[arg1].field_3072
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1792] = ceil32(stor8[arg1].field_1 % 128) + 608
            mem[(2 * ceil32(stor8[arg1].field_1 % 128)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1984] = stor8[arg1].field_3328
            idx = 0
            s = ceil32(stor8[arg1].field_1 % 128) + 1312
            t = ceil32(mem[1248]) + mem[64] + 672
            while idx < stor8[arg1].field_3328:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1824] = ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + 640
            _5514 = mem[mem[1120]]
            mem[(2 * ceil32(stor8[arg1].field_1 % 128)) + (64 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 2016] = mem[mem[1120]]
            idx = 0
            s = mem[1120] + 32
            t = (2 * ceil32(stor8[arg1].field_1 % 128)) + (64 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 2048
            while idx < _5514:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1856] = bool(mem[1152])
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1888] = bool(mem[1184])
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1920] = bool(mem[1216])
            return memory
              from mem[64]
               len (2 * ceil32(stor8[arg1].field_1 % 128)) + (64 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + (32 * _5514) + -mem[64] + 2048
        if 31 >= uint255(stor8[arg1].field_0) * 0.5:
            mem[1280] = 256 * Mask(248, 0, stor8[arg1].field_8)
            mem[672] = 1248
            mem[704] = address(stor8[arg1].field_256)
            mem[736] = stor8[arg1].field_512
            mem[768] = stor8[arg1].field_768
            mem[800] = stor8[arg1].field_1024
            mem[832] = stor8[arg1].field_1280
            mem[864] = stor8[arg1].field_1536
            mem[896] = stor8[arg1].field_1792
            mem[928] = stor8[arg1].field_2048
            mem[960] = stor8[arg1].field_2304
            mem[992] = stor8[arg1].field_2560
            mem[1024] = stor8[arg1].field_2816
            mem[1056] = stor8[arg1].field_3072
            mem[ceil32(stor8[arg1].field_1 % 128) + 1280] = stor8[arg1].field_3328
            if not stor8[arg1].field_3328:
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + 1312] = stor8[arg1].field_3584
                if not stor8[arg1].field_3584:
                    mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1344] = 32
                    mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1376] = 576
                    mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1952] = stor8[arg1].field_1 % 128
                    mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1984 len ceil32(stor8[arg1].field_1 % 128)] = mem[1280 len ceil32(stor8[arg1].field_1 % 128)]
                    if ceil32(stor8[arg1].field_1 % 128) <= stor8[arg1].field_1 % 128:
                        mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1408] = address(stor8[arg1].field_256)
                        mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1440] = stor8[arg1].field_512
                        mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1472] = stor8[arg1].field_768
                        mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1504] = stor8[arg1].field_1024
                        mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1536] = stor8[arg1].field_1280
                        mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1568] = stor8[arg1].field_1536
                        mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1600] = stor8[arg1].field_1792
                        mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1632] = stor8[arg1].field_2048
                        mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1664] = stor8[arg1].field_2304
                        mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1696] = stor8[arg1].field_2560
                        mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1728] = stor8[arg1].field_2816
                        mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1760] = stor8[arg1].field_3072
                        mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1792] = ceil32(stor8[arg1].field_1 % 128) + 608
                        mem[(2 * ceil32(stor8[arg1].field_1 % 128)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1984] = stor8[arg1].field_3328
                        idx = 0
                        s = ceil32(stor8[arg1].field_1 % 128) + 1312
                        t = (2 * ceil32(stor8[arg1].field_1 % 128)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 2016
                        while idx < stor8[arg1].field_3328:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1824] = ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + 640
                        _1298 = mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + 1312]
                        mem[(2 * ceil32(stor8[arg1].field_1 % 128)) + (64 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 2016] = mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + 1312]
                        idx = 0
                        s = ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + 1344
                        t = (2 * ceil32(stor8[arg1].field_1 % 128)) + (64 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 2048
                        while idx < _1298:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        return mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1344 len 512], 
                               bool(uint8(stor8[arg1].field_3840)),
                               bool(uint8(stor8[arg1].field_3848)),
                               bool(uint8(stor8[arg1].field_3856)),
                               mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1952 len ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * _1298) + 96]
                    mem[stor8[arg1].field_1 % 128 + ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1984] = 0
                    mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1408] = address(stor8[arg1].field_256)
                    mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1440] = stor8[arg1].field_512
                    mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1472] = stor8[arg1].field_768
                    mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1504] = stor8[arg1].field_1024
                    mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1536] = stor8[arg1].field_1280
                    mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1568] = stor8[arg1].field_1536
                    mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1600] = stor8[arg1].field_1792
                    mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1632] = stor8[arg1].field_2048
                    mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1664] = stor8[arg1].field_2304
                    mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1696] = stor8[arg1].field_2560
                    mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1728] = stor8[arg1].field_2816
                    mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1760] = stor8[arg1].field_3072
                    mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1792] = ceil32(stor8[arg1].field_1 % 128) + 608
                    mem[(2 * ceil32(stor8[arg1].field_1 % 128)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1984] = stor8[arg1].field_3328
                    idx = 0
                    s = ceil32(stor8[arg1].field_1 % 128) + 1312
                    t = (2 * ceil32(stor8[arg1].field_1 % 128)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 2016
                    while idx < stor8[arg1].field_3328:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1824] = ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + 640
                    _1299 = mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + 1312]
                    mem[(2 * ceil32(stor8[arg1].field_1 % 128)) + (64 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 2016] = mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + 1312]
                    idx = 0
                    s = ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + 1344
                    t = (2 * ceil32(stor8[arg1].field_1 % 128)) + (64 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 2048
                    while idx < _1299:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    return mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1344 len 512], 
                           bool(uint8(stor8[arg1].field_3840)),
                           bool(uint8(stor8[arg1].field_3848)),
                           bool(uint8(stor8[arg1].field_3856)),
                           mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1952 len ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * _1299) + 96]
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + 1344] = address(stor8[arg1][14].field_0)
                idx = ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + 1344
                s = 0
                while ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1312 > idx:
                    mem[idx + 32] = address(stor8[arg1][s + 14].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1344] = 32
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1376] = 576
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1952] = stor8[arg1].field_1 % 128
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1984 len ceil32(stor8[arg1].field_1 % 128)] = mem[1280 len ceil32(stor8[arg1].field_1 % 128)]
                if ceil32(stor8[arg1].field_1 % 128) <= stor8[arg1].field_1 % 128:
                    mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1408] = address(stor8[arg1].field_256)
                    mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1440] = stor8[arg1].field_512
                    mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1472] = stor8[arg1].field_768
                    mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1504] = stor8[arg1].field_1024
                    mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1536] = stor8[arg1].field_1280
                    mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1568] = stor8[arg1].field_1536
                    mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1600] = stor8[arg1].field_1792
                    mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1632] = stor8[arg1].field_2048
                    mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1664] = stor8[arg1].field_2304
                    mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1696] = stor8[arg1].field_2560
                    mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1728] = stor8[arg1].field_2816
                    mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1760] = stor8[arg1].field_3072
                    mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1792] = ceil32(stor8[arg1].field_1 % 128) + 608
                    mem[(2 * ceil32(stor8[arg1].field_1 % 128)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1984] = stor8[arg1].field_3328
                    idx = 0
                    s = ceil32(stor8[arg1].field_1 % 128) + 1312
                    t = (2 * ceil32(stor8[arg1].field_1 % 128)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 2016
                    while idx < mem[ceil32(stor8[arg1].field_1 % 128) + 1280]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1824] = ceil32(stor8[arg1].field_1 % 128) + (32 * mem[ceil32(stor8[arg1].field_1 % 128) + 1280]) + 640
                    _3685 = mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + 1312]
                    mem[(2 * ceil32(stor8[arg1].field_1 % 128)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + (32 * mem[ceil32(stor8[arg1].field_1 % 128) + 1280]) + 2016] = mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + 1312]
                    idx = 0
                    s = ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + 1344
                    t = (2 * ceil32(stor8[arg1].field_1 % 128)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + (32 * mem[ceil32(stor8[arg1].field_1 % 128) + 1280]) + 2048
                    while idx < _3685:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    return mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1344 len 512], 
                           bool(uint8(stor8[arg1].field_3840)),
                           bool(uint8(stor8[arg1].field_3848)),
                           bool(uint8(stor8[arg1].field_3856)),
                           mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1952 len ceil32(stor8[arg1].field_1 % 128) + (32 * mem[ceil32(stor8[arg1].field_1 % 128) + 1280]) + (32 * _3685) + 96]
                mem[stor8[arg1].field_1 % 128 + ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1984] = 0
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1408] = address(stor8[arg1].field_256)
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1440] = stor8[arg1].field_512
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1472] = stor8[arg1].field_768
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1504] = stor8[arg1].field_1024
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1536] = stor8[arg1].field_1280
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1568] = stor8[arg1].field_1536
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1600] = stor8[arg1].field_1792
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1632] = stor8[arg1].field_2048
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1664] = stor8[arg1].field_2304
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1696] = stor8[arg1].field_2560
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1728] = stor8[arg1].field_2816
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1760] = stor8[arg1].field_3072
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1792] = ceil32(stor8[arg1].field_1 % 128) + 608
                mem[(2 * ceil32(stor8[arg1].field_1 % 128)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1984] = stor8[arg1].field_3328
                idx = 0
                s = ceil32(stor8[arg1].field_1 % 128) + 1312
                t = (2 * ceil32(stor8[arg1].field_1 % 128)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 2016
                while idx < mem[ceil32(stor8[arg1].field_1 % 128) + 1280]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1824] = ceil32(stor8[arg1].field_1 % 128) + (32 * mem[ceil32(stor8[arg1].field_1 % 128) + 1280]) + 640
                _3686 = mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + 1312]
                mem[(2 * ceil32(stor8[arg1].field_1 % 128)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + (32 * mem[ceil32(stor8[arg1].field_1 % 128) + 1280]) + 2016] = mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + 1312]
                idx = 0
                s = ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + 1344
                t = (2 * ceil32(stor8[arg1].field_1 % 128)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + (32 * mem[ceil32(stor8[arg1].field_1 % 128) + 1280]) + 2048
                while idx < _3686:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1344 len 512], 
                       bool(uint8(stor8[arg1].field_3840)),
                       bool(uint8(stor8[arg1].field_3848)),
                       bool(uint8(stor8[arg1].field_3856)),
                       mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1952 len ceil32(stor8[arg1].field_1 % 128) + (32 * mem[ceil32(stor8[arg1].field_1 % 128) + 1280]) + (32 * _3686) + 96]
            mem[ceil32(stor8[arg1].field_1 % 128) + 1312] = address(stor8[arg1][13].field_0)
            idx = ceil32(stor8[arg1].field_1 % 128) + 1312
            s = 0
            while ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + 1280 > idx:
                mem[idx + 32] = address(stor8[arg1][s + 13].field_256)
                idx = idx + 32
                s = s + 1
                continue 
            mem[1088] = ceil32(stor8[arg1].field_1 % 128) + 1280
            mem[64] = ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1344
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + 1312] = stor8[arg1].field_3584
            if not stor8[arg1].field_3584:
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1344] = 32
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1376] = 576
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1952] = stor8[arg1].field_1 % 128
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1984 len ceil32(stor8[arg1].field_1 % 128)] = mem[1280 len ceil32(stor8[arg1].field_1 % 128)]
                if ceil32(stor8[arg1].field_1 % 128) <= stor8[arg1].field_1 % 128:
                    mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1408] = address(stor8[arg1].field_256)
                    mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1440] = stor8[arg1].field_512
                    mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1472] = stor8[arg1].field_768
                    mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1504] = stor8[arg1].field_1024
                    mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1536] = stor8[arg1].field_1280
                    mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1568] = stor8[arg1].field_1536
                    mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1600] = stor8[arg1].field_1792
                    mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1632] = stor8[arg1].field_2048
                    mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1664] = stor8[arg1].field_2304
                    mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1696] = stor8[arg1].field_2560
                    mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1728] = stor8[arg1].field_2816
                    mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1760] = stor8[arg1].field_3072
                    mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1792] = ceil32(stor8[arg1].field_1 % 128) + 608
                    mem[(2 * ceil32(stor8[arg1].field_1 % 128)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1984] = stor8[arg1].field_3328
                    idx = 0
                    s = ceil32(stor8[arg1].field_1 % 128) + 1312
                    t = (2 * ceil32(stor8[arg1].field_1 % 128)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 2016
                    while idx < mem[ceil32(stor8[arg1].field_1 % 128) + 1280]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1824] = ceil32(stor8[arg1].field_1 % 128) + (32 * mem[ceil32(stor8[arg1].field_1 % 128) + 1280]) + 640
                    _3687 = mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + 1312]
                    mem[(2 * ceil32(stor8[arg1].field_1 % 128)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + (32 * mem[ceil32(stor8[arg1].field_1 % 128) + 1280]) + 2016] = mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + 1312]
                    idx = 0
                    s = ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + 1344
                    t = (2 * ceil32(stor8[arg1].field_1 % 128)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + (32 * mem[ceil32(stor8[arg1].field_1 % 128) + 1280]) + 2048
                    while idx < _3687:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    return mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1344 len 512], 
                           bool(uint8(stor8[arg1].field_3840)),
                           bool(uint8(stor8[arg1].field_3848)),
                           bool(uint8(stor8[arg1].field_3856)),
                           mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1952 len ceil32(stor8[arg1].field_1 % 128) + (32 * mem[ceil32(stor8[arg1].field_1 % 128) + 1280]) + (32 * _3687) + 96]
                mem[stor8[arg1].field_1 % 128 + ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1984] = 0
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1408] = address(stor8[arg1].field_256)
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1440] = stor8[arg1].field_512
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1472] = stor8[arg1].field_768
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1504] = stor8[arg1].field_1024
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1536] = stor8[arg1].field_1280
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1568] = stor8[arg1].field_1536
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1600] = stor8[arg1].field_1792
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1632] = stor8[arg1].field_2048
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1664] = stor8[arg1].field_2304
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1696] = stor8[arg1].field_2560
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1728] = stor8[arg1].field_2816
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1760] = stor8[arg1].field_3072
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1792] = ceil32(stor8[arg1].field_1 % 128) + 608
                mem[(2 * ceil32(stor8[arg1].field_1 % 128)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1984] = stor8[arg1].field_3328
                idx = 0
                s = ceil32(stor8[arg1].field_1 % 128) + 1312
                t = (2 * ceil32(stor8[arg1].field_1 % 128)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 2016
                while idx < mem[ceil32(stor8[arg1].field_1 % 128) + 1280]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1824] = ceil32(stor8[arg1].field_1 % 128) + (32 * mem[ceil32(stor8[arg1].field_1 % 128) + 1280]) + 640
                _3688 = mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + 1312]
                mem[(2 * ceil32(stor8[arg1].field_1 % 128)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + (32 * mem[ceil32(stor8[arg1].field_1 % 128) + 1280]) + 2016] = mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + 1312]
                idx = 0
                s = ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + 1344
                t = (2 * ceil32(stor8[arg1].field_1 % 128)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + (32 * mem[ceil32(stor8[arg1].field_1 % 128) + 1280]) + 2048
                while idx < _3688:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1344 len 512], 
                       bool(uint8(stor8[arg1].field_3840)),
                       bool(uint8(stor8[arg1].field_3848)),
                       bool(uint8(stor8[arg1].field_3856)),
                       mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1952 len ceil32(stor8[arg1].field_1 % 128) + (32 * mem[ceil32(stor8[arg1].field_1 % 128) + 1280]) + (32 * _3688) + 96]
            mem[0] = sha3(arg1, 8) + 14
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + 1344] = address(stor8[arg1][14].field_0)
            idx = ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + 1344
            s = 0
            while ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1312 > idx:
                mem[idx + 32] = address(stor8[arg1][s + 14].field_256)
                idx = idx + 32
                s = s + 1
                continue 
            mem[1120] = ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + 1312
            mem[1152] = bool(uint8(stor8[arg1].field_3840))
            mem[1184] = bool(uint8(stor8[arg1].field_3848))
            mem[1216] = bool(uint8(stor8[arg1].field_3856))
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1344] = 32
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1376] = 576
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1952] = stor8[arg1].field_1 % 128
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1984 len ceil32(stor8[arg1].field_1 % 128)] = mem[1280 len ceil32(stor8[arg1].field_1 % 128)]
            if ceil32(stor8[arg1].field_1 % 128) > stor8[arg1].field_1 % 128:
                mem[stor8[arg1].field_1 % 128 + ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1984] = 0
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1408] = address(stor8[arg1].field_256)
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1440] = stor8[arg1].field_512
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1472] = stor8[arg1].field_768
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1504] = stor8[arg1].field_1024
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1536] = stor8[arg1].field_1280
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1568] = stor8[arg1].field_1536
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1600] = stor8[arg1].field_1792
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1632] = stor8[arg1].field_2048
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1664] = stor8[arg1].field_2304
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1696] = stor8[arg1].field_2560
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1728] = stor8[arg1].field_2816
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1760] = stor8[arg1].field_3072
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1792] = ceil32(stor8[arg1].field_1 % 128) + 608
                mem[(2 * ceil32(stor8[arg1].field_1 % 128)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1984] = stor8[arg1].field_3328
                idx = 0
                s = ceil32(stor8[arg1].field_1 % 128) + 1312
                t = (2 * ceil32(stor8[arg1].field_1 % 128)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 2016
                while idx < mem[ceil32(stor8[arg1].field_1 % 128) + 1280]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1824] = ceil32(stor8[arg1].field_1 % 128) + (32 * mem[ceil32(stor8[arg1].field_1 % 128) + 1280]) + 640
                _5521 = mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + 1312]
                mem[(2 * ceil32(stor8[arg1].field_1 % 128)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + (32 * mem[ceil32(stor8[arg1].field_1 % 128) + 1280]) + 2016] = mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + 1312]
                idx = 0
                s = ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + 1344
                t = (2 * ceil32(stor8[arg1].field_1 % 128)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + (32 * mem[ceil32(stor8[arg1].field_1 % 128) + 1280]) + 2048
                while idx < _5521:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1344 len 512], 
                       bool(uint8(stor8[arg1].field_3840)),
                       bool(uint8(stor8[arg1].field_3848)),
                       bool(uint8(stor8[arg1].field_3856)),
                       mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1952 len ceil32(stor8[arg1].field_1 % 128) + (32 * mem[ceil32(stor8[arg1].field_1 % 128) + 1280]) + (32 * _5521) + 96]
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1408] = address(stor8[arg1].field_256)
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1440] = stor8[arg1].field_512
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1472] = stor8[arg1].field_768
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1504] = stor8[arg1].field_1024
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1536] = stor8[arg1].field_1280
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1568] = stor8[arg1].field_1536
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1600] = stor8[arg1].field_1792
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1632] = stor8[arg1].field_2048
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1664] = stor8[arg1].field_2304
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1696] = stor8[arg1].field_2560
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1728] = stor8[arg1].field_2816
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1760] = stor8[arg1].field_3072
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1792] = ceil32(stor8[arg1].field_1 % 128) + 608
            mem[(2 * ceil32(stor8[arg1].field_1 % 128)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1984] = stor8[arg1].field_3328
            idx = 0
            s = ceil32(stor8[arg1].field_1 % 128) + 1312
            t = ceil32(mem[1248]) + mem[64] + 672
            while idx < stor8[arg1].field_3328:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1824] = ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + 640
            _5520 = mem[mem[1120]]
            mem[(2 * ceil32(stor8[arg1].field_1 % 128)) + (64 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 2016] = mem[mem[1120]]
            idx = 0
            s = mem[1120] + 32
            t = (2 * ceil32(stor8[arg1].field_1 % 128)) + (64 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 2048
            while idx < _5520:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1856] = bool(mem[1152])
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1888] = bool(mem[1184])
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1920] = bool(mem[1216])
            return memory
              from mem[64]
               len (2 * ceil32(stor8[arg1].field_1 % 128)) + (64 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + (32 * _5520) + -mem[64] + 2048
        mem[1280] = stor8[arg1].field_0
        idx = 1280
        s = 0
        while (uint255(stor8[arg1].field_0) * 0.5) + 1248 > idx:
            mem[idx + 32] = stor8[arg1][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[672] = 1248
        mem[704] = address(stor8[arg1].field_256)
        mem[736] = stor8[arg1].field_512
        mem[768] = stor8[arg1].field_768
        mem[800] = stor8[arg1].field_1024
        mem[832] = stor8[arg1].field_1280
        mem[864] = stor8[arg1].field_1536
        mem[896] = stor8[arg1].field_1792
        mem[928] = stor8[arg1].field_2048
        mem[960] = stor8[arg1].field_2304
        mem[992] = stor8[arg1].field_2560
        mem[1024] = stor8[arg1].field_2816
        mem[1056] = stor8[arg1].field_3072
        mem[ceil32(stor8[arg1].field_1 % 128) + 1280] = stor8[arg1].field_3328
        if not stor8[arg1].field_3328:
            mem[1088] = ceil32(stor8[arg1].field_1 % 128) + 1280
            mem[64] = ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1344
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + 1312] = stor8[arg1].field_3584
            if not stor8[arg1].field_3584:
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1344] = 32
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1376] = 576
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1952] = stor8[arg1].field_1 % 128
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1984 len ceil32(stor8[arg1].field_1 % 128)] = mem[1280 len ceil32(stor8[arg1].field_1 % 128)]
                if ceil32(stor8[arg1].field_1 % 128) <= stor8[arg1].field_1 % 128:
                    mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1408] = address(stor8[arg1].field_256)
                    mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1440] = stor8[arg1].field_512
                    mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1472] = stor8[arg1].field_768
                    mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1504] = stor8[arg1].field_1024
                    mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1536] = stor8[arg1].field_1280
                    mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1568] = stor8[arg1].field_1536
                    mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1600] = stor8[arg1].field_1792
                    mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1632] = stor8[arg1].field_2048
                    mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1664] = stor8[arg1].field_2304
                    mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1696] = stor8[arg1].field_2560
                    mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1728] = stor8[arg1].field_2816
                    mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1760] = stor8[arg1].field_3072
                    mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1792] = ceil32(stor8[arg1].field_1 % 128) + 608
                    mem[(2 * ceil32(stor8[arg1].field_1 % 128)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1984] = stor8[arg1].field_3328
                    idx = 0
                    s = ceil32(stor8[arg1].field_1 % 128) + 1312
                    t = (2 * ceil32(stor8[arg1].field_1 % 128)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 2016
                    while idx < mem[ceil32(stor8[arg1].field_1 % 128) + 1280]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1824] = ceil32(stor8[arg1].field_1 % 128) + (32 * mem[ceil32(stor8[arg1].field_1 % 128) + 1280]) + 640
                    _2396 = mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + 1312]
                    mem[(2 * ceil32(stor8[arg1].field_1 % 128)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + (32 * mem[ceil32(stor8[arg1].field_1 % 128) + 1280]) + 2016] = mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + 1312]
                    idx = 0
                    s = ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + 1344
                    t = (2 * ceil32(stor8[arg1].field_1 % 128)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + (32 * mem[ceil32(stor8[arg1].field_1 % 128) + 1280]) + 2048
                    while idx < _2396:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    return mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1344 len 512], 
                           bool(uint8(stor8[arg1].field_3840)),
                           bool(uint8(stor8[arg1].field_3848)),
                           bool(uint8(stor8[arg1].field_3856)),
                           mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1952 len ceil32(stor8[arg1].field_1 % 128) + (32 * mem[ceil32(stor8[arg1].field_1 % 128) + 1280]) + (32 * _2396) + 96]
                mem[stor8[arg1].field_1 % 128 + ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1984] = 0
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1408] = address(stor8[arg1].field_256)
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1440] = stor8[arg1].field_512
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1472] = stor8[arg1].field_768
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1504] = stor8[arg1].field_1024
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1536] = stor8[arg1].field_1280
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1568] = stor8[arg1].field_1536
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1600] = stor8[arg1].field_1792
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1632] = stor8[arg1].field_2048
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1664] = stor8[arg1].field_2304
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1696] = stor8[arg1].field_2560
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1728] = stor8[arg1].field_2816
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1760] = stor8[arg1].field_3072
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1792] = ceil32(stor8[arg1].field_1 % 128) + 608
                mem[(2 * ceil32(stor8[arg1].field_1 % 128)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1984] = stor8[arg1].field_3328
                idx = 0
                s = ceil32(stor8[arg1].field_1 % 128) + 1312
                t = (2 * ceil32(stor8[arg1].field_1 % 128)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 2016
                while idx < mem[ceil32(stor8[arg1].field_1 % 128) + 1280]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1824] = ceil32(stor8[arg1].field_1 % 128) + (32 * mem[ceil32(stor8[arg1].field_1 % 128) + 1280]) + 640
                _2397 = mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + 1312]
                mem[(2 * ceil32(stor8[arg1].field_1 % 128)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + (32 * mem[ceil32(stor8[arg1].field_1 % 128) + 1280]) + 2016] = mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + 1312]
                idx = 0
                s = ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + 1344
                t = (2 * ceil32(stor8[arg1].field_1 % 128)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + (32 * mem[ceil32(stor8[arg1].field_1 % 128) + 1280]) + 2048
                while idx < _2397:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1344 len 512], 
                       bool(uint8(stor8[arg1].field_3840)),
                       bool(uint8(stor8[arg1].field_3848)),
                       bool(uint8(stor8[arg1].field_3856)),
                       mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1952 len ceil32(stor8[arg1].field_1 % 128) + (32 * mem[ceil32(stor8[arg1].field_1 % 128) + 1280]) + (32 * _2397) + 96]
            mem[0] = sha3(arg1, 8) + 14
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + 1344] = address(stor8[arg1][14].field_0)
            idx = ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + 1344
            s = 0
            while ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1312 > idx:
                mem[idx + 32] = address(stor8[arg1][s + 14].field_256)
                idx = idx + 32
                s = s + 1
                continue 
            mem[1120] = ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + 1312
            mem[1152] = bool(uint8(stor8[arg1].field_3840))
            mem[1184] = bool(uint8(stor8[arg1].field_3848))
            mem[1216] = bool(uint8(stor8[arg1].field_3856))
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1344] = 32
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1376] = 576
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1952] = stor8[arg1].field_1 % 128
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1984 len ceil32(stor8[arg1].field_1 % 128)] = mem[1280 len ceil32(stor8[arg1].field_1 % 128)]
            if ceil32(stor8[arg1].field_1 % 128) > stor8[arg1].field_1 % 128:
                mem[stor8[arg1].field_1 % 128 + ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1984] = 0
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1408] = address(stor8[arg1].field_256)
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1440] = stor8[arg1].field_512
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1472] = stor8[arg1].field_768
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1504] = stor8[arg1].field_1024
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1536] = stor8[arg1].field_1280
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1568] = stor8[arg1].field_1536
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1600] = stor8[arg1].field_1792
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1632] = stor8[arg1].field_2048
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1664] = stor8[arg1].field_2304
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1696] = stor8[arg1].field_2560
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1728] = stor8[arg1].field_2816
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1760] = stor8[arg1].field_3072
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1792] = ceil32(stor8[arg1].field_1 % 128) + 608
                mem[(2 * ceil32(stor8[arg1].field_1 % 128)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1984] = stor8[arg1].field_3328
                idx = 0
                s = ceil32(stor8[arg1].field_1 % 128) + 1312
                t = (2 * ceil32(stor8[arg1].field_1 % 128)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 2016
                while idx < mem[ceil32(stor8[arg1].field_1 % 128) + 1280]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1824] = ceil32(stor8[arg1].field_1 % 128) + (32 * mem[ceil32(stor8[arg1].field_1 % 128) + 1280]) + 640
                _4733 = mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + 1312]
                mem[(2 * ceil32(stor8[arg1].field_1 % 128)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + (32 * mem[ceil32(stor8[arg1].field_1 % 128) + 1280]) + 2016] = mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + 1312]
                idx = 0
                s = ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + 1344
                t = (2 * ceil32(stor8[arg1].field_1 % 128)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + (32 * mem[ceil32(stor8[arg1].field_1 % 128) + 1280]) + 2048
                while idx < _4733:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1344 len 512], 
                       bool(uint8(stor8[arg1].field_3840)),
                       bool(uint8(stor8[arg1].field_3848)),
                       bool(uint8(stor8[arg1].field_3856)),
                       mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1952 len ceil32(stor8[arg1].field_1 % 128) + (32 * mem[ceil32(stor8[arg1].field_1 % 128) + 1280]) + (32 * _4733) + 96]
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1408] = address(stor8[arg1].field_256)
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1440] = stor8[arg1].field_512
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1472] = stor8[arg1].field_768
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1504] = stor8[arg1].field_1024
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1536] = stor8[arg1].field_1280
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1568] = stor8[arg1].field_1536
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1600] = stor8[arg1].field_1792
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1632] = stor8[arg1].field_2048
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1664] = stor8[arg1].field_2304
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1696] = stor8[arg1].field_2560
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1728] = stor8[arg1].field_2816
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1760] = stor8[arg1].field_3072
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1792] = ceil32(stor8[arg1].field_1 % 128) + 608
            mem[(2 * ceil32(stor8[arg1].field_1 % 128)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1984] = stor8[arg1].field_3328
            idx = 0
            s = ceil32(stor8[arg1].field_1 % 128) + 1312
            t = ceil32(mem[1248]) + mem[64] + 672
            while idx < stor8[arg1].field_3328:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1824] = ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + 640
            _4732 = mem[mem[1120]]
            mem[(2 * ceil32(stor8[arg1].field_1 % 128)) + (64 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 2016] = mem[mem[1120]]
            idx = 0
            s = mem[1120] + 32
            t = (2 * ceil32(stor8[arg1].field_1 % 128)) + (64 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 2048
            while idx < _4732:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1856] = bool(mem[1152])
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1888] = bool(mem[1184])
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1920] = bool(mem[1216])
            return memory
              from mem[64]
               len (2 * ceil32(stor8[arg1].field_1 % 128)) + (64 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + (32 * _4732) + -mem[64] + 2048
        mem[0] = sha3(arg1, 8) + 13
        mem[ceil32(stor8[arg1].field_1 % 128) + 1312] = address(stor8[arg1][13].field_0)
        idx = ceil32(stor8[arg1].field_1 % 128) + 1312
        s = 0
        while ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + 1280 > idx:
            mem[idx + 32] = address(stor8[arg1][s + 13].field_256)
            idx = idx + 32
            s = s + 1
            continue 
        mem[1088] = ceil32(stor8[arg1].field_1 % 128) + 1280
        mem[64] = ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1344
        mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + 1312] = stor8[arg1].field_3584
        if not stor8[arg1].field_3584:
            mem[1120] = ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + 1312
            mem[1152] = bool(uint8(stor8[arg1].field_3840))
            mem[1184] = bool(uint8(stor8[arg1].field_3848))
            mem[1216] = bool(uint8(stor8[arg1].field_3856))
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1344] = 32
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1376] = 576
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1952] = stor8[arg1].field_1 % 128
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1984 len ceil32(stor8[arg1].field_1 % 128)] = mem[1280 len ceil32(stor8[arg1].field_1 % 128)]
            if ceil32(stor8[arg1].field_1 % 128) > stor8[arg1].field_1 % 128:
                mem[stor8[arg1].field_1 % 128 + ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1984] = 0
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1408] = address(stor8[arg1].field_256)
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1440] = stor8[arg1].field_512
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1472] = stor8[arg1].field_768
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1504] = stor8[arg1].field_1024
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1536] = stor8[arg1].field_1280
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1568] = stor8[arg1].field_1536
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1600] = stor8[arg1].field_1792
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1632] = stor8[arg1].field_2048
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1664] = stor8[arg1].field_2304
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1696] = stor8[arg1].field_2560
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1728] = stor8[arg1].field_2816
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1760] = stor8[arg1].field_3072
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1792] = ceil32(stor8[arg1].field_1 % 128) + 608
                mem[(2 * ceil32(stor8[arg1].field_1 % 128)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1984] = stor8[arg1].field_3328
                idx = 0
                s = ceil32(stor8[arg1].field_1 % 128) + 1312
                t = (2 * ceil32(stor8[arg1].field_1 % 128)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 2016
                while idx < stor8[arg1].field_3328:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1824] = ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + 640
                _4735 = mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + 1312]
                mem[(2 * ceil32(stor8[arg1].field_1 % 128)) + (64 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 2016] = mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + 1312]
                idx = 0
                s = ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + 1344
                t = (2 * ceil32(stor8[arg1].field_1 % 128)) + (64 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 2048
                while idx < _4735:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1344 len 512], 
                       bool(uint8(stor8[arg1].field_3840)),
                       bool(uint8(stor8[arg1].field_3848)),
                       bool(uint8(stor8[arg1].field_3856)),
                       mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1952 len ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * _4735) + 96]
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1408] = address(stor8[arg1].field_256)
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1440] = stor8[arg1].field_512
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1472] = stor8[arg1].field_768
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1504] = stor8[arg1].field_1024
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1536] = stor8[arg1].field_1280
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1568] = stor8[arg1].field_1536
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1600] = stor8[arg1].field_1792
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1632] = stor8[arg1].field_2048
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1664] = stor8[arg1].field_2304
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1696] = stor8[arg1].field_2560
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1728] = stor8[arg1].field_2816
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1760] = stor8[arg1].field_3072
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1792] = ceil32(stor8[arg1].field_1 % 128) + 608
            mem[(2 * ceil32(stor8[arg1].field_1 % 128)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1984] = stor8[arg1].field_3328
            idx = 0
            s = ceil32(stor8[arg1].field_1 % 128) + 1312
            t = ceil32(mem[1248]) + mem[64] + 672
            while idx < stor8[arg1].field_3328:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1824] = ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + 640
            _4734 = mem[mem[1120]]
            mem[(2 * ceil32(stor8[arg1].field_1 % 128)) + (64 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 2016] = mem[mem[1120]]
            idx = 0
            s = mem[1120] + 32
            t = (2 * ceil32(stor8[arg1].field_1 % 128)) + (64 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 2048
            while idx < _4734:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1856] = bool(mem[1152])
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1888] = bool(mem[1184])
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1920] = bool(mem[1216])
            return memory
              from mem[64]
               len (2 * ceil32(stor8[arg1].field_1 % 128)) + (64 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + (32 * _4734) + -mem[64] + 2048
        mem[0] = sha3(arg1, 8) + 14
        mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + 1344] = address(stor8[arg1][14].field_0)
        idx = ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + 1344
        s = 0
        while ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1312 > idx:
            mem[idx + 32] = address(stor8[arg1][s + 14].field_256)
            idx = idx + 32
            s = s + 1
            continue 
        mem[1120] = ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + 1312
        mem[1152] = bool(uint8(stor8[arg1].field_3840))
        mem[1184] = bool(uint8(stor8[arg1].field_3848))
        mem[1216] = bool(uint8(stor8[arg1].field_3856))
        mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1344] = 32
        mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1376] = 576
        mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1952] = stor8[arg1].field_1 % 128
        mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1984 len ceil32(stor8[arg1].field_1 % 128)] = mem[1280 len ceil32(stor8[arg1].field_1 % 128)]
        var40001 = ceil32(stor8[arg1].field_1 % 128)
        if ceil32(stor8[arg1].field_1 % 128) > stor8[arg1].field_1 % 128:
            mem[stor8[arg1].field_1 % 128 + ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1984] = 0
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1408] = address(stor8[arg1].field_256)
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1440] = stor8[arg1].field_512
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1472] = stor8[arg1].field_768
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1504] = stor8[arg1].field_1024
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1536] = stor8[arg1].field_1280
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1568] = stor8[arg1].field_1536
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1600] = stor8[arg1].field_1792
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1632] = stor8[arg1].field_2048
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1664] = stor8[arg1].field_2304
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1696] = stor8[arg1].field_2560
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1728] = stor8[arg1].field_2816
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1760] = stor8[arg1].field_3072
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1792] = ceil32(stor8[arg1].field_1 % 128) + 608
            mem[(2 * ceil32(stor8[arg1].field_1 % 128)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1984] = stor8[arg1].field_3328
            idx = 0
            s = ceil32(stor8[arg1].field_1 % 128) + 1312
            t = (2 * ceil32(stor8[arg1].field_1 % 128)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 2016
            while idx < mem[ceil32(stor8[arg1].field_1 % 128) + 1280]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1824] = ceil32(stor8[arg1].field_1 % 128) + (32 * mem[ceil32(stor8[arg1].field_1 % 128) + 1280]) + 640
            _5881 = mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + 1312]
            mem[(2 * ceil32(stor8[arg1].field_1 % 128)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + (32 * mem[ceil32(stor8[arg1].field_1 % 128) + 1280]) + 2016] = mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + 1312]
            idx = 0
            s = ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + 1344
            t = (2 * ceil32(stor8[arg1].field_1 % 128)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + (32 * mem[ceil32(stor8[arg1].field_1 % 128) + 1280]) + 2048
            while idx < _5881:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1344 len 512], 
                   bool(uint8(stor8[arg1].field_3840)),
                   bool(uint8(stor8[arg1].field_3848)),
                   bool(uint8(stor8[arg1].field_3856)),
                   mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1952 len ceil32(stor8[arg1].field_1 % 128) + (32 * mem[ceil32(stor8[arg1].field_1 % 128) + 1280]) + (32 * _5881) + 96]
        mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1408] = address(stor8[arg1].field_256)
        mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1440] = stor8[arg1].field_512
        mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1472] = stor8[arg1].field_768
        mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1504] = stor8[arg1].field_1024
        mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1536] = stor8[arg1].field_1280
        mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1568] = stor8[arg1].field_1536
        mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1600] = stor8[arg1].field_1792
        mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1632] = stor8[arg1].field_2048
        mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1664] = stor8[arg1].field_2304
        mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1696] = stor8[arg1].field_2560
        mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1728] = stor8[arg1].field_2816
        mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1760] = stor8[arg1].field_3072
        mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1792] = ceil32(stor8[arg1].field_1 % 128) + 608
        mem[(2 * ceil32(stor8[arg1].field_1 % 128)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1984] = stor8[arg1].field_3328
        idx = 0
        s = ceil32(stor8[arg1].field_1 % 128) + 1312
        t = ceil32(mem[1248]) + mem[64] + 672
        while idx < stor8[arg1].field_3328:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1824] = ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + 640
        _5880 = mem[mem[1120]]
        mem[(2 * ceil32(stor8[arg1].field_1 % 128)) + (64 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 2016] = mem[mem[1120]]
        idx = 0
        s = mem[1120] + 32
        t = (2 * ceil32(stor8[arg1].field_1 % 128)) + (64 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 2048
        while idx < _5880:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1856] = bool(mem[1152])
        mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1888] = bool(mem[1184])
        mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1920] = bool(mem[1216])
        return memory
          from mem[64]
           len (2 * ceil32(stor8[arg1].field_1 % 128)) + (64 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + (32 * _5880) + -mem[64] + 2048
    if bool(stor8[arg1].field_0) == stor8[arg1].field_1 % 128 < 32:
        revert with 0, 34
    if not stor8[arg1].field_1 % 128:
        mem[672] = 1248
        mem[704] = address(stor8[arg1].field_256)
        mem[736] = stor8[arg1].field_512
        mem[768] = stor8[arg1].field_768
        mem[800] = stor8[arg1].field_1024
        mem[832] = stor8[arg1].field_1280
        mem[864] = stor8[arg1].field_1536
        mem[896] = stor8[arg1].field_1792
        mem[928] = stor8[arg1].field_2048
        mem[960] = stor8[arg1].field_2304
        mem[992] = stor8[arg1].field_2560
        mem[1024] = stor8[arg1].field_2816
        mem[1056] = stor8[arg1].field_3072
        mem[ceil32(stor8[arg1].field_1 % 128) + 1280] = stor8[arg1].field_3328
        if not stor8[arg1].field_3328:
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + 1312] = stor8[arg1].field_3584
            if not stor8[arg1].field_3584:
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1344] = 32
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1376] = 576
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1952] = stor8[arg1].field_1 % 128
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1984 len ceil32(stor8[arg1].field_1 % 128)] = mem[1280 len ceil32(stor8[arg1].field_1 % 128)]
                if ceil32(stor8[arg1].field_1 % 128) <= stor8[arg1].field_1 % 128:
                    mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1408] = address(stor8[arg1].field_256)
                    mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1440] = stor8[arg1].field_512
                    mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1472] = stor8[arg1].field_768
                    mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1504] = stor8[arg1].field_1024
                    mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1536] = stor8[arg1].field_1280
                    mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1568] = stor8[arg1].field_1536
                    mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1600] = stor8[arg1].field_1792
                    mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1632] = stor8[arg1].field_2048
                    mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1664] = stor8[arg1].field_2304
                    mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1696] = stor8[arg1].field_2560
                    mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1728] = stor8[arg1].field_2816
                    mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1760] = stor8[arg1].field_3072
                    mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1792] = ceil32(stor8[arg1].field_1 % 128) + 608
                    mem[(2 * ceil32(stor8[arg1].field_1 % 128)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1984] = stor8[arg1].field_3328
                    idx = 0
                    s = ceil32(stor8[arg1].field_1 % 128) + 1312
                    t = (2 * ceil32(stor8[arg1].field_1 % 128)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 2016
                    while idx < stor8[arg1].field_3328:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1824] = ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + 640
                    _1302 = mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + 1312]
                    mem[(2 * ceil32(stor8[arg1].field_1 % 128)) + (64 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 2016] = mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + 1312]
                    idx = 0
                    s = ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + 1344
                    t = (2 * ceil32(stor8[arg1].field_1 % 128)) + (64 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 2048
                    while idx < _1302:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    return mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1344 len 512], 
                           bool(uint8(stor8[arg1].field_3840)),
                           bool(uint8(stor8[arg1].field_3848)),
                           bool(uint8(stor8[arg1].field_3856)),
                           mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1952 len ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * _1302) + 96]
                mem[stor8[arg1].field_1 % 128 + ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1984] = 0
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1408] = address(stor8[arg1].field_256)
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1440] = stor8[arg1].field_512
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1472] = stor8[arg1].field_768
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1504] = stor8[arg1].field_1024
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1536] = stor8[arg1].field_1280
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1568] = stor8[arg1].field_1536
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1600] = stor8[arg1].field_1792
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1632] = stor8[arg1].field_2048
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1664] = stor8[arg1].field_2304
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1696] = stor8[arg1].field_2560
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1728] = stor8[arg1].field_2816
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1760] = stor8[arg1].field_3072
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1792] = ceil32(stor8[arg1].field_1 % 128) + 608
                mem[(2 * ceil32(stor8[arg1].field_1 % 128)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1984] = stor8[arg1].field_3328
                idx = 0
                s = ceil32(stor8[arg1].field_1 % 128) + 1312
                t = (2 * ceil32(stor8[arg1].field_1 % 128)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 2016
                while idx < stor8[arg1].field_3328:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1824] = ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + 640
                _1303 = mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + 1312]
                mem[(2 * ceil32(stor8[arg1].field_1 % 128)) + (64 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 2016] = mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + 1312]
                idx = 0
                s = ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + 1344
                t = (2 * ceil32(stor8[arg1].field_1 % 128)) + (64 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 2048
                while idx < _1303:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1344 len 512], 
                       bool(uint8(stor8[arg1].field_3840)),
                       bool(uint8(stor8[arg1].field_3848)),
                       bool(uint8(stor8[arg1].field_3856)),
                       mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1952 len ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * _1303) + 96]
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + 1344] = address(stor8[arg1][14].field_0)
            idx = ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + 1344
            s = 0
            while ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1312 > idx:
                mem[idx + 32] = address(stor8[arg1][s + 14].field_256)
                idx = idx + 32
                s = s + 1
                continue 
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1344] = 32
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1376] = 576
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1952] = stor8[arg1].field_1 % 128
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1984 len ceil32(stor8[arg1].field_1 % 128)] = mem[1280 len ceil32(stor8[arg1].field_1 % 128)]
            if ceil32(stor8[arg1].field_1 % 128) <= stor8[arg1].field_1 % 128:
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1408] = address(stor8[arg1].field_256)
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1440] = stor8[arg1].field_512
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1472] = stor8[arg1].field_768
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1504] = stor8[arg1].field_1024
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1536] = stor8[arg1].field_1280
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1568] = stor8[arg1].field_1536
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1600] = stor8[arg1].field_1792
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1632] = stor8[arg1].field_2048
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1664] = stor8[arg1].field_2304
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1696] = stor8[arg1].field_2560
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1728] = stor8[arg1].field_2816
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1760] = stor8[arg1].field_3072
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1792] = ceil32(stor8[arg1].field_1 % 128) + 608
                mem[(2 * ceil32(stor8[arg1].field_1 % 128)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1984] = stor8[arg1].field_3328
                idx = 0
                s = ceil32(stor8[arg1].field_1 % 128) + 1312
                t = (2 * ceil32(stor8[arg1].field_1 % 128)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 2016
                while idx < mem[ceil32(stor8[arg1].field_1 % 128) + 1280]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1824] = ceil32(stor8[arg1].field_1 % 128) + (32 * mem[ceil32(stor8[arg1].field_1 % 128) + 1280]) + 640
                _3690 = mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + 1312]
                mem[(2 * ceil32(stor8[arg1].field_1 % 128)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + (32 * mem[ceil32(stor8[arg1].field_1 % 128) + 1280]) + 2016] = mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + 1312]
                idx = 0
                s = ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + 1344
                t = (2 * ceil32(stor8[arg1].field_1 % 128)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + (32 * mem[ceil32(stor8[arg1].field_1 % 128) + 1280]) + 2048
                while idx < _3690:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1344 len 512], 
                       bool(uint8(stor8[arg1].field_3840)),
                       bool(uint8(stor8[arg1].field_3848)),
                       bool(uint8(stor8[arg1].field_3856)),
                       mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1952 len ceil32(stor8[arg1].field_1 % 128) + (32 * mem[ceil32(stor8[arg1].field_1 % 128) + 1280]) + (32 * _3690) + 96]
            mem[stor8[arg1].field_1 % 128 + ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1984] = 0
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1408] = address(stor8[arg1].field_256)
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1440] = stor8[arg1].field_512
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1472] = stor8[arg1].field_768
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1504] = stor8[arg1].field_1024
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1536] = stor8[arg1].field_1280
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1568] = stor8[arg1].field_1536
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1600] = stor8[arg1].field_1792
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1632] = stor8[arg1].field_2048
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1664] = stor8[arg1].field_2304
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1696] = stor8[arg1].field_2560
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1728] = stor8[arg1].field_2816
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1760] = stor8[arg1].field_3072
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1792] = ceil32(stor8[arg1].field_1 % 128) + 608
            mem[(2 * ceil32(stor8[arg1].field_1 % 128)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1984] = stor8[arg1].field_3328
            idx = 0
            s = ceil32(stor8[arg1].field_1 % 128) + 1312
            t = (2 * ceil32(stor8[arg1].field_1 % 128)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 2016
            while idx < mem[ceil32(stor8[arg1].field_1 % 128) + 1280]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1824] = ceil32(stor8[arg1].field_1 % 128) + (32 * mem[ceil32(stor8[arg1].field_1 % 128) + 1280]) + 640
            _3691 = mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + 1312]
            mem[(2 * ceil32(stor8[arg1].field_1 % 128)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + (32 * mem[ceil32(stor8[arg1].field_1 % 128) + 1280]) + 2016] = mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + 1312]
            idx = 0
            s = ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + 1344
            t = (2 * ceil32(stor8[arg1].field_1 % 128)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + (32 * mem[ceil32(stor8[arg1].field_1 % 128) + 1280]) + 2048
            while idx < _3691:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1344 len 512], 
                   bool(uint8(stor8[arg1].field_3840)),
                   bool(uint8(stor8[arg1].field_3848)),
                   bool(uint8(stor8[arg1].field_3856)),
                   mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1952 len ceil32(stor8[arg1].field_1 % 128) + (32 * mem[ceil32(stor8[arg1].field_1 % 128) + 1280]) + (32 * _3691) + 96]
        mem[ceil32(stor8[arg1].field_1 % 128) + 1312] = address(stor8[arg1][13].field_0)
        idx = ceil32(stor8[arg1].field_1 % 128) + 1312
        s = 0
        while ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + 1280 > idx:
            mem[idx + 32] = address(stor8[arg1][s + 13].field_256)
            idx = idx + 32
            s = s + 1
            continue 
        mem[1088] = ceil32(stor8[arg1].field_1 % 128) + 1280
        mem[64] = ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1344
        mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + 1312] = stor8[arg1].field_3584
        if not stor8[arg1].field_3584:
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1344] = 32
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1376] = 576
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1952] = stor8[arg1].field_1 % 128
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1984 len ceil32(stor8[arg1].field_1 % 128)] = mem[1280 len ceil32(stor8[arg1].field_1 % 128)]
            if ceil32(stor8[arg1].field_1 % 128) <= stor8[arg1].field_1 % 128:
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1408] = address(stor8[arg1].field_256)
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1440] = stor8[arg1].field_512
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1472] = stor8[arg1].field_768
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1504] = stor8[arg1].field_1024
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1536] = stor8[arg1].field_1280
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1568] = stor8[arg1].field_1536
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1600] = stor8[arg1].field_1792
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1632] = stor8[arg1].field_2048
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1664] = stor8[arg1].field_2304
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1696] = stor8[arg1].field_2560
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1728] = stor8[arg1].field_2816
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1760] = stor8[arg1].field_3072
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1792] = ceil32(stor8[arg1].field_1 % 128) + 608
                mem[(2 * ceil32(stor8[arg1].field_1 % 128)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1984] = stor8[arg1].field_3328
                idx = 0
                s = ceil32(stor8[arg1].field_1 % 128) + 1312
                t = (2 * ceil32(stor8[arg1].field_1 % 128)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 2016
                while idx < mem[ceil32(stor8[arg1].field_1 % 128) + 1280]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1824] = ceil32(stor8[arg1].field_1 % 128) + (32 * mem[ceil32(stor8[arg1].field_1 % 128) + 1280]) + 640
                _3692 = mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + 1312]
                mem[(2 * ceil32(stor8[arg1].field_1 % 128)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + (32 * mem[ceil32(stor8[arg1].field_1 % 128) + 1280]) + 2016] = mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + 1312]
                idx = 0
                s = ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + 1344
                t = (2 * ceil32(stor8[arg1].field_1 % 128)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + (32 * mem[ceil32(stor8[arg1].field_1 % 128) + 1280]) + 2048
                while idx < _3692:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1344 len 512], 
                       bool(uint8(stor8[arg1].field_3840)),
                       bool(uint8(stor8[arg1].field_3848)),
                       bool(uint8(stor8[arg1].field_3856)),
                       mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1952 len ceil32(stor8[arg1].field_1 % 128) + (32 * mem[ceil32(stor8[arg1].field_1 % 128) + 1280]) + (32 * _3692) + 96]
            mem[stor8[arg1].field_1 % 128 + ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1984] = 0
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1408] = address(stor8[arg1].field_256)
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1440] = stor8[arg1].field_512
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1472] = stor8[arg1].field_768
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1504] = stor8[arg1].field_1024
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1536] = stor8[arg1].field_1280
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1568] = stor8[arg1].field_1536
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1600] = stor8[arg1].field_1792
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1632] = stor8[arg1].field_2048
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1664] = stor8[arg1].field_2304
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1696] = stor8[arg1].field_2560
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1728] = stor8[arg1].field_2816
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1760] = stor8[arg1].field_3072
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1792] = ceil32(stor8[arg1].field_1 % 128) + 608
            mem[(2 * ceil32(stor8[arg1].field_1 % 128)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1984] = stor8[arg1].field_3328
            idx = 0
            s = ceil32(stor8[arg1].field_1 % 128) + 1312
            t = (2 * ceil32(stor8[arg1].field_1 % 128)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 2016
            while idx < mem[ceil32(stor8[arg1].field_1 % 128) + 1280]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1824] = ceil32(stor8[arg1].field_1 % 128) + (32 * mem[ceil32(stor8[arg1].field_1 % 128) + 1280]) + 640
            _3693 = mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + 1312]
            mem[(2 * ceil32(stor8[arg1].field_1 % 128)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + (32 * mem[ceil32(stor8[arg1].field_1 % 128) + 1280]) + 2016] = mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + 1312]
            idx = 0
            s = ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + 1344
            t = (2 * ceil32(stor8[arg1].field_1 % 128)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + (32 * mem[ceil32(stor8[arg1].field_1 % 128) + 1280]) + 2048
            while idx < _3693:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1344 len 512], 
                   bool(uint8(stor8[arg1].field_3840)),
                   bool(uint8(stor8[arg1].field_3848)),
                   bool(uint8(stor8[arg1].field_3856)),
                   mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1952 len ceil32(stor8[arg1].field_1 % 128) + (32 * mem[ceil32(stor8[arg1].field_1 % 128) + 1280]) + (32 * _3693) + 96]
        mem[0] = sha3(arg1, 8) + 14
        mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + 1344] = address(stor8[arg1][14].field_0)
        idx = ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + 1344
        s = 0
        while ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1312 > idx:
            mem[idx + 32] = address(stor8[arg1][s + 14].field_256)
            idx = idx + 32
            s = s + 1
            continue 
        mem[1120] = ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + 1312
        mem[1152] = bool(uint8(stor8[arg1].field_3840))
        mem[1184] = bool(uint8(stor8[arg1].field_3848))
        mem[1216] = bool(uint8(stor8[arg1].field_3856))
        mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1344] = 32
        mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1376] = 576
        mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1952] = stor8[arg1].field_1 % 128
        mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1984 len ceil32(stor8[arg1].field_1 % 128)] = mem[1280 len ceil32(stor8[arg1].field_1 % 128)]
        if ceil32(stor8[arg1].field_1 % 128) > stor8[arg1].field_1 % 128:
            mem[stor8[arg1].field_1 % 128 + ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1984] = 0
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1408] = address(stor8[arg1].field_256)
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1440] = stor8[arg1].field_512
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1472] = stor8[arg1].field_768
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1504] = stor8[arg1].field_1024
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1536] = stor8[arg1].field_1280
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1568] = stor8[arg1].field_1536
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1600] = stor8[arg1].field_1792
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1632] = stor8[arg1].field_2048
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1664] = stor8[arg1].field_2304
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1696] = stor8[arg1].field_2560
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1728] = stor8[arg1].field_2816
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1760] = stor8[arg1].field_3072
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1792] = ceil32(stor8[arg1].field_1 % 128) + 608
            mem[(2 * ceil32(stor8[arg1].field_1 % 128)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1984] = stor8[arg1].field_3328
            idx = 0
            s = ceil32(stor8[arg1].field_1 % 128) + 1312
            t = (2 * ceil32(stor8[arg1].field_1 % 128)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 2016
            while idx < mem[ceil32(stor8[arg1].field_1 % 128) + 1280]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1824] = ceil32(stor8[arg1].field_1 % 128) + (32 * mem[ceil32(stor8[arg1].field_1 % 128) + 1280]) + 640
            _5523 = mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + 1312]
            mem[(2 * ceil32(stor8[arg1].field_1 % 128)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + (32 * mem[ceil32(stor8[arg1].field_1 % 128) + 1280]) + 2016] = mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + 1312]
            idx = 0
            s = ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + 1344
            t = (2 * ceil32(stor8[arg1].field_1 % 128)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + (32 * mem[ceil32(stor8[arg1].field_1 % 128) + 1280]) + 2048
            while idx < _5523:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1344 len 512], 
                   bool(uint8(stor8[arg1].field_3840)),
                   bool(uint8(stor8[arg1].field_3848)),
                   bool(uint8(stor8[arg1].field_3856)),
                   mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1952 len ceil32(stor8[arg1].field_1 % 128) + (32 * mem[ceil32(stor8[arg1].field_1 % 128) + 1280]) + (32 * _5523) + 96]
        mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1408] = address(stor8[arg1].field_256)
        mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1440] = stor8[arg1].field_512
        mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1472] = stor8[arg1].field_768
        mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1504] = stor8[arg1].field_1024
        mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1536] = stor8[arg1].field_1280
        mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1568] = stor8[arg1].field_1536
        mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1600] = stor8[arg1].field_1792
        mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1632] = stor8[arg1].field_2048
        mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1664] = stor8[arg1].field_2304
        mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1696] = stor8[arg1].field_2560
        mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1728] = stor8[arg1].field_2816
        mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1760] = stor8[arg1].field_3072
        mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1792] = ceil32(stor8[arg1].field_1 % 128) + 608
        mem[(2 * ceil32(stor8[arg1].field_1 % 128)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1984] = stor8[arg1].field_3328
        idx = 0
        s = ceil32(stor8[arg1].field_1 % 128) + 1312
        t = ceil32(mem[1248]) + mem[64] + 672
        while idx < stor8[arg1].field_3328:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1824] = ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + 640
        _5522 = mem[mem[1120]]
        mem[(2 * ceil32(stor8[arg1].field_1 % 128)) + (64 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 2016] = mem[mem[1120]]
        idx = 0
        s = mem[1120] + 32
        t = (2 * ceil32(stor8[arg1].field_1 % 128)) + (64 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 2048
        while idx < _5522:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1856] = bool(mem[1152])
        mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1888] = bool(mem[1184])
        mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1920] = bool(mem[1216])
        return memory
          from mem[64]
           len (2 * ceil32(stor8[arg1].field_1 % 128)) + (64 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + (32 * _5522) + -mem[64] + 2048
    if 31 >= stor8[arg1].field_1 % 128:
        mem[1280] = 256 * Mask(248, 0, stor8[arg1].field_8)
        mem[672] = 1248
        mem[704] = address(stor8[arg1].field_256)
        mem[736] = stor8[arg1].field_512
        mem[768] = stor8[arg1].field_768
        mem[800] = stor8[arg1].field_1024
        mem[832] = stor8[arg1].field_1280
        mem[864] = stor8[arg1].field_1536
        mem[896] = stor8[arg1].field_1792
        mem[928] = stor8[arg1].field_2048
        mem[960] = stor8[arg1].field_2304
        mem[992] = stor8[arg1].field_2560
        mem[1024] = stor8[arg1].field_2816
        mem[1056] = stor8[arg1].field_3072
        mem[ceil32(stor8[arg1].field_1 % 128) + 1280] = stor8[arg1].field_3328
        if not stor8[arg1].field_3328:
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + 1312] = stor8[arg1].field_3584
            if not stor8[arg1].field_3584:
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1344] = 32
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1376] = 576
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1952] = stor8[arg1].field_1 % 128
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1984 len ceil32(stor8[arg1].field_1 % 128)] = mem[1280 len ceil32(stor8[arg1].field_1 % 128)]
                if ceil32(stor8[arg1].field_1 % 128) <= stor8[arg1].field_1 % 128:
                    mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1408] = address(stor8[arg1].field_256)
                    mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1440] = stor8[arg1].field_512
                    mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1472] = stor8[arg1].field_768
                    mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1504] = stor8[arg1].field_1024
                    mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1536] = stor8[arg1].field_1280
                    mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1568] = stor8[arg1].field_1536
                    mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1600] = stor8[arg1].field_1792
                    mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1632] = stor8[arg1].field_2048
                    mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1664] = stor8[arg1].field_2304
                    mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1696] = stor8[arg1].field_2560
                    mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1728] = stor8[arg1].field_2816
                    mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1760] = stor8[arg1].field_3072
                    mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1792] = ceil32(stor8[arg1].field_1 % 128) + 608
                    mem[(2 * ceil32(stor8[arg1].field_1 % 128)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1984] = stor8[arg1].field_3328
                    idx = 0
                    s = ceil32(stor8[arg1].field_1 % 128) + 1312
                    t = (2 * ceil32(stor8[arg1].field_1 % 128)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 2016
                    while idx < stor8[arg1].field_3328:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1824] = ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + 640
                    _1306 = mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + 1312]
                    mem[(2 * ceil32(stor8[arg1].field_1 % 128)) + (64 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 2016] = mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + 1312]
                    idx = 0
                    s = ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + 1344
                    t = (2 * ceil32(stor8[arg1].field_1 % 128)) + (64 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 2048
                    while idx < _1306:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    return mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1344 len 512], 
                           bool(uint8(stor8[arg1].field_3840)),
                           bool(uint8(stor8[arg1].field_3848)),
                           bool(uint8(stor8[arg1].field_3856)),
                           mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1952 len ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * _1306) + 96]
                mem[stor8[arg1].field_1 % 128 + ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1984] = 0
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1408] = address(stor8[arg1].field_256)
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1440] = stor8[arg1].field_512
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1472] = stor8[arg1].field_768
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1504] = stor8[arg1].field_1024
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1536] = stor8[arg1].field_1280
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1568] = stor8[arg1].field_1536
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1600] = stor8[arg1].field_1792
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1632] = stor8[arg1].field_2048
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1664] = stor8[arg1].field_2304
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1696] = stor8[arg1].field_2560
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1728] = stor8[arg1].field_2816
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1760] = stor8[arg1].field_3072
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1792] = ceil32(stor8[arg1].field_1 % 128) + 608
                mem[(2 * ceil32(stor8[arg1].field_1 % 128)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1984] = stor8[arg1].field_3328
                idx = 0
                s = ceil32(stor8[arg1].field_1 % 128) + 1312
                t = (2 * ceil32(stor8[arg1].field_1 % 128)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 2016
                while idx < stor8[arg1].field_3328:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1824] = ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + 640
                _1307 = mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + 1312]
                mem[(2 * ceil32(stor8[arg1].field_1 % 128)) + (64 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 2016] = mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + 1312]
                idx = 0
                s = ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + 1344
                t = (2 * ceil32(stor8[arg1].field_1 % 128)) + (64 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 2048
                while idx < _1307:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1344 len 512], 
                       bool(uint8(stor8[arg1].field_3840)),
                       bool(uint8(stor8[arg1].field_3848)),
                       bool(uint8(stor8[arg1].field_3856)),
                       mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1952 len ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * _1307) + 96]
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + 1344] = address(stor8[arg1][14].field_0)
            idx = ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + 1344
            s = 0
            while ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1312 > idx:
                mem[idx + 32] = address(stor8[arg1][s + 14].field_256)
                idx = idx + 32
                s = s + 1
                continue 
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1344] = 32
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1376] = 576
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1952] = stor8[arg1].field_1 % 128
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1984 len ceil32(stor8[arg1].field_1 % 128)] = mem[1280 len ceil32(stor8[arg1].field_1 % 128)]
            if ceil32(stor8[arg1].field_1 % 128) <= stor8[arg1].field_1 % 128:
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1408] = address(stor8[arg1].field_256)
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1440] = stor8[arg1].field_512
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1472] = stor8[arg1].field_768
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1504] = stor8[arg1].field_1024
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1536] = stor8[arg1].field_1280
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1568] = stor8[arg1].field_1536
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1600] = stor8[arg1].field_1792
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1632] = stor8[arg1].field_2048
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1664] = stor8[arg1].field_2304
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1696] = stor8[arg1].field_2560
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1728] = stor8[arg1].field_2816
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1760] = stor8[arg1].field_3072
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1792] = ceil32(stor8[arg1].field_1 % 128) + 608
                mem[(2 * ceil32(stor8[arg1].field_1 % 128)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1984] = stor8[arg1].field_3328
                idx = 0
                s = ceil32(stor8[arg1].field_1 % 128) + 1312
                t = (2 * ceil32(stor8[arg1].field_1 % 128)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 2016
                while idx < mem[ceil32(stor8[arg1].field_1 % 128) + 1280]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1824] = ceil32(stor8[arg1].field_1 % 128) + (32 * mem[ceil32(stor8[arg1].field_1 % 128) + 1280]) + 640
                _3697 = mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + 1312]
                mem[(2 * ceil32(stor8[arg1].field_1 % 128)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + (32 * mem[ceil32(stor8[arg1].field_1 % 128) + 1280]) + 2016] = mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + 1312]
                idx = 0
                s = ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + 1344
                t = (2 * ceil32(stor8[arg1].field_1 % 128)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + (32 * mem[ceil32(stor8[arg1].field_1 % 128) + 1280]) + 2048
                while idx < _3697:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1344 len 512], 
                       bool(uint8(stor8[arg1].field_3840)),
                       bool(uint8(stor8[arg1].field_3848)),
                       bool(uint8(stor8[arg1].field_3856)),
                       mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1952 len ceil32(stor8[arg1].field_1 % 128) + (32 * mem[ceil32(stor8[arg1].field_1 % 128) + 1280]) + (32 * _3697) + 96]
            mem[stor8[arg1].field_1 % 128 + ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1984] = 0
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1408] = address(stor8[arg1].field_256)
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1440] = stor8[arg1].field_512
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1472] = stor8[arg1].field_768
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1504] = stor8[arg1].field_1024
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1536] = stor8[arg1].field_1280
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1568] = stor8[arg1].field_1536
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1600] = stor8[arg1].field_1792
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1632] = stor8[arg1].field_2048
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1664] = stor8[arg1].field_2304
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1696] = stor8[arg1].field_2560
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1728] = stor8[arg1].field_2816
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1760] = stor8[arg1].field_3072
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1792] = ceil32(stor8[arg1].field_1 % 128) + 608
            mem[(2 * ceil32(stor8[arg1].field_1 % 128)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1984] = stor8[arg1].field_3328
            idx = 0
            s = ceil32(stor8[arg1].field_1 % 128) + 1312
            t = (2 * ceil32(stor8[arg1].field_1 % 128)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 2016
            while idx < mem[ceil32(stor8[arg1].field_1 % 128) + 1280]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1824] = ceil32(stor8[arg1].field_1 % 128) + (32 * mem[ceil32(stor8[arg1].field_1 % 128) + 1280]) + 640
            _3698 = mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + 1312]
            mem[(2 * ceil32(stor8[arg1].field_1 % 128)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + (32 * mem[ceil32(stor8[arg1].field_1 % 128) + 1280]) + 2016] = mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + 1312]
            idx = 0
            s = ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + 1344
            t = (2 * ceil32(stor8[arg1].field_1 % 128)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + (32 * mem[ceil32(stor8[arg1].field_1 % 128) + 1280]) + 2048
            while idx < _3698:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1344 len 512], 
                   bool(uint8(stor8[arg1].field_3840)),
                   bool(uint8(stor8[arg1].field_3848)),
                   bool(uint8(stor8[arg1].field_3856)),
                   mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1952 len ceil32(stor8[arg1].field_1 % 128) + (32 * mem[ceil32(stor8[arg1].field_1 % 128) + 1280]) + (32 * _3698) + 96]
        mem[ceil32(stor8[arg1].field_1 % 128) + 1312] = address(stor8[arg1][13].field_0)
        idx = ceil32(stor8[arg1].field_1 % 128) + 1312
        s = 0
        while ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + 1280 > idx:
            mem[idx + 32] = address(stor8[arg1][s + 13].field_256)
            idx = idx + 32
            s = s + 1
            continue 
        mem[1088] = ceil32(stor8[arg1].field_1 % 128) + 1280
        mem[64] = ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1344
        mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + 1312] = stor8[arg1].field_3584
        if not stor8[arg1].field_3584:
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1344] = 32
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1376] = 576
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1952] = stor8[arg1].field_1 % 128
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1984 len ceil32(stor8[arg1].field_1 % 128)] = mem[1280 len ceil32(stor8[arg1].field_1 % 128)]
            if ceil32(stor8[arg1].field_1 % 128) <= stor8[arg1].field_1 % 128:
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1408] = address(stor8[arg1].field_256)
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1440] = stor8[arg1].field_512
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1472] = stor8[arg1].field_768
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1504] = stor8[arg1].field_1024
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1536] = stor8[arg1].field_1280
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1568] = stor8[arg1].field_1536
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1600] = stor8[arg1].field_1792
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1632] = stor8[arg1].field_2048
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1664] = stor8[arg1].field_2304
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1696] = stor8[arg1].field_2560
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1728] = stor8[arg1].field_2816
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1760] = stor8[arg1].field_3072
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1792] = ceil32(stor8[arg1].field_1 % 128) + 608
                mem[(2 * ceil32(stor8[arg1].field_1 % 128)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1984] = stor8[arg1].field_3328
                idx = 0
                s = ceil32(stor8[arg1].field_1 % 128) + 1312
                t = (2 * ceil32(stor8[arg1].field_1 % 128)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 2016
                while idx < mem[ceil32(stor8[arg1].field_1 % 128) + 1280]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1824] = ceil32(stor8[arg1].field_1 % 128) + (32 * mem[ceil32(stor8[arg1].field_1 % 128) + 1280]) + 640
                _3699 = mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + 1312]
                mem[(2 * ceil32(stor8[arg1].field_1 % 128)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + (32 * mem[ceil32(stor8[arg1].field_1 % 128) + 1280]) + 2016] = mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + 1312]
                idx = 0
                s = ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + 1344
                t = (2 * ceil32(stor8[arg1].field_1 % 128)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + (32 * mem[ceil32(stor8[arg1].field_1 % 128) + 1280]) + 2048
                while idx < _3699:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1344 len 512], 
                       bool(uint8(stor8[arg1].field_3840)),
                       bool(uint8(stor8[arg1].field_3848)),
                       bool(uint8(stor8[arg1].field_3856)),
                       mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1952 len ceil32(stor8[arg1].field_1 % 128) + (32 * mem[ceil32(stor8[arg1].field_1 % 128) + 1280]) + (32 * _3699) + 96]
            mem[stor8[arg1].field_1 % 128 + ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1984] = 0
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1408] = address(stor8[arg1].field_256)
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1440] = stor8[arg1].field_512
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1472] = stor8[arg1].field_768
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1504] = stor8[arg1].field_1024
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1536] = stor8[arg1].field_1280
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1568] = stor8[arg1].field_1536
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1600] = stor8[arg1].field_1792
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1632] = stor8[arg1].field_2048
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1664] = stor8[arg1].field_2304
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1696] = stor8[arg1].field_2560
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1728] = stor8[arg1].field_2816
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1760] = stor8[arg1].field_3072
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1792] = ceil32(stor8[arg1].field_1 % 128) + 608
            mem[(2 * ceil32(stor8[arg1].field_1 % 128)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1984] = stor8[arg1].field_3328
            idx = 0
            s = ceil32(stor8[arg1].field_1 % 128) + 1312
            t = (2 * ceil32(stor8[arg1].field_1 % 128)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 2016
            while idx < mem[ceil32(stor8[arg1].field_1 % 128) + 1280]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1824] = ceil32(stor8[arg1].field_1 % 128) + (32 * mem[ceil32(stor8[arg1].field_1 % 128) + 1280]) + 640
            _3700 = mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + 1312]
            mem[(2 * ceil32(stor8[arg1].field_1 % 128)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + (32 * mem[ceil32(stor8[arg1].field_1 % 128) + 1280]) + 2016] = mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + 1312]
            idx = 0
            s = ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + 1344
            t = (2 * ceil32(stor8[arg1].field_1 % 128)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + (32 * mem[ceil32(stor8[arg1].field_1 % 128) + 1280]) + 2048
            while idx < _3700:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1344 len 512], 
                   bool(uint8(stor8[arg1].field_3840)),
                   bool(uint8(stor8[arg1].field_3848)),
                   bool(uint8(stor8[arg1].field_3856)),
                   mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1952 len ceil32(stor8[arg1].field_1 % 128) + (32 * mem[ceil32(stor8[arg1].field_1 % 128) + 1280]) + (32 * _3700) + 96]
        mem[0] = sha3(arg1, 8) + 14
        mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + 1344] = address(stor8[arg1][14].field_0)
        idx = ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + 1344
        s = 0
        while ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1312 > idx:
            mem[idx + 32] = address(stor8[arg1][s + 14].field_256)
            idx = idx + 32
            s = s + 1
            continue 
        mem[1120] = ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + 1312
        mem[1152] = bool(uint8(stor8[arg1].field_3840))
        mem[1184] = bool(uint8(stor8[arg1].field_3848))
        mem[1216] = bool(uint8(stor8[arg1].field_3856))
        mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1344] = 32
        mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1376] = 576
        mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1952] = stor8[arg1].field_1 % 128
        mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1984 len ceil32(stor8[arg1].field_1 % 128)] = mem[1280 len ceil32(stor8[arg1].field_1 % 128)]
        if ceil32(stor8[arg1].field_1 % 128) > stor8[arg1].field_1 % 128:
            mem[stor8[arg1].field_1 % 128 + ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1984] = 0
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1408] = address(stor8[arg1].field_256)
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1440] = stor8[arg1].field_512
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1472] = stor8[arg1].field_768
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1504] = stor8[arg1].field_1024
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1536] = stor8[arg1].field_1280
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1568] = stor8[arg1].field_1536
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1600] = stor8[arg1].field_1792
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1632] = stor8[arg1].field_2048
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1664] = stor8[arg1].field_2304
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1696] = stor8[arg1].field_2560
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1728] = stor8[arg1].field_2816
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1760] = stor8[arg1].field_3072
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1792] = ceil32(stor8[arg1].field_1 % 128) + 608
            mem[(2 * ceil32(stor8[arg1].field_1 % 128)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1984] = stor8[arg1].field_3328
            idx = 0
            s = ceil32(stor8[arg1].field_1 % 128) + 1312
            t = (2 * ceil32(stor8[arg1].field_1 % 128)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 2016
            while idx < mem[ceil32(stor8[arg1].field_1 % 128) + 1280]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1824] = ceil32(stor8[arg1].field_1 % 128) + (32 * mem[ceil32(stor8[arg1].field_1 % 128) + 1280]) + 640
            _5529 = mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + 1312]
            mem[(2 * ceil32(stor8[arg1].field_1 % 128)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + (32 * mem[ceil32(stor8[arg1].field_1 % 128) + 1280]) + 2016] = mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + 1312]
            idx = 0
            s = ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + 1344
            t = (2 * ceil32(stor8[arg1].field_1 % 128)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + (32 * mem[ceil32(stor8[arg1].field_1 % 128) + 1280]) + 2048
            while idx < _5529:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1344 len 512], 
                   bool(uint8(stor8[arg1].field_3840)),
                   bool(uint8(stor8[arg1].field_3848)),
                   bool(uint8(stor8[arg1].field_3856)),
                   mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1952 len ceil32(stor8[arg1].field_1 % 128) + (32 * mem[ceil32(stor8[arg1].field_1 % 128) + 1280]) + (32 * _5529) + 96]
        mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1408] = address(stor8[arg1].field_256)
        mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1440] = stor8[arg1].field_512
        mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1472] = stor8[arg1].field_768
        mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1504] = stor8[arg1].field_1024
        mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1536] = stor8[arg1].field_1280
        mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1568] = stor8[arg1].field_1536
        mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1600] = stor8[arg1].field_1792
        mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1632] = stor8[arg1].field_2048
        mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1664] = stor8[arg1].field_2304
        mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1696] = stor8[arg1].field_2560
        mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1728] = stor8[arg1].field_2816
        mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1760] = stor8[arg1].field_3072
        mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1792] = ceil32(stor8[arg1].field_1 % 128) + 608
        mem[(2 * ceil32(stor8[arg1].field_1 % 128)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1984] = stor8[arg1].field_3328
        idx = 0
        s = ceil32(stor8[arg1].field_1 % 128) + 1312
        t = ceil32(mem[1248]) + mem[64] + 672
        while idx < stor8[arg1].field_3328:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1824] = ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + 640
        _5528 = mem[mem[1120]]
        mem[(2 * ceil32(stor8[arg1].field_1 % 128)) + (64 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 2016] = mem[mem[1120]]
        idx = 0
        s = mem[1120] + 32
        t = (2 * ceil32(stor8[arg1].field_1 % 128)) + (64 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 2048
        while idx < _5528:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1856] = bool(mem[1152])
        mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1888] = bool(mem[1184])
        mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1920] = bool(mem[1216])
        return memory
          from mem[64]
           len (2 * ceil32(stor8[arg1].field_1 % 128)) + (64 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + (32 * _5528) + -mem[64] + 2048
    mem[1280] = stor8[arg1].field_0
    idx = 1280
    s = 0
    while stor8[arg1].field_1 % 128 + 1248 > idx:
        mem[idx + 32] = stor8[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[672] = 1248
    mem[704] = address(stor8[arg1].field_256)
    mem[736] = stor8[arg1].field_512
    mem[768] = stor8[arg1].field_768
    mem[800] = stor8[arg1].field_1024
    mem[832] = stor8[arg1].field_1280
    mem[864] = stor8[arg1].field_1536
    mem[896] = stor8[arg1].field_1792
    mem[928] = stor8[arg1].field_2048
    mem[960] = stor8[arg1].field_2304
    mem[992] = stor8[arg1].field_2560
    mem[1024] = stor8[arg1].field_2816
    mem[1056] = stor8[arg1].field_3072
    mem[ceil32(stor8[arg1].field_1 % 128) + 1280] = stor8[arg1].field_3328
    if not stor8[arg1].field_3328:
        mem[1088] = ceil32(stor8[arg1].field_1 % 128) + 1280
        mem[64] = ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1344
        mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + 1312] = stor8[arg1].field_3584
        if not stor8[arg1].field_3584:
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1344] = 32
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1376] = 576
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1952] = stor8[arg1].field_1 % 128
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1984 len ceil32(stor8[arg1].field_1 % 128)] = mem[1280 len ceil32(stor8[arg1].field_1 % 128)]
            if ceil32(stor8[arg1].field_1 % 128) <= stor8[arg1].field_1 % 128:
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1408] = address(stor8[arg1].field_256)
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1440] = stor8[arg1].field_512
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1472] = stor8[arg1].field_768
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1504] = stor8[arg1].field_1024
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1536] = stor8[arg1].field_1280
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1568] = stor8[arg1].field_1536
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1600] = stor8[arg1].field_1792
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1632] = stor8[arg1].field_2048
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1664] = stor8[arg1].field_2304
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1696] = stor8[arg1].field_2560
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1728] = stor8[arg1].field_2816
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1760] = stor8[arg1].field_3072
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1792] = ceil32(stor8[arg1].field_1 % 128) + 608
                mem[(2 * ceil32(stor8[arg1].field_1 % 128)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1984] = stor8[arg1].field_3328
                idx = 0
                s = ceil32(stor8[arg1].field_1 % 128) + 1312
                t = (2 * ceil32(stor8[arg1].field_1 % 128)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 2016
                while idx < mem[ceil32(stor8[arg1].field_1 % 128) + 1280]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1824] = ceil32(stor8[arg1].field_1 % 128) + (32 * mem[ceil32(stor8[arg1].field_1 % 128) + 1280]) + 640
                _2404 = mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + 1312]
                mem[(2 * ceil32(stor8[arg1].field_1 % 128)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + (32 * mem[ceil32(stor8[arg1].field_1 % 128) + 1280]) + 2016] = mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + 1312]
                idx = 0
                s = ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + 1344
                t = (2 * ceil32(stor8[arg1].field_1 % 128)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + (32 * mem[ceil32(stor8[arg1].field_1 % 128) + 1280]) + 2048
                while idx < _2404:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1344 len 512], 
                       bool(uint8(stor8[arg1].field_3840)),
                       bool(uint8(stor8[arg1].field_3848)),
                       bool(uint8(stor8[arg1].field_3856)),
                       mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1952 len ceil32(stor8[arg1].field_1 % 128) + (32 * mem[ceil32(stor8[arg1].field_1 % 128) + 1280]) + (32 * _2404) + 96]
            mem[stor8[arg1].field_1 % 128 + ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1984] = 0
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1408] = address(stor8[arg1].field_256)
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1440] = stor8[arg1].field_512
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1472] = stor8[arg1].field_768
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1504] = stor8[arg1].field_1024
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1536] = stor8[arg1].field_1280
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1568] = stor8[arg1].field_1536
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1600] = stor8[arg1].field_1792
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1632] = stor8[arg1].field_2048
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1664] = stor8[arg1].field_2304
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1696] = stor8[arg1].field_2560
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1728] = stor8[arg1].field_2816
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1760] = stor8[arg1].field_3072
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1792] = ceil32(stor8[arg1].field_1 % 128) + 608
            mem[(2 * ceil32(stor8[arg1].field_1 % 128)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1984] = stor8[arg1].field_3328
            idx = 0
            s = ceil32(stor8[arg1].field_1 % 128) + 1312
            t = (2 * ceil32(stor8[arg1].field_1 % 128)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 2016
            while idx < mem[ceil32(stor8[arg1].field_1 % 128) + 1280]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1824] = ceil32(stor8[arg1].field_1 % 128) + (32 * mem[ceil32(stor8[arg1].field_1 % 128) + 1280]) + 640
            _2405 = mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + 1312]
            mem[(2 * ceil32(stor8[arg1].field_1 % 128)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + (32 * mem[ceil32(stor8[arg1].field_1 % 128) + 1280]) + 2016] = mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + 1312]
            idx = 0
            s = ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + 1344
            t = (2 * ceil32(stor8[arg1].field_1 % 128)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + (32 * mem[ceil32(stor8[arg1].field_1 % 128) + 1280]) + 2048
            while idx < _2405:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1344 len 512], 
                   bool(uint8(stor8[arg1].field_3840)),
                   bool(uint8(stor8[arg1].field_3848)),
                   bool(uint8(stor8[arg1].field_3856)),
                   mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1952 len ceil32(stor8[arg1].field_1 % 128) + (32 * mem[ceil32(stor8[arg1].field_1 % 128) + 1280]) + (32 * _2405) + 96]
        mem[0] = sha3(arg1, 8) + 14
        mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + 1344] = address(stor8[arg1][14].field_0)
        idx = ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + 1344
        s = 0
        while ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1312 > idx:
            mem[idx + 32] = address(stor8[arg1][s + 14].field_256)
            idx = idx + 32
            s = s + 1
            continue 
        mem[1120] = ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + 1312
        mem[1152] = bool(uint8(stor8[arg1].field_3840))
        mem[1184] = bool(uint8(stor8[arg1].field_3848))
        mem[1216] = bool(uint8(stor8[arg1].field_3856))
        mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1344] = 32
        mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1376] = 576
        mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1952] = stor8[arg1].field_1 % 128
        mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1984 len ceil32(stor8[arg1].field_1 % 128)] = mem[1280 len ceil32(stor8[arg1].field_1 % 128)]
        if ceil32(stor8[arg1].field_1 % 128) > stor8[arg1].field_1 % 128:
            mem[stor8[arg1].field_1 % 128 + ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1984] = 0
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1408] = address(stor8[arg1].field_256)
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1440] = stor8[arg1].field_512
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1472] = stor8[arg1].field_768
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1504] = stor8[arg1].field_1024
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1536] = stor8[arg1].field_1280
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1568] = stor8[arg1].field_1536
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1600] = stor8[arg1].field_1792
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1632] = stor8[arg1].field_2048
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1664] = stor8[arg1].field_2304
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1696] = stor8[arg1].field_2560
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1728] = stor8[arg1].field_2816
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1760] = stor8[arg1].field_3072
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1792] = ceil32(stor8[arg1].field_1 % 128) + 608
            mem[(2 * ceil32(stor8[arg1].field_1 % 128)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1984] = stor8[arg1].field_3328
            idx = 0
            s = ceil32(stor8[arg1].field_1 % 128) + 1312
            t = (2 * ceil32(stor8[arg1].field_1 % 128)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 2016
            while idx < mem[ceil32(stor8[arg1].field_1 % 128) + 1280]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1824] = ceil32(stor8[arg1].field_1 % 128) + (32 * mem[ceil32(stor8[arg1].field_1 % 128) + 1280]) + 640
            _4746 = mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + 1312]
            mem[(2 * ceil32(stor8[arg1].field_1 % 128)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + (32 * mem[ceil32(stor8[arg1].field_1 % 128) + 1280]) + 2016] = mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + 1312]
            idx = 0
            s = ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + 1344
            t = (2 * ceil32(stor8[arg1].field_1 % 128)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + (32 * mem[ceil32(stor8[arg1].field_1 % 128) + 1280]) + 2048
            while idx < _4746:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1344 len 512], 
                   bool(uint8(stor8[arg1].field_3840)),
                   bool(uint8(stor8[arg1].field_3848)),
                   bool(uint8(stor8[arg1].field_3856)),
                   mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1952 len ceil32(stor8[arg1].field_1 % 128) + (32 * mem[ceil32(stor8[arg1].field_1 % 128) + 1280]) + (32 * _4746) + 96]
        mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1408] = address(stor8[arg1].field_256)
        mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1440] = stor8[arg1].field_512
        mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1472] = stor8[arg1].field_768
        mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1504] = stor8[arg1].field_1024
        mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1536] = stor8[arg1].field_1280
        mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1568] = stor8[arg1].field_1536
        mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1600] = stor8[arg1].field_1792
        mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1632] = stor8[arg1].field_2048
        mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1664] = stor8[arg1].field_2304
        mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1696] = stor8[arg1].field_2560
        mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1728] = stor8[arg1].field_2816
        mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1760] = stor8[arg1].field_3072
        mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1792] = ceil32(stor8[arg1].field_1 % 128) + 608
        mem[(2 * ceil32(stor8[arg1].field_1 % 128)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1984] = stor8[arg1].field_3328
        idx = 0
        s = ceil32(stor8[arg1].field_1 % 128) + 1312
        t = ceil32(mem[1248]) + mem[64] + 672
        while idx < stor8[arg1].field_3328:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1824] = ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + 640
        _4745 = mem[mem[1120]]
        mem[(2 * ceil32(stor8[arg1].field_1 % 128)) + (64 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 2016] = mem[mem[1120]]
        idx = 0
        s = mem[1120] + 32
        t = (2 * ceil32(stor8[arg1].field_1 % 128)) + (64 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 2048
        while idx < _4745:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1856] = bool(mem[1152])
        mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1888] = bool(mem[1184])
        mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1920] = bool(mem[1216])
        return memory
          from mem[64]
           len (2 * ceil32(stor8[arg1].field_1 % 128)) + (64 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + (32 * _4745) + -mem[64] + 2048
    mem[0] = sha3(arg1, 8) + 13
    mem[ceil32(stor8[arg1].field_1 % 128) + 1312] = address(stor8[arg1][13].field_0)
    idx = ceil32(stor8[arg1].field_1 % 128) + 1312
    s = 0
    while ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + 1280 > idx:
        mem[idx + 32] = address(stor8[arg1][s + 13].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[1088] = ceil32(stor8[arg1].field_1 % 128) + 1280
    mem[64] = ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1344
    mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + 1312] = stor8[arg1].field_3584
    if not stor8[arg1].field_3584:
        mem[1120] = ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + 1312
        mem[1152] = bool(uint8(stor8[arg1].field_3840))
        mem[1184] = bool(uint8(stor8[arg1].field_3848))
        mem[1216] = bool(uint8(stor8[arg1].field_3856))
        mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1344] = 32
        mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1376] = 576
        mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1952] = stor8[arg1].field_1 % 128
        mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1984 len ceil32(stor8[arg1].field_1 % 128)] = mem[1280 len ceil32(stor8[arg1].field_1 % 128)]
        if ceil32(stor8[arg1].field_1 % 128) > stor8[arg1].field_1 % 128:
            mem[stor8[arg1].field_1 % 128 + ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1984] = 0
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1408] = address(stor8[arg1].field_256)
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1440] = stor8[arg1].field_512
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1472] = stor8[arg1].field_768
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1504] = stor8[arg1].field_1024
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1536] = stor8[arg1].field_1280
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1568] = stor8[arg1].field_1536
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1600] = stor8[arg1].field_1792
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1632] = stor8[arg1].field_2048
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1664] = stor8[arg1].field_2304
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1696] = stor8[arg1].field_2560
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1728] = stor8[arg1].field_2816
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1760] = stor8[arg1].field_3072
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1792] = ceil32(stor8[arg1].field_1 % 128) + 608
            mem[(2 * ceil32(stor8[arg1].field_1 % 128)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1984] = stor8[arg1].field_3328
            idx = 0
            s = ceil32(stor8[arg1].field_1 % 128) + 1312
            t = (2 * ceil32(stor8[arg1].field_1 % 128)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 2016
            while idx < stor8[arg1].field_3328:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1824] = ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + 640
            _4748 = mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + 1312]
            mem[(2 * ceil32(stor8[arg1].field_1 % 128)) + (64 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 2016] = mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + 1312]
            idx = 0
            s = ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + 1344
            t = (2 * ceil32(stor8[arg1].field_1 % 128)) + (64 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 2048
            while idx < _4748:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1344 len 512], 
                   bool(uint8(stor8[arg1].field_3840)),
                   bool(uint8(stor8[arg1].field_3848)),
                   bool(uint8(stor8[arg1].field_3856)),
                   mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1952 len ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * _4748) + 96]
        mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1408] = address(stor8[arg1].field_256)
        mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1440] = stor8[arg1].field_512
        mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1472] = stor8[arg1].field_768
        mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1504] = stor8[arg1].field_1024
        mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1536] = stor8[arg1].field_1280
        mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1568] = stor8[arg1].field_1536
        mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1600] = stor8[arg1].field_1792
        mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1632] = stor8[arg1].field_2048
        mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1664] = stor8[arg1].field_2304
        mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1696] = stor8[arg1].field_2560
        mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1728] = stor8[arg1].field_2816
        mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1760] = stor8[arg1].field_3072
        mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1792] = ceil32(stor8[arg1].field_1 % 128) + 608
        mem[(2 * ceil32(stor8[arg1].field_1 % 128)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1984] = stor8[arg1].field_3328
        idx = 0
        s = ceil32(stor8[arg1].field_1 % 128) + 1312
        t = ceil32(mem[1248]) + mem[64] + 672
        while idx < stor8[arg1].field_3328:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1824] = ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + 640
        _4747 = mem[mem[1120]]
        mem[(2 * ceil32(stor8[arg1].field_1 % 128)) + (64 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 2016] = mem[mem[1120]]
        idx = 0
        s = mem[1120] + 32
        t = (2 * ceil32(stor8[arg1].field_1 % 128)) + (64 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 2048
        while idx < _4747:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1856] = bool(mem[1152])
        mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1888] = bool(mem[1184])
        mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1920] = bool(mem[1216])
        return memory
          from mem[64]
           len (2 * ceil32(stor8[arg1].field_1 % 128)) + (64 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + (32 * _4747) + -mem[64] + 2048
    mem[0] = sha3(arg1, 8) + 14
    mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + 1344] = address(stor8[arg1][14].field_0)
    idx = ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + 1344
    s = 0
    while ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1312 > idx:
        mem[idx + 32] = address(stor8[arg1][s + 14].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[1120] = ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + 1312
    mem[1152] = bool(uint8(stor8[arg1].field_3840))
    mem[1184] = bool(uint8(stor8[arg1].field_3848))
    mem[1216] = bool(uint8(stor8[arg1].field_3856))
    mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1344] = 32
    mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1376] = 576
    mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1952] = stor8[arg1].field_1 % 128
    mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1984 len ceil32(stor8[arg1].field_1 % 128)] = mem[1280 len ceil32(stor8[arg1].field_1 % 128)]
    var41001 = ceil32(stor8[arg1].field_1 % 128)
    if ceil32(stor8[arg1].field_1 % 128) > stor8[arg1].field_1 % 128:
        mem[stor8[arg1].field_1 % 128 + ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1984] = 0
        mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1408] = address(stor8[arg1].field_256)
        mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1440] = stor8[arg1].field_512
        mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1472] = stor8[arg1].field_768
        mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1504] = stor8[arg1].field_1024
        mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1536] = stor8[arg1].field_1280
        mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1568] = stor8[arg1].field_1536
        mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1600] = stor8[arg1].field_1792
        mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1632] = stor8[arg1].field_2048
        mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1664] = stor8[arg1].field_2304
        mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1696] = stor8[arg1].field_2560
        mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1728] = stor8[arg1].field_2816
        mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1760] = stor8[arg1].field_3072
        mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1792] = ceil32(stor8[arg1].field_1 % 128) + 608
        mem[(2 * ceil32(stor8[arg1].field_1 % 128)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1984] = stor8[arg1].field_3328
        idx = 0
        s = ceil32(stor8[arg1].field_1 % 128) + 1312
        t = (2 * ceil32(stor8[arg1].field_1 % 128)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 2016
        while idx < mem[ceil32(stor8[arg1].field_1 % 128) + 1280]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1824] = ceil32(stor8[arg1].field_1 % 128) + (32 * mem[ceil32(stor8[arg1].field_1 % 128) + 1280]) + 640
        _5887 = mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + 1312]
        mem[(2 * ceil32(stor8[arg1].field_1 % 128)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + (32 * mem[ceil32(stor8[arg1].field_1 % 128) + 1280]) + 2016] = mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + 1312]
        idx = 0
        s = ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + 1344
        t = (2 * ceil32(stor8[arg1].field_1 % 128)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + (32 * mem[ceil32(stor8[arg1].field_1 % 128) + 1280]) + 2048
        while idx < _5887:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1344 len 512], 
               bool(uint8(stor8[arg1].field_3840)),
               bool(uint8(stor8[arg1].field_3848)),
               bool(uint8(stor8[arg1].field_3856)),
               mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1952 len ceil32(stor8[arg1].field_1 % 128) + (32 * mem[ceil32(stor8[arg1].field_1 % 128) + 1280]) + (32 * _5887) + 96]
    mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1408] = address(stor8[arg1].field_256)
    mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1440] = stor8[arg1].field_512
    mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1472] = stor8[arg1].field_768
    mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1504] = stor8[arg1].field_1024
    mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1536] = stor8[arg1].field_1280
    mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1568] = stor8[arg1].field_1536
    mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1600] = stor8[arg1].field_1792
    mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1632] = stor8[arg1].field_2048
    mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1664] = stor8[arg1].field_2304
    mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1696] = stor8[arg1].field_2560
    mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1728] = stor8[arg1].field_2816
    mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1760] = stor8[arg1].field_3072
    mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1792] = ceil32(stor8[arg1].field_1 % 128) + 608
    mem[(2 * ceil32(stor8[arg1].field_1 % 128)) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1984] = stor8[arg1].field_3328
    idx = 0
    s = ceil32(stor8[arg1].field_1 % 128) + 1312
    t = ceil32(mem[1248]) + mem[64] + 672
    while idx < stor8[arg1].field_3328:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1824] = ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + 640
    _5886 = mem[mem[1120]]
    mem[(2 * ceil32(stor8[arg1].field_1 % 128)) + (64 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 2016] = mem[mem[1120]]
    idx = 0
    s = mem[1120] + 32
    t = (2 * ceil32(stor8[arg1].field_1 % 128)) + (64 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 2048
    while idx < _5886:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1856] = bool(mem[1152])
    mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1888] = bool(mem[1184])
    mem[ceil32(stor8[arg1].field_1 % 128) + (32 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + 1920] = bool(mem[1216])
    return memory
      from mem[64]
       len (2 * ceil32(stor8[arg1].field_1 % 128)) + (64 * stor8[arg1].field_3328) + (32 * stor8[arg1].field_3584) + (32 * _5886) + -mem[64] + 2048
}



}
