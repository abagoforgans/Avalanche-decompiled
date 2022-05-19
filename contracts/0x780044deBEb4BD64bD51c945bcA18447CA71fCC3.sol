contract main {




// =====================  Runtime code  =====================


#
#  - sub_14760ad5(?)
#  - sub_92b0e37f(?)
#
function _fallback() payable {
    revert
}

function sub_12bc799f(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    staticcall arg1.allPairsLength() with:
            gas gas_remaining wei
    if ext_call.success:
        return ext_call.return_data[0]
    else:
        return 0
}

function sub_db5b7e99(?) payable {
    mem[64] = 96
    mem[0] = 0x902f1ac00000000000000000000000000000000000000000000000000000000
    idx = 4
    s = 32
    while idx < calldata.size - 4:
        staticcall address(cd[idx]) >> 96.mem[0 len 4] with:
                gas gas_remaining wei
        mem[s len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            mem[s] = 0
            mem[s + 32] = 0
        idx = idx + 20
        s = s + 64
        continue 
    return memory
      from 32
       len 32 * calldata.size - 4 / 20
}

function sub_51d7d11b(?) payable {
    mem[0] = 0x902f1ac00000000000000000000000000000000000000000000000000000000
    idx = 4
    s = 256
    while idx < calldata.size - 4:
        staticcall address(cd[idx]) >> 96.mem[0 len 4] with:
                gas gas_remaining wei
        mem[4 len 64] = ext_call.return_data[0 len 64]
        if ext_call.success:
            mem[s] = ext_call.return_data[0] << 144
            mem[s + 14] = ext_call.return_data[32] << 144
        idx = idx + 20
        s = s + 28
        continue 
    return memory
      from 256
       len 28 * calldata.size - 4 / 20
}

function sub_91c77c7f(?) payable {
    mem[0] = 0x902f1ac0dfe1681d21220a770a0823100000000000000000000000000000000
    idx = 4
    s = 256
    while idx < calldata.size - 4:
        mem[16] = address(cd[idx]) >> 96
        staticcall address(cd[idx]) >> 96.mem[4 len 4] with:
                gas gas_remaining wei
        mem[48] = ext_call.return_data[0]
        if ext_call.success:
            staticcall ext_call.return_data[0].mem[12 len 4] with:
                    gas gas_remaining wei
                   args (address(cd[idx]) >> 96)
            mem[48] = ext_call.return_data[0]
            if ext_call.success and ext_call.return_data[0] and ext_call.return_data[0] <= test266151307():
                staticcall address(cd[idx]) >> 96.mem[8 len 4] with:
                        gas gas_remaining wei
                mem[48] = ext_call.return_data[0]
                if ext_call.success:
                    staticcall ext_call.return_data[0].mem[12 len 4] with:
                            gas gas_remaining wei
                           args (address(cd[idx]) >> 96)
                    mem[48] = ext_call.return_data[0]
                    if ext_call.success and ext_call.return_data[0] and ext_call.return_data[0] <= test266151307():
                        staticcall address(cd[idx]) >> 96.mem[0 len 4] with:
                                gas gas_remaining wei
                        mem[48 len 64] = ext_call.return_data[0 len 64]
                        if ext_call.success:
                            mem[s] = ext_call.return_data[0] << 144
                            mem[s + 14] = ext_call.return_data[32] << 144
                            mem[s + 28] = ext_call.return_data[0] << 144
                            mem[s + 42] = ext_call.return_data[0] << 144
        idx = idx + 20
        s = s + 56
        continue 
    return memory
      from 256
       len 56 * calldata.size - 4 / 20
}

function getPairs() payable {
    mem[0] = 0xdfe1681d21220a71e3dd18b0000000000000000000000000000000000000000
    mem[44] = 0x70a0823100000000000000000000000000000000000000000000000000000000
    idx = uint64(call.func_hash)
    s = 256
    while idx < uint64(cd[8]):
        mem[12] = idx
        staticcall address(cd[4]) >> 96.mem[8 len 4] with:
                gas gas_remaining wei
               args idx
        mem[48] = ext_call.return_data[0]
        if ext_call.success:
            staticcall ext_call.return_data[0].mem[4 len 4] with:
                    gas gas_remaining wei
            mem[112] = ext_call.return_data[0]
            staticcall ext_call.return_data[0].mem[0 len 4] with:
                    gas gas_remaining wei
            mem[80] = ext_call.return_data[0]
            if ext_call.success and ext_call.success:
                staticcall ext_call.return_data[0].mem[44 len 4] with:
                        gas gas_remaining wei
                       args ext_call.return_data[0]
                mem[12] = ext_call.return_data[0]
                if ext_call.success:
                    if ext_call.return_data[0] and ext_call.return_data[0] <= test266151307():
                        staticcall ext_call.return_data[0].mem[44 len 4] with:
                                gas gas_remaining wei
                               args ext_call.return_data[0]
                        mem[12] = ext_call.return_data[0]
                        if ext_call.success:
                            if ext_call.return_data[0] <= test266151307() and ext_call.return_data[0]:
                                mem[s] = ext_call.return_data[0] << 96
                                mem[s + 20] = ext_call.return_data[0] << 96
                                mem[s + 40] = ext_call.return_data[0] << 96
                                mem[s + 60] = ext_call.return_data[0] << 144
                                mem[s + 74] = ext_call.return_data[0] << 144
        idx = idx + 1
        s = s + 88
        continue 
    return memory
      from 256
       len s - 256
}

function sub_b6e758c7(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    staticcall arg3.0x313ce567 with:
            gas gas_remaining wei
    staticcall arg3.0x70a08231 with:
            gas gas_remaining wei
           args 0x1a9efc7507d3bb3206ca5babb4df9e168bd5cdee
    if ext_call.success:
        if address(arg2) == address(arg3):
            return arg4, ext_call.return_data[0], uint8(ext_call.return_data[0])
        require ext_code.size(address(arg1))
        staticcall address(arg1).getPair(address arg1, address arg2) with:
                gas gas_remaining wei
               args address(arg2), address(arg3)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if not ext_call.return_data[12 len 20]:
            return 0, ext_call.return_data[0], uint8(ext_call.return_data[0])
        staticcall ext_call.return_data[0].getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 18613433206
        if address(arg2) < address(arg3):
            if arg4 and ext_call.return_data[0] > -1 / arg4:
                revert with 'NH{q', 17
            if not ext_call.return_data[32]:
                revert with 'NH{q', 18
            return arg4 * ext_call.return_data[0] / ext_call.return_data[32], ext_call.return_data[0], uint8(ext_call.return_data[0])
        if arg4 and ext_call.return_data[32] > -1 / arg4:
            revert with 'NH{q', 17
        if not ext_call.return_data[0]:
            revert with 'NH{q', 18
        return arg4 * ext_call.return_data[32] / ext_call.return_data[0], ext_call.return_data[0], uint8(ext_call.return_data[0])
    if address(arg2) == address(arg3):
        return arg4, 0, 0
    require ext_code.size(address(arg1))
    staticcall address(arg1).getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(arg2), address(arg3)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if not ext_call.return_data[12 len 20]:
        return 0
    staticcall ext_call.return_data[0].getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 18613433206
    if address(arg2) < address(arg3):
        if arg4 and ext_call.return_data[0] > -1 / arg4:
            revert with 'NH{q', 17
        if not ext_call.return_data[32]:
            revert with 'NH{q', 18
        return arg4 * ext_call.return_data[0] / ext_call.return_data[32], 0, 0
    if arg4 and ext_call.return_data[32] > -1 / arg4:
        revert with 'NH{q', 17
    if not ext_call.return_data[0]:
        revert with 'NH{q', 18
    return arg4 * ext_call.return_data[32] / ext_call.return_data[0], 0, 0
}



}
