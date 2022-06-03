contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function batchTransfer(address arg1, address[] arg2, uint256[] arg3) payable {
    mem[64] = 96
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require arg3 + (32 * arg3.length) + 36 <= calldata.size
    if arg3.length != arg2.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'recipient & amount arrays must be the same length'
    idx = 0
    while idx < arg2.length:
        require cd[((32 * idx) + arg2 + 36)] == address(cd[((32 * idx) + arg2 + 36)])
        if idx >= arg3.length:
            revert with 0, 50
        _70 = mem[64]
        mem[mem[64] + 36] = msg.sender
        mem[mem[64] + 68] = address(cd[((32 * idx) + arg2 + 36)])
        mem[mem[64] + 100] = cd[((32 * idx) + arg3 + 36)]
        _71 = mem[64]
        mem[mem[64]] = 100
        mem[64] = mem[64] + 132
        mem[_71 + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 or mem[_71 + 36 len 28]
        mem[64] = _70 + 196
        mem[_70 + 132] = 32
        mem[_70 + 164] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(arg1):
            revert with 0, 'Address: call to non-contract'
        _78 = mem[_71]
        s = 0
        while s < _78:
            mem[s + _70 + 196] = mem[s + _71 + 32]
            s = s + 32
            continue 
        if ceil32(_78) > _78:
            mem[_78 + _70 + 196] = 0
        call arg1.mem[_70 + 196 len 4] with:
             gas gas_remaining wei
            args mem[_70 + 200 len _78 - 4]
        if not return_data.size:
            if not ext_call.success:
                if mem[96]:
                    revert with memory
                      from 128
                       len mem[96]
                mem[_70 + 196] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_70 + 200] = 32
                idx = 0
                while idx < 32:
                    mem[idx + _70 + 264] = mem[idx + _70 + 164]
                    idx = idx + 32
                    continue 
                revert with 0, 32, 32, mem[_70 + 264]
            if mem[96]:
                require mem[96] >= 32
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[64] = _70 + ceil32(return_data.size) + 197
            mem[_70 + 196] = return_data.size
            mem[_70 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_70 + ceil32(return_data.size) + 197] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_70 + ceil32(return_data.size) + 201] = 32
                idx = 0
                while idx < 32:
                    mem[idx + _70 + ceil32(return_data.size) + 265] = mem[idx + _70 + 164]
                    idx = idx + 32
                    continue 
                revert with 0, 32, 32, mem[_70 + ceil32(return_data.size) + 265]
            if return_data.size:
                require return_data.size >= 32
                require mem[_70 + 228] == bool(mem[_70 + 228])
                if not mem[_70 + 228]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    return 1
}



}
