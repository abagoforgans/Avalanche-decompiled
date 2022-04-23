contract main {




// =====================  Runtime code  =====================


const sub_84214017(?) = 10^18

const sub_96f277b7(?) = 15 * 10^17

const WETH = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7


address governorAddress; offset 16
uint256 stor0; offset 16
address pendingGovernorAddress;
mapping of uint256 sub_89752929;
mapping of address sub_c66683c0;
mapping of uint256 sub_bb0e70e0;

function governor() payable {
    return address(governorAddress)
}

function sub_89752929(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_89752929[arg1]
}

function sub_bb0e70e0(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_bb0e70e0[arg1]
}

function sub_c66683c0(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    return sub_c66683c0[arg1][arg2]
}

function pendingGovernor() payable {
    return pendingGovernorAddress
}

function _fallback() payable {
    revert
}

function acceptGovernor() payable {
    if pendingGovernorAddress != msg.sender:
        revert with 0, 'not the pending governor'
    pendingGovernorAddress = 0
    Mask(240, 0, stor0) = Mask(240, 0, msg.sender)
    emit AcceptGovernor(msg.sender);
}

function setPendingGovernor(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(governorAddress) != msg.sender:
        revert with 0, 'not the governor'
    pendingGovernorAddress = arg1
    emit SetPendingGovernor(arg1);
}

function sub_e431a4f5(?) payable {
    require calldata.size - 4 >= 96
    require cd[4] == address(cd[4])
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    if ('cd', 68).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 68).length) + 97 < 96 or ceil32(32 * ('cd', 68).length) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(32 * ('cd', 68).length) + 97
    mem[96] = ('cd', 68).length
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    idx = 0
    s = cd[68] + 36
    t = 128
    while idx < ('cd', 68).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if address(governorAddress) != msg.sender:
        revert with 0, 'not the governor'
    sub_89752929[address(cd[4])] = ('cd', 68).length
    if cd[36] < 10^18:
        revert with 0, 'bad max deviation value'
    if cd[36] > 15 * 10^17:
        revert with 0, 'bad max deviation value'
    if ('cd', 68).length > 3:
        revert with 0, 'sources length exceed 3'
    mem[0] = address(cd[4])
    mem[32] = 68
    sub_bb0e70e0[address(cd[4])] = cd[36]
    idx = 0
    while idx < ('cd', 68).length:
        if idx >= ('cd', 68).length:
            revert with 0, 50
        mem[0] = idx
        mem[32] = sha3(address(cd[4]), 67)
        sub_c66683c0[address(cd[4])][idx] = mem[(32 * idx) + 140 len 20]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    mem[ceil32(32 * ('cd', 68).length) + 97] = cd[36]
    mem[ceil32(32 * ('cd', 68).length) + 129] = 64
    mem[ceil32(32 * ('cd', 68).length) + 161] = ('cd', 68).length
    s = 0
    s = ceil32(32 * ('cd', 68).length) + 193
    t = 128
    while ('cd', 68).length < ('cd', 68).length:
        mem[s] = mem[t + 12 len 20]
        s = ('cd', 68).length + 1
        s = s + 32
        t = t + 32
        continue 
    emit 0xfaf0e7a4: mem[mem[64] len s - mem[64]], address(cd[4])
}

function sub_507b9ede(?) payable {
    require calldata.size - 4 >= 96
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
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
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 36).length) + 98 < 97 or ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98 > test266151307():
        revert with 0, 65
    mem[ceil32(32 * ('cd', 4).length) + 97] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = ceil32(32 * ('cd', 4).length) + 129
    while idx < ('cd', 36).length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    if ('cd', 68).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 68).length) + 99 < 98 or ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + 99 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + 99
    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98] = ('cd', 68).length
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    idx = 0
    s = cd[68] + 36
    t = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130
    while idx < ('cd', 68).length:
        require cd[s] <= test266151307()
        require cd[68] + cd[s] + 67 < calldata.size
        if cd[(cd[68] + cd[s] + 36)] > test266151307():
            revert with 0, 65
        _129 = mem[64]
        if mem[64] + ceil32(32 * cd[(cd[68] + cd[s] + 36)]) + 1 < mem[64] or mem[64] + ceil32(32 * cd[(cd[68] + cd[s] + 36)]) + 1 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + ceil32(32 * cd[(cd[68] + cd[s] + 36)]) + 1
        mem[_129] = cd[(cd[68] + cd[s] + 36)]
        require cd[68] + cd[s] + (32 * cd[(cd[68] + cd[s] + 36)]) + 68 <= calldata.size
        u = 0
        v = cd[68] + cd[s] + 68
        w = _129 + 32
        while u < cd[(cd[68] + cd[s] + 36)]:
            require cd[v] == address(cd[v])
            mem[w] = cd[v]
            u = u + 1
            v = v + 32
            w = w + 32
            continue 
        mem[t] = _129
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if address(governorAddress) != msg.sender:
        revert with 0, 'not the governor'
    if mem[96] != mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]:
        revert with 0, 'inconsistent length'
    if mem[96] != mem[ceil32(32 * ('cd', 4).length) + 97]:
        revert with 0, 'inconsistent length'
    _155 = mem[96]
    idx = 0
    while idx < _155:
        if idx >= mem[96]:
            revert with 0, 50
        _157 = mem[(32 * idx) + 128]
        if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
            revert with 0, 50
        if idx >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]:
            revert with 0, 50
        _161 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]
        _162 = mem[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]]
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 66
        sub_89752929[mem[(32 * idx) + 140 len 20]] = _162
        if mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] < 10^18:
            revert with 0, 'bad max deviation value'
        if mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] > 15 * 10^17:
            revert with 0, 'bad max deviation value'
        if mem[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]] > 3:
            revert with 0, 'sources length exceed 3'
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 68
        sub_bb0e70e0[address(mem[(32 * idx) + 128])] = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]
        _181 = mem[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]]
        s = 0
        while s < _181:
            if s >= mem[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]]:
                revert with 0, 50
            _185 = mem[(32 * s) + mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130] + 32]
            mem[0] = s
            mem[32] = sha3(address(mem[(32 * idx) + 128]), 67)
            sub_c66683c0[address(mem[(32 * idx) + 128])][s] = address(_185)
            if s == -1:
                revert with 0, 17
            _155 = mem[96]
            _181 = mem[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]]
            s = s + 1
            continue 
        mem[mem[64]] = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]
        mem[mem[64] + 32] = 64
        _184 = mem[_161]
        mem[mem[64] + 64] = mem[_161]
        s = 0
        s = mem[64] + 96
        t = _161 + 32
        while _181 < _184:
            mem[s] = mem[t + 12 len 20]
            _155 = mem[96]
            s = _181 + 1
            s = s + 32
            t = t + 32
            continue 
        emit 0xfaf0e7a4: mem[mem[64] len s - mem[64]], address(_157)
        if idx == -1:
            revert with 0, 17
        _155 = mem[96]
        idx = idx + 1
        continue 
}

function getETHPx(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[0] = arg1
    mem[32] = 66
    if not sub_89752929[address(arg1)]:
        revert with 0, 'no primary source'
    if sub_89752929[address(arg1)] > test266151307():
        revert with 0, 65
    mem[96] = sub_89752929[address(arg1)]
    mem[64] = (32 * sub_89752929[address(arg1)]) + 128
    if not sub_89752929[address(arg1)]:
        idx = 0
        s = 0
        while idx < sub_89752929[address(arg1)]:
            mem[0] = idx
            mem[32] = sha3(address(arg1), 67)
            mem[mem[64] + 4] = arg1
            require ext_code.size(sub_c66683c0[address(arg1)][idx])
            staticcall sub_c66683c0[address(arg1)][idx].0xab9aadfe with:
                    gas gas_remaining wei
                   args address(arg1)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s
                continue 
            _34 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if s == -1:
                revert with 0, 17
            if s >= mem[96]:
                revert with 0, 50
            mem[(32 * s) + 128] = mem[_34]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + 1
            continue 
        if s <= 0:
            revert with 0, 'no valid source'
        if s < 1:
            revert with 0, 17
        if var38002 < s - 1:
            if s < var40001:
                revert with 0, 17
            if s - var40001 < 1:
                revert with 0, 17
            if var66002 >= s + -var40001 - 1:
                if var58001 == -1:
                    revert with 0, 17
                if s < 1:
                    revert with 0, 17
                # nil
            else:
                if 1 > !var70002:
                    revert with 0, 17
                if var74001 >= mem[96]:
                    revert with 0, 50
                if var74003 >= mem[96]:
                    revert with 0, 50
                if mem[(32 * var74003) + 128] <= mem[(32 * var74001) + 128]:
                    if var74003 == -1:
                        revert with 0, 17
                    if s < var72002:
                        revert with 0, 17
                    # nil
                else:
                    if 1 > !var74003:
                        revert with 0, 17
                    if var74003 + 1 >= mem[96]:
                        revert with 0, 50
                    if var74003 >= mem[96]:
                        revert with 0, 50
                    if var74003 >= mem[96]:
                        revert with 0, 50
                    if 1 > !var74003:
                        revert with 0, 17
                    if var74003 + 1 >= mem[96]:
                        revert with 0, 50
                    if var74003 == -1:
                        revert with 0, 17
                    if s < var83002:
                        revert with 0, 17
                    # nil
        else:
            if s == 1:
                if 0 >= mem[96]:
                    revert with 0, 50
                mem[mem[64]] = mem[128]
            else:
                if 2 == s:
                    if 0 >= mem[96]:
                        revert with 0, 50
                    if 1 >= mem[96]:
                        revert with 0, 50
                    if mem[160] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 0, 17
                    if not mem[128]:
                        revert with 0, 18
                    if 10^18 * mem[160] / mem[128] > sub_bb0e70e0[address(arg1)]:
                        revert with 0, 'too much deviation (2 valid sources)'
                    if 1 >= mem[96]:
                        revert with 0, 50
                    if 0 >= mem[96]:
                        revert with 0, 50
                    if mem[128] > !mem[160]:
                        revert with 0, 17
                    mem[mem[64]] = mem[128] + mem[160] / 2
                else:
                    if s != 3:
                        revert with 0, 'more than 3 valid sources not supported'
                    if 0 >= mem[96]:
                        revert with 0, 50
                    if 1 >= mem[96]:
                        revert with 0, 50
                    if mem[160] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 0, 17
                    if not mem[128]:
                        revert with 0, 18
                    if 1 >= mem[96]:
                        revert with 0, 50
                    if 2 >= mem[96]:
                        revert with 0, 50
                    if mem[192] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 0, 17
                    if not mem[160]:
                        revert with 0, 18
                    if 10^18 * mem[160] / mem[128] > sub_bb0e70e0[address(arg1)]:
                        if 10^18 * mem[192] / mem[160] > sub_bb0e70e0[address(arg1)]:
                            revert with 0, 'too much deviation (3 valid sources)'
                        if 2 >= mem[96]:
                            revert with 0, 50
                        if 1 >= mem[96]:
                            revert with 0, 50
                        if mem[160] > !mem[192]:
                            revert with 0, 17
                        mem[mem[64]] = mem[160] + mem[192] / 2
                    else:
                        if 10^18 * mem[192] / mem[160] <= sub_bb0e70e0[address(arg1)]:
                            if 1 >= mem[96]:
                                revert with 0, 50
                            mem[mem[64]] = mem[160]
                        else:
                            if 10^18 * mem[160] / mem[128] <= sub_bb0e70e0[address(arg1)]:
                                if 1 >= mem[96]:
                                    revert with 0, 50
                                if 0 >= mem[96]:
                                    revert with 0, 50
                                if mem[128] > !mem[160]:
                                    revert with 0, 17
                                mem[mem[64]] = mem[128] + mem[160] / 2
                            else:
                                if 10^18 * mem[192] / mem[160] > sub_bb0e70e0[address(arg1)]:
                                    revert with 0, 'too much deviation (3 valid sources)'
                                if 2 >= mem[96]:
                                    revert with 0, 50
                                if 1 >= mem[96]:
                                    revert with 0, 50
                                if mem[160] > !mem[192]:
                                    revert with 0, 17
                                mem[mem[64]] = mem[160] + mem[192] / 2
            return memory
              from mem[64]
               len 32
    else:
        mem[128 len 32 * sub_89752929[address(arg1)]] = call.data[calldata.size len 32 * sub_89752929[address(arg1)]]
        idx = 0
        s = 0
        while idx < sub_89752929[address(arg1)]:
            mem[0] = idx
            mem[32] = sha3(address(arg1), 67)
            mem[mem[64] + 4] = arg1
            require ext_code.size(sub_c66683c0[address(arg1)][idx])
            staticcall sub_c66683c0[address(arg1)][idx].0xab9aadfe with:
                    gas gas_remaining wei
                   args address(arg1)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s
                continue 
            _36 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if s == -1:
                revert with 0, 17
            if s >= mem[96]:
                revert with 0, 50
            mem[(32 * s) + 128] = mem[_36]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + 1
            continue 
        if s <= 0:
            revert with 0, 'no valid source'
        if s < 1:
            revert with 0, 17
        if var39002 < s - 1:
            if s < var41001:
                revert with 0, 17
            if s - var41001 < 1:
                revert with 0, 17
            if var67002 >= s + -var41001 - 1:
                if var59001 == -1:
                    revert with 0, 17
                if s < 1:
                    revert with 0, 17
                # nil
            else:
                if 1 > !var71002:
                    revert with 0, 17
                if var75001 >= mem[96]:
                    revert with 0, 50
                if var75003 >= mem[96]:
                    revert with 0, 50
                if mem[(32 * var75003) + 128] <= mem[(32 * var75001) + 128]:
                    if var75003 == -1:
                        revert with 0, 17
                    if s < var73002:
                        revert with 0, 17
                    # nil
                else:
                    if 1 > !var75003:
                        revert with 0, 17
                    if var75003 + 1 >= mem[96]:
                        revert with 0, 50
                    if var75003 >= mem[96]:
                        revert with 0, 50
                    if var75003 >= mem[96]:
                        revert with 0, 50
                    if 1 > !var75003:
                        revert with 0, 17
                    if var75003 + 1 >= mem[96]:
                        revert with 0, 50
                    if var75003 == -1:
                        revert with 0, 17
                    if s < var84002:
                        revert with 0, 17
                    # nil
        else:
            if s == 1:
                if 0 >= mem[96]:
                    revert with 0, 50
                mem[mem[64]] = mem[128]
            else:
                if 2 == s:
                    if 0 >= mem[96]:
                        revert with 0, 50
                    if 1 >= mem[96]:
                        revert with 0, 50
                    if mem[160] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 0, 17
                    if not mem[128]:
                        revert with 0, 18
                    if 10^18 * mem[160] / mem[128] > sub_bb0e70e0[address(arg1)]:
                        revert with 0, 'too much deviation (2 valid sources)'
                    if 1 >= mem[96]:
                        revert with 0, 50
                    if 0 >= mem[96]:
                        revert with 0, 50
                    if mem[128] > !mem[160]:
                        revert with 0, 17
                    mem[mem[64]] = mem[128] + mem[160] / 2
                else:
                    if s != 3:
                        revert with 0, 'more than 3 valid sources not supported'
                    if 0 >= mem[96]:
                        revert with 0, 50
                    if 1 >= mem[96]:
                        revert with 0, 50
                    if mem[160] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 0, 17
                    if not mem[128]:
                        revert with 0, 18
                    if 1 >= mem[96]:
                        revert with 0, 50
                    if 2 >= mem[96]:
                        revert with 0, 50
                    if mem[192] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 0, 17
                    if not mem[160]:
                        revert with 0, 18
                    if 10^18 * mem[160] / mem[128] > sub_bb0e70e0[address(arg1)]:
                        if 10^18 * mem[192] / mem[160] > sub_bb0e70e0[address(arg1)]:
                            revert with 0, 'too much deviation (3 valid sources)'
                        if 2 >= mem[96]:
                            revert with 0, 50
                        if 1 >= mem[96]:
                            revert with 0, 50
                        if mem[160] > !mem[192]:
                            revert with 0, 17
                        mem[mem[64]] = mem[160] + mem[192] / 2
                    else:
                        if 10^18 * mem[192] / mem[160] <= sub_bb0e70e0[address(arg1)]:
                            if 1 >= mem[96]:
                                revert with 0, 50
                            mem[mem[64]] = mem[160]
                        else:
                            if 10^18 * mem[160] / mem[128] <= sub_bb0e70e0[address(arg1)]:
                                if 1 >= mem[96]:
                                    revert with 0, 50
                                if 0 >= mem[96]:
                                    revert with 0, 50
                                if mem[128] > !mem[160]:
                                    revert with 0, 17
                                mem[mem[64]] = mem[128] + mem[160] / 2
                            else:
                                if 10^18 * mem[192] / mem[160] > sub_bb0e70e0[address(arg1)]:
                                    revert with 0, 'too much deviation (3 valid sources)'
                                if 2 >= mem[96]:
                                    revert with 0, 50
                                if 1 >= mem[96]:
                                    revert with 0, 50
                                if mem[160] > !mem[192]:
                                    revert with 0, 17
                                mem[mem[64]] = mem[160] + mem[192] / 2
            return memory
              from mem[64]
               len 32
}

function getPrice(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 == arg1:
        mem[0] = arg2
        mem[32] = 66
        if not sub_89752929[address(arg2)]:
            revert with 0, 'no primary source'
        if sub_89752929[address(arg2)] > test266151307():
            revert with 0, 65
        mem[96] = sub_89752929[address(arg2)]
        mem[64] = (32 * sub_89752929[address(arg2)]) + 128
        if not sub_89752929[address(arg2)]:
            idx = 0
            s = 0
            while idx < sub_89752929[address(arg2)]:
                mem[0] = idx
                mem[32] = sha3(address(arg2), 67)
                mem[mem[64] + 4] = arg2
                require ext_code.size(sub_c66683c0[address(arg2)][idx])
                staticcall sub_c66683c0[address(arg2)][idx].0xab9aadfe with:
                        gas gas_remaining wei
                       args address(arg2)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s
                    continue 
                _100 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if s == -1:
                    revert with 0, 17
                if s >= mem[96]:
                    revert with 0, 50
                mem[(32 * s) + 128] = mem[_100]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + 1
                continue 
            if s <= 0:
                revert with 0, 'no valid source'
            if s < 1:
                revert with 0, 17
            if var45002 < s - 1:
                if s < var47001:
                    revert with 0, 17
                if s - var47001 < 1:
                    revert with 0, 17
                if var73002 >= s + -var47001 - 1:
                    if var65001 == -1:
                        revert with 0, 17
                    if s < 1:
                        revert with 0, 17
                    # nil
                else:
                    if 1 > !var77002:
                        revert with 0, 17
                    if var81001 >= mem[96]:
                        revert with 0, 50
                    if var81003 >= mem[96]:
                        revert with 0, 50
                    if mem[(32 * var81003) + 128] <= mem[(32 * var81001) + 128]:
                        if var81003 == -1:
                            revert with 0, 17
                        if s < var79002:
                            revert with 0, 17
                        # nil
                    else:
                        if 1 > !var81003:
                            revert with 0, 17
                        if var81003 + 1 >= mem[96]:
                            revert with 0, 50
                        if var81003 >= mem[96]:
                            revert with 0, 50
                        if var81003 >= mem[96]:
                            revert with 0, 50
                        if 1 > !var81003:
                            revert with 0, 17
                        if var81003 + 1 >= mem[96]:
                            revert with 0, 50
                        if var81003 == -1:
                            revert with 0, 17
                        if s < var90002:
                            revert with 0, 17
                        # nil
            else:
                if s == 1:
                    if 0 >= mem[96]:
                        revert with 0, 50
                    if not mem[128]:
                        revert with 0, 18
                    mem[mem[64]] = 0xde0b6b3a76400000000000000000000000000000000 / mem[128]
                else:
                    if 2 == s:
                        if 0 >= mem[96]:
                            revert with 0, 50
                        if 1 >= mem[96]:
                            revert with 0, 50
                        if mem[160] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                            revert with 0, 17
                        if not mem[128]:
                            revert with 0, 18
                        if 10^18 * mem[160] / mem[128] > sub_bb0e70e0[address(arg2)]:
                            revert with 0, 'too much deviation (2 valid sources)'
                        if 1 >= mem[96]:
                            revert with 0, 50
                        if 0 >= mem[96]:
                            revert with 0, 50
                        if mem[128] > !mem[160]:
                            revert with 0, 17
                        if not mem[128] + mem[160] / 2:
                            revert with 0, 18
                        mem[mem[64]] = 0xde0b6b3a76400000000000000000000000000000000 / mem[128] + mem[160] / 2
                    else:
                        if s != 3:
                            revert with 0, 'more than 3 valid sources not supported'
                        if 0 >= mem[96]:
                            revert with 0, 50
                        if 1 >= mem[96]:
                            revert with 0, 50
                        if mem[160] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                            revert with 0, 17
                        if not mem[128]:
                            revert with 0, 18
                        if 1 >= mem[96]:
                            revert with 0, 50
                        if 2 >= mem[96]:
                            revert with 0, 50
                        if mem[192] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                            revert with 0, 17
                        if not mem[160]:
                            revert with 0, 18
                        if 10^18 * mem[160] / mem[128] > sub_bb0e70e0[address(arg2)]:
                            if 10^18 * mem[192] / mem[160] > sub_bb0e70e0[address(arg2)]:
                                revert with 0, 'too much deviation (3 valid sources)'
                            if 2 >= mem[96]:
                                revert with 0, 50
                            if 1 >= mem[96]:
                                revert with 0, 50
                            if mem[160] > !mem[192]:
                                revert with 0, 17
                            if not mem[160] + mem[192] / 2:
                                revert with 0, 18
                            mem[mem[64]] = 0xde0b6b3a76400000000000000000000000000000000 / mem[160] + mem[192] / 2
                        else:
                            if 10^18 * mem[192] / mem[160] <= sub_bb0e70e0[address(arg2)]:
                                if 1 >= mem[96]:
                                    revert with 0, 50
                                if not mem[160]:
                                    revert with 0, 18
                                mem[mem[64]] = 0xde0b6b3a76400000000000000000000000000000000 / mem[160]
                            else:
                                if 10^18 * mem[160] / mem[128] <= sub_bb0e70e0[address(arg2)]:
                                    if 1 >= mem[96]:
                                        revert with 0, 50
                                    if 0 >= mem[96]:
                                        revert with 0, 50
                                    if mem[128] > !mem[160]:
                                        revert with 0, 17
                                    if not mem[128] + mem[160] / 2:
                                        revert with 0, 18
                                    mem[mem[64]] = 0xde0b6b3a76400000000000000000000000000000000 / mem[128] + mem[160] / 2
                                else:
                                    if 10^18 * mem[192] / mem[160] > sub_bb0e70e0[address(arg2)]:
                                        revert with 0, 'too much deviation (3 valid sources)'
                                    if 2 >= mem[96]:
                                        revert with 0, 50
                                    if 1 >= mem[96]:
                                        revert with 0, 50
                                    if mem[160] > !mem[192]:
                                        revert with 0, 17
                                    if not mem[160] + mem[192] / 2:
                                        revert with 0, 18
                                    mem[mem[64]] = 0xde0b6b3a76400000000000000000000000000000000 / mem[160] + mem[192] / 2
                return mem[mem[64]], block.timestamp
        else:
            mem[128 len 32 * sub_89752929[address(arg2)]] = call.data[calldata.size len 32 * sub_89752929[address(arg2)]]
            idx = 0
            s = 0
            while idx < sub_89752929[address(arg2)]:
                mem[0] = idx
                mem[32] = sha3(address(arg2), 67)
                mem[mem[64] + 4] = arg2
                require ext_code.size(sub_c66683c0[address(arg2)][idx])
                staticcall sub_c66683c0[address(arg2)][idx].0xab9aadfe with:
                        gas gas_remaining wei
                       args address(arg2)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s
                    continue 
                _102 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if s == -1:
                    revert with 0, 17
                if s >= mem[96]:
                    revert with 0, 50
                mem[(32 * s) + 128] = mem[_102]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + 1
                continue 
            if s <= 0:
                revert with 0, 'no valid source'
            if s < 1:
                revert with 0, 17
            if var46002 < s - 1:
                if s < var48001:
                    revert with 0, 17
                if s - var48001 < 1:
                    revert with 0, 17
                if var74002 >= s + -var48001 - 1:
                    if var66001 == -1:
                        revert with 0, 17
                    if s < 1:
                        revert with 0, 17
                    # nil
                else:
                    if 1 > !var78002:
                        revert with 0, 17
                    if var82001 >= mem[96]:
                        revert with 0, 50
                    if var82003 >= mem[96]:
                        revert with 0, 50
                    if mem[(32 * var82003) + 128] <= mem[(32 * var82001) + 128]:
                        if var82003 == -1:
                            revert with 0, 17
                        if s < var80002:
                            revert with 0, 17
                        # nil
                    else:
                        if 1 > !var82003:
                            revert with 0, 17
                        if var82003 + 1 >= mem[96]:
                            revert with 0, 50
                        if var82003 >= mem[96]:
                            revert with 0, 50
                        if var82003 >= mem[96]:
                            revert with 0, 50
                        if 1 > !var82003:
                            revert with 0, 17
                        if var82003 + 1 >= mem[96]:
                            revert with 0, 50
                        if var82003 == -1:
                            revert with 0, 17
                        if s < var91002:
                            revert with 0, 17
                        # nil
            else:
                if s == 1:
                    if 0 >= mem[96]:
                        revert with 0, 50
                    if not mem[128]:
                        revert with 0, 18
                    mem[mem[64]] = 0xde0b6b3a76400000000000000000000000000000000 / mem[128]
                else:
                    if 2 == s:
                        if 0 >= mem[96]:
                            revert with 0, 50
                        if 1 >= mem[96]:
                            revert with 0, 50
                        if mem[160] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                            revert with 0, 17
                        if not mem[128]:
                            revert with 0, 18
                        if 10^18 * mem[160] / mem[128] > sub_bb0e70e0[address(arg2)]:
                            revert with 0, 'too much deviation (2 valid sources)'
                        if 1 >= mem[96]:
                            revert with 0, 50
                        if 0 >= mem[96]:
                            revert with 0, 50
                        if mem[128] > !mem[160]:
                            revert with 0, 17
                        if not mem[128] + mem[160] / 2:
                            revert with 0, 18
                        mem[mem[64]] = 0xde0b6b3a76400000000000000000000000000000000 / mem[128] + mem[160] / 2
                    else:
                        if s != 3:
                            revert with 0, 'more than 3 valid sources not supported'
                        if 0 >= mem[96]:
                            revert with 0, 50
                        if 1 >= mem[96]:
                            revert with 0, 50
                        if mem[160] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                            revert with 0, 17
                        if not mem[128]:
                            revert with 0, 18
                        if 1 >= mem[96]:
                            revert with 0, 50
                        if 2 >= mem[96]:
                            revert with 0, 50
                        if mem[192] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                            revert with 0, 17
                        if not mem[160]:
                            revert with 0, 18
                        if 10^18 * mem[160] / mem[128] > sub_bb0e70e0[address(arg2)]:
                            if 10^18 * mem[192] / mem[160] > sub_bb0e70e0[address(arg2)]:
                                revert with 0, 'too much deviation (3 valid sources)'
                            if 2 >= mem[96]:
                                revert with 0, 50
                            if 1 >= mem[96]:
                                revert with 0, 50
                            if mem[160] > !mem[192]:
                                revert with 0, 17
                            if not mem[160] + mem[192] / 2:
                                revert with 0, 18
                            mem[mem[64]] = 0xde0b6b3a76400000000000000000000000000000000 / mem[160] + mem[192] / 2
                        else:
                            if 10^18 * mem[192] / mem[160] <= sub_bb0e70e0[address(arg2)]:
                                if 1 >= mem[96]:
                                    revert with 0, 50
                                if not mem[160]:
                                    revert with 0, 18
                                mem[mem[64]] = 0xde0b6b3a76400000000000000000000000000000000 / mem[160]
                            else:
                                if 10^18 * mem[160] / mem[128] <= sub_bb0e70e0[address(arg2)]:
                                    if 1 >= mem[96]:
                                        revert with 0, 50
                                    if 0 >= mem[96]:
                                        revert with 0, 50
                                    if mem[128] > !mem[160]:
                                        revert with 0, 17
                                    if not mem[128] + mem[160] / 2:
                                        revert with 0, 18
                                    mem[mem[64]] = 0xde0b6b3a76400000000000000000000000000000000 / mem[128] + mem[160] / 2
                                else:
                                    if 10^18 * mem[192] / mem[160] > sub_bb0e70e0[address(arg2)]:
                                        revert with 0, 'too much deviation (3 valid sources)'
                                    if 2 >= mem[96]:
                                        revert with 0, 50
                                    if 1 >= mem[96]:
                                        revert with 0, 50
                                    if mem[160] > !mem[192]:
                                        revert with 0, 17
                                    if not mem[160] + mem[192] / 2:
                                        revert with 0, 18
                                    mem[mem[64]] = 0xde0b6b3a76400000000000000000000000000000000 / mem[160] + mem[192] / 2
                return mem[mem[64]], block.timestamp
    else:
        if arg2 != 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'one of the requested tokens must be AVAX or WAVAX'
        if arg1 != 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
            mem[0] = arg1
            mem[32] = 66
            if not sub_89752929[address(arg1)]:
                revert with 0, 'no primary source'
            if sub_89752929[address(arg1)] > test266151307():
                revert with 0, 65
            mem[96] = sub_89752929[address(arg1)]
            mem[64] = (32 * sub_89752929[address(arg1)]) + 128
            if not sub_89752929[address(arg1)]:
                idx = 0
                s = 0
                while idx < sub_89752929[address(arg1)]:
                    mem[0] = idx
                    mem[32] = sha3(address(arg1), 67)
                    mem[mem[64] + 4] = arg1
                    require ext_code.size(sub_c66683c0[address(arg1)][idx])
                    staticcall sub_c66683c0[address(arg1)][idx].0xab9aadfe with:
                            gas gas_remaining wei
                           args address(arg1)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s
                        continue 
                    _104 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if s == -1:
                        revert with 0, 17
                    if s >= mem[96]:
                        revert with 0, 50
                    mem[(32 * s) + 128] = mem[_104]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + 1
                    continue 
                if s <= 0:
                    revert with 0, 'no valid source'
                if s < 1:
                    revert with 0, 17
                if var46002 < s - 1:
                    if s < var48001:
                        revert with 0, 17
                    if s - var48001 < 1:
                        revert with 0, 17
                    if var74002 >= s + -var48001 - 1:
                        if var66001 == -1:
                            revert with 0, 17
                        if s < 1:
                            revert with 0, 17
                        # nil
                    else:
                        if 1 > !var78002:
                            revert with 0, 17
                        if var82001 >= mem[96]:
                            revert with 0, 50
                        if var82003 >= mem[96]:
                            revert with 0, 50
                        if mem[(32 * var82003) + 128] <= mem[(32 * var82001) + 128]:
                            if var82003 == -1:
                                revert with 0, 17
                            if s < var80002:
                                revert with 0, 17
                            # nil
                        else:
                            if 1 > !var82003:
                                revert with 0, 17
                            if var82003 + 1 >= mem[96]:
                                revert with 0, 50
                            if var82003 >= mem[96]:
                                revert with 0, 50
                            if var82003 >= mem[96]:
                                revert with 0, 50
                            if 1 > !var82003:
                                revert with 0, 17
                            if var82003 + 1 >= mem[96]:
                                revert with 0, 50
                            if var82003 == -1:
                                revert with 0, 17
                            if s < var91002:
                                revert with 0, 17
                            # nil
                else:
                    if s == 1:
                        if 0 >= mem[96]:
                            revert with 0, 50
                        if mem[128] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                            revert with 0, 17
                        mem[mem[64]] = Mask(144, 112, 10^18 * mem[128]) >> 112
                    else:
                        if 2 == s:
                            if 0 >= mem[96]:
                                revert with 0, 50
                            if 1 >= mem[96]:
                                revert with 0, 50
                            if mem[160] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                revert with 0, 17
                            if not mem[128]:
                                revert with 0, 18
                            if 10^18 * mem[160] / mem[128] > sub_bb0e70e0[address(arg1)]:
                                revert with 0, 'too much deviation (2 valid sources)'
                            if 1 >= mem[96]:
                                revert with 0, 50
                            if 0 >= mem[96]:
                                revert with 0, 50
                            if mem[128] > !mem[160]:
                                revert with 0, 17
                            if mem[128] + mem[160] / 2 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                revert with 0, 17
                            mem[mem[64]] = Mask(144, 112, 10^18 * mem[128] + mem[160] / 2) >> 112
                        else:
                            if s != 3:
                                revert with 0, 'more than 3 valid sources not supported'
                            if 0 >= mem[96]:
                                revert with 0, 50
                            if 1 >= mem[96]:
                                revert with 0, 50
                            if mem[160] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                revert with 0, 17
                            if not mem[128]:
                                revert with 0, 18
                            if 1 >= mem[96]:
                                revert with 0, 50
                            if 2 >= mem[96]:
                                revert with 0, 50
                            if mem[192] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                revert with 0, 17
                            if not mem[160]:
                                revert with 0, 18
                            if 10^18 * mem[160] / mem[128] > sub_bb0e70e0[address(arg1)]:
                                if 10^18 * mem[192] / mem[160] > sub_bb0e70e0[address(arg1)]:
                                    revert with 0, 'too much deviation (3 valid sources)'
                                if 2 >= mem[96]:
                                    revert with 0, 50
                                if 1 >= mem[96]:
                                    revert with 0, 50
                                if mem[160] > !mem[192]:
                                    revert with 0, 17
                                if mem[160] + mem[192] / 2 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                    revert with 0, 17
                                mem[mem[64]] = Mask(144, 112, 10^18 * mem[160] + mem[192] / 2) >> 112
                            else:
                                if 10^18 * mem[192] / mem[160] <= sub_bb0e70e0[address(arg1)]:
                                    if 1 >= mem[96]:
                                        revert with 0, 50
                                    if mem[160] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    mem[mem[64]] = Mask(144, 112, 10^18 * mem[160]) >> 112
                                else:
                                    if 10^18 * mem[160] / mem[128] <= sub_bb0e70e0[address(arg1)]:
                                        if 1 >= mem[96]:
                                            revert with 0, 50
                                        if 0 >= mem[96]:
                                            revert with 0, 50
                                        if mem[128] > !mem[160]:
                                            revert with 0, 17
                                        if mem[128] + mem[160] / 2 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                            revert with 0, 17
                                        mem[mem[64]] = Mask(144, 112, 10^18 * mem[128] + mem[160] / 2) >> 112
                                    else:
                                        if 10^18 * mem[192] / mem[160] > sub_bb0e70e0[address(arg1)]:
                                            revert with 0, 'too much deviation (3 valid sources)'
                                        if 2 >= mem[96]:
                                            revert with 0, 50
                                        if 1 >= mem[96]:
                                            revert with 0, 50
                                        if mem[160] > !mem[192]:
                                            revert with 0, 17
                                        if mem[160] + mem[192] / 2 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                            revert with 0, 17
                                        mem[mem[64]] = Mask(144, 112, 10^18 * mem[160] + mem[192] / 2) >> 112
                    return mem[mem[64]], block.timestamp
            else:
                mem[128 len 32 * sub_89752929[address(arg1)]] = call.data[calldata.size len 32 * sub_89752929[address(arg1)]]
                idx = 0
                s = 0
                while idx < sub_89752929[address(arg1)]:
                    mem[0] = idx
                    mem[32] = sha3(address(arg1), 67)
                    mem[mem[64] + 4] = arg1
                    require ext_code.size(sub_c66683c0[address(arg1)][idx])
                    staticcall sub_c66683c0[address(arg1)][idx].0xab9aadfe with:
                            gas gas_remaining wei
                           args address(arg1)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s
                        continue 
                    _106 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if s == -1:
                        revert with 0, 17
                    if s >= mem[96]:
                        revert with 0, 50
                    mem[(32 * s) + 128] = mem[_106]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + 1
                    continue 
                if s <= 0:
                    revert with 0, 'no valid source'
                if s < 1:
                    revert with 0, 17
                if var47002 < s - 1:
                    if s < var49001:
                        revert with 0, 17
                    if s - var49001 < 1:
                        revert with 0, 17
                    if var75002 >= s + -var49001 - 1:
                        if var67001 == -1:
                            revert with 0, 17
                        if s < 1:
                            revert with 0, 17
                        # nil
                    else:
                        if 1 > !var79002:
                            revert with 0, 17
                        if var83001 >= mem[96]:
                            revert with 0, 50
                        if var83003 >= mem[96]:
                            revert with 0, 50
                        if mem[(32 * var83003) + 128] <= mem[(32 * var83001) + 128]:
                            if var83003 == -1:
                                revert with 0, 17
                            if s < var81002:
                                revert with 0, 17
                            # nil
                        else:
                            if 1 > !var83003:
                                revert with 0, 17
                            if var83003 + 1 >= mem[96]:
                                revert with 0, 50
                            if var83003 >= mem[96]:
                                revert with 0, 50
                            if var83003 >= mem[96]:
                                revert with 0, 50
                            if 1 > !var83003:
                                revert with 0, 17
                            if var83003 + 1 >= mem[96]:
                                revert with 0, 50
                            if var83003 == -1:
                                revert with 0, 17
                            if s < var92002:
                                revert with 0, 17
                            # nil
                else:
                    if s == 1:
                        if 0 >= mem[96]:
                            revert with 0, 50
                        if mem[128] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                            revert with 0, 17
                        mem[mem[64]] = Mask(144, 112, 10^18 * mem[128]) >> 112
                    else:
                        if 2 == s:
                            if 0 >= mem[96]:
                                revert with 0, 50
                            if 1 >= mem[96]:
                                revert with 0, 50
                            if mem[160] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                revert with 0, 17
                            if not mem[128]:
                                revert with 0, 18
                            if 10^18 * mem[160] / mem[128] > sub_bb0e70e0[address(arg1)]:
                                revert with 0, 'too much deviation (2 valid sources)'
                            if 1 >= mem[96]:
                                revert with 0, 50
                            if 0 >= mem[96]:
                                revert with 0, 50
                            if mem[128] > !mem[160]:
                                revert with 0, 17
                            if mem[128] + mem[160] / 2 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                revert with 0, 17
                            mem[mem[64]] = Mask(144, 112, 10^18 * mem[128] + mem[160] / 2) >> 112
                        else:
                            if s != 3:
                                revert with 0, 'more than 3 valid sources not supported'
                            if 0 >= mem[96]:
                                revert with 0, 50
                            if 1 >= mem[96]:
                                revert with 0, 50
                            if mem[160] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                revert with 0, 17
                            if not mem[128]:
                                revert with 0, 18
                            if 1 >= mem[96]:
                                revert with 0, 50
                            if 2 >= mem[96]:
                                revert with 0, 50
                            if mem[192] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                revert with 0, 17
                            if not mem[160]:
                                revert with 0, 18
                            if 10^18 * mem[160] / mem[128] > sub_bb0e70e0[address(arg1)]:
                                if 10^18 * mem[192] / mem[160] > sub_bb0e70e0[address(arg1)]:
                                    revert with 0, 'too much deviation (3 valid sources)'
                                if 2 >= mem[96]:
                                    revert with 0, 50
                                if 1 >= mem[96]:
                                    revert with 0, 50
                                if mem[160] > !mem[192]:
                                    revert with 0, 17
                                if mem[160] + mem[192] / 2 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                    revert with 0, 17
                                mem[mem[64]] = Mask(144, 112, 10^18 * mem[160] + mem[192] / 2) >> 112
                            else:
                                if 10^18 * mem[192] / mem[160] <= sub_bb0e70e0[address(arg1)]:
                                    if 1 >= mem[96]:
                                        revert with 0, 50
                                    if mem[160] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                        revert with 0, 17
                                    mem[mem[64]] = Mask(144, 112, 10^18 * mem[160]) >> 112
                                else:
                                    if 10^18 * mem[160] / mem[128] <= sub_bb0e70e0[address(arg1)]:
                                        if 1 >= mem[96]:
                                            revert with 0, 50
                                        if 0 >= mem[96]:
                                            revert with 0, 50
                                        if mem[128] > !mem[160]:
                                            revert with 0, 17
                                        if mem[128] + mem[160] / 2 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                            revert with 0, 17
                                        mem[mem[64]] = Mask(144, 112, 10^18 * mem[128] + mem[160] / 2) >> 112
                                    else:
                                        if 10^18 * mem[192] / mem[160] > sub_bb0e70e0[address(arg1)]:
                                            revert with 0, 'too much deviation (3 valid sources)'
                                        if 2 >= mem[96]:
                                            revert with 0, 50
                                        if 1 >= mem[96]:
                                            revert with 0, 50
                                        if mem[160] > !mem[192]:
                                            revert with 0, 17
                                        if mem[160] + mem[192] / 2 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                            revert with 0, 17
                                        mem[mem[64]] = Mask(144, 112, 10^18 * mem[160] + mem[192] / 2) >> 112
                    return mem[mem[64]], block.timestamp
        else:
            mem[0] = arg2
            mem[32] = 66
            if not sub_89752929[address(arg2)]:
                revert with 0, 'no primary source'
            if sub_89752929[address(arg2)] > test266151307():
                revert with 0, 65
            mem[96] = sub_89752929[address(arg2)]
            mem[64] = (32 * sub_89752929[address(arg2)]) + 128
            if not sub_89752929[address(arg2)]:
                idx = 0
                s = 0
                while idx < sub_89752929[address(arg2)]:
                    mem[0] = idx
                    mem[32] = sha3(address(arg2), 67)
                    mem[mem[64] + 4] = arg2
                    require ext_code.size(sub_c66683c0[address(arg2)][idx])
                    staticcall sub_c66683c0[address(arg2)][idx].0xab9aadfe with:
                            gas gas_remaining wei
                           args address(arg2)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s
                        continue 
                    _108 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if s == -1:
                        revert with 0, 17
                    if s >= mem[96]:
                        revert with 0, 50
                    mem[(32 * s) + 128] = mem[_108]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + 1
                    continue 
                if s <= 0:
                    revert with 0, 'no valid source'
                if s < 1:
                    revert with 0, 17
                if var46002 < s - 1:
                    if s < var48001:
                        revert with 0, 17
                    if s - var48001 < 1:
                        revert with 0, 17
                    if var74002 >= s + -var48001 - 1:
                        if var66001 == -1:
                            revert with 0, 17
                        if s < 1:
                            revert with 0, 17
                        # nil
                    else:
                        if 1 > !var78002:
                            revert with 0, 17
                        if var82001 >= mem[96]:
                            revert with 0, 50
                        if var82003 >= mem[96]:
                            revert with 0, 50
                        if mem[(32 * var82003) + 128] <= mem[(32 * var82001) + 128]:
                            if var82003 == -1:
                                revert with 0, 17
                            if s < var80002:
                                revert with 0, 17
                            # nil
                        else:
                            if 1 > !var82003:
                                revert with 0, 17
                            if var82003 + 1 >= mem[96]:
                                revert with 0, 50
                            if var82003 >= mem[96]:
                                revert with 0, 50
                            if var82003 >= mem[96]:
                                revert with 0, 50
                            if 1 > !var82003:
                                revert with 0, 17
                            if var82003 + 1 >= mem[96]:
                                revert with 0, 50
                            if var82003 == -1:
                                revert with 0, 17
                            if s < var91002:
                                revert with 0, 17
                            # nil
                else:
                    if s == 1:
                        if 0 >= mem[96]:
                            revert with 0, 50
                        if not mem[128]:
                            revert with 0, 18
                        mem[mem[64]] = 0xde0b6b3a76400000000000000000000000000000000 / mem[128]
                    else:
                        if 2 == s:
                            if 0 >= mem[96]:
                                revert with 0, 50
                            if 1 >= mem[96]:
                                revert with 0, 50
                            if mem[160] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                revert with 0, 17
                            if not mem[128]:
                                revert with 0, 18
                            if 10^18 * mem[160] / mem[128] > sub_bb0e70e0[address(arg2)]:
                                revert with 0, 'too much deviation (2 valid sources)'
                            if 1 >= mem[96]:
                                revert with 0, 50
                            if 0 >= mem[96]:
                                revert with 0, 50
                            if mem[128] > !mem[160]:
                                revert with 0, 17
                            if not mem[128] + mem[160] / 2:
                                revert with 0, 18
                            mem[mem[64]] = 0xde0b6b3a76400000000000000000000000000000000 / mem[128] + mem[160] / 2
                        else:
                            if s != 3:
                                revert with 0, 'more than 3 valid sources not supported'
                            if 0 >= mem[96]:
                                revert with 0, 50
                            if 1 >= mem[96]:
                                revert with 0, 50
                            if mem[160] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                revert with 0, 17
                            if not mem[128]:
                                revert with 0, 18
                            if 1 >= mem[96]:
                                revert with 0, 50
                            if 2 >= mem[96]:
                                revert with 0, 50
                            if mem[192] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                revert with 0, 17
                            if not mem[160]:
                                revert with 0, 18
                            if 10^18 * mem[160] / mem[128] > sub_bb0e70e0[address(arg2)]:
                                if 10^18 * mem[192] / mem[160] > sub_bb0e70e0[address(arg2)]:
                                    revert with 0, 'too much deviation (3 valid sources)'
                                if 2 >= mem[96]:
                                    revert with 0, 50
                                if 1 >= mem[96]:
                                    revert with 0, 50
                                if mem[160] > !mem[192]:
                                    revert with 0, 17
                                if not mem[160] + mem[192] / 2:
                                    revert with 0, 18
                                mem[mem[64]] = 0xde0b6b3a76400000000000000000000000000000000 / mem[160] + mem[192] / 2
                            else:
                                if 10^18 * mem[192] / mem[160] <= sub_bb0e70e0[address(arg2)]:
                                    if 1 >= mem[96]:
                                        revert with 0, 50
                                    if not mem[160]:
                                        revert with 0, 18
                                    mem[mem[64]] = 0xde0b6b3a76400000000000000000000000000000000 / mem[160]
                                else:
                                    if 10^18 * mem[160] / mem[128] <= sub_bb0e70e0[address(arg2)]:
                                        if 1 >= mem[96]:
                                            revert with 0, 50
                                        if 0 >= mem[96]:
                                            revert with 0, 50
                                        if mem[128] > !mem[160]:
                                            revert with 0, 17
                                        if not mem[128] + mem[160] / 2:
                                            revert with 0, 18
                                        mem[mem[64]] = 0xde0b6b3a76400000000000000000000000000000000 / mem[128] + mem[160] / 2
                                    else:
                                        if 10^18 * mem[192] / mem[160] > sub_bb0e70e0[address(arg2)]:
                                            revert with 0, 'too much deviation (3 valid sources)'
                                        if 2 >= mem[96]:
                                            revert with 0, 50
                                        if 1 >= mem[96]:
                                            revert with 0, 50
                                        if mem[160] > !mem[192]:
                                            revert with 0, 17
                                        if not mem[160] + mem[192] / 2:
                                            revert with 0, 18
                                        mem[mem[64]] = 0xde0b6b3a76400000000000000000000000000000000 / mem[160] + mem[192] / 2
                    return mem[mem[64]], block.timestamp
            else:
                mem[128 len 32 * sub_89752929[address(arg2)]] = call.data[calldata.size len 32 * sub_89752929[address(arg2)]]
                idx = 0
                s = 0
                while idx < sub_89752929[address(arg2)]:
                    mem[0] = idx
                    mem[32] = sha3(address(arg2), 67)
                    mem[mem[64] + 4] = arg2
                    require ext_code.size(sub_c66683c0[address(arg2)][idx])
                    staticcall sub_c66683c0[address(arg2)][idx].0xab9aadfe with:
                            gas gas_remaining wei
                           args address(arg2)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s
                        continue 
                    _110 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if s == -1:
                        revert with 0, 17
                    if s >= mem[96]:
                        revert with 0, 50
                    mem[(32 * s) + 128] = mem[_110]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + 1
                    continue 
                if s <= 0:
                    revert with 0, 'no valid source'
                if s < 1:
                    revert with 0, 17
                if var47002 < s - 1:
                    if s < var49001:
                        revert with 0, 17
                    if s - var49001 < 1:
                        revert with 0, 17
                    if var75002 >= s + -var49001 - 1:
                        if var67001 == -1:
                            revert with 0, 17
                        if s < 1:
                            revert with 0, 17
                        # nil
                    else:
                        if 1 > !var79002:
                            revert with 0, 17
                        if var83001 >= mem[96]:
                            revert with 0, 50
                        if var83003 >= mem[96]:
                            revert with 0, 50
                        if mem[(32 * var83003) + 128] <= mem[(32 * var83001) + 128]:
                            if var83003 == -1:
                                revert with 0, 17
                            if s < var81002:
                                revert with 0, 17
                            # nil
                        else:
                            if 1 > !var83003:
                                revert with 0, 17
                            if var83003 + 1 >= mem[96]:
                                revert with 0, 50
                            if var83003 >= mem[96]:
                                revert with 0, 50
                            if var83003 >= mem[96]:
                                revert with 0, 50
                            if 1 > !var83003:
                                revert with 0, 17
                            if var83003 + 1 >= mem[96]:
                                revert with 0, 50
                            if var83003 == -1:
                                revert with 0, 17
                            if s < var92002:
                                revert with 0, 17
                            # nil
                else:
                    if s == 1:
                        if 0 >= mem[96]:
                            revert with 0, 50
                        if not mem[128]:
                            revert with 0, 18
                        mem[mem[64]] = 0xde0b6b3a76400000000000000000000000000000000 / mem[128]
                    else:
                        if 2 == s:
                            if 0 >= mem[96]:
                                revert with 0, 50
                            if 1 >= mem[96]:
                                revert with 0, 50
                            if mem[160] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                revert with 0, 17
                            if not mem[128]:
                                revert with 0, 18
                            if 10^18 * mem[160] / mem[128] > sub_bb0e70e0[address(arg2)]:
                                revert with 0, 'too much deviation (2 valid sources)'
                            if 1 >= mem[96]:
                                revert with 0, 50
                            if 0 >= mem[96]:
                                revert with 0, 50
                            if mem[128] > !mem[160]:
                                revert with 0, 17
                            if not mem[128] + mem[160] / 2:
                                revert with 0, 18
                            mem[mem[64]] = 0xde0b6b3a76400000000000000000000000000000000 / mem[128] + mem[160] / 2
                        else:
                            if s != 3:
                                revert with 0, 'more than 3 valid sources not supported'
                            if 0 >= mem[96]:
                                revert with 0, 50
                            if 1 >= mem[96]:
                                revert with 0, 50
                            if mem[160] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                revert with 0, 17
                            if not mem[128]:
                                revert with 0, 18
                            if 1 >= mem[96]:
                                revert with 0, 50
                            if 2 >= mem[96]:
                                revert with 0, 50
                            if mem[192] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                revert with 0, 17
                            if not mem[160]:
                                revert with 0, 18
                            if 10^18 * mem[160] / mem[128] > sub_bb0e70e0[address(arg2)]:
                                if 10^18 * mem[192] / mem[160] > sub_bb0e70e0[address(arg2)]:
                                    revert with 0, 'too much deviation (3 valid sources)'
                                if 2 >= mem[96]:
                                    revert with 0, 50
                                if 1 >= mem[96]:
                                    revert with 0, 50
                                if mem[160] > !mem[192]:
                                    revert with 0, 17
                                if not mem[160] + mem[192] / 2:
                                    revert with 0, 18
                                mem[mem[64]] = 0xde0b6b3a76400000000000000000000000000000000 / mem[160] + mem[192] / 2
                            else:
                                if 10^18 * mem[192] / mem[160] <= sub_bb0e70e0[address(arg2)]:
                                    if 1 >= mem[96]:
                                        revert with 0, 50
                                    if not mem[160]:
                                        revert with 0, 18
                                    mem[mem[64]] = 0xde0b6b3a76400000000000000000000000000000000 / mem[160]
                                else:
                                    if 10^18 * mem[160] / mem[128] <= sub_bb0e70e0[address(arg2)]:
                                        if 1 >= mem[96]:
                                            revert with 0, 50
                                        if 0 >= mem[96]:
                                            revert with 0, 50
                                        if mem[128] > !mem[160]:
                                            revert with 0, 17
                                        if not mem[128] + mem[160] / 2:
                                            revert with 0, 18
                                        mem[mem[64]] = 0xde0b6b3a76400000000000000000000000000000000 / mem[128] + mem[160] / 2
                                    else:
                                        if 10^18 * mem[192] / mem[160] > sub_bb0e70e0[address(arg2)]:
                                            revert with 0, 'too much deviation (3 valid sources)'
                                        if 2 >= mem[96]:
                                            revert with 0, 50
                                        if 1 >= mem[96]:
                                            revert with 0, 50
                                        if mem[160] > !mem[192]:
                                            revert with 0, 17
                                        if not mem[160] + mem[192] / 2:
                                            revert with 0, 18
                                        mem[mem[64]] = 0xde0b6b3a76400000000000000000000000000000000 / mem[160] + mem[192] / 2
                    return mem[mem[64]], block.timestamp
}



}
