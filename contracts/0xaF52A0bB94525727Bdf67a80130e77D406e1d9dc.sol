contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
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
    s = cd[132] + 36
    t = 128
    idx = 0
    while idx < ('cd', 132).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    require cd[164] <= test266151307()
    require cd[164] + 35 < calldata.size
    if ('cd', 164).length > test266151307():
        revert with 'NH{q', 65
    if ceil32(32 * ('cd', 164).length) + 98 < 97 or ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 98 > test266151307():
        revert with 'NH{q', 65
    mem[ceil32(32 * ('cd', 132).length) + 97] = ('cd', 164).length
    require cd[164] + (32 * ('cd', 164).length) + 36 <= calldata.size
    idx = 0
    s = cd[164] + 36
    t = ceil32(32 * ('cd', 132).length) + 129
    while idx < ('cd', 164).length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if cd[4] == cd[36] == 1:
        mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 98] = (483469210410000 / mem[ceil32(32 * ('cd', 132).length) + 129]) + 1
        staticcall mem[128].token0() with:
                gas 35000 wei
        if cd[4] != ext_call.return_data[0]:
            return ''
    else:
        if cd[4] == cd[36]:
            return ''
        if ('cd', 132).length != 1:
            if ('cd', 132).length <= 1:
                return ''
            staticcall mem[160].getReserves() with:
                    gas 35000 wei
            mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 162 len 64] = ext_call.return_data[0 len 64]
            staticcall mem[160].token0() with:
                    gas 35000 wei
            mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 162] = ext_call.return_data[0]
            if ext_call.return_data[0] != cd[36]:
                mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 98] = (483469210410000 * ext_call.return_data[0] / (-48346921041 * mem[ceil32(32 * ('cd', 132).length) + 161]) + (ext_call.return_data[32] * mem[ceil32(32 * ('cd', 132).length) + 161])) + 1
            else:
                staticcall mem[160].token1() with:
                        gas 35000 wei
                mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 162] = ext_call.return_data[0]
                mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 98] = (483469210410000 * ext_call.return_data[32] / (-48346921041 * mem[ceil32(32 * ('cd', 132).length) + 161]) + (ext_call.return_data[0] * mem[ceil32(32 * ('cd', 132).length) + 161])) + 1
            staticcall mem[128].getReserves() with:
                    gas 35000 wei
            if ext_call.return_data[0] <= cd[36]:
                return ''
        else:
            staticcall mem[128].getReserves() with:
                    gas 35000 wei
            mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 162 len 64] = ext_call.return_data[0 len 64]
            if cd[4] <= cd[36]:
                mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 98] = (483469210410000 * ext_call.return_data[0] / (-48346921041 * mem[ceil32(32 * ('cd', 132).length) + 129]) + (ext_call.return_data[32] * mem[ceil32(32 * ('cd', 132).length) + 129])) + 1
                if ('cd', 132).length <= 1:
                    return ''
                staticcall mem[160].getReserves() with:
                        gas 35000 wei
                mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 162 len 64] = ext_call.return_data[0 len 64]
                staticcall mem[160].token0() with:
                        gas 35000 wei
                mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 162] = ext_call.return_data[0]
                if ext_call.return_data[0] != cd[36]:
                    mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 98] = (483469210410000 * ext_call.return_data[0] / (-48346921041 * mem[ceil32(32 * ('cd', 132).length) + 161]) + (ext_call.return_data[32] * mem[ceil32(32 * ('cd', 132).length) + 161])) + 1
                else:
                    staticcall mem[160].token1() with:
                            gas 35000 wei
                    mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 162] = ext_call.return_data[0]
                    mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 98] = (483469210410000 * ext_call.return_data[32] / (-48346921041 * mem[ceil32(32 * ('cd', 132).length) + 161]) + (ext_call.return_data[0] * mem[ceil32(32 * ('cd', 132).length) + 161])) + 1
                staticcall mem[128].getReserves() with:
                        gas 35000 wei
                if ext_call.return_data[0] <= cd[36]:
                    return ''
            else:
                mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 98] = (483469210410000 * ext_call.return_data[32] / (-48346921041 * mem[ceil32(32 * ('cd', 132).length) + 129]) + (ext_call.return_data[0] * mem[ceil32(32 * ('cd', 132).length) + 129])) + 1
                if ('cd', 132).length > 1:
                    staticcall mem[160].getReserves() with:
                            gas 35000 wei
                    mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 162 len 64] = ext_call.return_data[0 len 64]
                    staticcall mem[160].token0() with:
                            gas 35000 wei
                    mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 162] = ext_call.return_data[0]
                    if ext_call.return_data[0] != cd[36]:
                        mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 98] = (483469210410000 * ext_call.return_data[0] / (-48346921041 * mem[ceil32(32 * ('cd', 132).length) + 161]) + (ext_call.return_data[32] * mem[ceil32(32 * ('cd', 132).length) + 161])) + 1
                    else:
                        staticcall mem[160].token1() with:
                                gas 35000 wei
                        mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 162] = ext_call.return_data[0]
                        mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 98] = (483469210410000 * ext_call.return_data[32] / (-48346921041 * mem[ceil32(32 * ('cd', 132).length) + 161]) + (ext_call.return_data[0] * mem[ceil32(32 * ('cd', 132).length) + 161])) + 1
                    staticcall mem[128].getReserves() with:
                            gas 35000 wei
                    if ext_call.return_data[0] <= cd[36]:
                        return ''
    mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 198] = 0
    mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 226 len ceil32(0, 11)] = 0, 11, mem[ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 226 len ceil32(0, 11) - 32]
    return memory
      from ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 162
       len ceil32(0, 11) + 64
}



}
