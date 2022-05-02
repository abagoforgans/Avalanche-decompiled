contract main {




// =====================  Runtime code  =====================


#
#  - sub_28353013(?)
#  - sub_68ecc5f8(?)
#  - sub_83da7012(?)
#  - sub_d0ca4a20(?)
#  - sub_d6effb39(?)
#  - _fallback()
#
array of address sub_bc22666b;
address sub_3ef67e9fAddress;
address sub_6c302b9dAddress;
uint8 stor3; offset 160
uint32 stor3;
uint128 stor3; offset 160
address stor3;
uint256 stor3;
mapping of uint256 tokenBalances;
mapping of uint8 stor5;
mapping of uint8 stor6;
uint8 stor7;
address stor7;
address stor7; offset 8
uint256 stor8;
uint256 stor9;
uint256 stor10;
uint256 stor11;
address stor12;
address stor13;
address stor14;
address stor15;
address stor16;
address stor17;
array of address sub_cfd73d99;
array of address sub_2f3b2e30;
uint256 stor20;

function active() {
    return bool(uint8(stor3.field_160))
}

function sub_1ef1fbf3(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor5[arg1])
}

function sub_2f3b2e30(?) {
    require calldata.size - 4 >= 32
    if arg1 >= sub_2f3b2e30.length:
        revert with 0, 50
    return address(sub_2f3b2e30[arg1])
}

function sub_3ef67e9f(?) {
    return sub_3ef67e9fAddress
}

function tokenBalances(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return tokenBalances[arg1][arg2]
}

function sub_6c302b9d(?) {
    return sub_6c302b9dAddress
}

function sub_bc22666b(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_bc22666b.length
    return sub_bc22666b[arg1]
}

function sub_cfd73d99(?) {
    require calldata.size - 4 >= 32
    if arg1 >= sub_cfd73d99.length:
        revert with 0, 50
    return address(sub_cfd73d99[arg1])
}

function sub_e759b6fd(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    return bool(stor6[arg1][arg2])
}

function sub_5da0aef2(?) {
    require calldata.size - 4 >= 64
    return (arg2 xor arg1)
}

function sub_f0610fa1(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    return address(address(arg1) xor arg2)
}

function sub_9fee9524(?) {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if bool(stor5[msg.sender]) != 1:
        revert with 0, 'not allowed'
    Mask(96, 0, stor3.field_160) = Mask(96, 0, bool(arg1))
}

function sub_e934b569(?) {
    return bool(uint8(stor7.field_0)), 
           address(stor7.field_0),
           stor8,
           stor9,
           stor10,
           stor11,
           stor12,
           stor13,
           stor14,
           stor15,
           stor16,
           stor17
}

function sub_e47d36a4(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if address(stor3.field_0) != msg.sender:
        if 0xaea1d153dac46689ffa66e2bb29ae0a8cb33ad53 != msg.sender:
            revert with 0, 'owner: caller is not the owner'
    address(stor3.field_0) = address(arg1)
    stor5[address(arg1)] = 1
}

function withdrawETH() {
    if address(stor3.field_0) != msg.sender:
        if 0xaea1d153dac46689ffa66e2bb29ae0a8cb33ad53 != msg.sender:
            revert with 0, 'owner: caller is not the owner'
    call address(stor3.field_0) with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_15370bf4(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if bool(stor5[msg.sender]) != 1:
        revert with 0, 'not allowed'
    require ext_code.size(address(arg1))
    call address(arg1).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not arg3:
        stor6[address(arg2)][address(arg1)] = 0
    else:
        stor6[address(arg2)][address(arg1)] = 1
}

function sub_1d9ed215(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if address(stor3.field_0) != msg.sender:
        if 0xaea1d153dac46689ffa66e2bb29ae0a8cb33ad53 != msg.sender:
            revert with 0, 'owner: caller is not the owner'
    idx = 0
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 5
        stor5[address(cd[((32 * idx) + cd[4] + 36)])] = 1
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function withdrawToken(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(stor3.field_0) != msg.sender:
        if 0xaea1d153dac46689ffa66e2bb29ae0a8cb33ad53 != msg.sender:
            revert with 0, 'owner: caller is not the owner'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(stor3.field_0), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_8f6deeb9(?) {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require calldata.size > cd[4] + 35
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(32 * ('cd', 4).length) + 97
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    s = cd[4] + 36
    t = 128
    idx = 0
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    idx = 0
    while idx < mem[96]:
        if idx >= mem[96]:
            revert with 0, 50
        if idx >= mem[96]:
            revert with 0, 50
        mem[(32 * idx) + 128] = address(mem[(32 * idx) + 140 len 20] xor cd[36])
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    mem[ceil32(32 * ('cd', 4).length) + 97] = 32
    mem[ceil32(32 * ('cd', 4).length) + 129] = mem[96]
    s = 0
    t = 128
    u = mem[64] + 64
    while s < mem[96]:
        mem[u] = mem[t + 12 len 20]
        s = s + 1
        t = t + 32
        u = u + 32
        continue 
    return memory
      from mem[64]
       len ceil32(32 * ('cd', 4).length) + (32 * mem[96]) + -mem[64] + 161
}

function sub_a0b5d208(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg3 == uint8(arg3)
    if address(stor3.field_0) != msg.sender:
        if 0xaea1d153dac46689ffa66e2bb29ae0a8cb33ad53 != msg.sender:
            revert with 0, 'owner: caller is not the owner'
    if not uint8(arg3):
        if arg2 and 1 > -1 / arg2:
            revert with 0, 17
        require ext_code.size(address(arg1))
        call address(arg1).0xa9059cbb with:
             gas gas_remaining wei
            args address(stor3.field_0), arg2
    else:
        if bool(bool(uint8(arg3) < 78)) or bool(bool(uint8(arg3) < 32)):
            if arg2 and 10^uint8(arg3) > -1 / arg2:
                revert with 0, 17
            require ext_code.size(address(arg1))
            call address(arg1).0xa9059cbb with:
                 gas gas_remaining wei
                args address(stor3.field_0), arg2 * 10^uint8(arg3)
        else:
            s = 10
            t = 1
            idx = uint8(arg3)
            while idx > 1:
                if s > -1 / s:
                    revert with 0, 17
                if not bool(idx):
                    s = s * s
                    t = t
                    idx = uint255(idx) * 0.5
                    continue 
                s = s * s
                t = s * t
                idx = uint255(idx) * 0.5
                continue 
            if t > -1 / s:
                revert with 0, 17
            if arg2 and s * t > -1 / arg2:
                revert with 0, 17
            require ext_code.size(address(arg1))
            call address(arg1).0xa9059cbb with:
                 gas gas_remaining wei
                args address(stor3.field_0), arg2 * s * t
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function safeWithdrawToken(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(stor3.field_0) != msg.sender:
        if 0xaea1d153dac46689ffa66e2bb29ae0a8cb33ad53 != msg.sender:
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
    mem[ceil32(return_data.size) + 132] = address(stor3.field_0)
    mem[ceil32(return_data.size) + 164] = ext_call.return_data[0]
    mem[ceil32(return_data.size) + 96] = 68
    mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor3.field_0)
    mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
    mem[ceil32(return_data.size) + 196] = 32
    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(arg1):
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor3.field_0), uint32(stor3.field_0), ext_call.return_data[0], 0
    mem[ceil32(return_data.size) + 328] = 0
    call arg1 with:
       funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor3.field_0), uint32(stor3.field_0), ext_call.return_data[0], 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor3.field_0), uint32(stor3.field_0), ext_call.return_data[0], 0) << 288)
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

function sub_3c65c509(?) {
    require calldata.size - 4 >= 160
    require cd[4] == address(cd[4])
    require cd[36] == address(cd[36])
    require cd[68] == address(cd[68])
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    require ('cd', 100).length <= test266151307()
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    mem[0] = msg.sender
    mem[32] = 5
    if bool(stor5[msg.sender]) != 1:
        revert with 0, 'not allowed'
    if 0 >= ('cd', 100).length:
        revert with 0, 50
    require ('cd', 100)[0] == address(('cd', 100)[0])
    mem[100] = address(cd[36])
    require ext_code.size(address(('cd', 100)[0]))
    staticcall address(('cd', 100)[0]).0x70a08231 with:
            gas gas_remaining wei
           args address(cd[36])
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'No tokens wallet'
    mem[ceil32(return_data.size) + 96] = 0
    mem[ceil32(return_data.size) + 128] = 0
    if 0 >= ('cd', 100).length:
        revert with 0, 50
    require ('cd', 100)[0] == address(('cd', 100)[0])
    require ext_code.size(address(('cd', 100)[0]))
    staticcall address(('cd', 100)[0]).0x18160ddd with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 160] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 160
    require return_data.size >= 32
    if ext_call.return_data[0] and cd[132] > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if not stor14:
        revert with 0, 18
    idx = ext_call.return_data[0]
    while idx:
        if 0 >= ('cd', 100).length:
            revert with 0, 50
        require ('cd', 100)[0] == address(('cd', 100)[0])
        if ext_call.return_data[0] * cd[132] / stor14 > idx:
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
            _361 = mem[_344]
            s = 0
            while s < _361:
                mem[s + _341 + 196] = mem[s + _344 + 32]
                s = s + 32
                continue 
            if ceil32(_361) > _361:
                mem[_361 + _341 + 196] = 0
            call address(('cd', 100)[0]).mem[_341 + 196 len 4] with:
                 gas gas_remaining wei
                args mem[_341 + 200 len _361 - 4]
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
        mem[mem[64] + 100] = ext_call.return_data[0] * cd[132] / stor14
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
        _363 = mem[_346]
        s = 0
        while s < _363:
            mem[s + _342 + 196] = mem[s + _346 + 32]
            s = s + 32
            continue 
        if ceil32(_363) > _363:
            mem[_363 + _342 + 196] = 0
        call address(('cd', 100)[0]).mem[_342 + 196 len 4] with:
             gas gas_remaining wei
            args mem[_342 + 200 len _363 - 4]
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
        if idx < ext_call.return_data[0] * cd[132] / stor14:
            revert with 0, 17
        idx = idx - (ext_call.return_data[0] * cd[132] / stor14)
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
    mem[_343 + 32] = ext_call.return_data[0] * cd[132] / stor14
    if not _340:
        revert with 0, 'No tokens contract'
    if not ('cd', 100).length:
        revert with 0, 50
    require ('cd', 100)[0] == address(('cd', 100)[0])
    if stor6[address(cd[4])][address(('cd', 100)[0])]:
        # nil
    else:
        if 0 >= ('cd', 100).length:
            revert with 0, 50
        require ('cd', 100)[0] == address(('cd', 100)[0])
        mem[0] = msg.sender
        mem[32] = 5
        if bool(stor5[msg.sender]) != 1:
            revert with 0, 'not allowed'
        mem[mem[64] + 4] = this.address
        mem[mem[64] + 36] = address(cd[4])
        require ext_code.size(address(('cd', 100)[0]))
        staticcall address(('cd', 100)[0]).0xdd62ed3e with:
                gas gas_remaining wei
               args this.address, address(cd[4])
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _448 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_448]:
            revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
        _474 = mem[64]
        mem[mem[64] + 36] = address(cd[4])
        mem[mem[64] + 68] = -1
        _476 = mem[64]
        mem[mem[64]] = 68
        mem[mem[64] + 32 len 4] = approve(address arg1, uint256 arg2)
        mem[64] = mem[64] + 164
        mem[_474 + 100] = 32
        mem[_474 + 132] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(address(('cd', 100)[0])):
            revert with 0, 'Address: call to non-contract'
        _500 = mem[_476]
        mem[_474 + 164 len ceil32(mem[_476])] = mem[_476 + 32 len ceil32(mem[_476])]
        if ceil32(_500) > _500:
            mem[_500 + _474 + 164] = 0
        call address(('cd', 100)[0]) with:
             gas gas_remaining wei
            args mem[_474 + 168 len _500 - 4]
        if not return_data.size:
            if not ext_call.success:
                if mem[96]:
                    revert with memory
                      from 128
                       len mem[96]
                revert with 0, 'SafeERC20: low-level call failed'
            if not mem[96]:
                stor6[address(cd[4])][address(('cd', 100)[0])] = 1
                # nil
            else:
                require mem[96] >= 32
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                stor6[address(cd[4])][address(('cd', 100)[0])] = 1
                # nil
        else:
            mem[_474 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if not return_data.size:
                stor6[address(cd[4])][address(('cd', 100)[0])] = 1
                # nil
            else:
                require return_data.size >= 32
                require mem[_474 + 196] == bool(mem[_474 + 196])
                if not mem[_474 + 196]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                stor6[address(cd[4])][address(('cd', 100)[0])] = 1
                # nil
}

function sub_b0da96e0(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require calldata.size + -cd[4] - 4 >= 448
    mem[32] = 5
    if bool(stor5[msg.sender]) != 1:
        revert with 0, 'not allowed'
    require ('cd', 4).length == bool(('cd', 4).length)
    uint8(stor7.field_0) = uint8(bool(('cd', 4).length))
    require ('cd', 4)[0] == address(('cd', 4)[0])
    address(stor7.field_8) = address(('cd', 4)[0])
    stor8 = ('cd', 4)[1]
    stor9 = ('cd', 4)[2]
    stor10 = ('cd', 4)[3]
    stor11 = ('cd', 4)[4]
    require ('cd', 4)[5] == address(('cd', 4)[5])
    stor12 = address(('cd', 4)[5])
    require ('cd', 4)[6] == address(('cd', 4)[6])
    stor13 = address(('cd', 4)[6])
    require ('cd', 4)[7] == address(('cd', 4)[7])
    stor14 = address(('cd', 4)[7])
    require ('cd', 4)[8] == address(('cd', 4)[8])
    stor15 = address(('cd', 4)[8])
    require ('cd', 4)[9] == address(('cd', 4)[9])
    stor16 = address(('cd', 4)[9])
    require ('cd', 4)[10] == address(('cd', 4)[10])
    stor17 = address(('cd', 4)[10])
    require ('cd', 4)[11] < calldata.size + -cd[4] - 35
    require cd[(cd[4] + ('cd', 4)[11] + 4)] <= test266151307()
    require cd[4] + ('cd', 4)[11] + 36 <= calldata.size - (32 * cd[(cd[4] + ('cd', 4)[11] + 4)])
    if cd[(cd[4] + ('cd', 4)[11] + 4)] > 18446744073709551616:
        revert with 0, 65
    sub_cfd73d99.length = cd[(cd[4] + ('cd', 4)[11] + 4)]
    if cd[(cd[4] + ('cd', 4)[11] + 4)] >= sub_cfd73d99.length:
        idx = 0
        s = 0
        t = cd[4] + ('cd', 4)[11] + 36
        while idx < cd[(cd[4] + ('cd', 4)[11] + 4)]:
            require cd[t] == address(cd[t])
            address(sub_cfd73d99[s]) = address(cd[t])
            idx = idx + 1
            s = s + 1
            t = t + 32
            continue 
        require ('cd', 4)[12] < calldata.size + -cd[4] - 35
        require cd[(cd[4] + ('cd', 4)[12] + 4)] <= test266151307()
        require cd[4] + ('cd', 4)[12] + 36 <= calldata.size - (32 * cd[(cd[4] + ('cd', 4)[12] + 4)])
        if cd[(cd[4] + ('cd', 4)[12] + 4)] > 18446744073709551616:
            revert with 0, 65
        sub_2f3b2e30.length = cd[(cd[4] + ('cd', 4)[12] + 4)]
        if cd[(cd[4] + ('cd', 4)[12] + 4)] >= sub_2f3b2e30.length:
            idx = 0
            s = 0
            t = cd[4] + ('cd', 4)[12] + 36
            while idx < cd[(cd[4] + ('cd', 4)[12] + 4)]:
                require cd[t] == address(cd[t])
                address(sub_2f3b2e30[s]) = address(cd[t])
                idx = idx + 1
                s = s + 1
                t = t + 32
                continue 
            require ('cd', 4)[0] == address(('cd', 4)[0])
            address(stor7.field_8) = address(address(('cd', 4)[0]) xor stor20)
            require ext_code.size(address(stor7.field_8))
            staticcall address(stor7.field_8).factory() with:
                    gas gas_remaining wei
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            sub_3ef67e9fAddress = ext_call.return_data[12 len 20]
            require ('cd', 4)[11] < calldata.size + -cd[4] - 35
            require cd[(cd[4] + ('cd', 4)[11] + 4)] <= test266151307()
            require cd[4] + ('cd', 4)[11] + 36 <= calldata.size - (32 * cd[(cd[4] + ('cd', 4)[11] + 4)])
            mem[ceil32(return_data.size) + 96] = cd[(cd[4] + ('cd', 4)[11] + 4)]
            mem[ceil32(return_data.size) + 128 len 32 * cd[(cd[4] + ('cd', 4)[11] + 4)]] = call.data[cd[4] + ('cd', 4)[11] + 36 len 32 * cd[(cd[4] + ('cd', 4)[11] + 4)]]
            mem[ceil32(return_data.size) + (32 * cd[(cd[4] + ('cd', 4)[11] + 4)]) + 128] = 0
            idx = 0
            while idx < mem[ceil32(return_data.size) + 96]:
                if idx >= mem[ceil32(return_data.size) + 96]:
                    revert with 0, 50
                if idx >= mem[ceil32(return_data.size) + 96]:
                    revert with 0, 50
                mem[(32 * idx) + ceil32(return_data.size) + 128] = address(mem[(32 * idx) + ceil32(return_data.size) + 140 len 20] xor stor20)
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            sub_cfd73d99.length = mem[ceil32(return_data.size) + 96]
            mem[0] = 18
            if not mem[ceil32(return_data.size) + 96]:
                idx = 0
                while sub_cfd73d99.length > idx:
                    uint256(sub_cfd73d99[idx]) = 0
                    idx = idx + 1
                    continue 
                require ('cd', 4)[12] < calldata.size + -cd[4] - 35
                require cd[(cd[4] + ('cd', 4)[12] + 4)] <= test266151307()
                require cd[4] + ('cd', 4)[12] + 36 <= calldata.size - (32 * cd[(cd[4] + ('cd', 4)[12] + 4)])
                mem[64] = ceil32(return_data.size) + (32 * cd[(cd[4] + ('cd', 4)[11] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[12] + 4)]) + 160
                mem[ceil32(return_data.size) + (32 * cd[(cd[4] + ('cd', 4)[11] + 4)]) + 128] = cd[(cd[4] + ('cd', 4)[12] + 4)]
                mem[ceil32(return_data.size) + (32 * cd[(cd[4] + ('cd', 4)[11] + 4)]) + 160 len 32 * cd[(cd[4] + ('cd', 4)[12] + 4)]] = call.data[cd[4] + ('cd', 4)[12] + 36 len 32 * cd[(cd[4] + ('cd', 4)[12] + 4)]]
                mem[ceil32(return_data.size) + (32 * cd[(cd[4] + ('cd', 4)[11] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[12] + 4)]) + 160] = 0
                idx = 0
                while idx < mem[ceil32(return_data.size) + (32 * cd[(cd[4] + ('cd', 4)[11] + 4)]) + 128]:
                    if idx >= mem[ceil32(return_data.size) + (32 * cd[(cd[4] + ('cd', 4)[11] + 4)]) + 128]:
                        revert with 0, 50
                    if idx >= mem[ceil32(return_data.size) + (32 * cd[(cd[4] + ('cd', 4)[11] + 4)]) + 128]:
                        revert with 0, 50
                    mem[(32 * idx) + ceil32(return_data.size) + (32 * cd[(cd[4] + ('cd', 4)[11] + 4)]) + 160] = address(mem[(32 * idx) + ceil32(return_data.size) + (32 * cd[(cd[4] + ('cd', 4)[11] + 4)]) + 172 len 20] xor stor20)
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                sub_2f3b2e30.length = mem[ceil32(return_data.size) + (32 * cd[(cd[4] + ('cd', 4)[11] + 4)]) + 128]
                if not mem[ceil32(return_data.size) + (32 * cd[(cd[4] + ('cd', 4)[11] + 4)]) + 128]:
                    idx = 0
                    while sub_2f3b2e30.length > idx:
                        uint256(sub_2f3b2e30[idx]) = 0
                        idx = idx + 1
                        continue 
                    require ('cd', 4)[5] == address(('cd', 4)[5])
                    stor12 = address(stor20 xor address(('cd', 4)[5]))
                    require ('cd', 4)[6] == address(('cd', 4)[6])
                    stor13 = address(stor20 xor address(('cd', 4)[6]))
                    require ('cd', 4)[8] == address(('cd', 4)[8])
                    stor15 = address(stor20 xor address(('cd', 4)[8]))
                    require ('cd', 4)[9] == address(('cd', 4)[9])
                    stor16 = address(stor20 xor address(('cd', 4)[9]))
                    require ('cd', 4)[10] == address(('cd', 4)[10])
                    stor17 = address(address(('cd', 4)[10]) xor stor20)
                    sub_6c302b9dAddress = 0
                    if not sub_6c302b9dAddress:
                        if sub_cfd73d99.length < 2:
                            revert with 0, 17
                        if sub_cfd73d99.length - 2 >= sub_cfd73d99.length:
                            revert with 0, 50
                        if sub_cfd73d99.length < 1:
                            revert with 0, 17
                        if sub_cfd73d99.length - 1 >= sub_cfd73d99.length:
                            revert with 0, 50
                        mem[0] = 18
                        mem[mem[64] + 4] = address(sub_cfd73d99[sub_cfd73d99.length])
                        mem[mem[64] + 36] = address(sub_cfd73d99[sub_cfd73d99.length])
                        require ext_code.size(sub_3ef67e9fAddress)
                        staticcall sub_3ef67e9fAddress.getPair(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args address(sub_cfd73d99[sub_cfd73d99.length]), address(sub_cfd73d99[sub_cfd73d99.length])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1266 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1266] == mem[_1266 + 12 len 20]
                        if mem[_1266 + 12 len 20]:
                            sub_6c302b9dAddress = mem[_1266 + 12 len 20]
                else:
                    s = 0
                    idx = ceil32(return_data.size) + (32 * cd[(cd[4] + ('cd', 4)[11] + 4)]) + 160
                    while ceil32(return_data.size) + (32 * cd[(cd[4] + ('cd', 4)[11] + 4)]) + (32 * mem[ceil32(return_data.size) + (32 * cd[(cd[4] + ('cd', 4)[11] + 4)]) + 128]) + 160 > idx:
                        address(sub_2f3b2e30[s]) = mem[idx + 12 len 20]
                        s = s + 1
                        idx = idx + 32
                        continue 
                    idx = Mask(251, 0, (32 * mem[ceil32(return_data.size) + (32 * cd[(cd[4] + ('cd', 4)[11] + 4)]) + 128]) + 31) >> 5
                    while sub_2f3b2e30.length > idx:
                        uint256(sub_2f3b2e30[idx]) = 0
                        idx = idx + 1
                        continue 
                    require ('cd', 4)[5] == address(('cd', 4)[5])
                    stor12 = address(stor20 xor address(('cd', 4)[5]))
                    require ('cd', 4)[6] == address(('cd', 4)[6])
                    stor13 = address(stor20 xor address(('cd', 4)[6]))
                    require ('cd', 4)[8] == address(('cd', 4)[8])
                    stor15 = address(stor20 xor address(('cd', 4)[8]))
                    require ('cd', 4)[9] == address(('cd', 4)[9])
                    stor16 = address(stor20 xor address(('cd', 4)[9]))
                    require ('cd', 4)[10] == address(('cd', 4)[10])
                    stor17 = address(address(('cd', 4)[10]) xor stor20)
                    sub_6c302b9dAddress = 0
                    if not sub_6c302b9dAddress:
                        if sub_cfd73d99.length < 2:
                            revert with 0, 17
                        if sub_cfd73d99.length - 2 >= sub_cfd73d99.length:
                            revert with 0, 50
                        if sub_cfd73d99.length < 1:
                            revert with 0, 17
                        if sub_cfd73d99.length - 1 >= sub_cfd73d99.length:
                            revert with 0, 50
                        mem[0] = 18
                        mem[mem[64] + 4] = address(sub_cfd73d99[sub_cfd73d99.length])
                        mem[mem[64] + 36] = address(sub_cfd73d99[sub_cfd73d99.length])
                        require ext_code.size(sub_3ef67e9fAddress)
                        staticcall sub_3ef67e9fAddress.getPair(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args address(sub_cfd73d99[sub_cfd73d99.length]), address(sub_cfd73d99[sub_cfd73d99.length])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1408 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1408] == mem[_1408 + 12 len 20]
                        if mem[_1408 + 12 len 20]:
                            sub_6c302b9dAddress = mem[_1408 + 12 len 20]
            else:
                s = 0
                idx = ceil32(return_data.size) + 128
                while ceil32(return_data.size) + (32 * mem[ceil32(return_data.size) + 96]) + 128 > idx:
                    address(sub_cfd73d99[s]) = mem[idx + 12 len 20]
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = Mask(251, 0, (32 * mem[ceil32(return_data.size) + 96]) + 31) >> 5
                while sub_cfd73d99.length > idx:
                    uint256(sub_cfd73d99[idx]) = 0
                    idx = idx + 1
                    continue 
                require ('cd', 4)[12] < calldata.size + -cd[4] - 35
                require cd[(cd[4] + ('cd', 4)[12] + 4)] <= test266151307()
                require cd[4] + ('cd', 4)[12] + 36 <= calldata.size - (32 * cd[(cd[4] + ('cd', 4)[12] + 4)])
                mem[64] = ceil32(return_data.size) + (32 * cd[(cd[4] + ('cd', 4)[11] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[12] + 4)]) + 160
                mem[ceil32(return_data.size) + (32 * cd[(cd[4] + ('cd', 4)[11] + 4)]) + 128] = cd[(cd[4] + ('cd', 4)[12] + 4)]
                mem[ceil32(return_data.size) + (32 * cd[(cd[4] + ('cd', 4)[11] + 4)]) + 160 len 32 * cd[(cd[4] + ('cd', 4)[12] + 4)]] = call.data[cd[4] + ('cd', 4)[12] + 36 len 32 * cd[(cd[4] + ('cd', 4)[12] + 4)]]
                mem[ceil32(return_data.size) + (32 * cd[(cd[4] + ('cd', 4)[11] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[12] + 4)]) + 160] = 0
                idx = 0
                while idx < mem[ceil32(return_data.size) + (32 * cd[(cd[4] + ('cd', 4)[11] + 4)]) + 128]:
                    if idx >= mem[ceil32(return_data.size) + (32 * cd[(cd[4] + ('cd', 4)[11] + 4)]) + 128]:
                        revert with 0, 50
                    if idx >= mem[ceil32(return_data.size) + (32 * cd[(cd[4] + ('cd', 4)[11] + 4)]) + 128]:
                        revert with 0, 50
                    mem[(32 * idx) + ceil32(return_data.size) + (32 * cd[(cd[4] + ('cd', 4)[11] + 4)]) + 160] = address(mem[(32 * idx) + ceil32(return_data.size) + (32 * cd[(cd[4] + ('cd', 4)[11] + 4)]) + 172 len 20] xor stor20)
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                sub_2f3b2e30.length = mem[ceil32(return_data.size) + (32 * cd[(cd[4] + ('cd', 4)[11] + 4)]) + 128]
                if not mem[ceil32(return_data.size) + (32 * cd[(cd[4] + ('cd', 4)[11] + 4)]) + 128]:
                    idx = 0
                    while sub_2f3b2e30.length > idx:
                        uint256(sub_2f3b2e30[idx]) = 0
                        idx = idx + 1
                        continue 
                    require ('cd', 4)[5] == address(('cd', 4)[5])
                    stor12 = address(stor20 xor address(('cd', 4)[5]))
                    require ('cd', 4)[6] == address(('cd', 4)[6])
                    stor13 = address(stor20 xor address(('cd', 4)[6]))
                    require ('cd', 4)[8] == address(('cd', 4)[8])
                    stor15 = address(stor20 xor address(('cd', 4)[8]))
                    require ('cd', 4)[9] == address(('cd', 4)[9])
                    stor16 = address(stor20 xor address(('cd', 4)[9]))
                    require ('cd', 4)[10] == address(('cd', 4)[10])
                    stor17 = address(address(('cd', 4)[10]) xor stor20)
                    sub_6c302b9dAddress = 0
                    if not sub_6c302b9dAddress:
                        if sub_cfd73d99.length < 2:
                            revert with 0, 17
                        if sub_cfd73d99.length - 2 >= sub_cfd73d99.length:
                            revert with 0, 50
                        if sub_cfd73d99.length < 1:
                            revert with 0, 17
                        if sub_cfd73d99.length - 1 >= sub_cfd73d99.length:
                            revert with 0, 50
                        mem[0] = 18
                        mem[mem[64] + 4] = address(sub_cfd73d99[sub_cfd73d99.length])
                        mem[mem[64] + 36] = address(sub_cfd73d99[sub_cfd73d99.length])
                        require ext_code.size(sub_3ef67e9fAddress)
                        staticcall sub_3ef67e9fAddress.getPair(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args address(sub_cfd73d99[sub_cfd73d99.length]), address(sub_cfd73d99[sub_cfd73d99.length])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1409 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1409] == mem[_1409 + 12 len 20]
                        if mem[_1409 + 12 len 20]:
                            sub_6c302b9dAddress = mem[_1409 + 12 len 20]
                else:
                    s = 0
                    idx = ceil32(return_data.size) + (32 * cd[(cd[4] + ('cd', 4)[11] + 4)]) + 160
                    while ceil32(return_data.size) + (32 * cd[(cd[4] + ('cd', 4)[11] + 4)]) + (32 * mem[ceil32(return_data.size) + (32 * cd[(cd[4] + ('cd', 4)[11] + 4)]) + 128]) + 160 > idx:
                        address(sub_2f3b2e30[s]) = mem[idx + 12 len 20]
                        s = s + 1
                        idx = idx + 32
                        continue 
                    idx = Mask(251, 0, (32 * mem[ceil32(return_data.size) + (32 * cd[(cd[4] + ('cd', 4)[11] + 4)]) + 128]) + 31) >> 5
                    while sub_2f3b2e30.length > idx:
                        uint256(sub_2f3b2e30[idx]) = 0
                        idx = idx + 1
                        continue 
                    require ('cd', 4)[5] == address(('cd', 4)[5])
                    stor12 = address(stor20 xor address(('cd', 4)[5]))
                    require ('cd', 4)[6] == address(('cd', 4)[6])
                    stor13 = address(stor20 xor address(('cd', 4)[6]))
                    require ('cd', 4)[8] == address(('cd', 4)[8])
                    stor15 = address(stor20 xor address(('cd', 4)[8]))
                    require ('cd', 4)[9] == address(('cd', 4)[9])
                    stor16 = address(stor20 xor address(('cd', 4)[9]))
                    require ('cd', 4)[10] == address(('cd', 4)[10])
                    stor17 = address(address(('cd', 4)[10]) xor stor20)
                    sub_6c302b9dAddress = 0
                    if not sub_6c302b9dAddress:
                        if sub_cfd73d99.length < 2:
                            revert with 0, 17
                        if sub_cfd73d99.length - 2 >= sub_cfd73d99.length:
                            revert with 0, 50
                        if sub_cfd73d99.length < 1:
                            revert with 0, 17
                        if sub_cfd73d99.length - 1 >= sub_cfd73d99.length:
                            revert with 0, 50
                        mem[0] = 18
                        mem[mem[64] + 4] = address(sub_cfd73d99[sub_cfd73d99.length])
                        mem[mem[64] + 36] = address(sub_cfd73d99[sub_cfd73d99.length])
                        require ext_code.size(sub_3ef67e9fAddress)
                        staticcall sub_3ef67e9fAddress.getPair(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args address(sub_cfd73d99[sub_cfd73d99.length]), address(sub_cfd73d99[sub_cfd73d99.length])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1516 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1516] == mem[_1516 + 12 len 20]
                        if mem[_1516 + 12 len 20]:
                            sub_6c302b9dAddress = mem[_1516 + 12 len 20]
        else:
            idx = cd[(cd[4] + ('cd', 4)[12] + 4)]
            while idx < sub_2f3b2e30.length:
                uint256(sub_2f3b2e30[idx]) = 0
                idx = idx + 1
                continue 
            idx = 0
            s = 0
            t = cd[4] + ('cd', 4)[12] + 36
            while idx < cd[(cd[4] + ('cd', 4)[12] + 4)]:
                require cd[t] == address(cd[t])
                address(sub_2f3b2e30[s]) = address(cd[t])
                idx = idx + 1
                s = s + 1
                t = t + 32
                continue 
            require ('cd', 4)[0] == address(('cd', 4)[0])
            address(stor7.field_8) = address(address(('cd', 4)[0]) xor stor20)
            require ext_code.size(address(stor7.field_8))
            staticcall address(stor7.field_8).factory() with:
                    gas gas_remaining wei
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            sub_3ef67e9fAddress = ext_call.return_data[12 len 20]
            require ('cd', 4)[11] < calldata.size + -cd[4] - 35
            require cd[(cd[4] + ('cd', 4)[11] + 4)] <= test266151307()
            require cd[4] + ('cd', 4)[11] + 36 <= calldata.size - (32 * cd[(cd[4] + ('cd', 4)[11] + 4)])
            mem[ceil32(return_data.size) + 96] = cd[(cd[4] + ('cd', 4)[11] + 4)]
            mem[ceil32(return_data.size) + 128 len 32 * cd[(cd[4] + ('cd', 4)[11] + 4)]] = call.data[cd[4] + ('cd', 4)[11] + 36 len 32 * cd[(cd[4] + ('cd', 4)[11] + 4)]]
            mem[ceil32(return_data.size) + (32 * cd[(cd[4] + ('cd', 4)[11] + 4)]) + 128] = 0
            idx = 0
            while idx < mem[ceil32(return_data.size) + 96]:
                if idx >= mem[ceil32(return_data.size) + 96]:
                    revert with 0, 50
                if idx >= mem[ceil32(return_data.size) + 96]:
                    revert with 0, 50
                mem[(32 * idx) + ceil32(return_data.size) + 128] = address(mem[(32 * idx) + ceil32(return_data.size) + 140 len 20] xor stor20)
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            sub_cfd73d99.length = mem[ceil32(return_data.size) + 96]
            mem[0] = 18
            if not mem[ceil32(return_data.size) + 96]:
                idx = 0
                while sub_cfd73d99.length > idx:
                    uint256(sub_cfd73d99[idx]) = 0
                    idx = idx + 1
                    continue 
                require ('cd', 4)[12] < calldata.size + -cd[4] - 35
                require cd[(cd[4] + ('cd', 4)[12] + 4)] <= test266151307()
                require cd[4] + ('cd', 4)[12] + 36 <= calldata.size - (32 * cd[(cd[4] + ('cd', 4)[12] + 4)])
                mem[64] = ceil32(return_data.size) + (32 * cd[(cd[4] + ('cd', 4)[11] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[12] + 4)]) + 160
                mem[ceil32(return_data.size) + (32 * cd[(cd[4] + ('cd', 4)[11] + 4)]) + 128] = cd[(cd[4] + ('cd', 4)[12] + 4)]
                mem[ceil32(return_data.size) + (32 * cd[(cd[4] + ('cd', 4)[11] + 4)]) + 160 len 32 * cd[(cd[4] + ('cd', 4)[12] + 4)]] = call.data[cd[4] + ('cd', 4)[12] + 36 len 32 * cd[(cd[4] + ('cd', 4)[12] + 4)]]
                mem[ceil32(return_data.size) + (32 * cd[(cd[4] + ('cd', 4)[11] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[12] + 4)]) + 160] = 0
                idx = 0
                while idx < mem[ceil32(return_data.size) + (32 * cd[(cd[4] + ('cd', 4)[11] + 4)]) + 128]:
                    if idx >= mem[ceil32(return_data.size) + (32 * cd[(cd[4] + ('cd', 4)[11] + 4)]) + 128]:
                        revert with 0, 50
                    if idx >= mem[ceil32(return_data.size) + (32 * cd[(cd[4] + ('cd', 4)[11] + 4)]) + 128]:
                        revert with 0, 50
                    mem[(32 * idx) + ceil32(return_data.size) + (32 * cd[(cd[4] + ('cd', 4)[11] + 4)]) + 160] = address(mem[(32 * idx) + ceil32(return_data.size) + (32 * cd[(cd[4] + ('cd', 4)[11] + 4)]) + 172 len 20] xor stor20)
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                sub_2f3b2e30.length = mem[ceil32(return_data.size) + (32 * cd[(cd[4] + ('cd', 4)[11] + 4)]) + 128]
                if not mem[ceil32(return_data.size) + (32 * cd[(cd[4] + ('cd', 4)[11] + 4)]) + 128]:
                    idx = 0
                    while sub_2f3b2e30.length > idx:
                        uint256(sub_2f3b2e30[idx]) = 0
                        idx = idx + 1
                        continue 
                    require ('cd', 4)[5] == address(('cd', 4)[5])
                    stor12 = address(stor20 xor address(('cd', 4)[5]))
                    require ('cd', 4)[6] == address(('cd', 4)[6])
                    stor13 = address(stor20 xor address(('cd', 4)[6]))
                    require ('cd', 4)[8] == address(('cd', 4)[8])
                    stor15 = address(stor20 xor address(('cd', 4)[8]))
                    require ('cd', 4)[9] == address(('cd', 4)[9])
                    stor16 = address(stor20 xor address(('cd', 4)[9]))
                    require ('cd', 4)[10] == address(('cd', 4)[10])
                    stor17 = address(address(('cd', 4)[10]) xor stor20)
                    sub_6c302b9dAddress = 0
                    if not sub_6c302b9dAddress:
                        if sub_cfd73d99.length < 2:
                            revert with 0, 17
                        if sub_cfd73d99.length - 2 >= sub_cfd73d99.length:
                            revert with 0, 50
                        if sub_cfd73d99.length < 1:
                            revert with 0, 17
                        if sub_cfd73d99.length - 1 >= sub_cfd73d99.length:
                            revert with 0, 50
                        mem[0] = 18
                        mem[mem[64] + 4] = address(sub_cfd73d99[sub_cfd73d99.length])
                        mem[mem[64] + 36] = address(sub_cfd73d99[sub_cfd73d99.length])
                        require ext_code.size(sub_3ef67e9fAddress)
                        staticcall sub_3ef67e9fAddress.getPair(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args address(sub_cfd73d99[sub_cfd73d99.length]), address(sub_cfd73d99[sub_cfd73d99.length])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1410 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1410] == mem[_1410 + 12 len 20]
                        if mem[_1410 + 12 len 20]:
                            sub_6c302b9dAddress = mem[_1410 + 12 len 20]
                else:
                    s = 0
                    idx = ceil32(return_data.size) + (32 * cd[(cd[4] + ('cd', 4)[11] + 4)]) + 160
                    while ceil32(return_data.size) + (32 * cd[(cd[4] + ('cd', 4)[11] + 4)]) + (32 * mem[ceil32(return_data.size) + (32 * cd[(cd[4] + ('cd', 4)[11] + 4)]) + 128]) + 160 > idx:
                        address(sub_2f3b2e30[s]) = mem[idx + 12 len 20]
                        s = s + 1
                        idx = idx + 32
                        continue 
                    idx = Mask(251, 0, (32 * mem[ceil32(return_data.size) + (32 * cd[(cd[4] + ('cd', 4)[11] + 4)]) + 128]) + 31) >> 5
                    while sub_2f3b2e30.length > idx:
                        uint256(sub_2f3b2e30[idx]) = 0
                        idx = idx + 1
                        continue 
                    require ('cd', 4)[5] == address(('cd', 4)[5])
                    stor12 = address(stor20 xor address(('cd', 4)[5]))
                    require ('cd', 4)[6] == address(('cd', 4)[6])
                    stor13 = address(stor20 xor address(('cd', 4)[6]))
                    require ('cd', 4)[8] == address(('cd', 4)[8])
                    stor15 = address(stor20 xor address(('cd', 4)[8]))
                    require ('cd', 4)[9] == address(('cd', 4)[9])
                    stor16 = address(stor20 xor address(('cd', 4)[9]))
                    require ('cd', 4)[10] == address(('cd', 4)[10])
                    stor17 = address(address(('cd', 4)[10]) xor stor20)
                    sub_6c302b9dAddress = 0
                    if not sub_6c302b9dAddress:
                        if sub_cfd73d99.length < 2:
                            revert with 0, 17
                        if sub_cfd73d99.length - 2 >= sub_cfd73d99.length:
                            revert with 0, 50
                        if sub_cfd73d99.length < 1:
                            revert with 0, 17
                        if sub_cfd73d99.length - 1 >= sub_cfd73d99.length:
                            revert with 0, 50
                        mem[0] = 18
                        mem[mem[64] + 4] = address(sub_cfd73d99[sub_cfd73d99.length])
                        mem[mem[64] + 36] = address(sub_cfd73d99[sub_cfd73d99.length])
                        require ext_code.size(sub_3ef67e9fAddress)
                        staticcall sub_3ef67e9fAddress.getPair(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args address(sub_cfd73d99[sub_cfd73d99.length]), address(sub_cfd73d99[sub_cfd73d99.length])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1517 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1517] == mem[_1517 + 12 len 20]
                        if mem[_1517 + 12 len 20]:
                            sub_6c302b9dAddress = mem[_1517 + 12 len 20]
            else:
                s = 0
                idx = ceil32(return_data.size) + 128
                while ceil32(return_data.size) + (32 * mem[ceil32(return_data.size) + 96]) + 128 > idx:
                    address(sub_cfd73d99[s]) = mem[idx + 12 len 20]
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = Mask(251, 0, (32 * mem[ceil32(return_data.size) + 96]) + 31) >> 5
                while sub_cfd73d99.length > idx:
                    uint256(sub_cfd73d99[idx]) = 0
                    idx = idx + 1
                    continue 
                require ('cd', 4)[12] < calldata.size + -cd[4] - 35
                require cd[(cd[4] + ('cd', 4)[12] + 4)] <= test266151307()
                require cd[4] + ('cd', 4)[12] + 36 <= calldata.size - (32 * cd[(cd[4] + ('cd', 4)[12] + 4)])
                mem[64] = ceil32(return_data.size) + (32 * cd[(cd[4] + ('cd', 4)[11] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[12] + 4)]) + 160
                mem[ceil32(return_data.size) + (32 * cd[(cd[4] + ('cd', 4)[11] + 4)]) + 128] = cd[(cd[4] + ('cd', 4)[12] + 4)]
                mem[ceil32(return_data.size) + (32 * cd[(cd[4] + ('cd', 4)[11] + 4)]) + 160 len 32 * cd[(cd[4] + ('cd', 4)[12] + 4)]] = call.data[cd[4] + ('cd', 4)[12] + 36 len 32 * cd[(cd[4] + ('cd', 4)[12] + 4)]]
                mem[ceil32(return_data.size) + (32 * cd[(cd[4] + ('cd', 4)[11] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[12] + 4)]) + 160] = 0
                idx = 0
                while idx < mem[ceil32(return_data.size) + (32 * cd[(cd[4] + ('cd', 4)[11] + 4)]) + 128]:
                    if idx >= mem[ceil32(return_data.size) + (32 * cd[(cd[4] + ('cd', 4)[11] + 4)]) + 128]:
                        revert with 0, 50
                    if idx >= mem[ceil32(return_data.size) + (32 * cd[(cd[4] + ('cd', 4)[11] + 4)]) + 128]:
                        revert with 0, 50
                    mem[(32 * idx) + ceil32(return_data.size) + (32 * cd[(cd[4] + ('cd', 4)[11] + 4)]) + 160] = address(mem[(32 * idx) + ceil32(return_data.size) + (32 * cd[(cd[4] + ('cd', 4)[11] + 4)]) + 172 len 20] xor stor20)
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                sub_2f3b2e30.length = mem[ceil32(return_data.size) + (32 * cd[(cd[4] + ('cd', 4)[11] + 4)]) + 128]
                if not mem[ceil32(return_data.size) + (32 * cd[(cd[4] + ('cd', 4)[11] + 4)]) + 128]:
                    idx = 0
                    while sub_2f3b2e30.length > idx:
                        uint256(sub_2f3b2e30[idx]) = 0
                        idx = idx + 1
                        continue 
                    require ('cd', 4)[5] == address(('cd', 4)[5])
                    stor12 = address(stor20 xor address(('cd', 4)[5]))
                    require ('cd', 4)[6] == address(('cd', 4)[6])
                    stor13 = address(stor20 xor address(('cd', 4)[6]))
                    require ('cd', 4)[8] == address(('cd', 4)[8])
                    stor15 = address(stor20 xor address(('cd', 4)[8]))
                    require ('cd', 4)[9] == address(('cd', 4)[9])
                    stor16 = address(stor20 xor address(('cd', 4)[9]))
                    require ('cd', 4)[10] == address(('cd', 4)[10])
                    stor17 = address(address(('cd', 4)[10]) xor stor20)
                    sub_6c302b9dAddress = 0
                    if not sub_6c302b9dAddress:
                        if sub_cfd73d99.length < 2:
                            revert with 0, 17
                        if sub_cfd73d99.length - 2 >= sub_cfd73d99.length:
                            revert with 0, 50
                        if sub_cfd73d99.length < 1:
                            revert with 0, 17
                        if sub_cfd73d99.length - 1 >= sub_cfd73d99.length:
                            revert with 0, 50
                        mem[0] = 18
                        mem[mem[64] + 4] = address(sub_cfd73d99[sub_cfd73d99.length])
                        mem[mem[64] + 36] = address(sub_cfd73d99[sub_cfd73d99.length])
                        require ext_code.size(sub_3ef67e9fAddress)
                        staticcall sub_3ef67e9fAddress.getPair(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args address(sub_cfd73d99[sub_cfd73d99.length]), address(sub_cfd73d99[sub_cfd73d99.length])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1518 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1518] == mem[_1518 + 12 len 20]
                        if mem[_1518 + 12 len 20]:
                            sub_6c302b9dAddress = mem[_1518 + 12 len 20]
                else:
                    s = 0
                    idx = ceil32(return_data.size) + (32 * cd[(cd[4] + ('cd', 4)[11] + 4)]) + 160
                    while ceil32(return_data.size) + (32 * cd[(cd[4] + ('cd', 4)[11] + 4)]) + (32 * mem[ceil32(return_data.size) + (32 * cd[(cd[4] + ('cd', 4)[11] + 4)]) + 128]) + 160 > idx:
                        address(sub_2f3b2e30[s]) = mem[idx + 12 len 20]
                        s = s + 1
                        idx = idx + 32
                        continue 
                    idx = Mask(251, 0, (32 * mem[ceil32(return_data.size) + (32 * cd[(cd[4] + ('cd', 4)[11] + 4)]) + 128]) + 31) >> 5
                    while sub_2f3b2e30.length > idx:
                        uint256(sub_2f3b2e30[idx]) = 0
                        idx = idx + 1
                        continue 
                    require ('cd', 4)[5] == address(('cd', 4)[5])
                    stor12 = address(stor20 xor address(('cd', 4)[5]))
                    require ('cd', 4)[6] == address(('cd', 4)[6])
                    stor13 = address(stor20 xor address(('cd', 4)[6]))
                    require ('cd', 4)[8] == address(('cd', 4)[8])
                    stor15 = address(stor20 xor address(('cd', 4)[8]))
                    require ('cd', 4)[9] == address(('cd', 4)[9])
                    stor16 = address(stor20 xor address(('cd', 4)[9]))
                    require ('cd', 4)[10] == address(('cd', 4)[10])
                    stor17 = address(address(('cd', 4)[10]) xor stor20)
                    sub_6c302b9dAddress = 0
                    if not sub_6c302b9dAddress:
                        if sub_cfd73d99.length < 2:
                            revert with 0, 17
                        if sub_cfd73d99.length - 2 >= sub_cfd73d99.length:
                            revert with 0, 50
                        if sub_cfd73d99.length < 1:
                            revert with 0, 17
                        if sub_cfd73d99.length - 1 >= sub_cfd73d99.length:
                            revert with 0, 50
                        mem[0] = 18
                        mem[mem[64] + 4] = address(sub_cfd73d99[sub_cfd73d99.length])
                        mem[mem[64] + 36] = address(sub_cfd73d99[sub_cfd73d99.length])
                        require ext_code.size(sub_3ef67e9fAddress)
                        staticcall sub_3ef67e9fAddress.getPair(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args address(sub_cfd73d99[sub_cfd73d99.length]), address(sub_cfd73d99[sub_cfd73d99.length])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1573 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1573] == mem[_1573 + 12 len 20]
                        if mem[_1573 + 12 len 20]:
                            sub_6c302b9dAddress = mem[_1573 + 12 len 20]
    else:
        idx = cd[(cd[4] + ('cd', 4)[11] + 4)]
        while idx < sub_cfd73d99.length:
            uint256(sub_cfd73d99[idx]) = 0
            idx = idx + 1
            continue 
        idx = 0
        s = 0
        t = cd[4] + ('cd', 4)[11] + 36
        while idx < cd[(cd[4] + ('cd', 4)[11] + 4)]:
            require cd[t] == address(cd[t])
            address(sub_cfd73d99[s]) = address(cd[t])
            idx = idx + 1
            s = s + 1
            t = t + 32
            continue 
        require ('cd', 4)[12] < calldata.size + -cd[4] - 35
        require cd[(cd[4] + ('cd', 4)[12] + 4)] <= test266151307()
        require cd[4] + ('cd', 4)[12] + 36 <= calldata.size - (32 * cd[(cd[4] + ('cd', 4)[12] + 4)])
        if cd[(cd[4] + ('cd', 4)[12] + 4)] > 18446744073709551616:
            revert with 0, 65
        sub_2f3b2e30.length = cd[(cd[4] + ('cd', 4)[12] + 4)]
        if cd[(cd[4] + ('cd', 4)[12] + 4)] >= sub_2f3b2e30.length:
            idx = 0
            s = 0
            t = cd[4] + ('cd', 4)[12] + 36
            while idx < cd[(cd[4] + ('cd', 4)[12] + 4)]:
                require cd[t] == address(cd[t])
                address(sub_2f3b2e30[s]) = address(cd[t])
                idx = idx + 1
                s = s + 1
                t = t + 32
                continue 
            require ('cd', 4)[0] == address(('cd', 4)[0])
            address(stor7.field_8) = address(address(('cd', 4)[0]) xor stor20)
            require ext_code.size(address(stor7.field_8))
            staticcall address(stor7.field_8).factory() with:
                    gas gas_remaining wei
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            sub_3ef67e9fAddress = ext_call.return_data[12 len 20]
            require ('cd', 4)[11] < calldata.size + -cd[4] - 35
            require cd[(cd[4] + ('cd', 4)[11] + 4)] <= test266151307()
            require cd[4] + ('cd', 4)[11] + 36 <= calldata.size - (32 * cd[(cd[4] + ('cd', 4)[11] + 4)])
            mem[ceil32(return_data.size) + 96] = cd[(cd[4] + ('cd', 4)[11] + 4)]
            mem[ceil32(return_data.size) + 128 len 32 * cd[(cd[4] + ('cd', 4)[11] + 4)]] = call.data[cd[4] + ('cd', 4)[11] + 36 len 32 * cd[(cd[4] + ('cd', 4)[11] + 4)]]
            mem[ceil32(return_data.size) + (32 * cd[(cd[4] + ('cd', 4)[11] + 4)]) + 128] = 0
            idx = 0
            while idx < mem[ceil32(return_data.size) + 96]:
                if idx >= mem[ceil32(return_data.size) + 96]:
                    revert with 0, 50
                if idx >= mem[ceil32(return_data.size) + 96]:
                    revert with 0, 50
                mem[(32 * idx) + ceil32(return_data.size) + 128] = address(mem[(32 * idx) + ceil32(return_data.size) + 140 len 20] xor stor20)
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            sub_cfd73d99.length = mem[ceil32(return_data.size) + 96]
            mem[0] = 18
            if not mem[ceil32(return_data.size) + 96]:
                idx = 0
                while sub_cfd73d99.length > idx:
                    uint256(sub_cfd73d99[idx]) = 0
                    idx = idx + 1
                    continue 
                require ('cd', 4)[12] < calldata.size + -cd[4] - 35
                require cd[(cd[4] + ('cd', 4)[12] + 4)] <= test266151307()
                require cd[4] + ('cd', 4)[12] + 36 <= calldata.size - (32 * cd[(cd[4] + ('cd', 4)[12] + 4)])
                mem[64] = ceil32(return_data.size) + (32 * cd[(cd[4] + ('cd', 4)[11] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[12] + 4)]) + 160
                mem[ceil32(return_data.size) + (32 * cd[(cd[4] + ('cd', 4)[11] + 4)]) + 128] = cd[(cd[4] + ('cd', 4)[12] + 4)]
                mem[ceil32(return_data.size) + (32 * cd[(cd[4] + ('cd', 4)[11] + 4)]) + 160 len 32 * cd[(cd[4] + ('cd', 4)[12] + 4)]] = call.data[cd[4] + ('cd', 4)[12] + 36 len 32 * cd[(cd[4] + ('cd', 4)[12] + 4)]]
                mem[ceil32(return_data.size) + (32 * cd[(cd[4] + ('cd', 4)[11] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[12] + 4)]) + 160] = 0
                idx = 0
                while idx < mem[ceil32(return_data.size) + (32 * cd[(cd[4] + ('cd', 4)[11] + 4)]) + 128]:
                    if idx >= mem[ceil32(return_data.size) + (32 * cd[(cd[4] + ('cd', 4)[11] + 4)]) + 128]:
                        revert with 0, 50
                    if idx >= mem[ceil32(return_data.size) + (32 * cd[(cd[4] + ('cd', 4)[11] + 4)]) + 128]:
                        revert with 0, 50
                    mem[(32 * idx) + ceil32(return_data.size) + (32 * cd[(cd[4] + ('cd', 4)[11] + 4)]) + 160] = address(mem[(32 * idx) + ceil32(return_data.size) + (32 * cd[(cd[4] + ('cd', 4)[11] + 4)]) + 172 len 20] xor stor20)
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                sub_2f3b2e30.length = mem[ceil32(return_data.size) + (32 * cd[(cd[4] + ('cd', 4)[11] + 4)]) + 128]
                if not mem[ceil32(return_data.size) + (32 * cd[(cd[4] + ('cd', 4)[11] + 4)]) + 128]:
                    idx = 0
                    while sub_2f3b2e30.length > idx:
                        uint256(sub_2f3b2e30[idx]) = 0
                        idx = idx + 1
                        continue 
                    require ('cd', 4)[5] == address(('cd', 4)[5])
                    stor12 = address(stor20 xor address(('cd', 4)[5]))
                    require ('cd', 4)[6] == address(('cd', 4)[6])
                    stor13 = address(stor20 xor address(('cd', 4)[6]))
                    require ('cd', 4)[8] == address(('cd', 4)[8])
                    stor15 = address(stor20 xor address(('cd', 4)[8]))
                    require ('cd', 4)[9] == address(('cd', 4)[9])
                    stor16 = address(stor20 xor address(('cd', 4)[9]))
                    require ('cd', 4)[10] == address(('cd', 4)[10])
                    stor17 = address(address(('cd', 4)[10]) xor stor20)
                    sub_6c302b9dAddress = 0
                    if not sub_6c302b9dAddress:
                        if sub_cfd73d99.length < 2:
                            revert with 0, 17
                        if sub_cfd73d99.length - 2 >= sub_cfd73d99.length:
                            revert with 0, 50
                        if sub_cfd73d99.length < 1:
                            revert with 0, 17
                        if sub_cfd73d99.length - 1 >= sub_cfd73d99.length:
                            revert with 0, 50
                        mem[0] = 18
                        mem[mem[64] + 4] = address(sub_cfd73d99[sub_cfd73d99.length])
                        mem[mem[64] + 36] = address(sub_cfd73d99[sub_cfd73d99.length])
                        require ext_code.size(sub_3ef67e9fAddress)
                        staticcall sub_3ef67e9fAddress.getPair(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args address(sub_cfd73d99[sub_cfd73d99.length]), address(sub_cfd73d99[sub_cfd73d99.length])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1412 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1412] == mem[_1412 + 12 len 20]
                        if mem[_1412 + 12 len 20]:
                            sub_6c302b9dAddress = mem[_1412 + 12 len 20]
                else:
                    s = 0
                    idx = ceil32(return_data.size) + (32 * cd[(cd[4] + ('cd', 4)[11] + 4)]) + 160
                    while ceil32(return_data.size) + (32 * cd[(cd[4] + ('cd', 4)[11] + 4)]) + (32 * mem[ceil32(return_data.size) + (32 * cd[(cd[4] + ('cd', 4)[11] + 4)]) + 128]) + 160 > idx:
                        address(sub_2f3b2e30[s]) = mem[idx + 12 len 20]
                        s = s + 1
                        idx = idx + 32
                        continue 
                    idx = Mask(251, 0, (32 * mem[ceil32(return_data.size) + (32 * cd[(cd[4] + ('cd', 4)[11] + 4)]) + 128]) + 31) >> 5
                    while sub_2f3b2e30.length > idx:
                        uint256(sub_2f3b2e30[idx]) = 0
                        idx = idx + 1
                        continue 
                    require ('cd', 4)[5] == address(('cd', 4)[5])
                    stor12 = address(stor20 xor address(('cd', 4)[5]))
                    require ('cd', 4)[6] == address(('cd', 4)[6])
                    stor13 = address(stor20 xor address(('cd', 4)[6]))
                    require ('cd', 4)[8] == address(('cd', 4)[8])
                    stor15 = address(stor20 xor address(('cd', 4)[8]))
                    require ('cd', 4)[9] == address(('cd', 4)[9])
                    stor16 = address(stor20 xor address(('cd', 4)[9]))
                    require ('cd', 4)[10] == address(('cd', 4)[10])
                    stor17 = address(address(('cd', 4)[10]) xor stor20)
                    sub_6c302b9dAddress = 0
                    if not sub_6c302b9dAddress:
                        if sub_cfd73d99.length < 2:
                            revert with 0, 17
                        if sub_cfd73d99.length - 2 >= sub_cfd73d99.length:
                            revert with 0, 50
                        if sub_cfd73d99.length < 1:
                            revert with 0, 17
                        if sub_cfd73d99.length - 1 >= sub_cfd73d99.length:
                            revert with 0, 50
                        mem[0] = 18
                        mem[mem[64] + 4] = address(sub_cfd73d99[sub_cfd73d99.length])
                        mem[mem[64] + 36] = address(sub_cfd73d99[sub_cfd73d99.length])
                        require ext_code.size(sub_3ef67e9fAddress)
                        staticcall sub_3ef67e9fAddress.getPair(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args address(sub_cfd73d99[sub_cfd73d99.length]), address(sub_cfd73d99[sub_cfd73d99.length])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1519 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1519] == mem[_1519 + 12 len 20]
                        if mem[_1519 + 12 len 20]:
                            sub_6c302b9dAddress = mem[_1519 + 12 len 20]
            else:
                s = 0
                idx = ceil32(return_data.size) + 128
                while ceil32(return_data.size) + (32 * mem[ceil32(return_data.size) + 96]) + 128 > idx:
                    address(sub_cfd73d99[s]) = mem[idx + 12 len 20]
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = Mask(251, 0, (32 * mem[ceil32(return_data.size) + 96]) + 31) >> 5
                while sub_cfd73d99.length > idx:
                    uint256(sub_cfd73d99[idx]) = 0
                    idx = idx + 1
                    continue 
                require ('cd', 4)[12] < calldata.size + -cd[4] - 35
                require cd[(cd[4] + ('cd', 4)[12] + 4)] <= test266151307()
                require cd[4] + ('cd', 4)[12] + 36 <= calldata.size - (32 * cd[(cd[4] + ('cd', 4)[12] + 4)])
                mem[64] = ceil32(return_data.size) + (32 * cd[(cd[4] + ('cd', 4)[11] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[12] + 4)]) + 160
                mem[ceil32(return_data.size) + (32 * cd[(cd[4] + ('cd', 4)[11] + 4)]) + 128] = cd[(cd[4] + ('cd', 4)[12] + 4)]
                mem[ceil32(return_data.size) + (32 * cd[(cd[4] + ('cd', 4)[11] + 4)]) + 160 len 32 * cd[(cd[4] + ('cd', 4)[12] + 4)]] = call.data[cd[4] + ('cd', 4)[12] + 36 len 32 * cd[(cd[4] + ('cd', 4)[12] + 4)]]
                mem[ceil32(return_data.size) + (32 * cd[(cd[4] + ('cd', 4)[11] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[12] + 4)]) + 160] = 0
                idx = 0
                while idx < mem[ceil32(return_data.size) + (32 * cd[(cd[4] + ('cd', 4)[11] + 4)]) + 128]:
                    if idx >= mem[ceil32(return_data.size) + (32 * cd[(cd[4] + ('cd', 4)[11] + 4)]) + 128]:
                        revert with 0, 50
                    if idx >= mem[ceil32(return_data.size) + (32 * cd[(cd[4] + ('cd', 4)[11] + 4)]) + 128]:
                        revert with 0, 50
                    mem[(32 * idx) + ceil32(return_data.size) + (32 * cd[(cd[4] + ('cd', 4)[11] + 4)]) + 160] = address(mem[(32 * idx) + ceil32(return_data.size) + (32 * cd[(cd[4] + ('cd', 4)[11] + 4)]) + 172 len 20] xor stor20)
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                sub_2f3b2e30.length = mem[ceil32(return_data.size) + (32 * cd[(cd[4] + ('cd', 4)[11] + 4)]) + 128]
                if not mem[ceil32(return_data.size) + (32 * cd[(cd[4] + ('cd', 4)[11] + 4)]) + 128]:
                    idx = 0
                    while sub_2f3b2e30.length > idx:
                        uint256(sub_2f3b2e30[idx]) = 0
                        idx = idx + 1
                        continue 
                    require ('cd', 4)[5] == address(('cd', 4)[5])
                    stor12 = address(stor20 xor address(('cd', 4)[5]))
                    require ('cd', 4)[6] == address(('cd', 4)[6])
                    stor13 = address(stor20 xor address(('cd', 4)[6]))
                    require ('cd', 4)[8] == address(('cd', 4)[8])
                    stor15 = address(stor20 xor address(('cd', 4)[8]))
                    require ('cd', 4)[9] == address(('cd', 4)[9])
                    stor16 = address(stor20 xor address(('cd', 4)[9]))
                    require ('cd', 4)[10] == address(('cd', 4)[10])
                    stor17 = address(address(('cd', 4)[10]) xor stor20)
                    sub_6c302b9dAddress = 0
                    if not sub_6c302b9dAddress:
                        if sub_cfd73d99.length < 2:
                            revert with 0, 17
                        if sub_cfd73d99.length - 2 >= sub_cfd73d99.length:
                            revert with 0, 50
                        if sub_cfd73d99.length < 1:
                            revert with 0, 17
                        if sub_cfd73d99.length - 1 >= sub_cfd73d99.length:
                            revert with 0, 50
                        mem[0] = 18
                        mem[mem[64] + 4] = address(sub_cfd73d99[sub_cfd73d99.length])
                        mem[mem[64] + 36] = address(sub_cfd73d99[sub_cfd73d99.length])
                        require ext_code.size(sub_3ef67e9fAddress)
                        staticcall sub_3ef67e9fAddress.getPair(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args address(sub_cfd73d99[sub_cfd73d99.length]), address(sub_cfd73d99[sub_cfd73d99.length])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1520 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1520] == mem[_1520 + 12 len 20]
                        if mem[_1520 + 12 len 20]:
                            sub_6c302b9dAddress = mem[_1520 + 12 len 20]
                else:
                    s = 0
                    idx = ceil32(return_data.size) + (32 * cd[(cd[4] + ('cd', 4)[11] + 4)]) + 160
                    while ceil32(return_data.size) + (32 * cd[(cd[4] + ('cd', 4)[11] + 4)]) + (32 * mem[ceil32(return_data.size) + (32 * cd[(cd[4] + ('cd', 4)[11] + 4)]) + 128]) + 160 > idx:
                        address(sub_2f3b2e30[s]) = mem[idx + 12 len 20]
                        s = s + 1
                        idx = idx + 32
                        continue 
                    idx = Mask(251, 0, (32 * mem[ceil32(return_data.size) + (32 * cd[(cd[4] + ('cd', 4)[11] + 4)]) + 128]) + 31) >> 5
                    while sub_2f3b2e30.length > idx:
                        uint256(sub_2f3b2e30[idx]) = 0
                        idx = idx + 1
                        continue 
                    require ('cd', 4)[5] == address(('cd', 4)[5])
                    stor12 = address(stor20 xor address(('cd', 4)[5]))
                    require ('cd', 4)[6] == address(('cd', 4)[6])
                    stor13 = address(stor20 xor address(('cd', 4)[6]))
                    require ('cd', 4)[8] == address(('cd', 4)[8])
                    stor15 = address(stor20 xor address(('cd', 4)[8]))
                    require ('cd', 4)[9] == address(('cd', 4)[9])
                    stor16 = address(stor20 xor address(('cd', 4)[9]))
                    require ('cd', 4)[10] == address(('cd', 4)[10])
                    stor17 = address(address(('cd', 4)[10]) xor stor20)
                    sub_6c302b9dAddress = 0
                    if not sub_6c302b9dAddress:
                        if sub_cfd73d99.length < 2:
                            revert with 0, 17
                        if sub_cfd73d99.length - 2 >= sub_cfd73d99.length:
                            revert with 0, 50
                        if sub_cfd73d99.length < 1:
                            revert with 0, 17
                        if sub_cfd73d99.length - 1 >= sub_cfd73d99.length:
                            revert with 0, 50
                        mem[0] = 18
                        mem[mem[64] + 4] = address(sub_cfd73d99[sub_cfd73d99.length])
                        mem[mem[64] + 36] = address(sub_cfd73d99[sub_cfd73d99.length])
                        require ext_code.size(sub_3ef67e9fAddress)
                        staticcall sub_3ef67e9fAddress.getPair(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args address(sub_cfd73d99[sub_cfd73d99.length]), address(sub_cfd73d99[sub_cfd73d99.length])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1574 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1574] == mem[_1574 + 12 len 20]
                        if mem[_1574 + 12 len 20]:
                            sub_6c302b9dAddress = mem[_1574 + 12 len 20]
        else:
            idx = cd[(cd[4] + ('cd', 4)[12] + 4)]
            while idx < sub_2f3b2e30.length:
                uint256(sub_2f3b2e30[idx]) = 0
                idx = idx + 1
                continue 
            idx = 0
            s = 0
            t = cd[4] + ('cd', 4)[12] + 36
            while idx < cd[(cd[4] + ('cd', 4)[12] + 4)]:
                require cd[t] == address(cd[t])
                address(sub_2f3b2e30[s]) = address(cd[t])
                idx = idx + 1
                s = s + 1
                t = t + 32
                continue 
            require ('cd', 4)[0] == address(('cd', 4)[0])
            address(stor7.field_8) = address(address(('cd', 4)[0]) xor stor20)
            require ext_code.size(address(stor7.field_8))
            staticcall address(stor7.field_8).factory() with:
                    gas gas_remaining wei
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            sub_3ef67e9fAddress = ext_call.return_data[12 len 20]
            require ('cd', 4)[11] < calldata.size + -cd[4] - 35
            require cd[(cd[4] + ('cd', 4)[11] + 4)] <= test266151307()
            require cd[4] + ('cd', 4)[11] + 36 <= calldata.size - (32 * cd[(cd[4] + ('cd', 4)[11] + 4)])
            mem[ceil32(return_data.size) + 96] = cd[(cd[4] + ('cd', 4)[11] + 4)]
            mem[ceil32(return_data.size) + 128 len 32 * cd[(cd[4] + ('cd', 4)[11] + 4)]] = call.data[cd[4] + ('cd', 4)[11] + 36 len 32 * cd[(cd[4] + ('cd', 4)[11] + 4)]]
            mem[ceil32(return_data.size) + (32 * cd[(cd[4] + ('cd', 4)[11] + 4)]) + 128] = 0
            idx = 0
            while idx < mem[ceil32(return_data.size) + 96]:
                if idx >= mem[ceil32(return_data.size) + 96]:
                    revert with 0, 50
                if idx >= mem[ceil32(return_data.size) + 96]:
                    revert with 0, 50
                mem[(32 * idx) + ceil32(return_data.size) + 128] = address(mem[(32 * idx) + ceil32(return_data.size) + 140 len 20] xor stor20)
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            sub_cfd73d99.length = mem[ceil32(return_data.size) + 96]
            mem[0] = 18
            if not mem[ceil32(return_data.size) + 96]:
                idx = 0
                while sub_cfd73d99.length > idx:
                    uint256(sub_cfd73d99[idx]) = 0
                    idx = idx + 1
                    continue 
                require ('cd', 4)[12] < calldata.size + -cd[4] - 35
                require cd[(cd[4] + ('cd', 4)[12] + 4)] <= test266151307()
                require cd[4] + ('cd', 4)[12] + 36 <= calldata.size - (32 * cd[(cd[4] + ('cd', 4)[12] + 4)])
                mem[64] = ceil32(return_data.size) + (32 * cd[(cd[4] + ('cd', 4)[11] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[12] + 4)]) + 160
                mem[ceil32(return_data.size) + (32 * cd[(cd[4] + ('cd', 4)[11] + 4)]) + 128] = cd[(cd[4] + ('cd', 4)[12] + 4)]
                mem[ceil32(return_data.size) + (32 * cd[(cd[4] + ('cd', 4)[11] + 4)]) + 160 len 32 * cd[(cd[4] + ('cd', 4)[12] + 4)]] = call.data[cd[4] + ('cd', 4)[12] + 36 len 32 * cd[(cd[4] + ('cd', 4)[12] + 4)]]
                mem[ceil32(return_data.size) + (32 * cd[(cd[4] + ('cd', 4)[11] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[12] + 4)]) + 160] = 0
                idx = 0
                while idx < mem[ceil32(return_data.size) + (32 * cd[(cd[4] + ('cd', 4)[11] + 4)]) + 128]:
                    if idx >= mem[ceil32(return_data.size) + (32 * cd[(cd[4] + ('cd', 4)[11] + 4)]) + 128]:
                        revert with 0, 50
                    if idx >= mem[ceil32(return_data.size) + (32 * cd[(cd[4] + ('cd', 4)[11] + 4)]) + 128]:
                        revert with 0, 50
                    mem[(32 * idx) + ceil32(return_data.size) + (32 * cd[(cd[4] + ('cd', 4)[11] + 4)]) + 160] = address(mem[(32 * idx) + ceil32(return_data.size) + (32 * cd[(cd[4] + ('cd', 4)[11] + 4)]) + 172 len 20] xor stor20)
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                sub_2f3b2e30.length = mem[ceil32(return_data.size) + (32 * cd[(cd[4] + ('cd', 4)[11] + 4)]) + 128]
                if not mem[ceil32(return_data.size) + (32 * cd[(cd[4] + ('cd', 4)[11] + 4)]) + 128]:
                    idx = 0
                    while sub_2f3b2e30.length > idx:
                        uint256(sub_2f3b2e30[idx]) = 0
                        idx = idx + 1
                        continue 
                    require ('cd', 4)[5] == address(('cd', 4)[5])
                    stor12 = address(stor20 xor address(('cd', 4)[5]))
                    require ('cd', 4)[6] == address(('cd', 4)[6])
                    stor13 = address(stor20 xor address(('cd', 4)[6]))
                    require ('cd', 4)[8] == address(('cd', 4)[8])
                    stor15 = address(stor20 xor address(('cd', 4)[8]))
                    require ('cd', 4)[9] == address(('cd', 4)[9])
                    stor16 = address(stor20 xor address(('cd', 4)[9]))
                    require ('cd', 4)[10] == address(('cd', 4)[10])
                    stor17 = address(address(('cd', 4)[10]) xor stor20)
                    sub_6c302b9dAddress = 0
                    if not sub_6c302b9dAddress:
                        if sub_cfd73d99.length < 2:
                            revert with 0, 17
                        if sub_cfd73d99.length - 2 >= sub_cfd73d99.length:
                            revert with 0, 50
                        if sub_cfd73d99.length < 1:
                            revert with 0, 17
                        if sub_cfd73d99.length - 1 >= sub_cfd73d99.length:
                            revert with 0, 50
                        mem[0] = 18
                        mem[mem[64] + 4] = address(sub_cfd73d99[sub_cfd73d99.length])
                        mem[mem[64] + 36] = address(sub_cfd73d99[sub_cfd73d99.length])
                        require ext_code.size(sub_3ef67e9fAddress)
                        staticcall sub_3ef67e9fAddress.getPair(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args address(sub_cfd73d99[sub_cfd73d99.length]), address(sub_cfd73d99[sub_cfd73d99.length])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1521 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1521] == mem[_1521 + 12 len 20]
                        if mem[_1521 + 12 len 20]:
                            sub_6c302b9dAddress = mem[_1521 + 12 len 20]
                else:
                    s = 0
                    idx = ceil32(return_data.size) + (32 * cd[(cd[4] + ('cd', 4)[11] + 4)]) + 160
                    while ceil32(return_data.size) + (32 * cd[(cd[4] + ('cd', 4)[11] + 4)]) + (32 * mem[ceil32(return_data.size) + (32 * cd[(cd[4] + ('cd', 4)[11] + 4)]) + 128]) + 160 > idx:
                        address(sub_2f3b2e30[s]) = mem[idx + 12 len 20]
                        s = s + 1
                        idx = idx + 32
                        continue 
                    idx = Mask(251, 0, (32 * mem[ceil32(return_data.size) + (32 * cd[(cd[4] + ('cd', 4)[11] + 4)]) + 128]) + 31) >> 5
                    while sub_2f3b2e30.length > idx:
                        uint256(sub_2f3b2e30[idx]) = 0
                        idx = idx + 1
                        continue 
                    require ('cd', 4)[5] == address(('cd', 4)[5])
                    stor12 = address(stor20 xor address(('cd', 4)[5]))
                    require ('cd', 4)[6] == address(('cd', 4)[6])
                    stor13 = address(stor20 xor address(('cd', 4)[6]))
                    require ('cd', 4)[8] == address(('cd', 4)[8])
                    stor15 = address(stor20 xor address(('cd', 4)[8]))
                    require ('cd', 4)[9] == address(('cd', 4)[9])
                    stor16 = address(stor20 xor address(('cd', 4)[9]))
                    require ('cd', 4)[10] == address(('cd', 4)[10])
                    stor17 = address(address(('cd', 4)[10]) xor stor20)
                    sub_6c302b9dAddress = 0
                    if not sub_6c302b9dAddress:
                        if sub_cfd73d99.length < 2:
                            revert with 0, 17
                        if sub_cfd73d99.length - 2 >= sub_cfd73d99.length:
                            revert with 0, 50
                        if sub_cfd73d99.length < 1:
                            revert with 0, 17
                        if sub_cfd73d99.length - 1 >= sub_cfd73d99.length:
                            revert with 0, 50
                        mem[0] = 18
                        mem[mem[64] + 4] = address(sub_cfd73d99[sub_cfd73d99.length])
                        mem[mem[64] + 36] = address(sub_cfd73d99[sub_cfd73d99.length])
                        require ext_code.size(sub_3ef67e9fAddress)
                        staticcall sub_3ef67e9fAddress.getPair(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args address(sub_cfd73d99[sub_cfd73d99.length]), address(sub_cfd73d99[sub_cfd73d99.length])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1575 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1575] == mem[_1575 + 12 len 20]
                        if mem[_1575 + 12 len 20]:
                            sub_6c302b9dAddress = mem[_1575 + 12 len 20]
            else:
                s = 0
                idx = ceil32(return_data.size) + 128
                while ceil32(return_data.size) + (32 * mem[ceil32(return_data.size) + 96]) + 128 > idx:
                    address(sub_cfd73d99[s]) = mem[idx + 12 len 20]
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = Mask(251, 0, (32 * mem[ceil32(return_data.size) + 96]) + 31) >> 5
                while sub_cfd73d99.length > idx:
                    uint256(sub_cfd73d99[idx]) = 0
                    idx = idx + 1
                    continue 
                require ('cd', 4)[12] < calldata.size + -cd[4] - 35
                require cd[(cd[4] + ('cd', 4)[12] + 4)] <= test266151307()
                require cd[4] + ('cd', 4)[12] + 36 <= calldata.size - (32 * cd[(cd[4] + ('cd', 4)[12] + 4)])
                mem[64] = ceil32(return_data.size) + (32 * cd[(cd[4] + ('cd', 4)[11] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[12] + 4)]) + 160
                mem[ceil32(return_data.size) + (32 * cd[(cd[4] + ('cd', 4)[11] + 4)]) + 128] = cd[(cd[4] + ('cd', 4)[12] + 4)]
                mem[ceil32(return_data.size) + (32 * cd[(cd[4] + ('cd', 4)[11] + 4)]) + 160 len 32 * cd[(cd[4] + ('cd', 4)[12] + 4)]] = call.data[cd[4] + ('cd', 4)[12] + 36 len 32 * cd[(cd[4] + ('cd', 4)[12] + 4)]]
                mem[ceil32(return_data.size) + (32 * cd[(cd[4] + ('cd', 4)[11] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[12] + 4)]) + 160] = 0
                idx = 0
                while idx < mem[ceil32(return_data.size) + (32 * cd[(cd[4] + ('cd', 4)[11] + 4)]) + 128]:
                    if idx >= mem[ceil32(return_data.size) + (32 * cd[(cd[4] + ('cd', 4)[11] + 4)]) + 128]:
                        revert with 0, 50
                    if idx >= mem[ceil32(return_data.size) + (32 * cd[(cd[4] + ('cd', 4)[11] + 4)]) + 128]:
                        revert with 0, 50
                    mem[(32 * idx) + ceil32(return_data.size) + (32 * cd[(cd[4] + ('cd', 4)[11] + 4)]) + 160] = address(mem[(32 * idx) + ceil32(return_data.size) + (32 * cd[(cd[4] + ('cd', 4)[11] + 4)]) + 172 len 20] xor stor20)
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                sub_2f3b2e30.length = mem[ceil32(return_data.size) + (32 * cd[(cd[4] + ('cd', 4)[11] + 4)]) + 128]
                if not mem[ceil32(return_data.size) + (32 * cd[(cd[4] + ('cd', 4)[11] + 4)]) + 128]:
                    idx = 0
                    while sub_2f3b2e30.length > idx:
                        uint256(sub_2f3b2e30[idx]) = 0
                        idx = idx + 1
                        continue 
                    require ('cd', 4)[5] == address(('cd', 4)[5])
                    stor12 = address(stor20 xor address(('cd', 4)[5]))
                    require ('cd', 4)[6] == address(('cd', 4)[6])
                    stor13 = address(stor20 xor address(('cd', 4)[6]))
                    require ('cd', 4)[8] == address(('cd', 4)[8])
                    stor15 = address(stor20 xor address(('cd', 4)[8]))
                    require ('cd', 4)[9] == address(('cd', 4)[9])
                    stor16 = address(stor20 xor address(('cd', 4)[9]))
                    require ('cd', 4)[10] == address(('cd', 4)[10])
                    stor17 = address(address(('cd', 4)[10]) xor stor20)
                    sub_6c302b9dAddress = 0
                    if not sub_6c302b9dAddress:
                        if sub_cfd73d99.length < 2:
                            revert with 0, 17
                        if sub_cfd73d99.length - 2 >= sub_cfd73d99.length:
                            revert with 0, 50
                        if sub_cfd73d99.length < 1:
                            revert with 0, 17
                        if sub_cfd73d99.length - 1 >= sub_cfd73d99.length:
                            revert with 0, 50
                        mem[0] = 18
                        mem[mem[64] + 4] = address(sub_cfd73d99[sub_cfd73d99.length])
                        mem[mem[64] + 36] = address(sub_cfd73d99[sub_cfd73d99.length])
                        require ext_code.size(sub_3ef67e9fAddress)
                        staticcall sub_3ef67e9fAddress.getPair(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args address(sub_cfd73d99[sub_cfd73d99.length]), address(sub_cfd73d99[sub_cfd73d99.length])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1576 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1576] == mem[_1576 + 12 len 20]
                        if mem[_1576 + 12 len 20]:
                            sub_6c302b9dAddress = mem[_1576 + 12 len 20]
                else:
                    s = 0
                    idx = ceil32(return_data.size) + (32 * cd[(cd[4] + ('cd', 4)[11] + 4)]) + 160
                    while ceil32(return_data.size) + (32 * cd[(cd[4] + ('cd', 4)[11] + 4)]) + (32 * mem[ceil32(return_data.size) + (32 * cd[(cd[4] + ('cd', 4)[11] + 4)]) + 128]) + 160 > idx:
                        address(sub_2f3b2e30[s]) = mem[idx + 12 len 20]
                        s = s + 1
                        idx = idx + 32
                        continue 
                    idx = Mask(251, 0, (32 * mem[ceil32(return_data.size) + (32 * cd[(cd[4] + ('cd', 4)[11] + 4)]) + 128]) + 31) >> 5
                    while sub_2f3b2e30.length > idx:
                        uint256(sub_2f3b2e30[idx]) = 0
                        idx = idx + 1
                        continue 
                    require ('cd', 4)[5] == address(('cd', 4)[5])
                    stor12 = address(stor20 xor address(('cd', 4)[5]))
                    require ('cd', 4)[6] == address(('cd', 4)[6])
                    stor13 = address(stor20 xor address(('cd', 4)[6]))
                    require ('cd', 4)[8] == address(('cd', 4)[8])
                    stor15 = address(stor20 xor address(('cd', 4)[8]))
                    require ('cd', 4)[9] == address(('cd', 4)[9])
                    stor16 = address(stor20 xor address(('cd', 4)[9]))
                    require ('cd', 4)[10] == address(('cd', 4)[10])
                    stor17 = address(address(('cd', 4)[10]) xor stor20)
                    sub_6c302b9dAddress = 0
                    if not sub_6c302b9dAddress:
                        if sub_cfd73d99.length < 2:
                            revert with 0, 17
                        if sub_cfd73d99.length - 2 >= sub_cfd73d99.length:
                            revert with 0, 50
                        if sub_cfd73d99.length < 1:
                            revert with 0, 17
                        if sub_cfd73d99.length - 1 >= sub_cfd73d99.length:
                            revert with 0, 50
                        mem[0] = 18
                        mem[mem[64] + 4] = address(sub_cfd73d99[sub_cfd73d99.length])
                        mem[mem[64] + 36] = address(sub_cfd73d99[sub_cfd73d99.length])
                        require ext_code.size(sub_3ef67e9fAddress)
                        staticcall sub_3ef67e9fAddress.getPair(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args address(sub_cfd73d99[sub_cfd73d99.length]), address(sub_cfd73d99[sub_cfd73d99.length])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1590 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1590] == mem[_1590 + 12 len 20]
                        if mem[_1590 + 12 len 20]:
                            sub_6c302b9dAddress = mem[_1590 + 12 len 20]
    uint8(stor3.field_160) = 1
}



}
