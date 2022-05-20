contract main {




// =====================  Runtime code  =====================


#
#  - sub_fc2dbc73(?)
#
address stor1;
uint256 sub_1a0ea7ee;
uint256 sub_618accd7;
uint256 sub_8ec8e1b0;
array of address sub_e50c5767;
address sub_add1d3bcAddress;
address sub_7cfe44e3Address;
address sub_b8c9a322Address;
address sub_48d4f11cAddress;

function sub_1a0ea7ee(?) payable {
    return sub_1a0ea7ee
}

function sub_48d4f11c(?) payable {
    return sub_48d4f11cAddress
}

function sub_618accd7(?) payable {
    return sub_618accd7
}

function sub_7cfe44e3(?) payable {
    return sub_7cfe44e3Address
}

function sub_8ec8e1b0(?) payable {
    return sub_8ec8e1b0
}

function sub_add1d3bc(?) payable {
    return sub_add1d3bcAddress
}

function sub_b8c9a322(?) payable {
    return sub_b8c9a322Address
}

function sub_e50c5767(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_e50c5767.length
    return address(sub_e50c5767[arg1])
}

function _fallback() payable {
    revert
}

function swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg3 == arg3
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    sub_1a0ea7ee = mem[224]
    sub_618accd7 = mem[352]
    sub_8ec8e1b0 = mem[384]
    sub_e50c5767.length = mem[256]
    if not mem[256]:
        idx = 0
        while sub_e50c5767.length > idx:
            uint256(sub_e50c5767[idx]) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 288
        while (32 * mem[256]) + 288 > idx:
            address(sub_e50c5767[s]) = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * mem[256]) + 31) >> 5
        while sub_e50c5767.length > idx:
            uint256(sub_e50c5767[idx]) = 0
            idx = idx + 1
            continue 
    sub_add1d3bcAddress = mem[140 len 20]
    sub_7cfe44e3Address = mem[172 len 20]
    sub_b8c9a322Address = mem[204 len 20]
    sub_48d4f11cAddress = mem[428 len 20]
}

function sub_0c2102ce(?) payable {
    require calldata.size - 4 >= 224
    require cd[4] == address(cd[4])
    require cd[36] == address(cd[36])
    require cd[68] == address(cd[68])
    require cd[132] <= test266151307()
    require cd[132] + 35 < calldata.size
    if ('cd', 132).length > test266151307():
        revert with 'NH{q', 65
    if ceil32(32 * ('cd', 132).length) + 97 < 96 or ceil32(32 * ('cd', 132).length) + 97 > test266151307():
        revert with 'NH{q', 65
    mem[96] = ('cd', 132).length
    require cd[132] + (32 * ('cd', 132).length) + 36 <= calldata.size
    idx = cd[132] + 36
    s = 128
    while idx < cd[132] + (32 * ('cd', 132).length) + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    require cd[164] <= test266151307()
    require cd[164] + 35 < calldata.size
    if ('cd', 164).length > test266151307():
        revert with 'NH{q', 65
    if ceil32(32 * ('cd', 164).length) + 98 < 97 or ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 98 > test266151307():
        revert with 'NH{q', 65
    mem[ceil32(32 * ('cd', 132).length) + 97] = ('cd', 164).length
    require cd[164] + (32 * ('cd', 164).length) + 36 <= calldata.size
    idx = cd[164] + 36
    s = ceil32(32 * ('cd', 132).length) + 129
    while idx < cd[164] + (32 * ('cd', 164).length) + 36:
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    require cd[196] == address(cd[196])
    staticcall address(cd[36]).0x313ce567 with:
            gas gas_remaining wei
    mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 98] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if not ext_call.return_data[31 len 1]:
        if cd[4] == cd[36] == 1:
            mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 98] = (10 * 10^6 / mem[ceil32(32 * ('cd', 132).length) + 129]) + 1
            staticcall mem[128].token0() with:
                    gas 15000 wei
            mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 162] = 0x22c0d9f14a579d1d17baf9fddaebffc4a661f18e5dbcdf9b78b0e655ef26681
            if cd[4] != ext_call.return_data[0]:
                mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 166] = 0
                call cd[196].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas 375 * 3600 wei
                    args 0, 1000, this.address, 128, 320, cd[4], cd[36], cd[68], 1000, ('cd', 132).length, mem[128], mem[160], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 98], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 130], 0
            else:
                mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 166] = 1000
                call cd[196].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas 375 * 3600 wei
                    args 1000, 0, this.address, 128, 320, cd[4], cd[36], cd[68], 1000, ('cd', 132).length, mem[128], mem[160], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 98], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 130], 0
        else:
            if cd[4] == cd[36]:
                mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 162] = 0x22c0d9f14a579d1d17baf9fddaebffc4a661f18e5dbcdf9b78b0e655ef26681
                mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 166] = 0
                call cd[196].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas 375 * 3600 wei
                    args 0, 0, this.address, 128, 320, cd[4], cd[36], cd[68], 1000, ('cd', 132).length, mem[128], mem[160], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 98], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 130], 0
            else:
                if ('cd', 132).length == 1:
                    staticcall mem[128].getReserves() with:
                            gas 15000 wei
                    mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 162 len 64] = ext_call.return_data[0 len 64]
                    if cd[4] <= cd[36]:
                        mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 98] = (10 * 10^6 * ext_call.return_data[0] / (-1000 * mem[ceil32(32 * ('cd', 132).length) + 129]) + (ext_call.return_data[32] * mem[ceil32(32 * ('cd', 132).length) + 129])) + 1
                    else:
                        mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 98] = (10 * 10^6 * ext_call.return_data[32] / (-1000 * mem[ceil32(32 * ('cd', 132).length) + 129]) + (ext_call.return_data[0] * mem[ceil32(32 * ('cd', 132).length) + 129])) + 1
                if ('cd', 132).length <= 1:
                    mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 162] = 0x22c0d9f14a579d1d17baf9fddaebffc4a661f18e5dbcdf9b78b0e655ef26681
                    if cd[4] <= cd[36]:
                        mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 166] = 0
                        call cd[196].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas 375 * 3600 wei
                            args 0, 1000, this.address, 128, 320, cd[4], cd[36], cd[68], 1000, ('cd', 132).length, mem[128], mem[160], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 98], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 130], 0
                    else:
                        mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 166] = 1000
                        call cd[196].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas 375 * 3600 wei
                            args 1000, 0, this.address, 128, 320, cd[4], cd[36], cd[68], 1000, ('cd', 132).length, mem[128], mem[160], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 98], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 130], 0
                else:
                    staticcall mem[160].getReserves() with:
                            gas 15000 wei
                    mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 162 len 64] = ext_call.return_data[0 len 64]
                    staticcall mem[160].token0() with:
                            gas 15000 wei
                    mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 162] = ext_call.return_data[0]
                    if ext_call.return_data[0] <= cd[36]:
                        mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 98] = (10 * 10^6 * ext_call.return_data[0] / (-1000 * mem[ceil32(32 * ('cd', 132).length) + 161]) + (ext_call.return_data[32] * mem[ceil32(32 * ('cd', 132).length) + 161])) + 1
                    else:
                        staticcall mem[160].token1() with:
                                gas 15000 wei
                        mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 162] = ext_call.return_data[0]
                        mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 98] = (10 * 10^6 * ext_call.return_data[32] / (-1000 * mem[ceil32(32 * ('cd', 132).length) + 161]) + (ext_call.return_data[0] * mem[ceil32(32 * ('cd', 132).length) + 161])) + 1
                    staticcall mem[128].getReserves() with:
                            gas 15000 wei
                    mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 162 len 64] = ext_call.return_data[0 len 64]
                    if cd[4] <= ext_call.return_data[0]:
                        mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 130] = (10000 * ext_call.return_data[0] * mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 98] / (ext_call.return_data[32] * mem[ceil32(32 * ('cd', 132).length) + 161]) - (mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 98] * mem[ceil32(32 * ('cd', 132).length) + 161])) + 1
                    else:
                        mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 130] = (10000 * ext_call.return_data[32] * mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 98] / (ext_call.return_data[0] * mem[ceil32(32 * ('cd', 132).length) + 161]) - (mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 98] * mem[ceil32(32 * ('cd', 132).length) + 161])) + 1
                    mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 162] = 0x22c0d9f14a579d1d17baf9fddaebffc4a661f18e5dbcdf9b78b0e655ef26681
                    if cd[4] <= cd[36]:
                        mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 166] = 0
                        call cd[196].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas 375 * 3600 wei
                            args 0, 1000, this.address, 128, 320, cd[4], cd[36], cd[68], 1000, ('cd', 132).length, mem[128], mem[160], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 98], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 130], ext_call.return_data[0]
                    else:
                        mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 166] = 1000
                        call cd[196].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas 375 * 3600 wei
                            args 1000, 0, this.address, 128, 320, cd[4], cd[36], cd[68], 1000, ('cd', 132).length, mem[128], mem[160], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 98], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 130], ext_call.return_data[0]
    else:
        if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
            if 10^ext_call.return_data[31 len 1] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                revert with 'NH{q', 17
            if cd[4] == cd[36] == 1:
                mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 98] = (10 * 10^6 * 10^ext_call.return_data[31 len 1] / mem[ceil32(32 * ('cd', 132).length) + 129]) + 1
                staticcall mem[128].token0() with:
                        gas 15000 wei
                mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 162] = 0x22c0d9f14a579d1d17baf9fddaebffc4a661f18e5dbcdf9b78b0e655ef26681
                if cd[4] != ext_call.return_data[0]:
                    mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 166] = 0
                    call cd[196].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas 375 * 3600 wei
                        args 0, 1000 * 10^uint8(ext_call.return_data[0]), this.address, 128, 320, cd[4], cd[36], cd[68], 1000 * 10^uint8(ext_call.return_data[0]), ('cd', 132).length, mem[128], mem[160], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 98], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 130], 0
                else:
                    mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 166] = 1000 * 10^uint8(ext_call.return_data[0])
                    call cd[196].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas 375 * 3600 wei
                        args 1000 * 10^uint8(ext_call.return_data[0]), 0, this.address, 128, 320, cd[4], cd[36], cd[68], 1000 * 10^uint8(ext_call.return_data[0]), ('cd', 132).length, mem[128], mem[160], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 98], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 130], 0
            else:
                if cd[4] == cd[36]:
                    mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 162] = 0x22c0d9f14a579d1d17baf9fddaebffc4a661f18e5dbcdf9b78b0e655ef26681
                    mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 166] = 0
                    call cd[196].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas 375 * 3600 wei
                        args 0, 0, this.address, 128, 320, cd[4], cd[36], cd[68], 1000 * 10^ext_call.return_data[31 len 1], ('cd', 132).length, mem[128], mem[160], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 98], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 130], 0
                else:
                    if ('cd', 132).length != 1:
                        if ('cd', 132).length <= 1:
                            mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 162] = 0x22c0d9f14a579d1d17baf9fddaebffc4a661f18e5dbcdf9b78b0e655ef26681
                            if cd[4] <= cd[36]:
                                mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 166] = 0
                                call cd[196].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas 375 * 3600 wei
                                    args 0, 1000 * 10^ext_call.return_data[31 len 1], this.address, 128, 320, cd[4], cd[36], cd[68], 1000 * 10^ext_call.return_data[31 len 1], ('cd', 132).length, mem[128], mem[160], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 98], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 130], 0
                            else:
                                mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 166] = 1000 * 10^ext_call.return_data[31 len 1]
                                call cd[196].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas 375 * 3600 wei
                                    args 1000 * 10^ext_call.return_data[31 len 1], 0, this.address, 128, 320, cd[4], cd[36], cd[68], 1000 * 10^ext_call.return_data[31 len 1], ('cd', 132).length, mem[128], mem[160], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 98], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 130], 0
                        else:
                            staticcall mem[160].getReserves() with:
                                    gas 15000 wei
                            mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 162 len 64] = ext_call.return_data[0 len 64]
                            staticcall mem[160].token0() with:
                                    gas 15000 wei
                            mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 162] = ext_call.return_data[0]
                            if ext_call.return_data[0] <= cd[36]:
                                mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 98] = (10 * 10^6 * ext_call.return_data[0] * 10^ext_call.return_data[31 len 1] / (ext_call.return_data[32] * mem[ceil32(32 * ('cd', 132).length) + 161]) - (1000 * 10^ext_call.return_data[31 len 1] * mem[ceil32(32 * ('cd', 132).length) + 161])) + 1
                            else:
                                staticcall mem[160].token1() with:
                                        gas 15000 wei
                                mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 162] = ext_call.return_data[0]
                                mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 98] = (10 * 10^6 * ext_call.return_data[32] * 10^ext_call.return_data[31 len 1] / (ext_call.return_data[0] * mem[ceil32(32 * ('cd', 132).length) + 161]) - (1000 * 10^ext_call.return_data[31 len 1] * mem[ceil32(32 * ('cd', 132).length) + 161])) + 1
                            staticcall mem[128].getReserves() with:
                                    gas 15000 wei
                            mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 162 len 64] = ext_call.return_data[0 len 64]
                            if cd[4] <= ext_call.return_data[0]:
                                mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 130] = (10000 * ext_call.return_data[0] * mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 98] / (ext_call.return_data[32] * mem[ceil32(32 * ('cd', 132).length) + 161]) - (mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 98] * mem[ceil32(32 * ('cd', 132).length) + 161])) + 1
                            else:
                                mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 130] = (10000 * ext_call.return_data[32] * mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 98] / (ext_call.return_data[0] * mem[ceil32(32 * ('cd', 132).length) + 161]) - (mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 98] * mem[ceil32(32 * ('cd', 132).length) + 161])) + 1
                            mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 162] = 0x22c0d9f14a579d1d17baf9fddaebffc4a661f18e5dbcdf9b78b0e655ef26681
                            if cd[4] <= cd[36]:
                                mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 166] = 0
                                call cd[196].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas 375 * 3600 wei
                                    args 0, 1000 * 10^uint8(ext_call.return_data[0]), this.address, 128, 320, cd[4], cd[36], cd[68], 1000 * 10^uint8(ext_call.return_data[0]), ('cd', 132).length, mem[128], mem[160], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 98], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 130], ext_call.return_data[0]
                            else:
                                mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 166] = 1000 * 10^uint8(ext_call.return_data[0])
                                call cd[196].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas 375 * 3600 wei
                                    args 1000 * 10^uint8(ext_call.return_data[0]), 0, this.address, 128, 320, cd[4], cd[36], cd[68], 1000 * 10^uint8(ext_call.return_data[0]), ('cd', 132).length, mem[128], mem[160], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 98], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 130], ext_call.return_data[0]
                    else:
                        staticcall mem[128].getReserves() with:
                                gas 15000 wei
                        mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 162 len 64] = ext_call.return_data[0 len 64]
                        if cd[4] <= cd[36]:
                            mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 98] = (10 * 10^6 * 10^ext_call.return_data[31 len 1] * ext_call.return_data[0] / (ext_call.return_data[32] * mem[ceil32(32 * ('cd', 132).length) + 129]) - (1000 * 10^ext_call.return_data[31 len 1] * mem[ceil32(32 * ('cd', 132).length) + 129])) + 1
                        else:
                            mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 98] = (10 * 10^6 * 10^ext_call.return_data[31 len 1] * ext_call.return_data[32] / (ext_call.return_data[0] * mem[ceil32(32 * ('cd', 132).length) + 129]) - (1000 * 10^ext_call.return_data[31 len 1] * mem[ceil32(32 * ('cd', 132).length) + 129])) + 1
                        if ('cd', 132).length <= 1:
                            mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 162] = 0x22c0d9f14a579d1d17baf9fddaebffc4a661f18e5dbcdf9b78b0e655ef26681
                            if cd[4] <= cd[36]:
                                mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 166] = 0
                                call cd[196].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas 375 * 3600 wei
                                    args 0, 1000 * 10^uint8(ext_call.return_data[0]), this.address, 128, 320, cd[4], cd[36], cd[68], 1000 * 10^uint8(ext_call.return_data[0]), ('cd', 132).length, mem[128], mem[160], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 98], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 130], 0
                            else:
                                mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 166] = 1000 * 10^uint8(ext_call.return_data[0])
                                call cd[196].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas 375 * 3600 wei
                                    args 1000 * 10^uint8(ext_call.return_data[0]), 0, this.address, 128, 320, cd[4], cd[36], cd[68], 1000 * 10^uint8(ext_call.return_data[0]), ('cd', 132).length, mem[128], mem[160], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 98], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 130], 0
                        else:
                            staticcall mem[160].getReserves() with:
                                    gas 15000 wei
                            mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 162 len 64] = ext_call.return_data[0 len 64]
                            staticcall mem[160].token0() with:
                                    gas 15000 wei
                            mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 162] = ext_call.return_data[0]
                            if ext_call.return_data[0] <= cd[36]:
                                mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 98] = (10 * 10^6 * ext_call.return_data[0] * 10^uint8(ext_call.return_data[0]) / (ext_call.return_data[32] * mem[ceil32(32 * ('cd', 132).length) + 161]) - (1000 * 10^uint8(ext_call.return_data[0]) * mem[ceil32(32 * ('cd', 132).length) + 161])) + 1
                            else:
                                staticcall mem[160].token1() with:
                                        gas 15000 wei
                                mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 162] = ext_call.return_data[0]
                                mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 98] = (10 * 10^6 * ext_call.return_data[32] * 10^uint8(ext_call.return_data[0]) / (ext_call.return_data[0] * mem[ceil32(32 * ('cd', 132).length) + 161]) - (1000 * 10^uint8(ext_call.return_data[0]) * mem[ceil32(32 * ('cd', 132).length) + 161])) + 1
                            staticcall mem[128].getReserves() with:
                                    gas 15000 wei
                            mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 162 len 64] = ext_call.return_data[0 len 64]
                            if cd[4] <= ext_call.return_data[0]:
                                mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 130] = (10000 * ext_call.return_data[0] * mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 98] / (ext_call.return_data[32] * mem[ceil32(32 * ('cd', 132).length) + 161]) - (mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 98] * mem[ceil32(32 * ('cd', 132).length) + 161])) + 1
                            else:
                                mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 130] = (10000 * ext_call.return_data[32] * mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 98] / (ext_call.return_data[0] * mem[ceil32(32 * ('cd', 132).length) + 161]) - (mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 98] * mem[ceil32(32 * ('cd', 132).length) + 161])) + 1
                            mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 162] = 0x22c0d9f14a579d1d17baf9fddaebffc4a661f18e5dbcdf9b78b0e655ef26681
                            if cd[4] <= cd[36]:
                                mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 166] = 0
                                call cd[196].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas 375 * 3600 wei
                                    args 0, 1000 * 10^uint8(ext_call.return_data[0]), this.address, 128, 320, cd[4], cd[36], cd[68], 1000 * 10^uint8(ext_call.return_data[0]), ('cd', 132).length, mem[128], mem[160], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 98], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 130], ext_call.return_data[0]
                            else:
                                mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 166] = 1000 * 10^uint8(ext_call.return_data[0])
                                call cd[196].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas 375 * 3600 wei
                                    args 1000 * 10^uint8(ext_call.return_data[0]), 0, this.address, 128, 320, cd[4], cd[36], cd[68], 1000 * 10^uint8(ext_call.return_data[0]), ('cd', 132).length, mem[128], mem[160], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 98], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 130], ext_call.return_data[0]
        else:
            s = 10
            t = 1
            idx = ext_call.return_data[31 len 1]
            while idx > 1:
                if s > -1 / s:
                    revert with 'NH{q', 17
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
                revert with 'NH{q', 17
            if s * t > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                revert with 'NH{q', 17
            if cd[4] == cd[36] == 1:
                mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 98] = (10 * 10^6 * s * t / mem[ceil32(32 * ('cd', 132).length) + 129]) + 1
                staticcall mem[128].token0() with:
                        gas 15000 wei
                mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 162] = 0x22c0d9f14a579d1d17baf9fddaebffc4a661f18e5dbcdf9b78b0e655ef26681
                if cd[4] != ext_call.return_data[0]:
                    mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 166] = 0
                    call cd[196].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas 375 * 3600 wei
                        args 0, 1000 * s * t, this.address, 128, 320, cd[4], cd[36], cd[68], 1000 * s * t, ('cd', 132).length, mem[128], mem[160], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 98], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 130], 0
                else:
                    mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 166] = 1000 * s * t
                    call cd[196].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas 375 * 3600 wei
                        args 1000 * s * t, 0, this.address, 128, 320, cd[4], cd[36], cd[68], 1000 * s * t, ('cd', 132).length, mem[128], mem[160], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 98], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 130], 0
            else:
                if cd[4] == cd[36]:
                    mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 162] = 0x22c0d9f14a579d1d17baf9fddaebffc4a661f18e5dbcdf9b78b0e655ef26681
                    mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 166] = 0
                    call cd[196].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas 375 * 3600 wei
                        args 0, 0, this.address, 128, 320, cd[4], cd[36], cd[68], 1000 * s * t, ('cd', 132).length, mem[128], mem[160], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 98], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 130], 0
                else:
                    if ('cd', 132).length == 1:
                        staticcall mem[128].getReserves() with:
                                gas 15000 wei
                        mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 162 len 64] = ext_call.return_data[0 len 64]
                        if cd[4] <= cd[36]:
                            mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 98] = (10 * 10^6 * s * t * ext_call.return_data[0] / (ext_call.return_data[32] * mem[ceil32(32 * ('cd', 132).length) + 129]) - (1000 * s * t * mem[ceil32(32 * ('cd', 132).length) + 129])) + 1
                        else:
                            mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 98] = (10 * 10^6 * s * t * ext_call.return_data[32] / (ext_call.return_data[0] * mem[ceil32(32 * ('cd', 132).length) + 129]) - (1000 * s * t * mem[ceil32(32 * ('cd', 132).length) + 129])) + 1
                    if ('cd', 132).length <= 1:
                        mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 162] = 0x22c0d9f14a579d1d17baf9fddaebffc4a661f18e5dbcdf9b78b0e655ef26681
                        if cd[4] <= cd[36]:
                            mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 166] = 0
                            call cd[196].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas 375 * 3600 wei
                                args 0, 1000 * s * t, this.address, 128, 320, cd[4], cd[36], cd[68], 1000 * s * t, ('cd', 132).length, mem[128], mem[160], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 98], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 130], 0
                        else:
                            mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 166] = 1000 * s * t
                            call cd[196].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas 375 * 3600 wei
                                args 1000 * s * t, 0, this.address, 128, 320, cd[4], cd[36], cd[68], 1000 * s * t, ('cd', 132).length, mem[128], mem[160], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 98], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 130], 0
                    else:
                        staticcall mem[160].getReserves() with:
                                gas 15000 wei
                        mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 162 len 64] = ext_call.return_data[0 len 64]
                        staticcall mem[160].token0() with:
                                gas 15000 wei
                        mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 162] = ext_call.return_data[0]
                        if ext_call.return_data[0] <= cd[36]:
                            mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 98] = (10 * 10^6 * ext_call.return_data[0] * s * t / (ext_call.return_data[32] * mem[ceil32(32 * ('cd', 132).length) + 161]) - (1000 * s * t * mem[ceil32(32 * ('cd', 132).length) + 161])) + 1
                        else:
                            staticcall mem[160].token1() with:
                                    gas 15000 wei
                            mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 162] = ext_call.return_data[0]
                            mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 98] = (10 * 10^6 * ext_call.return_data[32] * s * t / (ext_call.return_data[0] * mem[ceil32(32 * ('cd', 132).length) + 161]) - (1000 * s * t * mem[ceil32(32 * ('cd', 132).length) + 161])) + 1
                        staticcall mem[128].getReserves() with:
                                gas 15000 wei
                        mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 162 len 64] = ext_call.return_data[0 len 64]
                        if cd[4] <= ext_call.return_data[0]:
                            mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 130] = (10000 * ext_call.return_data[0] * mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 98] / (ext_call.return_data[32] * mem[ceil32(32 * ('cd', 132).length) + 161]) - (mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 98] * mem[ceil32(32 * ('cd', 132).length) + 161])) + 1
                        else:
                            mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 130] = (10000 * ext_call.return_data[32] * mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 98] / (ext_call.return_data[0] * mem[ceil32(32 * ('cd', 132).length) + 161]) - (mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 98] * mem[ceil32(32 * ('cd', 132).length) + 161])) + 1
                        mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 162] = 0x22c0d9f14a579d1d17baf9fddaebffc4a661f18e5dbcdf9b78b0e655ef26681
                        if cd[4] <= cd[36]:
                            mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 166] = 0
                            call cd[196].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas 375 * 3600 wei
                                args 0, 1000 * s * t, this.address, 128, 320, cd[4], cd[36], cd[68], 1000 * s * t, ('cd', 132).length, mem[128], mem[160], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 98], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 130], ext_call.return_data[0]
                        else:
                            mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 166] = 1000 * s * t
                            call cd[196].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas 375 * 3600 wei
                                args 1000 * s * t, 0, this.address, 128, 320, cd[4], cd[36], cd[68], 1000 * s * t, ('cd', 132).length, mem[128], mem[160], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 98], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 130], ext_call.return_data[0]
    if not ext_call.success:
        revert with 'sf'
}

function sub_12a11f33(?) payable {
    require calldata.size - 4 >= 192
    require cd[4] == address(cd[4])
    require cd[36] == address(cd[36])
    require cd[68] == address(cd[68])
    require cd[132] <= test266151307()
    require cd[132] + 35 < calldata.size
    if ('cd', 132).length > test266151307():
        revert with 'NH{q', 65
    if ceil32(32 * ('cd', 132).length) + 97 < 96 or ceil32(32 * ('cd', 132).length) + 97 > test266151307():
        revert with 'NH{q', 65
    mem[96] = ('cd', 132).length
    require cd[132] + (32 * ('cd', 132).length) + 36 <= calldata.size
    idx = cd[132] + 36
    s = 128
    while idx < cd[132] + (32 * ('cd', 132).length) + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    require cd[164] <= test266151307()
    require cd[164] + 35 < calldata.size
    if ('cd', 164).length > test266151307():
        revert with 'NH{q', 65
    if ceil32(32 * ('cd', 164).length) + 98 < 97 or ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 98 > test266151307():
        revert with 'NH{q', 65
    mem[ceil32(32 * ('cd', 132).length) + 97] = ('cd', 164).length
    require cd[164] + (32 * ('cd', 164).length) + 36 <= calldata.size
    idx = cd[164] + 36
    s = ceil32(32 * ('cd', 132).length) + 129
    while idx < cd[164] + (32 * ('cd', 164).length) + 36:
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    if cd[4] == cd[36] == 1:
        mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 98] = (483469210410000 / mem[ceil32(32 * ('cd', 132).length) + 129]) + 1
        if -mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 98] >= cd[100]:
            staticcall mem[128].token0() with:
                    gas 35000 wei
            mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 162] = 0x22c0d9f14a579d1d17baf9fddaebffc4a661f18e5dbcdf9b78b0e655ef26681
            if cd[4] != ext_call.return_data[0]:
                mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 166] = 0
                if ('cd', 132).length <= 1:
                    call mem[128].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas 375 * 3600 wei
                        args 0, 48346921041, this.address, 128, 320, cd[4], cd[36], cd[68], 48346921041, ('cd', 132).length, mem[128], mem[160], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 98], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 130], 0
                else:
                    call mem[160].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas 375 * 3600 wei
                        args 0, 48346921041, this.address, 128, 320, cd[4], cd[36], cd[68], 48346921041, ('cd', 132).length, mem[128], mem[160], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 98], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 130], 0
            else:
                mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 166] = 48346921041
                if ('cd', 132).length <= 1:
                    call mem[128].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas 375 * 3600 wei
                        args 48346921041, 0, this.address, 128, 320, cd[4], cd[36], cd[68], 48346921041, ('cd', 132).length, mem[128], mem[160], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 98], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 130], 0
                else:
                    call mem[160].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas 375 * 3600 wei
                        args 48346921041, 0, this.address, 128, 320, cd[4], cd[36], cd[68], 48346921041, ('cd', 132).length, mem[128], mem[160], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 98], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 130], 0
            if not ext_call.success:
                revert with 'sf'
    else:
        if cd[4] == cd[36]:
            mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 162] = 0x22c0d9f14a579d1d17baf9fddaebffc4a661f18e5dbcdf9b78b0e655ef26681
            mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 166] = 0
            if ('cd', 132).length <= 1:
                call mem[128].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas 375 * 3600 wei
                    args 0, 0, this.address, 128, 320, cd[4], cd[36], cd[68], 48346921041, ('cd', 132).length, mem[128], mem[160], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 98], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 130], 0
            else:
                call mem[160].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas 375 * 3600 wei
                    args 0, 0, this.address, 128, 320, cd[4], cd[36], cd[68], 48346921041, ('cd', 132).length, mem[128], mem[160], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 98], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 130], 0
            if not ext_call.success:
                revert with 'sf'
        else:
            if ('cd', 132).length != 1:
                if ('cd', 132).length <= 1:
                    mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 162] = 0x22c0d9f14a579d1d17baf9fddaebffc4a661f18e5dbcdf9b78b0e655ef26681
                    mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 166] = 0
                    if ('cd', 132).length <= 1:
                        call mem[128].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas 375 * 3600 wei
                            args 0, 0, this.address, 128, 320, cd[4], cd[36], cd[68], 48346921041, ('cd', 132).length, mem[128], mem[160], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 98], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 130], 0
                    else:
                        call mem[160].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas 375 * 3600 wei
                            args 0, 0, this.address, 128, 320, cd[4], cd[36], cd[68], 48346921041, ('cd', 132).length, mem[128], mem[160], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 98], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 130], 0
                    if not ext_call.success:
                        revert with 'sf'
                else:
                    staticcall mem[160].getReserves() with:
                            gas 35000 wei
                    mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 162 len 64] = ext_call.return_data[0 len 64]
                    staticcall mem[160].token0() with:
                            gas 35000 wei
                    mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 162] = ext_call.return_data[0]
                    if ext_call.return_data[0] != cd[36]:
                        mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 98] = (483469210410000 * ext_call.return_data[0] / (-48346921041 * mem[ceil32(32 * ('cd', 132).length) + 161]) + (ext_call.return_data[32] * mem[ceil32(32 * ('cd', 132).length) + 161])) + 1
                        staticcall mem[128].getReserves() with:
                                gas 35000 wei
                        mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 162 len 64] = ext_call.return_data[0 len 64]
                        if cd[4] <= ext_call.return_data[0]:
                            _1684 = mem[ceil32(32 * ('cd', 132).length) + 161]
                            mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 130] = (10000 * ext_call.return_data[0] * mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 98] / (ext_call.return_data[32] * mem[ceil32(32 * ('cd', 132).length) + 161]) - (mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 98] * mem[ceil32(32 * ('cd', 132).length) + 161])) + 1
                            if cd[100] <= -(10000 * ext_call.return_data[0] * mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 98] / (ext_call.return_data[32] * _1684) - (mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 98] * _1684)) - 1:
                                mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 162] = 0x22c0d9f14a579d1d17baf9fddaebffc4a661f18e5dbcdf9b78b0e655ef26681
                                if ext_call.return_data[0] <= cd[36]:
                                    mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 166] = 0
                                    if ('cd', 132).length <= 1:
                                        call mem[128].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas 375 * 3600 wei
                                            args 0, 48346921041, this.address, 128, 320, cd[4], cd[36], cd[68], 48346921041, ('cd', 132).length, mem[128], mem[160], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 98], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 130], ext_call.return_data[0]
                                    else:
                                        call mem[160].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas 375 * 3600 wei
                                            args 0, 48346921041, this.address, 128, 320, cd[4], cd[36], cd[68], 48346921041, ('cd', 132).length, mem[128], mem[160], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 98], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 130], ext_call.return_data[0]
                                else:
                                    mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 166] = 48346921041
                                    if ('cd', 132).length <= 1:
                                        call mem[128].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas 375 * 3600 wei
                                            args 48346921041, 0, this.address, 128, 320, cd[4], cd[36], cd[68], 48346921041, ('cd', 132).length, mem[128], mem[160], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 98], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 130], ext_call.return_data[0]
                                    else:
                                        call mem[160].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas 375 * 3600 wei
                                            args 48346921041, 0, this.address, 128, 320, cd[4], cd[36], cd[68], 48346921041, ('cd', 132).length, mem[128], mem[160], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 98], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 130], ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with 'sf'
                        else:
                            _1707 = mem[ceil32(32 * ('cd', 132).length) + 161]
                            mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 130] = (10000 * ext_call.return_data[32] * mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 98] / (ext_call.return_data[0] * mem[ceil32(32 * ('cd', 132).length) + 161]) - (mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 98] * mem[ceil32(32 * ('cd', 132).length) + 161])) + 1
                            if cd[100] <= -(10000 * ext_call.return_data[32] * mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 98] / (ext_call.return_data[0] * _1707) - (mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 98] * _1707)) - 1:
                                mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 162] = 0x22c0d9f14a579d1d17baf9fddaebffc4a661f18e5dbcdf9b78b0e655ef26681
                                if ext_call.return_data[0] <= cd[36]:
                                    mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 166] = 0
                                    if ('cd', 132).length <= 1:
                                        call mem[128].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas 375 * 3600 wei
                                            args 0, 48346921041, this.address, 128, 320, cd[4], cd[36], cd[68], 48346921041, ('cd', 132).length, mem[128], mem[160], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 98], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 130], ext_call.return_data[0]
                                    else:
                                        call mem[160].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas 375 * 3600 wei
                                            args 0, 48346921041, this.address, 128, 320, cd[4], cd[36], cd[68], 48346921041, ('cd', 132).length, mem[128], mem[160], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 98], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 130], ext_call.return_data[0]
                                else:
                                    mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 166] = 48346921041
                                    if ('cd', 132).length <= 1:
                                        call mem[128].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas 375 * 3600 wei
                                            args 48346921041, 0, this.address, 128, 320, cd[4], cd[36], cd[68], 48346921041, ('cd', 132).length, mem[128], mem[160], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 98], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 130], ext_call.return_data[0]
                                    else:
                                        call mem[160].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas 375 * 3600 wei
                                            args 48346921041, 0, this.address, 128, 320, cd[4], cd[36], cd[68], 48346921041, ('cd', 132).length, mem[128], mem[160], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 98], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 130], ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with 'sf'
                    else:
                        staticcall mem[160].token1() with:
                                gas 35000 wei
                        mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 162] = ext_call.return_data[0]
                        mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 98] = (483469210410000 * ext_call.return_data[32] / (-48346921041 * mem[ceil32(32 * ('cd', 132).length) + 161]) + (ext_call.return_data[0] * mem[ceil32(32 * ('cd', 132).length) + 161])) + 1
                        staticcall mem[128].getReserves() with:
                                gas 35000 wei
                        mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 162 len 64] = ext_call.return_data[0 len 64]
                        if cd[4] <= ext_call.return_data[0]:
                            _1743 = mem[ceil32(32 * ('cd', 132).length) + 161]
                            mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 130] = (10000 * ext_call.return_data[0] * mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 98] / (ext_call.return_data[32] * mem[ceil32(32 * ('cd', 132).length) + 161]) - (mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 98] * mem[ceil32(32 * ('cd', 132).length) + 161])) + 1
                            if cd[100] <= -(10000 * ext_call.return_data[0] * mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 98] / (ext_call.return_data[32] * _1743) - (mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 98] * _1743)) - 1:
                                mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 162] = 0x22c0d9f14a579d1d17baf9fddaebffc4a661f18e5dbcdf9b78b0e655ef26681
                                if ext_call.return_data[0] <= cd[36]:
                                    mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 166] = 0
                                    if ('cd', 132).length <= 1:
                                        call mem[128].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas 375 * 3600 wei
                                            args 0, 48346921041, this.address, 128, 320, cd[4], cd[36], cd[68], 48346921041, ('cd', 132).length, mem[128], mem[160], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 98], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 130], ext_call.return_data[0]
                                    else:
                                        call mem[160].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas 375 * 3600 wei
                                            args 0, 48346921041, this.address, 128, 320, cd[4], cd[36], cd[68], 48346921041, ('cd', 132).length, mem[128], mem[160], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 98], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 130], ext_call.return_data[0]
                                else:
                                    mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 166] = 48346921041
                                    if ('cd', 132).length <= 1:
                                        call mem[128].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas 375 * 3600 wei
                                            args 48346921041, 0, this.address, 128, 320, cd[4], cd[36], cd[68], 48346921041, ('cd', 132).length, mem[128], mem[160], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 98], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 130], ext_call.return_data[0]
                                    else:
                                        call mem[160].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas 375 * 3600 wei
                                            args 48346921041, 0, this.address, 128, 320, cd[4], cd[36], cd[68], 48346921041, ('cd', 132).length, mem[128], mem[160], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 98], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 130], ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with 'sf'
                        else:
                            _1775 = mem[ceil32(32 * ('cd', 132).length) + 161]
                            mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 130] = (10000 * ext_call.return_data[32] * mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 98] / (ext_call.return_data[0] * mem[ceil32(32 * ('cd', 132).length) + 161]) - (mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 98] * mem[ceil32(32 * ('cd', 132).length) + 161])) + 1
                            if cd[100] <= -(10000 * ext_call.return_data[32] * mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 98] / (ext_call.return_data[0] * _1775) - (mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 98] * _1775)) - 1:
                                mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 162] = 0x22c0d9f14a579d1d17baf9fddaebffc4a661f18e5dbcdf9b78b0e655ef26681
                                if ext_call.return_data[0] <= cd[36]:
                                    mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 166] = 0
                                    if ('cd', 132).length <= 1:
                                        call mem[128].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas 375 * 3600 wei
                                            args 0, 48346921041, this.address, 128, 320, cd[4], cd[36], cd[68], 48346921041, ('cd', 132).length, mem[128], mem[160], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 98], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 130], ext_call.return_data[0]
                                    else:
                                        call mem[160].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas 375 * 3600 wei
                                            args 0, 48346921041, this.address, 128, 320, cd[4], cd[36], cd[68], 48346921041, ('cd', 132).length, mem[128], mem[160], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 98], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 130], ext_call.return_data[0]
                                else:
                                    mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 166] = 48346921041
                                    if ('cd', 132).length <= 1:
                                        call mem[128].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas 375 * 3600 wei
                                            args 48346921041, 0, this.address, 128, 320, cd[4], cd[36], cd[68], 48346921041, ('cd', 132).length, mem[128], mem[160], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 98], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 130], ext_call.return_data[0]
                                    else:
                                        call mem[160].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas 375 * 3600 wei
                                            args 48346921041, 0, this.address, 128, 320, cd[4], cd[36], cd[68], 48346921041, ('cd', 132).length, mem[128], mem[160], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 98], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 130], ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with 'sf'
            else:
                staticcall mem[128].getReserves() with:
                        gas 35000 wei
                mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 162 len 64] = ext_call.return_data[0 len 64]
                if cd[4] <= cd[36]:
                    mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 98] = (483469210410000 * ext_call.return_data[0] / (-48346921041 * mem[ceil32(32 * ('cd', 132).length) + 129]) + (ext_call.return_data[32] * mem[ceil32(32 * ('cd', 132).length) + 129])) + 1
                    if -mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 98] >= cd[100]:
                        if cd[4] <= cd[36]:
                            if ('cd', 132).length <= 1:
                                mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 162] = 0x22c0d9f14a579d1d17baf9fddaebffc4a661f18e5dbcdf9b78b0e655ef26681
                                mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 166] = 0
                                if ('cd', 132).length <= 1:
                                    call mem[128].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas 375 * 3600 wei
                                        args 0, 48346921041, this.address, 128, 320, cd[4], cd[36], cd[68], 48346921041, ('cd', 132).length, mem[128], mem[160], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 98], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 130], 0
                                else:
                                    call mem[160].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas 375 * 3600 wei
                                        args 0, 48346921041, this.address, 128, 320, cd[4], cd[36], cd[68], 48346921041, ('cd', 132).length, mem[128], mem[160], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 98], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 130], 0
                                if not ext_call.success:
                                    revert with 'sf'
                            else:
                                staticcall mem[160].getReserves() with:
                                        gas 35000 wei
                                mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 162 len 64] = ext_call.return_data[0 len 64]
                                staticcall mem[160].token0() with:
                                        gas 35000 wei
                                mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 162] = ext_call.return_data[0]
                                if ext_call.return_data[0] != cd[36]:
                                    mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 98] = (483469210410000 * ext_call.return_data[0] / (-48346921041 * mem[ceil32(32 * ('cd', 132).length) + 161]) + (ext_call.return_data[32] * mem[ceil32(32 * ('cd', 132).length) + 161])) + 1
                                    staticcall mem[128].getReserves() with:
                                            gas 35000 wei
                                    mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 162 len 64] = ext_call.return_data[0 len 64]
                                    if cd[4] <= ext_call.return_data[0]:
                                        _1802 = mem[ceil32(32 * ('cd', 132).length) + 161]
                                        mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 130] = (10000 * ext_call.return_data[0] * mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 98] / (ext_call.return_data[32] * mem[ceil32(32 * ('cd', 132).length) + 161]) - (mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 98] * mem[ceil32(32 * ('cd', 132).length) + 161])) + 1
                                        if cd[100] <= -(10000 * ext_call.return_data[0] * mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 98] / (ext_call.return_data[32] * _1802) - (mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 98] * _1802)) - 1:
                                            mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 162] = 0x22c0d9f14a579d1d17baf9fddaebffc4a661f18e5dbcdf9b78b0e655ef26681
                                            if ext_call.return_data[0] <= cd[36]:
                                                mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 166] = 0
                                                if ('cd', 132).length <= 1:
                                                    call mem[128].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                         gas 375 * 3600 wei
                                                        args 0, 48346921041, this.address, 128, 320, cd[4], cd[36], cd[68], 48346921041, ('cd', 132).length, mem[128], mem[160], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 98], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 130], ext_call.return_data[0]
                                                else:
                                                    call mem[160].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                         gas 375 * 3600 wei
                                                        args 0, 48346921041, this.address, 128, 320, cd[4], cd[36], cd[68], 48346921041, ('cd', 132).length, mem[128], mem[160], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 98], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 130], ext_call.return_data[0]
                                            else:
                                                mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 166] = 48346921041
                                                if ('cd', 132).length <= 1:
                                                    call mem[128].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                         gas 375 * 3600 wei
                                                        args 48346921041, 0, this.address, 128, 320, cd[4], cd[36], cd[68], 48346921041, ('cd', 132).length, mem[128], mem[160], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 98], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 130], ext_call.return_data[0]
                                                else:
                                                    call mem[160].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                         gas 375 * 3600 wei
                                                        args 48346921041, 0, this.address, 128, 320, cd[4], cd[36], cd[68], 48346921041, ('cd', 132).length, mem[128], mem[160], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 98], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 130], ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with 'sf'
                                    else:
                                        _1826 = mem[ceil32(32 * ('cd', 132).length) + 161]
                                        mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 130] = (10000 * ext_call.return_data[32] * mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 98] / (ext_call.return_data[0] * mem[ceil32(32 * ('cd', 132).length) + 161]) - (mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 98] * mem[ceil32(32 * ('cd', 132).length) + 161])) + 1
                                        if cd[100] <= -(10000 * ext_call.return_data[32] * mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 98] / (ext_call.return_data[0] * _1826) - (mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 98] * _1826)) - 1:
                                            mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 162] = 0x22c0d9f14a579d1d17baf9fddaebffc4a661f18e5dbcdf9b78b0e655ef26681
                                            if ext_call.return_data[0] <= cd[36]:
                                                mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 166] = 0
                                                if ('cd', 132).length <= 1:
                                                    call mem[128].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                         gas 375 * 3600 wei
                                                        args 0, 48346921041, this.address, 128, 320, cd[4], cd[36], cd[68], 48346921041, ('cd', 132).length, mem[128], mem[160], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 98], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 130], ext_call.return_data[0]
                                                else:
                                                    call mem[160].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                         gas 375 * 3600 wei
                                                        args 0, 48346921041, this.address, 128, 320, cd[4], cd[36], cd[68], 48346921041, ('cd', 132).length, mem[128], mem[160], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 98], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 130], ext_call.return_data[0]
                                            else:
                                                mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 166] = 48346921041
                                                if ('cd', 132).length <= 1:
                                                    call mem[128].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                         gas 375 * 3600 wei
                                                        args 48346921041, 0, this.address, 128, 320, cd[4], cd[36], cd[68], 48346921041, ('cd', 132).length, mem[128], mem[160], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 98], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 130], ext_call.return_data[0]
                                                else:
                                                    call mem[160].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                         gas 375 * 3600 wei
                                                        args 48346921041, 0, this.address, 128, 320, cd[4], cd[36], cd[68], 48346921041, ('cd', 132).length, mem[128], mem[160], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 98], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 130], ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with 'sf'
                                else:
                                    staticcall mem[160].token1() with:
                                            gas 35000 wei
                                    mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 162] = ext_call.return_data[0]
                                    mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 98] = (483469210410000 * ext_call.return_data[32] / (-48346921041 * mem[ceil32(32 * ('cd', 132).length) + 161]) + (ext_call.return_data[0] * mem[ceil32(32 * ('cd', 132).length) + 161])) + 1
                                    staticcall mem[128].getReserves() with:
                                            gas 35000 wei
                                    mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 162 len 64] = ext_call.return_data[0 len 64]
                                    if cd[4] <= ext_call.return_data[0]:
                                        _1898 = mem[ceil32(32 * ('cd', 132).length) + 161]
                                        mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 130] = (10000 * ext_call.return_data[0] * mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 98] / (ext_call.return_data[32] * mem[ceil32(32 * ('cd', 132).length) + 161]) - (mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 98] * mem[ceil32(32 * ('cd', 132).length) + 161])) + 1
                                        if cd[100] <= -(10000 * ext_call.return_data[0] * mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 98] / (ext_call.return_data[32] * _1898) - (mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 98] * _1898)) - 1:
                                            mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 162] = 0x22c0d9f14a579d1d17baf9fddaebffc4a661f18e5dbcdf9b78b0e655ef26681
                                            if ext_call.return_data[0] <= cd[36]:
                                                mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 166] = 0
                                                if ('cd', 132).length <= 1:
                                                    call mem[128].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                         gas 375 * 3600 wei
                                                        args 0, 48346921041, this.address, 128, 320, cd[4], cd[36], cd[68], 48346921041, ('cd', 132).length, mem[128], mem[160], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 98], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 130], ext_call.return_data[0]
                                                else:
                                                    call mem[160].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                         gas 375 * 3600 wei
                                                        args 0, 48346921041, this.address, 128, 320, cd[4], cd[36], cd[68], 48346921041, ('cd', 132).length, mem[128], mem[160], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 98], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 130], ext_call.return_data[0]
                                            else:
                                                mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 166] = 48346921041
                                                if ('cd', 132).length <= 1:
                                                    call mem[128].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                         gas 375 * 3600 wei
                                                        args 48346921041, 0, this.address, 128, 320, cd[4], cd[36], cd[68], 48346921041, ('cd', 132).length, mem[128], mem[160], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 98], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 130], ext_call.return_data[0]
                                                else:
                                                    call mem[160].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                         gas 375 * 3600 wei
                                                        args 48346921041, 0, this.address, 128, 320, cd[4], cd[36], cd[68], 48346921041, ('cd', 132).length, mem[128], mem[160], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 98], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 130], ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with 'sf'
                                    else:
                                        _1929 = mem[ceil32(32 * ('cd', 132).length) + 161]
                                        mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 130] = (10000 * ext_call.return_data[32] * mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 98] / (ext_call.return_data[0] * mem[ceil32(32 * ('cd', 132).length) + 161]) - (mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 98] * mem[ceil32(32 * ('cd', 132).length) + 161])) + 1
                                        if cd[100] <= -(10000 * ext_call.return_data[32] * mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 98] / (ext_call.return_data[0] * _1929) - (mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 98] * _1929)) - 1:
                                            mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 162] = 0x22c0d9f14a579d1d17baf9fddaebffc4a661f18e5dbcdf9b78b0e655ef26681
                                            if ext_call.return_data[0] <= cd[36]:
                                                mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 166] = 0
                                                if ('cd', 132).length <= 1:
                                                    call mem[128].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                         gas 375 * 3600 wei
                                                        args 0, 48346921041, this.address, 128, 320, cd[4], cd[36], cd[68], 48346921041, ('cd', 132).length, mem[128], mem[160], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 98], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 130], ext_call.return_data[0]
                                                else:
                                                    call mem[160].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                         gas 375 * 3600 wei
                                                        args 0, 48346921041, this.address, 128, 320, cd[4], cd[36], cd[68], 48346921041, ('cd', 132).length, mem[128], mem[160], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 98], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 130], ext_call.return_data[0]
                                            else:
                                                mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 166] = 48346921041
                                                if ('cd', 132).length <= 1:
                                                    call mem[128].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                         gas 375 * 3600 wei
                                                        args 48346921041, 0, this.address, 128, 320, cd[4], cd[36], cd[68], 48346921041, ('cd', 132).length, mem[128], mem[160], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 98], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 130], ext_call.return_data[0]
                                                else:
                                                    call mem[160].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                         gas 375 * 3600 wei
                                                        args 48346921041, 0, this.address, 128, 320, cd[4], cd[36], cd[68], 48346921041, ('cd', 132).length, mem[128], mem[160], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 98], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 130], ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with 'sf'
                        else:
                            if ('cd', 132).length <= 1:
                                mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 162] = 0x22c0d9f14a579d1d17baf9fddaebffc4a661f18e5dbcdf9b78b0e655ef26681
                                mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 166] = 48346921041
                                if ('cd', 132).length <= 1:
                                    call mem[128].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas 375 * 3600 wei
                                        args 48346921041, 0, this.address, 128, 320, cd[4], cd[36], cd[68], 48346921041, ('cd', 132).length, mem[128], mem[160], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 98], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 130], 0
                                else:
                                    call mem[160].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas 375 * 3600 wei
                                        args 48346921041, 0, this.address, 128, 320, cd[4], cd[36], cd[68], 48346921041, ('cd', 132).length, mem[128], mem[160], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 98], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 130], 0
                                if not ext_call.success:
                                    revert with 'sf'
                            else:
                                staticcall mem[160].getReserves() with:
                                        gas 35000 wei
                                mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 162 len 64] = ext_call.return_data[0 len 64]
                                staticcall mem[160].token0() with:
                                        gas 35000 wei
                                mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 162] = ext_call.return_data[0]
                                if ext_call.return_data[0] != cd[36]:
                                    mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 98] = (483469210410000 * ext_call.return_data[0] / (-48346921041 * mem[ceil32(32 * ('cd', 132).length) + 161]) + (ext_call.return_data[32] * mem[ceil32(32 * ('cd', 132).length) + 161])) + 1
                                    staticcall mem[128].getReserves() with:
                                            gas 35000 wei
                                    mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 162 len 64] = ext_call.return_data[0 len 64]
                                    if cd[4] <= ext_call.return_data[0]:
                                        _1831 = mem[ceil32(32 * ('cd', 132).length) + 161]
                                        mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 130] = (10000 * ext_call.return_data[0] * mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 98] / (ext_call.return_data[32] * mem[ceil32(32 * ('cd', 132).length) + 161]) - (mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 98] * mem[ceil32(32 * ('cd', 132).length) + 161])) + 1
                                        if cd[100] <= -(10000 * ext_call.return_data[0] * mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 98] / (ext_call.return_data[32] * _1831) - (mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 98] * _1831)) - 1:
                                            mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 162] = 0x22c0d9f14a579d1d17baf9fddaebffc4a661f18e5dbcdf9b78b0e655ef26681
                                            if ext_call.return_data[0] <= cd[36]:
                                                mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 166] = 0
                                                if ('cd', 132).length <= 1:
                                                    call mem[128].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                         gas 375 * 3600 wei
                                                        args 0, 48346921041, this.address, 128, 320, cd[4], cd[36], cd[68], 48346921041, ('cd', 132).length, mem[128], mem[160], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 98], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 130], ext_call.return_data[0]
                                                else:
                                                    call mem[160].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                         gas 375 * 3600 wei
                                                        args 0, 48346921041, this.address, 128, 320, cd[4], cd[36], cd[68], 48346921041, ('cd', 132).length, mem[128], mem[160], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 98], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 130], ext_call.return_data[0]
                                            else:
                                                mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 166] = 48346921041
                                                if ('cd', 132).length <= 1:
                                                    call mem[128].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                         gas 375 * 3600 wei
                                                        args 48346921041, 0, this.address, 128, 320, cd[4], cd[36], cd[68], 48346921041, ('cd', 132).length, mem[128], mem[160], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 98], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 130], ext_call.return_data[0]
                                                else:
                                                    call mem[160].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                         gas 375 * 3600 wei
                                                        args 48346921041, 0, this.address, 128, 320, cd[4], cd[36], cd[68], 48346921041, ('cd', 132).length, mem[128], mem[160], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 98], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 130], ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with 'sf'
                                    else:
                                        _1862 = mem[ceil32(32 * ('cd', 132).length) + 161]
                                        mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 130] = (10000 * ext_call.return_data[32] * mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 98] / (ext_call.return_data[0] * mem[ceil32(32 * ('cd', 132).length) + 161]) - (mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 98] * mem[ceil32(32 * ('cd', 132).length) + 161])) + 1
                                        if cd[100] <= -(10000 * ext_call.return_data[32] * mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 98] / (ext_call.return_data[0] * _1862) - (mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 98] * _1862)) - 1:
                                            mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 162] = 0x22c0d9f14a579d1d17baf9fddaebffc4a661f18e5dbcdf9b78b0e655ef26681
                                            if ext_call.return_data[0] <= cd[36]:
                                                mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 166] = 0
                                                if ('cd', 132).length <= 1:
                                                    call mem[128].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                         gas 375 * 3600 wei
                                                        args 0, 48346921041, this.address, 128, 320, cd[4], cd[36], cd[68], 48346921041, ('cd', 132).length, mem[128], mem[160], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 98], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 130], ext_call.return_data[0]
                                                else:
                                                    call mem[160].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                         gas 375 * 3600 wei
                                                        args 0, 48346921041, this.address, 128, 320, cd[4], cd[36], cd[68], 48346921041, ('cd', 132).length, mem[128], mem[160], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 98], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 130], ext_call.return_data[0]
                                            else:
                                                mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 166] = 48346921041
                                                if ('cd', 132).length <= 1:
                                                    call mem[128].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                         gas 375 * 3600 wei
                                                        args 48346921041, 0, this.address, 128, 320, cd[4], cd[36], cd[68], 48346921041, ('cd', 132).length, mem[128], mem[160], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 98], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 130], ext_call.return_data[0]
                                                else:
                                                    call mem[160].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                         gas 375 * 3600 wei
                                                        args 48346921041, 0, this.address, 128, 320, cd[4], cd[36], cd[68], 48346921041, ('cd', 132).length, mem[128], mem[160], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 98], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 130], ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with 'sf'
                                else:
                                    staticcall mem[160].token1() with:
                                            gas 35000 wei
                                    mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 162] = ext_call.return_data[0]
                                    mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 98] = (483469210410000 * ext_call.return_data[32] / (-48346921041 * mem[ceil32(32 * ('cd', 132).length) + 161]) + (ext_call.return_data[0] * mem[ceil32(32 * ('cd', 132).length) + 161])) + 1
                                    staticcall mem[128].getReserves() with:
                                            gas 35000 wei
                                    mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 162 len 64] = ext_call.return_data[0 len 64]
                                    if cd[4] <= ext_call.return_data[0]:
                                        _1939 = mem[ceil32(32 * ('cd', 132).length) + 161]
                                        mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 130] = (10000 * ext_call.return_data[0] * mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 98] / (ext_call.return_data[32] * mem[ceil32(32 * ('cd', 132).length) + 161]) - (mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 98] * mem[ceil32(32 * ('cd', 132).length) + 161])) + 1
                                        if cd[100] <= -(10000 * ext_call.return_data[0] * mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 98] / (ext_call.return_data[32] * _1939) - (mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 98] * _1939)) - 1:
                                            mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 162] = 0x22c0d9f14a579d1d17baf9fddaebffc4a661f18e5dbcdf9b78b0e655ef26681
                                            if ext_call.return_data[0] <= cd[36]:
                                                mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 166] = 0
                                                if ('cd', 132).length <= 1:
                                                    call mem[128].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                         gas 375 * 3600 wei
                                                        args 0, 48346921041, this.address, 128, 320, cd[4], cd[36], cd[68], 48346921041, ('cd', 132).length, mem[128], mem[160], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 98], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 130], ext_call.return_data[0]
                                                else:
                                                    call mem[160].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                         gas 375 * 3600 wei
                                                        args 0, 48346921041, this.address, 128, 320, cd[4], cd[36], cd[68], 48346921041, ('cd', 132).length, mem[128], mem[160], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 98], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 130], ext_call.return_data[0]
                                            else:
                                                mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 166] = 48346921041
                                                if ('cd', 132).length <= 1:
                                                    call mem[128].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                         gas 375 * 3600 wei
                                                        args 48346921041, 0, this.address, 128, 320, cd[4], cd[36], cd[68], 48346921041, ('cd', 132).length, mem[128], mem[160], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 98], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 130], ext_call.return_data[0]
                                                else:
                                                    call mem[160].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                         gas 375 * 3600 wei
                                                        args 48346921041, 0, this.address, 128, 320, cd[4], cd[36], cd[68], 48346921041, ('cd', 132).length, mem[128], mem[160], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 98], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 130], ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with 'sf'
                                    else:
                                        _1986 = mem[ceil32(32 * ('cd', 132).length) + 161]
                                        mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 130] = (10000 * ext_call.return_data[32] * mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 98] / (ext_call.return_data[0] * mem[ceil32(32 * ('cd', 132).length) + 161]) - (mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 98] * mem[ceil32(32 * ('cd', 132).length) + 161])) + 1
                                        if cd[100] <= -(10000 * ext_call.return_data[32] * mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 98] / (ext_call.return_data[0] * _1986) - (mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 98] * _1986)) - 1:
                                            mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 162] = 0x22c0d9f14a579d1d17baf9fddaebffc4a661f18e5dbcdf9b78b0e655ef26681
                                            if ext_call.return_data[0] <= cd[36]:
                                                mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 166] = 0
                                                if ('cd', 132).length <= 1:
                                                    call mem[128].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                         gas 375 * 3600 wei
                                                        args 0, 48346921041, this.address, 128, 320, cd[4], cd[36], cd[68], 48346921041, ('cd', 132).length, mem[128], mem[160], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 98], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 130], ext_call.return_data[0]
                                                else:
                                                    call mem[160].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                         gas 375 * 3600 wei
                                                        args 0, 48346921041, this.address, 128, 320, cd[4], cd[36], cd[68], 48346921041, ('cd', 132).length, mem[128], mem[160], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 98], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 130], ext_call.return_data[0]
                                            else:
                                                mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 166] = 48346921041
                                                if ('cd', 132).length <= 1:
                                                    call mem[128].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                         gas 375 * 3600 wei
                                                        args 48346921041, 0, this.address, 128, 320, cd[4], cd[36], cd[68], 48346921041, ('cd', 132).length, mem[128], mem[160], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 98], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 130], ext_call.return_data[0]
                                                else:
                                                    call mem[160].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                         gas 375 * 3600 wei
                                                        args 48346921041, 0, this.address, 128, 320, cd[4], cd[36], cd[68], 48346921041, ('cd', 132).length, mem[128], mem[160], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 98], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 130], ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with 'sf'
                else:
                    mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 98] = (483469210410000 * ext_call.return_data[32] / (-48346921041 * mem[ceil32(32 * ('cd', 132).length) + 129]) + (ext_call.return_data[0] * mem[ceil32(32 * ('cd', 132).length) + 129])) + 1
                    if -mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 98] >= cd[100]:
                        if cd[4] <= cd[36]:
                            if ('cd', 132).length <= 1:
                                mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 162] = 0x22c0d9f14a579d1d17baf9fddaebffc4a661f18e5dbcdf9b78b0e655ef26681
                                mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 166] = 0
                                if ('cd', 132).length <= 1:
                                    call mem[128].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas 375 * 3600 wei
                                        args 0, 48346921041, this.address, 128, 320, cd[4], cd[36], cd[68], 48346921041, ('cd', 132).length, mem[128], mem[160], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 98], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 130], 0
                                else:
                                    call mem[160].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas 375 * 3600 wei
                                        args 0, 48346921041, this.address, 128, 320, cd[4], cd[36], cd[68], 48346921041, ('cd', 132).length, mem[128], mem[160], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 98], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 130], 0
                                if not ext_call.success:
                                    revert with 'sf'
                            else:
                                staticcall mem[160].getReserves() with:
                                        gas 35000 wei
                                mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 162 len 64] = ext_call.return_data[0 len 64]
                                staticcall mem[160].token0() with:
                                        gas 35000 wei
                                mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 162] = ext_call.return_data[0]
                                if ext_call.return_data[0] != cd[36]:
                                    mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 98] = (483469210410000 * ext_call.return_data[0] / (-48346921041 * mem[ceil32(32 * ('cd', 132).length) + 161]) + (ext_call.return_data[32] * mem[ceil32(32 * ('cd', 132).length) + 161])) + 1
                                    staticcall mem[128].getReserves() with:
                                            gas 35000 wei
                                    mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 162 len 64] = ext_call.return_data[0 len 64]
                                    if cd[4] <= ext_call.return_data[0]:
                                        _1835 = mem[ceil32(32 * ('cd', 132).length) + 161]
                                        mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 130] = (10000 * ext_call.return_data[0] * mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 98] / (ext_call.return_data[32] * mem[ceil32(32 * ('cd', 132).length) + 161]) - (mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 98] * mem[ceil32(32 * ('cd', 132).length) + 161])) + 1
                                        if cd[100] <= -(10000 * ext_call.return_data[0] * mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 98] / (ext_call.return_data[32] * _1835) - (mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 98] * _1835)) - 1:
                                            mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 162] = 0x22c0d9f14a579d1d17baf9fddaebffc4a661f18e5dbcdf9b78b0e655ef26681
                                            if ext_call.return_data[0] <= cd[36]:
                                                mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 166] = 0
                                                if ('cd', 132).length <= 1:
                                                    call mem[128].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                         gas 375 * 3600 wei
                                                        args 0, 48346921041, this.address, 128, 320, cd[4], cd[36], cd[68], 48346921041, ('cd', 132).length, mem[128], mem[160], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 98], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 130], ext_call.return_data[0]
                                                else:
                                                    call mem[160].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                         gas 375 * 3600 wei
                                                        args 0, 48346921041, this.address, 128, 320, cd[4], cd[36], cd[68], 48346921041, ('cd', 132).length, mem[128], mem[160], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 98], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 130], ext_call.return_data[0]
                                            else:
                                                mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 166] = 48346921041
                                                if ('cd', 132).length <= 1:
                                                    call mem[128].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                         gas 375 * 3600 wei
                                                        args 48346921041, 0, this.address, 128, 320, cd[4], cd[36], cd[68], 48346921041, ('cd', 132).length, mem[128], mem[160], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 98], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 130], ext_call.return_data[0]
                                                else:
                                                    call mem[160].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                         gas 375 * 3600 wei
                                                        args 48346921041, 0, this.address, 128, 320, cd[4], cd[36], cd[68], 48346921041, ('cd', 132).length, mem[128], mem[160], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 98], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 130], ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with 'sf'
                                    else:
                                        _1867 = mem[ceil32(32 * ('cd', 132).length) + 161]
                                        mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 130] = (10000 * ext_call.return_data[32] * mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 98] / (ext_call.return_data[0] * mem[ceil32(32 * ('cd', 132).length) + 161]) - (mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 98] * mem[ceil32(32 * ('cd', 132).length) + 161])) + 1
                                        if cd[100] <= -(10000 * ext_call.return_data[32] * mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 98] / (ext_call.return_data[0] * _1867) - (mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 98] * _1867)) - 1:
                                            mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 162] = 0x22c0d9f14a579d1d17baf9fddaebffc4a661f18e5dbcdf9b78b0e655ef26681
                                            if ext_call.return_data[0] <= cd[36]:
                                                mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 166] = 0
                                                if ('cd', 132).length <= 1:
                                                    call mem[128].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                         gas 375 * 3600 wei
                                                        args 0, 48346921041, this.address, 128, 320, cd[4], cd[36], cd[68], 48346921041, ('cd', 132).length, mem[128], mem[160], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 98], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 130], ext_call.return_data[0]
                                                else:
                                                    call mem[160].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                         gas 375 * 3600 wei
                                                        args 0, 48346921041, this.address, 128, 320, cd[4], cd[36], cd[68], 48346921041, ('cd', 132).length, mem[128], mem[160], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 98], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 130], ext_call.return_data[0]
                                            else:
                                                mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 166] = 48346921041
                                                if ('cd', 132).length <= 1:
                                                    call mem[128].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                         gas 375 * 3600 wei
                                                        args 48346921041, 0, this.address, 128, 320, cd[4], cd[36], cd[68], 48346921041, ('cd', 132).length, mem[128], mem[160], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 98], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 130], ext_call.return_data[0]
                                                else:
                                                    call mem[160].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                         gas 375 * 3600 wei
                                                        args 48346921041, 0, this.address, 128, 320, cd[4], cd[36], cd[68], 48346921041, ('cd', 132).length, mem[128], mem[160], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 98], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 130], ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with 'sf'
                                else:
                                    staticcall mem[160].token1() with:
                                            gas 35000 wei
                                    mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 162] = ext_call.return_data[0]
                                    mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 98] = (483469210410000 * ext_call.return_data[32] / (-48346921041 * mem[ceil32(32 * ('cd', 132).length) + 161]) + (ext_call.return_data[0] * mem[ceil32(32 * ('cd', 132).length) + 161])) + 1
                                    staticcall mem[128].getReserves() with:
                                            gas 35000 wei
                                    mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 162 len 64] = ext_call.return_data[0 len 64]
                                    if cd[4] <= ext_call.return_data[0]:
                                        _1949 = mem[ceil32(32 * ('cd', 132).length) + 161]
                                        mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 130] = (10000 * ext_call.return_data[0] * mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 98] / (ext_call.return_data[32] * mem[ceil32(32 * ('cd', 132).length) + 161]) - (mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 98] * mem[ceil32(32 * ('cd', 132).length) + 161])) + 1
                                        if cd[100] <= -(10000 * ext_call.return_data[0] * mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 98] / (ext_call.return_data[32] * _1949) - (mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 98] * _1949)) - 1:
                                            mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 162] = 0x22c0d9f14a579d1d17baf9fddaebffc4a661f18e5dbcdf9b78b0e655ef26681
                                            if ext_call.return_data[0] <= cd[36]:
                                                mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 166] = 0
                                                if ('cd', 132).length <= 1:
                                                    call mem[128].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                         gas 375 * 3600 wei
                                                        args 0, 48346921041, this.address, 128, 320, cd[4], cd[36], cd[68], 48346921041, ('cd', 132).length, mem[128], mem[160], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 98], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 130], ext_call.return_data[0]
                                                else:
                                                    call mem[160].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                         gas 375 * 3600 wei
                                                        args 0, 48346921041, this.address, 128, 320, cd[4], cd[36], cd[68], 48346921041, ('cd', 132).length, mem[128], mem[160], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 98], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 130], ext_call.return_data[0]
                                            else:
                                                mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 166] = 48346921041
                                                if ('cd', 132).length <= 1:
                                                    call mem[128].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                         gas 375 * 3600 wei
                                                        args 48346921041, 0, this.address, 128, 320, cd[4], cd[36], cd[68], 48346921041, ('cd', 132).length, mem[128], mem[160], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 98], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 130], ext_call.return_data[0]
                                                else:
                                                    call mem[160].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                         gas 375 * 3600 wei
                                                        args 48346921041, 0, this.address, 128, 320, cd[4], cd[36], cd[68], 48346921041, ('cd', 132).length, mem[128], mem[160], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 98], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 130], ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with 'sf'
                                    else:
                                        _2005 = mem[ceil32(32 * ('cd', 132).length) + 161]
                                        mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 130] = (10000 * ext_call.return_data[32] * mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 98] / (ext_call.return_data[0] * mem[ceil32(32 * ('cd', 132).length) + 161]) - (mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 98] * mem[ceil32(32 * ('cd', 132).length) + 161])) + 1
                                        if cd[100] <= -(10000 * ext_call.return_data[32] * mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 98] / (ext_call.return_data[0] * _2005) - (mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 98] * _2005)) - 1:
                                            mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 162] = 0x22c0d9f14a579d1d17baf9fddaebffc4a661f18e5dbcdf9b78b0e655ef26681
                                            if ext_call.return_data[0] <= cd[36]:
                                                mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 166] = 0
                                                if ('cd', 132).length <= 1:
                                                    call mem[128].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                         gas 375 * 3600 wei
                                                        args 0, 48346921041, this.address, 128, 320, cd[4], cd[36], cd[68], 48346921041, ('cd', 132).length, mem[128], mem[160], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 98], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 130], ext_call.return_data[0]
                                                else:
                                                    call mem[160].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                         gas 375 * 3600 wei
                                                        args 0, 48346921041, this.address, 128, 320, cd[4], cd[36], cd[68], 48346921041, ('cd', 132).length, mem[128], mem[160], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 98], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 130], ext_call.return_data[0]
                                            else:
                                                mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 166] = 48346921041
                                                if ('cd', 132).length <= 1:
                                                    call mem[128].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                         gas 375 * 3600 wei
                                                        args 48346921041, 0, this.address, 128, 320, cd[4], cd[36], cd[68], 48346921041, ('cd', 132).length, mem[128], mem[160], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 98], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 130], ext_call.return_data[0]
                                                else:
                                                    call mem[160].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                         gas 375 * 3600 wei
                                                        args 48346921041, 0, this.address, 128, 320, cd[4], cd[36], cd[68], 48346921041, ('cd', 132).length, mem[128], mem[160], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 98], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 130], ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with 'sf'
                        else:
                            if ('cd', 132).length <= 1:
                                mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 162] = 0x22c0d9f14a579d1d17baf9fddaebffc4a661f18e5dbcdf9b78b0e655ef26681
                                mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 166] = 48346921041
                                if ('cd', 132).length <= 1:
                                    call mem[128].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas 375 * 3600 wei
                                        args 48346921041, 0, this.address, 128, 320, cd[4], cd[36], cd[68], 48346921041, ('cd', 132).length, mem[128], mem[160], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 98], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 130], 0
                                else:
                                    call mem[160].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas 375 * 3600 wei
                                        args 48346921041, 0, this.address, 128, 320, cd[4], cd[36], cd[68], 48346921041, ('cd', 132).length, mem[128], mem[160], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 98], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 130], 0
                                if not ext_call.success:
                                    revert with 'sf'
                            else:
                                staticcall mem[160].getReserves() with:
                                        gas 35000 wei
                                mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 162 len 64] = ext_call.return_data[0 len 64]
                                staticcall mem[160].token0() with:
                                        gas 35000 wei
                                mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 162] = ext_call.return_data[0]
                                if ext_call.return_data[0] != cd[36]:
                                    mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 98] = (483469210410000 * ext_call.return_data[0] / (-48346921041 * mem[ceil32(32 * ('cd', 132).length) + 161]) + (ext_call.return_data[32] * mem[ceil32(32 * ('cd', 132).length) + 161])) + 1
                                    staticcall mem[128].getReserves() with:
                                            gas 35000 wei
                                    mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 162 len 64] = ext_call.return_data[0 len 64]
                                    if cd[4] <= ext_call.return_data[0]:
                                        _1872 = mem[ceil32(32 * ('cd', 132).length) + 161]
                                        mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 130] = (10000 * ext_call.return_data[0] * mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 98] / (ext_call.return_data[32] * mem[ceil32(32 * ('cd', 132).length) + 161]) - (mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 98] * mem[ceil32(32 * ('cd', 132).length) + 161])) + 1
                                        if cd[100] <= -(10000 * ext_call.return_data[0] * mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 98] / (ext_call.return_data[32] * _1872) - (mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 98] * _1872)) - 1:
                                            mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 162] = 0x22c0d9f14a579d1d17baf9fddaebffc4a661f18e5dbcdf9b78b0e655ef26681
                                            if ext_call.return_data[0] <= cd[36]:
                                                mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 166] = 0
                                                if ('cd', 132).length <= 1:
                                                    call mem[128].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                         gas 375 * 3600 wei
                                                        args 0, 48346921041, this.address, 128, 320, cd[4], cd[36], cd[68], 48346921041, ('cd', 132).length, mem[128], mem[160], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 98], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 130], ext_call.return_data[0]
                                                else:
                                                    call mem[160].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                         gas 375 * 3600 wei
                                                        args 0, 48346921041, this.address, 128, 320, cd[4], cd[36], cd[68], 48346921041, ('cd', 132).length, mem[128], mem[160], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 98], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 130], ext_call.return_data[0]
                                            else:
                                                mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 166] = 48346921041
                                                if ('cd', 132).length <= 1:
                                                    call mem[128].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                         gas 375 * 3600 wei
                                                        args 48346921041, 0, this.address, 128, 320, cd[4], cd[36], cd[68], 48346921041, ('cd', 132).length, mem[128], mem[160], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 98], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 130], ext_call.return_data[0]
                                                else:
                                                    call mem[160].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                         gas 375 * 3600 wei
                                                        args 48346921041, 0, this.address, 128, 320, cd[4], cd[36], cd[68], 48346921041, ('cd', 132).length, mem[128], mem[160], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 98], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 130], ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with 'sf'
                                    else:
                                        _1900 = mem[ceil32(32 * ('cd', 132).length) + 161]
                                        mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 130] = (10000 * ext_call.return_data[32] * mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 98] / (ext_call.return_data[0] * mem[ceil32(32 * ('cd', 132).length) + 161]) - (mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 98] * mem[ceil32(32 * ('cd', 132).length) + 161])) + 1
                                        if cd[100] <= -(10000 * ext_call.return_data[32] * mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 98] / (ext_call.return_data[0] * _1900) - (mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 98] * _1900)) - 1:
                                            mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 162] = 0x22c0d9f14a579d1d17baf9fddaebffc4a661f18e5dbcdf9b78b0e655ef26681
                                            if ext_call.return_data[0] <= cd[36]:
                                                mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 166] = 0
                                                if ('cd', 132).length <= 1:
                                                    call mem[128].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                         gas 375 * 3600 wei
                                                        args 0, 48346921041, this.address, 128, 320, cd[4], cd[36], cd[68], 48346921041, ('cd', 132).length, mem[128], mem[160], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 98], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 130], ext_call.return_data[0]
                                                else:
                                                    call mem[160].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                         gas 375 * 3600 wei
                                                        args 0, 48346921041, this.address, 128, 320, cd[4], cd[36], cd[68], 48346921041, ('cd', 132).length, mem[128], mem[160], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 98], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 130], ext_call.return_data[0]
                                            else:
                                                mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 166] = 48346921041
                                                if ('cd', 132).length <= 1:
                                                    call mem[128].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                         gas 375 * 3600 wei
                                                        args 48346921041, 0, this.address, 128, 320, cd[4], cd[36], cd[68], 48346921041, ('cd', 132).length, mem[128], mem[160], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 98], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 130], ext_call.return_data[0]
                                                else:
                                                    call mem[160].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                         gas 375 * 3600 wei
                                                        args 48346921041, 0, this.address, 128, 320, cd[4], cd[36], cd[68], 48346921041, ('cd', 132).length, mem[128], mem[160], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 98], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 130], ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with 'sf'
                                else:
                                    staticcall mem[160].token1() with:
                                            gas 35000 wei
                                    mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 162] = ext_call.return_data[0]
                                    mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 98] = (483469210410000 * ext_call.return_data[32] / (-48346921041 * mem[ceil32(32 * ('cd', 132).length) + 161]) + (ext_call.return_data[0] * mem[ceil32(32 * ('cd', 132).length) + 161])) + 1
                                    staticcall mem[128].getReserves() with:
                                            gas 35000 wei
                                    mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 162 len 64] = ext_call.return_data[0 len 64]
                                    if cd[4] <= ext_call.return_data[0]:
                                        _2015 = mem[ceil32(32 * ('cd', 132).length) + 161]
                                        mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 130] = (10000 * ext_call.return_data[0] * mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 98] / (ext_call.return_data[32] * mem[ceil32(32 * ('cd', 132).length) + 161]) - (mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 98] * mem[ceil32(32 * ('cd', 132).length) + 161])) + 1
                                        if cd[100] <= -(10000 * ext_call.return_data[0] * mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 98] / (ext_call.return_data[32] * _2015) - (mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 98] * _2015)) - 1:
                                            mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 162] = 0x22c0d9f14a579d1d17baf9fddaebffc4a661f18e5dbcdf9b78b0e655ef26681
                                            if ext_call.return_data[0] <= cd[36]:
                                                mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 166] = 0
                                                if ('cd', 132).length <= 1:
                                                    call mem[128].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                         gas 375 * 3600 wei
                                                        args 0, 48346921041, this.address, 128, 320, cd[4], cd[36], cd[68], 48346921041, ('cd', 132).length, mem[128], mem[160], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 98], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 130], ext_call.return_data[0]
                                                else:
                                                    call mem[160].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                         gas 375 * 3600 wei
                                                        args 0, 48346921041, this.address, 128, 320, cd[4], cd[36], cd[68], 48346921041, ('cd', 132).length, mem[128], mem[160], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 98], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 130], ext_call.return_data[0]
                                            else:
                                                mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 166] = 48346921041
                                                if ('cd', 132).length <= 1:
                                                    call mem[128].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                         gas 375 * 3600 wei
                                                        args 48346921041, 0, this.address, 128, 320, cd[4], cd[36], cd[68], 48346921041, ('cd', 132).length, mem[128], mem[160], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 98], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 130], ext_call.return_data[0]
                                                else:
                                                    call mem[160].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                         gas 375 * 3600 wei
                                                        args 48346921041, 0, this.address, 128, 320, cd[4], cd[36], cd[68], 48346921041, ('cd', 132).length, mem[128], mem[160], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 98], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 130], ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with 'sf'
                                    else:
                                        _2075 = mem[ceil32(32 * ('cd', 132).length) + 161]
                                        mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 130] = (10000 * ext_call.return_data[32] * mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 98] / (ext_call.return_data[0] * mem[ceil32(32 * ('cd', 132).length) + 161]) - (mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 98] * mem[ceil32(32 * ('cd', 132).length) + 161])) + 1
                                        if cd[100] <= -(10000 * ext_call.return_data[32] * mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 98] / (ext_call.return_data[0] * _2075) - (mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 98] * _2075)) - 1:
                                            mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 162] = 0x22c0d9f14a579d1d17baf9fddaebffc4a661f18e5dbcdf9b78b0e655ef26681
                                            if ext_call.return_data[0] <= cd[36]:
                                                mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 166] = 0
                                                if ('cd', 132).length <= 1:
                                                    call mem[128].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                         gas 375 * 3600 wei
                                                        args 0, 48346921041, this.address, 128, 320, cd[4], cd[36], cd[68], 48346921041, ('cd', 132).length, mem[128], mem[160], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 98], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 130], ext_call.return_data[0]
                                                else:
                                                    call mem[160].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                         gas 375 * 3600 wei
                                                        args 0, 48346921041, this.address, 128, 320, cd[4], cd[36], cd[68], 48346921041, ('cd', 132).length, mem[128], mem[160], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 98], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 130], ext_call.return_data[0]
                                            else:
                                                mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 166] = 48346921041
                                                if ('cd', 132).length <= 1:
                                                    call mem[128].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                         gas 375 * 3600 wei
                                                        args 48346921041, 0, this.address, 128, 320, cd[4], cd[36], cd[68], 48346921041, ('cd', 132).length, mem[128], mem[160], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 98], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 130], ext_call.return_data[0]
                                                else:
                                                    call mem[160].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                         gas 375 * 3600 wei
                                                        args 48346921041, 0, this.address, 128, 320, cd[4], cd[36], cd[68], 48346921041, ('cd', 132).length, mem[128], mem[160], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 98], mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 130], ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with 'sf'
}

function sub_e89b9ba7(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    if address(arg2) == 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab:
        staticcall 0x4e575cacb37bc1b5afec68a0462c4165a5268983.0x70a08231 with:
                gas gas_remaining wei
               args address(arg3)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        staticcall 0x60f6a45006323b97d97cb0a42ac39e2b757ada63.0x70a08231 with:
                gas gas_remaining wei
               args address(arg3)
    else:
        if address(arg2) == 0xd586e7f844cea2f87f50152665bcbc2c279d8d70:
            staticcall 0x1852dc24d1a8956a0b356aa18ede954c7a0ca5ae.0x70a08231 with:
                    gas gas_remaining wei
                   args address(arg3)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            staticcall 0x3676e4ee689d527ddb89812b63fad0b7501772b3.0x70a08231 with:
                    gas gas_remaining wei
                   args address(arg3)
        else:
            if address(arg2) == 0xc7198437980c041c805a1edcba50c1ce5db95118:
                staticcall 0xfc1ada7a288d6fce0d29ccfaaa57bc9114bb2dbe.0x70a08231 with:
                        gas gas_remaining wei
                       args address(arg3)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                staticcall 0x9c7b81a867499b7387ed05017a13d4172a0c17bf.0x70a08231 with:
                        gas gas_remaining wei
                       args address(arg3)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] > !ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if address(arg1) == 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab:
                    staticcall 0x53f7c5869a859f0aec3d334ee8b4cf01e3492f21.0x70a08231 with:
                            gas gas_remaining wei
                           args address(arg3)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    staticcall stor1.getAssetPrice(address arg1) with:
                            gas gas_remaining wei
                           args address(arg1)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    staticcall stor1.getAssetPrice(address arg1) with:
                            gas gas_remaining wei
                           args address(arg2)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not uint255(ext_call.return_data[0]):
                        if ext_call.return_data[0] and 10^6 > -1 / ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if 10^18 * ext_call.return_data[0] and 0 > -1 / 10^18 * ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        revert with 'NH{q', 18
                    if uint255(ext_call.return_data[0]) and 5000 > -1 / 2 * ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    if 5000 > !(10000 * ext_call.return_data[0]):
                        revert with 'NH{q', 17
                    if ext_call.return_data[0] and 10^6 > -1 / ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    if ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    if 10^18 * ext_call.return_data[0] and (10000 * ext_call.return_data[0]) + 5000 / 10000 > -1 / 10^18 * ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    if not 10^18 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000:
                        if not 10^6 * ext_call.return_data[0]:
                            revert with 'NH{q', 18
                        if (10000 * ext_call.return_data[0]) + 5000 / 10000 and 10^6 > -1 / (10000 * ext_call.return_data[0]) + 5000 / 10000:
                            revert with 'NH{q', 17
                        if not 10^6 * (10000 * ext_call.return_data[0]) + 5000 / 10000:
                            revert with 'NH{q', 18
                        if 0 / 10^6 * ext_call.return_data[0] <= ext_call.return_data[0]:
                            return 0 / 10^6 * ext_call.return_data[0], 
                                   (10000 * ext_call.return_data[0]) + 5000 / 10000,
                                   0 / 10^6 * ext_call.return_data[0] / 10^6 * (10000 * ext_call.return_data[0]) + 5000 / 10000
                        if ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if ext_call.return_data[0] * ext_call.return_data[0] and 10^6 > -1 / ext_call.return_data[0] * ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if not 10^18 * ext_call.return_data[0]:
                            revert with 'NH{q', 18
                        if 10^6 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                            revert with 'NH{q', 17
                        if 10000 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] > -5251:
                            revert with 'NH{q', 17
                        return ext_call.return_data[0], 
                               (10000 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0]) + 5250 / 10500,
                               0 / 10^6 * ext_call.return_data[0] / 10^6 * (10000 * ext_call.return_data[0]) + 5000 / 10000
                    if 10^18 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000 and 10500 > -1 / 10^18 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000:
                        revert with 'NH{q', 17
                    if 5000 > !(10500 * 10^18 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000):
                        revert with 'NH{q', 17
                    if not 10^6 * ext_call.return_data[0]:
                        revert with 'NH{q', 18
                    if (10000 * ext_call.return_data[0]) + 5000 / 10000 and 10^6 > -1 / (10000 * ext_call.return_data[0]) + 5000 / 10000:
                        revert with 'NH{q', 17
                    if not 10^6 * (10000 * ext_call.return_data[0]) + 5000 / 10000:
                        revert with 'NH{q', 18
                    if (10500 * 10^18 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000) + 5000 / 10000 / 10^6 * ext_call.return_data[0] <= ext_call.return_data[0]:
                        return (10500 * 10^18 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000) + 5000 / 10000 / 10^6 * ext_call.return_data[0], 
                               (10000 * ext_call.return_data[0]) + 5000 / 10000,
                               (10500 * 10^18 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000) + 5000 / 10000 / 10^6 * ext_call.return_data[0] / 10^6 * (10000 * ext_call.return_data[0]) + 5000 / 10000
                    if ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    if ext_call.return_data[0] * ext_call.return_data[0] and 10^6 > -1 / ext_call.return_data[0] * ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    if not 10^18 * ext_call.return_data[0]:
                        revert with 'NH{q', 18
                    if 10^6 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                        revert with 'NH{q', 17
                    if 10000 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] > -5251:
                        revert with 'NH{q', 17
                    return ext_call.return_data[0], 
                           (10000 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0]) + 5250 / 10500,
                           (10500 * 10^18 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000) + 5000 / 10000 / 10^6 * ext_call.return_data[0] / 10^6 * (10000 * ext_call.return_data[0]) + 5000 / 10000
                if address(arg1) == 0xd586e7f844cea2f87f50152665bcbc2c279d8d70:
                    staticcall 0x47afa96cdc9fab46904a55a6ad4bf6660b53c38a.0x70a08231 with:
                            gas gas_remaining wei
                           args address(arg3)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    staticcall stor1.getAssetPrice(address arg1) with:
                            gas gas_remaining wei
                           args address(arg1)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    staticcall stor1.getAssetPrice(address arg1) with:
                            gas gas_remaining wei
                           args address(arg2)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not uint255(ext_call.return_data[0]):
                        if ext_call.return_data[0] and 10^6 > -1 / ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if 10^18 * ext_call.return_data[0] and 0 > -1 / 10^18 * ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        revert with 'NH{q', 18
                    if uint255(ext_call.return_data[0]) and 5000 > -1 / 2 * ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    if 5000 > !(10000 * ext_call.return_data[0]):
                        revert with 'NH{q', 17
                    if ext_call.return_data[0] and 10^6 > -1 / ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    if ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    if 10^18 * ext_call.return_data[0] and (10000 * ext_call.return_data[0]) + 5000 / 10000 > -1 / 10^18 * ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    if not 10^18 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000:
                        if not 10^6 * ext_call.return_data[0]:
                            revert with 'NH{q', 18
                        if (10000 * ext_call.return_data[0]) + 5000 / 10000 and 10^6 > -1 / (10000 * ext_call.return_data[0]) + 5000 / 10000:
                            revert with 'NH{q', 17
                        if not 10^6 * (10000 * ext_call.return_data[0]) + 5000 / 10000:
                            revert with 'NH{q', 18
                        if 0 / 10^6 * ext_call.return_data[0] <= ext_call.return_data[0]:
                            return 0 / 10^6 * ext_call.return_data[0], 
                                   (10000 * ext_call.return_data[0]) + 5000 / 10000,
                                   0 / 10^6 * ext_call.return_data[0] / 10^6 * (10000 * ext_call.return_data[0]) + 5000 / 10000
                        if ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if ext_call.return_data[0] * ext_call.return_data[0] and 10^6 > -1 / ext_call.return_data[0] * ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if not 10^18 * ext_call.return_data[0]:
                            revert with 'NH{q', 18
                        if 10^6 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                            revert with 'NH{q', 17
                        if 10000 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] > -5251:
                            revert with 'NH{q', 17
                        return ext_call.return_data[0], 
                               (10000 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0]) + 5250 / 10500,
                               0 / 10^6 * ext_call.return_data[0] / 10^6 * (10000 * ext_call.return_data[0]) + 5000 / 10000
                    if 10^18 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000 and 10500 > -1 / 10^18 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000:
                        revert with 'NH{q', 17
                    if 5000 > !(10500 * 10^18 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000):
                        revert with 'NH{q', 17
                    if not 10^6 * ext_call.return_data[0]:
                        revert with 'NH{q', 18
                    if (10000 * ext_call.return_data[0]) + 5000 / 10000 and 10^6 > -1 / (10000 * ext_call.return_data[0]) + 5000 / 10000:
                        revert with 'NH{q', 17
                    if not 10^6 * (10000 * ext_call.return_data[0]) + 5000 / 10000:
                        revert with 'NH{q', 18
                    if (10500 * 10^18 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000) + 5000 / 10000 / 10^6 * ext_call.return_data[0] <= ext_call.return_data[0]:
                        return (10500 * 10^18 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000) + 5000 / 10000 / 10^6 * ext_call.return_data[0], 
                               (10000 * ext_call.return_data[0]) + 5000 / 10000,
                               (10500 * 10^18 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000) + 5000 / 10000 / 10^6 * ext_call.return_data[0] / 10^6 * (10000 * ext_call.return_data[0]) + 5000 / 10000
                    if ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    if ext_call.return_data[0] * ext_call.return_data[0] and 10^6 > -1 / ext_call.return_data[0] * ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    if not 10^18 * ext_call.return_data[0]:
                        revert with 'NH{q', 18
                    if 10^6 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                        revert with 'NH{q', 17
                    if 10000 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] > -5251:
                        revert with 'NH{q', 17
                    return ext_call.return_data[0], 
                           (10000 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0]) + 5250 / 10500,
                           (10500 * 10^18 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000) + 5000 / 10000 / 10^6 * ext_call.return_data[0] / 10^6 * (10000 * ext_call.return_data[0]) + 5000 / 10000
                if address(arg1) == 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664:
                    staticcall 0x46a51127c3ce23fb7ab1de06226147f446e4a857.0x70a08231 with:
                            gas gas_remaining wei
                           args address(arg3)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    staticcall stor1.getAssetPrice(address arg1) with:
                            gas gas_remaining wei
                           args address(arg1)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    staticcall stor1.getAssetPrice(address arg1) with:
                            gas gas_remaining wei
                           args address(arg2)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not uint255(ext_call.return_data[0]):
                        if ext_call.return_data[0] and 10^6 > -1 / ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if ext_call.return_data[0] and 10^6 > -1 / ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if 10^6 * ext_call.return_data[0] and 0 > -1 / 10^6 * ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        revert with 'NH{q', 18
                    if uint255(ext_call.return_data[0]) and 5000 > -1 / 2 * ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    if 5000 > !(10000 * ext_call.return_data[0]):
                        revert with 'NH{q', 17
                    if ext_call.return_data[0] and 10^6 > -1 / ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    if ext_call.return_data[0] and 10^6 > -1 / ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    if 10^6 * ext_call.return_data[0] and (10000 * ext_call.return_data[0]) + 5000 / 10000 > -1 / 10^6 * ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    if not 10^6 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000:
                        if not 10^6 * ext_call.return_data[0]:
                            revert with 'NH{q', 18
                        if (10000 * ext_call.return_data[0]) + 5000 / 10000 and 10^6 > -1 / (10000 * ext_call.return_data[0]) + 5000 / 10000:
                            revert with 'NH{q', 17
                        if not 10^6 * (10000 * ext_call.return_data[0]) + 5000 / 10000:
                            revert with 'NH{q', 18
                        if 0 / 10^6 * ext_call.return_data[0] <= ext_call.return_data[0]:
                            return 0 / 10^6 * ext_call.return_data[0], 
                                   (10000 * ext_call.return_data[0]) + 5000 / 10000,
                                   0 / 10^6 * ext_call.return_data[0] / 10^6 * (10000 * ext_call.return_data[0]) + 5000 / 10000
                        if ext_call.return_data[0] and 10^6 > -1 / ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if ext_call.return_data[0] * ext_call.return_data[0] and 10^6 > -1 / ext_call.return_data[0] * ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if not 10^6 * ext_call.return_data[0]:
                            revert with 'NH{q', 18
                        if 10^6 * ext_call.return_data[0] * ext_call.return_data[0] / 10^6 * ext_call.return_data[0] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                            revert with 'NH{q', 17
                        if 10000 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0] / 10^6 * ext_call.return_data[0] > -5251:
                            revert with 'NH{q', 17
                        return ext_call.return_data[0], 
                               (10000 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0] / 10^6 * ext_call.return_data[0]) + 5250 / 10500,
                               0 / 10^6 * ext_call.return_data[0] / 10^6 * (10000 * ext_call.return_data[0]) + 5000 / 10000
                    if 10^6 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000 and 10500 > -1 / 10^6 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000:
                        revert with 'NH{q', 17
                    if 5000 > !(10500 * 10^6 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000):
                        revert with 'NH{q', 17
                    if not 10^6 * ext_call.return_data[0]:
                        revert with 'NH{q', 18
                    if (10000 * ext_call.return_data[0]) + 5000 / 10000 and 10^6 > -1 / (10000 * ext_call.return_data[0]) + 5000 / 10000:
                        revert with 'NH{q', 17
                    if not 10^6 * (10000 * ext_call.return_data[0]) + 5000 / 10000:
                        revert with 'NH{q', 18
                    if (10500 * 10^6 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000) + 5000 / 10000 / 10^6 * ext_call.return_data[0] <= ext_call.return_data[0]:
                        return (10500 * 10^6 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000) + 5000 / 10000 / 10^6 * ext_call.return_data[0], 
                               (10000 * ext_call.return_data[0]) + 5000 / 10000,
                               (10500 * 10^6 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000) + 5000 / 10000 / 10^6 * ext_call.return_data[0] / 10^6 * (10000 * ext_call.return_data[0]) + 5000 / 10000
                    if ext_call.return_data[0] and 10^6 > -1 / ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    if ext_call.return_data[0] * ext_call.return_data[0] and 10^6 > -1 / ext_call.return_data[0] * ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    if not 10^6 * ext_call.return_data[0]:
                        revert with 'NH{q', 18
                    if 10^6 * ext_call.return_data[0] * ext_call.return_data[0] / 10^6 * ext_call.return_data[0] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                        revert with 'NH{q', 17
                    if 10000 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0] / 10^6 * ext_call.return_data[0] > -5251:
                        revert with 'NH{q', 17
                    return ext_call.return_data[0], 
                           (10000 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0] / 10^6 * ext_call.return_data[0]) + 5250 / 10500,
                           (10500 * 10^6 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000) + 5000 / 10000 / 10^6 * ext_call.return_data[0] / 10^6 * (10000 * ext_call.return_data[0]) + 5000 / 10000
                if address(arg1) == 0x63a72806098bd3d9520cc43356dd78afe5d386d9:
                    staticcall 0xd45b7c061016102f9fa220502908f2c0f1add1d7.0x70a08231 with:
                            gas gas_remaining wei
                           args address(arg3)
                else:
                    if address(arg1) == 0x50b7545627a5162f82a992c33b87adc75187b218:
                        staticcall 0x686bef2417b6dc32c50a3cbfbcc3bb60e1e9a15d.0x70a08231 with:
                                gas gas_remaining wei
                               args address(arg3)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        staticcall stor1.getAssetPrice(address arg1) with:
                                gas gas_remaining wei
                               args address(arg1)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        staticcall stor1.getAssetPrice(address arg1) with:
                                gas gas_remaining wei
                               args address(arg2)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not uint255(ext_call.return_data[0]):
                            if ext_call.return_data[0] and 10^6 > -1 / ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            if ext_call.return_data[0] and 100 * 10^6 > -1 / ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            if 100 * 10^6 * ext_call.return_data[0] and 0 > -1 / 100 * 10^6 * ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            revert with 'NH{q', 18
                        if uint255(ext_call.return_data[0]) and 5000 > -1 / 2 * ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if 5000 > !(10000 * ext_call.return_data[0]):
                            revert with 'NH{q', 17
                        if ext_call.return_data[0] and 10^6 > -1 / ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if ext_call.return_data[0] and 100 * 10^6 > -1 / ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if 100 * 10^6 * ext_call.return_data[0] and (10000 * ext_call.return_data[0]) + 5000 / 10000 > -1 / 100 * 10^6 * ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if not 100 * 10^6 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000:
                            if not 10^6 * ext_call.return_data[0]:
                                revert with 'NH{q', 18
                            if (10000 * ext_call.return_data[0]) + 5000 / 10000 and 10^6 > -1 / (10000 * ext_call.return_data[0]) + 5000 / 10000:
                                revert with 'NH{q', 17
                            if not 10^6 * (10000 * ext_call.return_data[0]) + 5000 / 10000:
                                revert with 'NH{q', 18
                            if 0 / 10^6 * ext_call.return_data[0] <= ext_call.return_data[0]:
                                return 0 / 10^6 * ext_call.return_data[0], 
                                       (10000 * ext_call.return_data[0]) + 5000 / 10000,
                                       0 / 10^6 * ext_call.return_data[0] / 10^6 * (10000 * ext_call.return_data[0]) + 5000 / 10000
                            if ext_call.return_data[0] and 100 * 10^6 > -1 / ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            if ext_call.return_data[0] * ext_call.return_data[0] and 10^6 > -1 / ext_call.return_data[0] * ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            if not 100 * 10^6 * ext_call.return_data[0]:
                                revert with 'NH{q', 18
                            if 10^6 * ext_call.return_data[0] * ext_call.return_data[0] / 100 * 10^6 * ext_call.return_data[0] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                                revert with 'NH{q', 17
                            if 10000 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0] / 100 * 10^6 * ext_call.return_data[0] > -5251:
                                revert with 'NH{q', 17
                            return ext_call.return_data[0], 
                                   (10000 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0] / 100 * 10^6 * ext_call.return_data[0]) + 5250 / 10500,
                                   0 / 10^6 * ext_call.return_data[0] / 10^6 * (10000 * ext_call.return_data[0]) + 5000 / 10000
                        if 100 * 10^6 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000 and 10500 > -1 / 100 * 10^6 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000:
                            revert with 'NH{q', 17
                        if 5000 > !(105 * 10^10 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000):
                            revert with 'NH{q', 17
                        if not 10^6 * ext_call.return_data[0]:
                            revert with 'NH{q', 18
                        if (10000 * ext_call.return_data[0]) + 5000 / 10000 and 10^6 > -1 / (10000 * ext_call.return_data[0]) + 5000 / 10000:
                            revert with 'NH{q', 17
                        if not 10^6 * (10000 * ext_call.return_data[0]) + 5000 / 10000:
                            revert with 'NH{q', 18
                        if (105 * 10^10 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000) + 5000 / 10000 / 10^6 * ext_call.return_data[0] <= ext_call.return_data[0]:
                            return (105 * 10^10 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000) + 5000 / 10000 / 10^6 * ext_call.return_data[0], 
                                   (10000 * ext_call.return_data[0]) + 5000 / 10000,
                                   (105 * 10^10 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000) + 5000 / 10000 / 10^6 * ext_call.return_data[0] / 10^6 * (10000 * ext_call.return_data[0]) + 5000 / 10000
                        if ext_call.return_data[0] and 100 * 10^6 > -1 / ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if ext_call.return_data[0] * ext_call.return_data[0] and 10^6 > -1 / ext_call.return_data[0] * ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if not 100 * 10^6 * ext_call.return_data[0]:
                            revert with 'NH{q', 18
                        if 10^6 * ext_call.return_data[0] * ext_call.return_data[0] / 100 * 10^6 * ext_call.return_data[0] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                            revert with 'NH{q', 17
                        if 10000 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0] / 100 * 10^6 * ext_call.return_data[0] > -5251:
                            revert with 'NH{q', 17
                        return ext_call.return_data[0], 
                               (10000 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0] / 100 * 10^6 * ext_call.return_data[0]) + 5250 / 10500,
                               (105 * 10^10 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000) + 5000 / 10000 / 10^6 * ext_call.return_data[0] / 10^6 * (10000 * ext_call.return_data[0]) + 5000 / 10000
                    if address(arg1) != 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                        staticcall stor1.getAssetPrice(address arg1) with:
                                gas gas_remaining wei
                               args address(arg1)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        staticcall stor1.getAssetPrice(address arg1) with:
                                gas gas_remaining wei
                               args address(arg2)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not uint255(ext_call.return_data[0]):
                            if ext_call.return_data[0] and 10^6 > -1 / ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            if ext_call.return_data[0] and 0 > -1 / ext_call.return_data[0]:
                                revert with 'NH{q', 17
                        else:
                            if uint255(ext_call.return_data[0]) and 5000 > -1 / 2 * ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            if 5000 > !(10000 * ext_call.return_data[0]):
                                revert with 'NH{q', 17
                            if ext_call.return_data[0] and 10^6 > -1 / ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            if ext_call.return_data[0] and 0 > -1 / ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            if False and (10000 * ext_call.return_data[0]) + 5000 / 10000 > 0:
                                revert with 'NH{q', 17
                            if 10^6 * ext_call.return_data[0]:
                                if (10000 * ext_call.return_data[0]) + 5000 / 10000 and 10^6 > -1 / (10000 * ext_call.return_data[0]) + 5000 / 10000:
                                    revert with 'NH{q', 17
                                if 10^6 * (10000 * ext_call.return_data[0]) + 5000 / 10000:
                                    if 0 / 10^6 * ext_call.return_data[0] <= 0:
                                        return 0 / 10^6 * ext_call.return_data[0], 
                                               (10000 * ext_call.return_data[0]) + 5000 / 10000,
                                               0 / 10^6 * ext_call.return_data[0] / 10^6 * (10000 * ext_call.return_data[0]) + 5000 / 10000
                                    if ext_call.return_data[0] and 0 > -1 / ext_call.return_data[0]:
                                        revert with 'NH{q', 17
                                    if ext_call.return_data[0] and 0 > -1 / ext_call.return_data[0]:
                                        revert with 'NH{q', 17
                        revert with 'NH{q', 18
                    staticcall 0xdfe521292ece2a4f44242efbcd66bc594ca9714b.0x70a08231 with:
                            gas gas_remaining wei
                           args address(arg3)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                staticcall stor1.getAssetPrice(address arg1) with:
                        gas gas_remaining wei
                       args address(arg1)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                staticcall stor1.getAssetPrice(address arg1) with:
                        gas gas_remaining wei
                       args address(arg2)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not uint255(ext_call.return_data[0]):
                    if ext_call.return_data[0] and 10^6 > -1 / ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    if ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    if 10^18 * ext_call.return_data[0] and 0 > -1 / 10^18 * ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    revert with 'NH{q', 18
                if uint255(ext_call.return_data[0]) and 5000 > -1 / 2 * ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if 5000 > !(10000 * ext_call.return_data[0]):
                    revert with 'NH{q', 17
                if ext_call.return_data[0] and 10^6 > -1 / ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if 10^18 * ext_call.return_data[0] and (10000 * ext_call.return_data[0]) + 5000 / 10000 > -1 / 10^18 * ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if not 10^18 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000:
                    if not 10^6 * ext_call.return_data[0]:
                        revert with 'NH{q', 18
                    if (10000 * ext_call.return_data[0]) + 5000 / 10000 and 10^6 > -1 / (10000 * ext_call.return_data[0]) + 5000 / 10000:
                        revert with 'NH{q', 17
                    if not 10^6 * (10000 * ext_call.return_data[0]) + 5000 / 10000:
                        revert with 'NH{q', 18
                    if 0 / 10^6 * ext_call.return_data[0] <= ext_call.return_data[0]:
                        return 0 / 10^6 * ext_call.return_data[0], 
                               (10000 * ext_call.return_data[0]) + 5000 / 10000,
                               0 / 10^6 * ext_call.return_data[0] / 10^6 * (10000 * ext_call.return_data[0]) + 5000 / 10000
                    if ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    if ext_call.return_data[0] * ext_call.return_data[0] and 10^6 > -1 / ext_call.return_data[0] * ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    if not 10^18 * ext_call.return_data[0]:
                        revert with 'NH{q', 18
                    if 10^6 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                        revert with 'NH{q', 17
                    if 10000 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] > -5501:
                        revert with 'NH{q', 17
                    return ext_call.return_data[0], 
                           (10000 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0]) + 5500 / 11000,
                           0 / 10^6 * ext_call.return_data[0] / 10^6 * (10000 * ext_call.return_data[0]) + 5000 / 10000
                if 10^18 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000 and 11000 > -1 / 10^18 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000:
                    revert with 'NH{q', 17
                if 5000 > !(11000 * 10^18 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000):
                    revert with 'NH{q', 17
                if not 10^6 * ext_call.return_data[0]:
                    revert with 'NH{q', 18
                if (10000 * ext_call.return_data[0]) + 5000 / 10000 and 10^6 > -1 / (10000 * ext_call.return_data[0]) + 5000 / 10000:
                    revert with 'NH{q', 17
                if not 10^6 * (10000 * ext_call.return_data[0]) + 5000 / 10000:
                    revert with 'NH{q', 18
                if (11000 * 10^18 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000) + 5000 / 10000 / 10^6 * ext_call.return_data[0] <= ext_call.return_data[0]:
                    return (11000 * 10^18 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000) + 5000 / 10000 / 10^6 * ext_call.return_data[0], 
                           (10000 * ext_call.return_data[0]) + 5000 / 10000,
                           (11000 * 10^18 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000) + 5000 / 10000 / 10^6 * ext_call.return_data[0] / 10^6 * (10000 * ext_call.return_data[0]) + 5000 / 10000
                if ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if ext_call.return_data[0] * ext_call.return_data[0] and 10^6 > -1 / ext_call.return_data[0] * ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if not 10^18 * ext_call.return_data[0]:
                    revert with 'NH{q', 18
                if 10^6 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                    revert with 'NH{q', 17
                if 10000 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] > -5501:
                    revert with 'NH{q', 17
                return ext_call.return_data[0], 
                       (10000 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0]) + 5500 / 11000,
                       (11000 * 10^18 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000) + 5000 / 10000 / 10^6 * ext_call.return_data[0] / 10^6 * (10000 * ext_call.return_data[0]) + 5000 / 10000
            if address(arg2) == 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664:
                staticcall 0x848c080d2700cbe1b894a3374ad5e887e5ccb89c.0x70a08231 with:
                        gas gas_remaining wei
                       args address(arg3)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                staticcall 0x5b14679135dbe8b02015ec3ca4924a12e4c6c85a.0x70a08231 with:
                        gas gas_remaining wei
                       args address(arg3)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] > !ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if address(arg1) == 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab:
                    staticcall 0x53f7c5869a859f0aec3d334ee8b4cf01e3492f21.0x70a08231 with:
                            gas gas_remaining wei
                           args address(arg3)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    staticcall stor1.getAssetPrice(address arg1) with:
                            gas gas_remaining wei
                           args address(arg1)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    staticcall stor1.getAssetPrice(address arg1) with:
                            gas gas_remaining wei
                           args address(arg2)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not uint255(ext_call.return_data[0]):
                        if ext_call.return_data[0] and 10^6 > -1 / ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if 10^18 * ext_call.return_data[0] and 0 > -1 / 10^18 * ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        revert with 'NH{q', 18
                    if uint255(ext_call.return_data[0]) and 5000 > -1 / 2 * ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    if 5000 > !(10000 * ext_call.return_data[0]):
                        revert with 'NH{q', 17
                    if ext_call.return_data[0] and 10^6 > -1 / ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    if ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    if 10^18 * ext_call.return_data[0] and (10000 * ext_call.return_data[0]) + 5000 / 10000 > -1 / 10^18 * ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    if not 10^18 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000:
                        if not 10^6 * ext_call.return_data[0]:
                            revert with 'NH{q', 18
                        if (10000 * ext_call.return_data[0]) + 5000 / 10000 and 10^6 > -1 / (10000 * ext_call.return_data[0]) + 5000 / 10000:
                            revert with 'NH{q', 17
                        if not 10^6 * (10000 * ext_call.return_data[0]) + 5000 / 10000:
                            revert with 'NH{q', 18
                        if 0 / 10^6 * ext_call.return_data[0] <= ext_call.return_data[0]:
                            return 0 / 10^6 * ext_call.return_data[0], 
                                   (10000 * ext_call.return_data[0]) + 5000 / 10000,
                                   0 / 10^6 * ext_call.return_data[0] / 10^6 * (10000 * ext_call.return_data[0]) + 5000 / 10000
                        if ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if ext_call.return_data[0] * ext_call.return_data[0] and 10^6 > -1 / ext_call.return_data[0] * ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if not 10^18 * ext_call.return_data[0]:
                            revert with 'NH{q', 18
                        if 10^6 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                            revert with 'NH{q', 17
                        if 10000 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] > -5251:
                            revert with 'NH{q', 17
                        return ext_call.return_data[0], 
                               (10000 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0]) + 5250 / 10500,
                               0 / 10^6 * ext_call.return_data[0] / 10^6 * (10000 * ext_call.return_data[0]) + 5000 / 10000
                    if 10^18 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000 and 10500 > -1 / 10^18 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000:
                        revert with 'NH{q', 17
                    if 5000 > !(10500 * 10^18 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000):
                        revert with 'NH{q', 17
                    if not 10^6 * ext_call.return_data[0]:
                        revert with 'NH{q', 18
                    if (10000 * ext_call.return_data[0]) + 5000 / 10000 and 10^6 > -1 / (10000 * ext_call.return_data[0]) + 5000 / 10000:
                        revert with 'NH{q', 17
                    if not 10^6 * (10000 * ext_call.return_data[0]) + 5000 / 10000:
                        revert with 'NH{q', 18
                    if (10500 * 10^18 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000) + 5000 / 10000 / 10^6 * ext_call.return_data[0] <= ext_call.return_data[0]:
                        return (10500 * 10^18 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000) + 5000 / 10000 / 10^6 * ext_call.return_data[0], 
                               (10000 * ext_call.return_data[0]) + 5000 / 10000,
                               (10500 * 10^18 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000) + 5000 / 10000 / 10^6 * ext_call.return_data[0] / 10^6 * (10000 * ext_call.return_data[0]) + 5000 / 10000
                    if ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    if ext_call.return_data[0] * ext_call.return_data[0] and 10^6 > -1 / ext_call.return_data[0] * ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    if not 10^18 * ext_call.return_data[0]:
                        revert with 'NH{q', 18
                    if 10^6 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                        revert with 'NH{q', 17
                    if 10000 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] > -5251:
                        revert with 'NH{q', 17
                    return ext_call.return_data[0], 
                           (10000 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0]) + 5250 / 10500,
                           (10500 * 10^18 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000) + 5000 / 10000 / 10^6 * ext_call.return_data[0] / 10^6 * (10000 * ext_call.return_data[0]) + 5000 / 10000
                if address(arg1) == 0xd586e7f844cea2f87f50152665bcbc2c279d8d70:
                    staticcall 0x47afa96cdc9fab46904a55a6ad4bf6660b53c38a.0x70a08231 with:
                            gas gas_remaining wei
                           args address(arg3)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    staticcall stor1.getAssetPrice(address arg1) with:
                            gas gas_remaining wei
                           args address(arg1)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    staticcall stor1.getAssetPrice(address arg1) with:
                            gas gas_remaining wei
                           args address(arg2)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not uint255(ext_call.return_data[0]):
                        if ext_call.return_data[0] and 10^6 > -1 / ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if 10^18 * ext_call.return_data[0] and 0 > -1 / 10^18 * ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        revert with 'NH{q', 18
                    if uint255(ext_call.return_data[0]) and 5000 > -1 / 2 * ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    if 5000 > !(10000 * ext_call.return_data[0]):
                        revert with 'NH{q', 17
                    if ext_call.return_data[0] and 10^6 > -1 / ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    if ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    if 10^18 * ext_call.return_data[0] and (10000 * ext_call.return_data[0]) + 5000 / 10000 > -1 / 10^18 * ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    if not 10^18 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000:
                        if not 10^6 * ext_call.return_data[0]:
                            revert with 'NH{q', 18
                        if (10000 * ext_call.return_data[0]) + 5000 / 10000 and 10^6 > -1 / (10000 * ext_call.return_data[0]) + 5000 / 10000:
                            revert with 'NH{q', 17
                        if not 10^6 * (10000 * ext_call.return_data[0]) + 5000 / 10000:
                            revert with 'NH{q', 18
                        if 0 / 10^6 * ext_call.return_data[0] <= ext_call.return_data[0]:
                            return 0 / 10^6 * ext_call.return_data[0], 
                                   (10000 * ext_call.return_data[0]) + 5000 / 10000,
                                   0 / 10^6 * ext_call.return_data[0] / 10^6 * (10000 * ext_call.return_data[0]) + 5000 / 10000
                        if ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if ext_call.return_data[0] * ext_call.return_data[0] and 10^6 > -1 / ext_call.return_data[0] * ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if not 10^18 * ext_call.return_data[0]:
                            revert with 'NH{q', 18
                        if 10^6 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                            revert with 'NH{q', 17
                        if 10000 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] > -5251:
                            revert with 'NH{q', 17
                        return ext_call.return_data[0], 
                               (10000 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0]) + 5250 / 10500,
                               0 / 10^6 * ext_call.return_data[0] / 10^6 * (10000 * ext_call.return_data[0]) + 5000 / 10000
                    if 10^18 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000 and 10500 > -1 / 10^18 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000:
                        revert with 'NH{q', 17
                    if 5000 > !(10500 * 10^18 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000):
                        revert with 'NH{q', 17
                    if not 10^6 * ext_call.return_data[0]:
                        revert with 'NH{q', 18
                    if (10000 * ext_call.return_data[0]) + 5000 / 10000 and 10^6 > -1 / (10000 * ext_call.return_data[0]) + 5000 / 10000:
                        revert with 'NH{q', 17
                    if not 10^6 * (10000 * ext_call.return_data[0]) + 5000 / 10000:
                        revert with 'NH{q', 18
                    if (10500 * 10^18 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000) + 5000 / 10000 / 10^6 * ext_call.return_data[0] <= ext_call.return_data[0]:
                        return (10500 * 10^18 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000) + 5000 / 10000 / 10^6 * ext_call.return_data[0], 
                               (10000 * ext_call.return_data[0]) + 5000 / 10000,
                               (10500 * 10^18 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000) + 5000 / 10000 / 10^6 * ext_call.return_data[0] / 10^6 * (10000 * ext_call.return_data[0]) + 5000 / 10000
                    if ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    if ext_call.return_data[0] * ext_call.return_data[0] and 10^6 > -1 / ext_call.return_data[0] * ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    if not 10^18 * ext_call.return_data[0]:
                        revert with 'NH{q', 18
                    if 10^6 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                        revert with 'NH{q', 17
                    if 10000 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] > -5251:
                        revert with 'NH{q', 17
                    return ext_call.return_data[0], 
                           (10000 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0]) + 5250 / 10500,
                           (10500 * 10^18 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000) + 5000 / 10000 / 10^6 * ext_call.return_data[0] / 10^6 * (10000 * ext_call.return_data[0]) + 5000 / 10000
                if address(arg1) == 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664:
                    staticcall 0x46a51127c3ce23fb7ab1de06226147f446e4a857.0x70a08231 with:
                            gas gas_remaining wei
                           args address(arg3)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    staticcall stor1.getAssetPrice(address arg1) with:
                            gas gas_remaining wei
                           args address(arg1)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    staticcall stor1.getAssetPrice(address arg1) with:
                            gas gas_remaining wei
                           args address(arg2)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not uint255(ext_call.return_data[0]):
                        if ext_call.return_data[0] and 10^6 > -1 / ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if ext_call.return_data[0] and 10^6 > -1 / ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if 10^6 * ext_call.return_data[0] and 0 > -1 / 10^6 * ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        revert with 'NH{q', 18
                    if uint255(ext_call.return_data[0]) and 5000 > -1 / 2 * ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    if 5000 > !(10000 * ext_call.return_data[0]):
                        revert with 'NH{q', 17
                    if ext_call.return_data[0] and 10^6 > -1 / ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    if ext_call.return_data[0] and 10^6 > -1 / ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    if 10^6 * ext_call.return_data[0] and (10000 * ext_call.return_data[0]) + 5000 / 10000 > -1 / 10^6 * ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    if not 10^6 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000:
                        if not 10^6 * ext_call.return_data[0]:
                            revert with 'NH{q', 18
                        if (10000 * ext_call.return_data[0]) + 5000 / 10000 and 10^6 > -1 / (10000 * ext_call.return_data[0]) + 5000 / 10000:
                            revert with 'NH{q', 17
                        if not 10^6 * (10000 * ext_call.return_data[0]) + 5000 / 10000:
                            revert with 'NH{q', 18
                        if 0 / 10^6 * ext_call.return_data[0] <= ext_call.return_data[0]:
                            return 0 / 10^6 * ext_call.return_data[0], 
                                   (10000 * ext_call.return_data[0]) + 5000 / 10000,
                                   0 / 10^6 * ext_call.return_data[0] / 10^6 * (10000 * ext_call.return_data[0]) + 5000 / 10000
                        if ext_call.return_data[0] and 10^6 > -1 / ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if ext_call.return_data[0] * ext_call.return_data[0] and 10^6 > -1 / ext_call.return_data[0] * ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if not 10^6 * ext_call.return_data[0]:
                            revert with 'NH{q', 18
                        if 10^6 * ext_call.return_data[0] * ext_call.return_data[0] / 10^6 * ext_call.return_data[0] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                            revert with 'NH{q', 17
                        if 10000 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0] / 10^6 * ext_call.return_data[0] > -5251:
                            revert with 'NH{q', 17
                        return ext_call.return_data[0], 
                               (10000 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0] / 10^6 * ext_call.return_data[0]) + 5250 / 10500,
                               0 / 10^6 * ext_call.return_data[0] / 10^6 * (10000 * ext_call.return_data[0]) + 5000 / 10000
                    if 10^6 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000 and 10500 > -1 / 10^6 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000:
                        revert with 'NH{q', 17
                    if 5000 > !(10500 * 10^6 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000):
                        revert with 'NH{q', 17
                    if not 10^6 * ext_call.return_data[0]:
                        revert with 'NH{q', 18
                    if (10000 * ext_call.return_data[0]) + 5000 / 10000 and 10^6 > -1 / (10000 * ext_call.return_data[0]) + 5000 / 10000:
                        revert with 'NH{q', 17
                    if not 10^6 * (10000 * ext_call.return_data[0]) + 5000 / 10000:
                        revert with 'NH{q', 18
                    if (10500 * 10^6 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000) + 5000 / 10000 / 10^6 * ext_call.return_data[0] <= ext_call.return_data[0]:
                        return (10500 * 10^6 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000) + 5000 / 10000 / 10^6 * ext_call.return_data[0], 
                               (10000 * ext_call.return_data[0]) + 5000 / 10000,
                               (10500 * 10^6 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000) + 5000 / 10000 / 10^6 * ext_call.return_data[0] / 10^6 * (10000 * ext_call.return_data[0]) + 5000 / 10000
                    if ext_call.return_data[0] and 10^6 > -1 / ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    if ext_call.return_data[0] * ext_call.return_data[0] and 10^6 > -1 / ext_call.return_data[0] * ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    if not 10^6 * ext_call.return_data[0]:
                        revert with 'NH{q', 18
                    if 10^6 * ext_call.return_data[0] * ext_call.return_data[0] / 10^6 * ext_call.return_data[0] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                        revert with 'NH{q', 17
                    if 10000 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0] / 10^6 * ext_call.return_data[0] > -5251:
                        revert with 'NH{q', 17
                    return ext_call.return_data[0], 
                           (10000 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0] / 10^6 * ext_call.return_data[0]) + 5250 / 10500,
                           (10500 * 10^6 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000) + 5000 / 10000 / 10^6 * ext_call.return_data[0] / 10^6 * (10000 * ext_call.return_data[0]) + 5000 / 10000
                if address(arg1) == 0x63a72806098bd3d9520cc43356dd78afe5d386d9:
                    staticcall 0xd45b7c061016102f9fa220502908f2c0f1add1d7.0x70a08231 with:
                            gas gas_remaining wei
                           args address(arg3)
                else:
                    if address(arg1) == 0x50b7545627a5162f82a992c33b87adc75187b218:
                        staticcall 0x686bef2417b6dc32c50a3cbfbcc3bb60e1e9a15d.0x70a08231 with:
                                gas gas_remaining wei
                               args address(arg3)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        staticcall stor1.getAssetPrice(address arg1) with:
                                gas gas_remaining wei
                               args address(arg1)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        staticcall stor1.getAssetPrice(address arg1) with:
                                gas gas_remaining wei
                               args address(arg2)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not uint255(ext_call.return_data[0]):
                            if ext_call.return_data[0] and 10^6 > -1 / ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            if ext_call.return_data[0] and 100 * 10^6 > -1 / ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            if 100 * 10^6 * ext_call.return_data[0] and 0 > -1 / 100 * 10^6 * ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            revert with 'NH{q', 18
                        if uint255(ext_call.return_data[0]) and 5000 > -1 / 2 * ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if 5000 > !(10000 * ext_call.return_data[0]):
                            revert with 'NH{q', 17
                        if ext_call.return_data[0] and 10^6 > -1 / ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if ext_call.return_data[0] and 100 * 10^6 > -1 / ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if 100 * 10^6 * ext_call.return_data[0] and (10000 * ext_call.return_data[0]) + 5000 / 10000 > -1 / 100 * 10^6 * ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if not 100 * 10^6 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000:
                            if not 10^6 * ext_call.return_data[0]:
                                revert with 'NH{q', 18
                            if (10000 * ext_call.return_data[0]) + 5000 / 10000 and 10^6 > -1 / (10000 * ext_call.return_data[0]) + 5000 / 10000:
                                revert with 'NH{q', 17
                            if not 10^6 * (10000 * ext_call.return_data[0]) + 5000 / 10000:
                                revert with 'NH{q', 18
                            if 0 / 10^6 * ext_call.return_data[0] <= ext_call.return_data[0]:
                                return 0 / 10^6 * ext_call.return_data[0], 
                                       (10000 * ext_call.return_data[0]) + 5000 / 10000,
                                       0 / 10^6 * ext_call.return_data[0] / 10^6 * (10000 * ext_call.return_data[0]) + 5000 / 10000
                            if ext_call.return_data[0] and 100 * 10^6 > -1 / ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            if ext_call.return_data[0] * ext_call.return_data[0] and 10^6 > -1 / ext_call.return_data[0] * ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            if not 100 * 10^6 * ext_call.return_data[0]:
                                revert with 'NH{q', 18
                            if 10^6 * ext_call.return_data[0] * ext_call.return_data[0] / 100 * 10^6 * ext_call.return_data[0] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                                revert with 'NH{q', 17
                            if 10000 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0] / 100 * 10^6 * ext_call.return_data[0] > -5251:
                                revert with 'NH{q', 17
                            return ext_call.return_data[0], 
                                   (10000 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0] / 100 * 10^6 * ext_call.return_data[0]) + 5250 / 10500,
                                   0 / 10^6 * ext_call.return_data[0] / 10^6 * (10000 * ext_call.return_data[0]) + 5000 / 10000
                        if 100 * 10^6 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000 and 10500 > -1 / 100 * 10^6 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000:
                            revert with 'NH{q', 17
                        if 5000 > !(105 * 10^10 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000):
                            revert with 'NH{q', 17
                        if not 10^6 * ext_call.return_data[0]:
                            revert with 'NH{q', 18
                        if (10000 * ext_call.return_data[0]) + 5000 / 10000 and 10^6 > -1 / (10000 * ext_call.return_data[0]) + 5000 / 10000:
                            revert with 'NH{q', 17
                        if not 10^6 * (10000 * ext_call.return_data[0]) + 5000 / 10000:
                            revert with 'NH{q', 18
                        if (105 * 10^10 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000) + 5000 / 10000 / 10^6 * ext_call.return_data[0] <= ext_call.return_data[0]:
                            return (105 * 10^10 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000) + 5000 / 10000 / 10^6 * ext_call.return_data[0], 
                                   (10000 * ext_call.return_data[0]) + 5000 / 10000,
                                   (105 * 10^10 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000) + 5000 / 10000 / 10^6 * ext_call.return_data[0] / 10^6 * (10000 * ext_call.return_data[0]) + 5000 / 10000
                        if ext_call.return_data[0] and 100 * 10^6 > -1 / ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if ext_call.return_data[0] * ext_call.return_data[0] and 10^6 > -1 / ext_call.return_data[0] * ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if not 100 * 10^6 * ext_call.return_data[0]:
                            revert with 'NH{q', 18
                        if 10^6 * ext_call.return_data[0] * ext_call.return_data[0] / 100 * 10^6 * ext_call.return_data[0] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                            revert with 'NH{q', 17
                        if 10000 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0] / 100 * 10^6 * ext_call.return_data[0] > -5251:
                            revert with 'NH{q', 17
                        return ext_call.return_data[0], 
                               (10000 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0] / 100 * 10^6 * ext_call.return_data[0]) + 5250 / 10500,
                               (105 * 10^10 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000) + 5000 / 10000 / 10^6 * ext_call.return_data[0] / 10^6 * (10000 * ext_call.return_data[0]) + 5000 / 10000
                    if address(arg1) != 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                        staticcall stor1.getAssetPrice(address arg1) with:
                                gas gas_remaining wei
                               args address(arg1)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        staticcall stor1.getAssetPrice(address arg1) with:
                                gas gas_remaining wei
                               args address(arg2)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not uint255(ext_call.return_data[0]):
                            if ext_call.return_data[0] and 10^6 > -1 / ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            if ext_call.return_data[0] and 0 > -1 / ext_call.return_data[0]:
                                revert with 'NH{q', 17
                        else:
                            if uint255(ext_call.return_data[0]) and 5000 > -1 / 2 * ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            if 5000 > !(10000 * ext_call.return_data[0]):
                                revert with 'NH{q', 17
                            if ext_call.return_data[0] and 10^6 > -1 / ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            if ext_call.return_data[0] and 0 > -1 / ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            if False and (10000 * ext_call.return_data[0]) + 5000 / 10000 > 0:
                                revert with 'NH{q', 17
                            if 10^6 * ext_call.return_data[0]:
                                if (10000 * ext_call.return_data[0]) + 5000 / 10000 and 10^6 > -1 / (10000 * ext_call.return_data[0]) + 5000 / 10000:
                                    revert with 'NH{q', 17
                                if 10^6 * (10000 * ext_call.return_data[0]) + 5000 / 10000:
                                    if 0 / 10^6 * ext_call.return_data[0] <= 0:
                                        return 0 / 10^6 * ext_call.return_data[0], 
                                               (10000 * ext_call.return_data[0]) + 5000 / 10000,
                                               0 / 10^6 * ext_call.return_data[0] / 10^6 * (10000 * ext_call.return_data[0]) + 5000 / 10000
                                    if ext_call.return_data[0] and 0 > -1 / ext_call.return_data[0]:
                                        revert with 'NH{q', 17
                                    if ext_call.return_data[0] and 0 > -1 / ext_call.return_data[0]:
                                        revert with 'NH{q', 17
                        revert with 'NH{q', 18
                    staticcall 0xdfe521292ece2a4f44242efbcd66bc594ca9714b.0x70a08231 with:
                            gas gas_remaining wei
                           args address(arg3)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                staticcall stor1.getAssetPrice(address arg1) with:
                        gas gas_remaining wei
                       args address(arg1)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                staticcall stor1.getAssetPrice(address arg1) with:
                        gas gas_remaining wei
                       args address(arg2)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not uint255(ext_call.return_data[0]):
                    if ext_call.return_data[0] and 10^6 > -1 / ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    if ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    if 10^18 * ext_call.return_data[0] and 0 > -1 / 10^18 * ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    revert with 'NH{q', 18
                if uint255(ext_call.return_data[0]) and 5000 > -1 / 2 * ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if 5000 > !(10000 * ext_call.return_data[0]):
                    revert with 'NH{q', 17
                if ext_call.return_data[0] and 10^6 > -1 / ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if 10^18 * ext_call.return_data[0] and (10000 * ext_call.return_data[0]) + 5000 / 10000 > -1 / 10^18 * ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if not 10^18 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000:
                    if not 10^6 * ext_call.return_data[0]:
                        revert with 'NH{q', 18
                    if (10000 * ext_call.return_data[0]) + 5000 / 10000 and 10^6 > -1 / (10000 * ext_call.return_data[0]) + 5000 / 10000:
                        revert with 'NH{q', 17
                    if not 10^6 * (10000 * ext_call.return_data[0]) + 5000 / 10000:
                        revert with 'NH{q', 18
                    if 0 / 10^6 * ext_call.return_data[0] <= ext_call.return_data[0]:
                        return 0 / 10^6 * ext_call.return_data[0], 
                               (10000 * ext_call.return_data[0]) + 5000 / 10000,
                               0 / 10^6 * ext_call.return_data[0] / 10^6 * (10000 * ext_call.return_data[0]) + 5000 / 10000
                    if ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    if ext_call.return_data[0] * ext_call.return_data[0] and 10^6 > -1 / ext_call.return_data[0] * ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    if not 10^18 * ext_call.return_data[0]:
                        revert with 'NH{q', 18
                    if 10^6 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                        revert with 'NH{q', 17
                    if 10000 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] > -5501:
                        revert with 'NH{q', 17
                    return ext_call.return_data[0], 
                           (10000 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0]) + 5500 / 11000,
                           0 / 10^6 * ext_call.return_data[0] / 10^6 * (10000 * ext_call.return_data[0]) + 5000 / 10000
                if 10^18 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000 and 11000 > -1 / 10^18 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000:
                    revert with 'NH{q', 17
                if 5000 > !(11000 * 10^18 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000):
                    revert with 'NH{q', 17
                if not 10^6 * ext_call.return_data[0]:
                    revert with 'NH{q', 18
                if (10000 * ext_call.return_data[0]) + 5000 / 10000 and 10^6 > -1 / (10000 * ext_call.return_data[0]) + 5000 / 10000:
                    revert with 'NH{q', 17
                if not 10^6 * (10000 * ext_call.return_data[0]) + 5000 / 10000:
                    revert with 'NH{q', 18
                if (11000 * 10^18 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000) + 5000 / 10000 / 10^6 * ext_call.return_data[0] <= ext_call.return_data[0]:
                    return (11000 * 10^18 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000) + 5000 / 10000 / 10^6 * ext_call.return_data[0], 
                           (10000 * ext_call.return_data[0]) + 5000 / 10000,
                           (11000 * 10^18 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000) + 5000 / 10000 / 10^6 * ext_call.return_data[0] / 10^6 * (10000 * ext_call.return_data[0]) + 5000 / 10000
                if ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if ext_call.return_data[0] * ext_call.return_data[0] and 10^6 > -1 / ext_call.return_data[0] * ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if not 10^18 * ext_call.return_data[0]:
                    revert with 'NH{q', 18
                if 10^6 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                    revert with 'NH{q', 17
                if 10000 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] > -5501:
                    revert with 'NH{q', 17
                return ext_call.return_data[0], 
                       (10000 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0]) + 5500 / 11000,
                       (11000 * 10^18 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000) + 5000 / 10000 / 10^6 * ext_call.return_data[0] / 10^6 * (10000 * ext_call.return_data[0]) + 5000 / 10000
            if address(arg2) == 0x63a72806098bd3d9520cc43356dd78afe5d386d9:
                staticcall 0x8352e3fd18b8d84d3c8a1b538d788899073c7a8e.0x70a08231 with:
                        gas gas_remaining wei
                       args address(arg3)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                staticcall 0x66904e4f3f44e3925d22ceca401b6f2da085c98f.0x70a08231 with:
                        gas gas_remaining wei
                       args address(arg3)
            else:
                if address(arg2) == 0x50b7545627a5162f82a992c33b87adc75187b218:
                    staticcall 0x2dc0e35ec3ab070b8a175c829e23650ee604a9eb.0x70a08231 with:
                            gas gas_remaining wei
                           args address(arg3)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    staticcall 0x3484408989985d68c9700dc1cfdfeae6d2f658cf.0x70a08231 with:
                            gas gas_remaining wei
                           args address(arg3)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] > !ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    if address(arg1) == 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab:
                        staticcall 0x53f7c5869a859f0aec3d334ee8b4cf01e3492f21.0x70a08231 with:
                                gas gas_remaining wei
                               args address(arg3)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        staticcall stor1.getAssetPrice(address arg1) with:
                                gas gas_remaining wei
                               args address(arg1)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        staticcall stor1.getAssetPrice(address arg1) with:
                                gas gas_remaining wei
                               args address(arg2)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not uint255(ext_call.return_data[0]):
                            if ext_call.return_data[0] and 100 * 10^6 > -1 / ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            if ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            if 10^18 * ext_call.return_data[0] and 0 > -1 / 10^18 * ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            revert with 'NH{q', 18
                        if uint255(ext_call.return_data[0]) and 5000 > -1 / 2 * ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if 5000 > !(10000 * ext_call.return_data[0]):
                            revert with 'NH{q', 17
                        if ext_call.return_data[0] and 100 * 10^6 > -1 / ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if 10^18 * ext_call.return_data[0] and (10000 * ext_call.return_data[0]) + 5000 / 10000 > -1 / 10^18 * ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if not 10^18 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000:
                            if not 100 * 10^6 * ext_call.return_data[0]:
                                revert with 'NH{q', 18
                            if (10000 * ext_call.return_data[0]) + 5000 / 10000 and 100 * 10^6 > -1 / (10000 * ext_call.return_data[0]) + 5000 / 10000:
                                revert with 'NH{q', 17
                            if not 100 * 10^6 * (10000 * ext_call.return_data[0]) + 5000 / 10000:
                                revert with 'NH{q', 18
                            if 0 / 100 * 10^6 * ext_call.return_data[0] <= ext_call.return_data[0]:
                                return 0 / 100 * 10^6 * ext_call.return_data[0], 
                                       (10000 * ext_call.return_data[0]) + 5000 / 10000,
                                       0 / 100 * 10^6 * ext_call.return_data[0] / 100 * 10^6 * (10000 * ext_call.return_data[0]) + 5000 / 10000
                            if ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            if ext_call.return_data[0] * ext_call.return_data[0] and 100 * 10^6 > -1 / ext_call.return_data[0] * ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            if not 10^18 * ext_call.return_data[0]:
                                revert with 'NH{q', 18
                            if 100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                                revert with 'NH{q', 17
                            if 10000 * 100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] > -5251:
                                revert with 'NH{q', 17
                            return ext_call.return_data[0], 
                                   (10000 * 100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0]) + 5250 / 10500,
                                   0 / 100 * 10^6 * ext_call.return_data[0] / 100 * 10^6 * (10000 * ext_call.return_data[0]) + 5000 / 10000
                        if 10^18 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000 and 10500 > -1 / 10^18 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000:
                            revert with 'NH{q', 17
                        if 5000 > !(10500 * 10^18 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000):
                            revert with 'NH{q', 17
                        if not 100 * 10^6 * ext_call.return_data[0]:
                            revert with 'NH{q', 18
                        if (10000 * ext_call.return_data[0]) + 5000 / 10000 and 100 * 10^6 > -1 / (10000 * ext_call.return_data[0]) + 5000 / 10000:
                            revert with 'NH{q', 17
                        if not 100 * 10^6 * (10000 * ext_call.return_data[0]) + 5000 / 10000:
                            revert with 'NH{q', 18
                        if (10500 * 10^18 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000) + 5000 / 10000 / 100 * 10^6 * ext_call.return_data[0] <= ext_call.return_data[0]:
                            return (10500 * 10^18 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000) + 5000 / 10000 / 100 * 10^6 * ext_call.return_data[0], 
                                   (10000 * ext_call.return_data[0]) + 5000 / 10000,
                                   (10500 * 10^18 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000) + 5000 / 10000 / 100 * 10^6 * ext_call.return_data[0] / 100 * 10^6 * (10000 * ext_call.return_data[0]) + 5000 / 10000
                        if ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if ext_call.return_data[0] * ext_call.return_data[0] and 100 * 10^6 > -1 / ext_call.return_data[0] * ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if not 10^18 * ext_call.return_data[0]:
                            revert with 'NH{q', 18
                        if 100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                            revert with 'NH{q', 17
                        if 10000 * 100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] > -5251:
                            revert with 'NH{q', 17
                        return ext_call.return_data[0], 
                               (10000 * 100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0]) + 5250 / 10500,
                               (10500 * 10^18 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000) + 5000 / 10000 / 100 * 10^6 * ext_call.return_data[0] / 100 * 10^6 * (10000 * ext_call.return_data[0]) + 5000 / 10000
                    if address(arg1) == 0xd586e7f844cea2f87f50152665bcbc2c279d8d70:
                        staticcall 0x47afa96cdc9fab46904a55a6ad4bf6660b53c38a.0x70a08231 with:
                                gas gas_remaining wei
                               args address(arg3)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        staticcall stor1.getAssetPrice(address arg1) with:
                                gas gas_remaining wei
                               args address(arg1)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        staticcall stor1.getAssetPrice(address arg1) with:
                                gas gas_remaining wei
                               args address(arg2)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not uint255(ext_call.return_data[0]):
                            if ext_call.return_data[0] and 100 * 10^6 > -1 / ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            if ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            if 10^18 * ext_call.return_data[0] and 0 > -1 / 10^18 * ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            revert with 'NH{q', 18
                        if uint255(ext_call.return_data[0]) and 5000 > -1 / 2 * ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if 5000 > !(10000 * ext_call.return_data[0]):
                            revert with 'NH{q', 17
                        if ext_call.return_data[0] and 100 * 10^6 > -1 / ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if 10^18 * ext_call.return_data[0] and (10000 * ext_call.return_data[0]) + 5000 / 10000 > -1 / 10^18 * ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if not 10^18 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000:
                            if not 100 * 10^6 * ext_call.return_data[0]:
                                revert with 'NH{q', 18
                            if (10000 * ext_call.return_data[0]) + 5000 / 10000 and 100 * 10^6 > -1 / (10000 * ext_call.return_data[0]) + 5000 / 10000:
                                revert with 'NH{q', 17
                            if not 100 * 10^6 * (10000 * ext_call.return_data[0]) + 5000 / 10000:
                                revert with 'NH{q', 18
                            if 0 / 100 * 10^6 * ext_call.return_data[0] <= ext_call.return_data[0]:
                                return 0 / 100 * 10^6 * ext_call.return_data[0], 
                                       (10000 * ext_call.return_data[0]) + 5000 / 10000,
                                       0 / 100 * 10^6 * ext_call.return_data[0] / 100 * 10^6 * (10000 * ext_call.return_data[0]) + 5000 / 10000
                            if ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            if ext_call.return_data[0] * ext_call.return_data[0] and 100 * 10^6 > -1 / ext_call.return_data[0] * ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            if not 10^18 * ext_call.return_data[0]:
                                revert with 'NH{q', 18
                            if 100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                                revert with 'NH{q', 17
                            if 10000 * 100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] > -5251:
                                revert with 'NH{q', 17
                            return ext_call.return_data[0], 
                                   (10000 * 100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0]) + 5250 / 10500,
                                   0 / 100 * 10^6 * ext_call.return_data[0] / 100 * 10^6 * (10000 * ext_call.return_data[0]) + 5000 / 10000
                        if 10^18 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000 and 10500 > -1 / 10^18 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000:
                            revert with 'NH{q', 17
                        if 5000 > !(10500 * 10^18 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000):
                            revert with 'NH{q', 17
                        if not 100 * 10^6 * ext_call.return_data[0]:
                            revert with 'NH{q', 18
                        if (10000 * ext_call.return_data[0]) + 5000 / 10000 and 100 * 10^6 > -1 / (10000 * ext_call.return_data[0]) + 5000 / 10000:
                            revert with 'NH{q', 17
                        if not 100 * 10^6 * (10000 * ext_call.return_data[0]) + 5000 / 10000:
                            revert with 'NH{q', 18
                        if (10500 * 10^18 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000) + 5000 / 10000 / 100 * 10^6 * ext_call.return_data[0] <= ext_call.return_data[0]:
                            return (10500 * 10^18 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000) + 5000 / 10000 / 100 * 10^6 * ext_call.return_data[0], 
                                   (10000 * ext_call.return_data[0]) + 5000 / 10000,
                                   (10500 * 10^18 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000) + 5000 / 10000 / 100 * 10^6 * ext_call.return_data[0] / 100 * 10^6 * (10000 * ext_call.return_data[0]) + 5000 / 10000
                        if ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if ext_call.return_data[0] * ext_call.return_data[0] and 100 * 10^6 > -1 / ext_call.return_data[0] * ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if not 10^18 * ext_call.return_data[0]:
                            revert with 'NH{q', 18
                        if 100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                            revert with 'NH{q', 17
                        if 10000 * 100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] > -5251:
                            revert with 'NH{q', 17
                        return ext_call.return_data[0], 
                               (10000 * 100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0]) + 5250 / 10500,
                               (10500 * 10^18 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000) + 5000 / 10000 / 100 * 10^6 * ext_call.return_data[0] / 100 * 10^6 * (10000 * ext_call.return_data[0]) + 5000 / 10000
                    if address(arg1) == 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664:
                        staticcall 0x46a51127c3ce23fb7ab1de06226147f446e4a857.0x70a08231 with:
                                gas gas_remaining wei
                               args address(arg3)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        staticcall stor1.getAssetPrice(address arg1) with:
                                gas gas_remaining wei
                               args address(arg1)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        staticcall stor1.getAssetPrice(address arg1) with:
                                gas gas_remaining wei
                               args address(arg2)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not uint255(ext_call.return_data[0]):
                            if ext_call.return_data[0] and 100 * 10^6 > -1 / ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            if ext_call.return_data[0] and 10^6 > -1 / ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            if 10^6 * ext_call.return_data[0] and 0 > -1 / 10^6 * ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            revert with 'NH{q', 18
                        if uint255(ext_call.return_data[0]) and 5000 > -1 / 2 * ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if 5000 > !(10000 * ext_call.return_data[0]):
                            revert with 'NH{q', 17
                        if ext_call.return_data[0] and 100 * 10^6 > -1 / ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if ext_call.return_data[0] and 10^6 > -1 / ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if 10^6 * ext_call.return_data[0] and (10000 * ext_call.return_data[0]) + 5000 / 10000 > -1 / 10^6 * ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if not 10^6 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000:
                            if not 100 * 10^6 * ext_call.return_data[0]:
                                revert with 'NH{q', 18
                            if (10000 * ext_call.return_data[0]) + 5000 / 10000 and 100 * 10^6 > -1 / (10000 * ext_call.return_data[0]) + 5000 / 10000:
                                revert with 'NH{q', 17
                            if not 100 * 10^6 * (10000 * ext_call.return_data[0]) + 5000 / 10000:
                                revert with 'NH{q', 18
                            if 0 / 100 * 10^6 * ext_call.return_data[0] <= ext_call.return_data[0]:
                                return 0 / 100 * 10^6 * ext_call.return_data[0], 
                                       (10000 * ext_call.return_data[0]) + 5000 / 10000,
                                       0 / 100 * 10^6 * ext_call.return_data[0] / 100 * 10^6 * (10000 * ext_call.return_data[0]) + 5000 / 10000
                            if ext_call.return_data[0] and 10^6 > -1 / ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            if ext_call.return_data[0] * ext_call.return_data[0] and 100 * 10^6 > -1 / ext_call.return_data[0] * ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            if not 10^6 * ext_call.return_data[0]:
                                revert with 'NH{q', 18
                            if 100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0] / 10^6 * ext_call.return_data[0] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                                revert with 'NH{q', 17
                            if 10000 * 100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0] / 10^6 * ext_call.return_data[0] > -5251:
                                revert with 'NH{q', 17
                            return ext_call.return_data[0], 
                                   (10000 * 100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0] / 10^6 * ext_call.return_data[0]) + 5250 / 10500,
                                   0 / 100 * 10^6 * ext_call.return_data[0] / 100 * 10^6 * (10000 * ext_call.return_data[0]) + 5000 / 10000
                        if 10^6 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000 and 10500 > -1 / 10^6 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000:
                            revert with 'NH{q', 17
                        if 5000 > !(10500 * 10^6 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000):
                            revert with 'NH{q', 17
                        if not 100 * 10^6 * ext_call.return_data[0]:
                            revert with 'NH{q', 18
                        if (10000 * ext_call.return_data[0]) + 5000 / 10000 and 100 * 10^6 > -1 / (10000 * ext_call.return_data[0]) + 5000 / 10000:
                            revert with 'NH{q', 17
                        if not 100 * 10^6 * (10000 * ext_call.return_data[0]) + 5000 / 10000:
                            revert with 'NH{q', 18
                        if (10500 * 10^6 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000) + 5000 / 10000 / 100 * 10^6 * ext_call.return_data[0] <= ext_call.return_data[0]:
                            return (10500 * 10^6 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000) + 5000 / 10000 / 100 * 10^6 * ext_call.return_data[0], 
                                   (10000 * ext_call.return_data[0]) + 5000 / 10000,
                                   (10500 * 10^6 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000) + 5000 / 10000 / 100 * 10^6 * ext_call.return_data[0] / 100 * 10^6 * (10000 * ext_call.return_data[0]) + 5000 / 10000
                        if ext_call.return_data[0] and 10^6 > -1 / ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if ext_call.return_data[0] * ext_call.return_data[0] and 100 * 10^6 > -1 / ext_call.return_data[0] * ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if not 10^6 * ext_call.return_data[0]:
                            revert with 'NH{q', 18
                        if 100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0] / 10^6 * ext_call.return_data[0] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                            revert with 'NH{q', 17
                        if 10000 * 100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0] / 10^6 * ext_call.return_data[0] > -5251:
                            revert with 'NH{q', 17
                        return ext_call.return_data[0], 
                               (10000 * 100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0] / 10^6 * ext_call.return_data[0]) + 5250 / 10500,
                               (10500 * 10^6 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000) + 5000 / 10000 / 100 * 10^6 * ext_call.return_data[0] / 100 * 10^6 * (10000 * ext_call.return_data[0]) + 5000 / 10000
                    if address(arg1) == 0x63a72806098bd3d9520cc43356dd78afe5d386d9:
                        staticcall 0xd45b7c061016102f9fa220502908f2c0f1add1d7.0x70a08231 with:
                                gas gas_remaining wei
                               args address(arg3)
                    else:
                        if address(arg1) == 0x50b7545627a5162f82a992c33b87adc75187b218:
                            staticcall 0x686bef2417b6dc32c50a3cbfbcc3bb60e1e9a15d.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(arg3)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            staticcall stor1.getAssetPrice(address arg1) with:
                                    gas gas_remaining wei
                                   args address(arg1)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            staticcall stor1.getAssetPrice(address arg1) with:
                                    gas gas_remaining wei
                                   args address(arg2)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not uint255(ext_call.return_data[0]):
                                if ext_call.return_data[0] and 100 * 10^6 > -1 / ext_call.return_data[0]:
                                    revert with 'NH{q', 17
                                if ext_call.return_data[0] and 100 * 10^6 > -1 / ext_call.return_data[0]:
                                    revert with 'NH{q', 17
                                if 100 * 10^6 * ext_call.return_data[0] and 0 > -1 / 100 * 10^6 * ext_call.return_data[0]:
                                    revert with 'NH{q', 17
                                revert with 'NH{q', 18
                            if uint255(ext_call.return_data[0]) and 5000 > -1 / 2 * ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            if 5000 > !(10000 * ext_call.return_data[0]):
                                revert with 'NH{q', 17
                            if ext_call.return_data[0] and 100 * 10^6 > -1 / ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            if ext_call.return_data[0] and 100 * 10^6 > -1 / ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            if 100 * 10^6 * ext_call.return_data[0] and (10000 * ext_call.return_data[0]) + 5000 / 10000 > -1 / 100 * 10^6 * ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            if not 100 * 10^6 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000:
                                if not 100 * 10^6 * ext_call.return_data[0]:
                                    revert with 'NH{q', 18
                                if (10000 * ext_call.return_data[0]) + 5000 / 10000 and 100 * 10^6 > -1 / (10000 * ext_call.return_data[0]) + 5000 / 10000:
                                    revert with 'NH{q', 17
                                if not 100 * 10^6 * (10000 * ext_call.return_data[0]) + 5000 / 10000:
                                    revert with 'NH{q', 18
                                if 0 / 100 * 10^6 * ext_call.return_data[0] <= ext_call.return_data[0]:
                                    return 0 / 100 * 10^6 * ext_call.return_data[0], 
                                           (10000 * ext_call.return_data[0]) + 5000 / 10000,
                                           0 / 100 * 10^6 * ext_call.return_data[0] / 100 * 10^6 * (10000 * ext_call.return_data[0]) + 5000 / 10000
                                if ext_call.return_data[0] and 100 * 10^6 > -1 / ext_call.return_data[0]:
                                    revert with 'NH{q', 17
                                if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                                    revert with 'NH{q', 17
                                if ext_call.return_data[0] * ext_call.return_data[0] and 100 * 10^6 > -1 / ext_call.return_data[0] * ext_call.return_data[0]:
                                    revert with 'NH{q', 17
                                if not 100 * 10^6 * ext_call.return_data[0]:
                                    revert with 'NH{q', 18
                                if 100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0] / 100 * 10^6 * ext_call.return_data[0] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                                    revert with 'NH{q', 17
                                if 10000 * 100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0] / 100 * 10^6 * ext_call.return_data[0] > -5251:
                                    revert with 'NH{q', 17
                                return ext_call.return_data[0], 
                                       (10000 * 100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0] / 100 * 10^6 * ext_call.return_data[0]) + 5250 / 10500,
                                       0 / 100 * 10^6 * ext_call.return_data[0] / 100 * 10^6 * (10000 * ext_call.return_data[0]) + 5000 / 10000
                            if 100 * 10^6 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000 and 10500 > -1 / 100 * 10^6 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000:
                                revert with 'NH{q', 17
                            if 5000 > !(105 * 10^10 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000):
                                revert with 'NH{q', 17
                            if not 100 * 10^6 * ext_call.return_data[0]:
                                revert with 'NH{q', 18
                            if (10000 * ext_call.return_data[0]) + 5000 / 10000 and 100 * 10^6 > -1 / (10000 * ext_call.return_data[0]) + 5000 / 10000:
                                revert with 'NH{q', 17
                            if not 100 * 10^6 * (10000 * ext_call.return_data[0]) + 5000 / 10000:
                                revert with 'NH{q', 18
                            if (105 * 10^10 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000) + 5000 / 10000 / 100 * 10^6 * ext_call.return_data[0] <= ext_call.return_data[0]:
                                return (105 * 10^10 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000) + 5000 / 10000 / 100 * 10^6 * ext_call.return_data[0], 
                                       (10000 * ext_call.return_data[0]) + 5000 / 10000,
                                       (105 * 10^10 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000) + 5000 / 10000 / 100 * 10^6 * ext_call.return_data[0] / 100 * 10^6 * (10000 * ext_call.return_data[0]) + 5000 / 10000
                            if ext_call.return_data[0] and 100 * 10^6 > -1 / ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            if ext_call.return_data[0] * ext_call.return_data[0] and 100 * 10^6 > -1 / ext_call.return_data[0] * ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            if not 100 * 10^6 * ext_call.return_data[0]:
                                revert with 'NH{q', 18
                            if 100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0] / 100 * 10^6 * ext_call.return_data[0] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                                revert with 'NH{q', 17
                            if 10000 * 100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0] / 100 * 10^6 * ext_call.return_data[0] > -5251:
                                revert with 'NH{q', 17
                            return ext_call.return_data[0], 
                                   (10000 * 100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0] / 100 * 10^6 * ext_call.return_data[0]) + 5250 / 10500,
                                   (105 * 10^10 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000) + 5000 / 10000 / 100 * 10^6 * ext_call.return_data[0] / 100 * 10^6 * (10000 * ext_call.return_data[0]) + 5000 / 10000
                        if address(arg1) != 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                            staticcall stor1.getAssetPrice(address arg1) with:
                                    gas gas_remaining wei
                                   args address(arg1)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            staticcall stor1.getAssetPrice(address arg1) with:
                                    gas gas_remaining wei
                                   args address(arg2)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not uint255(ext_call.return_data[0]):
                                if ext_call.return_data[0] and 100 * 10^6 > -1 / ext_call.return_data[0]:
                                    revert with 'NH{q', 17
                                if ext_call.return_data[0] and 0 > -1 / ext_call.return_data[0]:
                                    revert with 'NH{q', 17
                            else:
                                if uint255(ext_call.return_data[0]) and 5000 > -1 / 2 * ext_call.return_data[0]:
                                    revert with 'NH{q', 17
                                if 5000 > !(10000 * ext_call.return_data[0]):
                                    revert with 'NH{q', 17
                                if ext_call.return_data[0] and 100 * 10^6 > -1 / ext_call.return_data[0]:
                                    revert with 'NH{q', 17
                                if ext_call.return_data[0] and 0 > -1 / ext_call.return_data[0]:
                                    revert with 'NH{q', 17
                                if False and (10000 * ext_call.return_data[0]) + 5000 / 10000 > 0:
                                    revert with 'NH{q', 17
                                if 100 * 10^6 * ext_call.return_data[0]:
                                    if (10000 * ext_call.return_data[0]) + 5000 / 10000 and 100 * 10^6 > -1 / (10000 * ext_call.return_data[0]) + 5000 / 10000:
                                        revert with 'NH{q', 17
                                    if 100 * 10^6 * (10000 * ext_call.return_data[0]) + 5000 / 10000:
                                        if 0 / 100 * 10^6 * ext_call.return_data[0] <= 0:
                                            return 0 / 100 * 10^6 * ext_call.return_data[0], 
                                                   (10000 * ext_call.return_data[0]) + 5000 / 10000,
                                                   0 / 100 * 10^6 * ext_call.return_data[0] / 100 * 10^6 * (10000 * ext_call.return_data[0]) + 5000 / 10000
                                        if ext_call.return_data[0] and 0 > -1 / ext_call.return_data[0]:
                                            revert with 'NH{q', 17
                                        if ext_call.return_data[0] and 0 > -1 / ext_call.return_data[0]:
                                            revert with 'NH{q', 17
                            revert with 'NH{q', 18
                        staticcall 0xdfe521292ece2a4f44242efbcd66bc594ca9714b.0x70a08231 with:
                                gas gas_remaining wei
                               args address(arg3)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    staticcall stor1.getAssetPrice(address arg1) with:
                            gas gas_remaining wei
                           args address(arg1)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    staticcall stor1.getAssetPrice(address arg1) with:
                            gas gas_remaining wei
                           args address(arg2)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not uint255(ext_call.return_data[0]):
                        if ext_call.return_data[0] and 100 * 10^6 > -1 / ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if 10^18 * ext_call.return_data[0] and 0 > -1 / 10^18 * ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        revert with 'NH{q', 18
                    if uint255(ext_call.return_data[0]) and 5000 > -1 / 2 * ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    if 5000 > !(10000 * ext_call.return_data[0]):
                        revert with 'NH{q', 17
                    if ext_call.return_data[0] and 100 * 10^6 > -1 / ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    if ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    if 10^18 * ext_call.return_data[0] and (10000 * ext_call.return_data[0]) + 5000 / 10000 > -1 / 10^18 * ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    if not 10^18 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000:
                        if not 100 * 10^6 * ext_call.return_data[0]:
                            revert with 'NH{q', 18
                        if (10000 * ext_call.return_data[0]) + 5000 / 10000 and 100 * 10^6 > -1 / (10000 * ext_call.return_data[0]) + 5000 / 10000:
                            revert with 'NH{q', 17
                        if not 100 * 10^6 * (10000 * ext_call.return_data[0]) + 5000 / 10000:
                            revert with 'NH{q', 18
                        if 0 / 100 * 10^6 * ext_call.return_data[0] <= ext_call.return_data[0]:
                            return 0 / 100 * 10^6 * ext_call.return_data[0], 
                                   (10000 * ext_call.return_data[0]) + 5000 / 10000,
                                   0 / 100 * 10^6 * ext_call.return_data[0] / 100 * 10^6 * (10000 * ext_call.return_data[0]) + 5000 / 10000
                        if ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if ext_call.return_data[0] * ext_call.return_data[0] and 100 * 10^6 > -1 / ext_call.return_data[0] * ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if not 10^18 * ext_call.return_data[0]:
                            revert with 'NH{q', 18
                        if 100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                            revert with 'NH{q', 17
                        if 10000 * 100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] > -5501:
                            revert with 'NH{q', 17
                        return ext_call.return_data[0], 
                               (10000 * 100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0]) + 5500 / 11000,
                               0 / 100 * 10^6 * ext_call.return_data[0] / 100 * 10^6 * (10000 * ext_call.return_data[0]) + 5000 / 10000
                    if 10^18 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000 and 11000 > -1 / 10^18 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000:
                        revert with 'NH{q', 17
                    if 5000 > !(11000 * 10^18 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000):
                        revert with 'NH{q', 17
                    if not 100 * 10^6 * ext_call.return_data[0]:
                        revert with 'NH{q', 18
                    if (10000 * ext_call.return_data[0]) + 5000 / 10000 and 100 * 10^6 > -1 / (10000 * ext_call.return_data[0]) + 5000 / 10000:
                        revert with 'NH{q', 17
                    if not 100 * 10^6 * (10000 * ext_call.return_data[0]) + 5000 / 10000:
                        revert with 'NH{q', 18
                    if (11000 * 10^18 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000) + 5000 / 10000 / 100 * 10^6 * ext_call.return_data[0] <= ext_call.return_data[0]:
                        return (11000 * 10^18 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000) + 5000 / 10000 / 100 * 10^6 * ext_call.return_data[0], 
                               (10000 * ext_call.return_data[0]) + 5000 / 10000,
                               (11000 * 10^18 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000) + 5000 / 10000 / 100 * 10^6 * ext_call.return_data[0] / 100 * 10^6 * (10000 * ext_call.return_data[0]) + 5000 / 10000
                    if ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    if ext_call.return_data[0] * ext_call.return_data[0] and 100 * 10^6 > -1 / ext_call.return_data[0] * ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    if not 10^18 * ext_call.return_data[0]:
                        revert with 'NH{q', 18
                    if 100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                        revert with 'NH{q', 17
                    if 10000 * 100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] > -5501:
                        revert with 'NH{q', 17
                    return ext_call.return_data[0], 
                           (10000 * 100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0]) + 5500 / 11000,
                           (11000 * 10^18 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000) + 5000 / 10000 / 100 * 10^6 * ext_call.return_data[0] / 100 * 10^6 * (10000 * ext_call.return_data[0]) + 5000 / 10000
                if address(arg2) != 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                    if address(arg1) == 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab:
                        staticcall 0x53f7c5869a859f0aec3d334ee8b4cf01e3492f21.0x70a08231 with:
                                gas gas_remaining wei
                               args address(arg3)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        staticcall stor1.getAssetPrice(address arg1) with:
                                gas gas_remaining wei
                               args address(arg1)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        staticcall stor1.getAssetPrice(address arg1) with:
                                gas gas_remaining wei
                               args address(arg2)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] and 0 > -1 / ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if 10^18 * ext_call.return_data[0] and 0 > -1 / 10^18 * ext_call.return_data[0]:
                            revert with 'NH{q', 17
                    else:
                        if address(arg1) == 0xd586e7f844cea2f87f50152665bcbc2c279d8d70:
                            staticcall 0x47afa96cdc9fab46904a55a6ad4bf6660b53c38a.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(arg3)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            staticcall stor1.getAssetPrice(address arg1) with:
                                    gas gas_remaining wei
                                   args address(arg1)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            staticcall stor1.getAssetPrice(address arg1) with:
                                    gas gas_remaining wei
                                   args address(arg2)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] and 0 > -1 / ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            if ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            if 10^18 * ext_call.return_data[0] and 0 > -1 / 10^18 * ext_call.return_data[0]:
                                revert with 'NH{q', 17
                        else:
                            if address(arg1) == 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664:
                                staticcall 0x46a51127c3ce23fb7ab1de06226147f446e4a857.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(arg3)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                staticcall stor1.getAssetPrice(address arg1) with:
                                        gas gas_remaining wei
                                       args address(arg1)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                staticcall stor1.getAssetPrice(address arg1) with:
                                        gas gas_remaining wei
                                       args address(arg2)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] and 0 > -1 / ext_call.return_data[0]:
                                    revert with 'NH{q', 17
                                if ext_call.return_data[0] and 10^6 > -1 / ext_call.return_data[0]:
                                    revert with 'NH{q', 17
                                if 10^6 * ext_call.return_data[0] and 0 > -1 / 10^6 * ext_call.return_data[0]:
                                    revert with 'NH{q', 17
                            else:
                                if address(arg1) == 0x63a72806098bd3d9520cc43356dd78afe5d386d9:
                                    staticcall 0xd45b7c061016102f9fa220502908f2c0f1add1d7.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(arg3)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    staticcall stor1.getAssetPrice(address arg1) with:
                                            gas gas_remaining wei
                                           args address(arg1)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    staticcall stor1.getAssetPrice(address arg1) with:
                                            gas gas_remaining wei
                                           args address(arg2)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] and 0 > -1 / ext_call.return_data[0]:
                                        revert with 'NH{q', 17
                                    if ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0]:
                                        revert with 'NH{q', 17
                                    if 10^18 * ext_call.return_data[0] and 0 > -1 / 10^18 * ext_call.return_data[0]:
                                        revert with 'NH{q', 17
                                else:
                                    if address(arg1) == 0x50b7545627a5162f82a992c33b87adc75187b218:
                                        staticcall 0x686bef2417b6dc32c50a3cbfbcc3bb60e1e9a15d.0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(arg3)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        staticcall stor1.getAssetPrice(address arg1) with:
                                                gas gas_remaining wei
                                               args address(arg1)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        staticcall stor1.getAssetPrice(address arg1) with:
                                                gas gas_remaining wei
                                               args address(arg2)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0] and 0 > -1 / ext_call.return_data[0]:
                                            revert with 'NH{q', 17
                                        if ext_call.return_data[0] and 100 * 10^6 > -1 / ext_call.return_data[0]:
                                            revert with 'NH{q', 17
                                        if 100 * 10^6 * ext_call.return_data[0] and 0 > -1 / 100 * 10^6 * ext_call.return_data[0]:
                                            revert with 'NH{q', 17
                                    else:
                                        if address(arg1) != 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                                            staticcall stor1.getAssetPrice(address arg1) with:
                                                    gas gas_remaining wei
                                                   args address(arg1)
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            staticcall stor1.getAssetPrice(address arg1) with:
                                                    gas gas_remaining wei
                                                   args address(arg2)
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0] and 0 > -1 / ext_call.return_data[0]:
                                                revert with 'NH{q', 17
                                            if ext_call.return_data[0] and 0 > -1 / ext_call.return_data[0]:
                                                revert with 'NH{q', 17
                                        else:
                                            staticcall 0xdfe521292ece2a4f44242efbcd66bc594ca9714b.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args address(arg3)
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            staticcall stor1.getAssetPrice(address arg1) with:
                                                    gas gas_remaining wei
                                                   args address(arg1)
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            staticcall stor1.getAssetPrice(address arg1) with:
                                                    gas gas_remaining wei
                                                   args address(arg2)
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0] and 0 > -1 / ext_call.return_data[0]:
                                                revert with 'NH{q', 17
                                            if ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0]:
                                                revert with 'NH{q', 17
                                            if 10^18 * ext_call.return_data[0] and 0 > -1 / 10^18 * ext_call.return_data[0]:
                                                revert with 'NH{q', 17
                    revert with 'NH{q', 18
                staticcall 0x66a0fe52fb629a6cb4d10b8580afdffe888f5fd4.0x70a08231 with:
                        gas gas_remaining wei
                       args address(arg3)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                staticcall 0x2920cd5b8a160b2addb00ec5d5f4112255d4ae75.0x70a08231 with:
                        gas gas_remaining wei
                       args address(arg3)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > !ext_call.return_data[0]:
        revert with 'NH{q', 17
    if address(arg1) == 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab:
        staticcall 0x53f7c5869a859f0aec3d334ee8b4cf01e3492f21.0x70a08231 with:
                gas gas_remaining wei
               args address(arg3)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        staticcall stor1.getAssetPrice(address arg1) with:
                gas gas_remaining wei
               args address(arg1)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        staticcall stor1.getAssetPrice(address arg1) with:
                gas gas_remaining wei
               args address(arg2)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not uint255(ext_call.return_data[0]):
            if ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0]:
                revert with 'NH{q', 17
            if ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0]:
                revert with 'NH{q', 17
            if 10^18 * ext_call.return_data[0] and 0 > -1 / 10^18 * ext_call.return_data[0]:
                revert with 'NH{q', 17
            revert with 'NH{q', 18
        if uint255(ext_call.return_data[0]) and 5000 > -1 / 2 * ext_call.return_data[0]:
            revert with 'NH{q', 17
        if 5000 > !(10000 * ext_call.return_data[0]):
            revert with 'NH{q', 17
        if ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0]:
            revert with 'NH{q', 17
        if ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0]:
            revert with 'NH{q', 17
        if 10^18 * ext_call.return_data[0] and (10000 * ext_call.return_data[0]) + 5000 / 10000 > -1 / 10^18 * ext_call.return_data[0]:
            revert with 'NH{q', 17
        if not 10^18 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000:
            if not 10^18 * ext_call.return_data[0]:
                revert with 'NH{q', 18
            if (10000 * ext_call.return_data[0]) + 5000 / 10000 and 10^18 > -1 / (10000 * ext_call.return_data[0]) + 5000 / 10000:
                revert with 'NH{q', 17
            if not 10^18 * (10000 * ext_call.return_data[0]) + 5000 / 10000:
                revert with 'NH{q', 18
            if 0 / 10^18 * ext_call.return_data[0] <= ext_call.return_data[0]:
                return 0 / 10^18 * ext_call.return_data[0], 
                       (10000 * ext_call.return_data[0]) + 5000 / 10000,
                       0 / 10^18 * ext_call.return_data[0] / 10^18 * (10000 * ext_call.return_data[0]) + 5000 / 10000
            if ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0]:
                revert with 'NH{q', 17
            if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                revert with 'NH{q', 17
            if ext_call.return_data[0] * ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0] * ext_call.return_data[0]:
                revert with 'NH{q', 17
            if not 10^18 * ext_call.return_data[0]:
                revert with 'NH{q', 18
            if 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                revert with 'NH{q', 17
            if 10000 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] > -5251:
                revert with 'NH{q', 17
            return ext_call.return_data[0], 
                   (10000 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0]) + 5250 / 10500,
                   0 / 10^18 * ext_call.return_data[0] / 10^18 * (10000 * ext_call.return_data[0]) + 5000 / 10000
        if 10^18 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000 and 10500 > -1 / 10^18 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000:
            revert with 'NH{q', 17
        if 5000 > !(10500 * 10^18 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000):
            revert with 'NH{q', 17
        if not 10^18 * ext_call.return_data[0]:
            revert with 'NH{q', 18
        if (10000 * ext_call.return_data[0]) + 5000 / 10000 and 10^18 > -1 / (10000 * ext_call.return_data[0]) + 5000 / 10000:
            revert with 'NH{q', 17
        if not 10^18 * (10000 * ext_call.return_data[0]) + 5000 / 10000:
            revert with 'NH{q', 18
        if (10500 * 10^18 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000) + 5000 / 10000 / 10^18 * ext_call.return_data[0] <= ext_call.return_data[0]:
            return (10500 * 10^18 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000) + 5000 / 10000 / 10^18 * ext_call.return_data[0], 
                   (10000 * ext_call.return_data[0]) + 5000 / 10000,
                   (10500 * 10^18 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000) + 5000 / 10000 / 10^18 * ext_call.return_data[0] / 10^18 * (10000 * ext_call.return_data[0]) + 5000 / 10000
        if ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0]:
            revert with 'NH{q', 17
        if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
            revert with 'NH{q', 17
        if ext_call.return_data[0] * ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0] * ext_call.return_data[0]:
            revert with 'NH{q', 17
        if not 10^18 * ext_call.return_data[0]:
            revert with 'NH{q', 18
        if 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
            revert with 'NH{q', 17
        if 10000 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] > -5251:
            revert with 'NH{q', 17
        return ext_call.return_data[0], 
               (10000 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0]) + 5250 / 10500,
               (10500 * 10^18 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000) + 5000 / 10000 / 10^18 * ext_call.return_data[0] / 10^18 * (10000 * ext_call.return_data[0]) + 5000 / 10000
    if address(arg1) == 0xd586e7f844cea2f87f50152665bcbc2c279d8d70:
        staticcall 0x47afa96cdc9fab46904a55a6ad4bf6660b53c38a.0x70a08231 with:
                gas gas_remaining wei
               args address(arg3)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        staticcall stor1.getAssetPrice(address arg1) with:
                gas gas_remaining wei
               args address(arg1)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        staticcall stor1.getAssetPrice(address arg1) with:
                gas gas_remaining wei
               args address(arg2)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not uint255(ext_call.return_data[0]):
            if ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0]:
                revert with 'NH{q', 17
            if ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0]:
                revert with 'NH{q', 17
            if 10^18 * ext_call.return_data[0] and 0 > -1 / 10^18 * ext_call.return_data[0]:
                revert with 'NH{q', 17
            revert with 'NH{q', 18
        if uint255(ext_call.return_data[0]) and 5000 > -1 / 2 * ext_call.return_data[0]:
            revert with 'NH{q', 17
        if 5000 > !(10000 * ext_call.return_data[0]):
            revert with 'NH{q', 17
        if ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0]:
            revert with 'NH{q', 17
        if ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0]:
            revert with 'NH{q', 17
        if 10^18 * ext_call.return_data[0] and (10000 * ext_call.return_data[0]) + 5000 / 10000 > -1 / 10^18 * ext_call.return_data[0]:
            revert with 'NH{q', 17
        if not 10^18 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000:
            if not 10^18 * ext_call.return_data[0]:
                revert with 'NH{q', 18
            if (10000 * ext_call.return_data[0]) + 5000 / 10000 and 10^18 > -1 / (10000 * ext_call.return_data[0]) + 5000 / 10000:
                revert with 'NH{q', 17
            if not 10^18 * (10000 * ext_call.return_data[0]) + 5000 / 10000:
                revert with 'NH{q', 18
            if 0 / 10^18 * ext_call.return_data[0] <= ext_call.return_data[0]:
                return 0 / 10^18 * ext_call.return_data[0], 
                       (10000 * ext_call.return_data[0]) + 5000 / 10000,
                       0 / 10^18 * ext_call.return_data[0] / 10^18 * (10000 * ext_call.return_data[0]) + 5000 / 10000
            if ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0]:
                revert with 'NH{q', 17
            if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                revert with 'NH{q', 17
            if ext_call.return_data[0] * ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0] * ext_call.return_data[0]:
                revert with 'NH{q', 17
            if not 10^18 * ext_call.return_data[0]:
                revert with 'NH{q', 18
            if 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                revert with 'NH{q', 17
            if 10000 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] > -5251:
                revert with 'NH{q', 17
            return ext_call.return_data[0], 
                   (10000 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0]) + 5250 / 10500,
                   0 / 10^18 * ext_call.return_data[0] / 10^18 * (10000 * ext_call.return_data[0]) + 5000 / 10000
        if 10^18 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000 and 10500 > -1 / 10^18 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000:
            revert with 'NH{q', 17
        if 5000 > !(10500 * 10^18 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000):
            revert with 'NH{q', 17
        if not 10^18 * ext_call.return_data[0]:
            revert with 'NH{q', 18
        if (10000 * ext_call.return_data[0]) + 5000 / 10000 and 10^18 > -1 / (10000 * ext_call.return_data[0]) + 5000 / 10000:
            revert with 'NH{q', 17
        if not 10^18 * (10000 * ext_call.return_data[0]) + 5000 / 10000:
            revert with 'NH{q', 18
        if (10500 * 10^18 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000) + 5000 / 10000 / 10^18 * ext_call.return_data[0] <= ext_call.return_data[0]:
            return (10500 * 10^18 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000) + 5000 / 10000 / 10^18 * ext_call.return_data[0], 
                   (10000 * ext_call.return_data[0]) + 5000 / 10000,
                   (10500 * 10^18 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000) + 5000 / 10000 / 10^18 * ext_call.return_data[0] / 10^18 * (10000 * ext_call.return_data[0]) + 5000 / 10000
        if ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0]:
            revert with 'NH{q', 17
        if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
            revert with 'NH{q', 17
        if ext_call.return_data[0] * ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0] * ext_call.return_data[0]:
            revert with 'NH{q', 17
        if not 10^18 * ext_call.return_data[0]:
            revert with 'NH{q', 18
        if 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
            revert with 'NH{q', 17
        if 10000 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] > -5251:
            revert with 'NH{q', 17
        return ext_call.return_data[0], 
               (10000 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0]) + 5250 / 10500,
               (10500 * 10^18 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000) + 5000 / 10000 / 10^18 * ext_call.return_data[0] / 10^18 * (10000 * ext_call.return_data[0]) + 5000 / 10000
    if address(arg1) == 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664:
        staticcall 0x46a51127c3ce23fb7ab1de06226147f446e4a857.0x70a08231 with:
                gas gas_remaining wei
               args address(arg3)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        staticcall stor1.getAssetPrice(address arg1) with:
                gas gas_remaining wei
               args address(arg1)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        staticcall stor1.getAssetPrice(address arg1) with:
                gas gas_remaining wei
               args address(arg2)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not uint255(ext_call.return_data[0]):
            if ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0]:
                revert with 'NH{q', 17
            if ext_call.return_data[0] and 10^6 > -1 / ext_call.return_data[0]:
                revert with 'NH{q', 17
            if 10^6 * ext_call.return_data[0] and 0 > -1 / 10^6 * ext_call.return_data[0]:
                revert with 'NH{q', 17
            revert with 'NH{q', 18
        if uint255(ext_call.return_data[0]) and 5000 > -1 / 2 * ext_call.return_data[0]:
            revert with 'NH{q', 17
        if 5000 > !(10000 * ext_call.return_data[0]):
            revert with 'NH{q', 17
        if ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0]:
            revert with 'NH{q', 17
        if ext_call.return_data[0] and 10^6 > -1 / ext_call.return_data[0]:
            revert with 'NH{q', 17
        if 10^6 * ext_call.return_data[0] and (10000 * ext_call.return_data[0]) + 5000 / 10000 > -1 / 10^6 * ext_call.return_data[0]:
            revert with 'NH{q', 17
        if not 10^6 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000:
            if not 10^18 * ext_call.return_data[0]:
                revert with 'NH{q', 18
            if (10000 * ext_call.return_data[0]) + 5000 / 10000 and 10^18 > -1 / (10000 * ext_call.return_data[0]) + 5000 / 10000:
                revert with 'NH{q', 17
            if not 10^18 * (10000 * ext_call.return_data[0]) + 5000 / 10000:
                revert with 'NH{q', 18
            if 0 / 10^18 * ext_call.return_data[0] <= ext_call.return_data[0]:
                return 0 / 10^18 * ext_call.return_data[0], 
                       (10000 * ext_call.return_data[0]) + 5000 / 10000,
                       0 / 10^18 * ext_call.return_data[0] / 10^18 * (10000 * ext_call.return_data[0]) + 5000 / 10000
            if ext_call.return_data[0] and 10^6 > -1 / ext_call.return_data[0]:
                revert with 'NH{q', 17
            if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                revert with 'NH{q', 17
            if ext_call.return_data[0] * ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0] * ext_call.return_data[0]:
                revert with 'NH{q', 17
            if not 10^6 * ext_call.return_data[0]:
                revert with 'NH{q', 18
            if 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^6 * ext_call.return_data[0] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                revert with 'NH{q', 17
            if 10000 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^6 * ext_call.return_data[0] > -5251:
                revert with 'NH{q', 17
            return ext_call.return_data[0], 
                   (10000 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^6 * ext_call.return_data[0]) + 5250 / 10500,
                   0 / 10^18 * ext_call.return_data[0] / 10^18 * (10000 * ext_call.return_data[0]) + 5000 / 10000
        if 10^6 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000 and 10500 > -1 / 10^6 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000:
            revert with 'NH{q', 17
        if 5000 > !(10500 * 10^6 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000):
            revert with 'NH{q', 17
        if not 10^18 * ext_call.return_data[0]:
            revert with 'NH{q', 18
        if (10000 * ext_call.return_data[0]) + 5000 / 10000 and 10^18 > -1 / (10000 * ext_call.return_data[0]) + 5000 / 10000:
            revert with 'NH{q', 17
        if not 10^18 * (10000 * ext_call.return_data[0]) + 5000 / 10000:
            revert with 'NH{q', 18
        if (10500 * 10^6 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000) + 5000 / 10000 / 10^18 * ext_call.return_data[0] <= ext_call.return_data[0]:
            return (10500 * 10^6 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000) + 5000 / 10000 / 10^18 * ext_call.return_data[0], 
                   (10000 * ext_call.return_data[0]) + 5000 / 10000,
                   (10500 * 10^6 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000) + 5000 / 10000 / 10^18 * ext_call.return_data[0] / 10^18 * (10000 * ext_call.return_data[0]) + 5000 / 10000
        if ext_call.return_data[0] and 10^6 > -1 / ext_call.return_data[0]:
            revert with 'NH{q', 17
        if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
            revert with 'NH{q', 17
        if ext_call.return_data[0] * ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0] * ext_call.return_data[0]:
            revert with 'NH{q', 17
        if not 10^6 * ext_call.return_data[0]:
            revert with 'NH{q', 18
        if 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^6 * ext_call.return_data[0] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
            revert with 'NH{q', 17
        if 10000 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^6 * ext_call.return_data[0] > -5251:
            revert with 'NH{q', 17
        return ext_call.return_data[0], 
               (10000 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^6 * ext_call.return_data[0]) + 5250 / 10500,
               (10500 * 10^6 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000) + 5000 / 10000 / 10^18 * ext_call.return_data[0] / 10^18 * (10000 * ext_call.return_data[0]) + 5000 / 10000
    if address(arg1) == 0x63a72806098bd3d9520cc43356dd78afe5d386d9:
        staticcall 0xd45b7c061016102f9fa220502908f2c0f1add1d7.0x70a08231 with:
                gas gas_remaining wei
               args address(arg3)
    else:
        if address(arg1) == 0x50b7545627a5162f82a992c33b87adc75187b218:
            staticcall 0x686bef2417b6dc32c50a3cbfbcc3bb60e1e9a15d.0x70a08231 with:
                    gas gas_remaining wei
                   args address(arg3)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            staticcall stor1.getAssetPrice(address arg1) with:
                    gas gas_remaining wei
                   args address(arg1)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            staticcall stor1.getAssetPrice(address arg1) with:
                    gas gas_remaining wei
                   args address(arg2)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not uint255(ext_call.return_data[0]):
                if ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if ext_call.return_data[0] and 100 * 10^6 > -1 / ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if 100 * 10^6 * ext_call.return_data[0] and 0 > -1 / 100 * 10^6 * ext_call.return_data[0]:
                    revert with 'NH{q', 17
                revert with 'NH{q', 18
            if uint255(ext_call.return_data[0]) and 5000 > -1 / 2 * ext_call.return_data[0]:
                revert with 'NH{q', 17
            if 5000 > !(10000 * ext_call.return_data[0]):
                revert with 'NH{q', 17
            if ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0]:
                revert with 'NH{q', 17
            if ext_call.return_data[0] and 100 * 10^6 > -1 / ext_call.return_data[0]:
                revert with 'NH{q', 17
            if 100 * 10^6 * ext_call.return_data[0] and (10000 * ext_call.return_data[0]) + 5000 / 10000 > -1 / 100 * 10^6 * ext_call.return_data[0]:
                revert with 'NH{q', 17
            if not 100 * 10^6 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000:
                if not 10^18 * ext_call.return_data[0]:
                    revert with 'NH{q', 18
                if (10000 * ext_call.return_data[0]) + 5000 / 10000 and 10^18 > -1 / (10000 * ext_call.return_data[0]) + 5000 / 10000:
                    revert with 'NH{q', 17
                if not 10^18 * (10000 * ext_call.return_data[0]) + 5000 / 10000:
                    revert with 'NH{q', 18
                if 0 / 10^18 * ext_call.return_data[0] <= ext_call.return_data[0]:
                    return 0 / 10^18 * ext_call.return_data[0], 
                           (10000 * ext_call.return_data[0]) + 5000 / 10000,
                           0 / 10^18 * ext_call.return_data[0] / 10^18 * (10000 * ext_call.return_data[0]) + 5000 / 10000
                if ext_call.return_data[0] and 100 * 10^6 > -1 / ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if ext_call.return_data[0] * ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0] * ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if not 100 * 10^6 * ext_call.return_data[0]:
                    revert with 'NH{q', 18
                if 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 100 * 10^6 * ext_call.return_data[0] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                    revert with 'NH{q', 17
                if 10000 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 100 * 10^6 * ext_call.return_data[0] > -5251:
                    revert with 'NH{q', 17
                return ext_call.return_data[0], 
                       (10000 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 100 * 10^6 * ext_call.return_data[0]) + 5250 / 10500,
                       0 / 10^18 * ext_call.return_data[0] / 10^18 * (10000 * ext_call.return_data[0]) + 5000 / 10000
            if 100 * 10^6 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000 and 10500 > -1 / 100 * 10^6 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000:
                revert with 'NH{q', 17
            if 5000 > !(105 * 10^10 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000):
                revert with 'NH{q', 17
            if not 10^18 * ext_call.return_data[0]:
                revert with 'NH{q', 18
            if (10000 * ext_call.return_data[0]) + 5000 / 10000 and 10^18 > -1 / (10000 * ext_call.return_data[0]) + 5000 / 10000:
                revert with 'NH{q', 17
            if not 10^18 * (10000 * ext_call.return_data[0]) + 5000 / 10000:
                revert with 'NH{q', 18
            if (105 * 10^10 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000) + 5000 / 10000 / 10^18 * ext_call.return_data[0] <= ext_call.return_data[0]:
                return (105 * 10^10 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000) + 5000 / 10000 / 10^18 * ext_call.return_data[0], 
                       (10000 * ext_call.return_data[0]) + 5000 / 10000,
                       (105 * 10^10 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000) + 5000 / 10000 / 10^18 * ext_call.return_data[0] / 10^18 * (10000 * ext_call.return_data[0]) + 5000 / 10000
            if ext_call.return_data[0] and 100 * 10^6 > -1 / ext_call.return_data[0]:
                revert with 'NH{q', 17
            if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                revert with 'NH{q', 17
            if ext_call.return_data[0] * ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0] * ext_call.return_data[0]:
                revert with 'NH{q', 17
            if not 100 * 10^6 * ext_call.return_data[0]:
                revert with 'NH{q', 18
            if 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 100 * 10^6 * ext_call.return_data[0] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                revert with 'NH{q', 17
            if 10000 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 100 * 10^6 * ext_call.return_data[0] > -5251:
                revert with 'NH{q', 17
            return ext_call.return_data[0], 
                   (10000 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 100 * 10^6 * ext_call.return_data[0]) + 5250 / 10500,
                   (105 * 10^10 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000) + 5000 / 10000 / 10^18 * ext_call.return_data[0] / 10^18 * (10000 * ext_call.return_data[0]) + 5000 / 10000
        if address(arg1) != 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
            staticcall stor1.getAssetPrice(address arg1) with:
                    gas gas_remaining wei
                   args address(arg1)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            staticcall stor1.getAssetPrice(address arg1) with:
                    gas gas_remaining wei
                   args address(arg2)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not uint255(ext_call.return_data[0]):
                if ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if ext_call.return_data[0] and 0 > -1 / ext_call.return_data[0]:
                    revert with 'NH{q', 17
            else:
                if uint255(ext_call.return_data[0]) and 5000 > -1 / 2 * ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if 5000 > !(10000 * ext_call.return_data[0]):
                    revert with 'NH{q', 17
                if ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if ext_call.return_data[0] and 0 > -1 / ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if False and (10000 * ext_call.return_data[0]) + 5000 / 10000 > 0:
                    revert with 'NH{q', 17
                if 10^18 * ext_call.return_data[0]:
                    if (10000 * ext_call.return_data[0]) + 5000 / 10000 and 10^18 > -1 / (10000 * ext_call.return_data[0]) + 5000 / 10000:
                        revert with 'NH{q', 17
                    if 10^18 * (10000 * ext_call.return_data[0]) + 5000 / 10000:
                        if 0 / 10^18 * ext_call.return_data[0] <= 0:
                            return 0 / 10^18 * ext_call.return_data[0], 
                                   (10000 * ext_call.return_data[0]) + 5000 / 10000,
                                   0 / 10^18 * ext_call.return_data[0] / 10^18 * (10000 * ext_call.return_data[0]) + 5000 / 10000
                        if ext_call.return_data[0] and 0 > -1 / ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if ext_call.return_data[0] and 0 > -1 / ext_call.return_data[0]:
                            revert with 'NH{q', 17
            revert with 'NH{q', 18
        staticcall 0xdfe521292ece2a4f44242efbcd66bc594ca9714b.0x70a08231 with:
                gas gas_remaining wei
               args address(arg3)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    staticcall stor1.getAssetPrice(address arg1) with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    staticcall stor1.getAssetPrice(address arg1) with:
            gas gas_remaining wei
           args address(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not uint255(ext_call.return_data[0]):
        if ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0]:
            revert with 'NH{q', 17
        if ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0]:
            revert with 'NH{q', 17
        if 10^18 * ext_call.return_data[0] and 0 > -1 / 10^18 * ext_call.return_data[0]:
            revert with 'NH{q', 17
        revert with 'NH{q', 18
    if uint255(ext_call.return_data[0]) and 5000 > -1 / 2 * ext_call.return_data[0]:
        revert with 'NH{q', 17
    if 5000 > !(10000 * ext_call.return_data[0]):
        revert with 'NH{q', 17
    if ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0]:
        revert with 'NH{q', 17
    if ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0]:
        revert with 'NH{q', 17
    if 10^18 * ext_call.return_data[0] and (10000 * ext_call.return_data[0]) + 5000 / 10000 > -1 / 10^18 * ext_call.return_data[0]:
        revert with 'NH{q', 17
    if not 10^18 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000:
        if not 10^18 * ext_call.return_data[0]:
            revert with 'NH{q', 18
        if (10000 * ext_call.return_data[0]) + 5000 / 10000 and 10^18 > -1 / (10000 * ext_call.return_data[0]) + 5000 / 10000:
            revert with 'NH{q', 17
        if not 10^18 * (10000 * ext_call.return_data[0]) + 5000 / 10000:
            revert with 'NH{q', 18
        if 0 / 10^18 * ext_call.return_data[0] <= ext_call.return_data[0]:
            return 0 / 10^18 * ext_call.return_data[0], 
                   (10000 * ext_call.return_data[0]) + 5000 / 10000,
                   0 / 10^18 * ext_call.return_data[0] / 10^18 * (10000 * ext_call.return_data[0]) + 5000 / 10000
        if ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0]:
            revert with 'NH{q', 17
        if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
            revert with 'NH{q', 17
        if ext_call.return_data[0] * ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0] * ext_call.return_data[0]:
            revert with 'NH{q', 17
        if not 10^18 * ext_call.return_data[0]:
            revert with 'NH{q', 18
        if 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
            revert with 'NH{q', 17
        if 10000 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] > -5501:
            revert with 'NH{q', 17
        return ext_call.return_data[0], 
               (10000 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0]) + 5500 / 11000,
               0 / 10^18 * ext_call.return_data[0] / 10^18 * (10000 * ext_call.return_data[0]) + 5000 / 10000
    if 10^18 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000 and 11000 > -1 / 10^18 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000:
        revert with 'NH{q', 17
    if 5000 > !(11000 * 10^18 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000):
        revert with 'NH{q', 17
    if not 10^18 * ext_call.return_data[0]:
        revert with 'NH{q', 18
    if (10000 * ext_call.return_data[0]) + 5000 / 10000 and 10^18 > -1 / (10000 * ext_call.return_data[0]) + 5000 / 10000:
        revert with 'NH{q', 17
    if not 10^18 * (10000 * ext_call.return_data[0]) + 5000 / 10000:
        revert with 'NH{q', 18
    if (11000 * 10^18 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000) + 5000 / 10000 / 10^18 * ext_call.return_data[0] <= ext_call.return_data[0]:
        return (11000 * 10^18 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000) + 5000 / 10000 / 10^18 * ext_call.return_data[0], 
               (10000 * ext_call.return_data[0]) + 5000 / 10000,
               (11000 * 10^18 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000) + 5000 / 10000 / 10^18 * ext_call.return_data[0] / 10^18 * (10000 * ext_call.return_data[0]) + 5000 / 10000
    if ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0]:
        revert with 'NH{q', 17
    if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
        revert with 'NH{q', 17
    if ext_call.return_data[0] * ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0] * ext_call.return_data[0]:
        revert with 'NH{q', 17
    if not 10^18 * ext_call.return_data[0]:
        revert with 'NH{q', 18
    if 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
        revert with 'NH{q', 17
    if 10000 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] > -5501:
        revert with 'NH{q', 17
    return ext_call.return_data[0], 
           (10000 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0]) + 5500 / 11000,
           (11000 * 10^18 * ext_call.return_data[0] * (10000 * ext_call.return_data[0]) + 5000 / 10000) + 5000 / 10000 / 10^18 * ext_call.return_data[0] / 10^18 * (10000 * ext_call.return_data[0]) + 5000 / 10000
}



}
