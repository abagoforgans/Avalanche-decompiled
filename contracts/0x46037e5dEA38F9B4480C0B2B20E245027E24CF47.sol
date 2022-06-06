contract main {




// =====================  Runtime code  =====================


address underlyingAddress;
mapping of uint8 stor1;

function underlying() {
    return underlyingAddress
}

function sub_87c1b530(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    return 1
}

function depositVault(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return 1
}

function sub_97ae06b5(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if not stor1[msg.sender]:
        revert with 0, 'err'
    call address(arg1) with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdrawToken(address arg1, uint256 arg2, address arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg3 == arg3
    if not stor1[msg.sender]:
        revert with 0, 'err'
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg3), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_fd5da94c(?) {
    require calldata.size - 4 >= 96
    require cd[4] == address(cd[4])
    require cd[36] == address(cd[36])
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    if ('cd', 68).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 68).length) + 97 > test266151307() or ceil32(32 * ('cd', 68).length) + 97 < 96:
        revert with 0, 65
    mem[64] = ceil32(32 * ('cd', 68).length) + 97
    mem[96] = ('cd', 68).length
    require (32 * ('cd', 68).length) + cd[68] + 36 <= calldata.size
    s = 128
    idx = cd[68] + 36
    while idx < (32 * ('cd', 68).length) + cd[68] + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        s = s + 32
        idx = idx + 32
        continue 
    mem[0] = msg.sender
    mem[32] = 1
    if not stor1[msg.sender]:
        revert with 0, 'err'
    underlyingAddress = address(cd[36])
    idx = 0
    s = 0
    s = 0
    s = 0
    while idx < ('cd', 68).length:
        if idx >= mem[96]:
            revert with 0, 50
        _52 = mem[(32 * idx) + 128]
        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
        staticcall address(cd[36]).0x70a08231 with:
                gas gas_remaining wei
               args address(_52)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _55 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _56 = mem[_55]
        if idx >= mem[96]:
            revert with 0, 50
        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
        mem[mem[64] + 36] = address(cd[4])
        staticcall address(cd[36]).0xdd62ed3e with:
                gas gas_remaining wei
               args mem[mem[64] + 4], address(cd[4])
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _61 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _62 = mem[_61]
        if mem[_61] >= _56:
            if not _56:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _56
                s = mem[_61]
                s = _56
                continue 
            if idx >= mem[96]:
                revert with 0, 50
            _65 = mem[(32 * idx) + 128]
            mem[mem[64]] = 0x8d7d3eea00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = address(_65)
            mem[mem[64] + 36] = this.address
            mem[mem[64] + 68] = this.address
            mem[mem[64] + 100] = _56
            mem[mem[64] + 132] = 100 * 10^18
            mem[mem[64] + 164] = 0
            mem[mem[64] + 196] = 0
            mem[mem[64] + 228] = 0
            mem[mem[64] + 260] = 56
            require ext_code.size(address(cd[4]))
            call address(cd[4]).anySwapOutUnderlyingWithPermit(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5, uint8 arg6, bytes32 arg7, bytes32 arg8, uint256 arg9) with:
                 gas gas_remaining wei
                args address(_65), this.address, this.address, _56, 100 * 10^18, 0, 0, 0, 56
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = _56
            s = _62
            s = _56
            continue 
        if not mem[_61]:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = mem[_61]
            s = mem[_61]
            s = _56
            continue 
        if idx >= mem[96]:
            revert with 0, 50
        _68 = mem[(32 * idx) + 128]
        mem[mem[64]] = 0x8d7d3eea00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = address(_68)
        mem[mem[64] + 36] = this.address
        mem[mem[64] + 68] = this.address
        mem[mem[64] + 100] = _56
        mem[mem[64] + 132] = 100 * 10^18
        mem[mem[64] + 164] = 0
        mem[mem[64] + 196] = 0
        mem[mem[64] + 228] = 0
        mem[mem[64] + 260] = 56
        require ext_code.size(address(cd[4]))
        call address(cd[4]).anySwapOutUnderlyingWithPermit(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5, uint8 arg6, bytes32 arg7, bytes32 arg8, uint256 arg9) with:
             gas gas_remaining wei
            args address(_68), this.address, this.address, _56, 100 * 10^18, 0, 0, 0, 56
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = _62
        s = _62
        s = _56
        continue 
}

function _fallback() payable {
    if calldata.size < 4:
        require not calldata.size
    else:
        if unknown_0x3ccdbb28(?????) == uint32(call.func_hash) >> 224:
            require not msg.value
            require calldata.size - 4 >= 96
            require cd[4] == address(cd[4])
            require cd[68] == address(cd[68])
            if not stor1[msg.sender]:
                revert with 0, 'err'
            call address(cd[4]).0xa9059cbb with:
                 gas gas_remaining wei
                args address(cd[68]), cd[36]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
        else:
            if unknown_0x6f307dc3(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return underlyingAddress
            if unknown_0x87c1b530(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 64
                require cd[4] == address(cd[4])
                return 1
            if unknown_0x97ae06b5(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 64
                require cd[4] == address(cd[4])
                if not stor1[msg.sender]:
                    revert with 0, 'err'
                call address(cd[4]) with:
                   value cd[36] wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                if unknown_0xbebbf4d0(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 64
                    require cd[36] == address(cd[36])
                    return 1
                require unknown_0xfd5da94c(?????) == uint32(call.func_hash) >> 224
                require not msg.value
                require calldata.size - 4 >= 96
                require cd[4] == address(cd[4])
                require cd[36] == address(cd[36])
                require cd[68] <= test266151307()
                require cd[68] + 35 < calldata.size
                if ('cd', 68).length > test266151307():
                    revert with 0, 65
                if ceil32(32 * ('cd', 68).length) + 129 > test266151307() or ceil32(32 * ('cd', 68).length) + 129 < 128:
                    revert with 0, 65
                mem[64] = ceil32(32 * ('cd', 68).length) + 129
                mem[128] = ('cd', 68).length
                require (32 * ('cd', 68).length) + cd[68] + 36 <= calldata.size
                s = 160
                idx = cd[68] + 36
                while idx < (32 * ('cd', 68).length) + cd[68] + 36:
                    require cd[idx] == address(cd[idx])
                    mem[s] = cd[idx]
                    s = s + 32
                    idx = idx + 32
                    continue 
                mem[0] = msg.sender
                mem[32] = 1
                if not stor1[msg.sender]:
                    revert with 0, 'err'
                underlyingAddress = address(cd[36])
                idx = 0
                s = 0
                s = 0
                s = 0
                while idx < ('cd', 68).length:
                    if idx >= mem[128]:
                        revert with 0, 50
                    _69 = mem[(32 * idx) + 160]
                    mem[mem[64] + 4] = mem[(32 * idx) + 172 len 20]
                    staticcall address(cd[36]).0x70a08231 with:
                            gas gas_remaining wei
                           args address(_69)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _72 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _73 = mem[_72]
                    if idx >= mem[128]:
                        revert with 0, 50
                    mem[mem[64] + 4] = mem[(32 * idx) + 172 len 20]
                    mem[mem[64] + 36] = address(cd[4])
                    staticcall address(cd[36]).0xdd62ed3e with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4], address(cd[4])
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _78 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _79 = mem[_78]
                    if mem[_78] >= _73:
                        if not _73:
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _73
                            s = mem[_78]
                            s = _73
                            continue 
                        if idx >= mem[128]:
                            revert with 0, 50
                        _82 = mem[(32 * idx) + 160]
                        mem[mem[64]] = 0x8d7d3eea00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = address(_82)
                        mem[mem[64] + 36] = this.address
                        mem[mem[64] + 68] = this.address
                        mem[mem[64] + 100] = _73
                        mem[mem[64] + 132] = 100 * 10^18
                        mem[mem[64] + 164] = 0
                        mem[mem[64] + 196] = 0
                        mem[mem[64] + 228] = 0
                        mem[mem[64] + 260] = 56
                        require ext_code.size(address(cd[4]))
                        call address(cd[4]).anySwapOutUnderlyingWithPermit(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5, uint8 arg6, bytes32 arg7, bytes32 arg8, uint256 arg9) with:
                             gas gas_remaining wei
                            args address(_82), this.address, this.address, _73, 100 * 10^18, 0, 0, 0, 56
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _73
                        s = _79
                        s = _73
                        continue 
                    if not mem[_78]:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = mem[_78]
                        s = mem[_78]
                        s = _73
                        continue 
                    if idx >= mem[128]:
                        revert with 0, 50
                    _85 = mem[(32 * idx) + 160]
                    mem[mem[64]] = 0x8d7d3eea00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = address(_85)
                    mem[mem[64] + 36] = this.address
                    mem[mem[64] + 68] = this.address
                    mem[mem[64] + 100] = _73
                    mem[mem[64] + 132] = 100 * 10^18
                    mem[mem[64] + 164] = 0
                    mem[mem[64] + 196] = 0
                    mem[mem[64] + 228] = 0
                    mem[mem[64] + 260] = 56
                    require ext_code.size(address(cd[4]))
                    call address(cd[4]).anySwapOutUnderlyingWithPermit(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5, uint8 arg6, bytes32 arg7, bytes32 arg8, uint256 arg9) with:
                         gas gas_remaining wei
                        args address(_85), this.address, this.address, _73, 100 * 10^18, 0, 0, 0, 56
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _79
                    s = _79
                    s = _73
                    continue 
}



}
