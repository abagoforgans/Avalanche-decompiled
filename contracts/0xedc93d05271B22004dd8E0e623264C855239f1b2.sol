contract main {




// =====================  Runtime code  =====================


#
#  - transfer(address arg1, address arg2, uint256 arg3)
#
address storC8FC;

function _fallback() payable {
    revert
}

function multiTransfer(address[] arg1, address[] arg2, uint256[] arg3) payable {
    mem[64] = 96
    require calldata.size - 4 >= 96
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require arg3 + (32 * arg3.length) + 36 <= calldata.size
    if storC8FC != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'LibDiamond: Must be contract owner'
    idx = 0
    while idx < arg1.length:
        if idx >= arg2.length:
            revert with 0, 50
        require cd[((32 * idx) + arg2 + 36)] == address(cd[((32 * idx) + arg2 + 36)])
        if idx >= arg3.length:
            revert with 0, 50
        if idx >= arg1.length:
            revert with 0, 50
        require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
        _66 = mem[64]
        mem[mem[64] + 36] = address(cd[((32 * idx) + arg2 + 36)])
        mem[mem[64] + 68] = cd[((32 * idx) + arg3 + 36)]
        _67 = mem[64]
        mem[mem[64]] = 68
        mem[64] = mem[64] + 100
        mem[_67 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_67 + 36 len 28]
        mem[64] = _66 + 164
        mem[_66 + 100] = 32
        mem[_66 + 132] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(address(cd[((32 * idx) + arg1 + 36)])):
            revert with 0, 'Address: call to non-contract'
        _74 = mem[_67]
        s = 0
        while s < _74:
            mem[s + _66 + 164] = mem[s + _67 + 32]
            s = s + 32
            continue 
        if ceil32(_74) > _74:
            mem[_66 + _74 + 164] = 0
        call address(cd[((32 * idx) + arg1 + 36)]).mem[_66 + 164 len 4] with:
             gas gas_remaining wei
            args mem[_66 + 168 len _74 - 4]
        if not return_data.size:
            if not ext_call.success:
                if mem[96]:
                    revert with memory
                      from 128
                       len mem[96]
                mem[_66 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_66 + 168] = 32
                idx = 0
                while idx < 32:
                    mem[idx + _66 + 232] = mem[idx + _66 + 132]
                    idx = idx + 32
                    continue 
                revert with 0, 32, 32, mem[_66 + 232]
            if mem[96]:
                require mem[96] >= 32
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[64] = _66 + ceil32(return_data.size) + 165
            mem[_66 + 164] = return_data.size
            mem[_66 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_66 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_66 + ceil32(return_data.size) + 169] = 32
                idx = 0
                while idx < 32:
                    mem[idx + _66 + ceil32(return_data.size) + 233] = mem[idx + _66 + 132]
                    idx = idx + 32
                    continue 
                revert with 0, 32, 32, mem[_66 + ceil32(return_data.size) + 233]
            if return_data.size:
                require return_data.size >= 32
                require mem[_66 + 196] == bool(mem[_66 + 196])
                if not mem[_66 + 196]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}



}
