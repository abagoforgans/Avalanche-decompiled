contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_77bb004e(?) payable {
    require calldata.size - 4 >= 96
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 36).length) + 97 < 96 or ceil32(32 * ('cd', 36).length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    s = cd[36] + 36
    t = 128
    idx = 0
    while idx < ('cd', 36).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    if ('cd', 68).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 68).length) + 98 < 97 or ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + 98 > test266151307():
        revert with 0, 65
    mem[ceil32(32 * ('cd', 36).length) + 97] = ('cd', 68).length
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    idx = 0
    s = cd[68] + 36
    t = ceil32(32 * ('cd', 36).length) + 129
    while idx < ('cd', 68).length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ('cd', 36).length > 0
    require ('cd', 36).length == ('cd', 68).length
    mem[ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + 102] = msg.sender
    require ext_code.size(address(cd[4]))
    staticcall address(cd[4]).0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    mem[ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + 98] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + ceil32(return_data.size) + 98
    require return_data.size >= 32
    idx = 0
    s = 0
    while idx < ('cd', 36).length:
        if idx >= mem[ceil32(32 * ('cd', 36).length) + 97]:
            revert with 0, 50
        _230 = mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + 129]
        require mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + 129] > 0
        if s > !mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + 129]:
            revert with 0, 17
        require s + mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + 129] <= ext_call.return_data[0]
        if idx >= mem[96]:
            revert with 0, 50
        _232 = mem[(32 * idx) + 128]
        _233 = mem[64]
        mem[mem[64] + 36] = msg.sender
        mem[mem[64] + 68] = address(_232)
        mem[mem[64] + 100] = _230
        _234 = mem[64]
        mem[mem[64]] = 100
        mem[64] = mem[64] + 132
        mem[_234 + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 or mem[_234 + 36 len 28]
        mem[64] = _233 + 196
        mem[_233 + 132] = 32
        mem[_233 + 164] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(address(cd[4])):
            revert with 0, 'Address: call to non-contract'
        _241 = mem[_234]
        t = 0
        while t < _241:
            mem[t + _233 + 196] = mem[t + _234 + 32]
            t = t + 32
            continue 
        if ceil32(_241) > _241:
            mem[_241 + _233 + 196] = 0
        call address(cd[4]).mem[_233 + 196 len 4] with:
             gas gas_remaining wei
            args mem[_233 + 200 len _241 - 4]
        if not return_data.size:
            if not ext_call.success:
                if mem[96]:
                    revert with memory
                      from 128
                       len mem[96]
                mem[_233 + 196] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_233 + 200] = 32
                idx = 0
                while idx < 32:
                    mem[idx + _233 + 264] = mem[idx + _233 + 164]
                    idx = idx + 32
                    continue 
                revert with 0, 32, 32, mem[_233 + 264]
            if mem[96]:
                require mem[96] >= 32
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[64] = _233 + ceil32(return_data.size) + 197
            mem[_233 + 196] = return_data.size
            mem[_233 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_233 + ceil32(return_data.size) + 197] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_233 + ceil32(return_data.size) + 201] = 32
                idx = 0
                while idx < 32:
                    mem[idx + _233 + ceil32(return_data.size) + 265] = mem[idx + _233 + 164]
                    idx = idx + 32
                    continue 
                revert with 0, 32, 32, mem[_233 + ceil32(return_data.size) + 265]
            if return_data.size:
                require return_data.size >= 32
                require mem[_233 + 228] == bool(mem[_233 + 228])
                if not mem[_233 + 228]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + _230
        continue 
}



}
