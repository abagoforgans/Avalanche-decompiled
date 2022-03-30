contract main {




// =====================  Runtime code  =====================


uint256 stor0;

function _fallback() payable {
    revert
}

function sub_fff1d380(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    if cd[4] and ('cd', 36).length > -1 / cd[4]:
        revert with 0, 17
    if eth.balance(this.address) < cd[4] * ('cd', 36).length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Splitter::distributeAVAX: INSUFFICIENT_BALANCE'
    idx = 0
    while idx < ('cd', 36).length:
        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
        if eth.balance(this.address) < cd[4]:
            revert with 0, 'Address: insufficient balance'
        call address(cd[((32 * idx) + cd[36] + 36)]) with:
           value cd[4] wei
             gas gas_remaining wei
        if return_data.size:
            _21 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_21] = return_data.size
            mem[_21 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'Address: unable to send value, recipient may have reverted'
        if idx >= ('cd', 36).length:
            revert with 0, 50
        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
        mem[mem[64]] = address(cd[((32 * idx) + cd[36] + 36)])
        mem[mem[64] + 32] = cd[4]
        emit 0xc3503d89: address(cd[((32 * idx) + cd[36] + 36)]), cd[4]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    stor0 = 1
}

function sub_e83e23e7(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    if ('cd', 36).length != ('cd', 4).length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Splitter::payAVAX: INVALID_INPUT_LENGTH'
    idx = 0
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        if idx >= ('cd', 36).length:
            revert with 0, 50
        if eth.balance(this.address) < cd[((32 * idx) + cd[36] + 36)]:
            revert with 0, 'Address: insufficient balance'
        call address(cd[((32 * idx) + cd[4] + 36)]) with:
           value cd[((32 * idx) + cd[36] + 36)] wei
             gas gas_remaining wei
        if return_data.size:
            _21 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_21] = return_data.size
            mem[_21 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'Address: unable to send value, recipient may have reverted'
        if idx >= ('cd', 4).length:
            revert with 0, 50
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        if idx >= ('cd', 36).length:
            revert with 0, 50
        mem[mem[64]] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[mem[64] + 32] = cd[((32 * idx) + cd[36] + 36)]
        emit 0xc3503d89: address(cd[((32 * idx) + cd[4] + 36)]), cd[((32 * idx) + cd[36] + 36)]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    stor0 = 1
}

function sub_95ecdced(?) payable {
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
    if ('cd', 68).length != ('cd', 36).length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Splitter::pay: INVALID_INPUT_LENGTH'
    idx = 0
    while idx < ('cd', 36).length:
        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
        if idx >= ('cd', 68).length:
            revert with 0, 50
        _82 = mem[64]
        mem[mem[64] + 36] = msg.sender
        mem[mem[64] + 68] = address(cd[((32 * idx) + cd[36] + 36)])
        mem[mem[64] + 100] = cd[((32 * idx) + cd[68] + 36)]
        _83 = mem[64]
        mem[mem[64]] = 100
        mem[64] = mem[64] + 132
        mem[_83 + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 or mem[_83 + 36 len 28]
        mem[64] = _82 + 196
        mem[_82 + 132] = 32
        mem[_82 + 164] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(address(cd[4])):
            revert with 0, 'Address: call to non-contract'
        _90 = mem[_83]
        s = 0
        while s < _90:
            mem[s + _82 + 196] = mem[s + _83 + 32]
            s = s + 32
            continue 
        if ceil32(_90) > _90:
            mem[_90 + _82 + 196] = 0
        call address(cd[4]).mem[_82 + 196 len 4] with:
             gas gas_remaining wei
            args mem[_82 + 200 len _90 - 4]
        if not return_data.size:
            if not ext_call.success:
                if mem[96]:
                    revert with memory
                      from 128
                       len mem[96]
                mem[_82 + 196] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_82 + 200] = 32
                idx = 0
                while idx < 32:
                    mem[idx + _82 + 264] = mem[idx + _82 + 164]
                    idx = idx + 32
                    continue 
                revert with 0, 32, 32, mem[_82 + 264]
            if mem[96]:
                require mem[96] >= 32
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            if idx >= ('cd', 36).length:
                revert with 0, 50
            require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
            if idx >= ('cd', 68).length:
                revert with 0, 50
            mem[_82 + 196] = address(cd[((32 * idx) + cd[36] + 36)])
            mem[_82 + 228] = cd[((32 * idx) + cd[68] + 36)]
            mem[_82 + 260] = address(cd[4])
        else:
            mem[64] = _82 + ceil32(return_data.size) + 197
            mem[_82 + 196] = return_data.size
            mem[_82 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_82 + ceil32(return_data.size) + 197] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_82 + ceil32(return_data.size) + 201] = 32
                idx = 0
                while idx < 32:
                    mem[idx + _82 + ceil32(return_data.size) + 265] = mem[idx + _82 + 164]
                    idx = idx + 32
                    continue 
                revert with 0, 32, 32, mem[_82 + ceil32(return_data.size) + 265]
            if return_data.size:
                require return_data.size >= 32
                require mem[_82 + 228] == bool(mem[_82 + 228])
                if not mem[_82 + 228]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            if idx >= ('cd', 36).length:
                revert with 0, 50
            require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
            if idx >= ('cd', 68).length:
                revert with 0, 50
            mem[_82 + ceil32(return_data.size) + 197] = address(cd[((32 * idx) + cd[36] + 36)])
            mem[_82 + ceil32(return_data.size) + 229] = cd[((32 * idx) + cd[68] + 36)]
            mem[_82 + ceil32(return_data.size) + 261] = address(cd[4])
        emit 0xe6f3cb5b: address(cd[((32 * idx) + cd[36] + 36)]), cd[((32 * idx) + cd[68] + 36)], address(cd[4])
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_d2b372f8(?) {
    require calldata.size - 4 >= 96
    require cd[4] == address(cd[4])
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    if cd[36] and ('cd', 68).length > -1 / cd[36]:
        revert with 0, 17
    mem[100] = msg.sender
    require ext_code.size(address(cd[4]))
    staticcall address(cd[4]).0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < cd[36] * ('cd', 68).length:
        revert with 0, 'Splitter::distribute: INSUFFICIENT_BALANCE'
    if cd[36] and ('cd', 68).length > -1 / cd[36]:
        revert with 0, 17
    mem[ceil32(return_data.size) + 100] = msg.sender
    mem[ceil32(return_data.size) + 132] = this.address
    require ext_code.size(address(cd[4]))
    staticcall address(cd[4]).0xdd62ed3e with:
            gas gas_remaining wei
           args msg.sender, this.address
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 96
    require return_data.size >= 32
    if ext_call.return_data[0] < cd[36] * ('cd', 68).length:
        revert with 0, 'Splitter::distribute: INSUFFICIENT_ALLOWANCE'
    idx = 0
    while idx < ('cd', 68).length:
        require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
        _92 = mem[64]
        mem[mem[64] + 36] = msg.sender
        mem[mem[64] + 68] = address(cd[((32 * idx) + cd[68] + 36)])
        mem[mem[64] + 100] = cd[36]
        _93 = mem[64]
        mem[mem[64]] = 100
        mem[64] = mem[64] + 132
        mem[_93 + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 or mem[_93 + 36 len 28]
        mem[64] = _92 + 196
        mem[_92 + 132] = 32
        mem[_92 + 164] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(address(cd[4])):
            revert with 0, 'Address: call to non-contract'
        _100 = mem[_93]
        s = 0
        while s < _100:
            mem[s + _92 + 196] = mem[s + _93 + 32]
            s = s + 32
            continue 
        if ceil32(_100) > _100:
            mem[_100 + _92 + 196] = 0
        call address(cd[4]).mem[_92 + 196 len 4] with:
             gas gas_remaining wei
            args mem[_92 + 200 len _100 - 4]
        if not return_data.size:
            if not ext_call.success:
                if mem[96]:
                    revert with memory
                      from 128
                       len mem[96]
                mem[_92 + 196] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_92 + 200] = 32
                idx = 0
                while idx < 32:
                    mem[idx + _92 + 264] = mem[idx + _92 + 164]
                    idx = idx + 32
                    continue 
                revert with 0, 32, 32, mem[_92 + 264]
            if mem[96]:
                require mem[96] >= 32
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            if idx >= ('cd', 68).length:
                revert with 0, 50
            require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
            mem[_92 + 196] = address(cd[((32 * idx) + cd[68] + 36)])
            mem[_92 + 228] = cd[36]
            mem[_92 + 260] = address(cd[4])
        else:
            mem[64] = _92 + ceil32(return_data.size) + 197
            mem[_92 + 196] = return_data.size
            mem[_92 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_92 + ceil32(return_data.size) + 197] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_92 + ceil32(return_data.size) + 201] = 32
                idx = 0
                while idx < 32:
                    mem[idx + _92 + ceil32(return_data.size) + 265] = mem[idx + _92 + 164]
                    idx = idx + 32
                    continue 
                revert with 0, 32, 32, mem[_92 + ceil32(return_data.size) + 265]
            if return_data.size:
                require return_data.size >= 32
                require mem[_92 + 228] == bool(mem[_92 + 228])
                if not mem[_92 + 228]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            if idx >= ('cd', 68).length:
                revert with 0, 50
            require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
            mem[_92 + ceil32(return_data.size) + 197] = address(cd[((32 * idx) + cd[68] + 36)])
            mem[_92 + ceil32(return_data.size) + 229] = cd[36]
            mem[_92 + ceil32(return_data.size) + 261] = address(cd[4])
        emit 0xe6f3cb5b: address(cd[((32 * idx) + cd[68] + 36)]), cd[36], address(cd[4])
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}



}
