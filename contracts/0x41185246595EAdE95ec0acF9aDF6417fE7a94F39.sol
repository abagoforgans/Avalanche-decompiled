contract main {




// =====================  Runtime code  =====================


#
#  - distributeTokens(address arg1, address[] arg2, uint256[] arg3)
#
function distributeEther(address[] arg1, uint256[] arg2) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    idx = 0
    while idx < arg1.length:
        if idx >= arg2.length:
            revert with 0, 50
        if idx >= arg1.length:
            revert with 0, 50
        require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
        if eth.balance(this.address) < cd[((32 * idx) + arg2 + 36)]:
            revert with 0, 'Address: insufficient balance'
        call address(cd[((32 * idx) + arg1 + 36)]) with:
           value cd[((32 * idx) + arg2 + 36)] wei
             gas gas_remaining wei
        if return_data.size:
            _31 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_31] = return_data.size
            mem[_31 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'Address: unable to send value, recipient may have reverted'
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    if eth.balance(this.address):
        if eth.balance(this.address) < eth.balance(this.address):
            revert with 0, 'Address: insufficient balance'
        call msg.sender with:
           value eth.balance(this.address) wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with 0, 'Address: unable to send value, recipient may have reverted'
}

function _fallback() payable {
    mem[64] = 128
    if calldata.size < 4:
        require not calldata.size
    else:
        if uint32(call.func_hash) >> 224 != unknown_0x51b6fe96(?????):
            require unknown_0x9e7934db(?????) == uint32(call.func_hash) >> 224
            require calldata.size - 4 >= 64
            require cd[4] <= test266151307()
            require cd[4] + 35 < calldata.size
            require ('cd', 4).length <= test266151307()
            require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
            require cd[36] <= test266151307()
            require cd[36] + 35 < calldata.size
            require ('cd', 36).length <= test266151307()
            require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
            idx = 0
            while idx < ('cd', 4).length:
                if idx >= ('cd', 36).length:
                    revert with 0, 50
                if idx >= ('cd', 4).length:
                    revert with 0, 50
                require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                if eth.balance(this.address) < cd[((32 * idx) + cd[36] + 36)]:
                    revert with 0, 'Address: insufficient balance'
                call address(cd[((32 * idx) + cd[4] + 36)]) with:
                   value cd[((32 * idx) + cd[36] + 36)] wei
                     gas gas_remaining wei
                if return_data.size:
                    _609 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_609] = return_data.size
                    mem[_609 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'Address: unable to send value, recipient may have reverted'
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            if eth.balance(this.address):
                if eth.balance(this.address) < eth.balance(this.address):
                    revert with 0, 'Address: insufficient balance'
                call msg.sender with:
                   value eth.balance(this.address) wei
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with 0, 'Address: unable to send value, recipient may have reverted'
        else:
            require not msg.value
            require calldata.size - 4 >= 96
            require cd[4] == address(cd[4])
            require cd[36] <= test266151307()
            require cd[36] + 35 < calldata.size
            require ('cd', 36).length <= test266151307()
            require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
            require cd[68] <= test266151307()
            require cd[68] + 35 < calldata.size
            require ('cd', 68).length <= test266151307()
            require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
            idx = 0
            s = 0
            while idx < ('cd', 36).length:
                if idx >= ('cd', 68).length:
                    revert with 0, 50
                if s > !cd[((32 * idx) + cd[68] + 36)]:
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + cd[((32 * idx) + cd[68] + 36)]
                continue 
            mem[164] = msg.sender
            mem[196] = this.address
            mem[228] = s * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length
            mem[128] = 100
            mem[164 len 28] = Mask(224, 32, msg.sender) >> 32
            mem[160 len 4] = unknown_0x23b872dd(?????)
            mem[64] = 324
            mem[260] = 32
            mem[292] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(address(cd[4])):
                revert with 0, 'Address: call to non-contract'
            mem[324 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), s * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length, 0
            mem[424] = 0
            call address(cd[4]) with:
               funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, address(this.address), s * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length, 0) >> 224
                 gas gas_remaining wei
                args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, address(this.address), s * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length, 0) << 544)
            if not return_data.size:
                if not ext_call.success:
                    if mem[96]:
                        revert with memory
                          from 128
                           len mem[96]
                    revert with 0, 'SafeERC20: low-level call failed'
                require not mem[96]
                idx = 0
                while idx < ('cd', 36).length:
                    require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                    if idx >= ('cd', 68).length:
                        revert with 0, 50
                    _1744 = mem[64]
                    mem[mem[64] + 36] = address(cd[((32 * idx) + cd[36] + 36)])
                    mem[mem[64] + 68] = cd[((32 * idx) + cd[68] + 36)]
                    _1756 = mem[64]
                    mem[mem[64]] = 68
                    mem[64] = mem[64] + 100
                    mem[_1756 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_1756 + 36 len 28]
                    mem[64] = _1744 + 164
                    mem[_1744 + 100] = 32
                    mem[_1744 + 132] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(address(cd[4])):
                        revert with 0, 'Address: call to non-contract'
                    _1812 = mem[_1756]
                    s = 0
                    while s < _1812:
                        mem[s + _1744 + 164] = mem[s + _1756 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_1812) > _1812:
                        mem[_1812 + _1744 + 164] = 0
                    call address(cd[4]).mem[_1744 + 164 len 4] with:
                         gas gas_remaining wei
                        args mem[_1744 + 168 len _1812 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            mem[_1744 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_1744 + 168] = 32
                            idx = 0
                            while idx < 32:
                                mem[idx + _1744 + 232] = mem[idx + _1744 + 132]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 32, mem[_1744 + 232]
                        if mem[96]:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[64] = _1744 + ceil32(return_data.size) + 165
                        mem[_1744 + 164] = return_data.size
                        mem[_1744 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_1744 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_1744 + ceil32(return_data.size) + 169] = 32
                            idx = 0
                            while idx < 32:
                                mem[idx + _1744 + ceil32(return_data.size) + 233] = mem[idx + _1744 + 132]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 32, mem[_1744 + ceil32(return_data.size) + 233]
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_1744 + 196] == bool(mem[_1744 + 196])
                            if not mem[_1744 + 196]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
            mem[64] = ceil32(return_data.size) + 325
            mem[324] = return_data.size
            mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if not return_data.size:
                idx = 0
                while idx < ('cd', 36).length:
                    require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                    if idx >= ('cd', 68).length:
                        revert with 0, 50
                    _1746 = mem[64]
                    mem[mem[64] + 36] = address(cd[((32 * idx) + cd[36] + 36)])
                    mem[mem[64] + 68] = cd[((32 * idx) + cd[68] + 36)]
                    _1760 = mem[64]
                    mem[mem[64]] = 68
                    mem[64] = mem[64] + 100
                    mem[_1760 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_1760 + 36 len 28]
                    mem[64] = _1746 + 164
                    mem[_1746 + 100] = 32
                    mem[_1746 + 132] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(address(cd[4])):
                        revert with 0, 'Address: call to non-contract'
                    _1816 = mem[_1760]
                    s = 0
                    while s < _1816:
                        mem[s + _1746 + 164] = mem[s + _1760 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_1816) > _1816:
                        mem[_1816 + _1746 + 164] = 0
                    call address(cd[4]).mem[_1746 + 164 len 4] with:
                         gas gas_remaining wei
                        args mem[_1746 + 168 len _1816 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            mem[_1746 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_1746 + 168] = 32
                            idx = 0
                            while idx < 32:
                                mem[idx + _1746 + 232] = mem[idx + _1746 + 132]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 32, mem[_1746 + 232]
                        if mem[96]:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[64] = _1746 + ceil32(return_data.size) + 165
                        mem[_1746 + 164] = return_data.size
                        mem[_1746 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_1746 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_1746 + ceil32(return_data.size) + 169] = 32
                            idx = 0
                            while idx < 32:
                                mem[idx + _1746 + ceil32(return_data.size) + 233] = mem[idx + _1746 + 132]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 32, mem[_1746 + ceil32(return_data.size) + 233]
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_1746 + 196] == bool(mem[_1746 + 196])
                            if not mem[_1746 + 196]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
            else:
                require return_data.size >= 32
                require mem[356] == bool(mem[356])
                if not mem[356]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                idx = 0
                while idx < ('cd', 36).length:
                    require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                    if idx >= ('cd', 68).length:
                        revert with 0, 50
                    _1747 = mem[64]
                    mem[mem[64] + 36] = address(cd[((32 * idx) + cd[36] + 36)])
                    mem[mem[64] + 68] = cd[((32 * idx) + cd[68] + 36)]
                    _1762 = mem[64]
                    mem[mem[64]] = 68
                    mem[64] = mem[64] + 100
                    mem[_1762 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_1762 + 36 len 28]
                    mem[64] = _1747 + 164
                    mem[_1747 + 100] = 32
                    mem[_1747 + 132] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(address(cd[4])):
                        revert with 0, 'Address: call to non-contract'
                    _1818 = mem[_1762]
                    s = 0
                    while s < _1818:
                        mem[s + _1747 + 164] = mem[s + _1762 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_1818) > _1818:
                        mem[_1818 + _1747 + 164] = 0
                    call address(cd[4]).mem[_1747 + 164 len 4] with:
                         gas gas_remaining wei
                        args mem[_1747 + 168 len _1818 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            mem[_1747 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_1747 + 168] = 32
                            idx = 0
                            while idx < 32:
                                mem[idx + _1747 + 232] = mem[idx + _1747 + 132]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 32, mem[_1747 + 232]
                        if mem[96]:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[64] = _1747 + ceil32(return_data.size) + 165
                        mem[_1747 + 164] = return_data.size
                        mem[_1747 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_1747 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_1747 + ceil32(return_data.size) + 169] = 32
                            idx = 0
                            while idx < 32:
                                mem[idx + _1747 + ceil32(return_data.size) + 233] = mem[idx + _1747 + 132]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 32, mem[_1747 + ceil32(return_data.size) + 233]
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_1747 + 196] == bool(mem[_1747 + 196])
                            if not mem[_1747 + 196]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
}



}
