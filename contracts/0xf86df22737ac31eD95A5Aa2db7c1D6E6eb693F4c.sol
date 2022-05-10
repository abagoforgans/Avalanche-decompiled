contract main {




// =====================  Runtime code  =====================


#
#  - sub_ca86156d(?)
#
mapping of uint8 stor0;
uint8 stor1; offset 160
uint32 stor1;
uint128 stor1; offset 160
address sub_16281aa6Address;
uint256 stor1;

function sub_16281aa6(?) {
    return sub_16281aa6Address
}

function sub_1ef1fbf3(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor0[arg1])
}

function sub_ef9f269d(?) {
    return bool(uint8(stor1.field_160))
}

function sub_c69b23a2(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if stor0[address(arg1)]:
        return bool(stor0[address(arg1)])
    return bool(uint8(stor1.field_160))
}

function sub_8b989248(?) {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if sub_16281aa6Address != msg.sender:
        if 0x64db0493e018d48e724b802d28147bd7ce3992be != msg.sender:
            revert with 0, 'owner: caller is not the owner'
    Mask(96, 0, stor1.field_160) = Mask(96, 0, bool(arg1))
}

function withdrawETH() {
    if sub_16281aa6Address != msg.sender:
        if 0x64db0493e018d48e724b802d28147bd7ce3992be != msg.sender:
            revert with 0, 'owner: caller is not the owner'
    call sub_16281aa6Address with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_eba136c7(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 0
        if not stor0[address(cd[((32 * idx) + cd[4] + 36)])]:
            return 0
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    return 1
}

function sub_1d9ed215(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if sub_16281aa6Address != msg.sender:
        if 0x64db0493e018d48e724b802d28147bd7ce3992be != msg.sender:
            revert with 0, 'owner: caller is not the owner'
    idx = 0
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 0
        stor0[address(cd[((32 * idx) + cd[4] + 36)])] = 1
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function withdrawToken(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if sub_16281aa6Address != msg.sender:
        if 0x64db0493e018d48e724b802d28147bd7ce3992be != msg.sender:
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
    mem[ceil32(return_data.size) + 132] = sub_16281aa6Address
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

function _fallback() payable {
    if calldata.size < 4:
        require not calldata.size
    else:
        if unknown_0xc69b23a2(?????) > uint32(call.func_hash) >> 224:
            if unknown_0x16281aa6(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return sub_16281aa6Address
            if unknown_0x1d9ed215(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 32
                require cd[4] <= test266151307()
                require cd[4] + 35 < calldata.size
                require ('cd', 4).length <= test266151307()
                require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
                if sub_16281aa6Address != msg.sender:
                    if 0x64db0493e018d48e724b802d28147bd7ce3992be != msg.sender:
                        revert with 0, 'owner: caller is not the owner'
                idx = 0
                while idx < ('cd', 4).length:
                    require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                    mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
                    mem[32] = 0
                    stor0[address(cd[((32 * idx) + cd[4] + 36)])] = 1
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
            else:
                if unknown_0x1ef1fbf3(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require cd[4] == address(cd[4])
                    return bool(stor0[cd[4]])
                if uint32(call.func_hash) >> 224 != unknown_0x89476069(?????):
                    require unknown_0x8b989248(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require cd[4] == bool(cd[4])
                    if sub_16281aa6Address != msg.sender:
                        if 0x64db0493e018d48e724b802d28147bd7ce3992be != msg.sender:
                            revert with 0, 'owner: caller is not the owner'
                    Mask(96, 0, stor1.field_160) = Mask(96, 0, bool(cd[4]))
                else:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require cd[4] == address(cd[4])
                    if sub_16281aa6Address != msg.sender:
                        if 0x64db0493e018d48e724b802d28147bd7ce3992be != msg.sender:
                            revert with 0, 'owner: caller is not the owner'
                    mem[132] = this.address
                    require ext_code.size(address(cd[4]))
                    staticcall address(cd[4]).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[128] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[ceil32(return_data.size) + 164] = sub_16281aa6Address
                    mem[ceil32(return_data.size) + 196] = ext_call.return_data[0]
                    mem[ceil32(return_data.size) + 128] = 68
                    mem[ceil32(return_data.size) + 164 len 28] = Mask(224, 0, stor1.field_0)
                    mem[ceil32(return_data.size) + 160 len 4] = unknown_0xa9059cbb(?????)
                    mem[ceil32(return_data.size) + 228] = 32
                    mem[ceil32(return_data.size) + 260] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(address(cd[4])):
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 292 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor1.field_0), uint32(stor1.field_0), ext_call.return_data[0], 0
                    mem[ceil32(return_data.size) + 360] = 0
                    call address(cd[4]) with:
                       funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor1.field_0), uint32(stor1.field_0), ext_call.return_data[0], 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor1.field_0), uint32(stor1.field_0), ext_call.return_data[0], 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if mem[96]:
                            require mem[96] >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[ceil32(return_data.size) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[ceil32(return_data.size) + 324] == bool(mem[ceil32(return_data.size) + 324])
                            if not mem[ceil32(return_data.size) + 324]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            if unknown_0xc69b23a2(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 32
                require cd[4] == address(cd[4])
                if stor0[address(cd[4])]:
                    return bool(stor0[address(cd[4])])
                return bool(uint8(stor1.field_160))
            if uint32(call.func_hash) >> 224 != unknown_0xca86156d(?????):
                if unknown_0xe086e5ec(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    if sub_16281aa6Address != msg.sender:
                        if 0x64db0493e018d48e724b802d28147bd7ce3992be != msg.sender:
                            revert with 0, 'owner: caller is not the owner'
                    call sub_16281aa6Address with:
                       value eth.balance(this.address) wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                if uint32(call.func_hash) >> 224 != unknown_0xeba136c7(?????):
                    require unknown_0xef9f269d(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    return bool(uint8(stor1.field_160))
                require not msg.value
                require calldata.size - 4 >= 32
                require cd[4] <= test266151307()
                require cd[4] + 35 < calldata.size
                require ('cd', 4).length <= test266151307()
                require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
                idx = 0
                while idx < ('cd', 4).length:
                    require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                    mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
                    mem[32] = 0
                    if not stor0[address(cd[((32 * idx) + cd[4] + 36)])]:
                        return 0
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                return 1
            require not msg.value
            require calldata.size - 4 >= 128
            require cd[4] == address(cd[4])
            require cd[36] == address(cd[36])
            if sub_16281aa6Address != msg.sender:
                if 0x64db0493e018d48e724b802d28147bd7ce3992be != msg.sender:
                    revert with 0, 'owner: caller is not the owner'
            if cd[68]:
                if not cd[100]:
                    if cd[68] and 1 > -1 / cd[68]:
                        revert with 0, 17
                    mem[164] = address(cd[36])
                    mem[196] = cd[68]
                    mem[128] = 68
                    mem[164 len 28] = address(cd[36]) << 64
                    mem[160 len 4] = unknown_0xa9059cbb(?????)
                    mem[228] = 32
                    mem[260] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(address(cd[4])):
                        revert with 0, 'Address: call to non-contract'
                    mem[292 len 96] = unknown_0xa9059cbb(?????), address(cd[36]) << 64, 0, cd[68], 0
                    mem[360] = 0
                    call address(cd[4]) with:
                       funct Mask(32, 224, unknown_0xa9059cbb(?????), address(cd[36]) << 64, 0, cd[68], 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, unknown_0xa9059cbb(?????), address(cd[36]) << 64, 0, cd[68], 0) << 288)
                else:
                    if bool(bool(cd[100] < 78)) or bool(bool(cd[100] < 32)):
                        if cd[68] and 10^cd[100] > -1 / cd[68]:
                            revert with 0, 17
                        mem[164] = address(cd[36])
                        mem[196] = cd[68] * 10^cd[100]
                        mem[128] = 68
                        mem[164 len 28] = address(cd[36]) << 64
                        mem[160 len 4] = unknown_0xa9059cbb(?????)
                        mem[228] = 32
                        mem[260] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(address(cd[4])):
                            revert with 0, 'Address: call to non-contract'
                        mem[292 len 96] = unknown_0xa9059cbb(?????), address(cd[36]) << 64, 0, cd[68] * 10^cd[100], 0
                        mem[360] = 0
                        call address(cd[4]) with:
                           funct Mask(32, 224, unknown_0xa9059cbb(?????), address(cd[36]) << 64, 0, cd[68] * 10^cd[100], 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, unknown_0xa9059cbb(?????), address(cd[36]) << 64, 0, cd[68] * 10^cd[100], 0) << 288)
                    else:
                        s = 10
                        t = 1
                        idx = cd[100]
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
                        if cd[68] and s * t > -1 / cd[68]:
                            revert with 0, 17
                        mem[164] = address(cd[36])
                        mem[196] = cd[68] * s * t
                        mem[128] = 68
                        mem[164 len 28] = address(cd[36]) << 64
                        mem[160 len 4] = unknown_0xa9059cbb(?????)
                        mem[228] = 32
                        mem[260] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(address(cd[4])):
                            revert with 0, 'Address: call to non-contract'
                        mem[292 len 96] = unknown_0xa9059cbb(?????), address(cd[36]) << 64, 0, cd[68] * s * t, 0
                        mem[360] = 0
                        call address(cd[4]) with:
                           funct Mask(32, 224, unknown_0xa9059cbb(?????), address(cd[36]) << 64, 0, cd[68] * s * t, 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, unknown_0xa9059cbb(?????), address(cd[36]) << 64, 0, cd[68] * s * t, 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if mem[96]:
                            revert with memory
                              from 128
                               len mem[96]
                        revert with 0, 'SafeERC20: low-level call failed'
                    require not mem[96]
                mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[324] == bool(mem[324])
                    if not mem[324]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[132] = this.address
                require ext_code.size(address(cd[4]))
                staticcall address(cd[4]).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[ceil32(return_data.size) + 164] = address(cd[36])
                mem[ceil32(return_data.size) + 196] = ext_call.return_data[0]
                mem[ceil32(return_data.size) + 128] = 68
                mem[ceil32(return_data.size) + 164 len 28] = address(cd[36]) << 64
                mem[ceil32(return_data.size) + 160 len 4] = unknown_0xa9059cbb(?????)
                mem[ceil32(return_data.size) + 228] = 32
                mem[ceil32(return_data.size) + 260] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(address(cd[4])):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 292 len 96] = unknown_0xa9059cbb(?????), address(cd[36]) << 64, 0, ext_call.return_data[0], 0
                mem[ceil32(return_data.size) + 360] = 0
                call address(cd[4]) with:
                   funct Mask(32, 224, unknown_0xa9059cbb(?????), address(cd[36]) << 64, 0, ext_call.return_data[0], 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, unknown_0xa9059cbb(?????), address(cd[36]) << 64, 0, ext_call.return_data[0], 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if mem[96]:
                            revert with memory
                              from 128
                               len mem[96]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if mem[96]:
                        require mem[96] >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[ceil32(return_data.size) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[ceil32(return_data.size) + 324] == bool(mem[ceil32(return_data.size) + 324])
                        if not mem[ceil32(return_data.size) + 324]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
}



}
