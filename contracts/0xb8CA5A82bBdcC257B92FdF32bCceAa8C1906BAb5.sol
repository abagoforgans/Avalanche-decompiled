contract main {




// =====================  Runtime code  =====================


address owner;
address adminAddress;
uint256 sub_9b3e0ce2;
address stor3;
address stor4;

function owner() {
    return owner
}

function sub_9b3e0ce2(?) {
    return sub_9b3e0ce2
}

function admin() {
    return adminAddress
}

function sub_1687fe8e(?) {
    if owner != msg.sender:
        if adminAddress != msg.sender:
            revert with 0, 'Caller is not the owner.'
    sub_9b3e0ce2 = 0
}

function withdrawETH() {
    if owner != msg.sender:
        if adminAddress != msg.sender:
            revert with 0, 'Caller is not the owner.'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_41c20f6e(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    mem[96] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
    mem[128] = address(arg2)
    idx = 0
    s = 96
    t = 196
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[260 len 96] = 0, mem[196 len 92]
    call address(arg1).mem[260 len 4] with:
         gas gas_remaining wei
        args mem[264 len 64]
    require ext_call.success
}

function withdrawERC20(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        if adminAddress != msg.sender:
            revert with 0, 'Caller is not the owner.'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_4844ec37(?) {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(32 * ('cd', 4).length) + 97
    mem[96] = ('cd', 4).length
    require (32 * ('cd', 4).length) + cd[4] + 36 <= calldata.size
    s = 128
    idx = cd[4] + 36
    while idx < (32 * ('cd', 4).length) + cd[4] + 36:
        require cd[idx] <= test266151307()
        require calldata.size > cd[4] + cd[idx] + 67
        if cd[(cd[4] + cd[idx] + 36)] > test266151307():
            revert with 0, 65
        _12 = mem[64]
        if mem[64] + ceil32(ceil32(cd[(cd[4] + cd[idx] + 36)])) + 1 < mem[64] or mem[64] + ceil32(ceil32(cd[(cd[4] + cd[idx] + 36)])) + 1 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + ceil32(ceil32(cd[(cd[4] + cd[idx] + 36)])) + 1
        mem[_12] = cd[(cd[4] + cd[idx] + 36)]
        require cd[4] + cd[idx] + cd[(cd[4] + cd[idx] + 36)] + 68 <= calldata.size
        mem[_12 + 32 len cd[(cd[4] + cd[idx] + 36)]] = call.data[cd[4] + cd[idx] + 68 len cd[(cd[4] + cd[idx] + 36)]]
        mem[_12 + cd[(cd[4] + cd[idx] + 36)] + 32] = 0
        mem[s] = _12
        s = s + 32
        idx = idx + 32
        continue 
    require cd[36] == address(cd[36])
    if 0 >= mem[96]:
        revert with 0, 50
    _16 = mem[mem[128]]
    mem[mem[64] len ceil32(mem[mem[128]])] = mem[mem[128] + 32 len ceil32(mem[mem[128]])]
    if ceil32(_16) > _16:
        mem[mem[64] + _16] = 0
    call address(cd[36]).mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len _16 - 4]
    require ext_call.success
}

function sub_8fa2fc93(?) payable {
    require calldata.size - 4 >= 128
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[100] == address(cd[100])
    if ('cd', 4).length < 2:
        revert with 0, 17
    if ('cd', 4).length - 2 >= ('cd', 4).length:
        revert with 0, 50
    require cd[((32 * ('cd', 4).length - 2) + cd[4] + 36)] == address(cd[((32 * ('cd', 4).length - 2) + cd[4] + 36)])
    if ('cd', 4).length < 1:
        revert with 0, 17
    if ('cd', 4).length - 1 >= ('cd', 4).length:
        revert with 0, 50
    require cd[((32 * ('cd', 4).length - 1) + cd[4] + 36)] == address(cd[((32 * ('cd', 4).length - 1) + cd[4] + 36)])
    require ext_code.size(stor4)
    staticcall stor4.0xe6a43905 with:
            gas gas_remaining wei
           args address(cd[((32 * ('cd', 4).length - 2) + cd[4] + 36)]), address(cd[((32 * ('cd', 4).length - 1) + cd[4] + 36)])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if not ext_call.return_data[12 len 20]:
        revert with 0, '1'
    if 1 > !block.timestamp:
        revert with 0, 17
    idx = 0
    s = ceil32(return_data.size) + 260
    t = cd[4] + 36
    while idx < ('cd', 4).length:
        require cd[t] == address(cd[t])
        mem[s] = address(cd[t])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(stor3)
    call stor3.swapExactAVAXForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
       value cd[36] wei
         gas gas_remaining wei
        args cd[68], Array(len=('cd', 4).length, data=mem[ceil32(return_data.size) + 260 len 32 * ('cd', 4).length]), address(cd[100]), block.timestamp + 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_4116e06a(?) {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(32 * ('cd', 4).length) + 97
    mem[96] = ('cd', 4).length
    require (32 * ('cd', 4).length) + cd[4] + 36 <= calldata.size
    s = 128
    idx = cd[4] + 36
    while idx < (32 * ('cd', 4).length) + cd[4] + 36:
        require cd[idx] <= test266151307()
        require calldata.size > cd[4] + cd[idx] + 67
        if cd[(cd[4] + cd[idx] + 36)] > test266151307():
            revert with 0, 65
        _16 = mem[64]
        if mem[64] + ceil32(ceil32(cd[(cd[4] + cd[idx] + 36)])) + 1 < mem[64] or mem[64] + ceil32(ceil32(cd[(cd[4] + cd[idx] + 36)])) + 1 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + ceil32(ceil32(cd[(cd[4] + cd[idx] + 36)])) + 1
        mem[_16] = cd[(cd[4] + cd[idx] + 36)]
        require cd[4] + cd[idx] + cd[(cd[4] + cd[idx] + 36)] + 68 <= calldata.size
        mem[_16 + 32 len cd[(cd[4] + cd[idx] + 36)]] = call.data[cd[4] + cd[idx] + 68 len cd[(cd[4] + cd[idx] + 36)]]
        mem[_16 + cd[(cd[4] + cd[idx] + 36)] + 32] = 0
        mem[s] = _16
        s = s + 32
        idx = idx + 32
        continue 
    require cd[36] == address(cd[36])
    if 0 >= mem[96]:
        revert with 0, 50
    _20 = mem[mem[128]]
    mem[mem[64] len ceil32(mem[mem[128]])] = mem[mem[128] + 32 len ceil32(mem[mem[128]])]
    if ceil32(_20) <= _20:
        call address(cd[36]).mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _20 - 4]
        if not return_data.size:
            require mem[128 len 20]
        else:
            _32 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_32 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            require mem[_32 + 32 len 20]
    else:
        mem[mem[64] + _20] = 0
        call address(cd[36]).mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _20 - 4]
        if not return_data.size:
            require mem[128 len 20]
        else:
            _36 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_36 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            require mem[_36 + 32 len 20]
}

function _fallback() payable {
    if calldata.size < 4:
        require not calldata.size
    else:
        if unknown_0x8fa2fc93(?????) > uint32(call.func_hash) >> 224:
            if unknown_0x1687fe8e(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                if owner != msg.sender:
                    if adminAddress != msg.sender:
                        revert with 0, 'Caller is not the owner.'
                sub_9b3e0ce2 = 0
            else:
                if uint32(call.func_hash) >> 224 != unknown_0x4116e06a(?????):
                    if unknown_0x41c20f6e(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 64
                        require cd[4] == address(cd[4])
                        require cd[36] == address(cd[36])
                        mem[128] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                        mem[160] = address(cd[36])
                        idx = 0
                        s = 128
                        t = 228
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[292 len 96] = 0, mem[228 len 92]
                        call address(cd[4]).mem[292 len 4] with:
                             gas gas_remaining wei
                            args mem[296 len 64]
                    else:
                        if uint32(call.func_hash) >> 224 != unknown_0x4844ec37(?????):
                            require unknown_0x8da5cb5b(?????) == uint32(call.func_hash) >> 224
                            require not msg.value
                            return owner
                        require not msg.value
                        require calldata.size - 4 >= 64
                        require cd[4] <= test266151307()
                        require cd[4] + 35 < calldata.size
                        if ('cd', 4).length > test266151307():
                            revert with 0, 65
                        if ceil32(32 * ('cd', 4).length) + 129 < 128 or ceil32(32 * ('cd', 4).length) + 129 > test266151307():
                            revert with 0, 65
                        mem[64] = ceil32(32 * ('cd', 4).length) + 129
                        mem[128] = ('cd', 4).length
                        require (32 * ('cd', 4).length) + cd[4] + 36 <= calldata.size
                        s = 160
                        idx = cd[4] + 36
                        while idx < (32 * ('cd', 4).length) + cd[4] + 36:
                            require cd[idx] <= test266151307()
                            require calldata.size > cd[4] + cd[idx] + 67
                            if cd[(cd[4] + cd[idx] + 36)] > test266151307():
                                revert with 0, 65
                            _76 = mem[64]
                            if mem[64] + ceil32(ceil32(cd[(cd[4] + cd[idx] + 36)])) + 1 < mem[64] or mem[64] + ceil32(ceil32(cd[(cd[4] + cd[idx] + 36)])) + 1 > test266151307():
                                revert with 0, 65
                            mem[64] = mem[64] + ceil32(ceil32(cd[(cd[4] + cd[idx] + 36)])) + 1
                            mem[_76] = cd[(cd[4] + cd[idx] + 36)]
                            require cd[4] + cd[idx] + cd[(cd[4] + cd[idx] + 36)] + 68 <= calldata.size
                            mem[_76 + 32 len cd[(cd[4] + cd[idx] + 36)]] = call.data[cd[4] + cd[idx] + 68 len cd[(cd[4] + cd[idx] + 36)]]
                            mem[_76 + cd[(cd[4] + cd[idx] + 36)] + 32] = 0
                            mem[s] = _76
                            s = s + 32
                            idx = idx + 32
                            continue 
                        require cd[36] == address(cd[36])
                        if 0 >= mem[128]:
                            revert with 0, 50
                        _88 = mem[mem[160]]
                        mem[mem[64] len ceil32(mem[mem[160]])] = mem[mem[160] + 32 len ceil32(mem[mem[160]])]
                        if ceil32(_88) > _88:
                            mem[mem[64] + _88] = 0
                        call address(cd[36]).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _88 - 4]
                    require ext_call.success
                else:
                    require not msg.value
                    require calldata.size - 4 >= 64
                    require cd[4] <= test266151307()
                    require cd[4] + 35 < calldata.size
                    if ('cd', 4).length > test266151307():
                        revert with 0, 65
                    if ceil32(32 * ('cd', 4).length) + 129 < 128 or ceil32(32 * ('cd', 4).length) + 129 > test266151307():
                        revert with 0, 65
                    mem[64] = ceil32(32 * ('cd', 4).length) + 129
                    mem[128] = ('cd', 4).length
                    require (32 * ('cd', 4).length) + cd[4] + 36 <= calldata.size
                    s = 160
                    idx = cd[4] + 36
                    while idx < (32 * ('cd', 4).length) + cd[4] + 36:
                        require cd[idx] <= test266151307()
                        require calldata.size > cd[4] + cd[idx] + 67
                        if cd[(cd[4] + cd[idx] + 36)] > test266151307():
                            revert with 0, 65
                        _74 = mem[64]
                        if mem[64] + ceil32(ceil32(cd[(cd[4] + cd[idx] + 36)])) + 1 < mem[64] or mem[64] + ceil32(ceil32(cd[(cd[4] + cd[idx] + 36)])) + 1 > test266151307():
                            revert with 0, 65
                        mem[64] = mem[64] + ceil32(ceil32(cd[(cd[4] + cd[idx] + 36)])) + 1
                        mem[_74] = cd[(cd[4] + cd[idx] + 36)]
                        require cd[4] + cd[idx] + cd[(cd[4] + cd[idx] + 36)] + 68 <= calldata.size
                        mem[_74 + 32 len cd[(cd[4] + cd[idx] + 36)]] = call.data[cd[4] + cd[idx] + 68 len cd[(cd[4] + cd[idx] + 36)]]
                        mem[_74 + cd[(cd[4] + cd[idx] + 36)] + 32] = 0
                        mem[s] = _74
                        s = s + 32
                        idx = idx + 32
                        continue 
                    require cd[36] == address(cd[36])
                    if 0 >= mem[128]:
                        revert with 0, 50
                    _87 = mem[mem[160]]
                    mem[mem[64] len ceil32(mem[mem[160]])] = mem[mem[160] + 32 len ceil32(mem[mem[160]])]
                    if ceil32(_87) <= _87:
                        call address(cd[36]).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _87 - 4]
                        if not return_data.size:
                            require mem[128 len 20]
                        else:
                            _109 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_109 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            require mem[_109 + 32 len 20]
                    else:
                        mem[mem[64] + _87] = 0
                        call address(cd[36]).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _87 - 4]
                        if not return_data.size:
                            require mem[128 len 20]
                        else:
                            _117 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_117 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            require mem[_117 + 32 len 20]
        else:
            if uint32(call.func_hash) >> 224 != unknown_0x8fa2fc93(?????):
                if unknown_0x9b3e0ce2(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return sub_9b3e0ce2
                if unknown_0xe086e5ec(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    if owner != msg.sender:
                        if adminAddress != msg.sender:
                            revert with 0, 'Caller is not the owner.'
                    call msg.sender with:
                       value eth.balance(this.address) wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    if uint32(call.func_hash) >> 224 != unknown_0xf4f3b200(?????):
                        require unknown_0xf851a440(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        return adminAddress
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require cd[4] == address(cd[4])
                    if owner != msg.sender:
                        if adminAddress != msg.sender:
                            revert with 0, 'Caller is not the owner.'
                    require ext_code.size(address(cd[4]))
                    staticcall address(cd[4]).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(cd[4]))
                    call address(cd[4]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
            else:
                require calldata.size - 4 >= 128
                require cd[4] <= test266151307()
                require cd[4] + 35 < calldata.size
                require ('cd', 4).length <= test266151307()
                require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
                require cd[100] == address(cd[100])
                if ('cd', 4).length < 2:
                    revert with 0, 17
                if ('cd', 4).length - 2 >= ('cd', 4).length:
                    revert with 0, 50
                require cd[((32 * ('cd', 4).length - 2) + cd[4] + 36)] == address(cd[((32 * ('cd', 4).length - 2) + cd[4] + 36)])
                if ('cd', 4).length < 1:
                    revert with 0, 17
                if ('cd', 4).length - 1 >= ('cd', 4).length:
                    revert with 0, 50
                require cd[((32 * ('cd', 4).length - 1) + cd[4] + 36)] == address(cd[((32 * ('cd', 4).length - 1) + cd[4] + 36)])
                require ext_code.size(stor4)
                staticcall stor4.0xe6a43905 with:
                        gas gas_remaining wei
                       args address(cd[((32 * ('cd', 4).length - 2) + cd[4] + 36)]), address(cd[((32 * ('cd', 4).length - 1) + cd[4] + 36)])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if not ext_call.return_data[12 len 20]:
                    revert with 0, '1'
                if 1 > !block.timestamp:
                    revert with 0, 17
                idx = 0
                s = ceil32(return_data.size) + 292
                t = cd[4] + 36
                while idx < ('cd', 4).length:
                    require cd[t] == address(cd[t])
                    mem[s] = address(cd[t])
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(stor3)
                call stor3.swapExactAVAXForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                   value cd[36] wei
                     gas gas_remaining wei
                    args cd[68], Array(len=('cd', 4).length, data=mem[ceil32(return_data.size) + 292 len 32 * ('cd', 4).length]), address(cd[100]), block.timestamp + 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
}



}
