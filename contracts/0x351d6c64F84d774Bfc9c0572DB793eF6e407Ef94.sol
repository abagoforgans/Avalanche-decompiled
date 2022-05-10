contract main {




// =====================  Runtime code  =====================


#
#  - sub_1ab81d79(?)
#  - sub_28353013(?)
#  - sub_ca86156d(?)
#  - sub_d6effb39(?)
#  - _fallback()
#
address sub_16281aa6Address;
uint8 stor1; offset 160
uint32 stor1;
uint128 stor1; offset 160
address sub_63e0d5e9Address;
uint256 stor1;
mapping of uint256 tokenBalances;
mapping of uint8 stor3;
mapping of uint8 stor4;
mapping of uint8 stor5;
mapping of uint8 stor6;
mapping of uint256 sub_b5b62a7f;
address stor8;
uint256 stor9;
uint256 stor10;
uint256 stor11;
uint256 stor12;
uint256 stor13;
uint256 stor14;
uint256 stor15;
uint256 stor16;
uint256 stor17;
array of struct sub_b6c1554e;
array of address sub_98b31141;
uint8 stor20;
address stor21;
uint256 stor22;
array of address sub_499839d9;
uint8 stor24;
address sub_3ef67e9fAddress;
address sub_6c302b9dAddress;
address sub_f5e41055Address;
uint256 stor28;
address sub_db45a8b8Address;

function active() {
    return bool(uint8(stor1.field_160))
}

function sub_16281aa6(?) {
    return sub_16281aa6Address
}

function sub_3ef67e9f(?) {
    return sub_3ef67e9fAddress
}

function sub_499839d9(?) {
    require calldata.size - 4 >= 32
    if arg1 >= sub_499839d9.length:
        revert with 0, 50
    return address(sub_499839d9[arg1])
}

function tokenBalances(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return tokenBalances[arg1][arg2]
}

function sub_63e0d5e9(?) {
    return sub_63e0d5e9Address
}

function sub_6c302b9d(?) {
    return sub_6c302b9dAddress
}

function sub_94357fdd(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor4[arg1])
}

function sub_98b31141(?) {
    require calldata.size - 4 >= 32
    if arg1 >= sub_98b31141.length:
        revert with 0, 50
    return address(sub_98b31141[arg1])
}

function sub_9e21341f(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor5[arg1])
}

function sub_a2ddfb77(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor6[arg1])
}

function sub_b5b62a7f(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_b5b62a7f[arg1]
}

function sub_b6c1554e(?) {
    require calldata.size - 4 >= 32
    if arg1 >= sub_b6c1554e.length:
        revert with 0, 50
    return sub_b6c1554e[arg1].field_0
}

function sub_db45a8b8(?) {
    return sub_db45a8b8Address
}

function sub_e759b6fd(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    return bool(stor3[arg1][arg2])
}

function sub_f5e41055(?) {
    return sub_f5e41055Address
}

function sub_047b251a(?) {
    return stor21, stor22, bool(stor24)
}

function sub_a38d20e5(?) {
    return stor8, stor9, stor10, stor11, stor12, stor13, stor14, stor15, stor16, stor17, bool(stor20)
}

function sub_20485f4e(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if sub_16281aa6Address != msg.sender:
        if 0x64db0493e018d48e724b802d28147bd7ce3992be != msg.sender:
            if sub_63e0d5e9Address != msg.sender:
                revert with 0, 'owner: caller is not the owner'
    sub_63e0d5e9Address = address(arg1)
}

function sub_ed9cb90d(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if sub_16281aa6Address != msg.sender:
        if 0x64db0493e018d48e724b802d28147bd7ce3992be != msg.sender:
            if sub_63e0d5e9Address != msg.sender:
                revert with 0, 'owner: caller is not the owner'
    sub_16281aa6Address = address(arg1)
}

function withdrawETH() {
    if sub_16281aa6Address != msg.sender:
        if 0x64db0493e018d48e724b802d28147bd7ce3992be != msg.sender:
            if sub_63e0d5e9Address != msg.sender:
                revert with 0, 'owner: caller is not the owner'
    call sub_16281aa6Address with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_6741a7d5(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(sub_db45a8b8Address)
    call sub_db45a8b8Address.0xc69b23a2 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if bool(ext_call.return_data[0]) != 1:
        revert with 0, 'n'
    stor28 = arg1
}

function sub_9fee9524(?) {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    require ext_code.size(sub_db45a8b8Address)
    call sub_db45a8b8Address.0xc69b23a2 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if bool(ext_call.return_data[0]) != 1:
        revert with 0, 'n'
    Mask(96, 0, stor1.field_160) = Mask(96, 0, bool(arg1))
}

function sub_0c1c6e39(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    require ext_code.size(sub_db45a8b8Address)
    call sub_db45a8b8Address.0xc69b23a2 with:
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

function withdrawToken(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if sub_16281aa6Address != msg.sender:
        if 0x64db0493e018d48e724b802d28147bd7ce3992be != msg.sender:
            if sub_63e0d5e9Address != msg.sender:
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
    mem[ceil32(return_data.size) + 132] = sub_63e0d5e9Address
    mem[ceil32(return_data.size) + 164] = ext_call.return_data[0]
    mem[ceil32(return_data.size) + 96] = 68
    mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor1.field_0)
    mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
    mem[ceil32(return_data.size) + 196] = 32
    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(arg1):
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor1.field_0), uint32(stor1.field_0), ext_call.return_data[0], 0
    mem[ceil32(return_data.size) + 328] = 0
    call arg1 with:
       funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor1.field_0), uint32(stor1.field_0), ext_call.return_data[0], 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor1.field_0), uint32(stor1.field_0), ext_call.return_data[0], 0) << 288)
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
    if not stor3[address(arg1)][address(arg2)]:
        mem[100] = this.address
        mem[132] = address(arg1)
        require ext_code.size(address(arg2))
        staticcall address(arg2).0xdd62ed3e with:
                gas gas_remaining wei
               args this.address, address(arg1)
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
        mem[ceil32(return_data.size) + 132] = address(arg1)
        mem[ceil32(return_data.size) + 164] = -1
        mem[ceil32(return_data.size) + 96] = 68
        mem[ceil32(return_data.size) + 132 len 28] = address(arg1) << 64
        mem[ceil32(return_data.size) + 128 len 4] = approve(address arg1, uint256 arg2)
        mem[ceil32(return_data.size) + 196] = 32
        mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(address(arg2)):
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + 260 len 96] = approve(address arg1, uint256 arg2), address(arg1) << 64, 0, -1, 0
        mem[ceil32(return_data.size) + 328] = 0
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
                require uint32(this.address), address(arg1) << 64 == bool(uint32(this.address), address(arg1) << 64)
                if not uint32(this.address), address(arg1) << 64:
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
        stor3[address(arg1)][address(arg2)] = 1
}

function sub_68ecc5f8(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    mem[100] = msg.sender
    require ext_code.size(sub_db45a8b8Address)
    call sub_db45a8b8Address.0xc69b23a2 with:
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

function sub_3c65c509(?) {
    require calldata.size - 4 >= 160
    require cd[4] == address(cd[4])
    require cd[36] == address(cd[36])
    require cd[68] == address(cd[68])
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    require ('cd', 100).length <= test266151307()
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    mem[100] = msg.sender
    require ext_code.size(sub_db45a8b8Address)
    call sub_db45a8b8Address.0xc69b23a2 with:
         gas gas_remaining wei
        args msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if bool(ext_call.return_data[0]) != 1:
        revert with 0, 'n'
    if 0 >= ('cd', 100).length:
        revert with 0, 50
    require ('cd', 100)[0] == address(('cd', 100)[0])
    mem[ceil32(return_data.size) + 100] = address(cd[36])
    require ext_code.size(address(('cd', 100)[0]))
    staticcall address(('cd', 100)[0]).0x70a08231 with:
            gas gas_remaining wei
           args address(cd[36])
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'No tokens wallet'
    mem[(2 * ceil32(return_data.size)) + 96] = 0
    mem[(2 * ceil32(return_data.size)) + 128] = 0
    if 0 >= ('cd', 100).length:
        revert with 0, 50
    require ('cd', 100)[0] == address(('cd', 100)[0])
    require ext_code.size(address(('cd', 100)[0]))
    staticcall address(('cd', 100)[0]).0x18160ddd with:
            gas gas_remaining wei
    mem[(2 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = (4 * ceil32(return_data.size)) + 160
    require return_data.size >= 32
    if ext_call.return_data[0] and cd[132] > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if not stor9:
        revert with 0, 18
    idx = ext_call.return_data[0]
    while idx:
        if 0 >= ('cd', 100).length:
            revert with 0, 50
        require ('cd', 100)[0] == address(('cd', 100)[0])
        if ext_call.return_data[0] * cd[132] / stor9 > idx:
            _341 = mem[64]
            mem[mem[64] + 36] = address(cd[36])
            mem[mem[64] + 68] = this.address
            mem[mem[64] + 100] = idx
            _344 = mem[64]
            mem[mem[64]] = 100
            mem[64] = mem[64] + 132
            mem[_344 + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 or mem[_344 + 36 len 28]
            mem[64] = _341 + 196
            mem[_341 + 132] = 32
            mem[_341 + 164] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(address(('cd', 100)[0])):
                revert with 0, 'Address: call to non-contract'
            _360 = mem[_344]
            s = 0
            while s < _360:
                mem[s + _341 + 196] = mem[s + _344 + 32]
                s = s + 32
                continue 
            if ceil32(_360) > _360:
                mem[_360 + _341 + 196] = 0
            call address(('cd', 100)[0]).mem[_341 + 196 len 4] with:
                 gas gas_remaining wei
                args mem[_341 + 200 len _360 - 4]
            if not return_data.size:
                if not ext_call.success:
                    if mem[96]:
                        revert with memory
                          from 128
                           len mem[96]
                    mem[_341 + 196] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_341 + 200] = 32
                    idx = 0
                    while idx < 32:
                        mem[idx + _341 + 264] = mem[idx + _341 + 164]
                        idx = idx + 32
                        continue 
                    revert with 0, 32, 32, mem[_341 + 264]
                if mem[96]:
                    require mem[96] >= 32
                    require mem[128] == bool(mem[128])
                    if not mem[128]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[64] = _341 + ceil32(return_data.size) + 197
                mem[_341 + 196] = return_data.size
                mem[_341 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_341 + ceil32(return_data.size) + 197] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_341 + ceil32(return_data.size) + 201] = 32
                    idx = 0
                    while idx < 32:
                        mem[idx + _341 + ceil32(return_data.size) + 265] = mem[idx + _341 + 164]
                        idx = idx + 32
                        continue 
                    revert with 0, 32, 32, mem[_341 + ceil32(return_data.size) + 265]
                if return_data.size:
                    require return_data.size >= 32
                    require mem[_341 + 228] == bool(mem[_341 + 228])
                    if not mem[_341 + 228]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            if idx < idx:
                revert with 0, 17
            idx = 0
            continue 
        _342 = mem[64]
        mem[mem[64] + 36] = address(cd[36])
        mem[mem[64] + 68] = this.address
        mem[mem[64] + 100] = ext_call.return_data[0] * cd[132] / stor9
        _346 = mem[64]
        mem[mem[64]] = 100
        mem[64] = mem[64] + 132
        mem[_346 + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 or mem[_346 + 36 len 28]
        mem[64] = _342 + 196
        mem[_342 + 132] = 32
        mem[_342 + 164] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(address(('cd', 100)[0])):
            revert with 0, 'Address: call to non-contract'
        _362 = mem[_346]
        s = 0
        while s < _362:
            mem[s + _342 + 196] = mem[s + _346 + 32]
            s = s + 32
            continue 
        if ceil32(_362) > _362:
            mem[_362 + _342 + 196] = 0
        call address(('cd', 100)[0]).mem[_342 + 196 len 4] with:
             gas gas_remaining wei
            args mem[_342 + 200 len _362 - 4]
        if not return_data.size:
            if not ext_call.success:
                if mem[96]:
                    revert with memory
                      from 128
                       len mem[96]
                mem[_342 + 196] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_342 + 200] = 32
                idx = 0
                while idx < 32:
                    mem[idx + _342 + 264] = mem[idx + _342 + 164]
                    idx = idx + 32
                    continue 
                revert with 0, 32, 32, mem[_342 + 264]
            if mem[96]:
                require mem[96] >= 32
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[64] = _342 + ceil32(return_data.size) + 197
            mem[_342 + 196] = return_data.size
            mem[_342 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_342 + ceil32(return_data.size) + 197] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_342 + ceil32(return_data.size) + 201] = 32
                idx = 0
                while idx < 32:
                    mem[idx + _342 + ceil32(return_data.size) + 265] = mem[idx + _342 + 164]
                    idx = idx + 32
                    continue 
                revert with 0, 32, 32, mem[_342 + ceil32(return_data.size) + 265]
            if return_data.size:
                require return_data.size >= 32
                require mem[_342 + 228] == bool(mem[_342 + 228])
                if not mem[_342 + 228]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        if idx < ext_call.return_data[0] * cd[132] / stor9:
            revert with 0, 17
        idx = idx - (ext_call.return_data[0] * cd[132] / stor9)
        continue 
    if 0 >= ('cd', 100).length:
        revert with 0, 50
    require ('cd', 100)[0] == address(('cd', 100)[0])
    mem[mem[64] + 4] = this.address
    require ext_code.size(address(('cd', 100)[0]))
    staticcall address(('cd', 100)[0]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _339 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _340 = mem[_339]
    _343 = mem[64]
    mem[64] = mem[64] + 64
    mem[_343] = _340
    mem[_343 + 32] = ext_call.return_data[0] * cd[132] / stor9
    if not _340:
        revert with 0, 'No tokens contract'
    if not ('cd', 100).length:
        revert with 0, 50
    require ('cd', 100)[0] == address(('cd', 100)[0])
    mem[0] = address(('cd', 100)[0])
    mem[32] = sha3(address(cd[4]), 3)
    if stor3[address(cd[4])][address(('cd', 100)[0])]:
        # nil
    else:
        mem[mem[64] + 4] = this.address
        mem[mem[64] + 36] = address(cd[4])
        require ext_code.size(address(('cd', 100)[0]))
        staticcall address(('cd', 100)[0]).0xdd62ed3e with:
                gas gas_remaining wei
               args this.address, address(cd[4])
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _385 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_385]:
            revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
        _423 = mem[64]
        mem[mem[64] + 36] = address(cd[4])
        mem[mem[64] + 68] = -1
        _425 = mem[64]
        mem[mem[64]] = 68
        mem[mem[64] + 32 len 4] = approve(address arg1, uint256 arg2)
        mem[64] = mem[64] + 164
        mem[_423 + 100] = 32
        mem[_423 + 132] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(address(('cd', 100)[0])):
            revert with 0, 'Address: call to non-contract'
        _481 = mem[_425]
        mem[_423 + 164 len ceil32(mem[_425])] = mem[_425 + 32 len ceil32(mem[_425])]
        if ceil32(_481) > _481:
            mem[_481 + _423 + 164] = 0
        call address(('cd', 100)[0]) with:
             gas gas_remaining wei
            args mem[_423 + 168 len _481 - 4]
        if not return_data.size:
            if not ext_call.success:
                if mem[96]:
                    revert with memory
                      from 128
                       len mem[96]
                revert with 0, 'SafeERC20: low-level call failed'
            if not mem[96]:
                stor3[address(cd[4])][address(('cd', 100)[0])] = 1
                # nil
            else:
                require mem[96] >= 32
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                stor3[address(cd[4])][address(('cd', 100)[0])] = 1
                # nil
        else:
            mem[_423 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if not return_data.size:
                stor3[address(cd[4])][address(('cd', 100)[0])] = 1
                # nil
            else:
                require return_data.size >= 32
                require mem[_423 + 196] == bool(mem[_423 + 196])
                if not mem[_423 + 196]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                stor3[address(cd[4])][address(('cd', 100)[0])] = 1
                # nil
}

function sub_c66657ed(?) {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require calldata.size + -cd[4] - 4 >= 416
    require ('cd', 4).length == address(('cd', 4).length)
    require ('cd', 4)[9] <= test266151307()
    require cd[4] + ('cd', 4)[9] + 35 < calldata.size
    if cd[(cd[4] + ('cd', 4)[9] + 4)] > test266151307():
        revert with 0, 65
    if ceil32(32 * cd[(cd[4] + ('cd', 4)[9] + 4)]) + 513 < 512 or ceil32(32 * cd[(cd[4] + ('cd', 4)[9] + 4)]) + 513 > test266151307():
        revert with 0, 65
    mem[512] = cd[(cd[4] + ('cd', 4)[9] + 4)]
    require cd[4] + ('cd', 4)[9] + (32 * cd[(cd[4] + ('cd', 4)[9] + 4)]) + 36 <= calldata.size
    idx = 0
    s = cd[4] + ('cd', 4)[9] + 36
    t = 544
    while idx < cd[(cd[4] + ('cd', 4)[9] + 4)]:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ('cd', 4)[10] <= test266151307()
    require cd[4] + ('cd', 4)[10] + 35 < calldata.size
    if cd[(cd[4] + ('cd', 4)[10] + 4)] > test266151307():
        revert with 0, 65
    if ceil32(32 * cd[(cd[4] + ('cd', 4)[10] + 4)]) + 514 < 513 or ceil32(32 * cd[(cd[4] + ('cd', 4)[9] + 4)]) + ceil32(32 * cd[(cd[4] + ('cd', 4)[10] + 4)]) + 514 > test266151307():
        revert with 0, 65
    mem[ceil32(32 * cd[(cd[4] + ('cd', 4)[9] + 4)]) + 513] = cd[(cd[4] + ('cd', 4)[10] + 4)]
    require cd[4] + ('cd', 4)[10] + (32 * cd[(cd[4] + ('cd', 4)[10] + 4)]) + 36 <= calldata.size
    idx = 0
    s = cd[4] + ('cd', 4)[10] + 36
    t = ceil32(32 * cd[(cd[4] + ('cd', 4)[9] + 4)]) + 545
    while idx < cd[(cd[4] + ('cd', 4)[10] + 4)]:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ('cd', 4)[11] == bool(('cd', 4)[11])
    require cd[36] <= test266151307()
    require calldata.size + -cd[36] - 4 >= 128
    if not bool(ceil32(32 * cd[(cd[4] + ('cd', 4)[9] + 4)]) + ceil32(32 * cd[(cd[4] + ('cd', 4)[10] + 4)]) + 642 <= test266151307()):
        revert with 0, 65
    require ('cd', 36).length == address(('cd', 36).length)
    mem[ceil32(32 * cd[(cd[4] + ('cd', 4)[9] + 4)]) + ceil32(32 * cd[(cd[4] + ('cd', 4)[10] + 4)]) + 514] = ('cd', 36).length
    mem[ceil32(32 * cd[(cd[4] + ('cd', 4)[9] + 4)]) + ceil32(32 * cd[(cd[4] + ('cd', 4)[10] + 4)]) + 546] = ('cd', 36)[0]
    require ('cd', 36)[1] <= test266151307()
    require cd[36] + ('cd', 36)[1] + 35 < calldata.size
    if cd[(cd[36] + ('cd', 36)[1] + 4)] > test266151307():
        revert with 0, 65
    if ceil32(32 * cd[(cd[36] + ('cd', 36)[1] + 4)]) + 643 < 642 or ceil32(32 * cd[(cd[4] + ('cd', 4)[9] + 4)]) + ceil32(32 * cd[(cd[4] + ('cd', 4)[10] + 4)]) + ceil32(32 * cd[(cd[36] + ('cd', 36)[1] + 4)]) + 643 > test266151307():
        revert with 0, 65
    mem[ceil32(32 * cd[(cd[4] + ('cd', 4)[9] + 4)]) + ceil32(32 * cd[(cd[4] + ('cd', 4)[10] + 4)]) + 642] = cd[(cd[36] + ('cd', 36)[1] + 4)]
    require cd[36] + ('cd', 36)[1] + (32 * cd[(cd[36] + ('cd', 36)[1] + 4)]) + 36 <= calldata.size
    idx = 0
    s = cd[36] + ('cd', 36)[1] + 36
    t = ceil32(32 * cd[(cd[4] + ('cd', 4)[9] + 4)]) + ceil32(32 * cd[(cd[4] + ('cd', 4)[10] + 4)]) + 674
    while idx < cd[(cd[36] + ('cd', 36)[1] + 4)]:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ('cd', 36)[2] == bool(('cd', 36)[2])
    mem[ceil32(32 * cd[(cd[4] + ('cd', 4)[9] + 4)]) + ceil32(32 * cd[(cd[4] + ('cd', 4)[10] + 4)]) + ceil32(32 * cd[(cd[36] + ('cd', 36)[1] + 4)]) + 647] = msg.sender
    require ext_code.size(sub_db45a8b8Address)
    call sub_db45a8b8Address.0xc69b23a2 with:
         gas gas_remaining wei
        args msg.sender
    mem[ceil32(32 * cd[(cd[4] + ('cd', 4)[9] + 4)]) + ceil32(32 * cd[(cd[4] + ('cd', 4)[10] + 4)]) + ceil32(32 * cd[(cd[36] + ('cd', 36)[1] + 4)]) + 643] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if bool(ext_call.return_data[0]) != 1:
        revert with 0, 'n'
    stor8 = address(('cd', 4).length)
    stor9 = ('cd', 4)[0]
    stor10 = ('cd', 4)[1]
    stor11 = ('cd', 4)[2]
    stor12 = ('cd', 4)[3]
    stor13 = ('cd', 4)[4]
    stor14 = ('cd', 4)[5]
    stor15 = ('cd', 4)[6]
    stor16 = ('cd', 4)[7]
    stor17 = ('cd', 4)[8]
    sub_b6c1554e.length = cd[(cd[4] + ('cd', 4)[9] + 4)]
    if not cd[(cd[4] + ('cd', 4)[9] + 4)]:
        idx = 0
        while sub_b6c1554e.length > idx:
            sub_b6c1554e[idx].field_0 = 0
            idx = idx + 1
            continue 
        sub_98b31141.length = cd[(cd[4] + ('cd', 4)[10] + 4)]
        if not cd[(cd[4] + ('cd', 4)[10] + 4)]:
            idx = 0
            while sub_98b31141.length > idx:
                uint256(sub_98b31141[idx]) = 0
                idx = idx + 1
                continue 
            stor20 = uint8(bool(('cd', 4)[11]))
            stor21 = address(('cd', 36).length)
            stor22 = ('cd', 36)[0]
            sub_499839d9.length = cd[(cd[36] + ('cd', 36)[1] + 4)]
            if not cd[(cd[36] + ('cd', 36)[1] + 4)]:
                idx = 0
                while sub_499839d9.length > idx:
                    uint256(sub_499839d9[idx]) = 0
                    idx = idx + 1
                    continue 
                stor24 = uint8(bool(('cd', 36)[2]))
                require ext_code.size(stor8)
                staticcall stor8.factory() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                sub_3ef67e9fAddress = ext_call.return_data[12 len 20]
                sub_f5e41055Address = 0
                if not sub_b6c1554e.length:
                    if not sub_f5e41055Address:
                        if not sub_b6c1554e.length:
                            revert with 0, 50
                        if 1 >= sub_b6c1554e.length:
                            revert with 0, 50
                        _1475 = mem[ceil32(32 * cd[(cd[4] + ('cd', 4)[9] + 4)]) + ceil32(32 * cd[(cd[4] + ('cd', 4)[10] + 4)]) + ceil32(32 * cd[(cd[36] + ('cd', 36)[1] + 4)]) + (2 * ceil32(return_data.size)) + 707]
                        mem[ceil32(32 * cd[(cd[4] + ('cd', 4)[9] + 4)]) + ceil32(32 * cd[(cd[4] + ('cd', 4)[10] + 4)]) + ceil32(32 * cd[(cd[36] + ('cd', 36)[1] + 4)]) + (2 * ceil32(return_data.size)) + (32 * sub_b6c1554e.length) + 679] = mem[ceil32(32 * cd[(cd[4] + ('cd', 4)[9] + 4)]) + ceil32(32 * cd[(cd[4] + ('cd', 4)[10] + 4)]) + ceil32(32 * cd[(cd[36] + ('cd', 36)[1] + 4)]) + (2 * ceil32(return_data.size)) + 687 len 20]
                        require ext_code.size(sub_3ef67e9fAddress)
                        staticcall sub_3ef67e9fAddress.getPair(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args mem[ceil32(32 * cd[(cd[4] + ('cd', 4)[9] + 4)]) + ceil32(32 * cd[(cd[4] + ('cd', 4)[10] + 4)]) + ceil32(32 * cd[(cd[36] + ('cd', 36)[1] + 4)]) + (2 * ceil32(return_data.size)) + (32 * sub_b6c1554e.length) + 679], address(_1475)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        sub_f5e41055Address = ext_call.return_data[12 len 20]
                        if ext_call.return_data[12 len 20]:
                            sub_6c302b9dAddress = sub_f5e41055Address
                else:
                    if (32 * sub_b6c1554e.length) + 32 > 64:
                        mem[ceil32(32 * cd[(cd[4] + ('cd', 4)[9] + 4)]) + ceil32(32 * cd[(cd[4] + ('cd', 4)[10] + 4)]) + ceil32(32 * cd[(cd[36] + ('cd', 36)[1] + 4)]) + (2 * ceil32(return_data.size)) + 707] = address(sub_b6c1554e.field_256)
                        idx = ceil32(32 * cd[(cd[4] + ('cd', 4)[9] + 4)]) + ceil32(32 * cd[(cd[4] + ('cd', 4)[10] + 4)]) + ceil32(32 * cd[(cd[36] + ('cd', 36)[1] + 4)]) + (2 * ceil32(return_data.size)) + 707
                        s = 1
                        while ceil32(32 * cd[(cd[4] + ('cd', 4)[9] + 4)]) + ceil32(32 * cd[(cd[4] + ('cd', 4)[10] + 4)]) + ceil32(32 * cd[(cd[36] + ('cd', 36)[1] + 4)]) + (2 * ceil32(return_data.size)) + (32 * sub_b6c1554e.length) + 643 > idx:
                            mem[idx + 32] = sub_b6c1554e[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                    if not sub_f5e41055Address:
                        if not sub_b6c1554e.length:
                            revert with 0, 50
                        if 1 >= sub_b6c1554e.length:
                            revert with 0, 50
                        require ext_code.size(sub_3ef67e9fAddress)
                        staticcall sub_3ef67e9fAddress.getPair(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args address(sub_b6c1554e.field_0), mem[ceil32(32 * cd[(cd[4] + ('cd', 4)[9] + 4)]) + ceil32(32 * cd[(cd[4] + ('cd', 4)[10] + 4)]) + ceil32(32 * cd[(cd[36] + ('cd', 36)[1] + 4)]) + (2 * ceil32(return_data.size)) + 719 len 20]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        sub_f5e41055Address = ext_call.return_data[12 len 20]
                        if ext_call.return_data[12 len 20]:
                            sub_6c302b9dAddress = sub_f5e41055Address
            else:
                s = 0
                idx = ceil32(32 * cd[(cd[4] + ('cd', 4)[9] + 4)]) + ceil32(32 * cd[(cd[4] + ('cd', 4)[10] + 4)]) + 674
                while ceil32(32 * cd[(cd[4] + ('cd', 4)[9] + 4)]) + ceil32(32 * cd[(cd[4] + ('cd', 4)[10] + 4)]) + (32 * cd[(cd[36] + ('cd', 36)[1] + 4)]) + 674 > idx:
                    address(sub_499839d9[s]) = mem[idx + 12 len 20]
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = Mask(251, 0, (32 * cd[(cd[36] + ('cd', 36)[1] + 4)]) + 31) >> 5
                while sub_499839d9.length > idx:
                    uint256(sub_499839d9[idx]) = 0
                    idx = idx + 1
                    continue 
                stor24 = uint8(bool(('cd', 36)[2]))
                require ext_code.size(stor8)
                staticcall stor8.factory() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                sub_3ef67e9fAddress = ext_call.return_data[12 len 20]
                sub_f5e41055Address = 0
                if not sub_b6c1554e.length:
                    if not sub_f5e41055Address:
                        if not sub_b6c1554e.length:
                            revert with 0, 50
                        if 1 >= sub_b6c1554e.length:
                            revert with 0, 50
                        _1681 = mem[ceil32(32 * cd[(cd[4] + ('cd', 4)[9] + 4)]) + ceil32(32 * cd[(cd[4] + ('cd', 4)[10] + 4)]) + ceil32(32 * cd[(cd[36] + ('cd', 36)[1] + 4)]) + (2 * ceil32(return_data.size)) + 707]
                        mem[ceil32(32 * cd[(cd[4] + ('cd', 4)[9] + 4)]) + ceil32(32 * cd[(cd[4] + ('cd', 4)[10] + 4)]) + ceil32(32 * cd[(cd[36] + ('cd', 36)[1] + 4)]) + (2 * ceil32(return_data.size)) + (32 * sub_b6c1554e.length) + 679] = mem[ceil32(32 * cd[(cd[4] + ('cd', 4)[9] + 4)]) + ceil32(32 * cd[(cd[4] + ('cd', 4)[10] + 4)]) + ceil32(32 * cd[(cd[36] + ('cd', 36)[1] + 4)]) + (2 * ceil32(return_data.size)) + 687 len 20]
                        require ext_code.size(sub_3ef67e9fAddress)
                        staticcall sub_3ef67e9fAddress.getPair(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args mem[ceil32(32 * cd[(cd[4] + ('cd', 4)[9] + 4)]) + ceil32(32 * cd[(cd[4] + ('cd', 4)[10] + 4)]) + ceil32(32 * cd[(cd[36] + ('cd', 36)[1] + 4)]) + (2 * ceil32(return_data.size)) + (32 * sub_b6c1554e.length) + 679], address(_1681)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        sub_f5e41055Address = ext_call.return_data[12 len 20]
                        if ext_call.return_data[12 len 20]:
                            sub_6c302b9dAddress = sub_f5e41055Address
                else:
                    if (32 * sub_b6c1554e.length) + 32 > 64:
                        mem[ceil32(32 * cd[(cd[4] + ('cd', 4)[9] + 4)]) + ceil32(32 * cd[(cd[4] + ('cd', 4)[10] + 4)]) + ceil32(32 * cd[(cd[36] + ('cd', 36)[1] + 4)]) + (2 * ceil32(return_data.size)) + 707] = address(sub_b6c1554e.field_256)
                        idx = ceil32(32 * cd[(cd[4] + ('cd', 4)[9] + 4)]) + ceil32(32 * cd[(cd[4] + ('cd', 4)[10] + 4)]) + ceil32(32 * cd[(cd[36] + ('cd', 36)[1] + 4)]) + (2 * ceil32(return_data.size)) + 707
                        s = 1
                        while ceil32(32 * cd[(cd[4] + ('cd', 4)[9] + 4)]) + ceil32(32 * cd[(cd[4] + ('cd', 4)[10] + 4)]) + ceil32(32 * cd[(cd[36] + ('cd', 36)[1] + 4)]) + (2 * ceil32(return_data.size)) + (32 * sub_b6c1554e.length) + 643 > idx:
                            mem[idx + 32] = sub_b6c1554e[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                    if not sub_f5e41055Address:
                        if not sub_b6c1554e.length:
                            revert with 0, 50
                        if 1 >= sub_b6c1554e.length:
                            revert with 0, 50
                        require ext_code.size(sub_3ef67e9fAddress)
                        staticcall sub_3ef67e9fAddress.getPair(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args address(sub_b6c1554e.field_0), mem[ceil32(32 * cd[(cd[4] + ('cd', 4)[9] + 4)]) + ceil32(32 * cd[(cd[4] + ('cd', 4)[10] + 4)]) + ceil32(32 * cd[(cd[36] + ('cd', 36)[1] + 4)]) + (2 * ceil32(return_data.size)) + 719 len 20]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        sub_f5e41055Address = ext_call.return_data[12 len 20]
                        if ext_call.return_data[12 len 20]:
                            sub_6c302b9dAddress = sub_f5e41055Address
        else:
            s = 0
            idx = ceil32(32 * cd[(cd[4] + ('cd', 4)[9] + 4)]) + 545
            while ceil32(32 * cd[(cd[4] + ('cd', 4)[9] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[10] + 4)]) + 545 > idx:
                address(sub_98b31141[s]) = mem[idx + 12 len 20]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, (32 * cd[(cd[4] + ('cd', 4)[10] + 4)]) + 31) >> 5
            while sub_98b31141.length > idx:
                uint256(sub_98b31141[idx]) = 0
                idx = idx + 1
                continue 
            stor20 = uint8(bool(('cd', 4)[11]))
            stor21 = address(('cd', 36).length)
            stor22 = ('cd', 36)[0]
            sub_499839d9.length = cd[(cd[36] + ('cd', 36)[1] + 4)]
            if not cd[(cd[36] + ('cd', 36)[1] + 4)]:
                idx = 0
                while sub_499839d9.length > idx:
                    uint256(sub_499839d9[idx]) = 0
                    idx = idx + 1
                    continue 
                stor24 = uint8(bool(('cd', 36)[2]))
                require ext_code.size(stor8)
                staticcall stor8.factory() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                sub_3ef67e9fAddress = ext_call.return_data[12 len 20]
                sub_f5e41055Address = 0
                if not sub_b6c1554e.length:
                    if not sub_f5e41055Address:
                        if not sub_b6c1554e.length:
                            revert with 0, 50
                        if 1 >= sub_b6c1554e.length:
                            revert with 0, 50
                        _1685 = mem[ceil32(32 * cd[(cd[4] + ('cd', 4)[9] + 4)]) + ceil32(32 * cd[(cd[4] + ('cd', 4)[10] + 4)]) + ceil32(32 * cd[(cd[36] + ('cd', 36)[1] + 4)]) + (2 * ceil32(return_data.size)) + 707]
                        mem[ceil32(32 * cd[(cd[4] + ('cd', 4)[9] + 4)]) + ceil32(32 * cd[(cd[4] + ('cd', 4)[10] + 4)]) + ceil32(32 * cd[(cd[36] + ('cd', 36)[1] + 4)]) + (2 * ceil32(return_data.size)) + (32 * sub_b6c1554e.length) + 679] = mem[ceil32(32 * cd[(cd[4] + ('cd', 4)[9] + 4)]) + ceil32(32 * cd[(cd[4] + ('cd', 4)[10] + 4)]) + ceil32(32 * cd[(cd[36] + ('cd', 36)[1] + 4)]) + (2 * ceil32(return_data.size)) + 687 len 20]
                        require ext_code.size(sub_3ef67e9fAddress)
                        staticcall sub_3ef67e9fAddress.getPair(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args mem[ceil32(32 * cd[(cd[4] + ('cd', 4)[9] + 4)]) + ceil32(32 * cd[(cd[4] + ('cd', 4)[10] + 4)]) + ceil32(32 * cd[(cd[36] + ('cd', 36)[1] + 4)]) + (2 * ceil32(return_data.size)) + (32 * sub_b6c1554e.length) + 679], address(_1685)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        sub_f5e41055Address = ext_call.return_data[12 len 20]
                        if ext_call.return_data[12 len 20]:
                            sub_6c302b9dAddress = sub_f5e41055Address
                else:
                    if (32 * sub_b6c1554e.length) + 32 > 64:
                        mem[ceil32(32 * cd[(cd[4] + ('cd', 4)[9] + 4)]) + ceil32(32 * cd[(cd[4] + ('cd', 4)[10] + 4)]) + ceil32(32 * cd[(cd[36] + ('cd', 36)[1] + 4)]) + (2 * ceil32(return_data.size)) + 707] = address(sub_b6c1554e.field_256)
                        idx = ceil32(32 * cd[(cd[4] + ('cd', 4)[9] + 4)]) + ceil32(32 * cd[(cd[4] + ('cd', 4)[10] + 4)]) + ceil32(32 * cd[(cd[36] + ('cd', 36)[1] + 4)]) + (2 * ceil32(return_data.size)) + 707
                        s = 1
                        while ceil32(32 * cd[(cd[4] + ('cd', 4)[9] + 4)]) + ceil32(32 * cd[(cd[4] + ('cd', 4)[10] + 4)]) + ceil32(32 * cd[(cd[36] + ('cd', 36)[1] + 4)]) + (2 * ceil32(return_data.size)) + (32 * sub_b6c1554e.length) + 643 > idx:
                            mem[idx + 32] = sub_b6c1554e[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                    if not sub_f5e41055Address:
                        if not sub_b6c1554e.length:
                            revert with 0, 50
                        if 1 >= sub_b6c1554e.length:
                            revert with 0, 50
                        require ext_code.size(sub_3ef67e9fAddress)
                        staticcall sub_3ef67e9fAddress.getPair(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args address(sub_b6c1554e.field_0), mem[ceil32(32 * cd[(cd[4] + ('cd', 4)[9] + 4)]) + ceil32(32 * cd[(cd[4] + ('cd', 4)[10] + 4)]) + ceil32(32 * cd[(cd[36] + ('cd', 36)[1] + 4)]) + (2 * ceil32(return_data.size)) + 719 len 20]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        sub_f5e41055Address = ext_call.return_data[12 len 20]
                        if ext_call.return_data[12 len 20]:
                            sub_6c302b9dAddress = sub_f5e41055Address
            else:
                s = 0
                idx = ceil32(32 * cd[(cd[4] + ('cd', 4)[9] + 4)]) + ceil32(32 * cd[(cd[4] + ('cd', 4)[10] + 4)]) + 674
                while ceil32(32 * cd[(cd[4] + ('cd', 4)[9] + 4)]) + ceil32(32 * cd[(cd[4] + ('cd', 4)[10] + 4)]) + (32 * cd[(cd[36] + ('cd', 36)[1] + 4)]) + 674 > idx:
                    address(sub_499839d9[s]) = mem[idx + 12 len 20]
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = Mask(251, 0, (32 * cd[(cd[36] + ('cd', 36)[1] + 4)]) + 31) >> 5
                while sub_499839d9.length > idx:
                    uint256(sub_499839d9[idx]) = 0
                    idx = idx + 1
                    continue 
                stor24 = uint8(bool(('cd', 36)[2]))
                require ext_code.size(stor8)
                staticcall stor8.factory() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                sub_3ef67e9fAddress = ext_call.return_data[12 len 20]
                sub_f5e41055Address = 0
                if not sub_b6c1554e.length:
                    if not sub_f5e41055Address:
                        if not sub_b6c1554e.length:
                            revert with 0, 50
                        if 1 >= sub_b6c1554e.length:
                            revert with 0, 50
                        _1835 = mem[ceil32(32 * cd[(cd[4] + ('cd', 4)[9] + 4)]) + ceil32(32 * cd[(cd[4] + ('cd', 4)[10] + 4)]) + ceil32(32 * cd[(cd[36] + ('cd', 36)[1] + 4)]) + (2 * ceil32(return_data.size)) + 707]
                        mem[ceil32(32 * cd[(cd[4] + ('cd', 4)[9] + 4)]) + ceil32(32 * cd[(cd[4] + ('cd', 4)[10] + 4)]) + ceil32(32 * cd[(cd[36] + ('cd', 36)[1] + 4)]) + (2 * ceil32(return_data.size)) + (32 * sub_b6c1554e.length) + 679] = mem[ceil32(32 * cd[(cd[4] + ('cd', 4)[9] + 4)]) + ceil32(32 * cd[(cd[4] + ('cd', 4)[10] + 4)]) + ceil32(32 * cd[(cd[36] + ('cd', 36)[1] + 4)]) + (2 * ceil32(return_data.size)) + 687 len 20]
                        require ext_code.size(sub_3ef67e9fAddress)
                        staticcall sub_3ef67e9fAddress.getPair(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args mem[ceil32(32 * cd[(cd[4] + ('cd', 4)[9] + 4)]) + ceil32(32 * cd[(cd[4] + ('cd', 4)[10] + 4)]) + ceil32(32 * cd[(cd[36] + ('cd', 36)[1] + 4)]) + (2 * ceil32(return_data.size)) + (32 * sub_b6c1554e.length) + 679], address(_1835)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        sub_f5e41055Address = ext_call.return_data[12 len 20]
                        if ext_call.return_data[12 len 20]:
                            sub_6c302b9dAddress = sub_f5e41055Address
                else:
                    if (32 * sub_b6c1554e.length) + 32 > 64:
                        mem[ceil32(32 * cd[(cd[4] + ('cd', 4)[9] + 4)]) + ceil32(32 * cd[(cd[4] + ('cd', 4)[10] + 4)]) + ceil32(32 * cd[(cd[36] + ('cd', 36)[1] + 4)]) + (2 * ceil32(return_data.size)) + 707] = address(sub_b6c1554e.field_256)
                        idx = ceil32(32 * cd[(cd[4] + ('cd', 4)[9] + 4)]) + ceil32(32 * cd[(cd[4] + ('cd', 4)[10] + 4)]) + ceil32(32 * cd[(cd[36] + ('cd', 36)[1] + 4)]) + (2 * ceil32(return_data.size)) + 707
                        s = 1
                        while ceil32(32 * cd[(cd[4] + ('cd', 4)[9] + 4)]) + ceil32(32 * cd[(cd[4] + ('cd', 4)[10] + 4)]) + ceil32(32 * cd[(cd[36] + ('cd', 36)[1] + 4)]) + (2 * ceil32(return_data.size)) + (32 * sub_b6c1554e.length) + 643 > idx:
                            mem[idx + 32] = sub_b6c1554e[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                    if not sub_f5e41055Address:
                        if not sub_b6c1554e.length:
                            revert with 0, 50
                        if 1 >= sub_b6c1554e.length:
                            revert with 0, 50
                        require ext_code.size(sub_3ef67e9fAddress)
                        staticcall sub_3ef67e9fAddress.getPair(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args address(sub_b6c1554e.field_0), mem[ceil32(32 * cd[(cd[4] + ('cd', 4)[9] + 4)]) + ceil32(32 * cd[(cd[4] + ('cd', 4)[10] + 4)]) + ceil32(32 * cd[(cd[36] + ('cd', 36)[1] + 4)]) + (2 * ceil32(return_data.size)) + 719 len 20]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        sub_f5e41055Address = ext_call.return_data[12 len 20]
                        if ext_call.return_data[12 len 20]:
                            sub_6c302b9dAddress = sub_f5e41055Address
    else:
        s = 0
        idx = 544
        while (32 * cd[(cd[4] + ('cd', 4)[9] + 4)]) + 544 > idx:
            sub_b6c1554e[s].field_0 = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * cd[(cd[4] + ('cd', 4)[9] + 4)]) + 31) >> 5
        while sub_b6c1554e.length > idx:
            sub_b6c1554e[idx].field_0 = 0
            idx = idx + 1
            continue 
        sub_98b31141.length = cd[(cd[4] + ('cd', 4)[10] + 4)]
        if not cd[(cd[4] + ('cd', 4)[10] + 4)]:
            idx = 0
            while sub_98b31141.length > idx:
                uint256(sub_98b31141[idx]) = 0
                idx = idx + 1
                continue 
            stor20 = uint8(bool(('cd', 4)[11]))
            stor21 = address(('cd', 36).length)
            stor22 = ('cd', 36)[0]
            sub_499839d9.length = cd[(cd[36] + ('cd', 36)[1] + 4)]
            if not cd[(cd[36] + ('cd', 36)[1] + 4)]:
                idx = 0
                while sub_499839d9.length > idx:
                    uint256(sub_499839d9[idx]) = 0
                    idx = idx + 1
                    continue 
                stor24 = uint8(bool(('cd', 36)[2]))
                require ext_code.size(stor8)
                staticcall stor8.factory() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                sub_3ef67e9fAddress = ext_call.return_data[12 len 20]
                sub_f5e41055Address = 0
                if not sub_b6c1554e.length:
                    if not sub_f5e41055Address:
                        if not sub_b6c1554e.length:
                            revert with 0, 50
                        if 1 >= sub_b6c1554e.length:
                            revert with 0, 50
                        _1689 = mem[ceil32(32 * cd[(cd[4] + ('cd', 4)[9] + 4)]) + ceil32(32 * cd[(cd[4] + ('cd', 4)[10] + 4)]) + ceil32(32 * cd[(cd[36] + ('cd', 36)[1] + 4)]) + (2 * ceil32(return_data.size)) + 707]
                        mem[ceil32(32 * cd[(cd[4] + ('cd', 4)[9] + 4)]) + ceil32(32 * cd[(cd[4] + ('cd', 4)[10] + 4)]) + ceil32(32 * cd[(cd[36] + ('cd', 36)[1] + 4)]) + (2 * ceil32(return_data.size)) + (32 * sub_b6c1554e.length) + 679] = mem[ceil32(32 * cd[(cd[4] + ('cd', 4)[9] + 4)]) + ceil32(32 * cd[(cd[4] + ('cd', 4)[10] + 4)]) + ceil32(32 * cd[(cd[36] + ('cd', 36)[1] + 4)]) + (2 * ceil32(return_data.size)) + 687 len 20]
                        require ext_code.size(sub_3ef67e9fAddress)
                        staticcall sub_3ef67e9fAddress.getPair(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args mem[ceil32(32 * cd[(cd[4] + ('cd', 4)[9] + 4)]) + ceil32(32 * cd[(cd[4] + ('cd', 4)[10] + 4)]) + ceil32(32 * cd[(cd[36] + ('cd', 36)[1] + 4)]) + (2 * ceil32(return_data.size)) + (32 * sub_b6c1554e.length) + 679], address(_1689)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        sub_f5e41055Address = ext_call.return_data[12 len 20]
                        if ext_call.return_data[12 len 20]:
                            sub_6c302b9dAddress = sub_f5e41055Address
                else:
                    if (32 * sub_b6c1554e.length) + 32 > 64:
                        mem[ceil32(32 * cd[(cd[4] + ('cd', 4)[9] + 4)]) + ceil32(32 * cd[(cd[4] + ('cd', 4)[10] + 4)]) + ceil32(32 * cd[(cd[36] + ('cd', 36)[1] + 4)]) + (2 * ceil32(return_data.size)) + 707] = address(sub_b6c1554e.field_256)
                        idx = ceil32(32 * cd[(cd[4] + ('cd', 4)[9] + 4)]) + ceil32(32 * cd[(cd[4] + ('cd', 4)[10] + 4)]) + ceil32(32 * cd[(cd[36] + ('cd', 36)[1] + 4)]) + (2 * ceil32(return_data.size)) + 707
                        s = 1
                        while ceil32(32 * cd[(cd[4] + ('cd', 4)[9] + 4)]) + ceil32(32 * cd[(cd[4] + ('cd', 4)[10] + 4)]) + ceil32(32 * cd[(cd[36] + ('cd', 36)[1] + 4)]) + (2 * ceil32(return_data.size)) + (32 * sub_b6c1554e.length) + 643 > idx:
                            mem[idx + 32] = sub_b6c1554e[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                    if not sub_f5e41055Address:
                        if not sub_b6c1554e.length:
                            revert with 0, 50
                        if 1 >= sub_b6c1554e.length:
                            revert with 0, 50
                        require ext_code.size(sub_3ef67e9fAddress)
                        staticcall sub_3ef67e9fAddress.getPair(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args address(sub_b6c1554e.field_0), mem[ceil32(32 * cd[(cd[4] + ('cd', 4)[9] + 4)]) + ceil32(32 * cd[(cd[4] + ('cd', 4)[10] + 4)]) + ceil32(32 * cd[(cd[36] + ('cd', 36)[1] + 4)]) + (2 * ceil32(return_data.size)) + 719 len 20]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        sub_f5e41055Address = ext_call.return_data[12 len 20]
                        if ext_call.return_data[12 len 20]:
                            sub_6c302b9dAddress = sub_f5e41055Address
            else:
                s = 0
                idx = ceil32(32 * cd[(cd[4] + ('cd', 4)[9] + 4)]) + ceil32(32 * cd[(cd[4] + ('cd', 4)[10] + 4)]) + 674
                while ceil32(32 * cd[(cd[4] + ('cd', 4)[9] + 4)]) + ceil32(32 * cd[(cd[4] + ('cd', 4)[10] + 4)]) + (32 * cd[(cd[36] + ('cd', 36)[1] + 4)]) + 674 > idx:
                    address(sub_499839d9[s]) = mem[idx + 12 len 20]
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = Mask(251, 0, (32 * cd[(cd[36] + ('cd', 36)[1] + 4)]) + 31) >> 5
                while sub_499839d9.length > idx:
                    uint256(sub_499839d9[idx]) = 0
                    idx = idx + 1
                    continue 
                stor24 = uint8(bool(('cd', 36)[2]))
                require ext_code.size(stor8)
                staticcall stor8.factory() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                sub_3ef67e9fAddress = ext_call.return_data[12 len 20]
                sub_f5e41055Address = 0
                if not sub_b6c1554e.length:
                    if not sub_f5e41055Address:
                        if not sub_b6c1554e.length:
                            revert with 0, 50
                        if 1 >= sub_b6c1554e.length:
                            revert with 0, 50
                        _1839 = mem[ceil32(32 * cd[(cd[4] + ('cd', 4)[9] + 4)]) + ceil32(32 * cd[(cd[4] + ('cd', 4)[10] + 4)]) + ceil32(32 * cd[(cd[36] + ('cd', 36)[1] + 4)]) + (2 * ceil32(return_data.size)) + 707]
                        mem[ceil32(32 * cd[(cd[4] + ('cd', 4)[9] + 4)]) + ceil32(32 * cd[(cd[4] + ('cd', 4)[10] + 4)]) + ceil32(32 * cd[(cd[36] + ('cd', 36)[1] + 4)]) + (2 * ceil32(return_data.size)) + (32 * sub_b6c1554e.length) + 679] = mem[ceil32(32 * cd[(cd[4] + ('cd', 4)[9] + 4)]) + ceil32(32 * cd[(cd[4] + ('cd', 4)[10] + 4)]) + ceil32(32 * cd[(cd[36] + ('cd', 36)[1] + 4)]) + (2 * ceil32(return_data.size)) + 687 len 20]
                        require ext_code.size(sub_3ef67e9fAddress)
                        staticcall sub_3ef67e9fAddress.getPair(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args mem[ceil32(32 * cd[(cd[4] + ('cd', 4)[9] + 4)]) + ceil32(32 * cd[(cd[4] + ('cd', 4)[10] + 4)]) + ceil32(32 * cd[(cd[36] + ('cd', 36)[1] + 4)]) + (2 * ceil32(return_data.size)) + (32 * sub_b6c1554e.length) + 679], address(_1839)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        sub_f5e41055Address = ext_call.return_data[12 len 20]
                        if ext_call.return_data[12 len 20]:
                            sub_6c302b9dAddress = sub_f5e41055Address
                else:
                    if (32 * sub_b6c1554e.length) + 32 > 64:
                        mem[ceil32(32 * cd[(cd[4] + ('cd', 4)[9] + 4)]) + ceil32(32 * cd[(cd[4] + ('cd', 4)[10] + 4)]) + ceil32(32 * cd[(cd[36] + ('cd', 36)[1] + 4)]) + (2 * ceil32(return_data.size)) + 707] = address(sub_b6c1554e.field_256)
                        idx = ceil32(32 * cd[(cd[4] + ('cd', 4)[9] + 4)]) + ceil32(32 * cd[(cd[4] + ('cd', 4)[10] + 4)]) + ceil32(32 * cd[(cd[36] + ('cd', 36)[1] + 4)]) + (2 * ceil32(return_data.size)) + 707
                        s = 1
                        while ceil32(32 * cd[(cd[4] + ('cd', 4)[9] + 4)]) + ceil32(32 * cd[(cd[4] + ('cd', 4)[10] + 4)]) + ceil32(32 * cd[(cd[36] + ('cd', 36)[1] + 4)]) + (2 * ceil32(return_data.size)) + (32 * sub_b6c1554e.length) + 643 > idx:
                            mem[idx + 32] = sub_b6c1554e[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                    if not sub_f5e41055Address:
                        if not sub_b6c1554e.length:
                            revert with 0, 50
                        if 1 >= sub_b6c1554e.length:
                            revert with 0, 50
                        require ext_code.size(sub_3ef67e9fAddress)
                        staticcall sub_3ef67e9fAddress.getPair(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args address(sub_b6c1554e.field_0), mem[ceil32(32 * cd[(cd[4] + ('cd', 4)[9] + 4)]) + ceil32(32 * cd[(cd[4] + ('cd', 4)[10] + 4)]) + ceil32(32 * cd[(cd[36] + ('cd', 36)[1] + 4)]) + (2 * ceil32(return_data.size)) + 719 len 20]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        sub_f5e41055Address = ext_call.return_data[12 len 20]
                        if ext_call.return_data[12 len 20]:
                            sub_6c302b9dAddress = sub_f5e41055Address
        else:
            s = 0
            idx = ceil32(32 * cd[(cd[4] + ('cd', 4)[9] + 4)]) + 545
            while ceil32(32 * cd[(cd[4] + ('cd', 4)[9] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[10] + 4)]) + 545 > idx:
                address(sub_98b31141[s]) = mem[idx + 12 len 20]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, (32 * cd[(cd[4] + ('cd', 4)[10] + 4)]) + 31) >> 5
            while sub_98b31141.length > idx:
                uint256(sub_98b31141[idx]) = 0
                idx = idx + 1
                continue 
            stor20 = uint8(bool(('cd', 4)[11]))
            stor21 = address(('cd', 36).length)
            stor22 = ('cd', 36)[0]
            sub_499839d9.length = cd[(cd[36] + ('cd', 36)[1] + 4)]
            if not cd[(cd[36] + ('cd', 36)[1] + 4)]:
                idx = 0
                while sub_499839d9.length > idx:
                    uint256(sub_499839d9[idx]) = 0
                    idx = idx + 1
                    continue 
                stor24 = uint8(bool(('cd', 36)[2]))
                require ext_code.size(stor8)
                staticcall stor8.factory() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                sub_3ef67e9fAddress = ext_call.return_data[12 len 20]
                sub_f5e41055Address = 0
                if not sub_b6c1554e.length:
                    if not sub_f5e41055Address:
                        if not sub_b6c1554e.length:
                            revert with 0, 50
                        if 1 >= sub_b6c1554e.length:
                            revert with 0, 50
                        _1843 = mem[ceil32(32 * cd[(cd[4] + ('cd', 4)[9] + 4)]) + ceil32(32 * cd[(cd[4] + ('cd', 4)[10] + 4)]) + ceil32(32 * cd[(cd[36] + ('cd', 36)[1] + 4)]) + (2 * ceil32(return_data.size)) + 707]
                        mem[ceil32(32 * cd[(cd[4] + ('cd', 4)[9] + 4)]) + ceil32(32 * cd[(cd[4] + ('cd', 4)[10] + 4)]) + ceil32(32 * cd[(cd[36] + ('cd', 36)[1] + 4)]) + (2 * ceil32(return_data.size)) + (32 * sub_b6c1554e.length) + 679] = mem[ceil32(32 * cd[(cd[4] + ('cd', 4)[9] + 4)]) + ceil32(32 * cd[(cd[4] + ('cd', 4)[10] + 4)]) + ceil32(32 * cd[(cd[36] + ('cd', 36)[1] + 4)]) + (2 * ceil32(return_data.size)) + 687 len 20]
                        require ext_code.size(sub_3ef67e9fAddress)
                        staticcall sub_3ef67e9fAddress.getPair(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args mem[ceil32(32 * cd[(cd[4] + ('cd', 4)[9] + 4)]) + ceil32(32 * cd[(cd[4] + ('cd', 4)[10] + 4)]) + ceil32(32 * cd[(cd[36] + ('cd', 36)[1] + 4)]) + (2 * ceil32(return_data.size)) + (32 * sub_b6c1554e.length) + 679], address(_1843)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        sub_f5e41055Address = ext_call.return_data[12 len 20]
                        if ext_call.return_data[12 len 20]:
                            sub_6c302b9dAddress = sub_f5e41055Address
                else:
                    if (32 * sub_b6c1554e.length) + 32 > 64:
                        mem[ceil32(32 * cd[(cd[4] + ('cd', 4)[9] + 4)]) + ceil32(32 * cd[(cd[4] + ('cd', 4)[10] + 4)]) + ceil32(32 * cd[(cd[36] + ('cd', 36)[1] + 4)]) + (2 * ceil32(return_data.size)) + 707] = address(sub_b6c1554e.field_256)
                        idx = ceil32(32 * cd[(cd[4] + ('cd', 4)[9] + 4)]) + ceil32(32 * cd[(cd[4] + ('cd', 4)[10] + 4)]) + ceil32(32 * cd[(cd[36] + ('cd', 36)[1] + 4)]) + (2 * ceil32(return_data.size)) + 707
                        s = 1
                        while ceil32(32 * cd[(cd[4] + ('cd', 4)[9] + 4)]) + ceil32(32 * cd[(cd[4] + ('cd', 4)[10] + 4)]) + ceil32(32 * cd[(cd[36] + ('cd', 36)[1] + 4)]) + (2 * ceil32(return_data.size)) + (32 * sub_b6c1554e.length) + 643 > idx:
                            mem[idx + 32] = sub_b6c1554e[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                    if not sub_f5e41055Address:
                        if not sub_b6c1554e.length:
                            revert with 0, 50
                        if 1 >= sub_b6c1554e.length:
                            revert with 0, 50
                        require ext_code.size(sub_3ef67e9fAddress)
                        staticcall sub_3ef67e9fAddress.getPair(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args address(sub_b6c1554e.field_0), mem[ceil32(32 * cd[(cd[4] + ('cd', 4)[9] + 4)]) + ceil32(32 * cd[(cd[4] + ('cd', 4)[10] + 4)]) + ceil32(32 * cd[(cd[36] + ('cd', 36)[1] + 4)]) + (2 * ceil32(return_data.size)) + 719 len 20]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        sub_f5e41055Address = ext_call.return_data[12 len 20]
                        if ext_call.return_data[12 len 20]:
                            sub_6c302b9dAddress = sub_f5e41055Address
            else:
                s = 0
                idx = ceil32(32 * cd[(cd[4] + ('cd', 4)[9] + 4)]) + ceil32(32 * cd[(cd[4] + ('cd', 4)[10] + 4)]) + 674
                while ceil32(32 * cd[(cd[4] + ('cd', 4)[9] + 4)]) + ceil32(32 * cd[(cd[4] + ('cd', 4)[10] + 4)]) + (32 * cd[(cd[36] + ('cd', 36)[1] + 4)]) + 674 > idx:
                    address(sub_499839d9[s]) = mem[idx + 12 len 20]
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = Mask(251, 0, (32 * cd[(cd[36] + ('cd', 36)[1] + 4)]) + 31) >> 5
                while sub_499839d9.length > idx:
                    uint256(sub_499839d9[idx]) = 0
                    idx = idx + 1
                    continue 
                stor24 = uint8(bool(('cd', 36)[2]))
                require ext_code.size(stor8)
                staticcall stor8.factory() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                sub_3ef67e9fAddress = ext_call.return_data[12 len 20]
                sub_f5e41055Address = 0
                if not sub_b6c1554e.length:
                    if not sub_f5e41055Address:
                        if not sub_b6c1554e.length:
                            revert with 0, 50
                        if 1 >= sub_b6c1554e.length:
                            revert with 0, 50
                        _1922 = mem[ceil32(32 * cd[(cd[4] + ('cd', 4)[9] + 4)]) + ceil32(32 * cd[(cd[4] + ('cd', 4)[10] + 4)]) + ceil32(32 * cd[(cd[36] + ('cd', 36)[1] + 4)]) + (2 * ceil32(return_data.size)) + 707]
                        mem[ceil32(32 * cd[(cd[4] + ('cd', 4)[9] + 4)]) + ceil32(32 * cd[(cd[4] + ('cd', 4)[10] + 4)]) + ceil32(32 * cd[(cd[36] + ('cd', 36)[1] + 4)]) + (2 * ceil32(return_data.size)) + (32 * sub_b6c1554e.length) + 679] = mem[ceil32(32 * cd[(cd[4] + ('cd', 4)[9] + 4)]) + ceil32(32 * cd[(cd[4] + ('cd', 4)[10] + 4)]) + ceil32(32 * cd[(cd[36] + ('cd', 36)[1] + 4)]) + (2 * ceil32(return_data.size)) + 687 len 20]
                        require ext_code.size(sub_3ef67e9fAddress)
                        staticcall sub_3ef67e9fAddress.getPair(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args mem[ceil32(32 * cd[(cd[4] + ('cd', 4)[9] + 4)]) + ceil32(32 * cd[(cd[4] + ('cd', 4)[10] + 4)]) + ceil32(32 * cd[(cd[36] + ('cd', 36)[1] + 4)]) + (2 * ceil32(return_data.size)) + (32 * sub_b6c1554e.length) + 679], address(_1922)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        sub_f5e41055Address = ext_call.return_data[12 len 20]
                        if ext_call.return_data[12 len 20]:
                            sub_6c302b9dAddress = sub_f5e41055Address
                else:
                    if (32 * sub_b6c1554e.length) + 32 > 64:
                        mem[ceil32(32 * cd[(cd[4] + ('cd', 4)[9] + 4)]) + ceil32(32 * cd[(cd[4] + ('cd', 4)[10] + 4)]) + ceil32(32 * cd[(cd[36] + ('cd', 36)[1] + 4)]) + (2 * ceil32(return_data.size)) + 707] = address(sub_b6c1554e.field_256)
                        idx = ceil32(32 * cd[(cd[4] + ('cd', 4)[9] + 4)]) + ceil32(32 * cd[(cd[4] + ('cd', 4)[10] + 4)]) + ceil32(32 * cd[(cd[36] + ('cd', 36)[1] + 4)]) + (2 * ceil32(return_data.size)) + 707
                        s = 1
                        while ceil32(32 * cd[(cd[4] + ('cd', 4)[9] + 4)]) + ceil32(32 * cd[(cd[4] + ('cd', 4)[10] + 4)]) + ceil32(32 * cd[(cd[36] + ('cd', 36)[1] + 4)]) + (2 * ceil32(return_data.size)) + (32 * sub_b6c1554e.length) + 643 > idx:
                            mem[idx + 32] = sub_b6c1554e[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                    if not sub_f5e41055Address:
                        if not sub_b6c1554e.length:
                            revert with 0, 50
                        if 1 >= sub_b6c1554e.length:
                            revert with 0, 50
                        require ext_code.size(sub_3ef67e9fAddress)
                        staticcall sub_3ef67e9fAddress.getPair(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args address(sub_b6c1554e.field_0), mem[ceil32(32 * cd[(cd[4] + ('cd', 4)[9] + 4)]) + ceil32(32 * cd[(cd[4] + ('cd', 4)[10] + 4)]) + ceil32(32 * cd[(cd[36] + ('cd', 36)[1] + 4)]) + (2 * ceil32(return_data.size)) + 719 len 20]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        sub_f5e41055Address = ext_call.return_data[12 len 20]
                        if ext_call.return_data[12 len 20]:
                            sub_6c302b9dAddress = sub_f5e41055Address
    uint8(stor1.field_160) = 1
}

function sub_bd7d229d(?) {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require calldata.size + -cd[4] - 4 >= 416
    require ('cd', 4).length == address(('cd', 4).length)
    mem[96] = ('cd', 4).length
    mem[128] = ('cd', 4)[0]
    mem[160] = ('cd', 4)[1]
    mem[192] = ('cd', 4)[2]
    mem[224] = ('cd', 4)[3]
    mem[256] = ('cd', 4)[4]
    mem[288] = ('cd', 4)[5]
    mem[320] = ('cd', 4)[6]
    mem[352] = ('cd', 4)[7]
    mem[384] = ('cd', 4)[8]
    require ('cd', 4)[9] <= test266151307()
    require cd[4] + ('cd', 4)[9] + 35 < calldata.size
    if cd[(cd[4] + ('cd', 4)[9] + 4)] > test266151307():
        revert with 0, 65
    if ceil32(32 * cd[(cd[4] + ('cd', 4)[9] + 4)]) + 513 < 512 or ceil32(32 * cd[(cd[4] + ('cd', 4)[9] + 4)]) + 513 > test266151307():
        revert with 0, 65
    mem[512] = cd[(cd[4] + ('cd', 4)[9] + 4)]
    require cd[4] + ('cd', 4)[9] + (32 * cd[(cd[4] + ('cd', 4)[9] + 4)]) + 36 <= calldata.size
    idx = 0
    s = cd[4] + ('cd', 4)[9] + 36
    t = 544
    while idx < cd[(cd[4] + ('cd', 4)[9] + 4)]:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[416] = 512
    require ('cd', 4)[10] <= test266151307()
    require cd[4] + ('cd', 4)[10] + 35 < calldata.size
    if cd[(cd[4] + ('cd', 4)[10] + 4)] > test266151307():
        revert with 0, 65
    if ceil32(32 * cd[(cd[4] + ('cd', 4)[10] + 4)]) + 514 < 513 or ceil32(32 * cd[(cd[4] + ('cd', 4)[9] + 4)]) + ceil32(32 * cd[(cd[4] + ('cd', 4)[10] + 4)]) + 514 > test266151307():
        revert with 0, 65
    mem[ceil32(32 * cd[(cd[4] + ('cd', 4)[9] + 4)]) + 513] = cd[(cd[4] + ('cd', 4)[10] + 4)]
    require cd[4] + ('cd', 4)[10] + (32 * cd[(cd[4] + ('cd', 4)[10] + 4)]) + 36 <= calldata.size
    idx = 0
    s = cd[4] + ('cd', 4)[10] + 36
    t = ceil32(32 * cd[(cd[4] + ('cd', 4)[9] + 4)]) + 545
    while idx < cd[(cd[4] + ('cd', 4)[10] + 4)]:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[448] = ceil32(32 * cd[(cd[4] + ('cd', 4)[9] + 4)]) + 513
    require ('cd', 4)[11] == bool(('cd', 4)[11])
    mem[480] = ('cd', 4)[11]
    require cd[36] <= test266151307()
    require calldata.size + -cd[36] - 4 >= 128
    if not bool(ceil32(32 * cd[(cd[4] + ('cd', 4)[9] + 4)]) + ceil32(32 * cd[(cd[4] + ('cd', 4)[10] + 4)]) + 642 <= test266151307()):
        revert with 0, 65
    require ('cd', 36).length == address(('cd', 36).length)
    require ('cd', 36)[1] <= test266151307()
    require cd[36] + ('cd', 36)[1] + 35 < calldata.size
    if cd[(cd[36] + ('cd', 36)[1] + 4)] > test266151307():
        revert with 0, 65
    if ceil32(32 * cd[(cd[36] + ('cd', 36)[1] + 4)]) + 643 < 642 or ceil32(32 * cd[(cd[4] + ('cd', 4)[9] + 4)]) + ceil32(32 * cd[(cd[4] + ('cd', 4)[10] + 4)]) + ceil32(32 * cd[(cd[36] + ('cd', 36)[1] + 4)]) + 643 > test266151307():
        revert with 0, 65
    mem[ceil32(32 * cd[(cd[4] + ('cd', 4)[9] + 4)]) + ceil32(32 * cd[(cd[4] + ('cd', 4)[10] + 4)]) + 642] = cd[(cd[36] + ('cd', 36)[1] + 4)]
    require cd[36] + ('cd', 36)[1] + (32 * cd[(cd[36] + ('cd', 36)[1] + 4)]) + 36 <= calldata.size
    idx = 0
    s = cd[36] + ('cd', 36)[1] + 36
    t = ceil32(32 * cd[(cd[4] + ('cd', 4)[9] + 4)]) + ceil32(32 * cd[(cd[4] + ('cd', 4)[10] + 4)]) + 674
    while idx < cd[(cd[36] + ('cd', 36)[1] + 4)]:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ('cd', 36)[2] == bool(('cd', 36)[2])
    mem[ceil32(32 * cd[(cd[4] + ('cd', 4)[9] + 4)]) + ceil32(32 * cd[(cd[4] + ('cd', 4)[10] + 4)]) + 610] = ('cd', 36)[2]
    mem[ceil32(32 * cd[(cd[4] + ('cd', 4)[9] + 4)]) + ceil32(32 * cd[(cd[4] + ('cd', 4)[10] + 4)]) + ceil32(32 * cd[(cd[36] + ('cd', 36)[1] + 4)]) + 647] = msg.sender
    require ext_code.size(sub_db45a8b8Address)
    call sub_db45a8b8Address.0xc69b23a2 with:
         gas gas_remaining wei
        args msg.sender
    mem[ceil32(32 * cd[(cd[4] + ('cd', 4)[9] + 4)]) + ceil32(32 * cd[(cd[4] + ('cd', 4)[10] + 4)]) + ceil32(32 * cd[(cd[36] + ('cd', 36)[1] + 4)]) + 643] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if bool(ext_call.return_data[0]) != 1:
        revert with 0, 'n'
    mem[64] = ceil32(32 * cd[(cd[4] + ('cd', 4)[9] + 4)]) + ceil32(32 * cd[(cd[4] + ('cd', 4)[10] + 4)]) + ceil32(32 * cd[(cd[36] + ('cd', 36)[1] + 4)]) + ceil32(return_data.size) + 771
    mem[ceil32(32 * cd[(cd[4] + ('cd', 4)[9] + 4)]) + ceil32(32 * cd[(cd[4] + ('cd', 4)[10] + 4)]) + ceil32(32 * cd[(cd[36] + ('cd', 36)[1] + 4)]) + ceil32(return_data.size) + 643] = 0
    mem[ceil32(32 * cd[(cd[4] + ('cd', 4)[9] + 4)]) + ceil32(32 * cd[(cd[4] + ('cd', 4)[10] + 4)]) + ceil32(32 * cd[(cd[36] + ('cd', 36)[1] + 4)]) + ceil32(return_data.size) + 675] = 0
    mem[ceil32(32 * cd[(cd[4] + ('cd', 4)[9] + 4)]) + ceil32(32 * cd[(cd[4] + ('cd', 4)[10] + 4)]) + ceil32(32 * cd[(cd[36] + ('cd', 36)[1] + 4)]) + ceil32(return_data.size) + 707] = 96
    mem[ceil32(32 * cd[(cd[4] + ('cd', 4)[9] + 4)]) + ceil32(32 * cd[(cd[4] + ('cd', 4)[10] + 4)]) + ceil32(32 * cd[(cd[36] + ('cd', 36)[1] + 4)]) + ceil32(return_data.size) + 739] = 0
    mem[ceil32(32 * cd[(cd[4] + ('cd', 4)[9] + 4)]) + ceil32(32 * cd[(cd[4] + ('cd', 4)[10] + 4)]) + 514] = address(stor28 xor address(('cd', 36).length))
    mem[ceil32(32 * cd[(cd[4] + ('cd', 4)[9] + 4)]) + ceil32(32 * cd[(cd[4] + ('cd', 4)[10] + 4)]) + 546] = stor28 xor ('cd', 36)[0]
    idx = 0
    while idx < mem[ceil32(32 * cd[(cd[4] + ('cd', 4)[9] + 4)]) + ceil32(32 * cd[(cd[4] + ('cd', 4)[10] + 4)]) + 642]:
        if idx >= mem[ceil32(32 * cd[(cd[4] + ('cd', 4)[9] + 4)]) + ceil32(32 * cd[(cd[4] + ('cd', 4)[10] + 4)]) + 642]:
            revert with 0, 50
        if idx >= mem[ceil32(32 * cd[(cd[4] + ('cd', 4)[9] + 4)]) + ceil32(32 * cd[(cd[4] + ('cd', 4)[10] + 4)]) + 642]:
            revert with 0, 50
        mem[(32 * idx) + ceil32(32 * cd[(cd[4] + ('cd', 4)[9] + 4)]) + ceil32(32 * cd[(cd[4] + ('cd', 4)[10] + 4)]) + 674] = address(mem[(32 * idx) + ceil32(32 * cd[(cd[4] + ('cd', 4)[9] + 4)]) + ceil32(32 * cd[(cd[4] + ('cd', 4)[10] + 4)]) + 686 len 20] xor stor28)
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    mem[ceil32(32 * cd[(cd[4] + ('cd', 4)[9] + 4)]) + ceil32(32 * cd[(cd[4] + ('cd', 4)[10] + 4)]) + 578] = ceil32(32 * cd[(cd[4] + ('cd', 4)[9] + 4)]) + ceil32(32 * cd[(cd[4] + ('cd', 4)[10] + 4)]) + 642
    stor21 = uint64(stor28 xor address(('cd', 36).length)) << 96
    stor22 = stor28 xor ('cd', 36)[0]
    sub_499839d9.length = mem[ceil32(32 * cd[(cd[4] + ('cd', 4)[9] + 4)]) + ceil32(32 * cd[(cd[4] + ('cd', 4)[10] + 4)]) + 642]
    mem[0] = 23
    if not mem[ceil32(32 * cd[(cd[4] + ('cd', 4)[9] + 4)]) + ceil32(32 * cd[(cd[4] + ('cd', 4)[10] + 4)]) + 642]:
        idx = 0
        while sub_499839d9.length > idx:
            uint256(sub_499839d9[idx]) = 0
            idx = idx + 1
            continue 
        stor24 = uint8(bool(('cd', 36)[2]))
        stor8 = mem[108 len 20]
        stor9 = mem[128]
        stor10 = mem[160]
        stor11 = mem[192]
        stor12 = mem[224]
        stor13 = mem[256]
        stor14 = mem[288]
        stor15 = mem[320]
        stor16 = mem[352]
        stor17 = mem[384]
        _6504 = mem[mem[416]]
        sub_b6c1554e.length = mem[mem[416]]
        mem[0] = 18
        if not _6504:
            idx = 0
            while sub_b6c1554e.length > idx:
                sub_b6c1554e[idx].field_0 = 0
                idx = idx + 1
                continue 
            _7772 = mem[mem[448]]
            sub_98b31141.length = mem[mem[448]]
            mem[0] = 19
            if not _7772:
                idx = 0
                while sub_98b31141.length > idx:
                    uint256(sub_98b31141[idx]) = 0
                    idx = idx + 1
                    continue 
                stor20 = uint8(bool(mem[480]))
                stor8 = address(mem[108 len 20] xor stor28)
                require ext_code.size(address(mem[108 len 20] xor stor28))
                staticcall address(mem[108 len 20] xor stor28).factory() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _9046 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_9046] == mem[_9046 + 12 len 20]
                sub_3ef67e9fAddress = mem[_9046 + 12 len 20]
                sub_f5e41055Address = 0
                _9068 = mem[416]
                _10280 = mem[mem[416]]
                idx = 0
                while idx < _10280:
                    if idx >= mem[_9068]:
                        revert with 0, 50
                    if idx >= mem[_9068]:
                        revert with 0, 50
                    mem[(32 * idx) + _9068 + 32] = address(mem[(32 * idx) + _9068 + 44 len 20] xor stor28)
                    if idx == -1:
                        revert with 0, 17
                    _10280 = mem[_9068]
                    idx = idx + 1
                    continue 
                _10284 = mem[_9068]
                sub_b6c1554e.length = mem[_9068]
                mem[0] = 18
                if not _10284:
                    idx = 0
                    while sub_b6c1554e.length > idx:
                        sub_b6c1554e[idx].field_0 = 0
                        idx = idx + 1
                        continue 
                    _11525 = mem[64]
                    mem[64] = mem[64] + (32 * sub_b6c1554e.length) + 32
                    mem[_11525] = sub_b6c1554e.length
                    if not sub_b6c1554e.length:
                        if sub_f5e41055Address:
                            _11557 = mem[448]
                            _12710 = mem[mem[448]]
                            idx = 0
                            while idx < _12710:
                                if idx >= mem[_11557]:
                                    revert with 0, 50
                                if idx >= mem[_11557]:
                                    revert with 0, 50
                                mem[(32 * idx) + _11557 + 32] = address(mem[(32 * idx) + _11557 + 44 len 20] xor stor28)
                                if idx == -1:
                                    revert with 0, 17
                                _12710 = mem[_11557]
                                idx = idx + 1
                                continue 
                            sub_98b31141.length = mem[_11557]
                            if not mem[_11557]:
                                idx = 0
                                while sub_98b31141.length > idx:
                                    uint256(sub_98b31141[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            else:
                                s = 0
                                idx = _11557 + 32
                                while _11557 + (32 * mem[_11557]) + 32 > idx:
                                    address(sub_98b31141[s]) = mem[idx + 12 len 20]
                                    s = s + 1
                                    idx = idx + 32
                                    continue 
                                idx = Mask(251, 0, (32 * mem[_11557]) + 31) >> 5
                                while sub_98b31141.length > idx:
                                    uint256(sub_98b31141[idx]) = 0
                                    idx = idx + 1
                                    continue 
                        else:
                            if not sub_b6c1554e.length:
                                revert with 0, 50
                            if 1 >= sub_b6c1554e.length:
                                revert with 0, 50
                            _11564 = mem[_11525 + 64]
                            mem[mem[64] + 4] = mem[_11525 + 44 len 20]
                            mem[mem[64] + 36] = address(_11564)
                            require ext_code.size(sub_3ef67e9fAddress)
                            staticcall sub_3ef67e9fAddress.getPair(address arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4], address(_11564)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _11583 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_11583] == mem[_11583 + 12 len 20]
                            sub_f5e41055Address = mem[_11583 + 12 len 20]
                            if not mem[_11583 + 12 len 20]:
                                _11707 = mem[448]
                                _12711 = mem[mem[448]]
                                idx = 0
                                while idx < _12711:
                                    if idx >= mem[_11707]:
                                        revert with 0, 50
                                    if idx >= mem[_11707]:
                                        revert with 0, 50
                                    mem[(32 * idx) + _11707 + 32] = address(mem[(32 * idx) + _11707 + 44 len 20] xor stor28)
                                    if idx == -1:
                                        revert with 0, 17
                                    _12711 = mem[_11707]
                                    idx = idx + 1
                                    continue 
                                sub_98b31141.length = mem[_11707]
                                if not mem[_11707]:
                                    idx = 0
                                    while sub_98b31141.length > idx:
                                        uint256(sub_98b31141[idx]) = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    s = 0
                                    idx = _11707 + 32
                                    while _11707 + (32 * mem[_11707]) + 32 > idx:
                                        address(sub_98b31141[s]) = mem[idx + 12 len 20]
                                        s = s + 1
                                        idx = idx + 32
                                        continue 
                                    idx = Mask(251, 0, (32 * mem[_11707]) + 31) >> 5
                                    while sub_98b31141.length > idx:
                                        uint256(sub_98b31141[idx]) = 0
                                        idx = idx + 1
                                        continue 
                            else:
                                sub_6c302b9dAddress = sub_f5e41055Address
                                _11708 = mem[448]
                                _12712 = mem[mem[448]]
                                idx = 0
                                while idx < _12712:
                                    if idx >= mem[_11708]:
                                        revert with 0, 50
                                    if idx >= mem[_11708]:
                                        revert with 0, 50
                                    mem[(32 * idx) + _11708 + 32] = address(mem[(32 * idx) + _11708 + 44 len 20] xor stor28)
                                    if idx == -1:
                                        revert with 0, 17
                                    _12712 = mem[_11708]
                                    idx = idx + 1
                                    continue 
                                sub_98b31141.length = mem[_11708]
                                if not mem[_11708]:
                                    idx = 0
                                    while sub_98b31141.length > idx:
                                        uint256(sub_98b31141[idx]) = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    s = 0
                                    idx = _11708 + 32
                                    while _11708 + (32 * mem[_11708]) + 32 > idx:
                                        address(sub_98b31141[s]) = mem[idx + 12 len 20]
                                        s = s + 1
                                        idx = idx + 32
                                        continue 
                                    idx = Mask(251, 0, (32 * mem[_11708]) + 31) >> 5
                                    while sub_98b31141.length > idx:
                                        uint256(sub_98b31141[idx]) = 0
                                        idx = idx + 1
                                        continue 
                    else:
                        mem[0] = 18
                        mem[_11525 + 32] = address(sub_b6c1554e.field_0)
                        idx = _11525 + 32
                        s = 0
                        while _11525 + (32 * sub_b6c1554e.length) > idx:
                            mem[idx + 32] = sub_b6c1554e[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        if sub_f5e41055Address:
                            _13932 = mem[448]
                            _14970 = mem[mem[448]]
                            idx = 0
                            while idx < _14970:
                                if idx >= mem[_13932]:
                                    revert with 0, 50
                                if idx >= mem[_13932]:
                                    revert with 0, 50
                                mem[(32 * idx) + _13932 + 32] = address(mem[(32 * idx) + _13932 + 44 len 20] xor stor28)
                                if idx == -1:
                                    revert with 0, 17
                                _14970 = mem[_13932]
                                idx = idx + 1
                                continue 
                            sub_98b31141.length = mem[_13932]
                            if not mem[_13932]:
                                idx = 0
                                while sub_98b31141.length > idx:
                                    uint256(sub_98b31141[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            else:
                                s = 0
                                idx = _13932 + 32
                                while _13932 + (32 * mem[_13932]) + 32 > idx:
                                    address(sub_98b31141[s]) = mem[idx + 12 len 20]
                                    s = s + 1
                                    idx = idx + 32
                                    continue 
                                idx = Mask(251, 0, (32 * mem[_13932]) + 31) >> 5
                                while sub_98b31141.length > idx:
                                    uint256(sub_98b31141[idx]) = 0
                                    idx = idx + 1
                                    continue 
                        else:
                            if not sub_b6c1554e.length:
                                revert with 0, 50
                            if 1 >= sub_b6c1554e.length:
                                revert with 0, 50
                            _13967 = mem[_11525 + 64]
                            mem[mem[64] + 4] = mem[_11525 + 44 len 20]
                            mem[mem[64] + 36] = address(_13967)
                            require ext_code.size(sub_3ef67e9fAddress)
                            staticcall sub_3ef67e9fAddress.getPair(address arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4], address(_13967)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _14020 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_14020] == mem[_14020 + 12 len 20]
                            sub_f5e41055Address = mem[_14020 + 12 len 20]
                            if not mem[_14020 + 12 len 20]:
                                _14309 = mem[448]
                                _14971 = mem[mem[448]]
                                idx = 0
                                while idx < _14971:
                                    if idx >= mem[_14309]:
                                        revert with 0, 50
                                    if idx >= mem[_14309]:
                                        revert with 0, 50
                                    mem[(32 * idx) + _14309 + 32] = address(mem[(32 * idx) + _14309 + 44 len 20] xor stor28)
                                    if idx == -1:
                                        revert with 0, 17
                                    _14971 = mem[_14309]
                                    idx = idx + 1
                                    continue 
                                sub_98b31141.length = mem[_14309]
                                if not mem[_14309]:
                                    idx = 0
                                    while sub_98b31141.length > idx:
                                        uint256(sub_98b31141[idx]) = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    s = 0
                                    idx = _14309 + 32
                                    while _14309 + (32 * mem[_14309]) + 32 > idx:
                                        address(sub_98b31141[s]) = mem[idx + 12 len 20]
                                        s = s + 1
                                        idx = idx + 32
                                        continue 
                                    idx = Mask(251, 0, (32 * mem[_14309]) + 31) >> 5
                                    while sub_98b31141.length > idx:
                                        uint256(sub_98b31141[idx]) = 0
                                        idx = idx + 1
                                        continue 
                            else:
                                sub_6c302b9dAddress = sub_f5e41055Address
                                _14310 = mem[448]
                                _14972 = mem[mem[448]]
                                idx = 0
                                while idx < _14972:
                                    if idx >= mem[_14310]:
                                        revert with 0, 50
                                    if idx >= mem[_14310]:
                                        revert with 0, 50
                                    mem[(32 * idx) + _14310 + 32] = address(mem[(32 * idx) + _14310 + 44 len 20] xor stor28)
                                    if idx == -1:
                                        revert with 0, 17
                                    _14972 = mem[_14310]
                                    idx = idx + 1
                                    continue 
                                sub_98b31141.length = mem[_14310]
                                if not mem[_14310]:
                                    idx = 0
                                    while sub_98b31141.length > idx:
                                        uint256(sub_98b31141[idx]) = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    s = 0
                                    idx = _14310 + 32
                                    while _14310 + (32 * mem[_14310]) + 32 > idx:
                                        address(sub_98b31141[s]) = mem[idx + 12 len 20]
                                        s = s + 1
                                        idx = idx + 32
                                        continue 
                                    idx = Mask(251, 0, (32 * mem[_14310]) + 31) >> 5
                                    while sub_98b31141.length > idx:
                                        uint256(sub_98b31141[idx]) = 0
                                        idx = idx + 1
                                        continue 
                else:
                    s = 0
                    idx = _9068 + 32
                    while _9068 + (32 * _10284) + 32 > idx:
                        sub_b6c1554e[s].field_0 = mem[idx + 12 len 20]
                        s = s + 1
                        idx = idx + 32
                        continue 
                    idx = Mask(251, 0, (32 * _10284) + 31) >> 5
                    while sub_b6c1554e.length > idx:
                        sub_b6c1554e[idx].field_0 = 0
                        idx = idx + 1
                        continue 
                    _12743 = mem[64]
                    mem[64] = mem[64] + (32 * sub_b6c1554e.length) + 32
                    mem[_12743] = sub_b6c1554e.length
                    if not sub_b6c1554e.length:
                        if sub_f5e41055Address:
                            _12775 = mem[448]
                            _13855 = mem[mem[448]]
                            idx = 0
                            while idx < _13855:
                                if idx >= mem[_12775]:
                                    revert with 0, 50
                                if idx >= mem[_12775]:
                                    revert with 0, 50
                                mem[(32 * idx) + _12775 + 32] = address(mem[(32 * idx) + _12775 + 44 len 20] xor stor28)
                                if idx == -1:
                                    revert with 0, 17
                                _13855 = mem[_12775]
                                idx = idx + 1
                                continue 
                            sub_98b31141.length = mem[_12775]
                            if not mem[_12775]:
                                idx = 0
                                while sub_98b31141.length > idx:
                                    uint256(sub_98b31141[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            else:
                                s = 0
                                idx = _12775 + 32
                                while _12775 + (32 * mem[_12775]) + 32 > idx:
                                    address(sub_98b31141[s]) = mem[idx + 12 len 20]
                                    s = s + 1
                                    idx = idx + 32
                                    continue 
                                idx = Mask(251, 0, (32 * mem[_12775]) + 31) >> 5
                                while sub_98b31141.length > idx:
                                    uint256(sub_98b31141[idx]) = 0
                                    idx = idx + 1
                                    continue 
                        else:
                            if not sub_b6c1554e.length:
                                revert with 0, 50
                            if 1 >= sub_b6c1554e.length:
                                revert with 0, 50
                            _12791 = mem[_12743 + 64]
                            mem[mem[64] + 4] = mem[_12743 + 44 len 20]
                            mem[mem[64] + 36] = address(_12791)
                            require ext_code.size(sub_3ef67e9fAddress)
                            staticcall sub_3ef67e9fAddress.getPair(address arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4], address(_12791)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _12867 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_12867] == mem[_12867 + 12 len 20]
                            sub_f5e41055Address = mem[_12867 + 12 len 20]
                            if not mem[_12867 + 12 len 20]:
                                _13035 = mem[448]
                                _13856 = mem[mem[448]]
                                idx = 0
                                while idx < _13856:
                                    if idx >= mem[_13035]:
                                        revert with 0, 50
                                    if idx >= mem[_13035]:
                                        revert with 0, 50
                                    mem[(32 * idx) + _13035 + 32] = address(mem[(32 * idx) + _13035 + 44 len 20] xor stor28)
                                    if idx == -1:
                                        revert with 0, 17
                                    _13856 = mem[_13035]
                                    idx = idx + 1
                                    continue 
                                sub_98b31141.length = mem[_13035]
                                if not mem[_13035]:
                                    idx = 0
                                    while sub_98b31141.length > idx:
                                        uint256(sub_98b31141[idx]) = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    s = 0
                                    idx = _13035 + 32
                                    while _13035 + (32 * mem[_13035]) + 32 > idx:
                                        address(sub_98b31141[s]) = mem[idx + 12 len 20]
                                        s = s + 1
                                        idx = idx + 32
                                        continue 
                                    idx = Mask(251, 0, (32 * mem[_13035]) + 31) >> 5
                                    while sub_98b31141.length > idx:
                                        uint256(sub_98b31141[idx]) = 0
                                        idx = idx + 1
                                        continue 
                            else:
                                sub_6c302b9dAddress = sub_f5e41055Address
                                _13036 = mem[448]
                                _13857 = mem[mem[448]]
                                idx = 0
                                while idx < _13857:
                                    if idx >= mem[_13036]:
                                        revert with 0, 50
                                    if idx >= mem[_13036]:
                                        revert with 0, 50
                                    mem[(32 * idx) + _13036 + 32] = address(mem[(32 * idx) + _13036 + 44 len 20] xor stor28)
                                    if idx == -1:
                                        revert with 0, 17
                                    _13857 = mem[_13036]
                                    idx = idx + 1
                                    continue 
                                sub_98b31141.length = mem[_13036]
                                if not mem[_13036]:
                                    idx = 0
                                    while sub_98b31141.length > idx:
                                        uint256(sub_98b31141[idx]) = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    s = 0
                                    idx = _13036 + 32
                                    while _13036 + (32 * mem[_13036]) + 32 > idx:
                                        address(sub_98b31141[s]) = mem[idx + 12 len 20]
                                        s = s + 1
                                        idx = idx + 32
                                        continue 
                                    idx = Mask(251, 0, (32 * mem[_13036]) + 31) >> 5
                                    while sub_98b31141.length > idx:
                                        uint256(sub_98b31141[idx]) = 0
                                        idx = idx + 1
                                        continue 
                    else:
                        mem[0] = 18
                        mem[_12743 + 32] = address(sub_b6c1554e.field_0)
                        idx = _12743 + 32
                        s = 0
                        while _12743 + (32 * sub_b6c1554e.length) > idx:
                            mem[idx + 32] = sub_b6c1554e[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        if sub_f5e41055Address:
                            _15113 = mem[448]
                            _16166 = mem[mem[448]]
                            idx = 0
                            while idx < _16166:
                                if idx >= mem[_15113]:
                                    revert with 0, 50
                                if idx >= mem[_15113]:
                                    revert with 0, 50
                                mem[(32 * idx) + _15113 + 32] = address(mem[(32 * idx) + _15113 + 44 len 20] xor stor28)
                                if idx == -1:
                                    revert with 0, 17
                                _16166 = mem[_15113]
                                idx = idx + 1
                                continue 
                            sub_98b31141.length = mem[_15113]
                            if not mem[_15113]:
                                idx = 0
                                while sub_98b31141.length > idx:
                                    uint256(sub_98b31141[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            else:
                                s = 0
                                idx = _15113 + 32
                                while _15113 + (32 * mem[_15113]) + 32 > idx:
                                    address(sub_98b31141[s]) = mem[idx + 12 len 20]
                                    s = s + 1
                                    idx = idx + 32
                                    continue 
                                idx = Mask(251, 0, (32 * mem[_15113]) + 31) >> 5
                                while sub_98b31141.length > idx:
                                    uint256(sub_98b31141[idx]) = 0
                                    idx = idx + 1
                                    continue 
                        else:
                            if not sub_b6c1554e.length:
                                revert with 0, 50
                            if 1 >= sub_b6c1554e.length:
                                revert with 0, 50
                            _15219 = mem[_12743 + 64]
                            mem[mem[64] + 4] = mem[_12743 + 44 len 20]
                            mem[mem[64] + 36] = address(_15219)
                            require ext_code.size(sub_3ef67e9fAddress)
                            staticcall sub_3ef67e9fAddress.getPair(address arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4], address(_15219)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _15343 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_15343] == mem[_15343 + 12 len 20]
                            sub_f5e41055Address = mem[_15343 + 12 len 20]
                            if not mem[_15343 + 12 len 20]:
                                _15714 = mem[448]
                                _16167 = mem[mem[448]]
                                idx = 0
                                while idx < _16167:
                                    if idx >= mem[_15714]:
                                        revert with 0, 50
                                    if idx >= mem[_15714]:
                                        revert with 0, 50
                                    mem[(32 * idx) + _15714 + 32] = address(mem[(32 * idx) + _15714 + 44 len 20] xor stor28)
                                    if idx == -1:
                                        revert with 0, 17
                                    _16167 = mem[_15714]
                                    idx = idx + 1
                                    continue 
                                sub_98b31141.length = mem[_15714]
                                if not mem[_15714]:
                                    idx = 0
                                    while sub_98b31141.length > idx:
                                        uint256(sub_98b31141[idx]) = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    s = 0
                                    idx = _15714 + 32
                                    while _15714 + (32 * mem[_15714]) + 32 > idx:
                                        address(sub_98b31141[s]) = mem[idx + 12 len 20]
                                        s = s + 1
                                        idx = idx + 32
                                        continue 
                                    idx = Mask(251, 0, (32 * mem[_15714]) + 31) >> 5
                                    while sub_98b31141.length > idx:
                                        uint256(sub_98b31141[idx]) = 0
                                        idx = idx + 1
                                        continue 
                            else:
                                sub_6c302b9dAddress = sub_f5e41055Address
                                _15715 = mem[448]
                                _16168 = mem[mem[448]]
                                idx = 0
                                while idx < _16168:
                                    if idx >= mem[_15715]:
                                        revert with 0, 50
                                    if idx >= mem[_15715]:
                                        revert with 0, 50
                                    mem[(32 * idx) + _15715 + 32] = address(mem[(32 * idx) + _15715 + 44 len 20] xor stor28)
                                    if idx == -1:
                                        revert with 0, 17
                                    _16168 = mem[_15715]
                                    idx = idx + 1
                                    continue 
                                sub_98b31141.length = mem[_15715]
                                if not mem[_15715]:
                                    idx = 0
                                    while sub_98b31141.length > idx:
                                        uint256(sub_98b31141[idx]) = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    s = 0
                                    idx = _15715 + 32
                                    while _15715 + (32 * mem[_15715]) + 32 > idx:
                                        address(sub_98b31141[s]) = mem[idx + 12 len 20]
                                        s = s + 1
                                        idx = idx + 32
                                        continue 
                                    idx = Mask(251, 0, (32 * mem[_15715]) + 31) >> 5
                                    while sub_98b31141.length > idx:
                                        uint256(sub_98b31141[idx]) = 0
                                        idx = idx + 1
                                        continue 
            else:
                s = 0
                idx = mem[448] + 32
                while mem[448] + (32 * _7772) + 32 > idx:
                    address(sub_98b31141[s]) = mem[idx + 12 len 20]
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = Mask(251, 0, (32 * _7772) + 31) >> 5
                while sub_98b31141.length > idx:
                    uint256(sub_98b31141[idx]) = 0
                    idx = idx + 1
                    continue 
                stor20 = uint8(bool(mem[480]))
                stor8 = address(mem[108 len 20] xor stor28)
                require ext_code.size(address(mem[108 len 20] xor stor28))
                staticcall address(mem[108 len 20] xor stor28).factory() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _10303 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_10303] == mem[_10303 + 12 len 20]
                sub_3ef67e9fAddress = mem[_10303 + 12 len 20]
                sub_f5e41055Address = 0
                _10330 = mem[416]
                _11511 = mem[mem[416]]
                idx = 0
                while idx < _11511:
                    if idx >= mem[_10330]:
                        revert with 0, 50
                    if idx >= mem[_10330]:
                        revert with 0, 50
                    mem[(32 * idx) + _10330 + 32] = address(mem[(32 * idx) + _10330 + 44 len 20] xor stor28)
                    if idx == -1:
                        revert with 0, 17
                    _11511 = mem[_10330]
                    idx = idx + 1
                    continue 
                _11519 = mem[_10330]
                sub_b6c1554e.length = mem[_10330]
                mem[0] = 18
                if not _11519:
                    idx = 0
                    while sub_b6c1554e.length > idx:
                        sub_b6c1554e[idx].field_0 = 0
                        idx = idx + 1
                        continue 
                    _12744 = mem[64]
                    mem[64] = mem[64] + (32 * sub_b6c1554e.length) + 32
                    mem[_12744] = sub_b6c1554e.length
                    if not sub_b6c1554e.length:
                        if sub_f5e41055Address:
                            _12778 = mem[448]
                            _13858 = mem[mem[448]]
                            idx = 0
                            while idx < _13858:
                                if idx >= mem[_12778]:
                                    revert with 0, 50
                                if idx >= mem[_12778]:
                                    revert with 0, 50
                                mem[(32 * idx) + _12778 + 32] = address(mem[(32 * idx) + _12778 + 44 len 20] xor stor28)
                                if idx == -1:
                                    revert with 0, 17
                                _13858 = mem[_12778]
                                idx = idx + 1
                                continue 
                            sub_98b31141.length = mem[_12778]
                            if not mem[_12778]:
                                idx = 0
                                while sub_98b31141.length > idx:
                                    uint256(sub_98b31141[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            else:
                                s = 0
                                idx = _12778 + 32
                                while _12778 + (32 * mem[_12778]) + 32 > idx:
                                    address(sub_98b31141[s]) = mem[idx + 12 len 20]
                                    s = s + 1
                                    idx = idx + 32
                                    continue 
                                idx = Mask(251, 0, (32 * mem[_12778]) + 31) >> 5
                                while sub_98b31141.length > idx:
                                    uint256(sub_98b31141[idx]) = 0
                                    idx = idx + 1
                                    continue 
                        else:
                            if not sub_b6c1554e.length:
                                revert with 0, 50
                            if 1 >= sub_b6c1554e.length:
                                revert with 0, 50
                            _12793 = mem[_12744 + 64]
                            mem[mem[64] + 4] = mem[_12744 + 44 len 20]
                            mem[mem[64] + 36] = address(_12793)
                            require ext_code.size(sub_3ef67e9fAddress)
                            staticcall sub_3ef67e9fAddress.getPair(address arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4], address(_12793)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _12870 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_12870] == mem[_12870 + 12 len 20]
                            sub_f5e41055Address = mem[_12870 + 12 len 20]
                            if not mem[_12870 + 12 len 20]:
                                _13037 = mem[448]
                                _13859 = mem[mem[448]]
                                idx = 0
                                while idx < _13859:
                                    if idx >= mem[_13037]:
                                        revert with 0, 50
                                    if idx >= mem[_13037]:
                                        revert with 0, 50
                                    mem[(32 * idx) + _13037 + 32] = address(mem[(32 * idx) + _13037 + 44 len 20] xor stor28)
                                    if idx == -1:
                                        revert with 0, 17
                                    _13859 = mem[_13037]
                                    idx = idx + 1
                                    continue 
                                sub_98b31141.length = mem[_13037]
                                if not mem[_13037]:
                                    idx = 0
                                    while sub_98b31141.length > idx:
                                        uint256(sub_98b31141[idx]) = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    s = 0
                                    idx = _13037 + 32
                                    while _13037 + (32 * mem[_13037]) + 32 > idx:
                                        address(sub_98b31141[s]) = mem[idx + 12 len 20]
                                        s = s + 1
                                        idx = idx + 32
                                        continue 
                                    idx = Mask(251, 0, (32 * mem[_13037]) + 31) >> 5
                                    while sub_98b31141.length > idx:
                                        uint256(sub_98b31141[idx]) = 0
                                        idx = idx + 1
                                        continue 
                            else:
                                sub_6c302b9dAddress = sub_f5e41055Address
                                _13038 = mem[448]
                                _13860 = mem[mem[448]]
                                idx = 0
                                while idx < _13860:
                                    if idx >= mem[_13038]:
                                        revert with 0, 50
                                    if idx >= mem[_13038]:
                                        revert with 0, 50
                                    mem[(32 * idx) + _13038 + 32] = address(mem[(32 * idx) + _13038 + 44 len 20] xor stor28)
                                    if idx == -1:
                                        revert with 0, 17
                                    _13860 = mem[_13038]
                                    idx = idx + 1
                                    continue 
                                sub_98b31141.length = mem[_13038]
                                if not mem[_13038]:
                                    idx = 0
                                    while sub_98b31141.length > idx:
                                        uint256(sub_98b31141[idx]) = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    s = 0
                                    idx = _13038 + 32
                                    while _13038 + (32 * mem[_13038]) + 32 > idx:
                                        address(sub_98b31141[s]) = mem[idx + 12 len 20]
                                        s = s + 1
                                        idx = idx + 32
                                        continue 
                                    idx = Mask(251, 0, (32 * mem[_13038]) + 31) >> 5
                                    while sub_98b31141.length > idx:
                                        uint256(sub_98b31141[idx]) = 0
                                        idx = idx + 1
                                        continue 
                    else:
                        mem[0] = 18
                        mem[_12744 + 32] = address(sub_b6c1554e.field_0)
                        idx = _12744 + 32
                        s = 0
                        while _12744 + (32 * sub_b6c1554e.length) > idx:
                            mem[idx + 32] = sub_b6c1554e[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        if sub_f5e41055Address:
                            _15134 = mem[448]
                            _16169 = mem[mem[448]]
                            idx = 0
                            while idx < _16169:
                                if idx >= mem[_15134]:
                                    revert with 0, 50
                                if idx >= mem[_15134]:
                                    revert with 0, 50
                                mem[(32 * idx) + _15134 + 32] = address(mem[(32 * idx) + _15134 + 44 len 20] xor stor28)
                                if idx == -1:
                                    revert with 0, 17
                                _16169 = mem[_15134]
                                idx = idx + 1
                                continue 
                            sub_98b31141.length = mem[_15134]
                            if not mem[_15134]:
                                idx = 0
                                while sub_98b31141.length > idx:
                                    uint256(sub_98b31141[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            else:
                                s = 0
                                idx = _15134 + 32
                                while _15134 + (32 * mem[_15134]) + 32 > idx:
                                    address(sub_98b31141[s]) = mem[idx + 12 len 20]
                                    s = s + 1
                                    idx = idx + 32
                                    continue 
                                idx = Mask(251, 0, (32 * mem[_15134]) + 31) >> 5
                                while sub_98b31141.length > idx:
                                    uint256(sub_98b31141[idx]) = 0
                                    idx = idx + 1
                                    continue 
                        else:
                            if not sub_b6c1554e.length:
                                revert with 0, 50
                            if 1 >= sub_b6c1554e.length:
                                revert with 0, 50
                            _15221 = mem[_12744 + 64]
                            mem[mem[64] + 4] = mem[_12744 + 44 len 20]
                            mem[mem[64] + 36] = address(_15221)
                            require ext_code.size(sub_3ef67e9fAddress)
                            staticcall sub_3ef67e9fAddress.getPair(address arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4], address(_15221)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _15346 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_15346] == mem[_15346 + 12 len 20]
                            sub_f5e41055Address = mem[_15346 + 12 len 20]
                            if not mem[_15346 + 12 len 20]:
                                _15716 = mem[448]
                                _16170 = mem[mem[448]]
                                idx = 0
                                while idx < _16170:
                                    if idx >= mem[_15716]:
                                        revert with 0, 50
                                    if idx >= mem[_15716]:
                                        revert with 0, 50
                                    mem[(32 * idx) + _15716 + 32] = address(mem[(32 * idx) + _15716 + 44 len 20] xor stor28)
                                    if idx == -1:
                                        revert with 0, 17
                                    _16170 = mem[_15716]
                                    idx = idx + 1
                                    continue 
                                sub_98b31141.length = mem[_15716]
                                if not mem[_15716]:
                                    idx = 0
                                    while sub_98b31141.length > idx:
                                        uint256(sub_98b31141[idx]) = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    s = 0
                                    idx = _15716 + 32
                                    while _15716 + (32 * mem[_15716]) + 32 > idx:
                                        address(sub_98b31141[s]) = mem[idx + 12 len 20]
                                        s = s + 1
                                        idx = idx + 32
                                        continue 
                                    idx = Mask(251, 0, (32 * mem[_15716]) + 31) >> 5
                                    while sub_98b31141.length > idx:
                                        uint256(sub_98b31141[idx]) = 0
                                        idx = idx + 1
                                        continue 
                            else:
                                sub_6c302b9dAddress = sub_f5e41055Address
                                _15717 = mem[448]
                                _16171 = mem[mem[448]]
                                idx = 0
                                while idx < _16171:
                                    if idx >= mem[_15717]:
                                        revert with 0, 50
                                    if idx >= mem[_15717]:
                                        revert with 0, 50
                                    mem[(32 * idx) + _15717 + 32] = address(mem[(32 * idx) + _15717 + 44 len 20] xor stor28)
                                    if idx == -1:
                                        revert with 0, 17
                                    _16171 = mem[_15717]
                                    idx = idx + 1
                                    continue 
                                sub_98b31141.length = mem[_15717]
                                if not mem[_15717]:
                                    idx = 0
                                    while sub_98b31141.length > idx:
                                        uint256(sub_98b31141[idx]) = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    s = 0
                                    idx = _15717 + 32
                                    while _15717 + (32 * mem[_15717]) + 32 > idx:
                                        address(sub_98b31141[s]) = mem[idx + 12 len 20]
                                        s = s + 1
                                        idx = idx + 32
                                        continue 
                                    idx = Mask(251, 0, (32 * mem[_15717]) + 31) >> 5
                                    while sub_98b31141.length > idx:
                                        uint256(sub_98b31141[idx]) = 0
                                        idx = idx + 1
                                        continue 
                else:
                    s = 0
                    idx = _10330 + 32
                    while _10330 + (32 * _11519) + 32 > idx:
                        sub_b6c1554e[s].field_0 = mem[idx + 12 len 20]
                        s = s + 1
                        idx = idx + 32
                        continue 
                    idx = Mask(251, 0, (32 * _11519) + 31) >> 5
                    while sub_b6c1554e.length > idx:
                        sub_b6c1554e[idx].field_0 = 0
                        idx = idx + 1
                        continue 
                    _13947 = mem[64]
                    mem[64] = mem[64] + (32 * sub_b6c1554e.length) + 32
                    mem[_13947] = sub_b6c1554e.length
                    if not sub_b6c1554e.length:
                        if sub_f5e41055Address:
                            _14021 = mem[448]
                            _14973 = mem[mem[448]]
                            idx = 0
                            while idx < _14973:
                                if idx >= mem[_14021]:
                                    revert with 0, 50
                                if idx >= mem[_14021]:
                                    revert with 0, 50
                                mem[(32 * idx) + _14021 + 32] = address(mem[(32 * idx) + _14021 + 44 len 20] xor stor28)
                                if idx == -1:
                                    revert with 0, 17
                                _14973 = mem[_14021]
                                idx = idx + 1
                                continue 
                            sub_98b31141.length = mem[_14021]
                            if not mem[_14021]:
                                idx = 0
                                while sub_98b31141.length > idx:
                                    uint256(sub_98b31141[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            else:
                                s = 0
                                idx = _14021 + 32
                                while _14021 + (32 * mem[_14021]) + 32 > idx:
                                    address(sub_98b31141[s]) = mem[idx + 12 len 20]
                                    s = s + 1
                                    idx = idx + 32
                                    continue 
                                idx = Mask(251, 0, (32 * mem[_14021]) + 31) >> 5
                                while sub_98b31141.length > idx:
                                    uint256(sub_98b31141[idx]) = 0
                                    idx = idx + 1
                                    continue 
                        else:
                            if not sub_b6c1554e.length:
                                revert with 0, 50
                            if 1 >= sub_b6c1554e.length:
                                revert with 0, 50
                            _14044 = mem[_13947 + 64]
                            mem[mem[64] + 4] = mem[_13947 + 44 len 20]
                            mem[mem[64] + 36] = address(_14044)
                            require ext_code.size(sub_3ef67e9fAddress)
                            staticcall sub_3ef67e9fAddress.getPair(address arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4], address(_14044)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _14200 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_14200] == mem[_14200 + 12 len 20]
                            sub_f5e41055Address = mem[_14200 + 12 len 20]
                            if not mem[_14200 + 12 len 20]:
                                _14395 = mem[448]
                                _14974 = mem[mem[448]]
                                idx = 0
                                while idx < _14974:
                                    if idx >= mem[_14395]:
                                        revert with 0, 50
                                    if idx >= mem[_14395]:
                                        revert with 0, 50
                                    mem[(32 * idx) + _14395 + 32] = address(mem[(32 * idx) + _14395 + 44 len 20] xor stor28)
                                    if idx == -1:
                                        revert with 0, 17
                                    _14974 = mem[_14395]
                                    idx = idx + 1
                                    continue 
                                sub_98b31141.length = mem[_14395]
                                if not mem[_14395]:
                                    idx = 0
                                    while sub_98b31141.length > idx:
                                        uint256(sub_98b31141[idx]) = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    s = 0
                                    idx = _14395 + 32
                                    while _14395 + (32 * mem[_14395]) + 32 > idx:
                                        address(sub_98b31141[s]) = mem[idx + 12 len 20]
                                        s = s + 1
                                        idx = idx + 32
                                        continue 
                                    idx = Mask(251, 0, (32 * mem[_14395]) + 31) >> 5
                                    while sub_98b31141.length > idx:
                                        uint256(sub_98b31141[idx]) = 0
                                        idx = idx + 1
                                        continue 
                            else:
                                sub_6c302b9dAddress = sub_f5e41055Address
                                _14396 = mem[448]
                                _14975 = mem[mem[448]]
                                idx = 0
                                while idx < _14975:
                                    if idx >= mem[_14396]:
                                        revert with 0, 50
                                    if idx >= mem[_14396]:
                                        revert with 0, 50
                                    mem[(32 * idx) + _14396 + 32] = address(mem[(32 * idx) + _14396 + 44 len 20] xor stor28)
                                    if idx == -1:
                                        revert with 0, 17
                                    _14975 = mem[_14396]
                                    idx = idx + 1
                                    continue 
                                sub_98b31141.length = mem[_14396]
                                if not mem[_14396]:
                                    idx = 0
                                    while sub_98b31141.length > idx:
                                        uint256(sub_98b31141[idx]) = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    s = 0
                                    idx = _14396 + 32
                                    while _14396 + (32 * mem[_14396]) + 32 > idx:
                                        address(sub_98b31141[s]) = mem[idx + 12 len 20]
                                        s = s + 1
                                        idx = idx + 32
                                        continue 
                                    idx = Mask(251, 0, (32 * mem[_14396]) + 31) >> 5
                                    while sub_98b31141.length > idx:
                                        uint256(sub_98b31141[idx]) = 0
                                        idx = idx + 1
                                        continue 
                    else:
                        mem[0] = 18
                        mem[_13947 + 32] = address(sub_b6c1554e.field_0)
                        idx = _13947 + 32
                        s = 0
                        while _13947 + (32 * sub_b6c1554e.length) > idx:
                            mem[idx + 32] = sub_b6c1554e[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        if sub_f5e41055Address:
                            _16373 = mem[448]
                            _17445 = mem[mem[448]]
                            idx = 0
                            while idx < _17445:
                                if idx >= mem[_16373]:
                                    revert with 0, 50
                                if idx >= mem[_16373]:
                                    revert with 0, 50
                                mem[(32 * idx) + _16373 + 32] = address(mem[(32 * idx) + _16373 + 44 len 20] xor stor28)
                                if idx == -1:
                                    revert with 0, 17
                                _17445 = mem[_16373]
                                idx = idx + 1
                                continue 
                            sub_98b31141.length = mem[_16373]
                            if not mem[_16373]:
                                idx = 0
                                while sub_98b31141.length > idx:
                                    uint256(sub_98b31141[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            else:
                                s = 0
                                idx = _16373 + 32
                                while _16373 + (32 * mem[_16373]) + 32 > idx:
                                    address(sub_98b31141[s]) = mem[idx + 12 len 20]
                                    s = s + 1
                                    idx = idx + 32
                                    continue 
                                idx = Mask(251, 0, (32 * mem[_16373]) + 31) >> 5
                                while sub_98b31141.length > idx:
                                    uint256(sub_98b31141[idx]) = 0
                                    idx = idx + 1
                                    continue 
                        else:
                            if not sub_b6c1554e.length:
                                revert with 0, 50
                            if 1 >= sub_b6c1554e.length:
                                revert with 0, 50
                            _16554 = mem[_13947 + 64]
                            mem[mem[64] + 4] = mem[_13947 + 44 len 20]
                            mem[mem[64] + 36] = address(_16554)
                            require ext_code.size(sub_3ef67e9fAddress)
                            staticcall sub_3ef67e9fAddress.getPair(address arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4], address(_16554)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _16738 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_16738] == mem[_16738 + 12 len 20]
                            sub_f5e41055Address = mem[_16738 + 12 len 20]
                            if not mem[_16738 + 12 len 20]:
                                _17116 = mem[448]
                                _17446 = mem[mem[448]]
                                idx = 0
                                while idx < _17446:
                                    if idx >= mem[_17116]:
                                        revert with 0, 50
                                    if idx >= mem[_17116]:
                                        revert with 0, 50
                                    mem[(32 * idx) + _17116 + 32] = address(mem[(32 * idx) + _17116 + 44 len 20] xor stor28)
                                    if idx == -1:
                                        revert with 0, 17
                                    _17446 = mem[_17116]
                                    idx = idx + 1
                                    continue 
                                sub_98b31141.length = mem[_17116]
                                if not mem[_17116]:
                                    idx = 0
                                    while sub_98b31141.length > idx:
                                        uint256(sub_98b31141[idx]) = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    s = 0
                                    idx = _17116 + 32
                                    while _17116 + (32 * mem[_17116]) + 32 > idx:
                                        address(sub_98b31141[s]) = mem[idx + 12 len 20]
                                        s = s + 1
                                        idx = idx + 32
                                        continue 
                                    idx = Mask(251, 0, (32 * mem[_17116]) + 31) >> 5
                                    while sub_98b31141.length > idx:
                                        uint256(sub_98b31141[idx]) = 0
                                        idx = idx + 1
                                        continue 
                            else:
                                sub_6c302b9dAddress = sub_f5e41055Address
                                _17117 = mem[448]
                                _17447 = mem[mem[448]]
                                idx = 0
                                while idx < _17447:
                                    if idx >= mem[_17117]:
                                        revert with 0, 50
                                    if idx >= mem[_17117]:
                                        revert with 0, 50
                                    mem[(32 * idx) + _17117 + 32] = address(mem[(32 * idx) + _17117 + 44 len 20] xor stor28)
                                    if idx == -1:
                                        revert with 0, 17
                                    _17447 = mem[_17117]
                                    idx = idx + 1
                                    continue 
                                sub_98b31141.length = mem[_17117]
                                if not mem[_17117]:
                                    idx = 0
                                    while sub_98b31141.length > idx:
                                        uint256(sub_98b31141[idx]) = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    s = 0
                                    idx = _17117 + 32
                                    while _17117 + (32 * mem[_17117]) + 32 > idx:
                                        address(sub_98b31141[s]) = mem[idx + 12 len 20]
                                        s = s + 1
                                        idx = idx + 32
                                        continue 
                                    idx = Mask(251, 0, (32 * mem[_17117]) + 31) >> 5
                                    while sub_98b31141.length > idx:
                                        uint256(sub_98b31141[idx]) = 0
                                        idx = idx + 1
                                        continue 
        else:
            s = 0
            idx = mem[416] + 32
            while mem[416] + (32 * _6504) + 32 > idx:
                sub_b6c1554e[s].field_0 = mem[idx + 12 len 20]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, (32 * _6504) + 31) >> 5
            while sub_b6c1554e.length > idx:
                sub_b6c1554e[idx].field_0 = 0
                idx = idx + 1
                continue 
            _9041 = mem[mem[448]]
            sub_98b31141.length = mem[mem[448]]
            mem[0] = 19
            if not _9041:
                idx = 0
                while sub_98b31141.length > idx:
                    uint256(sub_98b31141[idx]) = 0
                    idx = idx + 1
                    continue 
                stor20 = uint8(bool(mem[480]))
                stor8 = address(mem[108 len 20] xor stor28)
                require ext_code.size(address(mem[108 len 20] xor stor28))
                staticcall address(mem[108 len 20] xor stor28).factory() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _10304 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_10304] == mem[_10304 + 12 len 20]
                sub_3ef67e9fAddress = mem[_10304 + 12 len 20]
                sub_f5e41055Address = 0
                _10331 = mem[416]
                _11512 = mem[mem[416]]
                idx = 0
                while idx < _11512:
                    if idx >= mem[_10331]:
                        revert with 0, 50
                    if idx >= mem[_10331]:
                        revert with 0, 50
                    mem[(32 * idx) + _10331 + 32] = address(mem[(32 * idx) + _10331 + 44 len 20] xor stor28)
                    if idx == -1:
                        revert with 0, 17
                    _11512 = mem[_10331]
                    idx = idx + 1
                    continue 
                _11521 = mem[_10331]
                sub_b6c1554e.length = mem[_10331]
                mem[0] = 18
                if not _11521:
                    idx = 0
                    while sub_b6c1554e.length > idx:
                        sub_b6c1554e[idx].field_0 = 0
                        idx = idx + 1
                        continue 
                    _12745 = mem[64]
                    mem[64] = mem[64] + (32 * sub_b6c1554e.length) + 32
                    mem[_12745] = sub_b6c1554e.length
                    if not sub_b6c1554e.length:
                        if sub_f5e41055Address:
                            _12782 = mem[448]
                            _13861 = mem[mem[448]]
                            idx = 0
                            while idx < _13861:
                                if idx >= mem[_12782]:
                                    revert with 0, 50
                                if idx >= mem[_12782]:
                                    revert with 0, 50
                                mem[(32 * idx) + _12782 + 32] = address(mem[(32 * idx) + _12782 + 44 len 20] xor stor28)
                                if idx == -1:
                                    revert with 0, 17
                                _13861 = mem[_12782]
                                idx = idx + 1
                                continue 
                            sub_98b31141.length = mem[_12782]
                            if not mem[_12782]:
                                idx = 0
                                while sub_98b31141.length > idx:
                                    uint256(sub_98b31141[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            else:
                                s = 0
                                idx = _12782 + 32
                                while _12782 + (32 * mem[_12782]) + 32 > idx:
                                    address(sub_98b31141[s]) = mem[idx + 12 len 20]
                                    s = s + 1
                                    idx = idx + 32
                                    continue 
                                idx = Mask(251, 0, (32 * mem[_12782]) + 31) >> 5
                                while sub_98b31141.length > idx:
                                    uint256(sub_98b31141[idx]) = 0
                                    idx = idx + 1
                                    continue 
                        else:
                            if not sub_b6c1554e.length:
                                revert with 0, 50
                            if 1 >= sub_b6c1554e.length:
                                revert with 0, 50
                            _12795 = mem[_12745 + 64]
                            mem[mem[64] + 4] = mem[_12745 + 44 len 20]
                            mem[mem[64] + 36] = address(_12795)
                            require ext_code.size(sub_3ef67e9fAddress)
                            staticcall sub_3ef67e9fAddress.getPair(address arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4], address(_12795)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _12875 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_12875] == mem[_12875 + 12 len 20]
                            sub_f5e41055Address = mem[_12875 + 12 len 20]
                            if not mem[_12875 + 12 len 20]:
                                _13039 = mem[448]
                                _13862 = mem[mem[448]]
                                idx = 0
                                while idx < _13862:
                                    if idx >= mem[_13039]:
                                        revert with 0, 50
                                    if idx >= mem[_13039]:
                                        revert with 0, 50
                                    mem[(32 * idx) + _13039 + 32] = address(mem[(32 * idx) + _13039 + 44 len 20] xor stor28)
                                    if idx == -1:
                                        revert with 0, 17
                                    _13862 = mem[_13039]
                                    idx = idx + 1
                                    continue 
                                sub_98b31141.length = mem[_13039]
                                if not mem[_13039]:
                                    idx = 0
                                    while sub_98b31141.length > idx:
                                        uint256(sub_98b31141[idx]) = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    s = 0
                                    idx = _13039 + 32
                                    while _13039 + (32 * mem[_13039]) + 32 > idx:
                                        address(sub_98b31141[s]) = mem[idx + 12 len 20]
                                        s = s + 1
                                        idx = idx + 32
                                        continue 
                                    idx = Mask(251, 0, (32 * mem[_13039]) + 31) >> 5
                                    while sub_98b31141.length > idx:
                                        uint256(sub_98b31141[idx]) = 0
                                        idx = idx + 1
                                        continue 
                            else:
                                sub_6c302b9dAddress = sub_f5e41055Address
                                _13040 = mem[448]
                                _13863 = mem[mem[448]]
                                idx = 0
                                while idx < _13863:
                                    if idx >= mem[_13040]:
                                        revert with 0, 50
                                    if idx >= mem[_13040]:
                                        revert with 0, 50
                                    mem[(32 * idx) + _13040 + 32] = address(mem[(32 * idx) + _13040 + 44 len 20] xor stor28)
                                    if idx == -1:
                                        revert with 0, 17
                                    _13863 = mem[_13040]
                                    idx = idx + 1
                                    continue 
                                sub_98b31141.length = mem[_13040]
                                if not mem[_13040]:
                                    idx = 0
                                    while sub_98b31141.length > idx:
                                        uint256(sub_98b31141[idx]) = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    s = 0
                                    idx = _13040 + 32
                                    while _13040 + (32 * mem[_13040]) + 32 > idx:
                                        address(sub_98b31141[s]) = mem[idx + 12 len 20]
                                        s = s + 1
                                        idx = idx + 32
                                        continue 
                                    idx = Mask(251, 0, (32 * mem[_13040]) + 31) >> 5
                                    while sub_98b31141.length > idx:
                                        uint256(sub_98b31141[idx]) = 0
                                        idx = idx + 1
                                        continue 
                    else:
                        mem[0] = 18
                        mem[_12745 + 32] = address(sub_b6c1554e.field_0)
                        idx = _12745 + 32
                        s = 0
                        while _12745 + (32 * sub_b6c1554e.length) > idx:
                            mem[idx + 32] = sub_b6c1554e[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        if sub_f5e41055Address:
                            _15161 = mem[448]
                            _16172 = mem[mem[448]]
                            idx = 0
                            while idx < _16172:
                                if idx >= mem[_15161]:
                                    revert with 0, 50
                                if idx >= mem[_15161]:
                                    revert with 0, 50
                                mem[(32 * idx) + _15161 + 32] = address(mem[(32 * idx) + _15161 + 44 len 20] xor stor28)
                                if idx == -1:
                                    revert with 0, 17
                                _16172 = mem[_15161]
                                idx = idx + 1
                                continue 
                            sub_98b31141.length = mem[_15161]
                            if not mem[_15161]:
                                idx = 0
                                while sub_98b31141.length > idx:
                                    uint256(sub_98b31141[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            else:
                                s = 0
                                idx = _15161 + 32
                                while _15161 + (32 * mem[_15161]) + 32 > idx:
                                    address(sub_98b31141[s]) = mem[idx + 12 len 20]
                                    s = s + 1
                                    idx = idx + 32
                                    continue 
                                idx = Mask(251, 0, (32 * mem[_15161]) + 31) >> 5
                                while sub_98b31141.length > idx:
                                    uint256(sub_98b31141[idx]) = 0
                                    idx = idx + 1
                                    continue 
                        else:
                            if not sub_b6c1554e.length:
                                revert with 0, 50
                            if 1 >= sub_b6c1554e.length:
                                revert with 0, 50
                            _15223 = mem[_12745 + 64]
                            mem[mem[64] + 4] = mem[_12745 + 44 len 20]
                            mem[mem[64] + 36] = address(_15223)
                            require ext_code.size(sub_3ef67e9fAddress)
                            staticcall sub_3ef67e9fAddress.getPair(address arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4], address(_15223)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _15349 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_15349] == mem[_15349 + 12 len 20]
                            sub_f5e41055Address = mem[_15349 + 12 len 20]
                            if not mem[_15349 + 12 len 20]:
                                _15718 = mem[448]
                                _16173 = mem[mem[448]]
                                idx = 0
                                while idx < _16173:
                                    if idx >= mem[_15718]:
                                        revert with 0, 50
                                    if idx >= mem[_15718]:
                                        revert with 0, 50
                                    mem[(32 * idx) + _15718 + 32] = address(mem[(32 * idx) + _15718 + 44 len 20] xor stor28)
                                    if idx == -1:
                                        revert with 0, 17
                                    _16173 = mem[_15718]
                                    idx = idx + 1
                                    continue 
                                sub_98b31141.length = mem[_15718]
                                if not mem[_15718]:
                                    idx = 0
                                    while sub_98b31141.length > idx:
                                        uint256(sub_98b31141[idx]) = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    s = 0
                                    idx = _15718 + 32
                                    while _15718 + (32 * mem[_15718]) + 32 > idx:
                                        address(sub_98b31141[s]) = mem[idx + 12 len 20]
                                        s = s + 1
                                        idx = idx + 32
                                        continue 
                                    idx = Mask(251, 0, (32 * mem[_15718]) + 31) >> 5
                                    while sub_98b31141.length > idx:
                                        uint256(sub_98b31141[idx]) = 0
                                        idx = idx + 1
                                        continue 
                            else:
                                sub_6c302b9dAddress = sub_f5e41055Address
                                _15719 = mem[448]
                                _16174 = mem[mem[448]]
                                idx = 0
                                while idx < _16174:
                                    if idx >= mem[_15719]:
                                        revert with 0, 50
                                    if idx >= mem[_15719]:
                                        revert with 0, 50
                                    mem[(32 * idx) + _15719 + 32] = address(mem[(32 * idx) + _15719 + 44 len 20] xor stor28)
                                    if idx == -1:
                                        revert with 0, 17
                                    _16174 = mem[_15719]
                                    idx = idx + 1
                                    continue 
                                sub_98b31141.length = mem[_15719]
                                if not mem[_15719]:
                                    idx = 0
                                    while sub_98b31141.length > idx:
                                        uint256(sub_98b31141[idx]) = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    s = 0
                                    idx = _15719 + 32
                                    while _15719 + (32 * mem[_15719]) + 32 > idx:
                                        address(sub_98b31141[s]) = mem[idx + 12 len 20]
                                        s = s + 1
                                        idx = idx + 32
                                        continue 
                                    idx = Mask(251, 0, (32 * mem[_15719]) + 31) >> 5
                                    while sub_98b31141.length > idx:
                                        uint256(sub_98b31141[idx]) = 0
                                        idx = idx + 1
                                        continue 
                else:
                    s = 0
                    idx = _10331 + 32
                    while _10331 + (32 * _11521) + 32 > idx:
                        sub_b6c1554e[s].field_0 = mem[idx + 12 len 20]
                        s = s + 1
                        idx = idx + 32
                        continue 
                    idx = Mask(251, 0, (32 * _11521) + 31) >> 5
                    while sub_b6c1554e.length > idx:
                        sub_b6c1554e[idx].field_0 = 0
                        idx = idx + 1
                        continue 
                    _13954 = mem[64]
                    mem[64] = mem[64] + (32 * sub_b6c1554e.length) + 32
                    mem[_13954] = sub_b6c1554e.length
                    if not sub_b6c1554e.length:
                        if sub_f5e41055Address:
                            _14024 = mem[448]
                            _14976 = mem[mem[448]]
                            idx = 0
                            while idx < _14976:
                                if idx >= mem[_14024]:
                                    revert with 0, 50
                                if idx >= mem[_14024]:
                                    revert with 0, 50
                                mem[(32 * idx) + _14024 + 32] = address(mem[(32 * idx) + _14024 + 44 len 20] xor stor28)
                                if idx == -1:
                                    revert with 0, 17
                                _14976 = mem[_14024]
                                idx = idx + 1
                                continue 
                            sub_98b31141.length = mem[_14024]
                            if not mem[_14024]:
                                idx = 0
                                while sub_98b31141.length > idx:
                                    uint256(sub_98b31141[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            else:
                                s = 0
                                idx = _14024 + 32
                                while _14024 + (32 * mem[_14024]) + 32 > idx:
                                    address(sub_98b31141[s]) = mem[idx + 12 len 20]
                                    s = s + 1
                                    idx = idx + 32
                                    continue 
                                idx = Mask(251, 0, (32 * mem[_14024]) + 31) >> 5
                                while sub_98b31141.length > idx:
                                    uint256(sub_98b31141[idx]) = 0
                                    idx = idx + 1
                                    continue 
                        else:
                            if not sub_b6c1554e.length:
                                revert with 0, 50
                            if 1 >= sub_b6c1554e.length:
                                revert with 0, 50
                            _14046 = mem[_13954 + 64]
                            mem[mem[64] + 4] = mem[_13954 + 44 len 20]
                            mem[mem[64] + 36] = address(_14046)
                            require ext_code.size(sub_3ef67e9fAddress)
                            staticcall sub_3ef67e9fAddress.getPair(address arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4], address(_14046)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _14221 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_14221] == mem[_14221 + 12 len 20]
                            sub_f5e41055Address = mem[_14221 + 12 len 20]
                            if not mem[_14221 + 12 len 20]:
                                _14397 = mem[448]
                                _14977 = mem[mem[448]]
                                idx = 0
                                while idx < _14977:
                                    if idx >= mem[_14397]:
                                        revert with 0, 50
                                    if idx >= mem[_14397]:
                                        revert with 0, 50
                                    mem[(32 * idx) + _14397 + 32] = address(mem[(32 * idx) + _14397 + 44 len 20] xor stor28)
                                    if idx == -1:
                                        revert with 0, 17
                                    _14977 = mem[_14397]
                                    idx = idx + 1
                                    continue 
                                sub_98b31141.length = mem[_14397]
                                if not mem[_14397]:
                                    idx = 0
                                    while sub_98b31141.length > idx:
                                        uint256(sub_98b31141[idx]) = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    s = 0
                                    idx = _14397 + 32
                                    while _14397 + (32 * mem[_14397]) + 32 > idx:
                                        address(sub_98b31141[s]) = mem[idx + 12 len 20]
                                        s = s + 1
                                        idx = idx + 32
                                        continue 
                                    idx = Mask(251, 0, (32 * mem[_14397]) + 31) >> 5
                                    while sub_98b31141.length > idx:
                                        uint256(sub_98b31141[idx]) = 0
                                        idx = idx + 1
                                        continue 
                            else:
                                sub_6c302b9dAddress = sub_f5e41055Address
                                _14398 = mem[448]
                                _14978 = mem[mem[448]]
                                idx = 0
                                while idx < _14978:
                                    if idx >= mem[_14398]:
                                        revert with 0, 50
                                    if idx >= mem[_14398]:
                                        revert with 0, 50
                                    mem[(32 * idx) + _14398 + 32] = address(mem[(32 * idx) + _14398 + 44 len 20] xor stor28)
                                    if idx == -1:
                                        revert with 0, 17
                                    _14978 = mem[_14398]
                                    idx = idx + 1
                                    continue 
                                sub_98b31141.length = mem[_14398]
                                if not mem[_14398]:
                                    idx = 0
                                    while sub_98b31141.length > idx:
                                        uint256(sub_98b31141[idx]) = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    s = 0
                                    idx = _14398 + 32
                                    while _14398 + (32 * mem[_14398]) + 32 > idx:
                                        address(sub_98b31141[s]) = mem[idx + 12 len 20]
                                        s = s + 1
                                        idx = idx + 32
                                        continue 
                                    idx = Mask(251, 0, (32 * mem[_14398]) + 31) >> 5
                                    while sub_98b31141.length > idx:
                                        uint256(sub_98b31141[idx]) = 0
                                        idx = idx + 1
                                        continue 
                    else:
                        mem[0] = 18
                        mem[_13954 + 32] = address(sub_b6c1554e.field_0)
                        idx = _13954 + 32
                        s = 0
                        while _13954 + (32 * sub_b6c1554e.length) > idx:
                            mem[idx + 32] = sub_b6c1554e[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        if sub_f5e41055Address:
                            _16418 = mem[448]
                            _17448 = mem[mem[448]]
                            idx = 0
                            while idx < _17448:
                                if idx >= mem[_16418]:
                                    revert with 0, 50
                                if idx >= mem[_16418]:
                                    revert with 0, 50
                                mem[(32 * idx) + _16418 + 32] = address(mem[(32 * idx) + _16418 + 44 len 20] xor stor28)
                                if idx == -1:
                                    revert with 0, 17
                                _17448 = mem[_16418]
                                idx = idx + 1
                                continue 
                            sub_98b31141.length = mem[_16418]
                            if not mem[_16418]:
                                idx = 0
                                while sub_98b31141.length > idx:
                                    uint256(sub_98b31141[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            else:
                                s = 0
                                idx = _16418 + 32
                                while _16418 + (32 * mem[_16418]) + 32 > idx:
                                    address(sub_98b31141[s]) = mem[idx + 12 len 20]
                                    s = s + 1
                                    idx = idx + 32
                                    continue 
                                idx = Mask(251, 0, (32 * mem[_16418]) + 31) >> 5
                                while sub_98b31141.length > idx:
                                    uint256(sub_98b31141[idx]) = 0
                                    idx = idx + 1
                                    continue 
                        else:
                            if not sub_b6c1554e.length:
                                revert with 0, 50
                            if 1 >= sub_b6c1554e.length:
                                revert with 0, 50
                            _16556 = mem[_13954 + 64]
                            mem[mem[64] + 4] = mem[_13954 + 44 len 20]
                            mem[mem[64] + 36] = address(_16556)
                            require ext_code.size(sub_3ef67e9fAddress)
                            staticcall sub_3ef67e9fAddress.getPair(address arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4], address(_16556)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _16741 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_16741] == mem[_16741 + 12 len 20]
                            sub_f5e41055Address = mem[_16741 + 12 len 20]
                            if not mem[_16741 + 12 len 20]:
                                _17118 = mem[448]
                                _17449 = mem[mem[448]]
                                idx = 0
                                while idx < _17449:
                                    if idx >= mem[_17118]:
                                        revert with 0, 50
                                    if idx >= mem[_17118]:
                                        revert with 0, 50
                                    mem[(32 * idx) + _17118 + 32] = address(mem[(32 * idx) + _17118 + 44 len 20] xor stor28)
                                    if idx == -1:
                                        revert with 0, 17
                                    _17449 = mem[_17118]
                                    idx = idx + 1
                                    continue 
                                sub_98b31141.length = mem[_17118]
                                if not mem[_17118]:
                                    idx = 0
                                    while sub_98b31141.length > idx:
                                        uint256(sub_98b31141[idx]) = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    s = 0
                                    idx = _17118 + 32
                                    while _17118 + (32 * mem[_17118]) + 32 > idx:
                                        address(sub_98b31141[s]) = mem[idx + 12 len 20]
                                        s = s + 1
                                        idx = idx + 32
                                        continue 
                                    idx = Mask(251, 0, (32 * mem[_17118]) + 31) >> 5
                                    while sub_98b31141.length > idx:
                                        uint256(sub_98b31141[idx]) = 0
                                        idx = idx + 1
                                        continue 
                            else:
                                sub_6c302b9dAddress = sub_f5e41055Address
                                _17119 = mem[448]
                                _17450 = mem[mem[448]]
                                idx = 0
                                while idx < _17450:
                                    if idx >= mem[_17119]:
                                        revert with 0, 50
                                    if idx >= mem[_17119]:
                                        revert with 0, 50
                                    mem[(32 * idx) + _17119 + 32] = address(mem[(32 * idx) + _17119 + 44 len 20] xor stor28)
                                    if idx == -1:
                                        revert with 0, 17
                                    _17450 = mem[_17119]
                                    idx = idx + 1
                                    continue 
                                sub_98b31141.length = mem[_17119]
                                if not mem[_17119]:
                                    idx = 0
                                    while sub_98b31141.length > idx:
                                        uint256(sub_98b31141[idx]) = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    s = 0
                                    idx = _17119 + 32
                                    while _17119 + (32 * mem[_17119]) + 32 > idx:
                                        address(sub_98b31141[s]) = mem[idx + 12 len 20]
                                        s = s + 1
                                        idx = idx + 32
                                        continue 
                                    idx = Mask(251, 0, (32 * mem[_17119]) + 31) >> 5
                                    while sub_98b31141.length > idx:
                                        uint256(sub_98b31141[idx]) = 0
                                        idx = idx + 1
                                        continue 
            else:
                s = 0
                idx = mem[448] + 32
                while mem[448] + (32 * _9041) + 32 > idx:
                    address(sub_98b31141[s]) = mem[idx + 12 len 20]
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = Mask(251, 0, (32 * _9041) + 31) >> 5
                while sub_98b31141.length > idx:
                    uint256(sub_98b31141[idx]) = 0
                    idx = idx + 1
                    continue 
                stor20 = uint8(bool(mem[480]))
                stor8 = address(mem[108 len 20] xor stor28)
                require ext_code.size(address(mem[108 len 20] xor stor28))
                staticcall address(mem[108 len 20] xor stor28).factory() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _11545 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_11545] == mem[_11545 + 12 len 20]
                sub_3ef67e9fAddress = mem[_11545 + 12 len 20]
                sub_f5e41055Address = 0
                _11588 = mem[416]
                _12713 = mem[mem[416]]
                idx = 0
                while idx < _12713:
                    if idx >= mem[_11588]:
                        revert with 0, 50
                    if idx >= mem[_11588]:
                        revert with 0, 50
                    mem[(32 * idx) + _11588 + 32] = address(mem[(32 * idx) + _11588 + 44 len 20] xor stor28)
                    if idx == -1:
                        revert with 0, 17
                    _12713 = mem[_11588]
                    idx = idx + 1
                    continue 
                _12731 = mem[_11588]
                sub_b6c1554e.length = mem[_11588]
                mem[0] = 18
                if not _12731:
                    idx = 0
                    while sub_b6c1554e.length > idx:
                        sub_b6c1554e[idx].field_0 = 0
                        idx = idx + 1
                        continue 
                    _13955 = mem[64]
                    mem[64] = mem[64] + (32 * sub_b6c1554e.length) + 32
                    mem[_13955] = sub_b6c1554e.length
                    if not sub_b6c1554e.length:
                        if sub_f5e41055Address:
                            _14027 = mem[448]
                            _14979 = mem[mem[448]]
                            idx = 0
                            while idx < _14979:
                                if idx >= mem[_14027]:
                                    revert with 0, 50
                                if idx >= mem[_14027]:
                                    revert with 0, 50
                                mem[(32 * idx) + _14027 + 32] = address(mem[(32 * idx) + _14027 + 44 len 20] xor stor28)
                                if idx == -1:
                                    revert with 0, 17
                                _14979 = mem[_14027]
                                idx = idx + 1
                                continue 
                            sub_98b31141.length = mem[_14027]
                            if not mem[_14027]:
                                idx = 0
                                while sub_98b31141.length > idx:
                                    uint256(sub_98b31141[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            else:
                                s = 0
                                idx = _14027 + 32
                                while _14027 + (32 * mem[_14027]) + 32 > idx:
                                    address(sub_98b31141[s]) = mem[idx + 12 len 20]
                                    s = s + 1
                                    idx = idx + 32
                                    continue 
                                idx = Mask(251, 0, (32 * mem[_14027]) + 31) >> 5
                                while sub_98b31141.length > idx:
                                    uint256(sub_98b31141[idx]) = 0
                                    idx = idx + 1
                                    continue 
                        else:
                            if not sub_b6c1554e.length:
                                revert with 0, 50
                            if 1 >= sub_b6c1554e.length:
                                revert with 0, 50
                            _14048 = mem[_13955 + 64]
                            mem[mem[64] + 4] = mem[_13955 + 44 len 20]
                            mem[mem[64] + 36] = address(_14048)
                            require ext_code.size(sub_3ef67e9fAddress)
                            staticcall sub_3ef67e9fAddress.getPair(address arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4], address(_14048)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _14224 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_14224] == mem[_14224 + 12 len 20]
                            sub_f5e41055Address = mem[_14224 + 12 len 20]
                            if not mem[_14224 + 12 len 20]:
                                _14399 = mem[448]
                                _14980 = mem[mem[448]]
                                idx = 0
                                while idx < _14980:
                                    if idx >= mem[_14399]:
                                        revert with 0, 50
                                    if idx >= mem[_14399]:
                                        revert with 0, 50
                                    mem[(32 * idx) + _14399 + 32] = address(mem[(32 * idx) + _14399 + 44 len 20] xor stor28)
                                    if idx == -1:
                                        revert with 0, 17
                                    _14980 = mem[_14399]
                                    idx = idx + 1
                                    continue 
                                sub_98b31141.length = mem[_14399]
                                if not mem[_14399]:
                                    idx = 0
                                    while sub_98b31141.length > idx:
                                        uint256(sub_98b31141[idx]) = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    s = 0
                                    idx = _14399 + 32
                                    while _14399 + (32 * mem[_14399]) + 32 > idx:
                                        address(sub_98b31141[s]) = mem[idx + 12 len 20]
                                        s = s + 1
                                        idx = idx + 32
                                        continue 
                                    idx = Mask(251, 0, (32 * mem[_14399]) + 31) >> 5
                                    while sub_98b31141.length > idx:
                                        uint256(sub_98b31141[idx]) = 0
                                        idx = idx + 1
                                        continue 
                            else:
                                sub_6c302b9dAddress = sub_f5e41055Address
                                _14400 = mem[448]
                                _14981 = mem[mem[448]]
                                idx = 0
                                while idx < _14981:
                                    if idx >= mem[_14400]:
                                        revert with 0, 50
                                    if idx >= mem[_14400]:
                                        revert with 0, 50
                                    mem[(32 * idx) + _14400 + 32] = address(mem[(32 * idx) + _14400 + 44 len 20] xor stor28)
                                    if idx == -1:
                                        revert with 0, 17
                                    _14981 = mem[_14400]
                                    idx = idx + 1
                                    continue 
                                sub_98b31141.length = mem[_14400]
                                if not mem[_14400]:
                                    idx = 0
                                    while sub_98b31141.length > idx:
                                        uint256(sub_98b31141[idx]) = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    s = 0
                                    idx = _14400 + 32
                                    while _14400 + (32 * mem[_14400]) + 32 > idx:
                                        address(sub_98b31141[s]) = mem[idx + 12 len 20]
                                        s = s + 1
                                        idx = idx + 32
                                        continue 
                                    idx = Mask(251, 0, (32 * mem[_14400]) + 31) >> 5
                                    while sub_98b31141.length > idx:
                                        uint256(sub_98b31141[idx]) = 0
                                        idx = idx + 1
                                        continue 
                    else:
                        mem[0] = 18
                        mem[_13955 + 32] = address(sub_b6c1554e.field_0)
                        idx = _13955 + 32
                        s = 0
                        while _13955 + (32 * sub_b6c1554e.length) > idx:
                            mem[idx + 32] = sub_b6c1554e[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        if sub_f5e41055Address:
                            _16439 = mem[448]
                            _17451 = mem[mem[448]]
                            idx = 0
                            while idx < _17451:
                                if idx >= mem[_16439]:
                                    revert with 0, 50
                                if idx >= mem[_16439]:
                                    revert with 0, 50
                                mem[(32 * idx) + _16439 + 32] = address(mem[(32 * idx) + _16439 + 44 len 20] xor stor28)
                                if idx == -1:
                                    revert with 0, 17
                                _17451 = mem[_16439]
                                idx = idx + 1
                                continue 
                            sub_98b31141.length = mem[_16439]
                            if not mem[_16439]:
                                idx = 0
                                while sub_98b31141.length > idx:
                                    uint256(sub_98b31141[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            else:
                                s = 0
                                idx = _16439 + 32
                                while _16439 + (32 * mem[_16439]) + 32 > idx:
                                    address(sub_98b31141[s]) = mem[idx + 12 len 20]
                                    s = s + 1
                                    idx = idx + 32
                                    continue 
                                idx = Mask(251, 0, (32 * mem[_16439]) + 31) >> 5
                                while sub_98b31141.length > idx:
                                    uint256(sub_98b31141[idx]) = 0
                                    idx = idx + 1
                                    continue 
                        else:
                            if not sub_b6c1554e.length:
                                revert with 0, 50
                            if 1 >= sub_b6c1554e.length:
                                revert with 0, 50
                            _16558 = mem[_13955 + 64]
                            mem[mem[64] + 4] = mem[_13955 + 44 len 20]
                            mem[mem[64] + 36] = address(_16558)
                            require ext_code.size(sub_3ef67e9fAddress)
                            staticcall sub_3ef67e9fAddress.getPair(address arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4], address(_16558)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _16744 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_16744] == mem[_16744 + 12 len 20]
                            sub_f5e41055Address = mem[_16744 + 12 len 20]
                            if not mem[_16744 + 12 len 20]:
                                _17120 = mem[448]
                                _17452 = mem[mem[448]]
                                idx = 0
                                while idx < _17452:
                                    if idx >= mem[_17120]:
                                        revert with 0, 50
                                    if idx >= mem[_17120]:
                                        revert with 0, 50
                                    mem[(32 * idx) + _17120 + 32] = address(mem[(32 * idx) + _17120 + 44 len 20] xor stor28)
                                    if idx == -1:
                                        revert with 0, 17
                                    _17452 = mem[_17120]
                                    idx = idx + 1
                                    continue 
                                sub_98b31141.length = mem[_17120]
                                if not mem[_17120]:
                                    idx = 0
                                    while sub_98b31141.length > idx:
                                        uint256(sub_98b31141[idx]) = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    s = 0
                                    idx = _17120 + 32
                                    while _17120 + (32 * mem[_17120]) + 32 > idx:
                                        address(sub_98b31141[s]) = mem[idx + 12 len 20]
                                        s = s + 1
                                        idx = idx + 32
                                        continue 
                                    idx = Mask(251, 0, (32 * mem[_17120]) + 31) >> 5
                                    while sub_98b31141.length > idx:
                                        uint256(sub_98b31141[idx]) = 0
                                        idx = idx + 1
                                        continue 
                            else:
                                sub_6c302b9dAddress = sub_f5e41055Address
                                _17121 = mem[448]
                                _17453 = mem[mem[448]]
                                idx = 0
                                while idx < _17453:
                                    if idx >= mem[_17121]:
                                        revert with 0, 50
                                    if idx >= mem[_17121]:
                                        revert with 0, 50
                                    mem[(32 * idx) + _17121 + 32] = address(mem[(32 * idx) + _17121 + 44 len 20] xor stor28)
                                    if idx == -1:
                                        revert with 0, 17
                                    _17453 = mem[_17121]
                                    idx = idx + 1
                                    continue 
                                sub_98b31141.length = mem[_17121]
                                if not mem[_17121]:
                                    idx = 0
                                    while sub_98b31141.length > idx:
                                        uint256(sub_98b31141[idx]) = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    s = 0
                                    idx = _17121 + 32
                                    while _17121 + (32 * mem[_17121]) + 32 > idx:
                                        address(sub_98b31141[s]) = mem[idx + 12 len 20]
                                        s = s + 1
                                        idx = idx + 32
                                        continue 
                                    idx = Mask(251, 0, (32 * mem[_17121]) + 31) >> 5
                                    while sub_98b31141.length > idx:
                                        uint256(sub_98b31141[idx]) = 0
                                        idx = idx + 1
                                        continue 
                else:
                    s = 0
                    idx = _11588 + 32
                    while _11588 + (32 * _12731) + 32 > idx:
                        sub_b6c1554e[s].field_0 = mem[idx + 12 len 20]
                        s = s + 1
                        idx = idx + 32
                        continue 
                    idx = Mask(251, 0, (32 * _12731) + 31) >> 5
                    while sub_b6c1554e.length > idx:
                        sub_b6c1554e[idx].field_0 = 0
                        idx = idx + 1
                        continue 
                    _15176 = mem[64]
                    mem[64] = mem[64] + (32 * sub_b6c1554e.length) + 32
                    mem[_15176] = sub_b6c1554e.length
                    if not sub_b6c1554e.length:
                        if sub_f5e41055Address:
                            _15350 = mem[448]
                            _16175 = mem[mem[448]]
                            idx = 0
                            while idx < _16175:
                                if idx >= mem[_15350]:
                                    revert with 0, 50
                                if idx >= mem[_15350]:
                                    revert with 0, 50
                                mem[(32 * idx) + _15350 + 32] = address(mem[(32 * idx) + _15350 + 44 len 20] xor stor28)
                                if idx == -1:
                                    revert with 0, 17
                                _16175 = mem[_15350]
                                idx = idx + 1
                                continue 
                            sub_98b31141.length = mem[_15350]
                            if not mem[_15350]:
                                idx = 0
                                while sub_98b31141.length > idx:
                                    uint256(sub_98b31141[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            else:
                                s = 0
                                idx = _15350 + 32
                                while _15350 + (32 * mem[_15350]) + 32 > idx:
                                    address(sub_98b31141[s]) = mem[idx + 12 len 20]
                                    s = s + 1
                                    idx = idx + 32
                                    continue 
                                idx = Mask(251, 0, (32 * mem[_15350]) + 31) >> 5
                                while sub_98b31141.length > idx:
                                    uint256(sub_98b31141[idx]) = 0
                                    idx = idx + 1
                                    continue 
                        else:
                            if not sub_b6c1554e.length:
                                revert with 0, 50
                            if 1 >= sub_b6c1554e.length:
                                revert with 0, 50
                            _15372 = mem[_15176 + 64]
                            mem[mem[64] + 4] = mem[_15176 + 44 len 20]
                            mem[mem[64] + 36] = address(_15372)
                            require ext_code.size(sub_3ef67e9fAddress)
                            staticcall sub_3ef67e9fAddress.getPair(address arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4], address(_15372)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _15605 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_15605] == mem[_15605 + 12 len 20]
                            sub_f5e41055Address = mem[_15605 + 12 len 20]
                            if not mem[_15605 + 12 len 20]:
                                _15806 = mem[448]
                                _16176 = mem[mem[448]]
                                idx = 0
                                while idx < _16176:
                                    if idx >= mem[_15806]:
                                        revert with 0, 50
                                    if idx >= mem[_15806]:
                                        revert with 0, 50
                                    mem[(32 * idx) + _15806 + 32] = address(mem[(32 * idx) + _15806 + 44 len 20] xor stor28)
                                    if idx == -1:
                                        revert with 0, 17
                                    _16176 = mem[_15806]
                                    idx = idx + 1
                                    continue 
                                sub_98b31141.length = mem[_15806]
                                if not mem[_15806]:
                                    idx = 0
                                    while sub_98b31141.length > idx:
                                        uint256(sub_98b31141[idx]) = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    s = 0
                                    idx = _15806 + 32
                                    while _15806 + (32 * mem[_15806]) + 32 > idx:
                                        address(sub_98b31141[s]) = mem[idx + 12 len 20]
                                        s = s + 1
                                        idx = idx + 32
                                        continue 
                                    idx = Mask(251, 0, (32 * mem[_15806]) + 31) >> 5
                                    while sub_98b31141.length > idx:
                                        uint256(sub_98b31141[idx]) = 0
                                        idx = idx + 1
                                        continue 
                            else:
                                sub_6c302b9dAddress = sub_f5e41055Address
                                _15807 = mem[448]
                                _16177 = mem[mem[448]]
                                idx = 0
                                while idx < _16177:
                                    if idx >= mem[_15807]:
                                        revert with 0, 50
                                    if idx >= mem[_15807]:
                                        revert with 0, 50
                                    mem[(32 * idx) + _15807 + 32] = address(mem[(32 * idx) + _15807 + 44 len 20] xor stor28)
                                    if idx == -1:
                                        revert with 0, 17
                                    _16177 = mem[_15807]
                                    idx = idx + 1
                                    continue 
                                sub_98b31141.length = mem[_15807]
                                if not mem[_15807]:
                                    idx = 0
                                    while sub_98b31141.length > idx:
                                        uint256(sub_98b31141[idx]) = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    s = 0
                                    idx = _15807 + 32
                                    while _15807 + (32 * mem[_15807]) + 32 > idx:
                                        address(sub_98b31141[s]) = mem[idx + 12 len 20]
                                        s = s + 1
                                        idx = idx + 32
                                        continue 
                                    idx = Mask(251, 0, (32 * mem[_15807]) + 31) >> 5
                                    while sub_98b31141.length > idx:
                                        uint256(sub_98b31141[idx]) = 0
                                        idx = idx + 1
                                        continue 
                    else:
                        mem[0] = 18
                        mem[_15176 + 32] = address(sub_b6c1554e.field_0)
                        idx = _15176 + 32
                        s = 0
                        while _15176 + (32 * sub_b6c1554e.length) > idx:
                            mem[idx + 32] = sub_b6c1554e[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        if sub_f5e41055Address:
                            _17719 = mem[448]
                            _18554 = mem[mem[448]]
                            idx = 0
                            while idx < _18554:
                                if idx >= mem[_17719]:
                                    revert with 0, 50
                                if idx >= mem[_17719]:
                                    revert with 0, 50
                                mem[(32 * idx) + _17719 + 32] = address(mem[(32 * idx) + _17719 + 44 len 20] xor stor28)
                                if idx == -1:
                                    revert with 0, 17
                                _18554 = mem[_17719]
                                idx = idx + 1
                                continue 
                            sub_98b31141.length = mem[_17719]
                            if not mem[_17719]:
                                idx = 0
                                while sub_98b31141.length > idx:
                                    uint256(sub_98b31141[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            else:
                                s = 0
                                idx = _17719 + 32
                                while _17719 + (32 * mem[_17719]) + 32 > idx:
                                    address(sub_98b31141[s]) = mem[idx + 12 len 20]
                                    s = s + 1
                                    idx = idx + 32
                                    continue 
                                idx = Mask(251, 0, (32 * mem[_17719]) + 31) >> 5
                                while sub_98b31141.length > idx:
                                    uint256(sub_98b31141[idx]) = 0
                                    idx = idx + 1
                                    continue 
                        else:
                            if not sub_b6c1554e.length:
                                revert with 0, 50
                            if 1 >= sub_b6c1554e.length:
                                revert with 0, 50
                            _17881 = mem[_15176 + 64]
                            mem[mem[64] + 4] = mem[_15176 + 44 len 20]
                            mem[mem[64] + 36] = address(_17881)
                            require ext_code.size(sub_3ef67e9fAddress)
                            staticcall sub_3ef67e9fAddress.getPair(address arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4], address(_17881)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _18068 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_18068] == mem[_18068 + 12 len 20]
                            sub_f5e41055Address = mem[_18068 + 12 len 20]
                            if not mem[_18068 + 12 len 20]:
                                _18370 = mem[448]
                                _18555 = mem[mem[448]]
                                idx = 0
                                while idx < _18555:
                                    if idx >= mem[_18370]:
                                        revert with 0, 50
                                    if idx >= mem[_18370]:
                                        revert with 0, 50
                                    mem[(32 * idx) + _18370 + 32] = address(mem[(32 * idx) + _18370 + 44 len 20] xor stor28)
                                    if idx == -1:
                                        revert with 0, 17
                                    _18555 = mem[_18370]
                                    idx = idx + 1
                                    continue 
                                sub_98b31141.length = mem[_18370]
                                if not mem[_18370]:
                                    idx = 0
                                    while sub_98b31141.length > idx:
                                        uint256(sub_98b31141[idx]) = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    s = 0
                                    idx = _18370 + 32
                                    while _18370 + (32 * mem[_18370]) + 32 > idx:
                                        address(sub_98b31141[s]) = mem[idx + 12 len 20]
                                        s = s + 1
                                        idx = idx + 32
                                        continue 
                                    idx = Mask(251, 0, (32 * mem[_18370]) + 31) >> 5
                                    while sub_98b31141.length > idx:
                                        uint256(sub_98b31141[idx]) = 0
                                        idx = idx + 1
                                        continue 
                            else:
                                sub_6c302b9dAddress = sub_f5e41055Address
                                _18371 = mem[448]
                                _18556 = mem[mem[448]]
                                idx = 0
                                while idx < _18556:
                                    if idx >= mem[_18371]:
                                        revert with 0, 50
                                    if idx >= mem[_18371]:
                                        revert with 0, 50
                                    mem[(32 * idx) + _18371 + 32] = address(mem[(32 * idx) + _18371 + 44 len 20] xor stor28)
                                    if idx == -1:
                                        revert with 0, 17
                                    _18556 = mem[_18371]
                                    idx = idx + 1
                                    continue 
                                sub_98b31141.length = mem[_18371]
                                if not mem[_18371]:
                                    idx = 0
                                    while sub_98b31141.length > idx:
                                        uint256(sub_98b31141[idx]) = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    s = 0
                                    idx = _18371 + 32
                                    while _18371 + (32 * mem[_18371]) + 32 > idx:
                                        address(sub_98b31141[s]) = mem[idx + 12 len 20]
                                        s = s + 1
                                        idx = idx + 32
                                        continue 
                                    idx = Mask(251, 0, (32 * mem[_18371]) + 31) >> 5
                                    while sub_98b31141.length > idx:
                                        uint256(sub_98b31141[idx]) = 0
                                        idx = idx + 1
                                        continue 
    else:
        s = 0
        idx = ceil32(32 * cd[(cd[4] + ('cd', 4)[9] + 4)]) + ceil32(32 * cd[(cd[4] + ('cd', 4)[10] + 4)]) + 674
        while ceil32(32 * cd[(cd[4] + ('cd', 4)[9] + 4)]) + ceil32(32 * cd[(cd[4] + ('cd', 4)[10] + 4)]) + (32 * mem[ceil32(32 * cd[(cd[4] + ('cd', 4)[9] + 4)]) + ceil32(32 * cd[(cd[4] + ('cd', 4)[10] + 4)]) + 642]) + 674 > idx:
            address(sub_499839d9[s]) = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * mem[ceil32(32 * cd[(cd[4] + ('cd', 4)[9] + 4)]) + ceil32(32 * cd[(cd[4] + ('cd', 4)[10] + 4)]) + 642]) + 31) >> 5
        while sub_499839d9.length > idx:
            uint256(sub_499839d9[idx]) = 0
            idx = idx + 1
            continue 
        stor24 = uint8(bool(('cd', 36)[2]))
        stor8 = mem[108 len 20]
        stor9 = mem[128]
        stor10 = mem[160]
        stor11 = mem[192]
        stor12 = mem[224]
        stor13 = mem[256]
        stor14 = mem[288]
        stor15 = mem[320]
        stor16 = mem[352]
        stor17 = mem[384]
        _7785 = mem[mem[416]]
        sub_b6c1554e.length = mem[mem[416]]
        mem[0] = 18
        if not _7785:
            idx = 0
            while sub_b6c1554e.length > idx:
                sub_b6c1554e[idx].field_0 = 0
                idx = idx + 1
                continue 
            _9043 = mem[mem[448]]
            sub_98b31141.length = mem[mem[448]]
            mem[0] = 19
            if not _9043:
                idx = 0
                while sub_98b31141.length > idx:
                    uint256(sub_98b31141[idx]) = 0
                    idx = idx + 1
                    continue 
                stor20 = uint8(bool(mem[480]))
                stor8 = address(mem[108 len 20] xor stor28)
                require ext_code.size(address(mem[108 len 20] xor stor28))
                staticcall address(mem[108 len 20] xor stor28).factory() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _10305 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_10305] == mem[_10305 + 12 len 20]
                sub_3ef67e9fAddress = mem[_10305 + 12 len 20]
                sub_f5e41055Address = 0
                _10332 = mem[416]
                _11513 = mem[mem[416]]
                idx = 0
                while idx < _11513:
                    if idx >= mem[_10332]:
                        revert with 0, 50
                    if idx >= mem[_10332]:
                        revert with 0, 50
                    mem[(32 * idx) + _10332 + 32] = address(mem[(32 * idx) + _10332 + 44 len 20] xor stor28)
                    if idx == -1:
                        revert with 0, 17
                    _11513 = mem[_10332]
                    idx = idx + 1
                    continue 
                _11523 = mem[_10332]
                sub_b6c1554e.length = mem[_10332]
                mem[0] = 18
                if not _11523:
                    idx = 0
                    while sub_b6c1554e.length > idx:
                        sub_b6c1554e[idx].field_0 = 0
                        idx = idx + 1
                        continue 
                    _12748 = mem[64]
                    mem[64] = mem[64] + (32 * sub_b6c1554e.length) + 32
                    mem[_12748] = sub_b6c1554e.length
                    if not sub_b6c1554e.length:
                        if sub_f5e41055Address:
                            _12786 = mem[448]
                            _13864 = mem[mem[448]]
                            idx = 0
                            while idx < _13864:
                                if idx >= mem[_12786]:
                                    revert with 0, 50
                                if idx >= mem[_12786]:
                                    revert with 0, 50
                                mem[(32 * idx) + _12786 + 32] = address(mem[(32 * idx) + _12786 + 44 len 20] xor stor28)
                                if idx == -1:
                                    revert with 0, 17
                                _13864 = mem[_12786]
                                idx = idx + 1
                                continue 
                            sub_98b31141.length = mem[_12786]
                            if not mem[_12786]:
                                idx = 0
                                while sub_98b31141.length > idx:
                                    uint256(sub_98b31141[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            else:
                                s = 0
                                idx = _12786 + 32
                                while _12786 + (32 * mem[_12786]) + 32 > idx:
                                    address(sub_98b31141[s]) = mem[idx + 12 len 20]
                                    s = s + 1
                                    idx = idx + 32
                                    continue 
                                idx = Mask(251, 0, (32 * mem[_12786]) + 31) >> 5
                                while sub_98b31141.length > idx:
                                    uint256(sub_98b31141[idx]) = 0
                                    idx = idx + 1
                                    continue 
                        else:
                            if not sub_b6c1554e.length:
                                revert with 0, 50
                            if 1 >= sub_b6c1554e.length:
                                revert with 0, 50
                            _12797 = mem[_12748 + 64]
                            mem[mem[64] + 4] = mem[_12748 + 44 len 20]
                            mem[mem[64] + 36] = address(_12797)
                            require ext_code.size(sub_3ef67e9fAddress)
                            staticcall sub_3ef67e9fAddress.getPair(address arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4], address(_12797)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _12881 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_12881] == mem[_12881 + 12 len 20]
                            sub_f5e41055Address = mem[_12881 + 12 len 20]
                            if not mem[_12881 + 12 len 20]:
                                _13045 = mem[448]
                                _13865 = mem[mem[448]]
                                idx = 0
                                while idx < _13865:
                                    if idx >= mem[_13045]:
                                        revert with 0, 50
                                    if idx >= mem[_13045]:
                                        revert with 0, 50
                                    mem[(32 * idx) + _13045 + 32] = address(mem[(32 * idx) + _13045 + 44 len 20] xor stor28)
                                    if idx == -1:
                                        revert with 0, 17
                                    _13865 = mem[_13045]
                                    idx = idx + 1
                                    continue 
                                sub_98b31141.length = mem[_13045]
                                if not mem[_13045]:
                                    idx = 0
                                    while sub_98b31141.length > idx:
                                        uint256(sub_98b31141[idx]) = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    s = 0
                                    idx = _13045 + 32
                                    while _13045 + (32 * mem[_13045]) + 32 > idx:
                                        address(sub_98b31141[s]) = mem[idx + 12 len 20]
                                        s = s + 1
                                        idx = idx + 32
                                        continue 
                                    idx = Mask(251, 0, (32 * mem[_13045]) + 31) >> 5
                                    while sub_98b31141.length > idx:
                                        uint256(sub_98b31141[idx]) = 0
                                        idx = idx + 1
                                        continue 
                            else:
                                sub_6c302b9dAddress = sub_f5e41055Address
                                _13046 = mem[448]
                                _13866 = mem[mem[448]]
                                idx = 0
                                while idx < _13866:
                                    if idx >= mem[_13046]:
                                        revert with 0, 50
                                    if idx >= mem[_13046]:
                                        revert with 0, 50
                                    mem[(32 * idx) + _13046 + 32] = address(mem[(32 * idx) + _13046 + 44 len 20] xor stor28)
                                    if idx == -1:
                                        revert with 0, 17
                                    _13866 = mem[_13046]
                                    idx = idx + 1
                                    continue 
                                sub_98b31141.length = mem[_13046]
                                if not mem[_13046]:
                                    idx = 0
                                    while sub_98b31141.length > idx:
                                        uint256(sub_98b31141[idx]) = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    s = 0
                                    idx = _13046 + 32
                                    while _13046 + (32 * mem[_13046]) + 32 > idx:
                                        address(sub_98b31141[s]) = mem[idx + 12 len 20]
                                        s = s + 1
                                        idx = idx + 32
                                        continue 
                                    idx = Mask(251, 0, (32 * mem[_13046]) + 31) >> 5
                                    while sub_98b31141.length > idx:
                                        uint256(sub_98b31141[idx]) = 0
                                        idx = idx + 1
                                        continue 
                    else:
                        mem[0] = 18
                        mem[_12748 + 32] = address(sub_b6c1554e.field_0)
                        idx = _12748 + 32
                        s = 0
                        while _12748 + (32 * sub_b6c1554e.length) > idx:
                            mem[idx + 32] = sub_b6c1554e[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        if sub_f5e41055Address:
                            _15195 = mem[448]
                            _16178 = mem[mem[448]]
                            idx = 0
                            while idx < _16178:
                                if idx >= mem[_15195]:
                                    revert with 0, 50
                                if idx >= mem[_15195]:
                                    revert with 0, 50
                                mem[(32 * idx) + _15195 + 32] = address(mem[(32 * idx) + _15195 + 44 len 20] xor stor28)
                                if idx == -1:
                                    revert with 0, 17
                                _16178 = mem[_15195]
                                idx = idx + 1
                                continue 
                            sub_98b31141.length = mem[_15195]
                            if not mem[_15195]:
                                idx = 0
                                while sub_98b31141.length > idx:
                                    uint256(sub_98b31141[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            else:
                                s = 0
                                idx = _15195 + 32
                                while _15195 + (32 * mem[_15195]) + 32 > idx:
                                    address(sub_98b31141[s]) = mem[idx + 12 len 20]
                                    s = s + 1
                                    idx = idx + 32
                                    continue 
                                idx = Mask(251, 0, (32 * mem[_15195]) + 31) >> 5
                                while sub_98b31141.length > idx:
                                    uint256(sub_98b31141[idx]) = 0
                                    idx = idx + 1
                                    continue 
                        else:
                            if not sub_b6c1554e.length:
                                revert with 0, 50
                            if 1 >= sub_b6c1554e.length:
                                revert with 0, 50
                            _15226 = mem[_12748 + 64]
                            mem[mem[64] + 4] = mem[_12748 + 44 len 20]
                            mem[mem[64] + 36] = address(_15226)
                            require ext_code.size(sub_3ef67e9fAddress)
                            staticcall sub_3ef67e9fAddress.getPair(address arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4], address(_15226)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _15355 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_15355] == mem[_15355 + 12 len 20]
                            sub_f5e41055Address = mem[_15355 + 12 len 20]
                            if not mem[_15355 + 12 len 20]:
                                _15721 = mem[448]
                                _16179 = mem[mem[448]]
                                idx = 0
                                while idx < _16179:
                                    if idx >= mem[_15721]:
                                        revert with 0, 50
                                    if idx >= mem[_15721]:
                                        revert with 0, 50
                                    mem[(32 * idx) + _15721 + 32] = address(mem[(32 * idx) + _15721 + 44 len 20] xor stor28)
                                    if idx == -1:
                                        revert with 0, 17
                                    _16179 = mem[_15721]
                                    idx = idx + 1
                                    continue 
                                sub_98b31141.length = mem[_15721]
                                if not mem[_15721]:
                                    idx = 0
                                    while sub_98b31141.length > idx:
                                        uint256(sub_98b31141[idx]) = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    s = 0
                                    idx = _15721 + 32
                                    while _15721 + (32 * mem[_15721]) + 32 > idx:
                                        address(sub_98b31141[s]) = mem[idx + 12 len 20]
                                        s = s + 1
                                        idx = idx + 32
                                        continue 
                                    idx = Mask(251, 0, (32 * mem[_15721]) + 31) >> 5
                                    while sub_98b31141.length > idx:
                                        uint256(sub_98b31141[idx]) = 0
                                        idx = idx + 1
                                        continue 
                            else:
                                sub_6c302b9dAddress = sub_f5e41055Address
                                _15722 = mem[448]
                                _16180 = mem[mem[448]]
                                idx = 0
                                while idx < _16180:
                                    if idx >= mem[_15722]:
                                        revert with 0, 50
                                    if idx >= mem[_15722]:
                                        revert with 0, 50
                                    mem[(32 * idx) + _15722 + 32] = address(mem[(32 * idx) + _15722 + 44 len 20] xor stor28)
                                    if idx == -1:
                                        revert with 0, 17
                                    _16180 = mem[_15722]
                                    idx = idx + 1
                                    continue 
                                sub_98b31141.length = mem[_15722]
                                if not mem[_15722]:
                                    idx = 0
                                    while sub_98b31141.length > idx:
                                        uint256(sub_98b31141[idx]) = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    s = 0
                                    idx = _15722 + 32
                                    while _15722 + (32 * mem[_15722]) + 32 > idx:
                                        address(sub_98b31141[s]) = mem[idx + 12 len 20]
                                        s = s + 1
                                        idx = idx + 32
                                        continue 
                                    idx = Mask(251, 0, (32 * mem[_15722]) + 31) >> 5
                                    while sub_98b31141.length > idx:
                                        uint256(sub_98b31141[idx]) = 0
                                        idx = idx + 1
                                        continue 
                else:
                    s = 0
                    idx = _10332 + 32
                    while _10332 + (32 * _11523) + 32 > idx:
                        sub_b6c1554e[s].field_0 = mem[idx + 12 len 20]
                        s = s + 1
                        idx = idx + 32
                        continue 
                    idx = Mask(251, 0, (32 * _11523) + 31) >> 5
                    while sub_b6c1554e.length > idx:
                        sub_b6c1554e[idx].field_0 = 0
                        idx = idx + 1
                        continue 
                    _13962 = mem[64]
                    mem[64] = mem[64] + (32 * sub_b6c1554e.length) + 32
                    mem[_13962] = sub_b6c1554e.length
                    if not sub_b6c1554e.length:
                        if sub_f5e41055Address:
                            _14031 = mem[448]
                            _14982 = mem[mem[448]]
                            idx = 0
                            while idx < _14982:
                                if idx >= mem[_14031]:
                                    revert with 0, 50
                                if idx >= mem[_14031]:
                                    revert with 0, 50
                                mem[(32 * idx) + _14031 + 32] = address(mem[(32 * idx) + _14031 + 44 len 20] xor stor28)
                                if idx == -1:
                                    revert with 0, 17
                                _14982 = mem[_14031]
                                idx = idx + 1
                                continue 
                            sub_98b31141.length = mem[_14031]
                            if not mem[_14031]:
                                idx = 0
                                while sub_98b31141.length > idx:
                                    uint256(sub_98b31141[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            else:
                                s = 0
                                idx = _14031 + 32
                                while _14031 + (32 * mem[_14031]) + 32 > idx:
                                    address(sub_98b31141[s]) = mem[idx + 12 len 20]
                                    s = s + 1
                                    idx = idx + 32
                                    continue 
                                idx = Mask(251, 0, (32 * mem[_14031]) + 31) >> 5
                                while sub_98b31141.length > idx:
                                    uint256(sub_98b31141[idx]) = 0
                                    idx = idx + 1
                                    continue 
                        else:
                            if not sub_b6c1554e.length:
                                revert with 0, 50
                            if 1 >= sub_b6c1554e.length:
                                revert with 0, 50
                            _14050 = mem[_13962 + 64]
                            mem[mem[64] + 4] = mem[_13962 + 44 len 20]
                            mem[mem[64] + 36] = address(_14050)
                            require ext_code.size(sub_3ef67e9fAddress)
                            staticcall sub_3ef67e9fAddress.getPair(address arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4], address(_14050)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _14247 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_14247] == mem[_14247 + 12 len 20]
                            sub_f5e41055Address = mem[_14247 + 12 len 20]
                            if not mem[_14247 + 12 len 20]:
                                _14401 = mem[448]
                                _14983 = mem[mem[448]]
                                idx = 0
                                while idx < _14983:
                                    if idx >= mem[_14401]:
                                        revert with 0, 50
                                    if idx >= mem[_14401]:
                                        revert with 0, 50
                                    mem[(32 * idx) + _14401 + 32] = address(mem[(32 * idx) + _14401 + 44 len 20] xor stor28)
                                    if idx == -1:
                                        revert with 0, 17
                                    _14983 = mem[_14401]
                                    idx = idx + 1
                                    continue 
                                sub_98b31141.length = mem[_14401]
                                if not mem[_14401]:
                                    idx = 0
                                    while sub_98b31141.length > idx:
                                        uint256(sub_98b31141[idx]) = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    s = 0
                                    idx = _14401 + 32
                                    while _14401 + (32 * mem[_14401]) + 32 > idx:
                                        address(sub_98b31141[s]) = mem[idx + 12 len 20]
                                        s = s + 1
                                        idx = idx + 32
                                        continue 
                                    idx = Mask(251, 0, (32 * mem[_14401]) + 31) >> 5
                                    while sub_98b31141.length > idx:
                                        uint256(sub_98b31141[idx]) = 0
                                        idx = idx + 1
                                        continue 
                            else:
                                sub_6c302b9dAddress = sub_f5e41055Address
                                _14402 = mem[448]
                                _14984 = mem[mem[448]]
                                idx = 0
                                while idx < _14984:
                                    if idx >= mem[_14402]:
                                        revert with 0, 50
                                    if idx >= mem[_14402]:
                                        revert with 0, 50
                                    mem[(32 * idx) + _14402 + 32] = address(mem[(32 * idx) + _14402 + 44 len 20] xor stor28)
                                    if idx == -1:
                                        revert with 0, 17
                                    _14984 = mem[_14402]
                                    idx = idx + 1
                                    continue 
                                sub_98b31141.length = mem[_14402]
                                if not mem[_14402]:
                                    idx = 0
                                    while sub_98b31141.length > idx:
                                        uint256(sub_98b31141[idx]) = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    s = 0
                                    idx = _14402 + 32
                                    while _14402 + (32 * mem[_14402]) + 32 > idx:
                                        address(sub_98b31141[s]) = mem[idx + 12 len 20]
                                        s = s + 1
                                        idx = idx + 32
                                        continue 
                                    idx = Mask(251, 0, (32 * mem[_14402]) + 31) >> 5
                                    while sub_98b31141.length > idx:
                                        uint256(sub_98b31141[idx]) = 0
                                        idx = idx + 1
                                        continue 
                    else:
                        mem[0] = 18
                        mem[_13962 + 32] = address(sub_b6c1554e.field_0)
                        idx = _13962 + 32
                        s = 0
                        while _13962 + (32 * sub_b6c1554e.length) > idx:
                            mem[idx + 32] = sub_b6c1554e[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        if sub_f5e41055Address:
                            _16490 = mem[448]
                            _17454 = mem[mem[448]]
                            idx = 0
                            while idx < _17454:
                                if idx >= mem[_16490]:
                                    revert with 0, 50
                                if idx >= mem[_16490]:
                                    revert with 0, 50
                                mem[(32 * idx) + _16490 + 32] = address(mem[(32 * idx) + _16490 + 44 len 20] xor stor28)
                                if idx == -1:
                                    revert with 0, 17
                                _17454 = mem[_16490]
                                idx = idx + 1
                                continue 
                            sub_98b31141.length = mem[_16490]
                            if not mem[_16490]:
                                idx = 0
                                while sub_98b31141.length > idx:
                                    uint256(sub_98b31141[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            else:
                                s = 0
                                idx = _16490 + 32
                                while _16490 + (32 * mem[_16490]) + 32 > idx:
                                    address(sub_98b31141[s]) = mem[idx + 12 len 20]
                                    s = s + 1
                                    idx = idx + 32
                                    continue 
                                idx = Mask(251, 0, (32 * mem[_16490]) + 31) >> 5
                                while sub_98b31141.length > idx:
                                    uint256(sub_98b31141[idx]) = 0
                                    idx = idx + 1
                                    continue 
                        else:
                            if not sub_b6c1554e.length:
                                revert with 0, 50
                            if 1 >= sub_b6c1554e.length:
                                revert with 0, 50
                            _16560 = mem[_13962 + 64]
                            mem[mem[64] + 4] = mem[_13962 + 44 len 20]
                            mem[mem[64] + 36] = address(_16560)
                            require ext_code.size(sub_3ef67e9fAddress)
                            staticcall sub_3ef67e9fAddress.getPair(address arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4], address(_16560)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _16747 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_16747] == mem[_16747 + 12 len 20]
                            sub_f5e41055Address = mem[_16747 + 12 len 20]
                            if not mem[_16747 + 12 len 20]:
                                _17122 = mem[448]
                                _17455 = mem[mem[448]]
                                idx = 0
                                while idx < _17455:
                                    if idx >= mem[_17122]:
                                        revert with 0, 50
                                    if idx >= mem[_17122]:
                                        revert with 0, 50
                                    mem[(32 * idx) + _17122 + 32] = address(mem[(32 * idx) + _17122 + 44 len 20] xor stor28)
                                    if idx == -1:
                                        revert with 0, 17
                                    _17455 = mem[_17122]
                                    idx = idx + 1
                                    continue 
                                sub_98b31141.length = mem[_17122]
                                if not mem[_17122]:
                                    idx = 0
                                    while sub_98b31141.length > idx:
                                        uint256(sub_98b31141[idx]) = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    s = 0
                                    idx = _17122 + 32
                                    while _17122 + (32 * mem[_17122]) + 32 > idx:
                                        address(sub_98b31141[s]) = mem[idx + 12 len 20]
                                        s = s + 1
                                        idx = idx + 32
                                        continue 
                                    idx = Mask(251, 0, (32 * mem[_17122]) + 31) >> 5
                                    while sub_98b31141.length > idx:
                                        uint256(sub_98b31141[idx]) = 0
                                        idx = idx + 1
                                        continue 
                            else:
                                sub_6c302b9dAddress = sub_f5e41055Address
                                _17123 = mem[448]
                                _17456 = mem[mem[448]]
                                idx = 0
                                while idx < _17456:
                                    if idx >= mem[_17123]:
                                        revert with 0, 50
                                    if idx >= mem[_17123]:
                                        revert with 0, 50
                                    mem[(32 * idx) + _17123 + 32] = address(mem[(32 * idx) + _17123 + 44 len 20] xor stor28)
                                    if idx == -1:
                                        revert with 0, 17
                                    _17456 = mem[_17123]
                                    idx = idx + 1
                                    continue 
                                sub_98b31141.length = mem[_17123]
                                if not mem[_17123]:
                                    idx = 0
                                    while sub_98b31141.length > idx:
                                        uint256(sub_98b31141[idx]) = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    s = 0
                                    idx = _17123 + 32
                                    while _17123 + (32 * mem[_17123]) + 32 > idx:
                                        address(sub_98b31141[s]) = mem[idx + 12 len 20]
                                        s = s + 1
                                        idx = idx + 32
                                        continue 
                                    idx = Mask(251, 0, (32 * mem[_17123]) + 31) >> 5
                                    while sub_98b31141.length > idx:
                                        uint256(sub_98b31141[idx]) = 0
                                        idx = idx + 1
                                        continue 
            else:
                s = 0
                idx = mem[448] + 32
                while mem[448] + (32 * _9043) + 32 > idx:
                    address(sub_98b31141[s]) = mem[idx + 12 len 20]
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = Mask(251, 0, (32 * _9043) + 31) >> 5
                while sub_98b31141.length > idx:
                    uint256(sub_98b31141[idx]) = 0
                    idx = idx + 1
                    continue 
                stor20 = uint8(bool(mem[480]))
                stor8 = address(mem[108 len 20] xor stor28)
                require ext_code.size(address(mem[108 len 20] xor stor28))
                staticcall address(mem[108 len 20] xor stor28).factory() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _11546 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_11546] == mem[_11546 + 12 len 20]
                sub_3ef67e9fAddress = mem[_11546 + 12 len 20]
                sub_f5e41055Address = 0
                _11590 = mem[416]
                _12714 = mem[mem[416]]
                idx = 0
                while idx < _12714:
                    if idx >= mem[_11590]:
                        revert with 0, 50
                    if idx >= mem[_11590]:
                        revert with 0, 50
                    mem[(32 * idx) + _11590 + 32] = address(mem[(32 * idx) + _11590 + 44 len 20] xor stor28)
                    if idx == -1:
                        revert with 0, 17
                    _12714 = mem[_11590]
                    idx = idx + 1
                    continue 
                _12733 = mem[_11590]
                sub_b6c1554e.length = mem[_11590]
                mem[0] = 18
                if not _12733:
                    idx = 0
                    while sub_b6c1554e.length > idx:
                        sub_b6c1554e[idx].field_0 = 0
                        idx = idx + 1
                        continue 
                    _13963 = mem[64]
                    mem[64] = mem[64] + (32 * sub_b6c1554e.length) + 32
                    mem[_13963] = sub_b6c1554e.length
                    if not sub_b6c1554e.length:
                        if sub_f5e41055Address:
                            _14034 = mem[448]
                            _14985 = mem[mem[448]]
                            idx = 0
                            while idx < _14985:
                                if idx >= mem[_14034]:
                                    revert with 0, 50
                                if idx >= mem[_14034]:
                                    revert with 0, 50
                                mem[(32 * idx) + _14034 + 32] = address(mem[(32 * idx) + _14034 + 44 len 20] xor stor28)
                                if idx == -1:
                                    revert with 0, 17
                                _14985 = mem[_14034]
                                idx = idx + 1
                                continue 
                            sub_98b31141.length = mem[_14034]
                            if not mem[_14034]:
                                idx = 0
                                while sub_98b31141.length > idx:
                                    uint256(sub_98b31141[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            else:
                                s = 0
                                idx = _14034 + 32
                                while _14034 + (32 * mem[_14034]) + 32 > idx:
                                    address(sub_98b31141[s]) = mem[idx + 12 len 20]
                                    s = s + 1
                                    idx = idx + 32
                                    continue 
                                idx = Mask(251, 0, (32 * mem[_14034]) + 31) >> 5
                                while sub_98b31141.length > idx:
                                    uint256(sub_98b31141[idx]) = 0
                                    idx = idx + 1
                                    continue 
                        else:
                            if not sub_b6c1554e.length:
                                revert with 0, 50
                            if 1 >= sub_b6c1554e.length:
                                revert with 0, 50
                            _14052 = mem[_13963 + 64]
                            mem[mem[64] + 4] = mem[_13963 + 44 len 20]
                            mem[mem[64] + 36] = address(_14052)
                            require ext_code.size(sub_3ef67e9fAddress)
                            staticcall sub_3ef67e9fAddress.getPair(address arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4], address(_14052)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _14250 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_14250] == mem[_14250 + 12 len 20]
                            sub_f5e41055Address = mem[_14250 + 12 len 20]
                            if not mem[_14250 + 12 len 20]:
                                _14403 = mem[448]
                                _14986 = mem[mem[448]]
                                idx = 0
                                while idx < _14986:
                                    if idx >= mem[_14403]:
                                        revert with 0, 50
                                    if idx >= mem[_14403]:
                                        revert with 0, 50
                                    mem[(32 * idx) + _14403 + 32] = address(mem[(32 * idx) + _14403 + 44 len 20] xor stor28)
                                    if idx == -1:
                                        revert with 0, 17
                                    _14986 = mem[_14403]
                                    idx = idx + 1
                                    continue 
                                sub_98b31141.length = mem[_14403]
                                if not mem[_14403]:
                                    idx = 0
                                    while sub_98b31141.length > idx:
                                        uint256(sub_98b31141[idx]) = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    s = 0
                                    idx = _14403 + 32
                                    while _14403 + (32 * mem[_14403]) + 32 > idx:
                                        address(sub_98b31141[s]) = mem[idx + 12 len 20]
                                        s = s + 1
                                        idx = idx + 32
                                        continue 
                                    idx = Mask(251, 0, (32 * mem[_14403]) + 31) >> 5
                                    while sub_98b31141.length > idx:
                                        uint256(sub_98b31141[idx]) = 0
                                        idx = idx + 1
                                        continue 
                            else:
                                sub_6c302b9dAddress = sub_f5e41055Address
                                _14404 = mem[448]
                                _14987 = mem[mem[448]]
                                idx = 0
                                while idx < _14987:
                                    if idx >= mem[_14404]:
                                        revert with 0, 50
                                    if idx >= mem[_14404]:
                                        revert with 0, 50
                                    mem[(32 * idx) + _14404 + 32] = address(mem[(32 * idx) + _14404 + 44 len 20] xor stor28)
                                    if idx == -1:
                                        revert with 0, 17
                                    _14987 = mem[_14404]
                                    idx = idx + 1
                                    continue 
                                sub_98b31141.length = mem[_14404]
                                if not mem[_14404]:
                                    idx = 0
                                    while sub_98b31141.length > idx:
                                        uint256(sub_98b31141[idx]) = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    s = 0
                                    idx = _14404 + 32
                                    while _14404 + (32 * mem[_14404]) + 32 > idx:
                                        address(sub_98b31141[s]) = mem[idx + 12 len 20]
                                        s = s + 1
                                        idx = idx + 32
                                        continue 
                                    idx = Mask(251, 0, (32 * mem[_14404]) + 31) >> 5
                                    while sub_98b31141.length > idx:
                                        uint256(sub_98b31141[idx]) = 0
                                        idx = idx + 1
                                        continue 
                    else:
                        mem[0] = 18
                        mem[_13963 + 32] = address(sub_b6c1554e.field_0)
                        idx = _13963 + 32
                        s = 0
                        while _13963 + (32 * sub_b6c1554e.length) > idx:
                            mem[idx + 32] = sub_b6c1554e[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        if sub_f5e41055Address:
                            _16511 = mem[448]
                            _17457 = mem[mem[448]]
                            idx = 0
                            while idx < _17457:
                                if idx >= mem[_16511]:
                                    revert with 0, 50
                                if idx >= mem[_16511]:
                                    revert with 0, 50
                                mem[(32 * idx) + _16511 + 32] = address(mem[(32 * idx) + _16511 + 44 len 20] xor stor28)
                                if idx == -1:
                                    revert with 0, 17
                                _17457 = mem[_16511]
                                idx = idx + 1
                                continue 
                            sub_98b31141.length = mem[_16511]
                            if not mem[_16511]:
                                idx = 0
                                while sub_98b31141.length > idx:
                                    uint256(sub_98b31141[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            else:
                                s = 0
                                idx = _16511 + 32
                                while _16511 + (32 * mem[_16511]) + 32 > idx:
                                    address(sub_98b31141[s]) = mem[idx + 12 len 20]
                                    s = s + 1
                                    idx = idx + 32
                                    continue 
                                idx = Mask(251, 0, (32 * mem[_16511]) + 31) >> 5
                                while sub_98b31141.length > idx:
                                    uint256(sub_98b31141[idx]) = 0
                                    idx = idx + 1
                                    continue 
                        else:
                            if not sub_b6c1554e.length:
                                revert with 0, 50
                            if 1 >= sub_b6c1554e.length:
                                revert with 0, 50
                            _16562 = mem[_13963 + 64]
                            mem[mem[64] + 4] = mem[_13963 + 44 len 20]
                            mem[mem[64] + 36] = address(_16562)
                            require ext_code.size(sub_3ef67e9fAddress)
                            staticcall sub_3ef67e9fAddress.getPair(address arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4], address(_16562)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _16750 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_16750] == mem[_16750 + 12 len 20]
                            sub_f5e41055Address = mem[_16750 + 12 len 20]
                            if not mem[_16750 + 12 len 20]:
                                _17124 = mem[448]
                                _17458 = mem[mem[448]]
                                idx = 0
                                while idx < _17458:
                                    if idx >= mem[_17124]:
                                        revert with 0, 50
                                    if idx >= mem[_17124]:
                                        revert with 0, 50
                                    mem[(32 * idx) + _17124 + 32] = address(mem[(32 * idx) + _17124 + 44 len 20] xor stor28)
                                    if idx == -1:
                                        revert with 0, 17
                                    _17458 = mem[_17124]
                                    idx = idx + 1
                                    continue 
                                sub_98b31141.length = mem[_17124]
                                if not mem[_17124]:
                                    idx = 0
                                    while sub_98b31141.length > idx:
                                        uint256(sub_98b31141[idx]) = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    s = 0
                                    idx = _17124 + 32
                                    while _17124 + (32 * mem[_17124]) + 32 > idx:
                                        address(sub_98b31141[s]) = mem[idx + 12 len 20]
                                        s = s + 1
                                        idx = idx + 32
                                        continue 
                                    idx = Mask(251, 0, (32 * mem[_17124]) + 31) >> 5
                                    while sub_98b31141.length > idx:
                                        uint256(sub_98b31141[idx]) = 0
                                        idx = idx + 1
                                        continue 
                            else:
                                sub_6c302b9dAddress = sub_f5e41055Address
                                _17125 = mem[448]
                                _17459 = mem[mem[448]]
                                idx = 0
                                while idx < _17459:
                                    if idx >= mem[_17125]:
                                        revert with 0, 50
                                    if idx >= mem[_17125]:
                                        revert with 0, 50
                                    mem[(32 * idx) + _17125 + 32] = address(mem[(32 * idx) + _17125 + 44 len 20] xor stor28)
                                    if idx == -1:
                                        revert with 0, 17
                                    _17459 = mem[_17125]
                                    idx = idx + 1
                                    continue 
                                sub_98b31141.length = mem[_17125]
                                if not mem[_17125]:
                                    idx = 0
                                    while sub_98b31141.length > idx:
                                        uint256(sub_98b31141[idx]) = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    s = 0
                                    idx = _17125 + 32
                                    while _17125 + (32 * mem[_17125]) + 32 > idx:
                                        address(sub_98b31141[s]) = mem[idx + 12 len 20]
                                        s = s + 1
                                        idx = idx + 32
                                        continue 
                                    idx = Mask(251, 0, (32 * mem[_17125]) + 31) >> 5
                                    while sub_98b31141.length > idx:
                                        uint256(sub_98b31141[idx]) = 0
                                        idx = idx + 1
                                        continue 
                else:
                    s = 0
                    idx = _11590 + 32
                    while _11590 + (32 * _12733) + 32 > idx:
                        sub_b6c1554e[s].field_0 = mem[idx + 12 len 20]
                        s = s + 1
                        idx = idx + 32
                        continue 
                    idx = Mask(251, 0, (32 * _12733) + 31) >> 5
                    while sub_b6c1554e.length > idx:
                        sub_b6c1554e[idx].field_0 = 0
                        idx = idx + 1
                        continue 
                    _15210 = mem[64]
                    mem[64] = mem[64] + (32 * sub_b6c1554e.length) + 32
                    mem[_15210] = sub_b6c1554e.length
                    if not sub_b6c1554e.length:
                        if sub_f5e41055Address:
                            _15356 = mem[448]
                            _16181 = mem[mem[448]]
                            idx = 0
                            while idx < _16181:
                                if idx >= mem[_15356]:
                                    revert with 0, 50
                                if idx >= mem[_15356]:
                                    revert with 0, 50
                                mem[(32 * idx) + _15356 + 32] = address(mem[(32 * idx) + _15356 + 44 len 20] xor stor28)
                                if idx == -1:
                                    revert with 0, 17
                                _16181 = mem[_15356]
                                idx = idx + 1
                                continue 
                            sub_98b31141.length = mem[_15356]
                            if not mem[_15356]:
                                idx = 0
                                while sub_98b31141.length > idx:
                                    uint256(sub_98b31141[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            else:
                                s = 0
                                idx = _15356 + 32
                                while _15356 + (32 * mem[_15356]) + 32 > idx:
                                    address(sub_98b31141[s]) = mem[idx + 12 len 20]
                                    s = s + 1
                                    idx = idx + 32
                                    continue 
                                idx = Mask(251, 0, (32 * mem[_15356]) + 31) >> 5
                                while sub_98b31141.length > idx:
                                    uint256(sub_98b31141[idx]) = 0
                                    idx = idx + 1
                                    continue 
                        else:
                            if not sub_b6c1554e.length:
                                revert with 0, 50
                            if 1 >= sub_b6c1554e.length:
                                revert with 0, 50
                            _15376 = mem[_15210 + 64]
                            mem[mem[64] + 4] = mem[_15210 + 44 len 20]
                            mem[mem[64] + 36] = address(_15376)
                            require ext_code.size(sub_3ef67e9fAddress)
                            staticcall sub_3ef67e9fAddress.getPair(address arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4], address(_15376)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _15645 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_15645] == mem[_15645 + 12 len 20]
                            sub_f5e41055Address = mem[_15645 + 12 len 20]
                            if not mem[_15645 + 12 len 20]:
                                _15812 = mem[448]
                                _16182 = mem[mem[448]]
                                idx = 0
                                while idx < _16182:
                                    if idx >= mem[_15812]:
                                        revert with 0, 50
                                    if idx >= mem[_15812]:
                                        revert with 0, 50
                                    mem[(32 * idx) + _15812 + 32] = address(mem[(32 * idx) + _15812 + 44 len 20] xor stor28)
                                    if idx == -1:
                                        revert with 0, 17
                                    _16182 = mem[_15812]
                                    idx = idx + 1
                                    continue 
                                sub_98b31141.length = mem[_15812]
                                if not mem[_15812]:
                                    idx = 0
                                    while sub_98b31141.length > idx:
                                        uint256(sub_98b31141[idx]) = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    s = 0
                                    idx = _15812 + 32
                                    while _15812 + (32 * mem[_15812]) + 32 > idx:
                                        address(sub_98b31141[s]) = mem[idx + 12 len 20]
                                        s = s + 1
                                        idx = idx + 32
                                        continue 
                                    idx = Mask(251, 0, (32 * mem[_15812]) + 31) >> 5
                                    while sub_98b31141.length > idx:
                                        uint256(sub_98b31141[idx]) = 0
                                        idx = idx + 1
                                        continue 
                            else:
                                sub_6c302b9dAddress = sub_f5e41055Address
                                _15813 = mem[448]
                                _16183 = mem[mem[448]]
                                idx = 0
                                while idx < _16183:
                                    if idx >= mem[_15813]:
                                        revert with 0, 50
                                    if idx >= mem[_15813]:
                                        revert with 0, 50
                                    mem[(32 * idx) + _15813 + 32] = address(mem[(32 * idx) + _15813 + 44 len 20] xor stor28)
                                    if idx == -1:
                                        revert with 0, 17
                                    _16183 = mem[_15813]
                                    idx = idx + 1
                                    continue 
                                sub_98b31141.length = mem[_15813]
                                if not mem[_15813]:
                                    idx = 0
                                    while sub_98b31141.length > idx:
                                        uint256(sub_98b31141[idx]) = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    s = 0
                                    idx = _15813 + 32
                                    while _15813 + (32 * mem[_15813]) + 32 > idx:
                                        address(sub_98b31141[s]) = mem[idx + 12 len 20]
                                        s = s + 1
                                        idx = idx + 32
                                        continue 
                                    idx = Mask(251, 0, (32 * mem[_15813]) + 31) >> 5
                                    while sub_98b31141.length > idx:
                                        uint256(sub_98b31141[idx]) = 0
                                        idx = idx + 1
                                        continue 
                    else:
                        mem[0] = 18
                        mem[_15210 + 32] = address(sub_b6c1554e.field_0)
                        idx = _15210 + 32
                        s = 0
                        while _15210 + (32 * sub_b6c1554e.length) > idx:
                            mem[idx + 32] = sub_b6c1554e[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        if sub_f5e41055Address:
                            _17806 = mem[448]
                            _18557 = mem[mem[448]]
                            idx = 0
                            while idx < _18557:
                                if idx >= mem[_17806]:
                                    revert with 0, 50
                                if idx >= mem[_17806]:
                                    revert with 0, 50
                                mem[(32 * idx) + _17806 + 32] = address(mem[(32 * idx) + _17806 + 44 len 20] xor stor28)
                                if idx == -1:
                                    revert with 0, 17
                                _18557 = mem[_17806]
                                idx = idx + 1
                                continue 
                            sub_98b31141.length = mem[_17806]
                            if not mem[_17806]:
                                idx = 0
                                while sub_98b31141.length > idx:
                                    uint256(sub_98b31141[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            else:
                                s = 0
                                idx = _17806 + 32
                                while _17806 + (32 * mem[_17806]) + 32 > idx:
                                    address(sub_98b31141[s]) = mem[idx + 12 len 20]
                                    s = s + 1
                                    idx = idx + 32
                                    continue 
                                idx = Mask(251, 0, (32 * mem[_17806]) + 31) >> 5
                                while sub_98b31141.length > idx:
                                    uint256(sub_98b31141[idx]) = 0
                                    idx = idx + 1
                                    continue 
                        else:
                            if not sub_b6c1554e.length:
                                revert with 0, 50
                            if 1 >= sub_b6c1554e.length:
                                revert with 0, 50
                            _17883 = mem[_15210 + 64]
                            mem[mem[64] + 4] = mem[_15210 + 44 len 20]
                            mem[mem[64] + 36] = address(_17883)
                            require ext_code.size(sub_3ef67e9fAddress)
                            staticcall sub_3ef67e9fAddress.getPair(address arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4], address(_17883)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _18071 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_18071] == mem[_18071 + 12 len 20]
                            sub_f5e41055Address = mem[_18071 + 12 len 20]
                            if not mem[_18071 + 12 len 20]:
                                _18372 = mem[448]
                                _18558 = mem[mem[448]]
                                idx = 0
                                while idx < _18558:
                                    if idx >= mem[_18372]:
                                        revert with 0, 50
                                    if idx >= mem[_18372]:
                                        revert with 0, 50
                                    mem[(32 * idx) + _18372 + 32] = address(mem[(32 * idx) + _18372 + 44 len 20] xor stor28)
                                    if idx == -1:
                                        revert with 0, 17
                                    _18558 = mem[_18372]
                                    idx = idx + 1
                                    continue 
                                sub_98b31141.length = mem[_18372]
                                if not mem[_18372]:
                                    idx = 0
                                    while sub_98b31141.length > idx:
                                        uint256(sub_98b31141[idx]) = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    s = 0
                                    idx = _18372 + 32
                                    while _18372 + (32 * mem[_18372]) + 32 > idx:
                                        address(sub_98b31141[s]) = mem[idx + 12 len 20]
                                        s = s + 1
                                        idx = idx + 32
                                        continue 
                                    idx = Mask(251, 0, (32 * mem[_18372]) + 31) >> 5
                                    while sub_98b31141.length > idx:
                                        uint256(sub_98b31141[idx]) = 0
                                        idx = idx + 1
                                        continue 
                            else:
                                sub_6c302b9dAddress = sub_f5e41055Address
                                _18373 = mem[448]
                                _18559 = mem[mem[448]]
                                idx = 0
                                while idx < _18559:
                                    if idx >= mem[_18373]:
                                        revert with 0, 50
                                    if idx >= mem[_18373]:
                                        revert with 0, 50
                                    mem[(32 * idx) + _18373 + 32] = address(mem[(32 * idx) + _18373 + 44 len 20] xor stor28)
                                    if idx == -1:
                                        revert with 0, 17
                                    _18559 = mem[_18373]
                                    idx = idx + 1
                                    continue 
                                sub_98b31141.length = mem[_18373]
                                if not mem[_18373]:
                                    idx = 0
                                    while sub_98b31141.length > idx:
                                        uint256(sub_98b31141[idx]) = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    s = 0
                                    idx = _18373 + 32
                                    while _18373 + (32 * mem[_18373]) + 32 > idx:
                                        address(sub_98b31141[s]) = mem[idx + 12 len 20]
                                        s = s + 1
                                        idx = idx + 32
                                        continue 
                                    idx = Mask(251, 0, (32 * mem[_18373]) + 31) >> 5
                                    while sub_98b31141.length > idx:
                                        uint256(sub_98b31141[idx]) = 0
                                        idx = idx + 1
                                        continue 
        else:
            s = 0
            idx = mem[416] + 32
            while mem[416] + (32 * _7785) + 32 > idx:
                sub_b6c1554e[s].field_0 = mem[idx + 12 len 20]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, (32 * _7785) + 31) >> 5
            while sub_b6c1554e.length > idx:
                sub_b6c1554e[idx].field_0 = 0
                idx = idx + 1
                continue 
            _10301 = mem[mem[448]]
            sub_98b31141.length = mem[mem[448]]
            mem[0] = 19
            if not _10301:
                idx = 0
                while sub_98b31141.length > idx:
                    uint256(sub_98b31141[idx]) = 0
                    idx = idx + 1
                    continue 
                stor20 = uint8(bool(mem[480]))
                stor8 = address(mem[108 len 20] xor stor28)
                require ext_code.size(address(mem[108 len 20] xor stor28))
                staticcall address(mem[108 len 20] xor stor28).factory() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _11547 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_11547] == mem[_11547 + 12 len 20]
                sub_3ef67e9fAddress = mem[_11547 + 12 len 20]
                sub_f5e41055Address = 0
                _11591 = mem[416]
                _12715 = mem[mem[416]]
                idx = 0
                while idx < _12715:
                    if idx >= mem[_11591]:
                        revert with 0, 50
                    if idx >= mem[_11591]:
                        revert with 0, 50
                    mem[(32 * idx) + _11591 + 32] = address(mem[(32 * idx) + _11591 + 44 len 20] xor stor28)
                    if idx == -1:
                        revert with 0, 17
                    _12715 = mem[_11591]
                    idx = idx + 1
                    continue 
                _12735 = mem[_11591]
                sub_b6c1554e.length = mem[_11591]
                mem[0] = 18
                if not _12735:
                    idx = 0
                    while sub_b6c1554e.length > idx:
                        sub_b6c1554e[idx].field_0 = 0
                        idx = idx + 1
                        continue 
                    _13964 = mem[64]
                    mem[64] = mem[64] + (32 * sub_b6c1554e.length) + 32
                    mem[_13964] = sub_b6c1554e.length
                    if not sub_b6c1554e.length:
                        if sub_f5e41055Address:
                            _14038 = mem[448]
                            _14988 = mem[mem[448]]
                            idx = 0
                            while idx < _14988:
                                if idx >= mem[_14038]:
                                    revert with 0, 50
                                if idx >= mem[_14038]:
                                    revert with 0, 50
                                mem[(32 * idx) + _14038 + 32] = address(mem[(32 * idx) + _14038 + 44 len 20] xor stor28)
                                if idx == -1:
                                    revert with 0, 17
                                _14988 = mem[_14038]
                                idx = idx + 1
                                continue 
                            sub_98b31141.length = mem[_14038]
                            if not mem[_14038]:
                                idx = 0
                                while sub_98b31141.length > idx:
                                    uint256(sub_98b31141[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            else:
                                s = 0
                                idx = _14038 + 32
                                while _14038 + (32 * mem[_14038]) + 32 > idx:
                                    address(sub_98b31141[s]) = mem[idx + 12 len 20]
                                    s = s + 1
                                    idx = idx + 32
                                    continue 
                                idx = Mask(251, 0, (32 * mem[_14038]) + 31) >> 5
                                while sub_98b31141.length > idx:
                                    uint256(sub_98b31141[idx]) = 0
                                    idx = idx + 1
                                    continue 
                        else:
                            if not sub_b6c1554e.length:
                                revert with 0, 50
                            if 1 >= sub_b6c1554e.length:
                                revert with 0, 50
                            _14054 = mem[_13964 + 64]
                            mem[mem[64] + 4] = mem[_13964 + 44 len 20]
                            mem[mem[64] + 36] = address(_14054)
                            require ext_code.size(sub_3ef67e9fAddress)
                            staticcall sub_3ef67e9fAddress.getPair(address arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4], address(_14054)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _14255 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_14255] == mem[_14255 + 12 len 20]
                            sub_f5e41055Address = mem[_14255 + 12 len 20]
                            if not mem[_14255 + 12 len 20]:
                                _14405 = mem[448]
                                _14989 = mem[mem[448]]
                                idx = 0
                                while idx < _14989:
                                    if idx >= mem[_14405]:
                                        revert with 0, 50
                                    if idx >= mem[_14405]:
                                        revert with 0, 50
                                    mem[(32 * idx) + _14405 + 32] = address(mem[(32 * idx) + _14405 + 44 len 20] xor stor28)
                                    if idx == -1:
                                        revert with 0, 17
                                    _14989 = mem[_14405]
                                    idx = idx + 1
                                    continue 
                                sub_98b31141.length = mem[_14405]
                                if not mem[_14405]:
                                    idx = 0
                                    while sub_98b31141.length > idx:
                                        uint256(sub_98b31141[idx]) = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    s = 0
                                    idx = _14405 + 32
                                    while _14405 + (32 * mem[_14405]) + 32 > idx:
                                        address(sub_98b31141[s]) = mem[idx + 12 len 20]
                                        s = s + 1
                                        idx = idx + 32
                                        continue 
                                    idx = Mask(251, 0, (32 * mem[_14405]) + 31) >> 5
                                    while sub_98b31141.length > idx:
                                        uint256(sub_98b31141[idx]) = 0
                                        idx = idx + 1
                                        continue 
                            else:
                                sub_6c302b9dAddress = sub_f5e41055Address
                                _14406 = mem[448]
                                _14990 = mem[mem[448]]
                                idx = 0
                                while idx < _14990:
                                    if idx >= mem[_14406]:
                                        revert with 0, 50
                                    if idx >= mem[_14406]:
                                        revert with 0, 50
                                    mem[(32 * idx) + _14406 + 32] = address(mem[(32 * idx) + _14406 + 44 len 20] xor stor28)
                                    if idx == -1:
                                        revert with 0, 17
                                    _14990 = mem[_14406]
                                    idx = idx + 1
                                    continue 
                                sub_98b31141.length = mem[_14406]
                                if not mem[_14406]:
                                    idx = 0
                                    while sub_98b31141.length > idx:
                                        uint256(sub_98b31141[idx]) = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    s = 0
                                    idx = _14406 + 32
                                    while _14406 + (32 * mem[_14406]) + 32 > idx:
                                        address(sub_98b31141[s]) = mem[idx + 12 len 20]
                                        s = s + 1
                                        idx = idx + 32
                                        continue 
                                    idx = Mask(251, 0, (32 * mem[_14406]) + 31) >> 5
                                    while sub_98b31141.length > idx:
                                        uint256(sub_98b31141[idx]) = 0
                                        idx = idx + 1
                                        continue 
                    else:
                        mem[0] = 18
                        mem[_13964 + 32] = address(sub_b6c1554e.field_0)
                        idx = _13964 + 32
                        s = 0
                        while _13964 + (32 * sub_b6c1554e.length) > idx:
                            mem[idx + 32] = sub_b6c1554e[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        if sub_f5e41055Address:
                            _16538 = mem[448]
                            _17460 = mem[mem[448]]
                            idx = 0
                            while idx < _17460:
                                if idx >= mem[_16538]:
                                    revert with 0, 50
                                if idx >= mem[_16538]:
                                    revert with 0, 50
                                mem[(32 * idx) + _16538 + 32] = address(mem[(32 * idx) + _16538 + 44 len 20] xor stor28)
                                if idx == -1:
                                    revert with 0, 17
                                _17460 = mem[_16538]
                                idx = idx + 1
                                continue 
                            sub_98b31141.length = mem[_16538]
                            if not mem[_16538]:
                                idx = 0
                                while sub_98b31141.length > idx:
                                    uint256(sub_98b31141[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            else:
                                s = 0
                                idx = _16538 + 32
                                while _16538 + (32 * mem[_16538]) + 32 > idx:
                                    address(sub_98b31141[s]) = mem[idx + 12 len 20]
                                    s = s + 1
                                    idx = idx + 32
                                    continue 
                                idx = Mask(251, 0, (32 * mem[_16538]) + 31) >> 5
                                while sub_98b31141.length > idx:
                                    uint256(sub_98b31141[idx]) = 0
                                    idx = idx + 1
                                    continue 
                        else:
                            if not sub_b6c1554e.length:
                                revert with 0, 50
                            if 1 >= sub_b6c1554e.length:
                                revert with 0, 50
                            _16564 = mem[_13964 + 64]
                            mem[mem[64] + 4] = mem[_13964 + 44 len 20]
                            mem[mem[64] + 36] = address(_16564)
                            require ext_code.size(sub_3ef67e9fAddress)
                            staticcall sub_3ef67e9fAddress.getPair(address arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4], address(_16564)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _16753 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_16753] == mem[_16753 + 12 len 20]
                            sub_f5e41055Address = mem[_16753 + 12 len 20]
                            if not mem[_16753 + 12 len 20]:
                                _17126 = mem[448]
                                _17461 = mem[mem[448]]
                                idx = 0
                                while idx < _17461:
                                    if idx >= mem[_17126]:
                                        revert with 0, 50
                                    if idx >= mem[_17126]:
                                        revert with 0, 50
                                    mem[(32 * idx) + _17126 + 32] = address(mem[(32 * idx) + _17126 + 44 len 20] xor stor28)
                                    if idx == -1:
                                        revert with 0, 17
                                    _17461 = mem[_17126]
                                    idx = idx + 1
                                    continue 
                                sub_98b31141.length = mem[_17126]
                                if not mem[_17126]:
                                    idx = 0
                                    while sub_98b31141.length > idx:
                                        uint256(sub_98b31141[idx]) = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    s = 0
                                    idx = _17126 + 32
                                    while _17126 + (32 * mem[_17126]) + 32 > idx:
                                        address(sub_98b31141[s]) = mem[idx + 12 len 20]
                                        s = s + 1
                                        idx = idx + 32
                                        continue 
                                    idx = Mask(251, 0, (32 * mem[_17126]) + 31) >> 5
                                    while sub_98b31141.length > idx:
                                        uint256(sub_98b31141[idx]) = 0
                                        idx = idx + 1
                                        continue 
                            else:
                                sub_6c302b9dAddress = sub_f5e41055Address
                                _17127 = mem[448]
                                _17462 = mem[mem[448]]
                                idx = 0
                                while idx < _17462:
                                    if idx >= mem[_17127]:
                                        revert with 0, 50
                                    if idx >= mem[_17127]:
                                        revert with 0, 50
                                    mem[(32 * idx) + _17127 + 32] = address(mem[(32 * idx) + _17127 + 44 len 20] xor stor28)
                                    if idx == -1:
                                        revert with 0, 17
                                    _17462 = mem[_17127]
                                    idx = idx + 1
                                    continue 
                                sub_98b31141.length = mem[_17127]
                                if not mem[_17127]:
                                    idx = 0
                                    while sub_98b31141.length > idx:
                                        uint256(sub_98b31141[idx]) = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    s = 0
                                    idx = _17127 + 32
                                    while _17127 + (32 * mem[_17127]) + 32 > idx:
                                        address(sub_98b31141[s]) = mem[idx + 12 len 20]
                                        s = s + 1
                                        idx = idx + 32
                                        continue 
                                    idx = Mask(251, 0, (32 * mem[_17127]) + 31) >> 5
                                    while sub_98b31141.length > idx:
                                        uint256(sub_98b31141[idx]) = 0
                                        idx = idx + 1
                                        continue 
                else:
                    s = 0
                    idx = _11591 + 32
                    while _11591 + (32 * _12735) + 32 > idx:
                        sub_b6c1554e[s].field_0 = mem[idx + 12 len 20]
                        s = s + 1
                        idx = idx + 32
                        continue 
                    idx = Mask(251, 0, (32 * _12735) + 31) >> 5
                    while sub_b6c1554e.length > idx:
                        sub_b6c1554e[idx].field_0 = 0
                        idx = idx + 1
                        continue 
                    _15217 = mem[64]
                    mem[64] = mem[64] + (32 * sub_b6c1554e.length) + 32
                    mem[_15217] = sub_b6c1554e.length
                    if not sub_b6c1554e.length:
                        if sub_f5e41055Address:
                            _15359 = mem[448]
                            _16184 = mem[mem[448]]
                            idx = 0
                            while idx < _16184:
                                if idx >= mem[_15359]:
                                    revert with 0, 50
                                if idx >= mem[_15359]:
                                    revert with 0, 50
                                mem[(32 * idx) + _15359 + 32] = address(mem[(32 * idx) + _15359 + 44 len 20] xor stor28)
                                if idx == -1:
                                    revert with 0, 17
                                _16184 = mem[_15359]
                                idx = idx + 1
                                continue 
                            sub_98b31141.length = mem[_15359]
                            if not mem[_15359]:
                                idx = 0
                                while sub_98b31141.length > idx:
                                    uint256(sub_98b31141[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            else:
                                s = 0
                                idx = _15359 + 32
                                while _15359 + (32 * mem[_15359]) + 32 > idx:
                                    address(sub_98b31141[s]) = mem[idx + 12 len 20]
                                    s = s + 1
                                    idx = idx + 32
                                    continue 
                                idx = Mask(251, 0, (32 * mem[_15359]) + 31) >> 5
                                while sub_98b31141.length > idx:
                                    uint256(sub_98b31141[idx]) = 0
                                    idx = idx + 1
                                    continue 
                        else:
                            if not sub_b6c1554e.length:
                                revert with 0, 50
                            if 1 >= sub_b6c1554e.length:
                                revert with 0, 50
                            _15378 = mem[_15217 + 64]
                            mem[mem[64] + 4] = mem[_15217 + 44 len 20]
                            mem[mem[64] + 36] = address(_15378)
                            require ext_code.size(sub_3ef67e9fAddress)
                            staticcall sub_3ef67e9fAddress.getPair(address arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4], address(_15378)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _15666 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_15666] == mem[_15666 + 12 len 20]
                            sub_f5e41055Address = mem[_15666 + 12 len 20]
                            if not mem[_15666 + 12 len 20]:
                                _15814 = mem[448]
                                _16185 = mem[mem[448]]
                                idx = 0
                                while idx < _16185:
                                    if idx >= mem[_15814]:
                                        revert with 0, 50
                                    if idx >= mem[_15814]:
                                        revert with 0, 50
                                    mem[(32 * idx) + _15814 + 32] = address(mem[(32 * idx) + _15814 + 44 len 20] xor stor28)
                                    if idx == -1:
                                        revert with 0, 17
                                    _16185 = mem[_15814]
                                    idx = idx + 1
                                    continue 
                                sub_98b31141.length = mem[_15814]
                                if not mem[_15814]:
                                    idx = 0
                                    while sub_98b31141.length > idx:
                                        uint256(sub_98b31141[idx]) = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    s = 0
                                    idx = _15814 + 32
                                    while _15814 + (32 * mem[_15814]) + 32 > idx:
                                        address(sub_98b31141[s]) = mem[idx + 12 len 20]
                                        s = s + 1
                                        idx = idx + 32
                                        continue 
                                    idx = Mask(251, 0, (32 * mem[_15814]) + 31) >> 5
                                    while sub_98b31141.length > idx:
                                        uint256(sub_98b31141[idx]) = 0
                                        idx = idx + 1
                                        continue 
                            else:
                                sub_6c302b9dAddress = sub_f5e41055Address
                                _15815 = mem[448]
                                _16186 = mem[mem[448]]
                                idx = 0
                                while idx < _16186:
                                    if idx >= mem[_15815]:
                                        revert with 0, 50
                                    if idx >= mem[_15815]:
                                        revert with 0, 50
                                    mem[(32 * idx) + _15815 + 32] = address(mem[(32 * idx) + _15815 + 44 len 20] xor stor28)
                                    if idx == -1:
                                        revert with 0, 17
                                    _16186 = mem[_15815]
                                    idx = idx + 1
                                    continue 
                                sub_98b31141.length = mem[_15815]
                                if not mem[_15815]:
                                    idx = 0
                                    while sub_98b31141.length > idx:
                                        uint256(sub_98b31141[idx]) = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    s = 0
                                    idx = _15815 + 32
                                    while _15815 + (32 * mem[_15815]) + 32 > idx:
                                        address(sub_98b31141[s]) = mem[idx + 12 len 20]
                                        s = s + 1
                                        idx = idx + 32
                                        continue 
                                    idx = Mask(251, 0, (32 * mem[_15815]) + 31) >> 5
                                    while sub_98b31141.length > idx:
                                        uint256(sub_98b31141[idx]) = 0
                                        idx = idx + 1
                                        continue 
                    else:
                        mem[0] = 18
                        mem[_15217 + 32] = address(sub_b6c1554e.field_0)
                        idx = _15217 + 32
                        s = 0
                        while _15217 + (32 * sub_b6c1554e.length) > idx:
                            mem[idx + 32] = sub_b6c1554e[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        if sub_f5e41055Address:
                            _17851 = mem[448]
                            _18560 = mem[mem[448]]
                            idx = 0
                            while idx < _18560:
                                if idx >= mem[_17851]:
                                    revert with 0, 50
                                if idx >= mem[_17851]:
                                    revert with 0, 50
                                mem[(32 * idx) + _17851 + 32] = address(mem[(32 * idx) + _17851 + 44 len 20] xor stor28)
                                if idx == -1:
                                    revert with 0, 17
                                _18560 = mem[_17851]
                                idx = idx + 1
                                continue 
                            sub_98b31141.length = mem[_17851]
                            if not mem[_17851]:
                                idx = 0
                                while sub_98b31141.length > idx:
                                    uint256(sub_98b31141[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            else:
                                s = 0
                                idx = _17851 + 32
                                while _17851 + (32 * mem[_17851]) + 32 > idx:
                                    address(sub_98b31141[s]) = mem[idx + 12 len 20]
                                    s = s + 1
                                    idx = idx + 32
                                    continue 
                                idx = Mask(251, 0, (32 * mem[_17851]) + 31) >> 5
                                while sub_98b31141.length > idx:
                                    uint256(sub_98b31141[idx]) = 0
                                    idx = idx + 1
                                    continue 
                        else:
                            if not sub_b6c1554e.length:
                                revert with 0, 50
                            if 1 >= sub_b6c1554e.length:
                                revert with 0, 50
                            _17885 = mem[_15217 + 64]
                            mem[mem[64] + 4] = mem[_15217 + 44 len 20]
                            mem[mem[64] + 36] = address(_17885)
                            require ext_code.size(sub_3ef67e9fAddress)
                            staticcall sub_3ef67e9fAddress.getPair(address arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4], address(_17885)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _18074 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_18074] == mem[_18074 + 12 len 20]
                            sub_f5e41055Address = mem[_18074 + 12 len 20]
                            if not mem[_18074 + 12 len 20]:
                                _18374 = mem[448]
                                _18561 = mem[mem[448]]
                                idx = 0
                                while idx < _18561:
                                    if idx >= mem[_18374]:
                                        revert with 0, 50
                                    if idx >= mem[_18374]:
                                        revert with 0, 50
                                    mem[(32 * idx) + _18374 + 32] = address(mem[(32 * idx) + _18374 + 44 len 20] xor stor28)
                                    if idx == -1:
                                        revert with 0, 17
                                    _18561 = mem[_18374]
                                    idx = idx + 1
                                    continue 
                                sub_98b31141.length = mem[_18374]
                                if not mem[_18374]:
                                    idx = 0
                                    while sub_98b31141.length > idx:
                                        uint256(sub_98b31141[idx]) = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    s = 0
                                    idx = _18374 + 32
                                    while _18374 + (32 * mem[_18374]) + 32 > idx:
                                        address(sub_98b31141[s]) = mem[idx + 12 len 20]
                                        s = s + 1
                                        idx = idx + 32
                                        continue 
                                    idx = Mask(251, 0, (32 * mem[_18374]) + 31) >> 5
                                    while sub_98b31141.length > idx:
                                        uint256(sub_98b31141[idx]) = 0
                                        idx = idx + 1
                                        continue 
                            else:
                                sub_6c302b9dAddress = sub_f5e41055Address
                                _18375 = mem[448]
                                _18562 = mem[mem[448]]
                                idx = 0
                                while idx < _18562:
                                    if idx >= mem[_18375]:
                                        revert with 0, 50
                                    if idx >= mem[_18375]:
                                        revert with 0, 50
                                    mem[(32 * idx) + _18375 + 32] = address(mem[(32 * idx) + _18375 + 44 len 20] xor stor28)
                                    if idx == -1:
                                        revert with 0, 17
                                    _18562 = mem[_18375]
                                    idx = idx + 1
                                    continue 
                                sub_98b31141.length = mem[_18375]
                                if not mem[_18375]:
                                    idx = 0
                                    while sub_98b31141.length > idx:
                                        uint256(sub_98b31141[idx]) = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    s = 0
                                    idx = _18375 + 32
                                    while _18375 + (32 * mem[_18375]) + 32 > idx:
                                        address(sub_98b31141[s]) = mem[idx + 12 len 20]
                                        s = s + 1
                                        idx = idx + 32
                                        continue 
                                    idx = Mask(251, 0, (32 * mem[_18375]) + 31) >> 5
                                    while sub_98b31141.length > idx:
                                        uint256(sub_98b31141[idx]) = 0
                                        idx = idx + 1
                                        continue 
            else:
                s = 0
                idx = mem[448] + 32
                while mem[448] + (32 * _10301) + 32 > idx:
                    address(sub_98b31141[s]) = mem[idx + 12 len 20]
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = Mask(251, 0, (32 * _10301) + 31) >> 5
                while sub_98b31141.length > idx:
                    uint256(sub_98b31141[idx]) = 0
                    idx = idx + 1
                    continue 
                stor20 = uint8(bool(mem[480]))
                stor8 = address(mem[108 len 20] xor stor28)
                require ext_code.size(address(mem[108 len 20] xor stor28))
                staticcall address(mem[108 len 20] xor stor28).factory() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _12761 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_12761] == mem[_12761 + 12 len 20]
                sub_3ef67e9fAddress = mem[_12761 + 12 len 20]
                sub_f5e41055Address = 0
                _12886 = mem[416]
                _13867 = mem[mem[416]]
                idx = 0
                while idx < _13867:
                    if idx >= mem[_12886]:
                        revert with 0, 50
                    if idx >= mem[_12886]:
                        revert with 0, 50
                    mem[(32 * idx) + _12886 + 32] = address(mem[(32 * idx) + _12886 + 44 len 20] xor stor28)
                    if idx == -1:
                        revert with 0, 17
                    _13867 = mem[_12886]
                    idx = idx + 1
                    continue 
                _13912 = mem[_12886]
                sub_b6c1554e.length = mem[_12886]
                mem[0] = 18
                if not _13912:
                    idx = 0
                    while sub_b6c1554e.length > idx:
                        sub_b6c1554e[idx].field_0 = 0
                        idx = idx + 1
                        continue 
                    _15218 = mem[64]
                    mem[64] = mem[64] + (32 * sub_b6c1554e.length) + 32
                    mem[_15218] = sub_b6c1554e.length
                    if not sub_b6c1554e.length:
                        if sub_f5e41055Address:
                            _15362 = mem[448]
                            _16187 = mem[mem[448]]
                            idx = 0
                            while idx < _16187:
                                if idx >= mem[_15362]:
                                    revert with 0, 50
                                if idx >= mem[_15362]:
                                    revert with 0, 50
                                mem[(32 * idx) + _15362 + 32] = address(mem[(32 * idx) + _15362 + 44 len 20] xor stor28)
                                if idx == -1:
                                    revert with 0, 17
                                _16187 = mem[_15362]
                                idx = idx + 1
                                continue 
                            sub_98b31141.length = mem[_15362]
                            if not mem[_15362]:
                                idx = 0
                                while sub_98b31141.length > idx:
                                    uint256(sub_98b31141[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            else:
                                s = 0
                                idx = _15362 + 32
                                while _15362 + (32 * mem[_15362]) + 32 > idx:
                                    address(sub_98b31141[s]) = mem[idx + 12 len 20]
                                    s = s + 1
                                    idx = idx + 32
                                    continue 
                                idx = Mask(251, 0, (32 * mem[_15362]) + 31) >> 5
                                while sub_98b31141.length > idx:
                                    uint256(sub_98b31141[idx]) = 0
                                    idx = idx + 1
                                    continue 
                        else:
                            if not sub_b6c1554e.length:
                                revert with 0, 50
                            if 1 >= sub_b6c1554e.length:
                                revert with 0, 50
                            _15380 = mem[_15218 + 64]
                            mem[mem[64] + 4] = mem[_15218 + 44 len 20]
                            mem[mem[64] + 36] = address(_15380)
                            require ext_code.size(sub_3ef67e9fAddress)
                            staticcall sub_3ef67e9fAddress.getPair(address arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4], address(_15380)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _15669 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_15669] == mem[_15669 + 12 len 20]
                            sub_f5e41055Address = mem[_15669 + 12 len 20]
                            if not mem[_15669 + 12 len 20]:
                                _15816 = mem[448]
                                _16188 = mem[mem[448]]
                                idx = 0
                                while idx < _16188:
                                    if idx >= mem[_15816]:
                                        revert with 0, 50
                                    if idx >= mem[_15816]:
                                        revert with 0, 50
                                    mem[(32 * idx) + _15816 + 32] = address(mem[(32 * idx) + _15816 + 44 len 20] xor stor28)
                                    if idx == -1:
                                        revert with 0, 17
                                    _16188 = mem[_15816]
                                    idx = idx + 1
                                    continue 
                                sub_98b31141.length = mem[_15816]
                                if not mem[_15816]:
                                    idx = 0
                                    while sub_98b31141.length > idx:
                                        uint256(sub_98b31141[idx]) = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    s = 0
                                    idx = _15816 + 32
                                    while _15816 + (32 * mem[_15816]) + 32 > idx:
                                        address(sub_98b31141[s]) = mem[idx + 12 len 20]
                                        s = s + 1
                                        idx = idx + 32
                                        continue 
                                    idx = Mask(251, 0, (32 * mem[_15816]) + 31) >> 5
                                    while sub_98b31141.length > idx:
                                        uint256(sub_98b31141[idx]) = 0
                                        idx = idx + 1
                                        continue 
                            else:
                                sub_6c302b9dAddress = sub_f5e41055Address
                                _15817 = mem[448]
                                _16189 = mem[mem[448]]
                                idx = 0
                                while idx < _16189:
                                    if idx >= mem[_15817]:
                                        revert with 0, 50
                                    if idx >= mem[_15817]:
                                        revert with 0, 50
                                    mem[(32 * idx) + _15817 + 32] = address(mem[(32 * idx) + _15817 + 44 len 20] xor stor28)
                                    if idx == -1:
                                        revert with 0, 17
                                    _16189 = mem[_15817]
                                    idx = idx + 1
                                    continue 
                                sub_98b31141.length = mem[_15817]
                                if not mem[_15817]:
                                    idx = 0
                                    while sub_98b31141.length > idx:
                                        uint256(sub_98b31141[idx]) = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    s = 0
                                    idx = _15817 + 32
                                    while _15817 + (32 * mem[_15817]) + 32 > idx:
                                        address(sub_98b31141[s]) = mem[idx + 12 len 20]
                                        s = s + 1
                                        idx = idx + 32
                                        continue 
                                    idx = Mask(251, 0, (32 * mem[_15817]) + 31) >> 5
                                    while sub_98b31141.length > idx:
                                        uint256(sub_98b31141[idx]) = 0
                                        idx = idx + 1
                                        continue 
                    else:
                        mem[0] = 18
                        mem[_15218 + 32] = address(sub_b6c1554e.field_0)
                        idx = _15218 + 32
                        s = 0
                        while _15218 + (32 * sub_b6c1554e.length) > idx:
                            mem[idx + 32] = sub_b6c1554e[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        if sub_f5e41055Address:
                            _17872 = mem[448]
                            _18563 = mem[mem[448]]
                            idx = 0
                            while idx < _18563:
                                if idx >= mem[_17872]:
                                    revert with 0, 50
                                if idx >= mem[_17872]:
                                    revert with 0, 50
                                mem[(32 * idx) + _17872 + 32] = address(mem[(32 * idx) + _17872 + 44 len 20] xor stor28)
                                if idx == -1:
                                    revert with 0, 17
                                _18563 = mem[_17872]
                                idx = idx + 1
                                continue 
                            sub_98b31141.length = mem[_17872]
                            if not mem[_17872]:
                                idx = 0
                                while sub_98b31141.length > idx:
                                    uint256(sub_98b31141[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            else:
                                s = 0
                                idx = _17872 + 32
                                while _17872 + (32 * mem[_17872]) + 32 > idx:
                                    address(sub_98b31141[s]) = mem[idx + 12 len 20]
                                    s = s + 1
                                    idx = idx + 32
                                    continue 
                                idx = Mask(251, 0, (32 * mem[_17872]) + 31) >> 5
                                while sub_98b31141.length > idx:
                                    uint256(sub_98b31141[idx]) = 0
                                    idx = idx + 1
                                    continue 
                        else:
                            if not sub_b6c1554e.length:
                                revert with 0, 50
                            if 1 >= sub_b6c1554e.length:
                                revert with 0, 50
                            _17887 = mem[_15218 + 64]
                            mem[mem[64] + 4] = mem[_15218 + 44 len 20]
                            mem[mem[64] + 36] = address(_17887)
                            require ext_code.size(sub_3ef67e9fAddress)
                            staticcall sub_3ef67e9fAddress.getPair(address arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4], address(_17887)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _18077 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_18077] == mem[_18077 + 12 len 20]
                            sub_f5e41055Address = mem[_18077 + 12 len 20]
                            if not mem[_18077 + 12 len 20]:
                                _18376 = mem[448]
                                _18564 = mem[mem[448]]
                                idx = 0
                                while idx < _18564:
                                    if idx >= mem[_18376]:
                                        revert with 0, 50
                                    if idx >= mem[_18376]:
                                        revert with 0, 50
                                    mem[(32 * idx) + _18376 + 32] = address(mem[(32 * idx) + _18376 + 44 len 20] xor stor28)
                                    if idx == -1:
                                        revert with 0, 17
                                    _18564 = mem[_18376]
                                    idx = idx + 1
                                    continue 
                                sub_98b31141.length = mem[_18376]
                                if not mem[_18376]:
                                    idx = 0
                                    while sub_98b31141.length > idx:
                                        uint256(sub_98b31141[idx]) = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    s = 0
                                    idx = _18376 + 32
                                    while _18376 + (32 * mem[_18376]) + 32 > idx:
                                        address(sub_98b31141[s]) = mem[idx + 12 len 20]
                                        s = s + 1
                                        idx = idx + 32
                                        continue 
                                    idx = Mask(251, 0, (32 * mem[_18376]) + 31) >> 5
                                    while sub_98b31141.length > idx:
                                        uint256(sub_98b31141[idx]) = 0
                                        idx = idx + 1
                                        continue 
                            else:
                                sub_6c302b9dAddress = sub_f5e41055Address
                                _18377 = mem[448]
                                _18565 = mem[mem[448]]
                                idx = 0
                                while idx < _18565:
                                    if idx >= mem[_18377]:
                                        revert with 0, 50
                                    if idx >= mem[_18377]:
                                        revert with 0, 50
                                    mem[(32 * idx) + _18377 + 32] = address(mem[(32 * idx) + _18377 + 44 len 20] xor stor28)
                                    if idx == -1:
                                        revert with 0, 17
                                    _18565 = mem[_18377]
                                    idx = idx + 1
                                    continue 
                                sub_98b31141.length = mem[_18377]
                                if not mem[_18377]:
                                    idx = 0
                                    while sub_98b31141.length > idx:
                                        uint256(sub_98b31141[idx]) = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    s = 0
                                    idx = _18377 + 32
                                    while _18377 + (32 * mem[_18377]) + 32 > idx:
                                        address(sub_98b31141[s]) = mem[idx + 12 len 20]
                                        s = s + 1
                                        idx = idx + 32
                                        continue 
                                    idx = Mask(251, 0, (32 * mem[_18377]) + 31) >> 5
                                    while sub_98b31141.length > idx:
                                        uint256(sub_98b31141[idx]) = 0
                                        idx = idx + 1
                                        continue 
                else:
                    s = 0
                    idx = _12886 + 32
                    while _12886 + (32 * _13912) + 32 > idx:
                        sub_b6c1554e[s].field_0 = mem[idx + 12 len 20]
                        s = s + 1
                        idx = idx + 32
                        continue 
                    idx = Mask(251, 0, (32 * _13912) + 31) >> 5
                    while sub_b6c1554e.length > idx:
                        sub_b6c1554e[idx].field_0 = 0
                        idx = idx + 1
                        continue 
                    _16553 = mem[64]
                    mem[64] = mem[64] + (32 * sub_b6c1554e.length) + 32
                    mem[_16553] = sub_b6c1554e.length
                    if not sub_b6c1554e.length:
                        if sub_f5e41055Address:
                            _16754 = mem[448]
                            _17463 = mem[mem[448]]
                            idx = 0
                            while idx < _17463:
                                if idx >= mem[_16754]:
                                    revert with 0, 50
                                if idx >= mem[_16754]:
                                    revert with 0, 50
                                mem[(32 * idx) + _16754 + 32] = address(mem[(32 * idx) + _16754 + 44 len 20] xor stor28)
                                if idx == -1:
                                    revert with 0, 17
                                _17463 = mem[_16754]
                                idx = idx + 1
                                continue 
                            sub_98b31141.length = mem[_16754]
                            if not mem[_16754]:
                                idx = 0
                                while sub_98b31141.length > idx:
                                    uint256(sub_98b31141[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            else:
                                s = 0
                                idx = _16754 + 32
                                while _16754 + (32 * mem[_16754]) + 32 > idx:
                                    address(sub_98b31141[s]) = mem[idx + 12 len 20]
                                    s = s + 1
                                    idx = idx + 32
                                    continue 
                                idx = Mask(251, 0, (32 * mem[_16754]) + 31) >> 5
                                while sub_98b31141.length > idx:
                                    uint256(sub_98b31141[idx]) = 0
                                    idx = idx + 1
                                    continue 
                        else:
                            if not sub_b6c1554e.length:
                                revert with 0, 50
                            if 1 >= sub_b6c1554e.length:
                                revert with 0, 50
                            _16769 = mem[_16553 + 64]
                            mem[mem[64] + 4] = mem[_16553 + 44 len 20]
                            mem[mem[64] + 36] = address(_16769)
                            require ext_code.size(sub_3ef67e9fAddress)
                            staticcall sub_3ef67e9fAddress.getPair(address arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4], address(_16769)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _17076 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_17076] == mem[_17076 + 12 len 20]
                            sub_f5e41055Address = mem[_17076 + 12 len 20]
                            if not mem[_17076 + 12 len 20]:
                                _17219 = mem[448]
                                _17464 = mem[mem[448]]
                                idx = 0
                                while idx < _17464:
                                    if idx >= mem[_17219]:
                                        revert with 0, 50
                                    if idx >= mem[_17219]:
                                        revert with 0, 50
                                    mem[(32 * idx) + _17219 + 32] = address(mem[(32 * idx) + _17219 + 44 len 20] xor stor28)
                                    if idx == -1:
                                        revert with 0, 17
                                    _17464 = mem[_17219]
                                    idx = idx + 1
                                    continue 
                                sub_98b31141.length = mem[_17219]
                                if not mem[_17219]:
                                    idx = 0
                                    while sub_98b31141.length > idx:
                                        uint256(sub_98b31141[idx]) = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    s = 0
                                    idx = _17219 + 32
                                    while _17219 + (32 * mem[_17219]) + 32 > idx:
                                        address(sub_98b31141[s]) = mem[idx + 12 len 20]
                                        s = s + 1
                                        idx = idx + 32
                                        continue 
                                    idx = Mask(251, 0, (32 * mem[_17219]) + 31) >> 5
                                    while sub_98b31141.length > idx:
                                        uint256(sub_98b31141[idx]) = 0
                                        idx = idx + 1
                                        continue 
                            else:
                                sub_6c302b9dAddress = sub_f5e41055Address
                                _17220 = mem[448]
                                _17465 = mem[mem[448]]
                                idx = 0
                                while idx < _17465:
                                    if idx >= mem[_17220]:
                                        revert with 0, 50
                                    if idx >= mem[_17220]:
                                        revert with 0, 50
                                    mem[(32 * idx) + _17220 + 32] = address(mem[(32 * idx) + _17220 + 44 len 20] xor stor28)
                                    if idx == -1:
                                        revert with 0, 17
                                    _17465 = mem[_17220]
                                    idx = idx + 1
                                    continue 
                                sub_98b31141.length = mem[_17220]
                                if not mem[_17220]:
                                    idx = 0
                                    while sub_98b31141.length > idx:
                                        uint256(sub_98b31141[idx]) = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    s = 0
                                    idx = _17220 + 32
                                    while _17220 + (32 * mem[_17220]) + 32 > idx:
                                        address(sub_98b31141[s]) = mem[idx + 12 len 20]
                                        s = s + 1
                                        idx = idx + 32
                                        continue 
                                    idx = Mask(251, 0, (32 * mem[_17220]) + 31) >> 5
                                    while sub_98b31141.length > idx:
                                        uint256(sub_98b31141[idx]) = 0
                                        idx = idx + 1
                                        continue 
                    else:
                        mem[0] = 18
                        mem[_16553 + 32] = address(sub_b6c1554e.field_0)
                        idx = _16553 + 32
                        s = 0
                        while _16553 + (32 * sub_b6c1554e.length) > idx:
                            mem[idx + 32] = sub_b6c1554e[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        if sub_f5e41055Address:
                            _18918 = mem[448]
                            _19267 = mem[mem[448]]
                            idx = 0
                            while idx < _19267:
                                if idx >= mem[_18918]:
                                    revert with 0, 50
                                if idx >= mem[_18918]:
                                    revert with 0, 50
                                mem[(32 * idx) + _18918 + 32] = address(mem[(32 * idx) + _18918 + 44 len 20] xor stor28)
                                if idx == -1:
                                    revert with 0, 17
                                _19267 = mem[_18918]
                                idx = idx + 1
                                continue 
                            sub_98b31141.length = mem[_18918]
                            if not mem[_18918]:
                                idx = 0
                                while sub_98b31141.length > idx:
                                    uint256(sub_98b31141[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            else:
                                s = 0
                                idx = _18918 + 32
                                while _18918 + (32 * mem[_18918]) + 32 > idx:
                                    address(sub_98b31141[s]) = mem[idx + 12 len 20]
                                    s = s + 1
                                    idx = idx + 32
                                    continue 
                                idx = Mask(251, 0, (32 * mem[_18918]) + 31) >> 5
                                while sub_98b31141.length > idx:
                                    uint256(sub_98b31141[idx]) = 0
                                    idx = idx + 1
                                    continue 
                        else:
                            if not sub_b6c1554e.length:
                                revert with 0, 50
                            if 1 >= sub_b6c1554e.length:
                                revert with 0, 50
                            _18921 = mem[_16553 + 64]
                            mem[mem[64] + 4] = mem[_16553 + 44 len 20]
                            mem[mem[64] + 36] = address(_18921)
                            require ext_code.size(sub_3ef67e9fAddress)
                            staticcall sub_3ef67e9fAddress.getPair(address arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4], address(_18921)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _19066 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_19066] == mem[_19066 + 12 len 20]
                            sub_f5e41055Address = mem[_19066 + 12 len 20]
                            if not mem[_19066 + 12 len 20]:
                                _19221 = mem[448]
                                _19268 = mem[mem[448]]
                                idx = 0
                                while idx < _19268:
                                    if idx >= mem[_19221]:
                                        revert with 0, 50
                                    if idx >= mem[_19221]:
                                        revert with 0, 50
                                    mem[(32 * idx) + _19221 + 32] = address(mem[(32 * idx) + _19221 + 44 len 20] xor stor28)
                                    if idx == -1:
                                        revert with 0, 17
                                    _19268 = mem[_19221]
                                    idx = idx + 1
                                    continue 
                                sub_98b31141.length = mem[_19221]
                                if not mem[_19221]:
                                    idx = 0
                                    while sub_98b31141.length > idx:
                                        uint256(sub_98b31141[idx]) = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    s = 0
                                    idx = _19221 + 32
                                    while _19221 + (32 * mem[_19221]) + 32 > idx:
                                        address(sub_98b31141[s]) = mem[idx + 12 len 20]
                                        s = s + 1
                                        idx = idx + 32
                                        continue 
                                    idx = Mask(251, 0, (32 * mem[_19221]) + 31) >> 5
                                    while sub_98b31141.length > idx:
                                        uint256(sub_98b31141[idx]) = 0
                                        idx = idx + 1
                                        continue 
                            else:
                                sub_6c302b9dAddress = sub_f5e41055Address
                                _19222 = mem[448]
                                _19269 = mem[mem[448]]
                                idx = 0
                                while idx < _19269:
                                    if idx >= mem[_19222]:
                                        revert with 0, 50
                                    if idx >= mem[_19222]:
                                        revert with 0, 50
                                    mem[(32 * idx) + _19222 + 32] = address(mem[(32 * idx) + _19222 + 44 len 20] xor stor28)
                                    if idx == -1:
                                        revert with 0, 17
                                    _19269 = mem[_19222]
                                    idx = idx + 1
                                    continue 
                                sub_98b31141.length = mem[_19222]
                                if not mem[_19222]:
                                    idx = 0
                                    while sub_98b31141.length > idx:
                                        uint256(sub_98b31141[idx]) = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    s = 0
                                    idx = _19222 + 32
                                    while _19222 + (32 * mem[_19222]) + 32 > idx:
                                        address(sub_98b31141[s]) = mem[idx + 12 len 20]
                                        s = s + 1
                                        idx = idx + 32
                                        continue 
                                    idx = Mask(251, 0, (32 * mem[_19222]) + 31) >> 5
                                    while sub_98b31141.length > idx:
                                        uint256(sub_98b31141[idx]) = 0
                                        idx = idx + 1
                                        continue 
    stor10 = stor28 xor mem[160]
    stor11 = stor28 xor mem[192]
    stor12 = stor28 xor mem[224]
    stor13 = stor28 xor mem[256]
    stor16 = stor28 xor mem[352]
    stor17 = mem[384] xor stor28
    uint8(stor1.field_160) = 1
}



}
