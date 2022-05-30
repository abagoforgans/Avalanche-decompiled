contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_7af7c95f(?) payable {
    mem[64] = 96
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
    while idx < ('cd', 36).length:
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = this.address
        require ext_code.size(address(cd[4]))
        staticcall address(cd[4]).0xe985e9c5 with:
                gas gas_remaining wei
               args msg.sender, this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _15 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_15] == bool(mem[_15])
        if not mem[_15]:
            if idx >= ('cd', 68).length:
                revert with 'NH{q', 50
            mem[mem[64] + 4] = cd[((32 * idx) + cd[68] + 36)]
            require ext_code.size(address(cd[4]))
            staticcall address(cd[4]).getApproved(uint256 arg1) with:
                    gas gas_remaining wei
                   args cd[((32 * idx) + cd[68] + 36)]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _19 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_19] == mem[_19 + 12 len 20]
            require mem[_19 + 12 len 20] == this.address
        if idx >= ('cd', 36).length:
            revert with 'NH{q', 50
        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
        if idx >= ('cd', 68).length:
            revert with 'NH{q', 50
        mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = address(cd[((32 * idx) + cd[36] + 36)])
        mem[mem[64] + 68] = cd[((32 * idx) + cd[68] + 36)]
        require ext_code.size(address(cd[4]))
        call address(cd[4]).0x42842e0e with:
             gas gas_remaining wei
            args msg.sender, address(cd[((32 * idx) + cd[36] + 36)]), cd[((32 * idx) + cd[68] + 36)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_9b2dd9b1(?) payable {
    mem[64] = 96
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
    if address(cd[4]):
        idx = 0
        while idx < ('cd', 36).length:
            require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
            if idx >= ('cd', 68).length:
                revert with 'NH{q', 50
            _68 = mem[64]
            mem[mem[64] + 36] = msg.sender
            mem[mem[64] + 68] = address(cd[((32 * idx) + cd[36] + 36)])
            mem[mem[64] + 100] = cd[((32 * idx) + cd[68] + 36)]
            _69 = mem[64]
            mem[mem[64]] = 100
            mem[64] = mem[64] + 132
            mem[_69 + 32] = mem[_69 + 36 len 28] or 0x23b872dd00000000000000000000000000000000000000000000000000000000
            mem[64] = _68 + 196
            mem[_68 + 132] = 32
            mem[_68 + 164] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if ext_code.size(address(cd[4])) <= 0:
                revert with 0, 'Address: call to non-contract'
            _75 = mem[_69]
            s = 0
            while s < _75:
                mem[_68 + s + 196] = mem[_69 + s + 32]
                s = s + 32
                continue 
            if ceil32(_75) > _75:
                mem[_68 + _75 + 196] = 0
            call address(cd[4]).mem[_68 + 196 len 4] with:
                 gas gas_remaining wei
                args mem[_68 + 200 len _75 - 4]
            if not return_data.size:
                if not ext_call.success:
                    if mem[96] > 0:
                        revert with memory
                          from 128
                           len mem[96]
                    mem[_68 + 196] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_68 + 200] = 32
                    idx = 0
                    while idx < 32:
                        mem[_68 + idx + 264] = mem[_68 + idx + 164]
                        idx = idx + 32
                        continue 
                    revert with 0, 32, 32, mem[_68 + 264]
                if mem[96] > 0:
                    require mem[96] >= 32
                    require mem[128] == bool(mem[128])
                    if not mem[128]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[64] = _68 + ceil32(return_data.size) + 197
                mem[_68 + 196] = return_data.size
                mem[_68 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_68 + ceil32(return_data.size) + 197] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_68 + ceil32(return_data.size) + 201] = 32
                    idx = 0
                    while idx < 32:
                        mem[_68 + ceil32(return_data.size) + idx + 265] = mem[_68 + idx + 164]
                        idx = idx + 32
                        continue 
                    revert with 0, 32, 32, mem[_68 + ceil32(return_data.size) + 265]
                if return_data.size > 0:
                    require return_data.size >= 32
                    require mem[_68 + 228] == bool(mem[_68 + 228])
                    if not mem[_68 + 228]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
    else:
        idx = 0
        while idx < ('cd', 36).length:
            require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
            if idx >= ('cd', 68).length:
                revert with 'NH{q', 50
            call address(cd[((32 * idx) + cd[36] + 36)]) with:
               value cd[((32 * idx) + cd[68] + 36)] wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
}

function sub_8484839b(?) {
    require calldata.size - 4 >= 160
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    require ('cd', 100).length <= test266151307()
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    require cd[132] <= test266151307()
    require cd[132] + 35 < calldata.size
    require ('cd', 132).length <= test266151307()
    require cd[132] + ('cd', 132).length + 36 <= calldata.size
    mem[100] = msg.sender
    mem[132] = this.address
    require ext_code.size(address(cd[4]))
    staticcall address(cd[4]).0xe985e9c5 with:
            gas gas_remaining wei
           args msg.sender, this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Sender has not approved disperse contract'
    idx = 0
    while idx < ('cd', 68).length:
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = cd[((32 * idx) + cd[68] + 36)]
        require ext_code.size(address(cd[4]))
        staticcall address(cd[4]).balanceOf(address arg1, uint256 arg2) with:
                gas gas_remaining wei
               args msg.sender, cd[((32 * idx) + cd[68] + 36)]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _18 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_18] == mem[_18]
        if idx >= ('cd', 100).length:
            revert with 'NH{q', 50
        if ('cd', 36).length and cd[((32 * idx) + cd[100] + 36)] > -1 / ('cd', 36).length:
            revert with 'NH{q', 17
        if ('cd', 36).length * cd[((32 * idx) + cd[100] + 36)] > mem[_18]:
            revert with 0, 'Insufficient balance'
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    idx = 0
    while idx < ('cd', 36).length:
        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
        mem[mem[64]] = 0x2eb2c2d600000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = address(cd[((32 * idx) + cd[36] + 36)])
        mem[mem[64] + 68] = 160
        mem[mem[64] + 164] = ('cd', 68).length
        require ('cd', 68).length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
        mem[mem[64] + 196 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
        mem[mem[64] + 100] = (32 * ('cd', 68).length) + 192
        mem[mem[64] + (32 * ('cd', 68).length) + 196] = ('cd', 100).length
        require ('cd', 100).length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
        mem[mem[64] + (32 * ('cd', 68).length) + 228 len 32 * ('cd', 100).length] = call.data[cd[100] + 36 len 32 * ('cd', 100).length]
        mem[mem[64] + 132] = (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 224
        mem[mem[64] + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 228] = ('cd', 132).length
        mem[mem[64] + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 260 len ('cd', 132).length] = call.data[cd[132] + 36 len ('cd', 132).length]
        mem[mem[64] + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ('cd', 132).length + 260] = 0
        require ext_code.size(address(cd[4]))
        call address(cd[4]).safeBatchTransferFrom(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) with:
             gas gas_remaining wei
            args msg.sender, address(cd[((32 * idx) + cd[36] + 36)]), Array(len=('cd', 68).length, data=call.data[cd[68] + 36 len 32 * ('cd', 68).length], ('cd', 100).length, call.data[cd[100] + 36 len 32 * ('cd', 100).length], ('cd', 132).length, call.data[cd[132] + 36 len ('cd', 132).length], mem[mem[64] + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ('cd', 132).length + 260 len ceil32(('cd', 132).length) - ('cd', 132).length]), (32 * ('cd', 68).length) + 192, (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 224
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_26d61ecf(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 96
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    idx = 0
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        if not address(cd[((32 * idx) + cd[4] + 36)]):
            if idx >= ('cd', 36).length:
                revert with 'NH{q', 50
            require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
            if idx >= ('cd', 68).length:
                revert with 'NH{q', 50
            call address(cd[((32 * idx) + cd[36] + 36)]) with:
               value cd[((32 * idx) + cd[68] + 36)] wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        else:
            if idx >= ('cd', 4).length:
                revert with 'NH{q', 50
            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
            if idx >= ('cd', 36).length:
                revert with 'NH{q', 50
            require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
            if idx >= ('cd', 68).length:
                revert with 'NH{q', 50
            _68 = mem[64]
            mem[mem[64] + 36] = msg.sender
            mem[mem[64] + 68] = address(cd[((32 * idx) + cd[36] + 36)])
            mem[mem[64] + 100] = cd[((32 * idx) + cd[68] + 36)]
            _69 = mem[64]
            mem[mem[64]] = 100
            mem[64] = mem[64] + 132
            mem[_69 + 32] = mem[_69 + 36 len 28] or 0x23b872dd00000000000000000000000000000000000000000000000000000000
            mem[64] = _68 + 196
            mem[_68 + 132] = 32
            mem[_68 + 164] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if ext_code.size(address(cd[((32 * idx) + cd[4] + 36)])) <= 0:
                revert with 0, 'Address: call to non-contract'
            _75 = mem[_69]
            s = 0
            while s < _75:
                mem[_68 + s + 196] = mem[_69 + s + 32]
                s = s + 32
                continue 
            if ceil32(_75) > _75:
                mem[_68 + _75 + 196] = 0
            call address(cd[((32 * idx) + cd[4] + 36)]).mem[_68 + 196 len 4] with:
                 gas gas_remaining wei
                args mem[_68 + 200 len _75 - 4]
            if not return_data.size:
                if not ext_call.success:
                    if mem[96] > 0:
                        revert with memory
                          from 128
                           len mem[96]
                    mem[_68 + 196] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_68 + 200] = 32
                    idx = 0
                    while idx < 32:
                        mem[_68 + idx + 264] = mem[_68 + idx + 164]
                        idx = idx + 32
                        continue 
                    revert with 0, 32, 32, mem[_68 + 264]
                if mem[96] > 0:
                    require mem[96] >= 32
                    require mem[128] == bool(mem[128])
                    if not mem[128]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[64] = _68 + ceil32(return_data.size) + 197
                mem[_68 + 196] = return_data.size
                mem[_68 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_68 + ceil32(return_data.size) + 197] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_68 + ceil32(return_data.size) + 201] = 32
                    idx = 0
                    while idx < 32:
                        mem[_68 + ceil32(return_data.size) + idx + 265] = mem[_68 + idx + 164]
                        idx = idx + 32
                        continue 
                    revert with 0, 32, 32, mem[_68 + ceil32(return_data.size) + 265]
                if return_data.size > 0:
                    require return_data.size >= 32
                    require mem[_68 + 228] == bool(mem[_68 + 228])
                    if not mem[_68 + 228]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}



}
